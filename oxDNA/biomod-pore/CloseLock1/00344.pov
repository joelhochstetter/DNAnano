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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
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
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.458183, 34.962452, 34.645081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240372, 35.169792, 34.908836>,  <24.109684, 35.294197, 35.067089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240372, 35.169792, 34.908836>,  <24.458183, 34.962452, 34.645081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240372, 35.169792, 34.908836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380928, 0.547569, -0.745025,
		-0.747249, -0.656869, -0.100712,
		-0.544530, 0.518355, 0.659390,
		24.077013, 35.325298, 35.106655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178305, 34.520336, 34.672428>,  <24.458183, 34.962452, 34.645081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178305, 34.520336, 34.672428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129164, 34.327782, 34.325287>,  <25.099680, 34.212250, 34.117001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129164, 34.327782, 34.325287>,  <25.178305, 34.520336, 34.672428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129164, 34.327782, 34.325287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810847, 0.552900, -0.191908,
		0.572220, 0.680121, -0.458257,
		-0.122850, -0.481390, -0.867855,
		25.092308, 34.183365, 34.064930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177967, 34.995152, 34.100571>,  <25.178305, 34.520336, 34.672428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177967, 34.995152, 34.100571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986662, 34.661308, 33.991249>,  <24.871880, 34.461002, 33.925655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986662, 34.661308, 33.991249>,  <25.177967, 34.995152, 34.100571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986662, 34.661308, 33.991249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645999, 0.545150, -0.534319,
		0.594940, -0.078989, -0.799880,
		-0.478260, -0.834609, -0.273305,
		24.843184, 34.410927, 33.909260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517431, 35.578342, 34.102726>,  <25.177967, 34.995152, 34.100571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517431, 35.578342, 34.102726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836304, 35.336876, 34.098953>,  <26.027626, 35.191994, 34.096687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836304, 35.336876, 34.098953>,  <25.517431, 35.578342, 34.102726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836304, 35.336876, 34.098953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601374, 0.792571, 0.100897,
		-0.053430, -0.086108, 0.994852,
		0.797179, -0.603669, -0.009437,
		26.075457, 35.155777, 34.096123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958803, 35.587646, 34.705730>,  <25.517431, 35.578342, 34.102726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958803, 35.587646, 34.705730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156670, 35.514786, 34.365818>,  <26.275389, 35.471069, 34.161869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156670, 35.514786, 34.365818>,  <25.958803, 35.587646, 34.705730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156670, 35.514786, 34.365818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524069, 0.842532, 0.124467,
		0.693296, -0.506913, 0.512230,
		0.494664, -0.182151, -0.849781,
		26.305069, 35.460140, 34.110882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722536, 35.657780, 34.783920>,  <25.958803, 35.587646, 34.705730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722536, 35.657780, 34.783920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652817, 35.698917, 34.392197>,  <26.610985, 35.723598, 34.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652817, 35.698917, 34.392197>,  <26.722536, 35.657780, 34.783920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652817, 35.698917, 34.392197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512518, 0.858676, -0.001045,
		0.840801, -0.502095, -0.202372,
		-0.174296, 0.102840, -0.979308,
		26.600529, 35.729771, 34.098404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250778, 35.991131, 34.552113>,  <26.722536, 35.657780, 34.783920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250778, 35.991131, 34.552113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008247, 36.052097, 34.239922>,  <26.862730, 36.088676, 34.052608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008247, 36.052097, 34.239922>,  <27.250778, 35.991131, 34.552113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008247, 36.052097, 34.239922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574289, 0.762807, -0.297182,
		0.550057, -0.628406, -0.550039,
		-0.606325, 0.152415, -0.780474,
		26.826349, 36.097820, 34.005779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719002, 35.980816, 34.033264>,  <27.250778, 35.991131, 34.552113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719002, 35.980816, 34.033264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388348, 36.169586, 33.910656>,  <27.189955, 36.282848, 33.837090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388348, 36.169586, 33.910656>,  <27.719002, 35.980816, 34.033264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388348, 36.169586, 33.910656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541607, 0.815072, -0.205715,
		0.152758, -0.336068, -0.929367,
		-0.826636, 0.471928, -0.306525,
		27.140356, 36.311165, 33.818699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972893, 36.401920, 33.648636>,  <27.719002, 35.980816, 34.033264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972893, 36.401920, 33.648636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602373, 36.545544, 33.694332>,  <27.380062, 36.631718, 33.721748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602373, 36.545544, 33.694332>,  <27.972893, 36.401920, 33.648636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602373, 36.545544, 33.694332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343599, 0.929367, -0.134969,
		-0.154633, -0.085769, -0.984242,
		-0.926298, 0.359056, 0.114241,
		27.324484, 36.653259, 33.728603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820768, 36.976143, 33.097343>,  <27.972893, 36.401920, 33.648636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820768, 36.976143, 33.097343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579268, 37.030853, 33.411484>,  <27.434366, 37.063679, 33.599968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579268, 37.030853, 33.411484>,  <27.820768, 36.976143, 33.097343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579268, 37.030853, 33.411484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265796, 0.963336, 0.036560,
		-0.751556, 0.230817, -0.617970,
		-0.603751, 0.136777, 0.785351,
		27.398142, 37.071888, 33.647091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632032, 37.683403, 32.970863>,  <27.820768, 36.976143, 33.097343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632032, 37.683403, 32.970863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540146, 37.585438, 33.347637>,  <27.485014, 37.526657, 33.573704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540146, 37.585438, 33.347637>,  <27.632032, 37.683403, 32.970863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540146, 37.585438, 33.347637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131331, 0.951168, 0.279341,
		-0.964356, 0.187875, -0.186336,
		-0.229718, -0.244912, 0.941938,
		27.471230, 37.511963, 33.630219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241493, 38.197586, 33.203445>,  <27.632032, 37.683403, 32.970863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241493, 38.197586, 33.203445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411114, 38.038502, 33.528900>,  <27.512886, 37.943050, 33.724174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411114, 38.038502, 33.528900>,  <27.241493, 38.197586, 33.203445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411114, 38.038502, 33.528900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271856, 0.912882, 0.304534,
		-0.863872, 0.092054, 0.495229,
		0.424052, -0.397710, 0.813638,
		27.538330, 37.919189, 33.772991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121681, 38.643524, 33.715897>,  <27.241493, 38.197586, 33.203445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121681, 38.643524, 33.715897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423409, 38.427963, 33.865879>,  <27.604445, 38.298626, 33.955868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423409, 38.427963, 33.865879>,  <27.121681, 38.643524, 33.715897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423409, 38.427963, 33.865879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436086, 0.838223, 0.327429,
		-0.490748, -0.083473, 0.867294,
		0.754318, -0.538900, 0.374955,
		27.649704, 38.266293, 33.978367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243322, 38.965179, 34.392010>,  <27.121681, 38.643524, 33.715897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243322, 38.965179, 34.392010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571075, 38.764778, 34.280579>,  <27.767727, 38.644535, 34.213722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571075, 38.764778, 34.280579>,  <27.243322, 38.965179, 34.392010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571075, 38.764778, 34.280579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551303, 0.821881, 0.143445,
		0.157089, -0.271116, 0.949641,
		0.819383, -0.501007, -0.278575,
		27.816891, 38.614475, 34.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616407, 39.212948, 34.903492>,  <27.243322, 38.965179, 34.392010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616407, 39.212948, 34.903492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876619, 39.051140, 34.646378>,  <28.032747, 38.954056, 34.492111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876619, 39.051140, 34.646378>,  <27.616407, 39.212948, 34.903492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876619, 39.051140, 34.646378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545244, 0.837920, 0.024486,
		0.528694, -0.366402, 0.765658,
		0.650532, -0.404525, -0.642781,
		28.071779, 38.929783, 34.453545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196245, 39.379932, 35.195107>,  <27.616407, 39.212948, 34.903492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196245, 39.379932, 35.195107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261522, 39.327396, 34.803982>,  <28.300690, 39.295876, 34.569305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261522, 39.327396, 34.803982>,  <28.196245, 39.379932, 35.195107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261522, 39.327396, 34.803982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433007, 0.900078, -0.048633,
		0.886495, -0.415463, 0.203760,
		0.163194, -0.131343, -0.977812,
		28.310480, 39.287994, 34.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856798, 39.614208, 35.113789>,  <28.196245, 39.379932, 35.195107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856798, 39.614208, 35.113789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721729, 39.595543, 34.737747>,  <28.640688, 39.584343, 34.512123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721729, 39.595543, 34.737747>,  <28.856798, 39.614208, 35.113789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721729, 39.595543, 34.737747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448423, 0.870170, -0.204259,
		0.827583, -0.490538, -0.272910,
		-0.337674, -0.046662, -0.940106,
		28.620426, 39.581543, 34.455715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335455, 39.780167, 34.800388>,  <28.856798, 39.614208, 35.113789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335455, 39.780167, 34.800388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032286, 39.866676, 34.554211>,  <28.850384, 39.918583, 34.406502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032286, 39.866676, 34.554211>,  <29.335455, 39.780167, 34.800388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032286, 39.866676, 34.554211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350830, 0.930528, -0.105055,
		0.549971, -0.295541, -0.781145,
		-0.757925, 0.216272, -0.615448,
		28.804909, 39.931557, 34.369576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658360, 40.075893, 34.231632>,  <29.335455, 39.780167, 34.800388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658360, 40.075893, 34.231632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275307, 40.191021, 34.235729>,  <29.045475, 40.260098, 34.238186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275307, 40.191021, 34.235729>,  <29.658360, 40.075893, 34.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275307, 40.191021, 34.235729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287993, 0.956724, 0.041697,
		0.002204, 0.042879, -0.999078,
		-0.957630, 0.287820, 0.010240,
		28.988018, 40.277367, 34.238800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738956, 40.530109, 33.722626>,  <29.658360, 40.075893, 34.231632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738956, 40.530109, 33.722626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403139, 40.601814, 33.927773>,  <29.201649, 40.644836, 34.050861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403139, 40.601814, 33.927773>,  <29.738956, 40.530109, 33.722626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403139, 40.601814, 33.927773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349420, 0.901015, 0.257058,
		-0.416020, 0.395017, -0.819078,
		-0.839544, 0.179261, 0.512867,
		29.151276, 40.655594, 34.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486244, 41.255337, 33.515175>,  <29.738956, 40.530109, 33.722626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486244, 41.255337, 33.515175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322569, 41.174164, 33.871014>,  <29.224363, 41.125462, 34.084518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322569, 41.174164, 33.871014>,  <29.486244, 41.255337, 33.515175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322569, 41.174164, 33.871014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352333, 0.864198, 0.359197,
		-0.841680, 0.460414, -0.282122,
		-0.409189, -0.202929, 0.889598,
		29.199812, 41.113285, 34.137894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936939, 41.709587, 33.666149>,  <29.486244, 41.255337, 33.515175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936939, 41.709587, 33.666149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081934, 41.599365, 34.022278>,  <29.168932, 41.533230, 34.235954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081934, 41.599365, 34.022278>,  <28.936939, 41.709587, 33.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081934, 41.599365, 34.022278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241365, 0.950456, 0.195900,
		-0.900192, 0.143881, 0.411039,
		0.362488, -0.275558, 0.890320,
		29.190680, 41.516697, 34.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707174, 42.151154, 34.136753>,  <28.936939, 41.709587, 33.666149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707174, 42.151154, 34.136753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036737, 42.014481, 34.317612>,  <29.234474, 41.932476, 34.426128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036737, 42.014481, 34.317612>,  <28.707174, 42.151154, 34.136753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036737, 42.014481, 34.317612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369112, 0.928921, 0.029369,
		-0.430042, 0.142695, 0.891460,
		0.823906, -0.341678, 0.452146,
		29.283909, 41.911976, 34.453255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976593, 42.726917, 34.218063>,  <28.707174, 42.151154, 34.136753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976593, 42.726917, 34.218063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261137, 42.495842, 34.378181>,  <29.431864, 42.357197, 34.474255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261137, 42.495842, 34.378181>,  <28.976593, 42.726917, 34.218063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261137, 42.495842, 34.378181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568734, 0.807774, 0.155056,
		-0.412924, 0.117362, 0.903172,
		0.711362, -0.577691, 0.400297,
		29.474546, 42.322536, 34.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216061, 43.093292, 34.899124>,  <28.976593, 42.726917, 34.218063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216061, 43.093292, 34.899124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498857, 42.889194, 34.703239>,  <29.668535, 42.766735, 34.585709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498857, 42.889194, 34.703239>,  <29.216061, 43.093292, 34.899124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498857, 42.889194, 34.703239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601522, 0.798001, 0.036954,
		0.371934, -0.320698, 0.871101,
		0.706991, -0.510242, -0.489711,
		29.710955, 42.736122, 34.556328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889177, 42.852005, 35.243916>,  <29.216061, 43.093292, 34.899124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889177, 42.852005, 35.243916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921465, 42.953014, 34.858227>,  <29.940838, 43.013618, 34.626816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921465, 42.953014, 34.858227>,  <29.889177, 42.852005, 35.243916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921465, 42.953014, 34.858227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446808, 0.855567, 0.261471,
		0.890981, -0.451926, -0.043767,
		0.080720, 0.252521, -0.964219,
		29.945681, 43.028770, 34.568962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621264, 43.087734, 35.215836>,  <29.889177, 42.852005, 35.243916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621264, 43.087734, 35.215836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403749, 43.276516, 34.938255>,  <30.273241, 43.389786, 34.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403749, 43.276516, 34.938255>,  <30.621264, 43.087734, 35.215836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403749, 43.276516, 34.938255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558392, 0.820759, 0.120634,
		0.626496, -0.321895, -0.709849,
		-0.543784, 0.471951, -0.693946,
		30.240614, 43.418102, 34.730072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114971, 43.519012, 34.833889>,  <30.621264, 43.087734, 35.215836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114971, 43.519012, 34.833889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743856, 43.660732, 34.787094>,  <30.521189, 43.745766, 34.759018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743856, 43.660732, 34.787094>,  <31.114971, 43.519012, 34.833889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743856, 43.660732, 34.787094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335553, 0.929411, 0.153624,
		0.163155, 0.103276, -0.981180,
		-0.927785, 0.354302, -0.116983,
		30.465521, 43.767021, 34.751999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979465, 43.791580, 34.085381>,  <31.114971, 43.519012, 34.833889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979465, 43.791580, 34.085381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997831, 43.716721, 33.692879>,  <31.008850, 43.671803, 33.457378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997831, 43.716721, 33.692879>,  <30.979465, 43.791580, 34.085381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997831, 43.716721, 33.692879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367936, -0.910067, 0.190790,
		-0.928717, -0.369799, 0.027076,
		0.045913, -0.187152, -0.981258,
		31.011604, 43.660576, 33.398502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276018, 43.063000, 34.045353>,  <30.979465, 43.791580, 34.085381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276018, 43.063000, 34.045353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225388, 43.107708, 33.651096>,  <31.195009, 43.134533, 33.414543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225388, 43.107708, 33.651096>,  <31.276018, 43.063000, 34.045353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225388, 43.107708, 33.651096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501946, -0.849813, -0.160832,
		-0.855587, -0.515095, 0.051461,
		-0.126576, 0.111775, -0.985639,
		31.187414, 43.141239, 33.355404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139990, 42.443020, 33.784138>,  <31.276018, 43.063000, 34.045353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139990, 42.443020, 33.784138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255798, 42.604198, 33.436848>,  <31.325283, 42.700905, 33.228474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255798, 42.604198, 33.436848>,  <31.139990, 42.443020, 33.784138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255798, 42.604198, 33.436848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377069, -0.881736, -0.283478,
		-0.879770, -0.245307, -0.407220,
		0.289522, 0.402946, -0.868223,
		31.342655, 42.725082, 33.176380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935698, 42.049095, 33.136017>,  <31.139990, 42.443020, 33.784138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935698, 42.049095, 33.136017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301374, 42.209461, 33.112289>,  <31.520781, 42.305679, 33.098053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301374, 42.209461, 33.112289>,  <30.935698, 42.049095, 33.136017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301374, 42.209461, 33.112289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348686, -0.852663, -0.389082,
		-0.206568, 0.335012, -0.919291,
		0.914192, 0.400916, -0.059319,
		31.575632, 42.329735, 33.094494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219553, 42.107910, 32.453842>,  <30.935698, 42.049095, 33.136017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219553, 42.107910, 32.453842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522125, 42.042244, 32.707096>,  <31.703669, 42.002846, 32.859047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522125, 42.042244, 32.707096>,  <31.219553, 42.107910, 32.453842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522125, 42.042244, 32.707096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112280, -0.921029, -0.372959,
		0.644363, 0.353206, -0.678264,
		0.756432, -0.164165, 0.633135,
		31.749056, 41.992996, 32.897038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874086, 41.905888, 32.082386>,  <31.219553, 42.107910, 32.453842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874086, 41.905888, 32.082386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880186, 41.756355, 32.453335>,  <31.883846, 41.666634, 32.675903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880186, 41.756355, 32.453335>,  <31.874086, 41.905888, 32.082386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880186, 41.756355, 32.453335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004112, -0.927494, -0.373815,
		0.999875, 0.001887, -0.015681,
		0.015249, -0.373833, 0.927371,
		31.884760, 41.644207, 32.731544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373589, 41.462330, 32.016663>,  <31.874086, 41.905888, 32.082386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373589, 41.462330, 32.016663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083195, 41.375969, 32.277840>,  <31.908958, 41.324154, 32.434544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083195, 41.375969, 32.277840>,  <32.373589, 41.462330, 32.016663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083195, 41.375969, 32.277840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091322, -0.910769, -0.402690,
		0.681617, -0.351976, 0.641491,
		-0.725988, -0.215898, 0.652939,
		31.865398, 41.311199, 32.473721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451359, 40.721874, 32.249500>,  <32.373589, 41.462330, 32.016663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451359, 40.721874, 32.249500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071545, 40.831364, 32.310780>,  <31.843657, 40.897057, 32.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071545, 40.831364, 32.310780>,  <32.451359, 40.721874, 32.249500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071545, 40.831364, 32.310780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305216, -0.918890, -0.249970,
		0.072350, -0.284113, 0.956057,
		-0.949531, 0.273719, 0.153198,
		31.786686, 40.913479, 32.356739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218739, 40.199642, 32.644531>,  <32.451359, 40.721874, 32.249500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218739, 40.199642, 32.644531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912294, 40.361507, 32.444801>,  <31.728428, 40.458626, 32.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912294, 40.361507, 32.444801>,  <32.218739, 40.199642, 32.644531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912294, 40.361507, 32.444801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387971, -0.910562, -0.142673,
		-0.512402, 0.084421, 0.854586,
		-0.766109, 0.404661, -0.499327,
		31.682463, 40.482906, 32.295002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695200, 39.870346, 32.947277>,  <32.218739, 40.199642, 32.644531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695200, 39.870346, 32.947277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538486, 40.021332, 32.611652>,  <31.444458, 40.111923, 32.410278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538486, 40.021332, 32.611652>,  <31.695200, 39.870346, 32.947277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538486, 40.021332, 32.611652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457265, -0.871248, -0.178427,
		-0.798381, 0.313769, 0.513943,
		-0.391786, 0.377461, -0.839063,
		31.420950, 40.134571, 32.359932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004597, 39.603638, 32.879322>,  <31.695200, 39.870346, 32.947277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004597, 39.603638, 32.879322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093836, 39.702377, 32.502113>,  <31.147379, 39.761620, 32.275787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093836, 39.702377, 32.502113>,  <31.004597, 39.603638, 32.879322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093836, 39.702377, 32.502113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432032, -0.842164, -0.322657,
		-0.873828, 0.479400, -0.081238,
		0.223097, 0.246849, -0.943023,
		31.160765, 39.776432, 32.219208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498903, 39.295170, 32.519051>,  <31.004597, 39.603638, 32.879322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498903, 39.295170, 32.519051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772850, 39.348274, 32.232460>,  <30.937218, 39.380138, 32.060505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772850, 39.348274, 32.232460>,  <30.498903, 39.295170, 32.519051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772850, 39.348274, 32.232460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236373, -0.889612, -0.390791,
		-0.689265, 0.436995, -0.577883,
		0.684866, 0.132763, -0.716473,
		30.978310, 39.388103, 32.017517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177301, 39.211224, 31.914797>,  <30.498903, 39.295170, 32.519051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177301, 39.211224, 31.914797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559034, 39.145397, 31.815065>,  <30.788074, 39.105900, 31.755226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559034, 39.145397, 31.815065>,  <30.177301, 39.211224, 31.914797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559034, 39.145397, 31.815065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272155, -0.823099, -0.498437,
		-0.123195, 0.543531, -0.830299,
		0.954335, -0.164565, -0.249326,
		30.845335, 39.096027, 31.740267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058998, 38.960899, 31.303831>,  <30.177301, 39.211224, 31.914797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058998, 38.960899, 31.303831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429358, 38.855038, 31.411661>,  <30.651573, 38.791523, 31.476358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429358, 38.855038, 31.411661>,  <30.058998, 38.960899, 31.303831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429358, 38.855038, 31.411661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117207, -0.879629, -0.460995,
		0.359126, 0.395239, -0.845467,
		0.925900, -0.264649, 0.269573,
		30.707129, 38.775642, 31.492533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192451, 38.569363, 30.737822>,  <30.058998, 38.960899, 31.303831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192451, 38.569363, 30.737822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466381, 38.436329, 30.997175>,  <30.630739, 38.356506, 31.152786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466381, 38.436329, 30.997175>,  <30.192451, 38.569363, 30.737822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466381, 38.436329, 30.997175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007080, -0.892765, -0.450467,
		0.728674, 0.303901, -0.613742,
		0.684824, -0.332589, 0.648383,
		30.671829, 38.336552, 31.191690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604996, 38.096275, 30.336817>,  <30.192451, 38.569363, 30.737822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604996, 38.096275, 30.336817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675823, 37.995083, 30.717268>,  <30.718319, 37.934368, 30.945539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675823, 37.995083, 30.717268>,  <30.604996, 38.096275, 30.336817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675823, 37.995083, 30.717268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167746, -0.960017, -0.224117,
		0.969798, -0.119864, -0.212425,
		0.177068, -0.252982, 0.951129,
		30.728943, 37.919189, 31.002607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930061, 37.356438, 30.476524>,  <30.604996, 38.096275, 30.336817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930061, 37.356438, 30.476524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786991, 37.431793, 30.842382>,  <30.701149, 37.477009, 31.061897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786991, 37.431793, 30.842382>,  <30.930061, 37.356438, 30.476524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786991, 37.431793, 30.842382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198321, -0.972422, 0.122738,
		0.912545, -0.137493, 0.385172,
		-0.357674, 0.188392, 0.914646,
		30.679689, 37.488312, 31.116776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274464, 36.812370, 30.941820>,  <30.930061, 37.356438, 30.476524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274464, 36.812370, 30.941820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938559, 36.962608, 31.098654>,  <30.737015, 37.052750, 31.192755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938559, 36.962608, 31.098654>,  <31.274464, 36.812370, 30.941820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938559, 36.962608, 31.098654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394655, -0.918189, 0.034298,
		0.372890, -0.125936, 0.919290,
		-0.839762, 0.375591, 0.392085,
		30.686630, 37.075287, 31.216280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144640, 36.401848, 31.575314>,  <31.274464, 36.812370, 30.941820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144640, 36.401848, 31.575314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792414, 36.571289, 31.490305>,  <30.581078, 36.672955, 31.439301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792414, 36.571289, 31.490305>,  <31.144640, 36.401848, 31.575314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792414, 36.571289, 31.490305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465603, -0.856903, 0.221202,
		-0.088408, 0.293733, 0.951791,
		-0.880567, 0.423601, -0.212520,
		30.528244, 36.698368, 31.426548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792955, 36.305443, 32.153282>,  <31.144640, 36.401848, 31.575314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792955, 36.305443, 32.153282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520975, 36.360794, 31.865248>,  <30.357788, 36.394005, 31.692427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520975, 36.360794, 31.865248>,  <30.792955, 36.305443, 32.153282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520975, 36.360794, 31.865248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558952, -0.733426, 0.386858,
		-0.474597, 0.665536, 0.576037,
		-0.679949, 0.138376, -0.720084,
		30.316990, 36.402306, 31.649221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190403, 36.452148, 32.479820>,  <30.792955, 36.305443, 32.153282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190403, 36.452148, 32.479820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064953, 36.344151, 32.115681>,  <29.989683, 36.279350, 31.897196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064953, 36.344151, 32.115681>,  <30.190403, 36.452148, 32.479820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064953, 36.344151, 32.115681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657260, -0.630206, 0.413340,
		-0.685309, 0.727972, 0.020191,
		-0.313625, -0.269995, -0.910353,
		29.970865, 36.263153, 31.842575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481064, 36.597382, 32.402115>,  <30.190403, 36.452148, 32.479820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481064, 36.597382, 32.402115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536947, 36.306042, 32.133789>,  <29.570477, 36.131237, 31.972795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536947, 36.306042, 32.133789>,  <29.481064, 36.597382, 32.402115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536947, 36.306042, 32.133789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749220, -0.520696, 0.409324,
		-0.647419, 0.445399, -0.618440,
		0.139707, -0.728351, -0.670810,
		29.578859, 36.087536, 31.932547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771820, 36.313812, 32.247082>,  <29.481064, 36.597382, 32.402115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771820, 36.313812, 32.247082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994364, 36.043888, 32.053135>,  <29.127890, 35.881931, 31.936768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994364, 36.043888, 32.053135>,  <28.771820, 36.313812, 32.247082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994364, 36.043888, 32.053135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593467, -0.731114, 0.336557,
		-0.581604, 0.100505, -0.807239,
		0.556358, -0.674812, -0.484865,
		29.161272, 35.841446, 31.907675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323679, 35.893448, 31.807400>,  <28.771820, 36.313812, 32.247082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323679, 35.893448, 31.807400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652599, 35.676785, 31.877172>,  <28.849953, 35.546787, 31.919037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652599, 35.676785, 31.877172>,  <28.323679, 35.893448, 31.807400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652599, 35.676785, 31.877172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569051, -0.782565, 0.252533,
		-0.000280, -0.306921, -0.951735,
		0.822302, -0.541656, 0.174434,
		28.899290, 35.514286, 31.929502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363285, 35.241138, 31.323153>,  <28.323679, 35.893448, 31.807400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363285, 35.241138, 31.323153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575434, 35.166527, 31.653950>,  <28.702723, 35.121761, 31.852428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575434, 35.166527, 31.653950>,  <28.363285, 35.241138, 31.323153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575434, 35.166527, 31.653950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396282, -0.916908, 0.047341,
		0.749445, -0.352830, -0.560218,
		0.530371, -0.186525, 0.826992,
		28.734545, 35.110569, 31.902046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582850, 34.556316, 31.315834>,  <28.363285, 35.241138, 31.323153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582850, 34.556316, 31.315834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639866, 34.632839, 31.704285>,  <28.674076, 34.678753, 31.937355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639866, 34.632839, 31.704285>,  <28.582850, 34.556316, 31.315834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639866, 34.632839, 31.704285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319631, -0.919681, 0.228084,
		0.936759, -0.342913, -0.069946,
		0.142541, 0.191303, 0.971126,
		28.682629, 34.690231, 31.995623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940487, 33.991516, 31.610479>,  <28.582850, 34.556316, 31.315834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940487, 33.991516, 31.610479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726999, 34.151291, 31.908632>,  <28.598906, 34.247154, 32.087524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726999, 34.151291, 31.908632>,  <28.940487, 33.991516, 31.610479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726999, 34.151291, 31.908632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452206, -0.879620, 0.147576,
		0.714599, -0.258301, 0.650099,
		-0.533721, 0.399436, 0.745381,
		28.566883, 34.271122, 32.132248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748714, 33.473160, 31.971518>,  <28.940487, 33.991516, 31.610479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748714, 33.473160, 31.971518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498667, 33.734009, 32.143082>,  <28.348639, 33.890518, 32.246021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498667, 33.734009, 32.143082>,  <28.748714, 33.473160, 31.971518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498667, 33.734009, 32.143082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696670, -0.713954, 0.070143,
		0.351963, -0.254960, 0.900620,
		-0.625118, 0.652123, 0.428909,
		28.311131, 33.929646, 32.271755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479307, 33.181034, 32.600060>,  <28.748714, 33.473160, 31.971518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479307, 33.181034, 32.600060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258078, 33.453930, 32.408783>,  <28.125340, 33.617668, 32.294018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258078, 33.453930, 32.408783>,  <28.479307, 33.181034, 32.600060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258078, 33.453930, 32.408783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690156, -0.696687, -0.195733,
		-0.466683, 0.221770, 0.856169,
		-0.553074, 0.682235, -0.478188,
		28.092155, 33.658600, 32.265327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029634, 32.639996, 32.362659>,  <28.479307, 33.181034, 32.600060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029634, 32.639996, 32.362659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407204, 32.682606, 32.487667>,  <29.633745, 32.708172, 32.562672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407204, 32.682606, 32.487667>,  <29.029634, 32.639996, 32.362659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407204, 32.682606, 32.487667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189093, -0.601504, 0.776168,
		0.270660, -0.791735, -0.547629,
		0.943921, 0.106525, 0.312515,
		29.690380, 32.714561, 32.581421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191961, 31.926325, 32.568031>,  <29.029634, 32.639996, 32.362659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191961, 31.926325, 32.568031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451982, 32.177628, 32.739017>,  <29.607994, 32.328407, 32.841610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451982, 32.177628, 32.739017>,  <29.191961, 31.926325, 32.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451982, 32.177628, 32.739017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022034, -0.577886, 0.815820,
		0.759570, -0.520907, -0.389499,
		0.650052, 0.628255, 0.427467,
		29.646997, 32.366104, 32.867256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637974, 31.508356, 33.037724>,  <29.191961, 31.926325, 32.568031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637974, 31.508356, 33.037724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709902, 31.878431, 33.171406>,  <29.753059, 32.100475, 33.251614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709902, 31.878431, 33.171406>,  <29.637974, 31.508356, 33.037724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709902, 31.878431, 33.171406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178747, -0.364815, 0.913761,
		0.967324, -0.104574, -0.230975,
		0.179819, 0.925189, 0.334202,
		29.763847, 32.155987, 33.271667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212332, 31.565762, 33.592030>,  <29.637974, 31.508356, 33.037724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212332, 31.565762, 33.592030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917635, 31.828791, 33.655033>,  <29.740816, 31.986609, 33.692833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917635, 31.828791, 33.655033>,  <30.212332, 31.565762, 33.592030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917635, 31.828791, 33.655033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103798, -0.340162, 0.934621,
		0.668159, 0.672226, 0.318866,
		-0.736743, 0.657573, 0.157506,
		29.696611, 32.026062, 33.702286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348135, 32.089809, 34.249802>,  <30.212332, 31.565762, 33.592030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348135, 32.089809, 34.249802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969461, 32.002113, 34.155380>,  <29.742256, 31.949495, 34.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969461, 32.002113, 34.155380>,  <30.348135, 32.089809, 34.249802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969461, 32.002113, 34.155380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125788, -0.423002, 0.897356,
		-0.296588, 0.879206, 0.372871,
		-0.946685, -0.219243, -0.236051,
		29.685455, 31.936340, 34.084564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788385, 32.441254, 34.696934>,  <30.348135, 32.089809, 34.249802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788385, 32.441254, 34.696934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762083, 32.074116, 34.540352>,  <29.746302, 31.853832, 34.446404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762083, 32.074116, 34.540352>,  <29.788385, 32.441254, 34.696934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762083, 32.074116, 34.540352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333671, -0.349492, 0.875511,
		-0.940394, 0.188185, -0.283278,
		-0.065755, -0.917846, -0.391452,
		29.742357, 31.798761, 34.422916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171061, 32.190041, 34.830837>,  <29.788385, 32.441254, 34.696934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171061, 32.190041, 34.830837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448254, 31.903593, 34.797478>,  <29.614569, 31.731726, 34.777462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448254, 31.903593, 34.797478>,  <29.171061, 32.190041, 34.830837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448254, 31.903593, 34.797478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279935, -0.373867, 0.884229,
		-0.664388, -0.589410, -0.459549,
		0.692983, -0.716115, -0.083396,
		29.656149, 31.688759, 34.772461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874130, 31.512123, 34.931473>,  <29.171061, 32.190041, 34.830837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874130, 31.512123, 34.931473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254690, 31.537363, 35.052044>,  <29.483027, 31.552507, 35.124386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254690, 31.537363, 35.052044>,  <28.874130, 31.512123, 34.931473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254690, 31.537363, 35.052044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277295, -0.250286, 0.927612,
		0.133976, -0.966114, -0.220624,
		0.951398, 0.063100, 0.301431,
		29.540110, 31.556293, 35.142471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001045, 30.877855, 35.445724>,  <28.874130, 31.512123, 34.931473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001045, 30.877855, 35.445724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284029, 31.157887, 35.484497>,  <29.453819, 31.325905, 35.507759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284029, 31.157887, 35.484497>,  <29.001045, 30.877855, 35.445724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284029, 31.157887, 35.484497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062007, -0.075136, 0.995244,
		0.704031, -0.710103, -0.009746,
		0.707458, 0.700078, 0.096930,
		29.496265, 31.367910, 35.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448593, 30.658394, 35.948589>,  <29.001045, 30.877855, 35.445724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448593, 30.658394, 35.948589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510933, 31.053505, 35.947701>,  <29.548338, 31.290571, 35.947166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510933, 31.053505, 35.947701>,  <29.448593, 30.658394, 35.948589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510933, 31.053505, 35.947701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098936, 0.017845, 0.994934,
		0.982813, -0.154842, 0.100508,
		0.155851, 0.987778, -0.002219,
		29.557688, 31.349838, 35.947037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951380, 30.720045, 36.376823>,  <29.448593, 30.658394, 35.948589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951380, 30.720045, 36.376823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789259, 31.085672, 36.371098>,  <29.691986, 31.305050, 36.367661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789259, 31.085672, 36.371098>,  <29.951380, 30.720045, 36.376823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789259, 31.085672, 36.371098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110708, -0.033532, 0.993287,
		0.907454, 0.404167, 0.114786,
		-0.405303, 0.914070, -0.014316,
		29.667667, 31.359894, 36.366802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236712, 30.930384, 36.890419>,  <29.951380, 30.720045, 36.376823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236712, 30.930384, 36.890419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947304, 31.197348, 36.819901>,  <29.773659, 31.357527, 36.777588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947304, 31.197348, 36.819901>,  <30.236712, 30.930384, 36.890419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947304, 31.197348, 36.819901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114967, 0.135326, 0.984109,
		0.680662, 0.732291, -0.021181,
		-0.723520, 0.667410, -0.176301,
		29.730247, 31.397572, 36.767010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278234, 31.496584, 37.322716>,  <30.236712, 30.930384, 36.890419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278234, 31.496584, 37.322716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895285, 31.517841, 37.209148>,  <29.665514, 31.530596, 37.141006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895285, 31.517841, 37.209148>,  <30.278234, 31.496584, 37.322716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895285, 31.517841, 37.209148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270076, 0.183909, 0.945112,
		0.102441, 0.981506, -0.161717,
		-0.957374, 0.053142, -0.283921,
		29.608072, 31.533785, 37.123974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980076, 31.976618, 37.668743>,  <30.278234, 31.496584, 37.322716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980076, 31.976618, 37.668743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651794, 31.789669, 37.537285>,  <29.454826, 31.677500, 37.458408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651794, 31.789669, 37.537285>,  <29.980076, 31.976618, 37.668743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651794, 31.789669, 37.537285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480448, 0.253223, 0.839671,
		-0.309218, 0.847019, -0.432369,
		-0.820703, -0.467373, -0.328648,
		29.405584, 31.649458, 37.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428890, 32.247913, 38.104839>,  <29.980076, 31.976618, 37.668743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428890, 32.247913, 38.104839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241976, 31.930176, 37.949577>,  <29.129827, 31.739534, 37.856422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241976, 31.930176, 37.949577>,  <29.428890, 32.247913, 38.104839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241976, 31.930176, 37.949577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423255, -0.184458, 0.887035,
		-0.776207, 0.578788, -0.250015,
		-0.467288, -0.794342, -0.388153,
		29.101789, 31.691874, 37.833130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658096, 32.315311, 38.168270>,  <29.428890, 32.247913, 38.104839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658096, 32.315311, 38.168270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776039, 31.933216, 38.158695>,  <28.846806, 31.703959, 38.152950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776039, 31.933216, 38.158695>,  <28.658096, 32.315311, 38.168270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776039, 31.933216, 38.158695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478990, -0.169438, 0.861312,
		-0.826818, -0.242496, -0.507511,
		0.294856, -0.955242, -0.023941,
		28.864496, 31.646643, 38.151512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952038, 32.018192, 38.275566>,  <28.658096, 32.315311, 38.168270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952038, 32.018192, 38.275566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205423, 31.715521, 38.340263>,  <28.357454, 31.533916, 38.379082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205423, 31.715521, 38.340263>,  <27.952038, 32.018192, 38.275566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205423, 31.715521, 38.340263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515189, -0.256493, 0.817797,
		-0.577327, -0.601369, -0.552313,
		0.633462, -0.756682, 0.161739,
		28.395462, 31.488516, 38.388786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508026, 31.562983, 38.501488>,  <27.952038, 32.018192, 38.275566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508026, 31.562983, 38.501488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861856, 31.434258, 38.636520>,  <28.074154, 31.357023, 38.717541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861856, 31.434258, 38.636520>,  <27.508026, 31.562983, 38.501488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861856, 31.434258, 38.636520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438875, -0.329374, 0.836003,
		-0.157842, -0.887666, -0.432591,
		0.884576, -0.321810, 0.337585,
		28.127230, 31.337713, 38.737797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430916, 30.965370, 38.716991>,  <27.508026, 31.562983, 38.501488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430916, 30.965370, 38.716991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755821, 31.066879, 38.927071>,  <27.950764, 31.127785, 39.053116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755821, 31.066879, 38.927071>,  <27.430916, 30.965370, 38.716991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755821, 31.066879, 38.927071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408182, -0.395897, 0.822589,
		0.416676, -0.882532, -0.217986,
		0.812262, 0.253775, 0.525194,
		27.999500, 31.143011, 39.084629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633373, 30.465736, 39.198555>,  <27.430916, 30.965370, 38.716991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633373, 30.465736, 39.198555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899725, 30.723545, 39.348858>,  <28.059536, 30.878231, 39.439041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899725, 30.723545, 39.348858>,  <27.633373, 30.465736, 39.198555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899725, 30.723545, 39.348858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048556, -0.465153, 0.883898,
		0.744476, -0.606816, -0.278441,
		0.665881, 0.644521, 0.375760,
		28.099489, 30.916901, 39.461586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109348, 30.121729, 39.692558>,  <27.633373, 30.465736, 39.198555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109348, 30.121729, 39.692558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131777, 30.507982, 39.794075>,  <28.145233, 30.739735, 39.854984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131777, 30.507982, 39.794075>,  <28.109348, 30.121729, 39.692558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131777, 30.507982, 39.794075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095842, -0.247814, 0.964055,
		0.993816, -0.078378, 0.078654,
		0.056069, 0.965632, 0.253794,
		28.148598, 30.797672, 39.870213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651489, 30.161133, 40.157421>,  <28.109348, 30.121729, 39.692558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651489, 30.161133, 40.157421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427389, 30.482368, 40.238579>,  <28.292929, 30.675110, 40.287273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427389, 30.482368, 40.238579>,  <28.651489, 30.161133, 40.157421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427389, 30.482368, 40.238579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115865, -0.166554, 0.979201,
		0.820181, 0.572105, 0.000262,
		-0.560249, 0.803091, 0.202891,
		28.259314, 30.723295, 40.299446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023281, 30.397701, 40.742687>,  <28.651489, 30.161133, 40.157421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023281, 30.397701, 40.742687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669132, 30.583513, 40.735447>,  <28.456642, 30.695000, 40.731102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669132, 30.583513, 40.735447>,  <29.023281, 30.397701, 40.742687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669132, 30.583513, 40.735447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071156, -0.096936, 0.992744,
		0.459405, 0.880236, 0.118879,
		-0.885373, 0.464530, -0.018101,
		28.403521, 30.722872, 40.730015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091486, 30.921354, 41.150822>,  <29.023281, 30.397701, 40.742687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091486, 30.921354, 41.150822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700893, 30.835623, 41.141422>,  <28.466537, 30.784184, 41.135780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700893, 30.835623, 41.141422>,  <29.091486, 30.921354, 41.150822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700893, 30.835623, 41.141422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000206, -0.109924, 0.993940,
		-0.215611, 0.970557, 0.107383,
		-0.976479, -0.214327, -0.023501,
		28.407949, 30.771324, 41.134373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753860, 31.075981, 41.826462>,  <29.091486, 30.921354, 41.150822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753860, 31.075981, 41.826462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478592, 30.842352, 41.654285>,  <28.313431, 30.702173, 41.550980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478592, 30.842352, 41.654285>,  <28.753860, 31.075981, 41.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478592, 30.842352, 41.654285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296388, -0.315196, 0.901557,
		-0.662249, 0.748003, 0.043796,
		-0.688172, -0.584074, -0.430437,
		28.272141, 30.667130, 41.525154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212755, 31.271011, 42.169319>,  <28.753860, 31.075981, 41.826462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212755, 31.271011, 42.169319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124144, 30.908377, 42.025642>,  <28.070976, 30.690796, 41.939434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124144, 30.908377, 42.025642>,  <28.212755, 31.271011, 42.169319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124144, 30.908377, 42.025642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370120, -0.262614, 0.891092,
		-0.902184, 0.330349, -0.277370,
		-0.221530, -0.906589, -0.359195,
		28.057684, 30.636400, 41.917885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604866, 31.159277, 42.508560>,  <28.212755, 31.271011, 42.169319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604866, 31.159277, 42.508560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753819, 30.809526, 42.384109>,  <27.843189, 30.599676, 42.309441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753819, 30.809526, 42.384109>,  <27.604866, 31.159277, 42.508560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753819, 30.809526, 42.384109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315842, -0.434620, 0.843415,
		-0.872683, -0.215805, -0.438009,
		0.372381, -0.874376, -0.311126,
		27.865532, 30.547215, 42.290771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992182, 30.540995, 42.547760>,  <27.604866, 31.159277, 42.508560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992182, 30.540995, 42.547760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364510, 30.395895, 42.565586>,  <27.587906, 30.308836, 42.576283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364510, 30.395895, 42.565586>,  <26.992182, 30.540995, 42.547760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364510, 30.395895, 42.565586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302177, -0.695276, 0.652136,
		-0.205577, -0.620488, -0.756791,
		0.930821, -0.362749, 0.044564,
		27.643755, 30.287071, 42.578957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924129, 29.852909, 42.829350>,  <26.992182, 30.540995, 42.547760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924129, 29.852909, 42.829350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315432, 29.912197, 42.887383>,  <27.550213, 29.947771, 42.922203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315432, 29.912197, 42.887383>,  <26.924129, 29.852909, 42.829350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315432, 29.912197, 42.887383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034391, -0.573914, 0.818193,
		0.204541, -0.805390, -0.556336,
		0.978253, 0.148221, 0.145087,
		27.608908, 29.956663, 42.930908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155888, 29.233511, 43.004009>,  <26.924129, 29.852909, 42.829350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155888, 29.233511, 43.004009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451439, 29.473682, 43.126350>,  <27.628769, 29.617785, 43.199757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451439, 29.473682, 43.126350>,  <27.155888, 29.233511, 43.004009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451439, 29.473682, 43.126350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070020, -0.383029, 0.921079,
		0.670192, -0.701980, -0.240970,
		0.738878, 0.600427, 0.305856,
		27.673101, 29.653811, 43.218105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605154, 28.768467, 43.486958>,  <27.155888, 29.233511, 43.004009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605154, 28.768467, 43.486958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674248, 29.153202, 43.571838>,  <27.715704, 29.384043, 43.622765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674248, 29.153202, 43.571838>,  <27.605154, 28.768467, 43.486958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674248, 29.153202, 43.571838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069977, -0.226878, 0.971406,
		0.982480, -0.152946, -0.106497,
		0.172734, 0.961839, 0.212200,
		27.726068, 29.441753, 43.635498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275429, 28.801754, 43.875652>,  <27.605154, 28.768467, 43.486958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275429, 28.801754, 43.875652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100676, 29.151901, 43.958466>,  <27.995823, 29.361990, 44.008152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100676, 29.151901, 43.958466>,  <28.275429, 28.801754, 43.875652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100676, 29.151901, 43.958466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118317, -0.172239, 0.977924,
		0.891702, 0.451736, -0.028322,
		-0.436885, 0.875368, 0.207033,
		27.969610, 29.414511, 44.020576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715389, 29.213505, 44.262894>,  <28.275429, 28.801754, 43.875652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715389, 29.213505, 44.262894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351645, 29.359087, 44.343487>,  <28.133398, 29.446436, 44.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351645, 29.359087, 44.343487>,  <28.715389, 29.213505, 44.262894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351645, 29.359087, 44.343487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183140, -0.084616, 0.979438,
		0.373520, 0.927565, 0.010292,
		-0.909364, 0.363955, 0.201480,
		28.078835, 29.468273, 44.403931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769482, 29.662128, 44.816589>,  <28.715389, 29.213505, 44.262894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769482, 29.662128, 44.816589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379307, 29.578833, 44.845306>,  <28.145201, 29.528854, 44.862537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379307, 29.578833, 44.845306>,  <28.769482, 29.662128, 44.816589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379307, 29.578833, 44.845306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091233, -0.085286, 0.992171,
		-0.200487, 0.974352, 0.102190,
		-0.975439, -0.208240, 0.071795,
		28.086676, 29.516361, 44.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662024, 29.978201, 45.350677>,  <28.769482, 29.662128, 44.816589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662024, 29.978201, 45.350677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334717, 29.750010, 45.322411>,  <28.138332, 29.613094, 45.305450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334717, 29.750010, 45.322411>,  <28.662024, 29.978201, 45.350677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334717, 29.750010, 45.322411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096461, 0.015069, 0.995223,
		-0.566688, 0.821174, -0.067359,
		-0.818266, -0.570479, -0.070672,
		28.089237, 29.578865, 45.301208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970430, 30.262426, 45.593330>,  <28.662024, 29.978201, 45.350677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970430, 30.262426, 45.593330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017824, 29.869650, 45.652325>,  <28.046261, 29.633984, 45.687721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017824, 29.869650, 45.652325>,  <27.970430, 30.262426, 45.593330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017824, 29.869650, 45.652325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117278, 0.133656, 0.984064,
		-0.986006, -0.133894, -0.099323,
		0.118485, -0.981941, 0.147489,
		28.053370, 29.575068, 45.696571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537153, 30.105024, 46.084644>,  <27.970430, 30.262426, 45.593330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537153, 30.105024, 46.084644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741344, 29.763680, 46.126945>,  <27.863859, 29.558872, 46.152328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741344, 29.763680, 46.126945>,  <27.537153, 30.105024, 46.084644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741344, 29.763680, 46.126945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244768, -0.026305, 0.969225,
		-0.824319, -0.520652, -0.222305,
		0.510477, -0.853363, 0.105755,
		27.894487, 29.507671, 46.158672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112747, 29.748775, 46.527977>,  <27.537153, 30.105024, 46.084644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112747, 29.748775, 46.527977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494028, 29.630747, 46.554329>,  <27.722795, 29.559929, 46.570141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494028, 29.630747, 46.554329>,  <27.112747, 29.748775, 46.527977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494028, 29.630747, 46.554329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102750, -0.111235, 0.988468,
		-0.284343, -0.948977, -0.136348,
		0.953201, -0.295074, 0.065878,
		27.779989, 29.542225, 46.574093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163813, 29.274399, 47.056515>,  <27.112747, 29.748775, 46.527977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163813, 29.274399, 47.056515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548344, 29.382717, 47.036449>,  <27.779062, 29.447708, 47.024410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548344, 29.382717, 47.036449>,  <27.163813, 29.274399, 47.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548344, 29.382717, 47.036449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086465, -0.123831, 0.988529,
		0.261478, -0.954639, -0.142456,
		0.961329, 0.270796, -0.050163,
		27.836742, 29.463957, 47.021400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419222, 28.834558, 47.568108>,  <27.163813, 29.274399, 47.056515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419222, 28.834558, 47.568108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697559, 29.114836, 47.505070>,  <27.864561, 29.283001, 47.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697559, 29.114836, 47.505070>,  <27.419222, 28.834558, 47.568108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697559, 29.114836, 47.505070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238277, -0.018232, 0.971026,
		0.677516, -0.713231, -0.179645,
		0.695842, 0.700691, -0.157594,
		27.906311, 29.325043, 47.457790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045351, 28.569986, 47.799328>,  <27.419222, 28.834558, 47.568108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045351, 28.569986, 47.799328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109854, 28.964478, 47.784637>,  <28.148556, 29.201172, 47.775826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109854, 28.964478, 47.784637>,  <28.045351, 28.569986, 47.799328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109854, 28.964478, 47.784637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296782, -0.012973, 0.954857,
		0.941231, -0.164877, -0.294787,
		0.161258, 0.986229, -0.036722,
		28.158232, 29.260345, 47.773621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640476, 28.610909, 48.031567>,  <28.045351, 28.569986, 47.799328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640476, 28.610909, 48.031567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469479, 28.959784, 48.126675>,  <28.366880, 29.169109, 48.183739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469479, 28.959784, 48.126675>,  <28.640476, 28.610909, 48.031567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469479, 28.959784, 48.126675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250403, -0.138485, 0.958186,
		0.868646, 0.469160, -0.159197,
		-0.427496, 0.872187, 0.237773,
		28.341230, 29.221439, 48.198006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077215, 28.892664, 48.570839>,  <28.640476, 28.610909, 48.031567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077215, 28.892664, 48.570839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758461, 29.126291, 48.632591>,  <28.567207, 29.266468, 48.669643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758461, 29.126291, 48.632591>,  <29.077215, 28.892664, 48.570839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758461, 29.126291, 48.632591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094950, -0.131275, 0.986788,
		0.596619, 0.801018, 0.049154,
		-0.796888, 0.584070, 0.154378,
		28.519394, 29.301512, 48.678905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181730, 29.314589, 49.182487>,  <29.077215, 28.892664, 48.570839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181730, 29.314589, 49.182487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785166, 29.311930, 49.130245>,  <28.547226, 29.310333, 49.098900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785166, 29.311930, 49.130245>,  <29.181730, 29.314589, 49.182487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785166, 29.311930, 49.130245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129563, -0.085653, 0.987865,
		-0.017755, 0.996303, 0.084056,
		-0.991412, -0.006649, -0.130605,
		28.487741, 29.309935, 49.091064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926954, 29.714123, 49.673584>,  <29.181730, 29.314589, 49.182487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926954, 29.714123, 49.673584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585821, 29.524200, 49.586651>,  <28.381142, 29.410246, 49.534492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585821, 29.524200, 49.586651>,  <28.926954, 29.714123, 49.673584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585821, 29.524200, 49.586651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247819, 0.001684, 0.968805,
		-0.459630, 0.880088, -0.119103,
		-0.852834, -0.474808, -0.217329,
		28.329971, 29.381758, 49.521454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295315, 30.044281, 50.026001>,  <28.926954, 29.714123, 49.673584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295315, 30.044281, 50.026001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176844, 29.677771, 49.918133>,  <28.105761, 29.457865, 49.853413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176844, 29.677771, 49.918133>,  <28.295315, 30.044281, 50.026001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176844, 29.677771, 49.918133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328240, -0.167497, 0.929625,
		-0.896960, 0.363850, -0.251149,
		-0.296178, -0.916274, -0.269668,
		28.087990, 29.402889, 49.837231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601643, 30.025984, 50.162380>,  <28.295315, 30.044281, 50.026001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601643, 30.025984, 50.162380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753561, 29.656210, 50.148659>,  <27.844711, 29.434345, 50.140427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753561, 29.656210, 50.148659>,  <27.601643, 30.025984, 50.162380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753561, 29.656210, 50.148659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280008, -0.150225, 0.948171,
		-0.881675, -0.350505, -0.315904,
		0.379795, -0.924434, -0.034305,
		27.867500, 29.378880, 50.138367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033115, 29.647772, 50.367725>,  <27.601643, 30.025984, 50.162380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033115, 29.647772, 50.367725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388245, 29.473040, 50.425617>,  <27.601322, 29.368200, 50.460354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388245, 29.473040, 50.425617>,  <27.033115, 29.647772, 50.367725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388245, 29.473040, 50.425617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256738, -0.209175, 0.943574,
		-0.381906, -0.874886, -0.297861,
		0.887825, -0.436829, 0.144732,
		27.654593, 29.341991, 50.469036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924681, 28.916386, 50.504272>,  <27.033115, 29.647772, 50.367725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924681, 28.916386, 50.504272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237288, 29.103729, 50.669136>,  <27.424852, 29.216135, 50.768055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237288, 29.103729, 50.669136>,  <26.924681, 28.916386, 50.504272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237288, 29.103729, 50.669136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378766, -0.168758, 0.909977,
		0.495750, -0.867272, 0.045511,
		0.781517, 0.468359, 0.412154,
		27.471743, 29.244236, 50.792782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140440, 28.518436, 51.116699>,  <26.924681, 28.916386, 50.504272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140440, 28.518436, 51.116699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273333, 28.893595, 51.156643>,  <27.353067, 29.118690, 51.180611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273333, 28.893595, 51.156643>,  <27.140440, 28.518436, 51.116699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273333, 28.893595, 51.156643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181124, -0.040465, 0.982627,
		0.925644, -0.344545, 0.156432,
		0.332230, 0.937897, 0.099861,
		27.373001, 29.174963, 51.186600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758549, 28.617170, 51.623840>,  <27.140440, 28.518436, 51.116699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758549, 28.617170, 51.623840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511295, 28.930166, 51.593861>,  <27.362944, 29.117964, 51.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511295, 28.930166, 51.593861>,  <27.758549, 28.617170, 51.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511295, 28.930166, 51.593861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021276, 0.078657, 0.996675,
		0.785785, 0.617673, -0.031972,
		-0.618134, 0.782491, -0.074949,
		27.325855, 29.164913, 51.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070322, 29.181053, 51.829849>,  <27.758549, 28.617170, 51.623840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070322, 29.181053, 51.829849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677574, 29.220785, 51.894424>,  <27.441925, 29.244625, 51.933170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677574, 29.220785, 51.894424>,  <28.070322, 29.181053, 51.829849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677574, 29.220785, 51.894424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176395, 0.167149, 0.970024,
		0.069370, 0.980915, -0.181641,
		-0.981872, 0.099331, 0.161433,
		27.383013, 29.250584, 51.942856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419582, 29.722366, 52.269215>,  <28.070322, 29.181053, 51.829849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419582, 29.722366, 52.269215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480927, 29.996872, 52.553616>,  <28.517733, 30.161575, 52.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480927, 29.996872, 52.553616>,  <28.419582, 29.722366, 52.269215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480927, 29.996872, 52.553616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854419, -0.269381, 0.444300,
		0.496437, -0.675632, 0.545043,
		0.153359, 0.686262, 0.711003,
		28.526934, 30.202751, 52.766918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813726, 29.272091, 51.927029>,  <28.419582, 29.722366, 52.269215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813726, 29.272091, 51.927029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075544, 28.974480, 51.873371>,  <29.232635, 28.795914, 51.841179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075544, 28.974480, 51.873371>,  <28.813726, 29.272091, 51.927029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075544, 28.974480, 51.873371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747058, 0.663764, -0.036353,
		0.116085, -0.076416, 0.990295,
		0.654545, -0.744028, -0.134140,
		29.271908, 28.751272, 51.833130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424383, 29.423655, 52.294338>,  <28.813726, 29.272091, 51.927029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424383, 29.423655, 52.294338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543667, 29.147490, 52.030701>,  <29.615236, 28.981791, 51.872520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543667, 29.147490, 52.030701>,  <29.424383, 29.423655, 52.294338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543667, 29.147490, 52.030701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745292, 0.599823, -0.291121,
		0.596332, -0.404400, 0.693433,
		0.298208, -0.690415, -0.659090,
		29.633129, 28.940365, 51.832973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084700, 29.306356, 52.326000>,  <29.424383, 29.423655, 52.294338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084700, 29.306356, 52.326000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991844, 29.224058, 51.945732>,  <29.936131, 29.174679, 51.717571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991844, 29.224058, 51.945732>,  <30.084700, 29.306356, 52.326000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991844, 29.224058, 51.945732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638499, 0.705083, -0.308506,
		0.733778, -0.678621, -0.032309,
		-0.232140, -0.205746, -0.950674,
		29.922203, 29.162334, 51.660530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775389, 29.243181, 51.879684>,  <30.084700, 29.306356, 52.326000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775389, 29.243181, 51.879684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465378, 29.361942, 51.656548>,  <30.279371, 29.433199, 51.522667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465378, 29.361942, 51.656548>,  <30.775389, 29.243181, 51.879684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465378, 29.361942, 51.656548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590352, 0.655084, -0.471538,
		0.225429, -0.694775, -0.682986,
		-0.775026, 0.296904, -0.557837,
		30.232870, 29.451014, 51.489197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066790, 28.715912, 51.542381>,  <30.775389, 29.243181, 51.879684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066790, 28.715912, 51.542381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914858, 28.745932, 51.911182>,  <30.823698, 28.763943, 52.132465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914858, 28.745932, 51.911182>,  <31.066790, 28.715912, 51.542381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914858, 28.745932, 51.911182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886494, 0.255243, -0.385978,
		-0.264303, -0.963960, -0.030418,
		-0.379831, 0.075050, 0.922007,
		30.800909, 28.768446, 52.187786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684446, 28.276878, 51.174274>,  <31.066790, 28.715912, 51.542381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684446, 28.276878, 51.174274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391348, 28.502384, 51.021828>,  <30.215488, 28.637688, 50.930359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391348, 28.502384, 51.021828>,  <30.684446, 28.276878, 51.174274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391348, 28.502384, 51.021828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386688, -0.115896, -0.914899,
		-0.559958, -0.817763, -0.133078,
		-0.732748, 0.563765, -0.381116,
		30.171524, 28.671515, 50.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325750, 27.908909, 50.647255>,  <30.684446, 28.276878, 51.174274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325750, 27.908909, 50.647255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250271, 28.294363, 50.571575>,  <30.204983, 28.525637, 50.526165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250271, 28.294363, 50.571575>,  <30.325750, 27.908909, 50.647255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250271, 28.294363, 50.571575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192212, -0.152696, -0.969401,
		-0.963041, -0.219290, -0.156409,
		-0.188697, 0.963637, -0.189203,
		30.193663, 28.583454, 50.514812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091093, 27.862186, 49.960293>,  <30.325750, 27.908909, 50.647255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091093, 27.862186, 49.960293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180759, 28.239677, 50.057560>,  <30.234560, 28.466171, 50.115921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180759, 28.239677, 50.057560>,  <30.091093, 27.862186, 49.960293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180759, 28.239677, 50.057560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297322, 0.171393, -0.939268,
		-0.928089, 0.282851, -0.242170,
		0.224167, 0.943727, 0.243165,
		30.248009, 28.522795, 50.130508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757269, 28.336103, 49.449520>,  <30.091093, 27.862186, 49.960293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757269, 28.336103, 49.449520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057962, 28.537066, 49.620392>,  <30.238379, 28.657642, 49.722916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057962, 28.537066, 49.620392>,  <29.757269, 28.336103, 49.449520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057962, 28.537066, 49.620392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360300, 0.229652, -0.904126,
		-0.552341, 0.833576, -0.008380,
		0.751734, 0.502405, 0.427184,
		30.283482, 28.687786, 49.748547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863190, 28.995895, 48.996361>,  <29.757269, 28.336103, 49.449520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863190, 28.995895, 48.996361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208736, 28.946438, 49.191685>,  <30.416063, 28.916763, 49.308880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208736, 28.946438, 49.191685>,  <29.863190, 28.995895, 48.996361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208736, 28.946438, 49.191685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496923, 0.367914, -0.785943,
		-0.082481, 0.921603, 0.379269,
		0.863866, -0.123642, 0.488312,
		30.467896, 28.909346, 49.338177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206244, 29.605717, 48.822163>,  <29.863190, 28.995895, 48.996361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206244, 29.605717, 48.822163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497545, 29.359518, 48.942703>,  <30.672327, 29.211800, 49.015026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497545, 29.359518, 48.942703>,  <30.206244, 29.605717, 48.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497545, 29.359518, 48.942703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481802, 0.147125, -0.863841,
		0.487353, 0.774287, 0.403691,
		0.728254, -0.615494, 0.301352,
		30.716021, 29.174870, 49.033108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764992, 29.906784, 48.690319>,  <30.206244, 29.605717, 48.822163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764992, 29.906784, 48.690319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911722, 29.534758, 48.698490>,  <30.999760, 29.311543, 48.703392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911722, 29.534758, 48.698490>,  <30.764992, 29.906784, 48.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911722, 29.534758, 48.698490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608143, 0.223125, -0.761825,
		0.703989, 0.291879, 0.647461,
		0.366825, -0.930066, 0.020426,
		31.021770, 29.255737, 48.704617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444227, 30.010120, 48.494858>,  <30.764992, 29.906784, 48.690319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444227, 30.010120, 48.494858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367720, 29.622082, 48.435085>,  <31.321815, 29.389259, 48.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367720, 29.622082, 48.435085>,  <31.444227, 30.010120, 48.494858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367720, 29.622082, 48.435085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578006, 0.011725, -0.815948,
		0.793300, -0.242438, 0.558479,
		-0.191268, -0.970096, -0.149432,
		31.310339, 29.331053, 48.390255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028683, 29.672823, 48.147060>,  <31.444227, 30.010120, 48.494858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028683, 29.672823, 48.147060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749683, 29.389988, 48.100552>,  <31.582283, 29.220287, 48.072647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749683, 29.389988, 48.100552>,  <32.028683, 29.672823, 48.147060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749683, 29.389988, 48.100552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460585, -0.318083, -0.828665,
		0.548956, -0.631546, 0.547537,
		-0.697502, -0.707088, -0.116267,
		31.540432, 29.177862, 48.065670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377319, 28.996714, 48.033356>,  <32.028683, 29.672823, 48.147060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377319, 28.996714, 48.033356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005989, 28.982342, 47.885342>,  <31.783192, 28.973719, 47.796535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005989, 28.982342, 47.885342>,  <32.377319, 28.996714, 48.033356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005989, 28.982342, 47.885342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330049, -0.537774, -0.775801,
		-0.171121, -0.842323, 0.511087,
		-0.928324, -0.035928, -0.370032,
		31.727491, 28.971563, 47.774330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325932, 28.422190, 47.690144>,  <32.377319, 28.996714, 48.033356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325932, 28.422190, 47.690144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013618, 28.618940, 47.536034>,  <31.826231, 28.736990, 47.443569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013618, 28.618940, 47.536034>,  <32.325932, 28.422190, 47.690144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013618, 28.618940, 47.536034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185321, -0.406571, -0.894626,
		-0.596686, -0.769908, 0.226289,
		-0.780783, 0.491875, -0.385275,
		31.779383, 28.766502, 47.420452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907608, 27.885309, 47.273849>,  <32.325932, 28.422190, 47.690144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907608, 27.885309, 47.273849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813953, 28.243671, 47.122837>,  <31.757761, 28.458689, 47.032230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813953, 28.243671, 47.122837>,  <31.907608, 27.885309, 47.273849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813953, 28.243671, 47.122837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066307, -0.372708, -0.925577,
		-0.969940, -0.241743, 0.027859,
		-0.234135, 0.895907, -0.377534,
		31.743713, 28.512444, 47.009579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508627, 27.779648, 46.648865>,  <31.907608, 27.885309, 47.273849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508627, 27.779648, 46.648865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635254, 28.156191, 46.602165>,  <31.711231, 28.382116, 46.574146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635254, 28.156191, 46.602165>,  <31.508627, 27.779648, 46.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635254, 28.156191, 46.602165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196794, -0.185577, -0.962722,
		-0.927931, 0.281793, -0.244002,
		0.316569, 0.941357, -0.116747,
		31.730225, 28.438599, 46.567142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176292, 27.998480, 46.053413>,  <31.508627, 27.779648, 46.648865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176292, 27.998480, 46.053413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477131, 28.261024, 46.077202>,  <31.657635, 28.418552, 46.091473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477131, 28.261024, 46.077202>,  <31.176292, 27.998480, 46.053413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477131, 28.261024, 46.077202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070935, 0.009089, -0.997439,
		-0.655223, 0.754390, -0.039724,
		0.752098, 0.656363, 0.059468,
		31.702761, 28.457933, 46.095043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045258, 28.462023, 45.601662>,  <31.176292, 27.998480, 46.053413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045258, 28.462023, 45.601662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435259, 28.519979, 45.669037>,  <31.669260, 28.554752, 45.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435259, 28.519979, 45.669037>,  <31.045258, 28.462023, 45.601662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435259, 28.519979, 45.669037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147113, 0.147115, -0.978118,
		-0.166500, 0.978450, 0.122123,
		0.975006, 0.144890, 0.168438,
		31.727760, 28.563446, 45.719566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186207, 29.112495, 45.222641>,  <31.045258, 28.462023, 45.601662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186207, 29.112495, 45.222641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520950, 28.897253, 45.262867>,  <31.721796, 28.768108, 45.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520950, 28.897253, 45.262867>,  <31.186207, 29.112495, 45.222641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520950, 28.897253, 45.262867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245753, 0.205141, -0.947377,
		0.489158, 0.817533, 0.303915,
		0.836857, -0.538105, 0.100565,
		31.772007, 28.735821, 45.293037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576941, 29.372110, 44.715618>,  <31.186207, 29.112495, 45.222641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576941, 29.372110, 44.715618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783997, 29.042259, 44.806862>,  <31.908230, 28.844349, 44.861610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783997, 29.042259, 44.806862>,  <31.576941, 29.372110, 44.715618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783997, 29.042259, 44.806862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300763, -0.074222, -0.950806,
		0.800994, 0.560783, 0.209598,
		0.517639, -0.824629, 0.228114,
		31.939289, 28.794870, 44.875298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256931, 29.487204, 44.523987>,  <31.576941, 29.372110, 44.715618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256931, 29.487204, 44.523987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175541, 29.095598, 44.528584>,  <32.126705, 28.860636, 44.531342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175541, 29.095598, 44.528584>,  <32.256931, 29.487204, 44.523987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175541, 29.095598, 44.528584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218680, -0.056884, -0.974137,
		0.954346, -0.195700, 0.225665,
		-0.203475, -0.979013, 0.011491,
		32.114498, 28.801895, 44.532032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790077, 29.146971, 44.070213>,  <32.256931, 29.487204, 44.523987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790077, 29.146971, 44.070213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469757, 28.907982, 44.086945>,  <32.277565, 28.764589, 44.096985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469757, 28.907982, 44.086945>,  <32.790077, 29.146971, 44.070213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469757, 28.907982, 44.086945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020482, -0.097114, -0.995063,
		0.598585, -0.795987, 0.090006,
		-0.800798, -0.597473, 0.041828,
		32.229519, 28.728741, 44.099491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950932, 28.569172, 43.661640>,  <32.790077, 29.146971, 44.070213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950932, 28.569172, 43.661640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555077, 28.539297, 43.710705>,  <32.317566, 28.521372, 43.740143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555077, 28.539297, 43.710705>,  <32.950932, 28.569172, 43.661640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555077, 28.539297, 43.710705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098169, -0.271612, -0.957387,
		0.104822, -0.959505, 0.261464,
		-0.989634, -0.074687, 0.122664,
		32.258186, 28.516891, 43.747505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875816, 27.884501, 43.418484>,  <32.950932, 28.569172, 43.661640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875816, 27.884501, 43.418484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537010, 28.096312, 43.399887>,  <32.333725, 28.223398, 43.388729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537010, 28.096312, 43.399887>,  <32.875816, 27.884501, 43.418484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537010, 28.096312, 43.399887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124414, -0.282510, -0.951162,
		-0.516803, -0.799866, 0.305172,
		-0.847016, 0.529531, -0.046488,
		32.282906, 28.255171, 43.385941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517078, 27.601862, 42.826809>,  <32.875816, 27.884501, 43.418484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517078, 27.601862, 42.826809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319939, 27.941191, 42.904213>,  <32.201653, 28.144789, 42.950657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319939, 27.941191, 42.904213>,  <32.517078, 27.601862, 42.826809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319939, 27.941191, 42.904213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288611, 0.050423, -0.956118,
		-0.820853, -0.527074, 0.219984,
		-0.492853, 0.848322, 0.193509,
		32.172081, 28.195688, 42.962265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798685, 27.546440, 42.478752>,  <32.517078, 27.601862, 42.826809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798685, 27.546440, 42.478752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889559, 27.933723, 42.520634>,  <31.944082, 28.166094, 42.545761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889559, 27.933723, 42.520634>,  <31.798685, 27.546440, 42.478752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889559, 27.933723, 42.520634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142333, 0.139373, -0.979957,
		-0.963395, 0.207726, 0.169471,
		0.227182, 0.968207, 0.104705,
		31.957714, 28.224186, 42.552044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345467, 27.918550, 42.094311>,  <31.798685, 27.546440, 42.478752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345467, 27.918550, 42.094311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616756, 28.210129, 42.131504>,  <31.779530, 28.385077, 42.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616756, 28.210129, 42.131504>,  <31.345467, 27.918550, 42.094311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616756, 28.210129, 42.131504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213954, 0.316933, -0.924001,
		-0.703018, 0.606785, 0.370913,
		0.678225, 0.728948, 0.092986,
		31.820223, 28.428814, 42.159401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064650, 28.547327, 41.920380>,  <31.345467, 27.918550, 42.094311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064650, 28.547327, 41.920380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452929, 28.639553, 41.893280>,  <31.685896, 28.694889, 41.877022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452929, 28.639553, 41.893280>,  <31.064650, 28.547327, 41.920380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452929, 28.639553, 41.893280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153044, 0.375767, -0.913989,
		-0.185278, 0.897574, 0.400042,
		0.970695, 0.230566, -0.067747,
		31.744137, 28.708723, 41.872955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197884, 29.249851, 41.642895>,  <31.064650, 28.547327, 41.920380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197884, 29.249851, 41.642895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543238, 29.060802, 41.572247>,  <31.750450, 28.947372, 41.529858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543238, 29.060802, 41.572247>,  <31.197884, 29.249851, 41.642895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543238, 29.060802, 41.572247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055306, 0.259300, -0.964212,
		0.501508, 0.842253, 0.197737,
		0.863384, -0.472624, -0.176623,
		31.802254, 28.919016, 41.519260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479340, 29.719746, 41.259281>,  <31.197884, 29.249851, 41.642895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479340, 29.719746, 41.259281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685358, 29.380569, 41.209126>,  <31.808969, 29.177063, 41.179031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685358, 29.380569, 41.209126>,  <31.479340, 29.719746, 41.259281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685358, 29.380569, 41.209126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030272, 0.164188, -0.985965,
		0.856628, 0.504022, 0.110233,
		0.515046, -0.847942, -0.125390,
		31.839872, 29.126186, 41.171509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199364, 29.901775, 41.018272>,  <31.479340, 29.719746, 41.259281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199364, 29.901775, 41.018272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106194, 29.535954, 40.886013>,  <32.050289, 29.316460, 40.806656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106194, 29.535954, 40.886013>,  <32.199364, 29.901775, 41.018272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106194, 29.535954, 40.886013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229193, 0.278801, -0.932599,
		0.945101, -0.293011, 0.144670,
		-0.232928, -0.914557, -0.330651,
		32.036316, 29.261587, 40.786819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468395, 29.916826, 40.379704>,  <32.199364, 29.901775, 41.018272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468395, 29.916826, 40.379704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318096, 29.548304, 40.339687>,  <32.227917, 29.327190, 40.315678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318096, 29.548304, 40.339687>,  <32.468395, 29.916826, 40.379704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318096, 29.548304, 40.339687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221821, 0.015401, -0.974966,
		0.899783, -0.388532, 0.198578,
		-0.375747, -0.921306, -0.100042,
		32.205372, 29.271912, 40.309673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964317, 29.473701, 40.092903>,  <32.468395, 29.916826, 40.379704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964317, 29.473701, 40.092903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596611, 29.345156, 40.001972>,  <32.375988, 29.268028, 39.947414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596611, 29.345156, 40.001972>,  <32.964317, 29.473701, 40.092903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596611, 29.345156, 40.001972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218427, 0.064009, -0.973752,
		0.327483, -0.944789, 0.011354,
		-0.919263, -0.321367, -0.227330,
		32.320831, 29.248745, 39.933773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030701, 29.070265, 39.465416>,  <32.964317, 29.473701, 40.092903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030701, 29.070265, 39.465416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640018, 29.153955, 39.484512>,  <32.405609, 29.204170, 39.495968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640018, 29.153955, 39.484512>,  <33.030701, 29.070265, 39.465416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640018, 29.153955, 39.484512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032702, 0.074744, -0.996666,
		-0.212096, -0.975007, -0.066161,
		-0.976702, 0.209225, 0.047737,
		32.347008, 29.216722, 39.498833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750698, 28.810677, 38.922260>,  <33.030701, 29.070265, 39.465416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750698, 28.810677, 38.922260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444736, 29.049265, 39.019547>,  <32.261162, 29.192417, 39.077919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444736, 29.049265, 39.019547>,  <32.750698, 28.810677, 38.922260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444736, 29.049265, 39.019547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014697, 0.361318, -0.932327,
		-0.643982, -0.716711, -0.267606,
		-0.764899, 0.596469, 0.243216,
		32.215267, 29.228205, 39.092510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234219, 28.645973, 38.410892>,  <32.750698, 28.810677, 38.922260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234219, 28.645973, 38.410892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142921, 29.010538, 38.547852>,  <32.088142, 29.229277, 38.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142921, 29.010538, 38.547852>,  <32.234219, 28.645973, 38.410892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142921, 29.010538, 38.547852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173166, 0.308071, -0.935471,
		-0.958082, -0.272803, 0.087512,
		-0.228239, 0.911412, 0.342397,
		32.074451, 29.283962, 38.650570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595514, 28.791229, 38.087597>,  <32.234219, 28.645973, 38.410892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595514, 28.791229, 38.087597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750942, 29.141233, 38.203091>,  <31.844198, 29.351236, 38.272388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750942, 29.141233, 38.203091>,  <31.595514, 28.791229, 38.087597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750942, 29.141233, 38.203091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194914, 0.384326, -0.902387,
		-0.900568, 0.294362, 0.319889,
		0.388570, 0.875011, 0.288737,
		31.867514, 29.403736, 38.289711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283724, 29.227961, 37.679729>,  <31.595514, 28.791229, 38.087597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283724, 29.227961, 37.679729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599102, 29.439251, 37.805798>,  <31.788328, 29.566025, 37.881439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599102, 29.439251, 37.805798>,  <31.283724, 29.227961, 37.679729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599102, 29.439251, 37.805798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003562, 0.508455, -0.861081,
		-0.615094, 0.680039, 0.399008,
		0.788446, 0.528224, 0.315170,
		31.835636, 29.597719, 37.900349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115095, 29.870977, 37.499847>,  <31.283724, 29.227961, 37.679729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115095, 29.870977, 37.499847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513021, 29.831272, 37.508701>,  <31.751778, 29.807449, 37.514015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513021, 29.831272, 37.508701>,  <31.115095, 29.870977, 37.499847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513021, 29.831272, 37.508701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066771, 0.473270, -0.878383,
		0.076713, 0.875307, 0.477444,
		0.994815, -0.099262, 0.022139,
		31.811466, 29.801493, 37.515343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297514, 30.541859, 37.244766>,  <31.115095, 29.870977, 37.499847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297514, 30.541859, 37.244766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622066, 30.311087, 37.207226>,  <31.816799, 30.172623, 37.184704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622066, 30.311087, 37.207226>,  <31.297514, 30.541859, 37.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622066, 30.311087, 37.207226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183637, 0.404031, -0.896123,
		0.554919, 0.709866, 0.433770,
		0.811383, -0.576931, -0.093847,
		31.865482, 30.138008, 37.179073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824663, 31.004368, 37.089828>,  <31.297514, 30.541859, 37.244766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824663, 31.004368, 37.089828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981714, 30.659517, 36.961712>,  <32.075943, 30.452608, 36.884842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981714, 30.659517, 36.961712>,  <31.824663, 31.004368, 37.089828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981714, 30.659517, 36.961712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264444, 0.439373, -0.858499,
		0.880860, 0.252372, 0.400493,
		0.392627, -0.862125, -0.320288,
		32.099503, 30.400879, 36.865627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607414, 31.094103, 36.831593>,  <31.824663, 31.004368, 37.089828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607414, 31.094103, 36.831593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407703, 30.811270, 36.631290>,  <32.287876, 30.641569, 36.511108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407703, 30.811270, 36.631290>,  <32.607414, 31.094103, 36.831593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407703, 30.811270, 36.631290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390168, 0.332550, -0.858591,
		0.773621, -0.624054, 0.109845,
		-0.499279, -0.707083, -0.500754,
		32.257919, 30.599144, 36.481064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049091, 30.584972, 36.338154>,  <32.607414, 31.094103, 36.831593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049091, 30.584972, 36.338154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674767, 30.689945, 36.244019>,  <32.450172, 30.752930, 36.187538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674767, 30.689945, 36.244019>,  <33.049091, 30.584972, 36.338154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674767, 30.689945, 36.244019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329999, 0.417521, -0.846627,
		-0.123924, -0.869945, -0.477323,
		-0.935812, 0.262434, -0.235340,
		32.394024, 30.768675, 36.173416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747902, 30.388264, 36.269180>,  <33.049091, 30.584972, 36.338154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747902, 30.388264, 36.269180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147480, 30.371675, 36.276978>,  <34.387226, 30.361723, 36.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147480, 30.371675, 36.276978>,  <33.747902, 30.388264, 36.269180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147480, 30.371675, 36.276978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027126, -0.192259, 0.980969,
		-0.036932, -0.980468, -0.193182,
		0.998949, -0.041469, 0.019496,
		34.447166, 30.359234, 36.282825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961693, 29.799896, 36.714386>,  <33.747902, 30.388264, 36.269180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961693, 29.799896, 36.714386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249596, 30.077587, 36.714806>,  <34.422337, 30.244202, 36.715057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249596, 30.077587, 36.714806>,  <33.961693, 29.799896, 36.714386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249596, 30.077587, 36.714806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166332, -0.173914, 0.970612,
		0.674010, -0.698426, -0.240647,
		0.719753, 0.694230, 0.001049,
		34.465523, 30.285856, 36.715118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562977, 29.495388, 37.026276>,  <33.961693, 29.799896, 36.714386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562977, 29.495388, 37.026276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637657, 29.886213, 37.067242>,  <34.682465, 30.120708, 37.091820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637657, 29.886213, 37.067242>,  <34.562977, 29.495388, 37.026276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637657, 29.886213, 37.067242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338509, -0.161842, 0.926941,
		0.922254, -0.138397, -0.360961,
		0.186704, 0.977064, 0.102411,
		34.693668, 30.179333, 37.097965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362427, 29.608932, 37.249329>,  <34.562977, 29.495388, 37.026276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362427, 29.608932, 37.249329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113728, 29.899551, 37.366333>,  <34.964508, 30.073923, 37.436535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113728, 29.899551, 37.366333>,  <35.362427, 29.608932, 37.249329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113728, 29.899551, 37.366333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372047, -0.054670, 0.926602,
		0.689213, 0.684936, -0.236320,
		-0.621744, 0.726549, 0.292508,
		34.927204, 30.117516, 37.454086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792683, 29.919401, 37.697186>,  <35.362427, 29.608932, 37.249329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792683, 29.919401, 37.697186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429436, 30.074625, 37.760094>,  <35.211487, 30.167759, 37.797840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429436, 30.074625, 37.760094>,  <35.792683, 29.919401, 37.697186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429436, 30.074625, 37.760094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194628, 0.058640, 0.979123,
		0.370737, 0.919766, -0.128779,
		-0.908116, 0.388061, 0.157273,
		35.157001, 30.191044, 37.807274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906536, 30.366646, 38.212933>,  <35.792683, 29.919401, 37.697186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906536, 30.366646, 38.212933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514442, 30.290373, 38.234058>,  <35.279186, 30.244610, 38.246735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514442, 30.290373, 38.234058>,  <35.906536, 30.366646, 38.212933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514442, 30.290373, 38.234058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043700, 0.051711, 0.997705,
		-0.192977, 0.980289, -0.042356,
		-0.980230, -0.190683, 0.052817,
		35.220375, 30.233168, 38.249905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620159, 30.865345, 38.693394>,  <35.906536, 30.366646, 38.212933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620159, 30.865345, 38.693394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335743, 30.584087, 38.692520>,  <35.165092, 30.415333, 38.691998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335743, 30.584087, 38.692520>,  <35.620159, 30.865345, 38.693394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335743, 30.584087, 38.692520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011145, 0.008169, 0.999904,
		-0.703061, 0.710998, -0.013645,
		-0.711042, -0.703146, -0.002181,
		35.122429, 30.373144, 38.691864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165791, 31.125259, 39.150101>,  <35.620159, 30.865345, 38.693394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165791, 31.125259, 39.150101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104195, 30.731110, 39.120903>,  <35.067238, 30.494619, 39.103386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104195, 30.731110, 39.120903>,  <35.165791, 31.125259, 39.150101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104195, 30.731110, 39.120903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082521, -0.060788, 0.994734,
		-0.984620, 0.159206, -0.071953,
		-0.153994, -0.985372, -0.072991,
		35.057995, 30.435497, 39.099007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743702, 31.019835, 39.639683>,  <35.165791, 31.125259, 39.150101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743702, 31.019835, 39.639683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846825, 30.640417, 39.566139>,  <34.908699, 30.412767, 39.522011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846825, 30.640417, 39.566139>,  <34.743702, 31.019835, 39.639683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846825, 30.640417, 39.566139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225884, -0.244191, 0.943052,
		-0.939422, -0.201590, -0.277214,
		0.257804, -0.948542, -0.183863,
		34.924164, 30.355854, 39.510979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220428, 30.644308, 39.968723>,  <34.743702, 31.019835, 39.639683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220428, 30.644308, 39.968723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552635, 30.424656, 39.931427>,  <34.751961, 30.292864, 39.909050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552635, 30.424656, 39.931427>,  <34.220428, 30.644308, 39.968723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552635, 30.424656, 39.931427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003382, -0.162425, 0.986715,
		-0.556981, -0.819800, -0.133040,
		0.830518, -0.549132, -0.093240,
		34.801792, 30.259916, 39.903454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064037, 30.089651, 40.352139>,  <34.220428, 30.644308, 39.968723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064037, 30.089651, 40.352139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460850, 30.132795, 40.326065>,  <34.698936, 30.158682, 40.310421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460850, 30.132795, 40.326065>,  <34.064037, 30.089651, 40.352139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460850, 30.132795, 40.326065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097734, -0.331853, 0.938255,
		0.079570, -0.937144, -0.339749,
		0.992027, 0.107862, -0.065186,
		34.758457, 30.165154, 40.306511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286987, 29.614296, 40.723743>,  <34.064037, 30.089651, 40.352139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286987, 29.614296, 40.723743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625511, 29.826818, 40.708401>,  <34.828625, 29.954332, 40.699196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625511, 29.826818, 40.708401>,  <34.286987, 29.614296, 40.723743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625511, 29.826818, 40.708401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237214, -0.311415, 0.920190,
		0.476958, -0.787866, -0.389587,
		0.846310, 0.531308, -0.038361,
		34.879406, 29.986210, 40.696892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764729, 29.171656, 40.825226>,  <34.286987, 29.614296, 40.723743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764729, 29.171656, 40.825226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889755, 29.533619, 40.940769>,  <34.964771, 29.750797, 41.010094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889755, 29.533619, 40.940769>,  <34.764729, 29.171656, 40.825226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889755, 29.533619, 40.940769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248164, -0.371326, 0.894724,
		0.916905, -0.207979, -0.340631,
		0.312568, 0.904910, 0.288858,
		34.983524, 29.805092, 41.027428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469055, 29.125271, 41.136517>,  <34.764729, 29.171656, 40.825226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469055, 29.125271, 41.136517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323147, 29.469215, 41.279392>,  <35.235603, 29.675583, 41.365116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323147, 29.469215, 41.279392>,  <35.469055, 29.125271, 41.136517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323147, 29.469215, 41.279392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250798, -0.278702, 0.927052,
		0.896684, 0.427743, -0.113990,
		-0.364770, 0.859861, 0.357185,
		35.213715, 29.727175, 41.386547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876472, 29.145041, 41.702862>,  <35.469055, 29.125271, 41.136517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876472, 29.145041, 41.702862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576496, 29.404037, 41.757034>,  <35.396511, 29.559435, 41.789539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576496, 29.404037, 41.757034>,  <35.876472, 29.145041, 41.702862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576496, 29.404037, 41.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018758, -0.225466, 0.974071,
		0.661238, 0.727956, 0.181232,
		-0.749942, 0.647492, 0.135431,
		35.351513, 29.598286, 41.797665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049667, 29.574743, 42.362167>,  <35.876472, 29.145041, 41.702862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049667, 29.574743, 42.362167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654587, 29.613998, 42.313477>,  <35.417538, 29.637552, 42.284264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654587, 29.613998, 42.313477>,  <36.049667, 29.574743, 42.362167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654587, 29.613998, 42.313477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122147, 0.001727, 0.992510,
		0.097615, 0.995171, 0.010281,
		-0.987700, 0.098140, -0.121726,
		35.358276, 29.643440, 42.276958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859016, 30.166149, 42.789932>,  <36.049667, 29.574743, 42.362167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859016, 30.166149, 42.789932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552719, 29.915695, 42.731152>,  <35.368942, 29.765423, 42.695885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552719, 29.915695, 42.731152>,  <35.859016, 30.166149, 42.789932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552719, 29.915695, 42.731152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141852, -0.058437, 0.988162,
		-0.627309, 0.777523, -0.044071,
		-0.765743, -0.626134, -0.146951,
		35.322998, 29.727856, 42.687065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321926, 30.415607, 43.173508>,  <35.859016, 30.166149, 42.789932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321926, 30.415607, 43.173508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193382, 30.044712, 43.096607>,  <35.116257, 29.822174, 43.050468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193382, 30.044712, 43.096607>,  <35.321926, 30.415607, 43.173508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193382, 30.044712, 43.096607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287982, -0.097707, 0.952638,
		-0.902107, 0.361500, -0.235629,
		-0.321356, -0.927239, -0.192247,
		35.096977, 29.766541, 43.038933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773323, 30.439619, 43.592369>,  <35.321926, 30.415607, 43.173508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773323, 30.439619, 43.592369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878864, 30.060755, 43.519417>,  <34.942188, 29.833435, 43.475643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878864, 30.060755, 43.519417>,  <34.773323, 30.439619, 43.592369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878864, 30.060755, 43.519417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214806, -0.242037, 0.946190,
		-0.940339, -0.210481, -0.267319,
		0.263856, -0.947162, -0.182384,
		34.958023, 29.776606, 43.464703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145721, 29.957125, 43.825089>,  <34.773323, 30.439619, 43.592369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145721, 29.957125, 43.825089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480888, 29.738998, 43.815941>,  <34.681988, 29.608122, 43.810452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480888, 29.738998, 43.815941>,  <34.145721, 29.957125, 43.825089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480888, 29.738998, 43.815941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167131, -0.296250, 0.940374,
		-0.519578, -0.784134, -0.339372,
		0.837918, -0.545317, -0.022872,
		34.732265, 29.575403, 43.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917030, 29.365374, 44.193733>,  <34.145721, 29.957125, 43.825089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917030, 29.365374, 44.193733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315174, 29.394493, 44.218899>,  <34.554062, 29.411964, 44.233997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315174, 29.394493, 44.218899>,  <33.917030, 29.365374, 44.193733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315174, 29.394493, 44.218899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048062, -0.190223, 0.980564,
		0.083352, -0.979038, -0.185841,
		0.995360, 0.072800, 0.062910,
		34.613781, 29.416332, 44.237770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904331, 28.906614, 44.781036>,  <33.917030, 29.365374, 44.193733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904331, 28.906614, 44.781036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259102, 29.089212, 44.752819>,  <34.471962, 29.198771, 44.735889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259102, 29.089212, 44.752819>,  <33.904331, 28.906614, 44.781036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259102, 29.089212, 44.752819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186382, -0.213937, 0.958902,
		0.422641, -0.863622, -0.274828,
		0.886925, 0.456495, -0.070546,
		34.525181, 29.226160, 44.731655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331825, 28.466568, 45.052326>,  <33.904331, 28.906614, 44.781036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331825, 28.466568, 45.052326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488129, 28.834673, 45.060616>,  <34.581909, 29.055536, 45.065590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488129, 28.834673, 45.060616>,  <34.331825, 28.466568, 45.052326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488129, 28.834673, 45.060616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242496, -0.124630, 0.962114,
		0.887979, -0.370926, -0.271860,
		0.390755, 0.920262, 0.020721,
		34.605354, 29.110752, 45.066833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937496, 28.392576, 45.533489>,  <34.331825, 28.466568, 45.052326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937496, 28.392576, 45.533489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832722, 28.778570, 45.527920>,  <34.769855, 29.010166, 45.524578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832722, 28.778570, 45.527920>,  <34.937496, 28.392576, 45.533489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832722, 28.778570, 45.527920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062943, -0.002688, 0.998014,
		0.963031, 0.262292, 0.061444,
		-0.261936, 0.964985, -0.013921,
		34.754143, 29.068066, 45.523743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248894, 28.672091, 46.052353>,  <34.937496, 28.392576, 45.533489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248894, 28.672091, 46.052353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956734, 28.937761, 45.988617>,  <34.781437, 29.097164, 45.950375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956734, 28.937761, 45.988617>,  <35.248894, 28.672091, 46.052353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956734, 28.937761, 45.988617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266771, -0.062653, 0.961721,
		0.628769, 0.744947, 0.222944,
		-0.730399, 0.664175, -0.159336,
		34.737614, 29.137014, 45.940815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346233, 29.244621, 46.455631>,  <35.248894, 28.672091, 46.052353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346233, 29.244621, 46.455631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955875, 29.253775, 46.368820>,  <34.721661, 29.259266, 46.316734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955875, 29.253775, 46.368820>,  <35.346233, 29.244621, 46.455631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955875, 29.253775, 46.368820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199689, 0.307485, 0.930364,
		0.088020, 0.951278, -0.295505,
		-0.975898, 0.022882, -0.217025,
		34.663105, 29.260639, 46.303711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137135, 29.919439, 46.756119>,  <35.346233, 29.244621, 46.455631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137135, 29.919439, 46.756119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799938, 29.714342, 46.691044>,  <34.597622, 29.591284, 46.652000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799938, 29.714342, 46.691044>,  <35.137135, 29.919439, 46.756119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799938, 29.714342, 46.691044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328556, 0.251302, 0.910438,
		-0.425937, 0.820940, -0.380309,
		-0.842988, -0.512742, -0.162686,
		34.547043, 29.560520, 46.642239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693481, 30.318884, 47.024700>,  <35.137135, 29.919439, 46.756119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693481, 30.318884, 47.024700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508125, 29.964600, 47.013512>,  <34.396912, 29.752029, 47.006798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508125, 29.964600, 47.013512>,  <34.693481, 30.318884, 47.024700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508125, 29.964600, 47.013512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345294, 0.151407, 0.926201,
		-0.816112, 0.438852, -0.375992,
		-0.463393, -0.885711, -0.027967,
		34.369106, 29.698887, 47.005123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952156, 30.424137, 47.276150>,  <34.693481, 30.318884, 47.024700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952156, 30.424137, 47.276150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042572, 30.039072, 47.335735>,  <34.096821, 29.808033, 47.371487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042572, 30.039072, 47.335735>,  <33.952156, 30.424137, 47.276150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042572, 30.039072, 47.335735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354226, 0.061221, 0.933154,
		-0.907430, -0.263696, -0.327162,
		0.226039, -0.962661, 0.148962,
		34.110382, 29.750273, 47.380424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377003, 30.154390, 47.708073>,  <33.952156, 30.424137, 47.276150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377003, 30.154390, 47.708073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636452, 29.853041, 47.751369>,  <33.792122, 29.672230, 47.777348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636452, 29.853041, 47.751369>,  <33.377003, 30.154390, 47.708073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636452, 29.853041, 47.751369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283167, -0.106853, 0.953099,
		-0.706475, -0.648852, -0.282638,
		0.648621, -0.753375, 0.108245,
		33.831039, 29.627028, 47.783844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970646, 29.705166, 48.139832>,  <33.377003, 30.154390, 47.708073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970646, 29.705166, 48.139832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350002, 29.613279, 48.227272>,  <33.577618, 29.558147, 48.279736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350002, 29.613279, 48.227272>,  <32.970646, 29.705166, 48.139832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350002, 29.613279, 48.227272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196326, 0.115991, 0.973654,
		-0.249021, -0.966321, 0.064905,
		0.948391, -0.229717, 0.218598,
		33.634518, 29.544365, 48.292850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017376, 29.054281, 48.465416>,  <32.970646, 29.705166, 48.139832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017376, 29.054281, 48.465416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334057, 29.269501, 48.581150>,  <33.524067, 29.398632, 48.650589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334057, 29.269501, 48.581150>,  <33.017376, 29.054281, 48.465416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334057, 29.269501, 48.581150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307664, -0.058005, 0.949725,
		0.527780, -0.840916, 0.119615,
		0.791702, 0.538047, 0.289333,
		33.571568, 29.430914, 48.667950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017879, 28.970411, 49.172943>,  <33.017376, 29.054281, 48.465416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017879, 28.970411, 49.172943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319485, 29.232859, 49.185455>,  <33.500446, 29.390327, 49.192963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319485, 29.232859, 49.185455>,  <33.017879, 28.970411, 49.172943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319485, 29.232859, 49.185455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237519, 0.227933, 0.944262,
		0.612419, -0.719412, 0.327704,
		0.754008, 0.656120, 0.031283,
		33.545689, 29.429695, 49.194839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225487, 28.878603, 49.825729>,  <33.017879, 28.970411, 49.172943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225487, 28.878603, 49.825729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346573, 29.229078, 49.675709>,  <33.419224, 29.439363, 49.585697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346573, 29.229078, 49.675709>,  <33.225487, 28.878603, 49.825729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346573, 29.229078, 49.675709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127301, 0.427157, 0.895171,
		0.944542, -0.223235, 0.240845,
		0.302712, 0.876186, -0.375050,
		33.437386, 29.491934, 49.563194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821308, 29.012318, 50.181984>,  <33.225487, 28.878603, 49.825729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821308, 29.012318, 50.181984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679413, 29.356506, 50.035694>,  <33.594276, 29.563019, 49.947922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679413, 29.356506, 50.035694>,  <33.821308, 29.012318, 50.181984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679413, 29.356506, 50.035694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199091, 0.312672, 0.928762,
		0.913524, 0.402277, 0.060396,
		-0.354735, 0.860471, -0.365723,
		33.572994, 29.614647, 49.925976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016357, 29.426489, 50.678219>,  <33.821308, 29.012318, 50.181984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016357, 29.426489, 50.678219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756771, 29.661573, 50.484955>,  <33.601021, 29.802624, 50.368996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756771, 29.661573, 50.484955>,  <34.016357, 29.426489, 50.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756771, 29.661573, 50.484955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264319, 0.421337, 0.867531,
		0.713432, 0.690703, -0.118088,
		-0.648961, 0.587712, -0.483161,
		33.562084, 29.837887, 50.340008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085503, 30.195158, 50.853260>,  <34.016357, 29.426489, 50.678219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085503, 30.195158, 50.853260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709175, 30.105116, 50.751915>,  <33.483379, 30.051090, 50.691109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709175, 30.105116, 50.751915>,  <34.085503, 30.195158, 50.853260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709175, 30.105116, 50.751915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327272, 0.409105, 0.851778,
		-0.088087, 0.884285, -0.458563,
		-0.940815, -0.225105, -0.253365,
		33.426929, 30.037584, 50.675907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658749, 30.701311, 51.120937>,  <34.085503, 30.195158, 50.853260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658749, 30.701311, 51.120937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401669, 30.398067, 51.076740>,  <33.247421, 30.216122, 51.050224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401669, 30.398067, 51.076740>,  <33.658749, 30.701311, 51.120937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401669, 30.398067, 51.076740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271840, 0.090828, 0.958047,
		-0.716268, 0.645772, -0.264460,
		-0.642700, -0.758109, -0.110489,
		33.208858, 30.170635, 51.043594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623772, 31.187389, 50.635914>,  <33.658749, 30.701311, 51.120937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623772, 31.187389, 50.635914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482582, 31.561628, 50.639248>,  <33.397869, 31.786171, 50.641247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482582, 31.561628, 50.639248>,  <33.623772, 31.187389, 50.635914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482582, 31.561628, 50.639248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509475, 0.199667, -0.836999,
		-0.784757, -0.291194, -0.547140,
		-0.352975, 0.935596, 0.008334,
		33.376690, 31.842306, 50.641747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476456, 31.372543, 50.054340>,  <33.623772, 31.187389, 50.635914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476456, 31.372543, 50.054340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482159, 31.749554, 50.187870>,  <33.485580, 31.975760, 50.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482159, 31.749554, 50.187870>,  <33.476456, 31.372543, 50.054340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482159, 31.749554, 50.187870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410499, 0.298908, -0.861478,
		-0.911749, 0.149315, -0.382646,
		0.014256, 0.942528, 0.333823,
		33.486435, 32.032310, 50.288017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405819, 31.630699, 49.384941>,  <33.476456, 31.372543, 50.054340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405819, 31.630699, 49.384941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485329, 31.941668, 49.623638>,  <33.533035, 32.128250, 49.766857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485329, 31.941668, 49.623638>,  <33.405819, 31.630699, 49.384941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485329, 31.941668, 49.623638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259887, 0.545286, -0.796945,
		-0.944959, 0.313499, -0.093653,
		0.198774, 0.777420, 0.596747,
		33.544960, 32.174892, 49.802662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997093, 32.306179, 49.295460>,  <33.405819, 31.630699, 49.384941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997093, 32.306179, 49.295460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363834, 32.398937, 49.425446>,  <33.583878, 32.454594, 49.503437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363834, 32.398937, 49.425446>,  <32.997093, 32.306179, 49.295460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363834, 32.398937, 49.425446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175481, 0.497047, -0.849794,
		-0.358590, 0.836162, 0.415026,
		0.916853, 0.231899, 0.324967,
		33.638889, 32.468506, 49.522934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225601, 32.858498, 48.906845>,  <32.997093, 32.306179, 49.295460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225601, 32.858498, 48.906845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580418, 32.767262, 49.067410>,  <33.793308, 32.712521, 49.163750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580418, 32.767262, 49.067410>,  <33.225601, 32.858498, 48.906845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580418, 32.767262, 49.067410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454818, 0.282265, -0.844670,
		0.079361, 0.931826, 0.354122,
		0.887042, -0.228095, 0.401410,
		33.846531, 32.698833, 49.187832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627060, 33.490547, 48.803654>,  <33.225601, 32.858498, 48.906845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627060, 33.490547, 48.803654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854092, 33.162884, 48.836704>,  <33.990311, 32.966286, 48.856533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854092, 33.162884, 48.836704>,  <33.627060, 33.490547, 48.803654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854092, 33.162884, 48.836704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449298, 0.224082, -0.864823,
		0.689914, 0.527981, 0.495232,
		0.567582, -0.819160, 0.082624,
		34.024368, 32.917137, 48.861492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263866, 33.729019, 48.632820>,  <33.627060, 33.490547, 48.803654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263866, 33.729019, 48.632820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281418, 33.330654, 48.601250>,  <34.291950, 33.091637, 48.582306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281418, 33.330654, 48.601250>,  <34.263866, 33.729019, 48.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281418, 33.330654, 48.601250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483702, 0.090307, -0.870561,
		0.874132, 0.000024, 0.485688,
		0.043882, -0.995914, -0.078928,
		34.294582, 33.031879, 48.577572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846867, 33.660763, 48.279003>,  <34.263866, 33.729019, 48.632820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846867, 33.660763, 48.279003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634735, 33.325096, 48.230759>,  <34.507458, 33.123695, 48.201813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634735, 33.325096, 48.230759>,  <34.846867, 33.660763, 48.279003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634735, 33.325096, 48.230759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328178, -0.072029, -0.941866,
		0.781700, -0.539076, 0.313596,
		-0.530325, -0.839172, -0.120608,
		34.475639, 33.073345, 48.194576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418610, 33.260685, 47.950497>,  <34.846867, 33.660763, 48.279003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418610, 33.260685, 47.950497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068111, 33.073784, 47.903393>,  <34.857811, 32.961643, 47.875130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068111, 33.073784, 47.903393>,  <35.418610, 33.260685, 47.950497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068111, 33.073784, 47.903393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326666, -0.396363, -0.858013,
		0.354238, -0.790296, 0.499948,
		-0.876245, -0.467256, -0.117757,
		34.805237, 32.933605, 47.868065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582031, 32.564613, 47.751194>,  <35.418610, 33.260685, 47.950497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582031, 32.564613, 47.751194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207333, 32.635727, 47.630600>,  <34.982513, 32.678394, 47.558243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207333, 32.635727, 47.630600>,  <35.582031, 32.564613, 47.751194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207333, 32.635727, 47.630600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258941, -0.227513, -0.938716,
		-0.235492, -0.957406, 0.167083,
		-0.936746, 0.177796, -0.301489,
		34.926308, 32.689060, 47.540154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341122, 31.952835, 47.393616>,  <35.582031, 32.564613, 47.751194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341122, 31.952835, 47.393616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094593, 32.237778, 47.259335>,  <34.946678, 32.408745, 47.178764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094593, 32.237778, 47.259335>,  <35.341122, 31.952835, 47.393616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094593, 32.237778, 47.259335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105317, -0.347903, -0.931596,
		-0.780422, -0.609517, 0.139396,
		-0.616319, 0.712357, -0.335704,
		34.909698, 32.451485, 47.158623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849743, 31.666920, 46.908501>,  <35.341122, 31.952835, 47.393616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849743, 31.666920, 46.908501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813629, 32.051338, 46.804012>,  <34.791962, 32.281990, 46.741322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813629, 32.051338, 46.804012>,  <34.849743, 31.666920, 46.908501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813629, 32.051338, 46.804012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100672, -0.269752, -0.957653,
		-0.990814, -0.060168, 0.121106,
		-0.090289, 0.961048, -0.261216,
		34.786541, 32.339653, 46.725647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155407, 31.768587, 46.499325>,  <34.849743, 31.666920, 46.908501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155407, 31.768587, 46.499325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445805, 32.029842, 46.413208>,  <34.620041, 32.186596, 46.361538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445805, 32.029842, 46.413208>,  <34.155407, 31.768587, 46.499325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445805, 32.029842, 46.413208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208036, -0.089819, -0.973989,
		-0.655485, 0.751895, 0.070668,
		0.725990, 0.653136, -0.215296,
		34.663601, 32.225784, 46.348618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889820, 32.237583, 45.824921>,  <34.155407, 31.768587, 46.499325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889820, 32.237583, 45.824921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283684, 32.302219, 45.851261>,  <34.520000, 32.341003, 45.867065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283684, 32.302219, 45.851261>,  <33.889820, 32.237583, 45.824921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283684, 32.302219, 45.851261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033893, 0.193087, -0.980596,
		-0.171175, 0.967783, 0.184648,
		0.984658, 0.161595, 0.065853,
		34.579082, 32.350697, 45.871017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082481, 32.779697, 45.439751>,  <33.889820, 32.237583, 45.824921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082481, 32.779697, 45.439751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430016, 32.582870, 45.461666>,  <34.638535, 32.464775, 45.474815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430016, 32.582870, 45.461666>,  <34.082481, 32.779697, 45.439751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430016, 32.582870, 45.461666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105966, 0.076712, -0.991406,
		0.483634, 0.867171, 0.118792,
		0.868832, -0.492066, 0.054790,
		34.690666, 32.435249, 45.478104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498512, 33.088829, 44.874798>,  <34.082481, 32.779697, 45.439751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498512, 33.088829, 44.874798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741421, 32.802895, 45.013496>,  <34.887165, 32.631336, 45.096714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741421, 32.802895, 45.013496>,  <34.498512, 33.088829, 44.874798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741421, 32.802895, 45.013496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511867, 0.018229, -0.858871,
		0.607629, 0.699057, 0.376970,
		0.607272, -0.714833, 0.346748,
		34.923603, 32.588444, 45.117519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232307, 33.296169, 44.764782>,  <34.498512, 33.088829, 44.874798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232307, 33.296169, 44.764782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186047, 32.899361, 44.784889>,  <35.158291, 32.661278, 44.796955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186047, 32.899361, 44.784889>,  <35.232307, 33.296169, 44.764782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186047, 32.899361, 44.784889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468996, -0.099149, -0.877617,
		0.875595, -0.077920, 0.476719,
		-0.115650, -0.992017, 0.050270,
		35.151352, 32.601757, 44.799969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849255, 33.004326, 44.385445>,  <35.232307, 33.296169, 44.764782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849255, 33.004326, 44.385445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570934, 32.717915, 44.407986>,  <35.403942, 32.546070, 44.421513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570934, 32.717915, 44.407986>,  <35.849255, 33.004326, 44.385445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570934, 32.717915, 44.407986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281359, -0.343921, -0.895855,
		0.660835, -0.607477, 0.440759,
		-0.695798, -0.716024, 0.056356,
		35.362194, 32.503109, 44.424892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245808, 32.448746, 44.116287>,  <35.849255, 33.004326, 44.385445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245808, 32.448746, 44.116287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854977, 32.371037, 44.081470>,  <35.620476, 32.324413, 44.060581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854977, 32.371037, 44.081470>,  <36.245808, 32.448746, 44.116287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854977, 32.371037, 44.081470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130834, -0.225492, -0.965420,
		0.167926, -0.954679, 0.245740,
		-0.977079, -0.194270, -0.087038,
		35.561852, 32.312756, 44.055359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182426, 31.850410, 43.621941>,  <36.245808, 32.448746, 44.116287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182426, 31.850410, 43.621941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819820, 32.016014, 43.654987>,  <35.602257, 32.115376, 43.674816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819820, 32.016014, 43.654987>,  <36.182426, 31.850410, 43.621941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819820, 32.016014, 43.654987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143450, -0.118007, -0.982597,
		-0.397054, -0.902591, 0.166364,
		-0.906516, 0.414009, 0.082621,
		35.547867, 32.140217, 43.679775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725826, 31.351086, 43.222340>,  <36.182426, 31.850410, 43.621941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725826, 31.351086, 43.222340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556538, 31.713194, 43.237144>,  <35.454964, 31.930458, 43.246025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556538, 31.713194, 43.237144>,  <35.725826, 31.351086, 43.222340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556538, 31.713194, 43.237144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263338, -0.083825, -0.961055,
		-0.866911, -0.416486, 0.273869,
		-0.423223, 0.905269, 0.037008,
		35.429569, 31.984776, 43.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046429, 31.217613, 42.958115>,  <35.725826, 31.351086, 43.222340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046429, 31.217613, 42.958115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122059, 31.606041, 42.899773>,  <35.167439, 31.839098, 42.864769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122059, 31.606041, 42.899773>,  <35.046429, 31.217613, 42.958115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122059, 31.606041, 42.899773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283657, -0.088186, -0.954863,
		-0.940100, 0.221917, 0.258776,
		0.189080, 0.971070, -0.145852,
		35.178783, 31.897362, 42.856018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646191, 31.444925, 42.347832>,  <35.046429, 31.217613, 42.958115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646191, 31.444925, 42.347832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872356, 31.771542, 42.394413>,  <35.008057, 31.967512, 42.422359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872356, 31.771542, 42.394413>,  <34.646191, 31.444925, 42.347832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872356, 31.771542, 42.394413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150264, 0.240798, -0.958873,
		-0.811001, 0.524667, 0.258849,
		0.565419, 0.816542, 0.116449,
		35.041981, 32.016502, 42.429348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369213, 32.021423, 41.899696>,  <34.646191, 31.444925, 42.347832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369213, 32.021423, 41.899696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739830, 32.141571, 41.990292>,  <34.962200, 32.213657, 42.044651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739830, 32.141571, 41.990292>,  <34.369213, 32.021423, 41.899696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739830, 32.141571, 41.990292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220921, 0.052861, -0.973858,
		-0.304486, 0.952358, -0.017379,
		0.926543, 0.300366, 0.226491,
		35.017792, 32.231682, 42.058239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462269, 32.573448, 41.541580>,  <34.369213, 32.021423, 41.899696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462269, 32.573448, 41.541580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845722, 32.499340, 41.628017>,  <35.075794, 32.454876, 41.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845722, 32.499340, 41.628017>,  <34.462269, 32.573448, 41.541580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845722, 32.499340, 41.628017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250455, 0.188256, -0.949648,
		0.135261, 0.964487, 0.226870,
		0.958633, -0.185271, 0.216097,
		35.133312, 32.443760, 41.692848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896797, 33.165962, 41.302425>,  <34.462269, 32.573448, 41.541580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896797, 33.165962, 41.302425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144577, 32.852947, 41.327477>,  <35.293243, 32.665138, 41.342506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144577, 32.852947, 41.327477>,  <34.896797, 33.165962, 41.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144577, 32.852947, 41.327477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338976, 0.194661, -0.920436,
		0.708083, 0.591391, 0.385843,
		0.619446, -0.782537, 0.062631,
		35.330410, 32.618187, 41.346268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580357, 33.424664, 41.119408>,  <34.896797, 33.165962, 41.302425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580357, 33.424664, 41.119408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591335, 33.031757, 41.045212>,  <35.597923, 32.796013, 41.000694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591335, 33.031757, 41.045212>,  <35.580357, 33.424664, 41.119408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591335, 33.031757, 41.045212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473018, 0.176232, -0.863247,
		0.880625, -0.064051, 0.469464,
		0.027443, -0.982262, -0.185492,
		35.599567, 32.737080, 40.989563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213867, 33.246349, 40.898098>,  <35.580357, 33.424664, 41.119408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213867, 33.246349, 40.898098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987568, 32.947754, 40.757996>,  <35.851788, 32.768597, 40.673935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987568, 32.947754, 40.757996>,  <36.213867, 33.246349, 40.898098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987568, 32.947754, 40.757996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362078, 0.156732, -0.918877,
		0.740827, -0.646678, 0.181615,
		-0.565753, -0.746487, -0.350258,
		35.817841, 32.723808, 40.652920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578400, 32.970627, 40.392426>,  <36.213867, 33.246349, 40.898098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578400, 32.970627, 40.392426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236488, 32.793320, 40.284451>,  <36.031342, 32.686935, 40.219666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236488, 32.793320, 40.284451>,  <36.578400, 32.970627, 40.392426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236488, 32.793320, 40.284451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235086, 0.133000, -0.962832,
		0.462696, -0.886467, -0.009479,
		-0.854779, -0.443270, -0.269935,
		35.980053, 32.660339, 40.203468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766552, 32.416061, 39.905167>,  <36.578400, 32.970627, 40.392426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766552, 32.416061, 39.905167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386879, 32.522232, 39.837521>,  <36.159077, 32.585934, 39.796932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386879, 32.522232, 39.837521>,  <36.766552, 32.416061, 39.905167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386879, 32.522232, 39.837521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228115, 0.210030, -0.950711,
		-0.216826, -0.940976, -0.259905,
		-0.949184, 0.265427, -0.169111,
		36.102123, 32.601860, 39.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596500, 32.100033, 39.293842>,  <36.766552, 32.416061, 39.905167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596500, 32.100033, 39.293842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341904, 32.405712, 39.335552>,  <36.189144, 32.589119, 39.360577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341904, 32.405712, 39.335552>,  <36.596500, 32.100033, 39.293842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341904, 32.405712, 39.335552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057087, 0.181498, -0.981733,
		-0.769166, -0.618915, -0.159148,
		-0.636494, 0.764200, 0.104270,
		36.150955, 32.634972, 39.366833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213989, 32.013802, 38.674652>,  <36.596500, 32.100033, 39.293842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213989, 32.013802, 38.674652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151314, 32.386425, 38.805897>,  <36.113708, 32.609997, 38.884644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151314, 32.386425, 38.805897>,  <36.213989, 32.013802, 38.674652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151314, 32.386425, 38.805897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143516, 0.350159, -0.925630,
		-0.977166, -0.097943, -0.188557,
		-0.156684, 0.931556, 0.328107,
		36.104309, 32.665894, 38.904327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803738, 32.237465, 38.150200>,  <36.213989, 32.013802, 38.674652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803738, 32.237465, 38.150200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943073, 32.556000, 38.347992>,  <36.026676, 32.747120, 38.466667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943073, 32.556000, 38.347992>,  <35.803738, 32.237465, 38.150200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943073, 32.556000, 38.347992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243427, 0.432570, -0.868117,
		-0.905208, 0.422771, -0.043166,
		0.348342, 0.796334, 0.494480,
		36.047577, 32.794899, 38.496334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457390, 32.809769, 37.927555>,  <35.803738, 32.237465, 38.150200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457390, 32.809769, 37.927555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806206, 32.954868, 38.058987>,  <36.015495, 33.041927, 38.137848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806206, 32.954868, 38.058987>,  <35.457390, 32.809769, 37.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806206, 32.954868, 38.058987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103918, 0.518813, -0.848548,
		-0.478282, 0.774111, 0.414728,
		0.872036, 0.362748, 0.328583,
		36.067818, 33.063694, 38.157562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466766, 33.501896, 37.723801>,  <35.457390, 32.809769, 37.927555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466766, 33.501896, 37.723801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853012, 33.444481, 37.810505>,  <36.084759, 33.410030, 37.862526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853012, 33.444481, 37.810505>,  <35.466766, 33.501896, 37.723801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853012, 33.444481, 37.810505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259977, 0.533726, -0.804704,
		-0.000180, 0.833386, 0.552691,
		0.965615, -0.143542, 0.216757,
		36.142696, 33.401417, 37.875530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802650, 34.092300, 37.524330>,  <35.466766, 33.501896, 37.723801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802650, 34.092300, 37.524330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095085, 33.819405, 37.527237>,  <36.270546, 33.655666, 37.528980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095085, 33.819405, 37.527237>,  <35.802650, 34.092300, 37.524330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095085, 33.819405, 37.527237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435366, 0.458282, -0.774877,
		0.525321, 0.569671, 0.632070,
		0.731091, -0.682241, 0.007270,
		36.314411, 33.614731, 37.529419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375984, 34.407887, 37.473736>,  <35.802650, 34.092300, 37.524330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375984, 34.407887, 37.473736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503551, 34.043941, 37.367569>,  <36.580093, 33.825577, 37.303867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503551, 34.043941, 37.367569>,  <36.375984, 34.407887, 37.473736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503551, 34.043941, 37.367569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511898, 0.401042, -0.759688,
		0.797652, 0.106415, 0.593656,
		0.318923, -0.909858, -0.265418,
		36.599228, 33.770985, 37.287945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088406, 34.424355, 37.406197>,  <36.375984, 34.407887, 37.473736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088406, 34.424355, 37.406197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007080, 34.091541, 37.199745>,  <36.958286, 33.891853, 37.075874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007080, 34.091541, 37.199745>,  <37.088406, 34.424355, 37.406197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007080, 34.091541, 37.199745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597345, 0.312260, -0.738697,
		0.775785, -0.458492, 0.433523,
		-0.203315, -0.832033, -0.516125,
		36.946087, 33.841930, 37.044907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649147, 34.178650, 37.130238>,  <37.088406, 34.424355, 37.406197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649147, 34.178650, 37.130238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378433, 34.017670, 36.883659>,  <37.216007, 33.921082, 36.735714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378433, 34.017670, 36.883659>,  <37.649147, 34.178650, 37.130238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378433, 34.017670, 36.883659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351195, 0.559429, -0.750801,
		0.647018, -0.724618, -0.237271,
		-0.676779, -0.402453, -0.616442,
		37.175400, 33.896935, 36.698727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008179, 34.108097, 36.485752>,  <37.649147, 34.178650, 37.130238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008179, 34.108097, 36.485752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614605, 34.115459, 36.414715>,  <37.378460, 34.119877, 36.372093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614605, 34.115459, 36.414715>,  <38.008179, 34.108097, 36.485752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614605, 34.115459, 36.414715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157214, 0.560768, -0.812910,
		0.084622, -0.827768, -0.554652,
		-0.983932, 0.018409, -0.177591,
		37.319424, 34.120983, 36.361439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813301, 33.788120, 35.814583>,  <38.008179, 34.108097, 36.485752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813301, 33.788120, 35.814583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600292, 34.092464, 35.962914>,  <37.472485, 34.275070, 36.051914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600292, 34.092464, 35.962914>,  <37.813301, 33.788120, 35.814583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600292, 34.092464, 35.962914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245729, 0.558223, -0.792467,
		-0.809959, -0.330885, -0.484232,
		-0.532525, 0.760856, 0.370830,
		37.440536, 34.320721, 36.074162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562374, 33.715206, 35.755432>,  <37.813301, 33.788120, 35.814583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562374, 33.715206, 35.755432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660999, 33.328671, 35.784817>,  <38.720177, 33.096748, 35.802448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660999, 33.328671, 35.784817>,  <38.562374, 33.715206, 35.755432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660999, 33.328671, 35.784817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968625, 0.248167, 0.013386,
		-0.031166, 0.067856, 0.997208,
		0.246566, -0.966338, 0.073461,
		38.734970, 33.038769, 35.806854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951153, 33.659153, 36.360729>,  <38.562374, 33.715206, 35.755432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951153, 33.659153, 36.360729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032822, 33.396996, 36.069862>,  <39.081821, 33.239700, 35.895344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032822, 33.396996, 36.069862>,  <38.951153, 33.659153, 36.360729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032822, 33.396996, 36.069862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978198, 0.165416, 0.125562,
		0.037991, -0.736947, 0.674882,
		0.204169, -0.655398, -0.727165,
		39.094074, 33.200375, 35.851711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374039, 33.094017, 36.544891>,  <38.951153, 33.659153, 36.360729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374039, 33.094017, 36.544891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456795, 33.197441, 36.167458>,  <39.506447, 33.259495, 35.940998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456795, 33.197441, 36.167458>,  <39.374039, 33.094017, 36.544891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456795, 33.197441, 36.167458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947662, 0.186755, 0.258958,
		0.243175, -0.947771, -0.206390,
		0.206888, 0.258560, -0.943580,
		39.518860, 33.275009, 35.884384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965038, 32.736107, 36.351082>,  <39.374039, 33.094017, 36.544891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965038, 32.736107, 36.351082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909763, 33.107479, 36.213146>,  <39.876598, 33.330303, 36.130383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909763, 33.107479, 36.213146>,  <39.965038, 32.736107, 36.351082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909763, 33.107479, 36.213146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914307, 0.253433, 0.315936,
		0.380720, -0.271632, -0.883894,
		-0.138189, 0.928433, -0.344842,
		39.868305, 33.386009, 36.109695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615646, 32.911457, 36.044125>,  <39.965038, 32.736107, 36.351082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615646, 32.911457, 36.044125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419582, 33.254169, 36.108212>,  <40.301945, 33.459797, 36.146664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419582, 33.254169, 36.108212>,  <40.615646, 32.911457, 36.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419582, 33.254169, 36.108212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835313, 0.409221, 0.367138,
		0.248994, 0.313786, -0.916265,
		-0.490157, 0.856783, 0.160216,
		40.272533, 33.511204, 36.156277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950031, 33.468559, 35.610012>,  <40.615646, 32.911457, 36.044125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950031, 33.468559, 35.610012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783714, 33.550041, 35.964554>,  <40.683926, 33.598930, 36.177280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783714, 33.550041, 35.964554>,  <40.950031, 33.468559, 35.610012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783714, 33.550041, 35.964554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906147, 0.175922, 0.384642,
		-0.077575, 0.963097, -0.257734,
		-0.415788, 0.203706, 0.886354,
		40.658978, 33.611153, 36.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212612, 34.228832, 35.648209>,  <40.950031, 33.468559, 35.610012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212612, 34.228832, 35.648209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585499, 34.143223, 35.531479>,  <41.809231, 34.091858, 35.461441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585499, 34.143223, 35.531479>,  <41.212612, 34.228832, 35.648209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585499, 34.143223, 35.531479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056250, 0.882276, -0.467359,
		0.357494, 0.419266, 0.834514,
		0.932220, -0.214020, -0.291825,
		41.865166, 34.079018, 35.443932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575420, 34.819481, 35.789963>,  <41.212612, 34.228832, 35.648209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575420, 34.819481, 35.789963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812252, 34.638935, 35.522919>,  <41.954353, 34.530605, 35.362694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812252, 34.638935, 35.522919>,  <41.575420, 34.819481, 35.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812252, 34.638935, 35.522919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301697, 0.892335, -0.335734,
		0.747272, -0.002634, 0.664513,
		0.592084, -0.451367, -0.667611,
		41.989876, 34.503525, 35.322636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220070, 35.115429, 35.863297>,  <41.575420, 34.819481, 35.789963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220070, 35.115429, 35.863297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223358, 34.965202, 35.492592>,  <42.225330, 34.875069, 35.270168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223358, 34.965202, 35.492592>,  <42.220070, 35.115429, 35.863297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223358, 34.965202, 35.492592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192396, 0.910069, -0.367094,
		0.981283, -0.175285, 0.079742,
		0.008224, -0.375565, -0.926760,
		42.225826, 34.852531, 35.214565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654037, 35.635742, 35.579639>,  <42.220070, 35.115429, 35.863297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654037, 35.635742, 35.579639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453476, 35.456936, 35.283321>,  <42.333138, 35.349651, 35.105530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453476, 35.456936, 35.283321>,  <42.654037, 35.635742, 35.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453476, 35.456936, 35.283321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136188, 0.804748, -0.577784,
		0.854429, -0.390589, -0.342625,
		-0.501403, -0.447013, -0.740793,
		42.303055, 35.322834, 35.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142117, 35.459824, 35.037460>,  <42.654037, 35.635742, 35.579639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142117, 35.459824, 35.037460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789680, 35.450512, 34.848507>,  <42.578220, 35.444923, 34.735134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789680, 35.450512, 34.848507>,  <43.142117, 35.459824, 35.037460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789680, 35.450512, 34.848507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305735, 0.734012, -0.606426,
		0.360852, -0.678738, -0.639610,
		-0.881086, -0.023279, -0.472383,
		42.525356, 35.443527, 34.706791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255386, 35.738445, 34.407925>,  <43.142117, 35.459824, 35.037460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255386, 35.738445, 34.407925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856792, 35.753178, 34.377827>,  <42.617638, 35.762016, 34.359768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856792, 35.753178, 34.377827>,  <43.255386, 35.738445, 34.407925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856792, 35.753178, 34.377827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081485, 0.634760, -0.768401,
		0.019465, -0.771832, -0.635529,
		-0.996484, 0.036829, -0.075248,
		42.557846, 35.764225, 34.355251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985668, 35.621559, 33.675758>,  <43.255386, 35.738445, 34.407925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985668, 35.621559, 33.675758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724792, 35.832340, 33.893738>,  <42.568268, 35.958809, 34.024525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724792, 35.832340, 33.893738>,  <42.985668, 35.621559, 33.675758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724792, 35.832340, 33.893738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090286, 0.767757, -0.634348,
		-0.752663, -0.364511, -0.548298,
		-0.652186, 0.526954, 0.544952,
		42.529137, 35.990425, 34.057224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753712, 36.085003, 33.229900>,  <42.985668, 35.621559, 33.675758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753712, 36.085003, 33.229900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613819, 36.240520, 33.570847>,  <42.529884, 36.333832, 33.775414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613819, 36.240520, 33.570847>,  <42.753712, 36.085003, 33.229900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613819, 36.240520, 33.570847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042894, 0.915513, -0.399996,
		-0.935866, -0.103332, -0.336864,
		-0.349735, 0.388792, 0.852365,
		42.508900, 36.357159, 33.826557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402744, 36.658131, 33.044960>,  <42.753712, 36.085003, 33.229900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402744, 36.658131, 33.044960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478333, 36.721485, 33.432610>,  <42.523685, 36.759499, 33.665199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478333, 36.721485, 33.432610>,  <42.402744, 36.658131, 33.044960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478333, 36.721485, 33.432610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158358, 0.969075, -0.189254,
		-0.969129, 0.189233, 0.158050,
		0.188975, 0.158383, 0.969125,
		42.535027, 36.769001, 33.723347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197529, 37.313267, 33.190399>,  <42.402744, 36.658131, 33.044960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197529, 37.313267, 33.190399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460735, 37.249428, 33.484756>,  <42.618660, 37.211124, 33.661373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460735, 37.249428, 33.484756>,  <42.197529, 37.313267, 33.190399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460735, 37.249428, 33.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368684, 0.920412, -0.130052,
		-0.656571, 0.356889, 0.664488,
		0.658017, -0.159598, 0.735895,
		42.658142, 37.201550, 33.705524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148056, 37.877502, 33.547871>,  <42.197529, 37.313267, 33.190399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148056, 37.877502, 33.547871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504372, 37.712681, 33.624504>,  <42.718163, 37.613789, 33.670486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504372, 37.712681, 33.624504>,  <42.148056, 37.877502, 33.547871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504372, 37.712681, 33.624504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439977, 0.887521, -0.136844,
		-0.113650, 0.206193, 0.971889,
		0.890788, -0.412057, 0.191587,
		42.771606, 37.589066, 33.681980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520287, 38.368458, 34.059624>,  <42.148056, 37.877502, 33.547871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520287, 38.368458, 34.059624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803276, 38.154049, 33.875381>,  <42.973072, 38.025402, 33.764835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803276, 38.154049, 33.875381>,  <42.520287, 38.368458, 34.059624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803276, 38.154049, 33.875381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553187, 0.825613, -0.111117,
		0.439843, -0.176188, 0.880622,
		0.707476, -0.536023, -0.460605,
		43.015518, 37.993240, 33.737202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070930, 38.677769, 34.307621>,  <42.520287, 38.368458, 34.059624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070930, 38.677769, 34.307621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214172, 38.482037, 33.989548>,  <43.300117, 38.364597, 33.798702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214172, 38.482037, 33.989548>,  <43.070930, 38.677769, 34.307621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214172, 38.482037, 33.989548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661249, 0.734188, -0.154006,
		0.659176, -0.470667, 0.586481,
		0.358102, -0.489327, -0.795187,
		43.321602, 38.335239, 33.750992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856804, 38.625797, 34.409962>,  <43.070930, 38.677769, 34.307621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856804, 38.625797, 34.409962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765366, 38.627510, 34.020557>,  <43.710503, 38.628536, 33.786915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765366, 38.627510, 34.020557>,  <43.856804, 38.625797, 34.409962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765366, 38.627510, 34.020557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668747, 0.727402, -0.153829,
		0.707476, -0.686198, -0.169144,
		-0.228593, 0.004284, -0.973513,
		43.696789, 38.628796, 33.728504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373611, 39.088993, 34.202232>,  <43.856804, 38.625797, 34.409962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373611, 39.088993, 34.202232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147247, 39.063015, 33.873470>,  <44.011429, 39.047428, 33.676212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147247, 39.063015, 33.873470>,  <44.373611, 39.088993, 34.202232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147247, 39.063015, 33.873470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339076, 0.890347, -0.303825,
		0.751511, -0.450626, -0.481837,
		-0.565913, -0.064948, -0.821903,
		43.977474, 39.043530, 33.626900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690208, 39.382183, 33.727634>,  <44.373611, 39.088993, 34.202232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690208, 39.382183, 33.727634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333401, 39.362602, 33.547897>,  <44.119316, 39.350853, 33.440056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333401, 39.362602, 33.547897>,  <44.690208, 39.382183, 33.727634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333401, 39.362602, 33.547897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112422, 0.938850, -0.325456,
		0.437795, -0.340829, -0.831968,
		-0.892019, -0.048951, -0.449340,
		44.065796, 39.347916, 33.413094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842903, 39.452370, 32.981525>,  <44.690208, 39.382183, 33.727634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842903, 39.452370, 32.981525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475426, 39.581047, 33.073193>,  <44.254940, 39.658253, 33.128193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475426, 39.581047, 33.073193>,  <44.842903, 39.452370, 32.981525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475426, 39.581047, 33.073193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149041, 0.819665, -0.553114,
		-0.365772, -0.473987, -0.800966,
		-0.918693, 0.321690, 0.229167,
		44.199818, 39.677555, 33.141941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706123, 39.941563, 32.552406>,  <44.842903, 39.452370, 32.981525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706123, 39.941563, 32.552406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410271, 40.047829, 32.799751>,  <44.232758, 40.111588, 32.948158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410271, 40.047829, 32.799751>,  <44.706123, 39.941563, 32.552406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410271, 40.047829, 32.799751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037176, 0.901264, -0.431672,
		-0.671985, -0.342267, -0.656726,
		-0.739631, 0.265663, 0.618360,
		44.188381, 40.127529, 32.985260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187584, 40.342434, 32.078911>,  <44.706123, 39.941563, 32.552406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187584, 40.342434, 32.078911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119431, 40.460480, 32.454971>,  <44.078537, 40.531307, 32.680607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119431, 40.460480, 32.454971>,  <44.187584, 40.342434, 32.078911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119431, 40.460480, 32.454971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036409, 0.951561, -0.305296,
		-0.984704, -0.086249, -0.151390,
		-0.170388, 0.295114, 0.940147,
		44.068314, 40.549015, 32.737015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648373, 40.679680, 31.962078>,  <44.187584, 40.342434, 32.078911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648373, 40.679680, 31.962078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805939, 40.805691, 32.307468>,  <43.900478, 40.881298, 32.514702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805939, 40.805691, 32.307468>,  <43.648373, 40.679680, 31.962078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805939, 40.805691, 32.307468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048929, 0.930913, -0.361948,
		-0.917842, 0.184826, 0.351290,
		0.393918, 0.315023, 0.863475,
		43.924114, 40.900196, 32.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340549, 41.315754, 32.144032>,  <43.648373, 40.679680, 31.962078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340549, 41.315754, 32.144032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683804, 41.312458, 32.349377>,  <43.889755, 41.310482, 32.472584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683804, 41.312458, 32.349377>,  <43.340549, 41.315754, 32.144032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683804, 41.312458, 32.349377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191905, 0.932546, -0.305828,
		-0.476213, 0.360958, 0.801830,
		0.858134, -0.008236, 0.513360,
		43.941242, 41.309986, 32.503384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389324, 41.911949, 32.574543>,  <43.340549, 41.315754, 32.144032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389324, 41.911949, 32.574543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749653, 41.779320, 32.462418>,  <43.965851, 41.699741, 32.395142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749653, 41.779320, 32.462418>,  <43.389324, 41.911949, 32.574543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749653, 41.779320, 32.462418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201851, 0.891418, -0.405746,
		0.384409, 0.308924, 0.869940,
		0.900825, -0.331571, -0.280312,
		44.019901, 41.679848, 32.378323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952114, 42.310669, 32.911388>,  <43.389324, 41.911949, 32.574543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952114, 42.310669, 32.911388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055973, 42.177181, 32.548904>,  <44.118290, 42.097088, 32.331413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055973, 42.177181, 32.548904>,  <43.952114, 42.310669, 32.911388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055973, 42.177181, 32.548904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142201, 0.941377, -0.305922,
		0.955175, -0.049431, 0.291885,
		0.259652, -0.333715, -0.906209,
		44.133869, 42.077068, 32.277042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336315, 42.897762, 32.533920>,  <43.952114, 42.310669, 32.911388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336315, 42.897762, 32.533920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285900, 42.610455, 32.260220>,  <44.255653, 42.438068, 32.096001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285900, 42.610455, 32.260220>,  <44.336315, 42.897762, 32.533920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285900, 42.610455, 32.260220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238550, 0.647570, -0.723704,
		0.962917, -0.254440, 0.089727,
		-0.126035, -0.718271, -0.684253,
		44.248089, 42.394974, 32.054943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945724, 42.778370, 32.065449>,  <44.336315, 42.897762, 32.533920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945724, 42.778370, 32.065449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630432, 42.663136, 31.847935>,  <44.441257, 42.593994, 31.717426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630432, 42.663136, 31.847935>,  <44.945724, 42.778370, 32.065449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630432, 42.663136, 31.847935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312437, 0.573948, -0.756945,
		0.530169, -0.766545, -0.362394,
		-0.788228, -0.288084, -0.543787,
		44.393963, 42.576710, 31.684799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152889, 42.473343, 31.462389>,  <44.945724, 42.778370, 32.065449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152889, 42.473343, 31.462389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797398, 42.647247, 31.404228>,  <44.584103, 42.751591, 31.369331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797398, 42.647247, 31.404228>,  <45.152889, 42.473343, 31.462389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797398, 42.647247, 31.404228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346797, 0.430169, -0.833478,
		-0.299815, -0.791163, -0.533078,
		-0.888731, 0.434760, -0.145402,
		44.530777, 42.777676, 31.360607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822289, 42.263035, 30.783522>,  <45.152889, 42.473343, 31.462389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822289, 42.263035, 30.783522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723896, 42.642010, 30.865362>,  <44.664860, 42.869392, 30.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723896, 42.642010, 30.865362>,  <44.822289, 42.263035, 30.783522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723896, 42.642010, 30.865362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467319, 0.300855, -0.831324,
		-0.849180, -0.108874, -0.516759,
		-0.245979, 0.947435, 0.204601,
		44.650101, 42.926239, 30.926743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703289, 41.562439, 30.542059>,  <44.822289, 42.263035, 30.783522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703289, 41.562439, 30.542059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584827, 41.529163, 30.161455>,  <44.513752, 41.509197, 29.933092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584827, 41.529163, 30.161455>,  <44.703289, 41.562439, 30.542059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584827, 41.529163, 30.161455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724568, -0.668650, -0.167058,
		-0.622331, -0.738909, 0.258299,
		-0.296152, -0.083190, -0.951511,
		44.495983, 41.504208, 29.876001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647087, 40.843765, 30.506096>,  <44.703289, 41.562439, 30.542059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647087, 40.843765, 30.506096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704563, 40.996567, 30.140928>,  <44.739048, 41.088249, 29.921827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704563, 40.996567, 30.140928>,  <44.647087, 40.843765, 30.506096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704563, 40.996567, 30.140928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562096, -0.790750, -0.242413,
		-0.814495, -0.478316, -0.328347,
		0.143690, 0.382006, -0.912921,
		44.747669, 41.111168, 29.867052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630718, 40.143936, 30.216885>,  <44.647087, 40.843765, 30.506096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630718, 40.143936, 30.216885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795166, 40.375053, 29.934855>,  <44.893833, 40.513725, 29.765636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795166, 40.375053, 29.934855>,  <44.630718, 40.143936, 30.216885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795166, 40.375053, 29.934855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455012, -0.800290, -0.390512,
		-0.789903, -0.160273, -0.591917,
		0.411117, 0.577797, -0.705077,
		44.918503, 40.548393, 29.723331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431820, 39.873608, 29.557690>,  <44.630718, 40.143936, 30.216885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431820, 39.873608, 29.557690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781494, 40.063278, 29.515829>,  <44.991299, 40.177082, 29.490713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781494, 40.063278, 29.515829>,  <44.431820, 39.873608, 29.557690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781494, 40.063278, 29.515829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379333, -0.801404, -0.462448,
		-0.303151, 0.364568, -0.880448,
		0.874189, 0.474175, -0.104654,
		45.043751, 40.205532, 29.484432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505932, 39.180420, 29.551815>,  <44.431820, 39.873608, 29.557690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505932, 39.180420, 29.551815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172073, 38.963802, 29.511635>,  <43.971760, 38.833832, 29.487526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172073, 38.963802, 29.511635>,  <44.505932, 39.180420, 29.551815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172073, 38.963802, 29.511635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366205, -0.681862, 0.633213,
		-0.411409, 0.491724, 0.767431,
		-0.834648, -0.541547, -0.100452,
		43.921680, 38.801338, 29.481499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301327, 38.988651, 30.165335>,  <44.505932, 39.180420, 29.551815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301327, 38.988651, 30.165335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125023, 38.710442, 29.938360>,  <44.019241, 38.543518, 29.802176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125023, 38.710442, 29.938360>,  <44.301327, 38.988651, 30.165335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125023, 38.710442, 29.938360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280334, -0.707190, 0.649072,
		-0.852728, 0.127012, 0.506677,
		-0.440757, -0.695522, -0.567435,
		43.992794, 38.501785, 29.768129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801361, 38.552856, 30.564028>,  <44.301327, 38.988651, 30.165335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801361, 38.552856, 30.564028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878353, 38.331890, 30.239611>,  <43.924549, 38.199310, 30.044960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878353, 38.331890, 30.239611>,  <43.801361, 38.552856, 30.564028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878353, 38.331890, 30.239611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138275, -0.802983, 0.579740,
		-0.971510, -0.223735, -0.078172,
		0.192479, -0.552414, -0.811043,
		43.936096, 38.166164, 29.996298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480534, 37.871326, 30.737576>,  <43.801361, 38.552856, 30.564028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480534, 37.871326, 30.737576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718018, 37.753834, 30.437914>,  <43.860508, 37.683338, 30.258118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718018, 37.753834, 30.437914>,  <43.480534, 37.871326, 30.737576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718018, 37.753834, 30.437914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185259, -0.856093, 0.482477,
		-0.783063, -0.425239, -0.453855,
		0.593710, -0.293729, -0.749154,
		43.896130, 37.665714, 30.213167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317474, 37.210548, 30.527498>,  <43.480534, 37.871326, 30.737576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317474, 37.210548, 30.527498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700455, 37.287872, 30.441792>,  <43.930244, 37.334267, 30.390368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700455, 37.287872, 30.441792>,  <43.317474, 37.210548, 30.527498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700455, 37.287872, 30.441792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284254, -0.759887, 0.584612,
		-0.049805, -0.620646, -0.782508,
		0.957455, 0.193314, -0.214267,
		43.987690, 37.345867, 30.377512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670330, 36.549408, 30.529083>,  <43.317474, 37.210548, 30.527498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670330, 36.549408, 30.529083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985394, 36.795631, 30.539526>,  <44.174431, 36.943363, 30.545792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985394, 36.795631, 30.539526>,  <43.670330, 36.549408, 30.529083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985394, 36.795631, 30.539526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492532, -0.654564, 0.573549,
		0.370140, -0.438903, -0.818755,
		0.787660, 0.615557, 0.026107,
		44.221691, 36.980297, 30.547358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289036, 36.076027, 30.513304>,  <43.670330, 36.549408, 30.529083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289036, 36.076027, 30.513304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415848, 36.432781, 30.642323>,  <44.491936, 36.646832, 30.719734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415848, 36.432781, 30.642323>,  <44.289036, 36.076027, 30.513304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415848, 36.432781, 30.642323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517547, -0.447681, 0.729196,
		0.794755, -0.064246, -0.603521,
		0.317033, 0.891882, 0.322546,
		44.510956, 36.700344, 30.739086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038948, 35.947166, 30.495081>,  <44.289036, 36.076027, 30.513304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038948, 35.947166, 30.495081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942425, 36.235737, 30.754717>,  <44.884510, 36.408878, 30.910498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942425, 36.235737, 30.754717>,  <45.038948, 35.947166, 30.495081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942425, 36.235737, 30.754717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426265, -0.522082, 0.738735,
		0.871818, 0.454948, -0.181534,
		-0.241311, 0.721424, 0.649089,
		44.870033, 36.452164, 30.949444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734989, 36.100048, 30.881311>,  <45.038948, 35.947166, 30.495081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734989, 36.100048, 30.881311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399860, 36.187557, 31.081387>,  <45.198784, 36.240063, 31.201431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399860, 36.187557, 31.081387>,  <45.734989, 36.100048, 30.881311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399860, 36.187557, 31.081387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326675, -0.533179, 0.780387,
		0.437415, 0.817227, 0.375244,
		-0.837826, 0.218770, 0.500188,
		45.148514, 36.253189, 31.231443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903996, 35.945274, 31.481030>,  <45.734989, 36.100048, 30.881311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903996, 35.945274, 31.481030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521614, 36.006073, 31.581469>,  <45.292187, 36.042553, 31.641731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521614, 36.006073, 31.581469>,  <45.903996, 35.945274, 31.481030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521614, 36.006073, 31.581469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171350, -0.405571, 0.897859,
		0.238312, 0.901337, 0.361662,
		-0.955953, 0.152000, 0.251097,
		45.234829, 36.051674, 31.656797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007404, 36.135147, 32.125851>,  <45.903996, 35.945274, 31.481030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007404, 36.135147, 32.125851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630714, 36.003700, 32.097122>,  <45.404701, 35.924831, 32.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630714, 36.003700, 32.097122>,  <46.007404, 36.135147, 32.125851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630714, 36.003700, 32.097122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040979, -0.323996, 0.945171,
		-0.333868, 0.887151, 0.318583,
		-0.941729, -0.328617, -0.071817,
		45.348194, 35.905113, 32.075577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734024, 36.369160, 32.746719>,  <46.007404, 36.135147, 32.125851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734024, 36.369160, 32.746719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496704, 36.074142, 32.617706>,  <45.354313, 35.897133, 32.540298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496704, 36.074142, 32.617706>,  <45.734024, 36.369160, 32.746719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496704, 36.074142, 32.617706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004173, -0.403485, 0.914976,
		-0.804969, 0.541511, 0.242466,
		-0.593302, -0.737540, -0.322533,
		45.318714, 35.852882, 32.520947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278275, 36.207966, 33.285919>,  <45.734024, 36.369160, 32.746719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278275, 36.207966, 33.285919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275097, 35.879452, 33.057735>,  <45.273190, 35.682343, 32.920826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275097, 35.879452, 33.057735>,  <45.278275, 36.207966, 33.285919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275097, 35.879452, 33.057735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304385, -0.541418, 0.783719,
		-0.952516, 0.179869, -0.245684,
		-0.007948, -0.821288, -0.570459,
		45.272713, 35.633064, 32.886597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670547, 35.757889, 33.539391>,  <45.278275, 36.207966, 33.285919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670547, 35.757889, 33.539391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.910805, 35.497509, 33.353703>,  <45.054958, 35.341282, 33.242290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.910805, 35.497509, 33.353703>,  <44.670547, 35.757889, 33.539391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910805, 35.497509, 33.353703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326644, -0.729747, 0.600644,
		-0.729747, -0.209140, -0.650945,
		-0.600644, 0.650945, 0.464216,
		45.091000, 35.302227, 33.214439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195919, 35.231949, 33.369354>,  <44.670547, 35.757889, 33.539391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195919, 35.231949, 33.369354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566528, 35.081524, 33.364750>,  <44.788895, 34.991268, 33.361988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566528, 35.081524, 33.364750>,  <44.195919, 35.231949, 33.369354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566528, 35.081524, 33.364750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307382, -0.774236, 0.553240,
		-0.216965, -0.509051, -0.832942,
		0.926522, -0.376065, -0.011510,
		44.844486, 34.968704, 33.361298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130852, 34.515377, 33.193390>,  <44.195919, 35.231949, 33.369354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130852, 34.515377, 33.193390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496239, 34.543396, 33.353725>,  <44.715469, 34.560207, 33.449928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496239, 34.543396, 33.353725>,  <44.130852, 34.515377, 33.193390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496239, 34.543396, 33.353725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172451, -0.825594, 0.537267,
		0.368567, -0.559900, -0.742072,
		0.913466, 0.070048, 0.400842,
		44.770279, 34.564411, 33.473976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449028, 33.829510, 33.199089>,  <44.130852, 34.515377, 33.193390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449028, 33.829510, 33.199089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633808, 34.029388, 33.492184>,  <44.744678, 34.149315, 33.668041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633808, 34.029388, 33.492184>,  <44.449028, 33.829510, 33.199089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633808, 34.029388, 33.492184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076536, -0.800633, 0.594247,
		0.883596, -0.330595, -0.331610,
		0.461953, 0.499694, 0.732739,
		44.772392, 34.179298, 33.712006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489704, 33.378510, 33.698956>,  <44.449028, 33.829510, 33.199089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489704, 33.378510, 33.698956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635773, 33.682640, 33.913826>,  <44.723415, 33.865116, 34.042747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635773, 33.682640, 33.913826>,  <44.489704, 33.378510, 33.698956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635773, 33.682640, 33.913826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049686, -0.560281, 0.826811,
		0.929612, -0.328620, -0.166823,
		0.365174, 0.760325, 0.537172,
		44.745323, 33.910736, 34.074978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061172, 33.095482, 34.110630>,  <44.489704, 33.378510, 33.698956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061172, 33.095482, 34.110630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932812, 33.430019, 34.288414>,  <44.855793, 33.630741, 34.395084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932812, 33.430019, 34.288414>,  <45.061172, 33.095482, 34.110630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932812, 33.430019, 34.288414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064592, -0.487509, 0.870725,
		0.944906, 0.250712, 0.210466,
		-0.320906, 0.836348, 0.444456,
		44.836540, 33.680923, 34.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468559, 33.133221, 34.767639>,  <45.061172, 33.095482, 34.110630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468559, 33.133221, 34.767639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141270, 33.359486, 34.808704>,  <44.944897, 33.495247, 34.833344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141270, 33.359486, 34.808704>,  <45.468559, 33.133221, 34.767639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141270, 33.359486, 34.808704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158580, -0.393715, 0.905451,
		0.552602, 0.724577, 0.411848,
		-0.818220, 0.565665, 0.102664,
		44.895805, 33.529186, 34.839504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501598, 33.653374, 35.357944>,  <45.468559, 33.133221, 34.767639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501598, 33.653374, 35.357944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118366, 33.563194, 35.287228>,  <44.888428, 33.509087, 35.244797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118366, 33.563194, 35.287228>,  <45.501598, 33.653374, 35.357944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118366, 33.563194, 35.287228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120938, -0.241153, 0.962922,
		-0.259724, 0.943937, 0.203778,
		-0.958080, -0.225450, -0.176792,
		44.830944, 33.495560, 35.234192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061508, 34.264935, 35.220222>,  <45.501598, 33.653374, 35.357944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061508, 34.264935, 35.220222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427212, 34.103561, 35.205372>,  <46.646633, 34.006737, 35.196461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427212, 34.103561, 35.205372>,  <46.061508, 34.264935, 35.220222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427212, 34.103561, 35.205372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388279, 0.898681, -0.203989,
		0.115660, 0.172084, 0.978269,
		0.914255, -0.403435, -0.037125,
		46.701488, 33.982533, 35.194233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514881, 34.822174, 35.190025>,  <46.061508, 34.264935, 35.220222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514881, 34.822174, 35.190025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788189, 34.537666, 35.124020>,  <46.952175, 34.366962, 35.084415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788189, 34.537666, 35.124020>,  <46.514881, 34.822174, 35.190025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788189, 34.537666, 35.124020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563575, 0.657427, -0.500172,
		0.464244, 0.248755, 0.850058,
		0.683272, -0.711273, -0.165014,
		46.993172, 34.324284, 35.074516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339603, 35.002312, 35.366417>,  <46.514881, 34.822174, 35.190025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339603, 35.002312, 35.366417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311035, 34.763054, 35.047138>,  <47.293892, 34.619499, 34.855572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311035, 34.763054, 35.047138>,  <47.339603, 35.002312, 35.366417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.311035, 34.763054, 35.047138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499854, 0.671044, -0.547582,
		0.863160, -0.438093, 0.251056,
		-0.071423, -0.598142, -0.798201,
		47.289608, 34.583611, 34.807678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.994896, 34.868622, 35.064148>,  <47.339603, 35.002312, 35.366417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.994896, 34.868622, 35.064148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707485, 34.877956, 34.786106>,  <47.535038, 34.883556, 34.619282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707485, 34.877956, 34.786106>,  <47.994896, 34.868622, 35.064148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707485, 34.877956, 34.786106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443915, 0.784769, -0.432524,
		0.535401, -0.619348, -0.574241,
		-0.718530, 0.023340, -0.695104,
		47.491924, 34.884960, 34.577576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.685081, 33.325985, 43.901852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.337278, 33.130714, 43.871830>,  <29.128595, 33.013550, 43.853817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.337278, 33.130714, 43.871830>,  <29.685081, 33.325985, 43.901852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337278, 33.130714, 43.871830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072333, 0.024468, -0.997080,
		0.488590, -0.872400, 0.014036,
		-0.869510, -0.488179, -0.075058,
		29.076426, 32.984261, 43.849312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755331, 32.819576, 43.383705>,  <29.685081, 33.325985, 43.901852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755331, 32.819576, 43.383705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357012, 32.848495, 43.406204>,  <29.118021, 32.865845, 43.419704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357012, 32.848495, 43.406204>,  <29.755331, 32.819576, 43.383705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357012, 32.848495, 43.406204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047684, 0.115210, -0.992196,
		-0.078213, -0.990707, -0.111278,
		-0.995796, 0.072296, 0.056252,
		29.058273, 32.870186, 43.423080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553909, 32.264160, 42.956032>,  <29.755331, 32.819576, 43.383705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553909, 32.264160, 42.956032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.257956, 32.531128, 42.989803>,  <29.080383, 32.691307, 43.010067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.257956, 32.531128, 42.989803>,  <29.553909, 32.264160, 42.956032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257956, 32.531128, 42.989803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030416, 0.092190, -0.995277,
		-0.672047, -0.738957, -0.047909,
		-0.739884, 0.667415, 0.084432,
		29.035990, 32.731354, 43.015133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043600, 31.990728, 42.617390>,  <29.553909, 32.264160, 42.956032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043600, 31.990728, 42.617390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.951818, 32.379944, 42.626701>,  <28.896749, 32.613472, 42.632286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.951818, 32.379944, 42.626701>,  <29.043600, 31.990728, 42.617390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951818, 32.379944, 42.626701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055936, 0.010691, -0.998377,
		-0.971710, -0.230386, 0.051975,
		-0.229456, 0.973040, 0.023276,
		28.882982, 32.671856, 42.633682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566631, 32.023479, 42.118824>,  <29.043600, 31.990728, 42.617390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566631, 32.023479, 42.118824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.701571, 32.396889, 42.167370>,  <28.782534, 32.620934, 42.196499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.701571, 32.396889, 42.167370>,  <28.566631, 32.023479, 42.118824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701571, 32.396889, 42.167370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176596, 0.189391, -0.965891,
		-0.924667, 0.304411, 0.228747,
		0.337350, 0.933523, 0.121366,
		28.802776, 32.676945, 42.203781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229445, 32.364201, 41.540577>,  <28.566631, 32.023479, 42.118824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229445, 32.364201, 41.540577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.521399, 32.603561, 41.672752>,  <28.696571, 32.747177, 41.752056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.521399, 32.603561, 41.672752>,  <28.229445, 32.364201, 41.540577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521399, 32.603561, 41.672752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110472, 0.373780, -0.920915,
		-0.674584, 0.708665, 0.206710,
		0.729885, 0.598399, 0.330434,
		28.740364, 32.783081, 41.771881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118168, 33.020603, 41.184666>,  <28.229445, 32.364201, 41.540577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118168, 33.020603, 41.184666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.503031, 33.036068, 41.292564>,  <28.733948, 33.045349, 41.357304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.503031, 33.036068, 41.292564>,  <28.118168, 33.020603, 41.184666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503031, 33.036068, 41.292564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240876, 0.342193, -0.908231,
		-0.127423, 0.938834, 0.319929,
		0.962155, 0.038667, 0.269746,
		28.791677, 33.047668, 41.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383787, 33.616879, 40.873859>,  <28.118168, 33.020603, 41.184666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383787, 33.616879, 40.873859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.699274, 33.386108, 40.958797>,  <28.888565, 33.247646, 41.009758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.699274, 33.386108, 40.958797>,  <28.383787, 33.616879, 40.873859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699274, 33.386108, 40.958797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393272, 0.208019, -0.895581,
		0.472509, 0.789867, 0.390956,
		0.788716, -0.576922, 0.212342,
		28.935888, 33.213032, 41.022499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058214, 34.033855, 40.622082>,  <28.383787, 33.616879, 40.873859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058214, 34.033855, 40.622082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.135820, 33.643658, 40.663601>,  <29.182384, 33.409538, 40.688511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.135820, 33.643658, 40.663601>,  <29.058214, 34.033855, 40.622082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135820, 33.643658, 40.663601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429871, -0.010571, -0.902828,
		0.881799, 0.219782, 0.417285,
		0.194014, -0.975492, 0.103799,
		29.194025, 33.351009, 40.694740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784384, 34.055603, 40.369995>,  <29.058214, 34.033855, 40.622082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784384, 34.055603, 40.369995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.668028, 33.674080, 40.399998>,  <29.598213, 33.445164, 40.417999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.668028, 33.674080, 40.399998>,  <29.784384, 34.055603, 40.369995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668028, 33.674080, 40.399998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779491, -0.281725, -0.559486,
		0.554775, -0.104283, 0.825439,
		-0.290892, -0.953811, 0.075007,
		29.580761, 33.387936, 40.422501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403994, 33.708759, 40.395863>,  <29.784384, 34.055603, 40.369995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403994, 33.708759, 40.395863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118326, 33.459942, 40.267475>,  <29.946926, 33.310650, 40.190441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118326, 33.459942, 40.267475>,  <30.403994, 33.708759, 40.395863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118326, 33.459942, 40.267475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614352, -0.337269, -0.713317,
		0.335462, -0.706617, 0.623022,
		-0.714168, -0.622046, -0.320971,
		29.904076, 33.273327, 40.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715288, 32.979637, 40.302402>,  <30.403994, 33.708759, 40.395863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715288, 32.979637, 40.302402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.400824, 33.013680, 40.057549>,  <30.212145, 33.034103, 39.910637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.400824, 33.013680, 40.057549>,  <30.715288, 32.979637, 40.302402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400824, 33.013680, 40.057549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581302, -0.234484, -0.779170,
		-0.209840, -0.968388, 0.134876,
		-0.786165, 0.085097, -0.612130,
		30.164974, 33.039211, 39.873909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842947, 32.487774, 39.863029>,  <30.715288, 32.979637, 40.302402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842947, 32.487774, 39.863029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.554798, 32.676533, 39.659706>,  <30.381908, 32.789787, 39.537712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.554798, 32.676533, 39.659706>,  <30.842947, 32.487774, 39.863029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554798, 32.676533, 39.659706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484033, -0.182857, -0.855731,
		-0.496766, -0.862482, -0.096689,
		-0.720372, 0.471899, -0.508307,
		30.338686, 32.818104, 39.507214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721777, 32.073460, 39.220573>,  <30.842947, 32.487774, 39.863029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721777, 32.073460, 39.220573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.577913, 32.438171, 39.141270>,  <30.491594, 32.656998, 39.093685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.577913, 32.438171, 39.141270>,  <30.721777, 32.073460, 39.220573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577913, 32.438171, 39.141270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587674, 0.056304, -0.807137,
		-0.724765, -0.406809, -0.556077,
		-0.359659, 0.911777, -0.198264,
		30.470015, 32.711704, 39.081791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667110, 32.038429, 38.537796>,  <30.721777, 32.073460, 39.220573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667110, 32.038429, 38.537796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.652395, 32.425293, 38.638393>,  <30.643566, 32.657410, 38.698750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.652395, 32.425293, 38.638393>,  <30.667110, 32.038429, 38.537796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652395, 32.425293, 38.638393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494172, 0.236342, -0.836622,
		-0.868586, 0.093502, -0.486638,
		-0.036787, 0.967161, 0.251489,
		30.641359, 32.715443, 38.713840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568945, 32.384445, 37.942287>,  <30.667110, 32.038429, 38.537796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568945, 32.384445, 37.942287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.712566, 32.689945, 38.156860>,  <30.798738, 32.873245, 38.285606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.712566, 32.689945, 38.156860>,  <30.568945, 32.384445, 37.942287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712566, 32.689945, 38.156860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424833, 0.378022, -0.822567,
		-0.831023, 0.523240, -0.188738,
		0.359052, 0.763754, 0.536434,
		30.820282, 32.919071, 38.317791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388660, 32.967331, 37.602451>,  <30.568945, 32.384445, 37.942287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388660, 32.967331, 37.602451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.709356, 33.051846, 37.826084>,  <30.901773, 33.102554, 37.960262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.709356, 33.051846, 37.826084>,  <30.388660, 32.967331, 37.602451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709356, 33.051846, 37.826084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461623, 0.375246, -0.803800,
		-0.379624, 0.902523, 0.203315,
		0.801742, 0.211287, 0.559078,
		30.949879, 33.115231, 37.993809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602430, 33.714958, 37.472977>,  <30.388660, 32.967331, 37.602451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602430, 33.714958, 37.472977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.943979, 33.556068, 37.607510>,  <31.148909, 33.460735, 37.688229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.943979, 33.556068, 37.607510>,  <30.602430, 33.714958, 37.472977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943979, 33.556068, 37.607510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487516, 0.384055, -0.784111,
		0.182294, 0.833498, 0.521585,
		0.853872, -0.397220, 0.336332,
		31.200140, 33.436901, 37.708408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108149, 34.236523, 37.401417>,  <30.602430, 33.714958, 37.472977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108149, 34.236523, 37.401417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304821, 33.889927, 37.435925>,  <31.422825, 33.681969, 37.456627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304821, 33.889927, 37.435925>,  <31.108149, 34.236523, 37.401417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304821, 33.889927, 37.435925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514779, 0.209333, -0.831374,
		0.702321, 0.453178, 0.548976,
		0.491679, -0.866493, 0.086268,
		31.452324, 33.629978, 37.461803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826662, 34.401733, 37.187637>,  <31.108149, 34.236523, 37.401417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826662, 34.401733, 37.187637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818975, 34.002106, 37.172146>,  <31.814363, 33.762329, 37.162849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818975, 34.002106, 37.172146>,  <31.826662, 34.401733, 37.187637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818975, 34.002106, 37.172146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616585, 0.018652, -0.787067,
		0.787054, -0.039008, 0.615650,
		-0.019219, -0.999065, -0.038732,
		31.813210, 33.702385, 37.160526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504372, 34.117088, 37.212749>,  <31.826662, 34.401733, 37.187637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504372, 34.117088, 37.212749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.290291, 33.850384, 37.005291>,  <32.161842, 33.690361, 36.880817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.290291, 33.850384, 37.005291>,  <32.504372, 34.117088, 37.212749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290291, 33.850384, 37.005291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521101, 0.222628, -0.823948,
		0.664838, -0.711246, 0.228296,
		-0.535205, -0.666757, -0.518643,
		32.129730, 33.650356, 36.849697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030857, 33.678406, 36.853672>,  <32.504372, 34.117088, 37.212749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030857, 33.678406, 36.853672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676117, 33.709938, 36.671558>,  <32.463272, 33.728859, 36.562290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676117, 33.709938, 36.671558>,  <33.030857, 33.678406, 36.853672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676117, 33.709938, 36.671558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453690, 0.335248, -0.825696,
		0.087539, -0.938826, -0.333081,
		-0.886850, 0.078835, -0.455284,
		32.410061, 33.733589, 36.534973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632744, 33.239307, 36.414417>,  <33.030857, 33.678406, 36.853672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632744, 33.239307, 36.414417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816074, 33.594639, 36.425743>,  <33.926071, 33.807838, 36.432541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816074, 33.594639, 36.425743>,  <33.632744, 33.239307, 36.414417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816074, 33.594639, 36.425743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076052, 0.007452, 0.997076,
		0.885524, -0.459140, 0.070975,
		0.458327, 0.888332, 0.028319,
		33.953571, 33.861137, 36.434238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226929, 33.172230, 37.014740>,  <33.632744, 33.239307, 36.414417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226929, 33.172230, 37.014740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250328, 33.568245, 36.963509>,  <34.264366, 33.805855, 36.932770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250328, 33.568245, 36.963509>,  <34.226929, 33.172230, 37.014740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250328, 33.568245, 36.963509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340663, 0.140391, 0.929645,
		0.938364, -0.010749, 0.345481,
		0.058495, 0.990038, -0.128077,
		34.267876, 33.865257, 36.925087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653820, 33.390221, 37.489365>,  <34.226929, 33.172230, 37.014740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653820, 33.390221, 37.489365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451702, 33.721737, 37.393204>,  <34.330433, 33.920647, 37.335506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451702, 33.721737, 37.393204>,  <34.653820, 33.390221, 37.489365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451702, 33.721737, 37.393204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311835, 0.084388, 0.946381,
		0.804635, 0.553165, 0.215804,
		-0.505293, 0.828787, -0.240398,
		34.300114, 33.970371, 37.321083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877911, 33.912193, 37.933380>,  <34.653820, 33.390221, 37.489365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877911, 33.912193, 37.933380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515530, 34.038715, 37.820812>,  <34.298100, 34.114628, 37.753269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515530, 34.038715, 37.820812>,  <34.877911, 33.912193, 37.933380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515530, 34.038715, 37.820812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211257, 0.238311, 0.947933,
		0.366905, 0.918235, -0.149076,
		-0.905953, 0.316309, -0.281422,
		34.243744, 34.133610, 37.736385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858032, 34.549618, 38.329796>,  <34.877911, 33.912193, 37.933380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858032, 34.549618, 38.329796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488449, 34.447941, 38.215469>,  <34.266701, 34.386936, 38.146873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488449, 34.447941, 38.215469>,  <34.858032, 34.549618, 38.329796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488449, 34.447941, 38.215469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332425, 0.164021, 0.928757,
		-0.189203, 0.953144, -0.236048,
		-0.923957, -0.254192, -0.285816,
		34.211262, 34.371685, 38.129726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532040, 35.061169, 38.699306>,  <34.858032, 34.549618, 38.329796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532040, 35.061169, 38.699306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248760, 34.792591, 38.612022>,  <34.078793, 34.631443, 38.559650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248760, 34.792591, 38.612022>,  <34.532040, 35.061169, 38.699306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248760, 34.792591, 38.612022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409151, 0.138442, 0.901903,
		-0.575369, 0.728007, -0.372768,
		-0.708199, -0.671445, -0.218210,
		34.036301, 34.591156, 38.546558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867859, 35.303909, 39.006348>,  <34.532040, 35.061169, 38.699306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867859, 35.303909, 39.006348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791882, 34.915825, 38.946201>,  <33.746296, 34.682976, 38.910114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791882, 34.915825, 38.946201>,  <33.867859, 35.303909, 39.006348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791882, 34.915825, 38.946201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595395, -0.007947, 0.803393,
		-0.780656, 0.242130, -0.576150,
		-0.189947, -0.970211, -0.150367,
		33.734898, 34.624760, 38.901093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206051, 35.207813, 39.206699>,  <33.867859, 35.303909, 39.006348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206051, 35.207813, 39.206699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.386021, 34.852184, 39.240444>,  <33.494003, 34.638805, 39.260693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.386021, 34.852184, 39.240444>,  <33.206051, 35.207813, 39.206699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386021, 34.852184, 39.240444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399235, -0.115734, 0.909515,
		-0.798862, -0.442892, -0.407021,
		0.449923, -0.889073, 0.084362,
		33.520996, 34.585461, 39.265755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712582, 34.639050, 39.431824>,  <33.206051, 35.207813, 39.206699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712582, 34.639050, 39.431824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.051647, 34.472275, 39.563049>,  <33.255085, 34.372211, 39.641785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.051647, 34.472275, 39.563049>,  <32.712582, 34.639050, 39.431824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051647, 34.472275, 39.563049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406390, -0.112776, 0.906713,
		-0.341044, -0.901912, -0.265035,
		0.847665, -0.416937, 0.328067,
		33.305946, 34.347195, 39.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551937, 34.278248, 40.008480>,  <32.712582, 34.639050, 39.431824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551937, 34.278248, 40.008480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.944813, 34.236031, 40.070660>,  <33.180538, 34.210701, 40.107967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.944813, 34.236031, 40.070660>,  <32.551937, 34.278248, 40.008480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944813, 34.236031, 40.070660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180347, -0.297519, 0.937527,
		-0.052696, -0.948865, -0.311254,
		0.982190, -0.105537, 0.155447,
		33.239471, 34.204369, 40.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679577, 33.589115, 40.477123>,  <32.551937, 34.278248, 40.008480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679577, 33.589115, 40.477123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006874, 33.816982, 40.507988>,  <33.203251, 33.953705, 40.526508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006874, 33.816982, 40.507988>,  <32.679577, 33.589115, 40.477123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006874, 33.816982, 40.507988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027709, -0.173154, 0.984505,
		0.574207, -0.803424, -0.157467,
		0.818241, 0.569673, 0.077164,
		33.252346, 33.987885, 40.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094894, 33.166592, 40.873428>,  <32.679577, 33.589115, 40.477123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094894, 33.166592, 40.873428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240139, 33.537766, 40.907097>,  <33.327286, 33.760471, 40.927299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240139, 33.537766, 40.907097>,  <33.094894, 33.166592, 40.873428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240139, 33.537766, 40.907097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103756, -0.049506, 0.993370,
		0.925949, -0.369441, 0.078302,
		0.363115, 0.927935, 0.084172,
		33.349075, 33.816147, 40.932350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546925, 33.091381, 41.387280>,  <33.094894, 33.166592, 40.873428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546925, 33.091381, 41.387280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.441936, 33.476402, 41.360146>,  <33.378944, 33.707417, 41.343864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.441936, 33.476402, 41.360146>,  <33.546925, 33.091381, 41.387280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441936, 33.476402, 41.360146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202872, 0.013686, 0.979110,
		0.943373, 0.270749, 0.191683,
		-0.262470, 0.962553, -0.067839,
		33.363197, 33.765167, 41.339794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028011, 33.496384, 41.804047>,  <33.546925, 33.091381, 41.387280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028011, 33.496384, 41.804047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696083, 33.715015, 41.759045>,  <33.496925, 33.846195, 41.732044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696083, 33.715015, 41.759045>,  <34.028011, 33.496384, 41.804047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696083, 33.715015, 41.759045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079134, 0.084306, 0.993293,
		0.552396, 0.833154, -0.026706,
		-0.829817, 0.546578, -0.112501,
		33.447140, 33.878990, 41.725296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016319, 33.871616, 42.424126>,  <34.028011, 33.496384, 41.804047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016319, 33.871616, 42.424126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.646145, 33.891369, 42.273857>,  <33.424038, 33.903221, 42.183697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.646145, 33.891369, 42.273857>,  <34.016319, 33.871616, 42.424126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646145, 33.891369, 42.273857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378754, -0.093011, 0.920812,
		0.010525, 0.994440, 0.104777,
		-0.925438, 0.049377, -0.375669,
		33.368515, 33.906181, 42.161156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672260, 34.364376, 42.829449>,  <34.016319, 33.871616, 42.424126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672260, 34.364376, 42.829449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358955, 34.174786, 42.668530>,  <33.170971, 34.061031, 42.571976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358955, 34.174786, 42.668530>,  <33.672260, 34.364376, 42.829449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358955, 34.174786, 42.668530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378666, -0.149497, 0.913380,
		-0.493066, 0.867752, -0.062385,
		-0.783261, -0.473980, -0.402301,
		33.123978, 34.032593, 42.547840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089455, 34.632347, 43.129456>,  <33.672260, 34.364376, 42.829449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089455, 34.632347, 43.129456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.938385, 34.290512, 42.986885>,  <32.847744, 34.085411, 42.901344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.938385, 34.290512, 42.986885>,  <33.089455, 34.632347, 43.129456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938385, 34.290512, 42.986885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526397, -0.118516, 0.841939,
		-0.761755, 0.505597, -0.405093,
		-0.377672, -0.854591, -0.356425,
		32.825085, 34.034134, 42.879959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321087, 34.696480, 43.108738>,  <33.089455, 34.632347, 43.129456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321087, 34.696480, 43.108738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423943, 34.310158, 43.095413>,  <32.485657, 34.078365, 43.087418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423943, 34.310158, 43.095413>,  <32.321087, 34.696480, 43.108738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423943, 34.310158, 43.095413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496539, -0.161613, 0.852837,
		-0.829053, -0.202757, -0.521115,
		0.257137, -0.965801, -0.033308,
		32.501083, 34.020416, 43.085423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.584459, 34.311317, 43.232307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855700, 34.026878, 43.306618>,  <32.018444, 33.856213, 43.351204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855700, 34.026878, 43.306618>,  <31.584459, 34.311317, 43.232307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855700, 34.026878, 43.306618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479830, -0.236858, 0.844785,
		-0.556724, -0.661992, -0.501822,
		0.678101, -0.711101, 0.185780,
		32.059132, 33.813549, 43.362350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160187, 33.669254, 43.445766>,  <31.584459, 34.311317, 43.232307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160187, 33.669254, 43.445766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536678, 33.629238, 43.574814>,  <31.762573, 33.605228, 43.652241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536678, 33.629238, 43.574814>,  <31.160187, 33.669254, 43.445766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536678, 33.629238, 43.574814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335613, -0.169156, 0.926688,
		-0.038130, -0.980499, -0.192788,
		0.941228, -0.100037, 0.322618,
		31.819046, 33.599228, 43.671600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112963, 33.022415, 43.836094>,  <31.160187, 33.669254, 43.445766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112963, 33.022415, 43.836094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451677, 33.179722, 43.979370>,  <31.654905, 33.274105, 44.065334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451677, 33.179722, 43.979370>,  <31.112963, 33.022415, 43.836094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451677, 33.179722, 43.979370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355015, -0.083634, 0.931112,
		0.396130, -0.915614, 0.068795,
		0.846785, 0.393264, 0.358186,
		31.705713, 33.297703, 44.086826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366995, 32.562321, 44.302254>,  <31.112963, 33.022415, 43.836094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366995, 32.562321, 44.302254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528181, 32.915958, 44.396908>,  <31.624893, 33.128139, 44.453701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528181, 32.915958, 44.396908>,  <31.366995, 32.562321, 44.302254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528181, 32.915958, 44.396908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216968, -0.158904, 0.963159,
		0.889125, -0.439463, 0.127787,
		0.402966, 0.884094, 0.236635,
		31.649071, 33.181187, 44.467899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629553, 32.496338, 45.016682>,  <31.366995, 32.562321, 44.302254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629553, 32.496338, 45.016682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596113, 32.887455, 44.939816>,  <31.576050, 33.122128, 44.893696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596113, 32.887455, 44.939816>,  <31.629553, 32.496338, 45.016682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596113, 32.887455, 44.939816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270624, 0.163313, 0.948732,
		0.959048, 0.131319, 0.250962,
		-0.083601, 0.977796, -0.192163,
		31.571033, 33.180794, 44.882168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827242, 32.902679, 45.717293>,  <31.629553, 32.496338, 45.016682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827242, 32.902679, 45.717293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644817, 33.190659, 45.508034>,  <31.535362, 33.363445, 45.382481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644817, 33.190659, 45.508034>,  <31.827242, 32.902679, 45.717293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644817, 33.190659, 45.508034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252223, 0.459170, 0.851790,
		0.853458, 0.520418, -0.027822,
		-0.456062, 0.719950, -0.523144,
		31.507999, 33.406643, 45.351089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978985, 33.460072, 46.124374>,  <31.827242, 32.902679, 45.717293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978985, 33.460072, 46.124374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667696, 33.565910, 45.896564>,  <31.480923, 33.629414, 45.759876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667696, 33.565910, 45.896564>,  <31.978985, 33.460072, 46.124374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667696, 33.565910, 45.896564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438202, 0.420824, 0.794283,
		0.449833, 0.867696, -0.211549,
		-0.778222, 0.264593, -0.569527,
		31.434229, 33.645287, 45.725708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805365, 34.119560, 46.367641>,  <31.978985, 33.460072, 46.124374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805365, 34.119560, 46.367641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.466084, 34.014801, 46.183483>,  <31.262514, 33.951946, 46.072990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.466084, 34.014801, 46.183483>,  <31.805365, 34.119560, 46.367641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466084, 34.014801, 46.183483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525416, 0.525958, 0.668809,
		0.066989, 0.809184, -0.583724,
		-0.848204, -0.261895, -0.460392,
		31.211622, 33.936234, 46.045364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349209, 34.719227, 46.375919>,  <31.805365, 34.119560, 46.367641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349209, 34.719227, 46.375919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.126581, 34.388874, 46.339806>,  <30.993004, 34.190662, 46.318138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.126581, 34.388874, 46.339806>,  <31.349209, 34.719227, 46.375919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126581, 34.388874, 46.339806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585194, 0.312571, 0.748230,
		-0.589726, 0.469279, -0.657267,
		-0.556571, -0.825879, -0.090288,
		30.959610, 34.141109, 46.312717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689114, 34.894432, 46.523972>,  <31.349209, 34.719227, 46.375919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689114, 34.894432, 46.523972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.653101, 34.497318, 46.555645>,  <30.631493, 34.259048, 46.574650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.653101, 34.497318, 46.555645>,  <30.689114, 34.894432, 46.523972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653101, 34.497318, 46.555645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545790, 0.115687, 0.829897,
		-0.833071, 0.031500, -0.552268,
		-0.090032, -0.992786, 0.079183,
		30.626091, 34.199482, 46.579399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974682, 34.752518, 46.680267>,  <30.689114, 34.894432, 46.523972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974682, 34.752518, 46.680267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169886, 34.428562, 46.810452>,  <30.287008, 34.234188, 46.888561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169886, 34.428562, 46.810452>,  <29.974682, 34.752518, 46.680267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169886, 34.428562, 46.810452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523164, 0.027061, 0.851802,
		-0.698675, -0.585954, -0.410501,
		0.488008, -0.809892, 0.325457,
		30.316288, 34.185593, 46.908089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504599, 34.316711, 47.041836>,  <29.974682, 34.752518, 46.680267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504599, 34.316711, 47.041836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859282, 34.168381, 47.152283>,  <30.072092, 34.079384, 47.218552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859282, 34.168381, 47.152283>,  <29.504599, 34.316711, 47.041836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859282, 34.168381, 47.152283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360154, -0.179552, 0.915451,
		-0.289897, -0.911180, -0.292765,
		0.886707, -0.370827, 0.276113,
		30.125294, 34.057133, 47.235115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392107, 33.774010, 47.520592>,  <29.504599, 34.316711, 47.041836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392107, 33.774010, 47.520592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.776854, 33.841801, 47.606464>,  <30.007702, 33.882477, 47.657986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.776854, 33.841801, 47.606464>,  <29.392107, 33.774010, 47.520592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776854, 33.841801, 47.606464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217690, -0.000821, 0.976018,
		0.165592, -0.985533, 0.036105,
		0.961868, 0.169480, 0.214677,
		30.065414, 33.892643, 47.670868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615053, 33.299824, 47.981335>,  <29.392107, 33.774010, 47.520592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615053, 33.299824, 47.981335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910513, 33.562725, 48.041225>,  <30.087790, 33.720467, 48.077160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910513, 33.562725, 48.041225>,  <29.615053, 33.299824, 47.981335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910513, 33.562725, 48.041225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038991, -0.263402, 0.963898,
		0.672960, -0.706145, -0.220189,
		0.738650, 0.657250, 0.149725,
		30.132109, 33.759899, 48.086143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071106, 33.033905, 48.391399>,  <29.615053, 33.299824, 47.981335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071106, 33.033905, 48.391399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166540, 33.418133, 48.448494>,  <30.223801, 33.648670, 48.482750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166540, 33.418133, 48.448494>,  <30.071106, 33.033905, 48.391399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166540, 33.418133, 48.448494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131884, -0.177669, 0.975213,
		0.962124, -0.213848, -0.169074,
		0.238587, 0.960574, 0.142737,
		30.238115, 33.706306, 48.491314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676607, 33.029213, 48.806873>,  <30.071106, 33.033905, 48.391399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676607, 33.029213, 48.806873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553478, 33.408588, 48.837074>,  <30.479601, 33.636215, 48.855194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553478, 33.408588, 48.837074>,  <30.676607, 33.029213, 48.806873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553478, 33.408588, 48.837074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275270, 0.012815, 0.961282,
		0.910753, 0.316688, -0.265023,
		-0.307823, 0.948443, 0.075503,
		30.461132, 33.693123, 48.859726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282768, 33.486137, 49.081818>,  <30.676607, 33.029213, 48.806873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282768, 33.486137, 49.081818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906389, 33.584892, 49.174480>,  <30.680561, 33.644146, 49.230076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906389, 33.584892, 49.174480>,  <31.282768, 33.486137, 49.081818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906389, 33.584892, 49.174480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209724, -0.112071, 0.971317,
		0.265767, 0.962542, 0.053675,
		-0.940948, 0.246887, 0.231653,
		30.624105, 33.658958, 49.243977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394156, 33.731716, 49.771126>,  <31.282768, 33.486137, 49.081818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394156, 33.731716, 49.771126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994385, 33.723476, 49.760345>,  <30.754522, 33.718533, 49.753876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994385, 33.723476, 49.760345>,  <31.394156, 33.731716, 49.771126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994385, 33.723476, 49.760345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024908, -0.093772, 0.995282,
		-0.023028, 0.995380, 0.093205,
		-0.999424, -0.020597, -0.026953,
		30.694557, 33.717297, 49.752258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155296, 34.232815, 50.330906>,  <31.394156, 33.731716, 49.771126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155296, 34.232815, 50.330906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867790, 33.963707, 50.260757>,  <30.695286, 33.802242, 50.218670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867790, 33.963707, 50.260757>,  <31.155296, 34.232815, 50.330906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867790, 33.963707, 50.260757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110083, -0.138928, 0.984165,
		-0.686483, 0.726688, 0.025796,
		-0.718765, -0.672773, -0.175368,
		30.652161, 33.761875, 50.208149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647432, 34.401775, 50.815308>,  <31.155296, 34.232815, 50.330906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647432, 34.401775, 50.815308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580793, 34.021023, 50.712421>,  <30.540810, 33.792572, 50.650692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580793, 34.021023, 50.712421>,  <30.647432, 34.401775, 50.815308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580793, 34.021023, 50.712421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081424, -0.246686, 0.965668,
		-0.982657, 0.181822, -0.036409,
		-0.166598, -0.951886, -0.257213,
		30.530813, 33.735458, 50.635258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000650, 34.176590, 51.153404>,  <30.647432, 34.401775, 50.815308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000650, 34.176590, 51.153404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224337, 33.853523, 51.078625>,  <30.358549, 33.659683, 51.033756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224337, 33.853523, 51.078625>,  <30.000650, 34.176590, 51.153404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224337, 33.853523, 51.078625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125631, -0.305466, 0.943879,
		-0.819448, -0.504345, -0.272290,
		0.559216, -0.807667, -0.186953,
		30.392101, 33.611221, 51.022537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709263, 33.706142, 51.705986>,  <30.000650, 34.176590, 51.153404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709263, 33.706142, 51.705986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036615, 33.530247, 51.557999>,  <30.233027, 33.424709, 51.469204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036615, 33.530247, 51.557999>,  <29.709263, 33.706142, 51.705986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036615, 33.530247, 51.557999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127769, -0.488451, 0.863187,
		-0.560293, -0.753686, -0.343553,
		0.818381, -0.439742, -0.369974,
		30.282129, 33.398323, 51.447006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106604, 33.300949, 52.041908>,  <29.709263, 33.706142, 51.705986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106604, 33.300949, 52.041908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103407, 32.907360, 52.113167>,  <29.101490, 32.671207, 52.155922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103407, 32.907360, 52.113167>,  <29.106604, 33.300949, 52.041908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103407, 32.907360, 52.113167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529678, -0.146944, -0.835374,
		0.848161, -0.101036, -0.520013,
		-0.007990, -0.983971, 0.178149,
		29.101009, 32.612167, 52.166611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369892, 33.012981, 51.512363>,  <29.106604, 33.300949, 52.041908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369892, 33.012981, 51.512363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160772, 32.721043, 51.688549>,  <29.035299, 32.545879, 51.794258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160772, 32.721043, 51.688549>,  <29.369892, 33.012981, 51.512363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160772, 32.721043, 51.688549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480133, -0.174839, -0.859595,
		0.704381, -0.660877, -0.259016,
		-0.522800, -0.729845, 0.440462,
		29.003933, 32.502090, 51.820686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571165, 32.406296, 51.219017>,  <29.369892, 33.012981, 51.512363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571165, 32.406296, 51.219017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202234, 32.392166, 51.372932>,  <28.980875, 32.383690, 51.465282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202234, 32.392166, 51.372932>,  <29.571165, 32.406296, 51.219017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202234, 32.392166, 51.372932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366553, -0.235144, -0.900192,
		0.122277, -0.971318, 0.203933,
		-0.922327, -0.035320, 0.384793,
		28.925537, 32.381569, 51.488369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284849, 31.725164, 50.934170>,  <29.571165, 32.406296, 51.219017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284849, 31.725164, 50.934170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983265, 31.969328, 51.031284>,  <28.802315, 32.115826, 51.089554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983265, 31.969328, 51.031284>,  <29.284849, 31.725164, 50.934170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983265, 31.969328, 51.031284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491370, -0.278725, -0.825147,
		-0.436009, -0.741424, 0.510085,
		-0.753958, 0.610412, 0.242787,
		28.757078, 32.152451, 51.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788580, 31.310699, 50.723541>,  <29.284849, 31.725164, 50.934170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788580, 31.310699, 50.723541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621906, 31.672577, 50.759113>,  <28.521902, 31.889704, 50.780457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621906, 31.672577, 50.759113>,  <28.788580, 31.310699, 50.723541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621906, 31.672577, 50.759113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452235, -0.121431, -0.883594,
		-0.788581, -0.408397, 0.459731,
		-0.416682, 0.904692, 0.088933,
		28.496901, 31.943985, 50.785793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067640, 31.134712, 50.551380>,  <28.788580, 31.310699, 50.723541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067640, 31.134712, 50.551380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.123638, 31.529085, 50.514843>,  <28.157236, 31.765709, 50.492920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.123638, 31.529085, 50.514843>,  <28.067640, 31.134712, 50.551380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123638, 31.529085, 50.514843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233430, -0.056789, -0.970714,
		-0.962243, 0.157216, 0.222196,
		0.139993, 0.985930, -0.091344,
		28.165636, 31.824863, 50.487438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588400, 31.298519, 50.015961>,  <28.067640, 31.134712, 50.551380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588400, 31.298519, 50.015961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855358, 31.593916, 50.054356>,  <28.015533, 31.771154, 50.077393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855358, 31.593916, 50.054356>,  <27.588400, 31.298519, 50.015961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855358, 31.593916, 50.054356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022323, 0.108999, -0.993791,
		-0.744368, 0.665395, 0.056260,
		0.667396, 0.738491, 0.095989,
		28.055576, 31.815464, 50.083153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309822, 31.842422, 49.646076>,  <27.588400, 31.298519, 50.015961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309822, 31.842422, 49.646076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.704962, 31.904552, 49.648312>,  <27.942045, 31.941830, 49.649654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.704962, 31.904552, 49.648312>,  <27.309822, 31.842422, 49.646076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704962, 31.904552, 49.648312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019811, -0.090157, -0.995731,
		-0.154157, 0.983741, -0.092138,
		0.987848, 0.155325, 0.005591,
		28.001316, 31.951149, 49.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418560, 32.476154, 49.272308>,  <27.309822, 31.842422, 49.646076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418560, 32.476154, 49.272308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.764299, 32.275352, 49.260334>,  <27.971743, 32.154873, 49.253151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.764299, 32.275352, 49.260334>,  <27.418560, 32.476154, 49.272308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764299, 32.275352, 49.260334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120302, 0.264202, -0.956935,
		0.488294, 0.823523, 0.288754,
		0.864347, -0.502004, -0.029937,
		28.023603, 32.124752, 49.251354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892042, 32.816967, 48.781696>,  <27.418560, 32.476154, 49.272308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892042, 32.816967, 48.781696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099293, 32.479607, 48.838581>,  <28.223644, 32.277191, 48.872711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099293, 32.479607, 48.838581>,  <27.892042, 32.816967, 48.781696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099293, 32.479607, 48.838581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330678, 0.044190, -0.942708,
		0.788794, 0.535470, 0.301789,
		0.518128, -0.843398, 0.142212,
		28.254730, 32.226589, 48.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481747, 32.984894, 48.596859>,  <27.892042, 32.816967, 48.781696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481747, 32.984894, 48.596859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468311, 32.589073, 48.540783>,  <28.460251, 32.351582, 48.507137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468311, 32.589073, 48.540783>,  <28.481747, 32.984894, 48.596859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468311, 32.589073, 48.540783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321014, 0.122152, -0.939164,
		0.946479, -0.076548, 0.313558,
		-0.033589, -0.989555, -0.140187,
		28.458235, 32.292206, 48.498726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106089, 32.815331, 48.282242>,  <28.481747, 32.984894, 48.596859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106089, 32.815331, 48.282242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861423, 32.505772, 48.216579>,  <28.714624, 32.320034, 48.177181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861423, 32.505772, 48.216579>,  <29.106089, 32.815331, 48.282242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861423, 32.505772, 48.216579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310802, -0.044249, -0.949444,
		0.727511, -0.631760, 0.267596,
		-0.611662, -0.773900, -0.164161,
		28.677925, 32.273602, 48.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570587, 32.480942, 47.952446>,  <29.106089, 32.815331, 48.282242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570587, 32.480942, 47.952446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.207388, 32.327572, 47.884884>,  <28.989470, 32.235550, 47.844345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.207388, 32.327572, 47.884884>,  <29.570587, 32.480942, 47.952446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207388, 32.327572, 47.884884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196161, -0.032815, -0.980022,
		0.370220, -0.922990, 0.105008,
		-0.907997, -0.383422, -0.168906,
		28.934988, 32.212543, 47.834213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672405, 31.950684, 47.528221>,  <29.570587, 32.480942, 47.952446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672405, 31.950684, 47.528221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290628, 32.067760, 47.504990>,  <29.061563, 32.138008, 47.491051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290628, 32.067760, 47.504990>,  <29.672405, 31.950684, 47.528221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290628, 32.067760, 47.504990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091634, 0.102272, -0.990527,
		-0.283982, -0.950721, -0.124433,
		-0.954441, 0.292694, -0.058075,
		29.004295, 32.155567, 47.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362110, 31.595139, 46.996651>,  <29.672405, 31.950684, 47.528221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362110, 31.595139, 46.996651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121387, 31.913185, 47.026646>,  <28.976954, 32.104012, 47.044643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121387, 31.913185, 47.026646>,  <29.362110, 31.595139, 46.996651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121387, 31.913185, 47.026646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020450, 0.109206, -0.993809,
		-0.798381, -0.596546, -0.081980,
		-0.601805, 0.795115, 0.074989,
		28.940845, 32.151718, 47.049141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947462, 31.381451, 46.519836>,  <29.362110, 31.595139, 46.996651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947462, 31.381451, 46.519836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.881155, 31.770872, 46.582718>,  <28.841372, 32.004524, 46.620445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.881155, 31.770872, 46.582718>,  <28.947462, 31.381451, 46.519836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881155, 31.770872, 46.582718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052453, 0.150476, -0.987221,
		-0.984769, -0.171893, 0.026122,
		-0.165766, 0.973555, 0.157201,
		28.831425, 32.062939, 46.629879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384377, 31.454542, 46.151638>,  <28.947462, 31.381451, 46.519836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384377, 31.454542, 46.151638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.541367, 31.821215, 46.181725>,  <28.635561, 32.041218, 46.199776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.541367, 31.821215, 46.181725>,  <28.384377, 31.454542, 46.151638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541367, 31.821215, 46.181725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134782, 0.138217, -0.981188,
		-0.909833, 0.374955, 0.177800,
		0.392477, 0.916681, 0.075217,
		28.659109, 32.096218, 46.204288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032541, 31.807007, 45.635406>,  <28.384377, 31.454542, 46.151638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032541, 31.807007, 45.635406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319542, 32.068207, 45.732391>,  <28.491741, 32.224926, 45.790581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319542, 32.068207, 45.732391>,  <28.032541, 31.807007, 45.635406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319542, 32.068207, 45.732391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108544, 0.448642, -0.887095,
		-0.688050, 0.610173, 0.392780,
		0.717500, 0.652999, 0.242457,
		28.534792, 32.264107, 45.805130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815344, 32.477753, 45.543777>,  <28.032541, 31.807007, 45.635406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815344, 32.477753, 45.543777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210844, 32.525734, 45.508026>,  <28.448143, 32.554523, 45.486576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210844, 32.525734, 45.508026>,  <27.815344, 32.477753, 45.543777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210844, 32.525734, 45.508026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141551, 0.557087, -0.818301,
		-0.048367, 0.821745, 0.567799,
		0.988749, 0.119951, -0.089374,
		28.507469, 32.561718, 45.481213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823908, 33.074665, 45.277470>,  <27.815344, 32.477753, 45.543777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823908, 33.074665, 45.277470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.181873, 32.917923, 45.192074>,  <28.396652, 32.823879, 45.140839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.181873, 32.917923, 45.192074>,  <27.823908, 33.074665, 45.277470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181873, 32.917923, 45.192074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010090, 0.460528, -0.887588,
		0.446121, 0.796471, 0.408180,
		0.894916, -0.391853, -0.213487,
		28.450348, 32.800365, 45.128029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145941, 33.640884, 44.939278>,  <27.823908, 33.074665, 45.277470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145941, 33.640884, 44.939278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368431, 33.327530, 44.828335>,  <28.501925, 33.139519, 44.761768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368431, 33.327530, 44.828335>,  <28.145941, 33.640884, 44.939278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368431, 33.327530, 44.828335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195833, 0.447907, -0.872370,
		0.807627, 0.430920, 0.402549,
		0.556226, -0.783382, -0.277353,
		28.535299, 33.092514, 44.745129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811108, 33.843525, 44.681160>,  <28.145941, 33.640884, 44.939278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811108, 33.843525, 44.681160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696262, 33.497677, 44.516232>,  <28.627356, 33.290169, 44.417274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696262, 33.497677, 44.516232>,  <28.811108, 33.843525, 44.681160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696262, 33.497677, 44.516232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227964, 0.356398, -0.906098,
		0.930376, -0.354145, 0.094776,
		-0.287112, -0.864617, -0.412317,
		28.610128, 33.238293, 44.392536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.943718, 41.445396, 33.283371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629501, 41.395241, 33.040985>,  <44.440971, 41.365147, 32.895554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629501, 41.395241, 33.040985>,  <44.943718, 41.445396, 33.283371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629501, 41.395241, 33.040985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270615, -0.811041, 0.518633,
		-0.556496, 0.571393, 0.603176,
		-0.785544, -0.125389, -0.605969,
		44.393837, 41.357624, 32.859196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413979, 41.303604, 33.727287>,  <44.943718, 41.445396, 33.283371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413979, 41.303604, 33.727287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253746, 41.184261, 33.380756>,  <44.157608, 41.112656, 33.172840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253746, 41.184261, 33.380756>,  <44.413979, 41.303604, 33.727287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253746, 41.184261, 33.380756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405334, -0.790248, 0.459580,
		-0.821731, 0.535248, 0.195620,
		-0.400577, -0.298360, -0.866325,
		44.133572, 41.094753, 33.120857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799461, 40.999271, 33.893028>,  <44.413979, 41.303604, 33.727287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799461, 40.999271, 33.893028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899601, 40.836529, 33.541618>,  <43.959682, 40.738884, 33.330772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899601, 40.836529, 33.541618>,  <43.799461, 40.999271, 33.893028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899601, 40.836529, 33.541618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387144, -0.873777, 0.294334,
		-0.887381, 0.266428, -0.376259,
		0.250348, -0.406853, -0.878520,
		43.974705, 40.714474, 33.278061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169277, 40.500423, 33.713097>,  <43.799461, 40.999271, 33.893028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169277, 40.500423, 33.713097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486961, 40.384697, 33.499355>,  <43.677570, 40.315262, 33.371113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486961, 40.384697, 33.499355>,  <43.169277, 40.500423, 33.713097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486961, 40.384697, 33.499355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280814, -0.954593, 0.099478,
		-0.538867, 0.071047, -0.839389,
		0.794207, -0.289317, -0.534350,
		43.725224, 40.297901, 33.339050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985123, 39.985634, 33.346272>,  <43.169277, 40.500423, 33.713097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985123, 39.985634, 33.346272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363770, 39.885719, 33.264755>,  <43.590958, 39.825771, 33.215847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363770, 39.885719, 33.264755>,  <42.985123, 39.985634, 33.346272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363770, 39.885719, 33.264755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235694, -0.967547, 0.091109,
		-0.219934, -0.038213, -0.974766,
		0.946614, -0.249785, -0.203790,
		43.647755, 39.810783, 33.203617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933216, 39.509705, 32.860897>,  <42.985123, 39.985634, 33.346272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933216, 39.509705, 32.860897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294147, 39.445568, 33.020943>,  <43.510708, 39.407085, 33.116970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294147, 39.445568, 33.020943>,  <42.933216, 39.509705, 32.860897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294147, 39.445568, 33.020943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204272, -0.976454, 0.069358,
		0.379572, -0.144316, -0.913837,
		0.902329, -0.160345, 0.400115,
		43.564846, 39.397465, 33.140976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202469, 38.981087, 32.535824>,  <42.933216, 39.509705, 32.860897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202469, 38.981087, 32.535824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380985, 38.990105, 32.893665>,  <43.488094, 38.995518, 33.108372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380985, 38.990105, 32.893665>,  <43.202469, 38.981087, 32.535824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380985, 38.990105, 32.893665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240596, -0.959852, 0.144217,
		0.861940, -0.279601, -0.422945,
		0.446288, 0.022547, 0.894605,
		43.514874, 38.996868, 33.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442139, 38.336174, 32.564461>,  <43.202469, 38.981087, 32.535824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442139, 38.336174, 32.564461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476589, 38.467911, 32.940571>,  <43.497261, 38.546951, 33.166237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476589, 38.467911, 32.940571>,  <43.442139, 38.336174, 32.564461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476589, 38.467911, 32.940571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017995, -0.943113, 0.331984,
		0.996121, -0.045514, -0.075302,
		0.086128, 0.329341, 0.940274,
		43.502426, 38.566711, 33.222652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731213, 37.703293, 32.752502>,  <43.442139, 38.336174, 32.564461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731213, 37.703293, 32.752502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638290, 37.902489, 33.086697>,  <43.582539, 38.022007, 33.287212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638290, 37.902489, 33.086697>,  <43.731213, 37.703293, 32.752502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638290, 37.902489, 33.086697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361407, -0.841684, 0.401190,
		0.903005, -0.208753, 0.375505,
		-0.232307, 0.497986, 0.835490,
		43.568600, 38.051884, 33.337345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939529, 37.235123, 33.190319>,  <43.731213, 37.703293, 32.752502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939529, 37.235123, 33.190319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667126, 37.473713, 33.360229>,  <43.503681, 37.616867, 33.462177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667126, 37.473713, 33.360229>,  <43.939529, 37.235123, 33.190319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667126, 37.473713, 33.360229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367694, -0.780194, 0.506062,
		0.633263, 0.188447, 0.750643,
		-0.681013, 0.596477, 0.424777,
		43.462822, 37.652657, 33.487663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926510, 37.081905, 33.932304>,  <43.939529, 37.235123, 33.190319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926510, 37.081905, 33.932304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572056, 37.245533, 33.845200>,  <43.359383, 37.343712, 33.792934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572056, 37.245533, 33.845200>,  <43.926510, 37.081905, 33.932304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572056, 37.245533, 33.845200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457893, -0.700493, 0.547397,
		0.071381, 0.584782, 0.808043,
		-0.886137, 0.409071, -0.217766,
		43.306213, 37.368256, 33.779869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567997, 37.022469, 34.594387>,  <43.926510, 37.081905, 33.932304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567997, 37.022469, 34.594387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286579, 37.082241, 34.316483>,  <43.117729, 37.118107, 34.149742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286579, 37.082241, 34.316483>,  <43.567997, 37.022469, 34.594387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286579, 37.082241, 34.316483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591017, -0.665908, 0.455265,
		-0.394614, 0.730915, 0.556815,
		-0.703547, 0.149434, -0.694759,
		43.075516, 37.127071, 34.108055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927120, 36.962204, 34.934349>,  <43.567997, 37.022469, 34.594387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927120, 36.962204, 34.934349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.810104, 36.908951, 34.555573>,  <42.739895, 36.876999, 34.328308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.810104, 36.908951, 34.555573>,  <42.927120, 36.962204, 34.934349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810104, 36.908951, 34.555573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506963, -0.818050, 0.271630,
		-0.810809, 0.559525, 0.171814,
		-0.292537, -0.133136, -0.946941,
		42.722343, 36.869011, 34.271492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204926, 36.786957, 34.971661>,  <42.927120, 36.962204, 34.934349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204926, 36.786957, 34.971661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295017, 36.669727, 34.599987>,  <42.349072, 36.599388, 34.376984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295017, 36.669727, 34.599987>,  <42.204926, 36.786957, 34.971661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295017, 36.669727, 34.599987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709286, -0.703155, 0.049856,
		-0.667971, 0.647828, -0.366244,
		0.225228, -0.293074, -0.929182,
		42.362587, 36.581806, 34.321232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564686, 36.612926, 34.666901>,  <42.204926, 36.786957, 34.971661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564686, 36.612926, 34.666901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845486, 36.408142, 34.468876>,  <42.013966, 36.285271, 34.350060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845486, 36.408142, 34.468876>,  <41.564686, 36.612926, 34.666901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845486, 36.408142, 34.468876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476200, -0.854327, 0.208230,
		-0.529551, 0.089571, -0.843536,
		0.702004, -0.511960, -0.495063,
		42.056087, 36.254555, 34.320358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308571, 35.981258, 34.162773>,  <41.564686, 36.612926, 34.666901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308571, 35.981258, 34.162773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694904, 35.919792, 34.246243>,  <41.926704, 35.882912, 34.296326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694904, 35.919792, 34.246243>,  <41.308571, 35.981258, 34.162773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694904, 35.919792, 34.246243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226293, -0.892519, 0.390130,
		0.126294, -0.424023, -0.896802,
		0.965837, -0.153669, 0.208673,
		41.984657, 35.873692, 34.308846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366489, 35.311718, 34.128941>,  <41.308571, 35.981258, 34.162773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366489, 35.311718, 34.128941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717140, 35.371868, 34.311771>,  <41.927528, 35.407959, 34.421471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717140, 35.371868, 34.311771>,  <41.366489, 35.311718, 34.128941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717140, 35.371868, 34.311771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045490, -0.919758, 0.389841,
		0.479021, -0.362536, -0.799442,
		0.876624, 0.150376, 0.457075,
		41.980129, 35.416981, 34.448895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684311, 34.688488, 34.054993>,  <41.366489, 35.311718, 34.128941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684311, 34.688488, 34.054993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.894344, 34.868263, 34.344070>,  <42.020367, 34.976128, 34.517517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.894344, 34.868263, 34.344070>,  <41.684311, 34.688488, 34.054993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894344, 34.868263, 34.344070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079935, -0.871475, 0.483881,
		0.847285, -0.196312, -0.493527,
		0.525088, 0.449436, 0.722696,
		42.051872, 35.003094, 34.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175121, 34.239300, 34.111618>,  <41.684311, 34.688488, 34.054993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175121, 34.239300, 34.111618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.181679, 34.453087, 34.449631>,  <42.185616, 34.581360, 34.652439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.181679, 34.453087, 34.449631>,  <42.175121, 34.239300, 34.111618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181679, 34.453087, 34.449631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141334, -0.837896, 0.527214,
		0.989826, 0.110787, -0.089277,
		0.016396, 0.534468, 0.845030,
		42.186596, 34.613426, 34.703140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782078, 33.931252, 34.450115>,  <42.175121, 34.239300, 34.111618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782078, 33.931252, 34.450115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.550789, 34.112156, 34.721741>,  <42.412014, 34.220699, 34.884716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.550789, 34.112156, 34.721741>,  <42.782078, 33.931252, 34.450115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550789, 34.112156, 34.721741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047688, -0.812147, 0.581501,
		0.814484, 0.368620, 0.448035,
		-0.578223, 0.452257, 0.679059,
		42.377323, 34.247833, 34.925457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127186, 33.945938, 35.066460>,  <42.782078, 33.931252, 34.450115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127186, 33.945938, 35.066460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740032, 33.971752, 35.163651>,  <42.507740, 33.987240, 35.221966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740032, 33.971752, 35.163651>,  <43.127186, 33.945938, 35.066460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740032, 33.971752, 35.163651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129909, -0.699065, 0.703159,
		0.215235, 0.712141, 0.668229,
		-0.967883, 0.064535, 0.242977,
		42.449669, 33.991112, 35.236542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682842, 33.628006, 34.706455>,  <43.127186, 33.945938, 35.066460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682842, 33.628006, 34.706455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008488, 33.620041, 34.938602>,  <44.203876, 33.615261, 35.077888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008488, 33.620041, 34.938602>,  <43.682842, 33.628006, 34.706455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008488, 33.620041, 34.938602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449585, 0.654172, -0.608221,
		-0.367550, 0.756084, 0.541521,
		0.814114, -0.019908, 0.580364,
		44.252724, 33.614067, 35.112713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837299, 34.232456, 34.725456>,  <43.682842, 33.628006, 34.706455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837299, 34.232456, 34.725456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.176350, 34.031891, 34.794865>,  <44.379780, 33.911552, 34.836510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.176350, 34.031891, 34.794865>,  <43.837299, 34.232456, 34.725456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176350, 34.031891, 34.794865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468016, 0.552478, -0.689731,
		0.249975, 0.665846, 0.702966,
		0.847628, -0.501415, 0.173521,
		44.430637, 33.881466, 34.846920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314976, 34.765434, 34.859028>,  <43.837299, 34.232456, 34.725456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314976, 34.765434, 34.859028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496223, 34.430851, 34.735725>,  <44.604973, 34.230103, 34.661743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496223, 34.430851, 34.735725>,  <44.314976, 34.765434, 34.859028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496223, 34.430851, 34.735725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517909, 0.528459, -0.672682,
		0.725568, 0.145161, 0.672666,
		0.453124, -0.836456, -0.308253,
		44.632160, 34.179913, 34.643250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957634, 34.921295, 34.867985>,  <44.314976, 34.765434, 34.859028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957634, 34.921295, 34.867985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918198, 34.603287, 34.628578>,  <44.894535, 34.412483, 34.484932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918198, 34.603287, 34.628578>,  <44.957634, 34.921295, 34.867985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918198, 34.603287, 34.628578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554532, 0.455519, -0.696418,
		0.826301, -0.400561, 0.395951,
		-0.098595, -0.795018, -0.598520,
		44.888618, 34.364780, 34.449024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545170, 34.794621, 34.517067>,  <44.957634, 34.921295, 34.867985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545170, 34.794621, 34.517067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335136, 34.568512, 34.262585>,  <45.209114, 34.432846, 34.109898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335136, 34.568512, 34.262585>,  <45.545170, 34.794621, 34.517067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335136, 34.568512, 34.262585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356312, 0.532861, -0.767529,
		0.772868, -0.629707, -0.078388,
		-0.525088, -0.565268, -0.636203,
		45.177608, 34.398933, 34.071724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990089, 34.433338, 33.952225>,  <45.545170, 34.794621, 34.517067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990089, 34.433338, 33.952225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623043, 34.490307, 33.803795>,  <45.402817, 34.524487, 33.714737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623043, 34.490307, 33.803795>,  <45.990089, 34.433338, 33.952225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623043, 34.490307, 33.803795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386905, 0.533864, -0.751860,
		0.091024, -0.833490, -0.544985,
		-0.917616, 0.142421, -0.371076,
		45.347759, 34.533031, 33.692471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062057, 34.495148, 33.238876>,  <45.990089, 34.433338, 33.952225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062057, 34.495148, 33.238876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.697582, 34.647385, 33.301983>,  <45.478897, 34.738728, 33.339848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.697582, 34.647385, 33.301983>,  <46.062057, 34.495148, 33.238876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697582, 34.647385, 33.301983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059177, 0.499860, -0.864082,
		-0.407727, -0.778002, -0.477987,
		-0.911184, 0.380595, 0.157767,
		45.424229, 34.761562, 33.349312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729248, 34.404869, 32.548862>,  <46.062057, 34.495148, 33.238876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729248, 34.404869, 32.548862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532974, 34.684788, 32.756523>,  <45.415211, 34.852737, 32.881119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532974, 34.684788, 32.756523>,  <45.729248, 34.404869, 32.548862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532974, 34.684788, 32.756523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021113, 0.586086, -0.809974,
		-0.871083, -0.408400, -0.272807,
		-0.490681, 0.699795, 0.519152,
		45.385769, 34.894726, 32.912270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299587, 34.641445, 32.059540>,  <45.729248, 34.404869, 32.548862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299587, 34.641445, 32.059540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293713, 34.930923, 32.335526>,  <45.290188, 35.104610, 32.501118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293713, 34.930923, 32.335526>,  <45.299587, 34.641445, 32.059540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293713, 34.930923, 32.335526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112208, 0.684488, -0.720337,
		-0.993576, -0.087999, 0.071151,
		-0.014687, 0.723693, 0.689966,
		45.289307, 35.148033, 32.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621979, 34.887676, 32.067566>,  <45.299587, 34.641445, 32.059540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621979, 34.887676, 32.067566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.852589, 35.185997, 32.201073>,  <44.990955, 35.364990, 32.281178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.852589, 35.185997, 32.201073>,  <44.621979, 34.887676, 32.067566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852589, 35.185997, 32.201073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343466, 0.591850, -0.729208,
		-0.741386, 0.305765, 0.597372,
		0.576522, 0.745802, 0.333770,
		45.025547, 35.409737, 32.301205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159138, 35.421684, 31.891384>,  <44.621979, 34.887676, 32.067566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159138, 35.421684, 31.891384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518345, 35.581367, 31.965355>,  <44.733868, 35.677177, 32.009739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518345, 35.581367, 31.965355>,  <44.159138, 35.421684, 31.891384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518345, 35.581367, 31.965355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122048, 0.629875, -0.767047,
		-0.422692, 0.666252, 0.614361,
		0.898018, 0.399207, 0.184928,
		44.787750, 35.701130, 32.020832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954514, 36.128872, 31.883171>,  <44.159138, 35.421684, 31.891384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954514, 36.128872, 31.883171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348942, 36.115856, 31.817924>,  <44.585598, 36.108047, 31.778776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348942, 36.115856, 31.817924>,  <43.954514, 36.128872, 31.883171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348942, 36.115856, 31.817924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108109, 0.619886, -0.777209,
		0.126408, 0.784016, 0.607733,
		0.986070, -0.032544, -0.163118,
		44.644764, 36.106094, 31.768990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201469, 36.771763, 32.041012>,  <43.954514, 36.128872, 31.883171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201469, 36.771763, 32.041012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480579, 36.619213, 31.798470>,  <44.648045, 36.527683, 31.652945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480579, 36.619213, 31.798470>,  <44.201469, 36.771763, 32.041012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480579, 36.619213, 31.798470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226127, 0.685930, -0.691641,
		0.679693, 0.619720, 0.392383,
		0.697771, -0.381375, -0.606357,
		44.689911, 36.504799, 31.616562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530212, 37.395027, 31.763546>,  <44.201469, 36.771763, 32.041012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530212, 37.395027, 31.763546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626770, 37.088451, 31.525454>,  <44.684704, 36.904507, 31.382597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626770, 37.088451, 31.525454>,  <44.530212, 37.395027, 31.763546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626770, 37.088451, 31.525454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050670, 0.602580, -0.796449,
		0.969103, 0.222418, 0.106624,
		0.241394, -0.766438, -0.595232,
		44.699188, 36.858521, 31.346884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028080, 37.806122, 31.207104>,  <44.530212, 37.395027, 31.763546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028080, 37.806122, 31.207104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871735, 37.472282, 31.051838>,  <44.777927, 37.271980, 30.958679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871735, 37.472282, 31.051838>,  <45.028080, 37.806122, 31.207104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871735, 37.472282, 31.051838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184228, 0.484112, -0.855392,
		0.901823, -0.262832, -0.342978,
		-0.390865, -0.834599, -0.388162,
		44.754475, 37.221901, 30.935389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225441, 37.874538, 30.543560>,  <45.028080, 37.806122, 31.207104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225441, 37.874538, 30.543560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921169, 37.614933, 30.548365>,  <44.738605, 37.459167, 30.551249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921169, 37.614933, 30.548365>,  <45.225441, 37.874538, 30.543560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921169, 37.614933, 30.548365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394898, 0.447995, -0.802095,
		0.515192, -0.614880, -0.597076,
		-0.760679, -0.649017, 0.012011,
		44.692966, 37.420227, 30.551970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196049, 37.547611, 29.937479>,  <45.225441, 37.874538, 30.543560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196049, 37.547611, 29.937479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822388, 37.486984, 30.066717>,  <44.598190, 37.450607, 30.144260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822388, 37.486984, 30.066717>,  <45.196049, 37.547611, 29.937479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822388, 37.486984, 30.066717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356882, 0.398778, -0.844755,
		-0.000804, -0.904435, -0.426611,
		-0.934149, -0.151571, 0.323097,
		44.542145, 37.441513, 30.163647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740891, 37.365414, 29.309626>,  <45.196049, 37.547611, 29.937479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740891, 37.365414, 29.309626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474174, 37.469841, 29.588833>,  <44.314144, 37.532497, 29.756357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474174, 37.469841, 29.588833>,  <44.740891, 37.365414, 29.309626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474174, 37.469841, 29.588833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509815, 0.523378, -0.682761,
		-0.543578, -0.811121, -0.215886,
		-0.666792, 0.261072, 0.698019,
		44.274136, 37.548164, 29.798239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162006, 37.386879, 28.968168>,  <44.740891, 37.365414, 29.309626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162006, 37.386879, 28.968168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095650, 37.620010, 29.286362>,  <44.055836, 37.759888, 29.477278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095650, 37.620010, 29.286362>,  <44.162006, 37.386879, 28.968168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095650, 37.620010, 29.286362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468005, 0.663502, -0.583727,
		-0.868017, -0.469123, 0.162700,
		-0.165887, 0.582829, 0.795482,
		44.045883, 37.794861, 29.525007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484402, 37.626453, 28.950947>,  <44.162006, 37.386879, 28.968168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484402, 37.626453, 28.950947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653183, 37.883644, 29.206615>,  <43.754452, 38.037956, 29.360018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653183, 37.883644, 29.206615>,  <43.484402, 37.626453, 28.950947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653183, 37.883644, 29.206615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580942, 0.733004, -0.353853,
		-0.696034, -0.222014, 0.682822,
		0.421951, 0.642974, 0.639173,
		43.779770, 38.076538, 29.398367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002899, 37.857449, 29.238586>,  <43.484402, 37.626453, 28.950947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002899, 37.857449, 29.238586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286560, 38.132847, 29.299347>,  <43.456757, 38.298084, 29.335804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286560, 38.132847, 29.299347>,  <43.002899, 37.857449, 29.238586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286560, 38.132847, 29.299347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616856, 0.710214, -0.339242,
		-0.341448, 0.146874, 0.928354,
		0.709156, 0.688494, 0.151901,
		43.499306, 38.339394, 29.344917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.792168, 34.997673, 41.135590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671402, 34.624725, 41.056061>,  <33.598942, 34.400955, 41.008343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671402, 34.624725, 41.056061>,  <33.792168, 34.997673, 41.135590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671402, 34.624725, 41.056061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242935, 0.126420, -0.961769,
		0.921862, -0.338673, 0.188337,
		-0.301916, -0.932372, -0.198818,
		33.580826, 34.345013, 40.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302162, 34.722179, 40.728081>,  <33.792168, 34.997673, 41.135590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302162, 34.722179, 40.728081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980896, 34.496483, 40.651604>,  <33.788136, 34.361065, 40.605717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980896, 34.496483, 40.651604>,  <34.302162, 34.722179, 40.728081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980896, 34.496483, 40.651604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212747, 0.028115, -0.976703,
		0.556469, -0.825132, 0.097459,
		-0.803169, -0.564239, -0.191189,
		33.739944, 34.327209, 40.594246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523121, 34.181271, 40.196281>,  <34.302162, 34.722179, 40.728081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523121, 34.181271, 40.196281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124210, 34.187702, 40.167484>,  <33.884865, 34.191563, 40.150208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124210, 34.187702, 40.167484>,  <34.523121, 34.181271, 40.196281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124210, 34.187702, 40.167484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071011, -0.054958, -0.995960,
		-0.019966, -0.998359, 0.053666,
		-0.997275, 0.016074, -0.071992,
		33.825027, 34.192528, 40.145885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356270, 33.695950, 39.711040>,  <34.523121, 34.181271, 40.196281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356270, 33.695950, 39.711040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051407, 33.954556, 39.724449>,  <33.868488, 34.109718, 39.732494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051407, 33.954556, 39.724449>,  <34.356270, 33.695950, 39.711040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051407, 33.954556, 39.724449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061501, -0.020755, -0.997891,
		-0.644459, -0.762616, 0.055580,
		-0.762161, 0.646519, 0.033526,
		33.822758, 34.148510, 39.734509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903542, 33.394951, 39.301193>,  <34.356270, 33.695950, 39.711040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903542, 33.394951, 39.301193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810905, 33.784019, 39.307812>,  <33.755322, 34.017460, 39.311783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810905, 33.784019, 39.307812>,  <33.903542, 33.394951, 39.301193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810905, 33.784019, 39.307812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059689, 0.031185, -0.997730,
		-0.970980, -0.230081, -0.065280,
		-0.231594, 0.972672, 0.016546,
		33.741428, 34.075821, 39.312775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385525, 33.382027, 38.870190>,  <33.903542, 33.394951, 39.301193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385525, 33.382027, 38.870190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497337, 33.766075, 38.872089>,  <33.564426, 33.996506, 38.873230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497337, 33.766075, 38.872089>,  <33.385525, 33.382027, 38.870190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497337, 33.766075, 38.872089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067000, -0.014575, -0.997647,
		-0.957796, 0.279193, -0.068402,
		0.279533, 0.960124, 0.004746,
		33.581196, 34.054111, 38.873512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185272, 33.587727, 38.260853>,  <33.385525, 33.382027, 38.870190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185272, 33.587727, 38.260853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449215, 33.871147, 38.360889>,  <33.607582, 34.041199, 38.420910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449215, 33.871147, 38.360889>,  <33.185272, 33.587727, 38.260853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449215, 33.871147, 38.360889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222315, 0.133837, -0.965745,
		-0.717748, 0.692855, -0.069207,
		0.659859, 0.708548, 0.250093,
		33.647171, 34.083710, 38.435917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942242, 34.189537, 37.849571>,  <33.185272, 33.587727, 38.260853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942242, 34.189537, 37.849571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328739, 34.230377, 37.944191>,  <33.560638, 34.254879, 38.000961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328739, 34.230377, 37.944191>,  <32.942242, 34.189537, 37.849571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328739, 34.230377, 37.944191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223881, 0.121641, -0.966996,
		-0.127500, 0.987309, 0.094677,
		0.966241, 0.102096, 0.236549,
		33.618610, 34.261005, 38.015156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120712, 34.526295, 37.303387>,  <32.942242, 34.189537, 37.849571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120712, 34.526295, 37.303387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483494, 34.426235, 37.438946>,  <33.701164, 34.366199, 37.520283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483494, 34.426235, 37.438946>,  <33.120712, 34.526295, 37.303387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483494, 34.426235, 37.438946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385638, 0.169448, -0.906957,
		0.169448, 0.953264, 0.250149,
		0.906957, -0.250149, 0.338902,
		33.755581, 34.351189, 37.540615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592766, 35.036179, 37.111984>,  <33.120712, 34.526295, 37.303387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592766, 35.036179, 37.111984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797417, 34.694565, 37.149624>,  <33.920208, 34.489597, 37.172207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797417, 34.694565, 37.149624>,  <33.592766, 35.036179, 37.111984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797417, 34.694565, 37.149624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296654, 0.072802, -0.952206,
		0.806370, 0.515090, 0.290601,
		0.511628, -0.854039, 0.094098,
		33.950905, 34.438354, 37.177853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230145, 35.158314, 36.853085>,  <33.592766, 35.036179, 37.111984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230145, 35.158314, 36.853085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202579, 34.759312, 36.847019>,  <34.186039, 34.519909, 36.843380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202579, 34.759312, 36.847019>,  <34.230145, 35.158314, 36.853085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202579, 34.759312, 36.847019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404048, -0.014007, -0.914631,
		0.912138, -0.069158, 0.404006,
		-0.068913, -0.997507, -0.015167,
		34.181904, 34.460060, 36.842468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856968, 34.939022, 36.534039>,  <34.230145, 35.158314, 36.853085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856968, 34.939022, 36.534039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588039, 34.644459, 36.503883>,  <34.426682, 34.467720, 36.485790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588039, 34.644459, 36.503883>,  <34.856968, 34.939022, 36.534039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588039, 34.644459, 36.503883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318107, -0.195459, -0.927687,
		0.668423, -0.647686, 0.365669,
		-0.672323, -0.736409, -0.075385,
		34.386341, 34.423534, 36.481270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604862, 34.836090, 36.459126>,  <34.856968, 34.939022, 36.534039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604862, 34.836090, 36.459126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531971, 35.193645, 36.295292>,  <35.488235, 35.408176, 36.196991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531971, 35.193645, 36.295292>,  <35.604862, 34.836090, 36.459126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531971, 35.193645, 36.295292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183346, -0.440145, -0.879009,
		-0.966011, -0.085083, 0.244097,
		-0.182227, 0.893886, -0.409585,
		35.477303, 35.461811, 36.172417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327045, 34.899605, 36.193806>,  <35.604862, 34.836090, 36.459126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327045, 34.899605, 36.193806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632809, 34.669983, 36.076408>,  <36.816265, 34.532207, 36.005970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632809, 34.669983, 36.076408>,  <36.327045, 34.899605, 36.193806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632809, 34.669983, 36.076408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386038, -0.772117, 0.504787,
		-0.516387, -0.272565, -0.811821,
		0.764408, -0.574059, -0.293490,
		36.862129, 34.497765, 35.988361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038033, 34.202168, 36.037437>,  <36.327045, 34.899605, 36.193806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038033, 34.202168, 36.037437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424152, 34.142036, 36.122856>,  <36.655823, 34.105957, 36.174107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424152, 34.142036, 36.122856>,  <36.038033, 34.202168, 36.037437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424152, 34.142036, 36.122856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259288, -0.649137, 0.715116,
		0.031120, -0.745670, -0.665589,
		0.965298, -0.150325, 0.213545,
		36.713741, 34.096939, 36.186920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094307, 33.453842, 36.112041>,  <36.038033, 34.202168, 36.037437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094307, 33.453842, 36.112041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419300, 33.608593, 36.286488>,  <36.614296, 33.701443, 36.391155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419300, 33.608593, 36.286488>,  <36.094307, 33.453842, 36.112041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419300, 33.608593, 36.286488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267385, -0.417459, 0.868466,
		0.518047, -0.822226, -0.235734,
		0.812485, 0.386875, 0.436115,
		36.663044, 33.724655, 36.417320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422955, 32.825409, 36.408146>,  <36.094307, 33.453842, 36.112041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422955, 32.825409, 36.408146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568764, 33.152748, 36.585880>,  <36.656250, 33.349152, 36.692520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568764, 33.152748, 36.585880>,  <36.422955, 32.825409, 36.408146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568764, 33.152748, 36.585880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193083, -0.400375, 0.895778,
		0.910956, -0.412327, 0.012062,
		0.364525, 0.818343, 0.444338,
		36.678120, 33.398251, 36.719181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050453, 32.561279, 36.973717>,  <36.422955, 32.825409, 36.408146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050453, 32.561279, 36.973717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906475, 32.925262, 37.056103>,  <36.820087, 33.143650, 37.105534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906475, 32.925262, 37.056103>,  <37.050453, 32.561279, 36.973717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906475, 32.925262, 37.056103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169089, -0.280728, 0.944776,
		0.917522, 0.305243, 0.254910,
		-0.359947, 0.909955, 0.205961,
		36.798492, 33.198250, 37.117889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347672, 32.847862, 37.612495>,  <37.050453, 32.561279, 36.973717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347672, 32.847862, 37.612495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000881, 33.045647, 37.587635>,  <36.792809, 33.164318, 37.572720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000881, 33.045647, 37.587635>,  <37.347672, 32.847862, 37.612495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000881, 33.045647, 37.587635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218773, -0.265565, 0.938943,
		0.447766, 0.827636, 0.338413,
		-0.866974, 0.494463, -0.062154,
		36.740788, 33.193985, 37.568989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313023, 33.070473, 38.244545>,  <37.347672, 32.847862, 37.612495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313023, 33.070473, 38.244545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951328, 33.190605, 38.123116>,  <36.734310, 33.262684, 38.050259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951328, 33.190605, 38.123116>,  <37.313023, 33.070473, 38.244545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951328, 33.190605, 38.123116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356685, -0.140299, 0.923630,
		0.234803, 0.943461, 0.233986,
		-0.904236, 0.300330, -0.303576,
		36.680058, 33.280704, 38.032043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068493, 33.577732, 38.720379>,  <37.313023, 33.070473, 38.244545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068493, 33.577732, 38.720379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734463, 33.431721, 38.555744>,  <36.534042, 33.344112, 38.456963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734463, 33.431721, 38.555744>,  <37.068493, 33.577732, 38.720379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734463, 33.431721, 38.555744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381700, -0.154326, 0.911312,
		-0.396171, 0.918117, -0.010457,
		-0.835077, -0.365027, -0.411585,
		36.483940, 33.322212, 38.432270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602783, 33.790230, 39.148483>,  <37.068493, 33.577732, 38.720379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602783, 33.790230, 39.148483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412769, 33.496990, 38.953789>,  <36.298763, 33.321045, 38.836971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412769, 33.496990, 38.953789>,  <36.602783, 33.790230, 39.148483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412769, 33.496990, 38.953789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488403, -0.240460, 0.838833,
		-0.731988, 0.636195, -0.243822,
		-0.475032, -0.733100, -0.486733,
		36.270260, 33.277061, 38.807770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878719, 33.847038, 39.360687>,  <36.602783, 33.790230, 39.148483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878719, 33.847038, 39.360687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950264, 33.481709, 39.214348>,  <35.993191, 33.262508, 39.126545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950264, 33.481709, 39.214348>,  <35.878719, 33.847038, 39.360687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950264, 33.481709, 39.214348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355896, -0.406722, 0.841377,
		-0.917250, -0.020286, -0.397796,
		0.178861, -0.913327, -0.365846,
		36.003922, 33.207710, 39.104595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259445, 33.517319, 39.402966>,  <35.878719, 33.847038, 39.360687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259445, 33.517319, 39.402966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553249, 33.246014, 39.394409>,  <35.729530, 33.083233, 39.389275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553249, 33.246014, 39.394409>,  <35.259445, 33.517319, 39.402966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553249, 33.246014, 39.394409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326635, -0.381000, 0.864956,
		-0.594815, -0.628332, -0.501392,
		0.734509, -0.678261, -0.021390,
		35.773602, 33.042534, 39.387993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873077, 32.877064, 39.493053>,  <35.259445, 33.517319, 39.402966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873077, 32.877064, 39.493053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251850, 32.814083, 39.605148>,  <35.479115, 32.776295, 39.672405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251850, 32.814083, 39.605148>,  <34.873077, 32.877064, 39.493053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251850, 32.814083, 39.605148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319863, -0.375291, 0.869968,
		-0.031804, -0.913437, -0.405736,
		0.946930, -0.157448, 0.280239,
		35.535931, 32.766850, 39.689220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815422, 32.250320, 40.011173>,  <34.873077, 32.877064, 39.493053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815422, 32.250320, 40.011173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201378, 32.343479, 40.059742>,  <35.432953, 32.399376, 40.088882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201378, 32.343479, 40.059742>,  <34.815422, 32.250320, 40.011173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201378, 32.343479, 40.059742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057264, -0.264639, 0.962646,
		0.256336, -0.935801, -0.242011,
		0.964890, 0.232902, 0.121425,
		35.490845, 32.413349, 40.096169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277786, 31.628016, 40.298912>,  <34.815422, 32.250320, 40.011173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277786, 31.628016, 40.298912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410213, 31.988811, 40.409767>,  <35.489670, 32.205288, 40.476280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410213, 31.988811, 40.409767>,  <35.277786, 31.628016, 40.298912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410213, 31.988811, 40.409767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043104, -0.278940, 0.959341,
		0.942621, -0.329557, -0.053470,
		0.331072, 0.901990, 0.277139,
		35.509537, 32.259407, 40.492908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656513, 31.431473, 40.823227>,  <35.277786, 31.628016, 40.298912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656513, 31.431473, 40.823227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617863, 31.827618, 40.862911>,  <35.594673, 32.065304, 40.886723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617863, 31.827618, 40.862911>,  <35.656513, 31.431473, 40.823227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617863, 31.827618, 40.862911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194726, -0.116556, 0.973908,
		0.976087, 0.074786, 0.204112,
		-0.096625, 0.990365, 0.099206,
		35.588875, 32.124725, 40.892673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893673, 30.748178, 40.602596>,  <35.656513, 31.431473, 40.823227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893673, 30.748178, 40.602596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588737, 30.491039, 40.632500>,  <35.405777, 30.336756, 40.650440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588737, 30.491039, 40.632500>,  <35.893673, 30.748178, 40.602596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588737, 30.491039, 40.632500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086789, -0.012918, -0.996143,
		0.641336, -0.765883, -0.045944,
		-0.762335, -0.642850, 0.074755,
		35.360035, 30.298183, 40.654926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052769, 30.235001, 40.039009>,  <35.893673, 30.748178, 40.602596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052769, 30.235001, 40.039009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662109, 30.203846, 40.119091>,  <35.427711, 30.185154, 40.167141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662109, 30.203846, 40.119091>,  <36.052769, 30.235001, 40.039009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662109, 30.203846, 40.119091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159777, -0.359599, -0.919326,
		0.143598, -0.929851, 0.338759,
		-0.976653, -0.077887, 0.200206,
		35.369114, 30.180479, 40.179153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911854, 29.661924, 39.758068>,  <36.052769, 30.235001, 40.039009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911854, 29.661924, 39.758068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555634, 29.838219, 39.803108>,  <35.341904, 29.943996, 39.830132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555634, 29.838219, 39.803108>,  <35.911854, 29.661924, 39.758068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555634, 29.838219, 39.803108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208521, -0.175533, -0.962137,
		-0.404286, -0.880306, 0.248223,
		-0.890546, 0.440738, 0.112597,
		35.288471, 29.970440, 39.836887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461620, 29.137831, 39.406372>,  <35.911854, 29.661924, 39.758068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461620, 29.137831, 39.406372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290604, 29.498018, 39.438278>,  <35.187996, 29.714130, 39.457424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290604, 29.498018, 39.438278>,  <35.461620, 29.137831, 39.406372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290604, 29.498018, 39.438278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230505, -0.023269, -0.972793,
		-0.874115, -0.434294, 0.217511,
		-0.427539, 0.900470, 0.079767,
		35.162342, 29.768160, 39.462208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742756, 29.149357, 39.045353>,  <35.461620, 29.137831, 39.406372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742756, 29.149357, 39.045353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846210, 29.535694, 39.051666>,  <34.908283, 29.767496, 39.055454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846210, 29.535694, 39.051666>,  <34.742756, 29.149357, 39.045353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846210, 29.535694, 39.051666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352595, 0.109603, -0.929335,
		-0.899323, 0.234800, 0.368900,
		0.258640, 0.965845, 0.015779,
		34.923801, 29.825447, 39.056400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189091, 29.478186, 38.684570>,  <34.742756, 29.149357, 39.045353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189091, 29.478186, 38.684570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473686, 29.759190, 38.691055>,  <34.644444, 29.927792, 38.694946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473686, 29.759190, 38.691055>,  <34.189091, 29.478186, 38.684570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473686, 29.759190, 38.691055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251199, 0.275816, -0.927806,
		-0.656264, 0.656052, 0.372711,
		0.711489, 0.702510, 0.016208,
		34.687134, 29.969942, 38.695919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915031, 29.951715, 38.176003>,  <34.189091, 29.478186, 38.684570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915031, 29.951715, 38.176003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306385, 30.027391, 38.209393>,  <34.541199, 30.072798, 38.229427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306385, 30.027391, 38.209393>,  <33.915031, 29.951715, 38.176003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306385, 30.027391, 38.209393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050605, 0.172356, -0.983734,
		-0.200501, 0.966696, 0.159057,
		0.978386, 0.189190, 0.083477,
		34.599899, 30.084148, 38.234436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907330, 30.617491, 38.098003>,  <33.915031, 29.951715, 38.176003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907330, 30.617491, 38.098003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262814, 30.460964, 38.002445>,  <34.476105, 30.367048, 37.945110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262814, 30.460964, 38.002445>,  <33.907330, 30.617491, 38.098003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262814, 30.460964, 38.002445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126911, 0.290742, -0.948347,
		0.440563, 0.873121, 0.208722,
		0.888706, -0.391317, -0.238899,
		34.529427, 30.343569, 37.930775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299042, 31.174074, 37.851147>,  <33.907330, 30.617491, 38.098003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299042, 31.174074, 37.851147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469067, 30.833416, 37.728497>,  <34.571079, 30.629021, 37.654907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469067, 30.833416, 37.728497>,  <34.299042, 31.174074, 37.851147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469067, 30.833416, 37.728497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078479, 0.302805, -0.949816,
		0.901757, 0.427793, 0.061874,
		0.425060, -0.851647, -0.306629,
		34.596584, 30.577923, 37.636509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835461, 31.411932, 37.356346>,  <34.299042, 31.174074, 37.851147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835461, 31.411932, 37.356346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757992, 31.030628, 37.263580>,  <34.711510, 30.801846, 37.207920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757992, 31.030628, 37.263580>,  <34.835461, 31.411932, 37.356346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757992, 31.030628, 37.263580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016168, 0.239463, -0.970771,
		0.980933, -0.184264, -0.061790,
		-0.193675, -0.953260, -0.231918,
		34.699890, 30.744650, 37.194004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243553, 31.246983, 36.816498>,  <34.835461, 31.411932, 37.356346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243553, 31.246983, 36.816498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950417, 30.976213, 36.789047>,  <34.774532, 30.813751, 36.772575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950417, 30.976213, 36.789047>,  <35.243553, 31.246983, 36.816498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950417, 30.976213, 36.789047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051701, 0.155972, -0.986408,
		0.678428, -0.719337, -0.149301,
		-0.732846, -0.676925, -0.068625,
		34.730564, 30.773136, 36.768459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527565, 30.850334, 36.320190>,  <35.243553, 31.246983, 36.816498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527565, 30.850334, 36.320190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130596, 30.808851, 36.346577>,  <34.892414, 30.783962, 36.362408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130596, 30.808851, 36.346577>,  <35.527565, 30.850334, 36.320190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130596, 30.808851, 36.346577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071699, 0.052542, -0.996041,
		0.099834, -0.993219, -0.059579,
		-0.992418, -0.103711, 0.065967,
		34.832870, 30.777739, 36.366367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.439552, 28.570467, 43.980522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641056, 28.801630, 44.237350>,  <36.761959, 28.940327, 44.391445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641056, 28.801630, 44.237350>,  <36.439552, 28.570467, 43.980522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641056, 28.801630, 44.237350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761912, -0.053013, 0.645507,
		0.407080, -0.814380, 0.413608,
		0.503761, 0.577906, 0.642067,
		36.792183, 28.975002, 44.429970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782845, 28.850449, 43.722023>,  <36.439552, 28.570467, 43.980522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782845, 28.850449, 43.722023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.452190, 29.072992, 43.755825>,  <35.253799, 29.206518, 43.776108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.452190, 29.072992, 43.755825>,  <35.782845, 28.850449, 43.722023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452190, 29.072992, 43.755825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057454, 0.065943, -0.996168,
		-0.559800, -0.828321, -0.022546,
		-0.826634, 0.556359, 0.084505,
		35.204201, 29.239901, 43.781178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220474, 28.543745, 43.335777>,  <35.782845, 28.850449, 43.722023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220474, 28.543745, 43.335777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135918, 28.932404, 43.378136>,  <35.085182, 29.165598, 43.403553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135918, 28.932404, 43.378136>,  <35.220474, 28.543745, 43.335777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135918, 28.932404, 43.378136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017888, 0.104484, -0.994366,
		-0.977237, -0.212099, -0.004706,
		-0.211395, 0.971647, 0.105900,
		35.072498, 29.223898, 43.409904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542675, 28.649960, 43.047413>,  <35.220474, 28.543745, 43.335777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542675, 28.649960, 43.047413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768459, 28.979893, 43.034565>,  <34.903931, 29.177853, 43.026855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768459, 28.979893, 43.034565>,  <34.542675, 28.649960, 43.047413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768459, 28.979893, 43.034565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228390, 0.118672, -0.966310,
		-0.793235, 0.552779, 0.255370,
		0.564461, 0.824835, -0.032115,
		34.937798, 29.227343, 43.024929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198582, 28.979990, 42.576080>,  <34.542675, 28.649960, 43.047413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198582, 28.979990, 42.576080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525543, 29.208401, 42.606487>,  <34.721722, 29.345448, 42.624733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525543, 29.208401, 42.606487>,  <34.198582, 28.979990, 42.576080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525543, 29.208401, 42.606487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112250, 0.287316, -0.951236,
		-0.565023, 0.769010, 0.298951,
		0.817404, 0.571028, 0.076019,
		34.770763, 29.379709, 42.629292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072552, 29.648140, 42.151531>,  <34.198582, 28.979990, 42.576080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072552, 29.648140, 42.151531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471684, 29.643894, 42.177536>,  <34.711163, 29.641348, 42.193138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471684, 29.643894, 42.177536>,  <34.072552, 29.648140, 42.151531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471684, 29.643894, 42.177536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064397, 0.364710, -0.928892,
		-0.013851, 0.931061, 0.364601,
		0.997828, -0.010613, 0.065009,
		34.771030, 29.640711, 42.197041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377918, 30.385359, 41.964111>,  <34.072552, 29.648140, 42.151531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377918, 30.385359, 41.964111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.675488, 30.125074, 41.903248>,  <34.854027, 29.968903, 41.866730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.675488, 30.125074, 41.903248>,  <34.377918, 30.385359, 41.964111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675488, 30.125074, 41.903248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026142, 0.255860, -0.966360,
		0.667756, 0.714918, 0.207350,
		0.743921, -0.650713, -0.152163,
		34.898663, 29.929861, 41.857597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736374, 30.854521, 41.654194>,  <34.377918, 30.385359, 41.964111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736374, 30.854521, 41.654194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897289, 30.496368, 41.577812>,  <34.993839, 30.281477, 41.531982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897289, 30.496368, 41.577812>,  <34.736374, 30.854521, 41.654194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897289, 30.496368, 41.577812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183417, 0.283166, -0.941369,
		0.896953, 0.343675, 0.278142,
		0.402285, -0.895380, -0.190950,
		35.017975, 30.227755, 41.520527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315029, 31.032639, 41.310322>,  <34.736374, 30.854521, 41.654194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315029, 31.032639, 41.310322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220108, 30.655260, 41.217716>,  <35.163155, 30.428833, 41.162151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220108, 30.655260, 41.217716>,  <35.315029, 31.032639, 41.310322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220108, 30.655260, 41.217716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336458, 0.143749, -0.930662,
		0.911308, -0.298746, 0.283317,
		-0.237305, -0.943444, -0.231515,
		35.148918, 30.372227, 41.148262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935947, 31.519894, 41.543350>,  <35.315029, 31.032639, 41.310322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935947, 31.519894, 41.543350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762928, 31.875002, 41.480400>,  <35.659115, 32.088066, 41.442631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762928, 31.875002, 41.480400>,  <35.935947, 31.519894, 41.543350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762928, 31.875002, 41.480400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103564, 0.124469, 0.986804,
		0.895643, 0.443138, 0.038102,
		-0.432548, 0.887770, -0.157373,
		35.633163, 32.141335, 41.433189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363010, 32.038109, 41.875324>,  <35.935947, 31.519894, 41.543350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363010, 32.038109, 41.875324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981102, 32.149670, 41.834091>,  <35.751957, 32.216606, 41.809353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981102, 32.149670, 41.834091>,  <36.363010, 32.038109, 41.875324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981102, 32.149670, 41.834091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046301, 0.202996, 0.978084,
		0.293717, 0.938619, -0.180901,
		-0.954770, 0.278904, -0.103083,
		35.694672, 32.233341, 41.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204174, 32.258739, 42.487713>,  <36.363010, 32.038109, 41.875324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204174, 32.258739, 42.487713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832291, 32.280731, 42.342049>,  <35.609161, 32.293926, 42.254650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832291, 32.280731, 42.342049>,  <36.204174, 32.258739, 42.487713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832291, 32.280731, 42.342049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327956, 0.326331, 0.886540,
		0.167581, 0.943655, -0.285362,
		-0.929711, 0.054981, -0.364164,
		35.553379, 32.297226, 42.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913597, 32.925735, 42.660641>,  <36.204174, 32.258739, 42.487713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913597, 32.925735, 42.660641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.631741, 32.650471, 42.591461>,  <35.462627, 32.485313, 42.549953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.631741, 32.650471, 42.591461>,  <35.913597, 32.925735, 42.660641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631741, 32.650471, 42.591461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404850, 0.189739, 0.894481,
		-0.582730, 0.700310, -0.412301,
		-0.704643, -0.688161, -0.172953,
		35.420349, 32.444023, 42.539574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292828, 33.238670, 42.860435>,  <35.913597, 32.925735, 42.660641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292828, 33.238670, 42.860435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257191, 32.840481, 42.873619>,  <35.235809, 32.601566, 42.881531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257191, 32.840481, 42.873619>,  <35.292828, 33.238670, 42.860435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257191, 32.840481, 42.873619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193919, 0.049797, 0.979753,
		-0.976964, 0.080897, -0.197478,
		-0.089093, -0.995478, 0.032962,
		35.230461, 32.541836, 42.883507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786201, 33.088333, 43.292389>,  <35.292828, 33.238670, 42.860435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786201, 33.088333, 43.292389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.977409, 32.737129, 43.282669>,  <35.092136, 32.526405, 43.276836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.977409, 32.737129, 43.282669>,  <34.786201, 33.088333, 43.292389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977409, 32.737129, 43.282669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056863, -0.058545, 0.996664,
		-0.876504, -0.475047, -0.077912,
		0.478024, -0.878011, -0.024302,
		35.120815, 32.473724, 43.275379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381561, 32.695480, 43.694820>,  <34.786201, 33.088333, 43.292389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381561, 32.695480, 43.694820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734055, 32.507256, 43.676952>,  <34.945549, 32.394321, 43.666233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734055, 32.507256, 43.676952>,  <34.381561, 32.695480, 43.694820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734055, 32.507256, 43.676952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006796, -0.081875, 0.996619,
		-0.472632, -0.878558, -0.068953,
		0.881234, -0.470566, -0.044667,
		34.998425, 32.366085, 43.663551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294262, 32.114220, 44.122250>,  <34.381561, 32.695480, 43.694820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294262, 32.114220, 44.122250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690910, 32.160732, 44.099728>,  <34.928898, 32.188641, 44.086212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690910, 32.160732, 44.099728>,  <34.294262, 32.114220, 44.122250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690910, 32.160732, 44.099728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062624, -0.051385, 0.996714,
		0.113007, -0.991886, -0.058237,
		0.991619, 0.116283, -0.056309,
		34.988396, 32.195618, 44.082836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496178, 31.508331, 44.378067>,  <34.294262, 32.114220, 44.122250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496178, 31.508331, 44.378067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744183, 31.819324, 44.420212>,  <34.892986, 32.005920, 44.445499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744183, 31.819324, 44.420212>,  <34.496178, 31.508331, 44.378067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744183, 31.819324, 44.420212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033471, -0.160376, 0.986488,
		0.783877, -0.608110, -0.125459,
		0.620014, 0.777485, 0.105361,
		34.930187, 32.052570, 44.451820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139866, 31.294127, 44.806091>,  <34.496178, 31.508331, 44.378067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139866, 31.294127, 44.806091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103218, 31.692114, 44.822304>,  <35.081230, 31.930906, 44.832031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103218, 31.692114, 44.822304>,  <35.139866, 31.294127, 44.806091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103218, 31.692114, 44.822304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021941, -0.042712, 0.998846,
		0.995552, 0.090625, 0.025744,
		-0.091620, 0.994969, 0.040533,
		35.075733, 31.990604, 44.834465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703442, 31.598406, 45.315186>,  <35.139866, 31.294127, 44.806091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703442, 31.598406, 45.315186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435398, 31.887896, 45.249241>,  <35.274570, 32.061588, 45.209675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435398, 31.887896, 45.249241>,  <35.703442, 31.598406, 45.315186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435398, 31.887896, 45.249241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145579, 0.089650, 0.985277,
		0.727847, 0.684243, 0.045284,
		-0.670109, 0.723723, -0.164863,
		35.234364, 32.105011, 45.199783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593960, 31.787365, 45.955765>,  <35.703442, 31.598406, 45.315186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593960, 31.787365, 45.955765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361168, 32.040092, 45.750980>,  <35.221493, 32.191730, 45.628109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361168, 32.040092, 45.750980>,  <35.593960, 31.787365, 45.955765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361168, 32.040092, 45.750980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170396, 0.520836, 0.836477,
		0.795150, 0.574050, -0.195457,
		-0.581981, 0.631820, -0.511959,
		35.186573, 32.229637, 45.597393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874588, 32.567528, 46.026169>,  <35.593960, 31.787365, 45.955765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874588, 32.567528, 46.026169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.486542, 32.486763, 45.972347>,  <35.253716, 32.438305, 45.940056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.486542, 32.486763, 45.972347>,  <35.874588, 32.567528, 46.026169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486542, 32.486763, 45.972347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198882, 0.344047, 0.917648,
		-0.138994, 0.916986, -0.373923,
		-0.970117, -0.201914, -0.134551,
		35.195507, 32.426189, 45.931980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484455, 33.185528, 46.103065>,  <35.874588, 32.567528, 46.026169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484455, 33.185528, 46.103065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237366, 32.879440, 46.175571>,  <35.089111, 32.695786, 46.219074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237366, 32.879440, 46.175571>,  <35.484455, 33.185528, 46.103065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237366, 32.879440, 46.175571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249989, 0.409620, 0.877335,
		-0.745605, 0.496635, -0.444328,
		-0.617721, -0.765223, 0.181261,
		35.052048, 32.649872, 46.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.808929, 29.258984, 44.866985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.200352, 29.341358, 44.868847>,  <27.435205, 29.390783, 44.869965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.200352, 29.341358, 44.868847>,  <26.808929, 29.258984, 44.866985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200352, 29.341358, 44.868847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056231, 0.288776, -0.955744,
		-0.198167, 0.934986, 0.294163,
		0.978554, 0.205938, 0.004651,
		27.493917, 29.403139, 44.870243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901419, 29.967213, 44.546207>,  <26.808929, 29.258984, 44.866985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901419, 29.967213, 44.546207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.267893, 29.811861, 44.506672>,  <27.487778, 29.718651, 44.482952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.267893, 29.811861, 44.506672>,  <26.901419, 29.967213, 44.546207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267893, 29.811861, 44.506672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012501, 0.274198, -0.961592,
		0.400563, 0.879760, 0.256071,
		0.916184, -0.388379, -0.098836,
		27.542747, 29.695347, 44.477020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292078, 30.513351, 44.260178>,  <26.901419, 29.967213, 44.546207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292078, 30.513351, 44.260178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.489325, 30.171078, 44.197392>,  <27.607674, 29.965714, 44.159721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.489325, 30.171078, 44.197392>,  <27.292078, 30.513351, 44.260178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489325, 30.171078, 44.197392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127575, 0.249604, -0.959908,
		0.860558, 0.453322, 0.232248,
		0.493118, -0.855685, -0.156966,
		27.637260, 29.914371, 44.150303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999882, 30.632444, 44.019131>,  <27.292078, 30.513351, 44.260178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999882, 30.632444, 44.019131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.934423, 30.252733, 43.911732>,  <27.895149, 30.024906, 43.847294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.934423, 30.252733, 43.911732>,  <27.999882, 30.632444, 44.019131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934423, 30.252733, 43.911732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384995, 0.189133, -0.903331,
		0.908295, -0.251195, 0.334517,
		-0.163644, -0.949278, -0.268498,
		27.885330, 29.967949, 43.831181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636766, 30.304733, 43.715611>,  <27.999882, 30.632444, 44.019131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636766, 30.304733, 43.715611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.323845, 30.104923, 43.566761>,  <28.136093, 29.985037, 43.477451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.323845, 30.104923, 43.566761>,  <28.636766, 30.304733, 43.715611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323845, 30.104923, 43.566761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308066, 0.208958, -0.928133,
		0.541385, -0.840720, -0.009582,
		-0.782302, -0.499526, -0.372125,
		28.089153, 29.955065, 43.455124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842258, 30.202877, 43.038872>,  <28.636766, 30.304733, 43.715611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842258, 30.202877, 43.038872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.454685, 30.115755, 42.991997>,  <28.222141, 30.063482, 42.963871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.454685, 30.115755, 42.991997>,  <28.842258, 30.202877, 43.038872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454685, 30.115755, 42.991997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052832, 0.280618, -0.958365,
		0.241618, -0.934781, -0.260393,
		-0.968932, -0.217801, -0.117189,
		28.164005, 30.050413, 42.956841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696552, 29.584761, 42.643784>,  <28.842258, 30.202877, 43.038872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696552, 29.584761, 42.643784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.388525, 29.837996, 42.612309>,  <28.203709, 29.989937, 42.593422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.388525, 29.837996, 42.612309>,  <28.696552, 29.584761, 42.643784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388525, 29.837996, 42.612309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131193, 0.036441, -0.990687,
		-0.624324, -0.773222, -0.111119,
		-0.770070, 0.633088, -0.078691,
		28.157503, 30.027922, 42.588703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448509, 29.446302, 41.980095>,  <28.696552, 29.584761, 42.643784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448509, 29.446302, 41.980095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.260057, 29.786600, 42.073284>,  <28.146986, 29.990778, 42.129196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.260057, 29.786600, 42.073284>,  <28.448509, 29.446302, 41.980095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260057, 29.786600, 42.073284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035035, 0.245861, -0.968672,
		-0.881369, -0.464531, -0.086026,
		-0.471128, 0.850743, 0.232969,
		28.118719, 30.041822, 42.143173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896059, 29.481447, 41.451508>,  <28.448509, 29.446302, 41.980095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896059, 29.481447, 41.451508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.971189, 29.840540, 41.610909>,  <28.016268, 30.055996, 41.706547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.971189, 29.840540, 41.610909>,  <27.896059, 29.481447, 41.451508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971189, 29.840540, 41.610909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022029, 0.401769, -0.915476,
		-0.981955, 0.180728, 0.055687,
		0.187826, 0.897730, 0.398501,
		28.027536, 30.109859, 41.730457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418440, 29.852079, 41.021873>,  <27.896059, 29.481447, 41.451508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418440, 29.852079, 41.021873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.662354, 30.121317, 41.189259>,  <27.808702, 30.282860, 41.289688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.662354, 30.121317, 41.189259>,  <27.418440, 29.852079, 41.021873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662354, 30.121317, 41.189259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073497, 0.477681, -0.875453,
		-0.789151, 0.564594, 0.241813,
		0.609785, 0.673093, 0.418459,
		27.845289, 30.323244, 41.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109964, 30.490704, 40.992085>,  <27.418440, 29.852079, 41.021873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109964, 30.490704, 40.992085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.500013, 30.567348, 41.036663>,  <27.734043, 30.613335, 41.063408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.500013, 30.567348, 41.036663>,  <27.109964, 30.490704, 40.992085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500013, 30.567348, 41.036663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010599, 0.461876, -0.886881,
		-0.221410, 0.866000, 0.448355,
		0.975123, 0.191613, 0.111443,
		27.792551, 30.624832, 41.070095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181784, 31.213303, 40.706909>,  <27.109964, 30.490704, 40.992085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181784, 31.213303, 40.706909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.548670, 31.055729, 40.730690>,  <27.768801, 30.961185, 40.744957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.548670, 31.055729, 40.730690>,  <27.181784, 31.213303, 40.706909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548670, 31.055729, 40.730690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251921, 0.457890, -0.852568,
		0.308631, 0.796966, 0.519223,
		0.917215, -0.393932, 0.059453,
		27.823833, 30.937550, 40.748528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547163, 31.775982, 40.475441>,  <27.181784, 31.213303, 40.706909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547163, 31.775982, 40.475441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.761454, 31.442236, 40.423538>,  <27.890028, 31.241989, 40.392395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.761454, 31.442236, 40.423538>,  <27.547163, 31.775982, 40.475441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761454, 31.442236, 40.423538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241824, 0.298835, -0.923157,
		0.809024, 0.463180, 0.361863,
		0.535726, -0.834363, -0.129757,
		27.922171, 31.191927, 40.384613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285477, 31.990683, 40.315777>,  <27.547163, 31.775982, 40.475441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285477, 31.990683, 40.315777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.204977, 31.632238, 40.157547>,  <28.156677, 31.417171, 40.062611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.204977, 31.632238, 40.157547>,  <28.285477, 31.990683, 40.315777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204977, 31.632238, 40.157547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364504, 0.306326, -0.879375,
		0.909195, -0.321164, 0.264988,
		-0.201251, -0.896113, -0.395576,
		28.144602, 31.363405, 40.038876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063883, 32.175968, 40.406803>,  <28.285477, 31.990683, 40.315777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063883, 32.175968, 40.406803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.232891, 32.537937, 40.386436>,  <29.334297, 32.755119, 40.374218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.232891, 32.537937, 40.386436>,  <29.063883, 32.175968, 40.406803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232891, 32.537937, 40.386436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123495, 0.113129, 0.985876,
		0.897900, -0.410267, 0.159553,
		0.422523, 0.904921, -0.050912,
		29.359648, 32.809414, 40.371162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684536, 32.115936, 40.807777>,  <29.063883, 32.175968, 40.406803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684536, 32.115936, 40.807777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.531240, 32.484058, 40.776360>,  <29.439262, 32.704929, 40.757511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.531240, 32.484058, 40.776360>,  <29.684536, 32.115936, 40.807777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531240, 32.484058, 40.776360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007891, 0.081769, 0.996620,
		0.923615, 0.382565, -0.024076,
		-0.383240, 0.920303, -0.078542,
		29.416269, 32.760151, 40.752796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050407, 32.550400, 41.245312>,  <29.684536, 32.115936, 40.807777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050407, 32.550400, 41.245312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.710596, 32.746326, 41.166946>,  <29.506708, 32.863880, 41.119926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.710596, 32.746326, 41.166946>,  <30.050407, 32.550400, 41.245312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710596, 32.746326, 41.166946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176517, 0.086036, 0.980530,
		0.497131, 0.867572, 0.013370,
		-0.849531, 0.489812, -0.195912,
		29.455736, 32.893269, 41.108173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024605, 33.019703, 41.696819>,  <30.050407, 32.550400, 41.245312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024605, 33.019703, 41.696819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632233, 33.019417, 41.619072>,  <29.396811, 33.019245, 41.572422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632233, 33.019417, 41.619072>,  <30.024605, 33.019703, 41.696819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632233, 33.019417, 41.619072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191689, 0.169053, 0.966787,
		0.032171, 0.985606, -0.165966,
		-0.980928, -0.000711, -0.194369,
		29.337954, 33.019203, 41.560760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645155, 33.643753, 42.070839>,  <30.024605, 33.019703, 41.696819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645155, 33.643753, 42.070839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.362904, 33.373123, 41.986618>,  <29.193552, 33.210743, 41.936085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.362904, 33.373123, 41.986618>,  <29.645155, 33.643753, 42.070839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362904, 33.373123, 41.986618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339862, 0.062425, 0.938401,
		-0.621758, 0.733720, -0.273992,
		-0.705628, -0.676578, -0.210550,
		29.151215, 33.170151, 41.923454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090607, 33.951965, 42.296986>,  <29.645155, 33.643753, 42.070839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090607, 33.951965, 42.296986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.010693, 33.560459, 42.278667>,  <28.962744, 33.325554, 42.267677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.010693, 33.560459, 42.278667>,  <29.090607, 33.951965, 42.296986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010693, 33.560459, 42.278667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324661, 0.022025, 0.945574,
		-0.924490, 0.203779, -0.322168,
		-0.199784, -0.978769, -0.045797,
		28.950758, 33.266827, 42.264927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495783, 33.891224, 42.652081>,  <29.090607, 33.951965, 42.296986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495783, 33.891224, 42.652081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.616474, 33.509899, 42.646996>,  <28.688889, 33.281105, 42.643944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.616474, 33.509899, 42.646996>,  <28.495783, 33.891224, 42.652081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616474, 33.509899, 42.646996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237990, -0.088228, 0.967252,
		-0.923212, -0.288822, -0.253499,
		0.301730, -0.953309, -0.012716,
		28.706993, 33.223907, 42.643181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085514, 33.605980, 43.115982>,  <28.495783, 33.891224, 42.652081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085514, 33.605980, 43.115982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.369143, 33.325649, 43.084824>,  <28.539320, 33.157452, 43.066128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.369143, 33.325649, 43.084824>,  <28.085514, 33.605980, 43.115982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369143, 33.325649, 43.084824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052142, -0.162275, 0.985367,
		-0.703207, -0.694633, -0.151607,
		0.709071, -0.700822, -0.077893,
		28.581863, 33.115402, 43.061455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785055, 33.112057, 43.519810>,  <28.085514, 33.605980, 43.115982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785055, 33.112057, 43.519810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177731, 33.041267, 43.491604>,  <28.413336, 32.998795, 43.474682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177731, 33.041267, 43.491604>,  <27.785055, 33.112057, 43.519810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177731, 33.041267, 43.491604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018624, -0.279204, 0.960051,
		-0.189588, -0.943783, -0.270795,
		0.981687, -0.176971, -0.070511,
		28.472237, 32.988174, 43.470451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871449, 32.438923, 43.705051>,  <27.785055, 33.112057, 43.519810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871449, 32.438923, 43.705051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.219763, 32.629257, 43.754555>,  <28.428751, 32.743458, 43.784256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.219763, 32.629257, 43.754555>,  <27.871449, 32.438923, 43.705051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219763, 32.629257, 43.754555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009087, -0.267238, 0.963588,
		0.491580, -0.837953, -0.237031,
		0.870785, 0.475834, 0.123755,
		28.480999, 32.772007, 43.791679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474079, 31.969067, 43.954567>,  <27.871449, 32.438923, 43.705051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474079, 31.969067, 43.954567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.508833, 32.348793, 44.075394>,  <28.529686, 32.576630, 44.147892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.508833, 32.348793, 44.075394>,  <28.474079, 31.969067, 43.954567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508833, 32.348793, 44.075394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038580, -0.306196, 0.951186,
		0.995471, -0.070989, -0.063228,
		0.086884, 0.949318, 0.302070,
		28.534899, 32.633587, 44.166016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051090, 31.971661, 44.340443>,  <28.474079, 31.969067, 43.954567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051090, 31.971661, 44.340443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.912394, 32.318020, 44.484661>,  <28.829176, 32.525837, 44.571194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.912394, 32.318020, 44.484661>,  <29.051090, 31.971661, 44.340443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912394, 32.318020, 44.484661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244335, -0.287738, 0.926017,
		0.905578, 0.409182, -0.111798,
		-0.346741, 0.865897, 0.360546,
		28.808371, 32.577789, 44.592823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604622, 32.304192, 44.830494>,  <29.051090, 31.971661, 44.340443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604622, 32.304192, 44.830494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240583, 32.446125, 44.916119>,  <29.022161, 32.531284, 44.967491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240583, 32.446125, 44.916119>,  <29.604622, 32.304192, 44.830494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240583, 32.446125, 44.916119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152684, -0.193093, 0.969228,
		0.385248, 0.914772, 0.121555,
		-0.910094, 0.354834, 0.214060,
		28.967556, 32.552574, 44.980335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767969, 32.825386, 45.294140>,  <29.604622, 32.304192, 44.830494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767969, 32.825386, 45.294140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.384470, 32.724857, 45.347260>,  <29.154369, 32.664539, 45.379131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.384470, 32.724857, 45.347260>,  <29.767969, 32.825386, 45.294140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384470, 32.724857, 45.347260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198568, -0.257856, 0.945559,
		-0.203396, 0.932924, 0.297124,
		-0.958750, -0.251322, 0.132802,
		29.096846, 32.649460, 45.387100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187664, 33.475151, 45.405689>,  <29.767969, 32.825386, 45.294140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187664, 33.475151, 45.405689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.503645, 33.632717, 45.593651>,  <30.693233, 33.727257, 45.706429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.503645, 33.632717, 45.593651>,  <30.187664, 33.475151, 45.405689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503645, 33.632717, 45.593651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565824, -0.173022, -0.806168,
		-0.236261, 0.902714, -0.359567,
		0.789952, 0.393918, 0.469899,
		30.740631, 33.750893, 45.734619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433672, 33.946114, 44.929802>,  <30.187664, 33.475151, 45.405689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433672, 33.946114, 44.929802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.724741, 33.859684, 45.190201>,  <30.899384, 33.807827, 45.346439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.724741, 33.859684, 45.190201>,  <30.433672, 33.946114, 44.929802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724741, 33.859684, 45.190201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667701, 0.005826, -0.744407,
		0.157056, 0.976359, 0.148513,
		0.727674, -0.216076, 0.651001,
		30.943043, 33.794861, 45.385502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879652, 34.383457, 44.864830>,  <30.433672, 33.946114, 44.929802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879652, 34.383457, 44.864830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061699, 34.048397, 44.985630>,  <31.170927, 33.847359, 45.058109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061699, 34.048397, 44.985630>,  <30.879652, 34.383457, 44.864830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061699, 34.048397, 44.985630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556824, 0.003069, -0.830625,
		0.694850, 0.546192, 0.467823,
		0.455116, -0.837654, 0.302000,
		31.198235, 33.797100, 45.076229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432869, 34.484879, 44.584648>,  <30.879652, 34.383457, 44.864830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432869, 34.484879, 44.584648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487228, 34.098381, 44.672199>,  <31.519844, 33.866482, 44.724731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487228, 34.098381, 44.672199>,  <31.432869, 34.484879, 44.584648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487228, 34.098381, 44.672199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545785, -0.111363, -0.830492,
		0.826831, 0.232325, 0.512226,
		0.135901, -0.966242, 0.218877,
		31.527998, 33.808510, 44.737862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142288, 34.437416, 44.628899>,  <31.432869, 34.484879, 44.584648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142288, 34.437416, 44.628899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006203, 34.061543, 44.614761>,  <31.924551, 33.836018, 44.606277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006203, 34.061543, 44.614761>,  <32.142288, 34.437416, 44.628899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006203, 34.061543, 44.614761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501397, -0.149475, -0.852208,
		0.795523, -0.307654, 0.522008,
		-0.340213, -0.939684, -0.035346,
		31.904139, 33.779636, 44.604156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714916, 33.960339, 44.559967>,  <32.142288, 34.437416, 44.628899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714916, 33.960339, 44.559967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389256, 33.792526, 44.399399>,  <32.193859, 33.691837, 44.303059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389256, 33.792526, 44.399399>,  <32.714916, 33.960339, 44.559967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389256, 33.792526, 44.399399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468994, -0.067536, -0.880616,
		0.342339, -0.905223, 0.251744,
		-0.814155, -0.419536, -0.401424,
		32.145008, 33.666664, 44.278973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967579, 33.387005, 44.185650>,  <32.714916, 33.960339, 44.559967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967579, 33.387005, 44.185650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610817, 33.460468, 44.020351>,  <32.396759, 33.504547, 43.921173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610817, 33.460468, 44.020351>,  <32.967579, 33.387005, 44.185650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610817, 33.460468, 44.020351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396847, -0.120287, -0.909969,
		-0.216832, -0.975603, 0.034400,
		-0.891906, 0.183659, -0.413246,
		32.343246, 33.515564, 43.896378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952648, 32.900612, 43.628666>,  <32.967579, 33.387005, 44.185650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952648, 32.900612, 43.628666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675747, 33.173119, 43.533459>,  <32.509605, 33.336624, 43.476334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675747, 33.173119, 43.533459>,  <32.952648, 32.900612, 43.628666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675747, 33.173119, 43.533459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358945, 0.038926, -0.932546,
		-0.626051, -0.730997, -0.271485,
		-0.692256, 0.681270, -0.238019,
		32.468071, 33.377499, 43.462051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587196, 32.703819, 43.039433>,  <32.952648, 32.900612, 43.628666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587196, 32.703819, 43.039433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.552174, 33.101768, 43.059666>,  <32.531158, 33.340538, 43.071808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.552174, 33.101768, 43.059666>,  <32.587196, 32.703819, 43.039433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552174, 33.101768, 43.059666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275923, 0.073015, -0.958403,
		-0.957183, -0.069961, -0.280902,
		-0.087561, 0.994874, 0.050585,
		32.525906, 33.400230, 43.074841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314102, 32.927792, 42.413807>,  <32.587196, 32.703819, 43.039433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314102, 32.927792, 42.413807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465599, 33.270504, 42.553799>,  <32.556499, 33.476131, 42.637794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465599, 33.270504, 42.553799>,  <32.314102, 32.927792, 42.413807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465599, 33.270504, 42.553799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341016, 0.222351, -0.913383,
		-0.860383, 0.465288, -0.207960,
		0.378746, 0.856777, 0.349978,
		32.579224, 33.527538, 42.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052258, 33.494953, 42.008053>,  <32.314102, 32.927792, 42.413807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052258, 33.494953, 42.008053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381306, 33.659233, 42.165337>,  <32.578735, 33.757801, 42.259705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381306, 33.659233, 42.165337>,  <32.052258, 33.494953, 42.008053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381306, 33.659233, 42.165337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301169, 0.271834, -0.914004,
		-0.482271, 0.870304, 0.099926,
		0.822625, 0.410703, 0.393206,
		32.628094, 33.782444, 42.283298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127846, 34.086666, 41.750546>,  <32.052258, 33.494953, 42.008053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127846, 34.086666, 41.750546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504642, 34.044682, 41.878063>,  <32.730721, 34.019493, 41.954575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504642, 34.044682, 41.878063>,  <32.127846, 34.086666, 41.750546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504642, 34.044682, 41.878063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330450, 0.456228, -0.826232,
		-0.058723, 0.883652, 0.464447,
		0.941995, -0.104958, 0.318794,
		32.787239, 34.013195, 41.973701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504517, 34.736420, 41.685242>,  <32.127846, 34.086666, 41.750546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504517, 34.736420, 41.685242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786209, 34.452446, 41.688293>,  <32.955223, 34.282063, 41.690125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786209, 34.452446, 41.688293>,  <32.504517, 34.736420, 41.685242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786209, 34.452446, 41.688293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335343, 0.323143, -0.884943,
		0.625783, 0.625762, 0.465637,
		0.704231, -0.709930, 0.007627,
		32.997478, 34.239468, 41.690582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028328, 35.012829, 41.181221>,  <32.504517, 34.736420, 41.685242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028328, 35.012829, 41.181221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150158, 34.636940, 41.243397>,  <33.223255, 34.411407, 41.280701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150158, 34.636940, 41.243397>,  <33.028328, 35.012829, 41.181221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150158, 34.636940, 41.243397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371830, -0.032934, -0.927717,
		0.876912, 0.340358, 0.339384,
		0.304578, -0.939719, 0.155436,
		33.241531, 34.355022, 41.290028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.347919, 42.269970, 34.243080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201014, 42.305107, 34.613464>,  <30.112869, 42.326191, 34.835693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201014, 42.305107, 34.613464>,  <30.347919, 42.269970, 34.243080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201014, 42.305107, 34.613464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532640, -0.835992, -0.131956,
		0.762503, -0.541665, 0.353819,
		-0.367266, 0.087842, 0.925959,
		30.090834, 42.331459, 34.891251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338324, 41.599186, 34.653587>,  <30.347919, 42.269970, 34.243080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338324, 41.599186, 34.653587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042412, 41.818371, 34.809776>,  <29.864864, 41.949883, 34.903488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042412, 41.818371, 34.809776>,  <30.338324, 41.599186, 34.653587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042412, 41.818371, 34.809776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620475, -0.780044, -0.080883,
		0.260263, -0.302112, 0.917056,
		-0.739779, 0.547959, 0.390470,
		29.820478, 41.982758, 34.926918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969244, 41.304558, 35.312805>,  <30.338324, 41.599186, 34.653587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969244, 41.304558, 35.312805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716749, 41.521351, 35.090889>,  <29.565252, 41.651428, 34.957737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716749, 41.521351, 35.090889>,  <29.969244, 41.304558, 35.312805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716749, 41.521351, 35.090889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573154, -0.807895, -0.137110,
		-0.522527, 0.231433, 0.820612,
		-0.631237, 0.541981, -0.554794,
		29.527378, 41.683945, 34.924450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316404, 41.104687, 35.546822>,  <29.969244, 41.304558, 35.312805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316404, 41.104687, 35.546822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266479, 41.241318, 35.174210>,  <29.236525, 41.323296, 34.950642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266479, 41.241318, 35.174210>,  <29.316404, 41.104687, 35.546822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266479, 41.241318, 35.174210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409362, -0.872964, -0.265249,
		-0.903794, 0.348227, 0.248785,
		-0.124813, 0.341573, -0.931531,
		29.229036, 41.343788, 34.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657757, 41.065166, 35.300846>,  <29.316404, 41.104687, 35.546822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657757, 41.065166, 35.300846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829201, 41.059055, 34.939503>,  <28.932068, 41.055389, 34.722698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829201, 41.059055, 34.939503>,  <28.657757, 41.065166, 35.300846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829201, 41.059055, 34.939503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547540, -0.799722, -0.246261,
		-0.718674, 0.600176, -0.351136,
		0.428611, -0.015280, -0.903360,
		28.957785, 41.054470, 34.668495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096840, 40.866917, 34.868423>,  <28.657757, 41.065166, 35.300846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096840, 40.866917, 34.868423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406809, 40.795727, 34.625832>,  <28.592791, 40.753014, 34.480278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406809, 40.795727, 34.625832>,  <28.096840, 40.866917, 34.868423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406809, 40.795727, 34.625832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472774, -0.800064, -0.369300,
		-0.419496, 0.572908, -0.704130,
		0.774924, -0.177975, -0.606480,
		28.639286, 40.742332, 34.443886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747755, 40.626183, 34.233574>,  <28.096840, 40.866917, 34.868423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747755, 40.626183, 34.233574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132256, 40.515942, 34.236164>,  <28.362955, 40.449799, 34.237720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132256, 40.515942, 34.236164>,  <27.747755, 40.626183, 34.233574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132256, 40.515942, 34.236164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234499, -0.829801, -0.506400,
		0.144940, 0.485258, -0.862274,
		0.961250, -0.275600, 0.006479,
		28.420631, 40.433262, 34.238110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813976, 40.200626, 33.665798>,  <27.747755, 40.626183, 34.233574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813976, 40.200626, 33.665798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147738, 40.122253, 33.871861>,  <28.347994, 40.075230, 33.995499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147738, 40.122253, 33.871861>,  <27.813976, 40.200626, 33.665798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147738, 40.122253, 33.871861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035495, -0.951843, -0.304524,
		0.550008, 0.235811, -0.801177,
		0.834405, -0.195928, 0.515152,
		28.398060, 40.063477, 34.026405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255127, 39.706474, 33.247822>,  <27.813976, 40.200626, 33.665798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255127, 39.706474, 33.247822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425446, 39.623436, 33.600094>,  <28.527637, 39.573612, 33.811459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425446, 39.623436, 33.600094>,  <28.255127, 39.706474, 33.247822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425446, 39.623436, 33.600094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223546, -0.967287, -0.119931,
		0.876770, -0.145807, -0.458274,
		0.425796, -0.207597, 0.880682,
		28.553185, 39.561157, 33.864300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686563, 39.104298, 33.242443>,  <28.255127, 39.706474, 33.247822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686563, 39.104298, 33.242443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603748, 39.139717, 33.632172>,  <28.554058, 39.160969, 33.866009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603748, 39.139717, 33.632172>,  <28.686563, 39.104298, 33.242443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603748, 39.139717, 33.632172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241006, -0.969821, 0.036925,
		0.948183, -0.227171, 0.222133,
		-0.207040, 0.088547, 0.974317,
		28.541636, 39.166283, 33.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901073, 38.525291, 33.535305>,  <28.686563, 39.104298, 33.242443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901073, 38.525291, 33.535305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657446, 38.645828, 33.828762>,  <28.511269, 38.718151, 34.004837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657446, 38.645828, 33.828762>,  <28.901073, 38.525291, 33.535305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657446, 38.645828, 33.828762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285884, -0.946240, 0.151329,
		0.739801, -0.117566, 0.662475,
		-0.609069, 0.301344, 0.733639,
		28.474726, 38.736233, 34.048855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908581, 37.943512, 33.972328>,  <28.901073, 38.525291, 33.535305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908581, 37.943512, 33.972328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582201, 38.155052, 34.065742>,  <28.386374, 38.281979, 34.121792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582201, 38.155052, 34.065742>,  <28.908581, 37.943512, 33.972328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582201, 38.155052, 34.065742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535001, -0.843824, 0.041653,
		0.219094, -0.090957, 0.971455,
		-0.815949, 0.528855, 0.233539,
		28.337416, 38.313709, 34.135803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659748, 37.650269, 34.507927>,  <28.908581, 37.943512, 33.972328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659748, 37.650269, 34.507927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347462, 37.845360, 34.351669>,  <28.160089, 37.962414, 34.257915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347462, 37.845360, 34.351669>,  <28.659748, 37.650269, 34.507927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347462, 37.845360, 34.351669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582833, -0.793806, 0.173719,
		-0.225369, 0.363306, 0.904001,
		-0.780714, 0.487731, -0.390646,
		28.113247, 37.991680, 34.234474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066570, 37.391674, 34.818340>,  <28.659748, 37.650269, 34.507927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066570, 37.391674, 34.818340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892397, 37.550079, 34.494965>,  <27.787893, 37.645123, 34.300941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892397, 37.550079, 34.494965>,  <28.066570, 37.391674, 34.818340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892397, 37.550079, 34.494965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560454, -0.822028, -0.100803,
		-0.704477, 0.409198, 0.579887,
		-0.435435, 0.396014, -0.808436,
		27.761766, 37.668884, 34.252434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346209, 37.181808, 34.836796>,  <28.066570, 37.391674, 34.818340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346209, 37.181808, 34.836796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380524, 37.292526, 34.453960>,  <27.401114, 37.358955, 34.224258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380524, 37.292526, 34.453960>,  <27.346209, 37.181808, 34.836796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380524, 37.292526, 34.453960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696449, -0.670285, -0.256274,
		-0.712460, 0.688551, 0.135271,
		0.085788, 0.276795, -0.957092,
		27.406260, 37.375565, 34.166832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672495, 37.131340, 34.735893>,  <27.346209, 37.181808, 34.836796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672495, 37.131340, 34.735893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888319, 37.122578, 34.399227>,  <27.017813, 37.117321, 34.197227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888319, 37.122578, 34.399227>,  <26.672495, 37.131340, 34.735893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888319, 37.122578, 34.399227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539008, -0.776941, -0.325319,
		-0.646797, 0.629192, -0.431012,
		0.539560, -0.021903, -0.841662,
		27.050186, 37.116005, 34.146729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227283, 37.225342, 34.071133>,  <26.672495, 37.131340, 34.735893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227283, 37.225342, 34.071133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572247, 37.058231, 33.956787>,  <26.779224, 36.957966, 33.888180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572247, 37.058231, 33.956787>,  <26.227283, 37.225342, 34.071133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572247, 37.058231, 33.956787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499349, -0.794793, -0.344898,
		-0.083109, 0.440186, -0.894052,
		0.862406, -0.417780, -0.285861,
		26.830969, 36.932896, 33.871029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077129, 36.909622, 33.373016>,  <26.227283, 37.225342, 34.071133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077129, 36.909622, 33.373016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381382, 36.716461, 33.546562>,  <26.563934, 36.600563, 33.650688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381382, 36.716461, 33.546562>,  <26.077129, 36.909622, 33.373016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381382, 36.716461, 33.546562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426859, -0.875574, -0.226188,
		0.489109, -0.013154, -0.872124,
		0.760634, -0.482905, 0.433866,
		26.609571, 36.571590, 33.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172792, 36.340309, 32.917839>,  <26.077129, 36.909622, 33.373016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172792, 36.340309, 32.917839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392004, 36.239670, 33.236927>,  <26.523531, 36.179287, 33.428379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392004, 36.239670, 33.236927>,  <26.172792, 36.340309, 32.917839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392004, 36.239670, 33.236927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286427, -0.952481, -0.103630,
		0.785889, -0.171697, -0.594052,
		0.548031, -0.251594, 0.797723,
		26.556414, 36.164192, 33.476246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520550, 35.741001, 32.741096>,  <26.172792, 36.340309, 32.917839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520550, 35.741001, 32.741096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538370, 35.744099, 33.140686>,  <26.549063, 35.745956, 33.380440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538370, 35.744099, 33.140686>,  <26.520550, 35.741001, 32.741096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538370, 35.744099, 33.140686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201234, -0.979403, 0.016563,
		0.978530, -0.201766, -0.042076,
		0.044551, 0.007740, 0.998977,
		26.551735, 35.746422, 33.440380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984415, 35.290245, 32.979935>,  <26.520550, 35.741001, 32.741096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984415, 35.290245, 32.979935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768246, 35.321533, 33.315037>,  <26.638544, 35.340305, 33.516098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768246, 35.321533, 33.315037>,  <26.984415, 35.290245, 32.979935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768246, 35.321533, 33.315037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076359, -0.996120, 0.043750,
		0.837922, -0.040326, 0.544298,
		-0.540422, 0.078221, 0.837750,
		26.606119, 35.345001, 33.566360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592346, 34.851471, 32.825611>,  <26.984415, 35.290245, 32.979935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592346, 34.851471, 32.825611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812000, 34.556938, 32.667488>,  <27.943792, 34.380219, 32.572617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812000, 34.556938, 32.667488>,  <27.592346, 34.851471, 32.825611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812000, 34.556938, 32.667488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827022, 0.546897, 0.130144,
		0.120362, -0.398392, 0.909283,
		0.549133, -0.736333, -0.395305,
		27.976740, 34.336037, 32.548897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175592, 34.822704, 33.238892>,  <27.592346, 34.851471, 32.825611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175592, 34.822704, 33.238892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309978, 34.649902, 32.904110>,  <28.390610, 34.546219, 32.703239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309978, 34.649902, 32.904110>,  <28.175592, 34.822704, 33.238892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309978, 34.649902, 32.904110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735635, 0.675281, -0.053263,
		0.588191, -0.597800, 0.544670,
		0.335965, -0.432007, -0.836957,
		28.410769, 34.520302, 32.653023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837454, 35.032948, 33.226627>,  <28.175592, 34.822704, 33.238892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837454, 35.032948, 33.226627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.798689, 34.896061, 32.852783>,  <28.775429, 34.813931, 32.628475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.798689, 34.896061, 32.852783>,  <28.837454, 35.032948, 33.226627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798689, 34.896061, 32.852783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690934, 0.652763, -0.310662,
		0.716392, -0.675861, 0.173188,
		-0.096913, -0.342217, -0.934610,
		28.769615, 34.793396, 32.572399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493595, 34.783245, 32.826630>,  <28.837454, 35.032948, 33.226627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493595, 34.783245, 32.826630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.232185, 34.881031, 32.540092>,  <29.075340, 34.939701, 32.368172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.232185, 34.881031, 32.540092>,  <29.493595, 34.783245, 32.826630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232185, 34.881031, 32.540092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678993, 0.607566, -0.412107,
		0.334481, -0.755713, -0.563047,
		-0.653522, 0.244463, -0.716343,
		29.036129, 34.954369, 32.325191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925034, 34.795605, 32.217880>,  <29.493595, 34.783245, 32.826630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925034, 34.795605, 32.217880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.608021, 35.024303, 32.133026>,  <29.417812, 35.161522, 32.082111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.608021, 35.024303, 32.133026>,  <29.925034, 34.795605, 32.217880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608021, 35.024303, 32.133026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599797, 0.667969, -0.440524,
		-0.110165, -0.476370, -0.872316,
		-0.792532, 0.571743, -0.212138,
		29.370260, 35.195827, 32.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927399, 34.905949, 31.469917>,  <29.925034, 34.795605, 32.217880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927399, 34.905949, 31.469917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689537, 35.204781, 31.588749>,  <29.546820, 35.384079, 31.660048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689537, 35.204781, 31.588749>,  <29.927399, 34.905949, 31.469917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689537, 35.204781, 31.588749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572419, 0.652885, -0.496062,
		-0.564558, -0.124931, -0.815884,
		-0.594652, 0.747083, 0.297078,
		29.511141, 35.428905, 31.677872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576899, 35.333042, 30.910599>,  <29.927399, 34.905949, 31.469917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576899, 35.333042, 30.910599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598492, 35.561550, 31.238192>,  <29.611448, 35.698654, 31.434748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598492, 35.561550, 31.238192>,  <29.576899, 35.333042, 30.910599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598492, 35.561550, 31.238192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464264, 0.711778, -0.527096,
		-0.884050, 0.408679, -0.226798,
		0.053983, 0.571273, 0.818983,
		29.614687, 35.732933, 31.483887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502497, 35.997787, 30.684427>,  <29.576899, 35.333042, 30.910599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502497, 35.997787, 30.684427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649981, 36.070736, 31.049019>,  <29.738472, 36.114506, 31.267775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649981, 36.070736, 31.049019>,  <29.502497, 35.997787, 30.684427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649981, 36.070736, 31.049019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535133, 0.760129, -0.368559,
		-0.760055, 0.623655, 0.182677,
		0.368711, 0.182369, 0.911479,
		29.760593, 36.125446, 31.322462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483282, 36.715649, 30.704594>,  <29.502497, 35.997787, 30.684427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483282, 36.715649, 30.704594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721399, 36.631096, 31.014675>,  <29.864269, 36.580364, 31.200724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721399, 36.631096, 31.014675>,  <29.483282, 36.715649, 30.704594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721399, 36.631096, 31.014675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418632, 0.905080, -0.074685,
		-0.685836, 0.368985, 0.627279,
		0.595295, -0.211378, 0.775205,
		29.899988, 36.567684, 31.247236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388008, 37.208767, 31.245584>,  <29.483282, 36.715649, 30.704594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388008, 37.208767, 31.245584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.754177, 37.065086, 31.318224>,  <29.973879, 36.978878, 31.361807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.754177, 37.065086, 31.318224>,  <29.388008, 37.208767, 31.245584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754177, 37.065086, 31.318224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344363, 0.932531, 0.108626,
		-0.208363, -0.036903, 0.977355,
		0.915423, -0.359199, 0.181597,
		30.028805, 36.957325, 31.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637310, 37.691418, 31.751657>,  <29.388008, 37.208767, 31.245584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637310, 37.691418, 31.751657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.950970, 37.503620, 31.589331>,  <30.139166, 37.390942, 31.491934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.950970, 37.503620, 31.589331>,  <29.637310, 37.691418, 31.751657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950970, 37.503620, 31.589331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536362, 0.841657, 0.062682,
		0.312132, -0.266818, 0.911801,
		0.784149, -0.469491, -0.405819,
		30.186214, 37.362774, 31.467585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234743, 37.708015, 32.284115>,  <29.637310, 37.691418, 31.751657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234743, 37.708015, 32.284115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389662, 37.639389, 31.921774>,  <30.482613, 37.598213, 31.704369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389662, 37.639389, 31.921774>,  <30.234743, 37.708015, 32.284115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389662, 37.639389, 31.921774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591338, 0.800036, 0.101300,
		0.707335, -0.574897, 0.411304,
		0.387295, -0.171566, -0.905852,
		30.505850, 37.587917, 31.650019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931072, 37.741047, 32.282299>,  <30.234743, 37.708015, 32.284115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931072, 37.741047, 32.282299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883883, 37.792221, 31.888403>,  <30.855568, 37.822926, 31.652065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883883, 37.792221, 31.888403>,  <30.931072, 37.741047, 32.282299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883883, 37.792221, 31.888403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626724, 0.778804, 0.026095,
		0.770259, -0.614082, -0.172058,
		-0.117975, 0.127933, -0.984741,
		30.848490, 37.830601, 31.592981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539547, 37.914459, 32.027443>,  <30.931072, 37.741047, 32.282299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539547, 37.914459, 32.027443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.290314, 38.073784, 31.758186>,  <31.140774, 38.169380, 31.596632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.290314, 38.073784, 31.758186>,  <31.539547, 37.914459, 32.027443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290314, 38.073784, 31.758186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470419, 0.878404, 0.084336,
		0.624881, -0.264110, -0.734690,
		-0.623081, 0.398312, -0.673140,
		31.103390, 38.193279, 31.556244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961918, 38.325756, 31.698687>,  <31.539547, 37.914459, 32.027443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961918, 38.325756, 31.698687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589098, 38.460575, 31.645489>,  <31.365406, 38.541466, 31.613571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589098, 38.460575, 31.645489>,  <31.961918, 38.325756, 31.698687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589098, 38.460575, 31.645489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320292, 0.938007, 0.132499,
		0.169406, 0.080899, -0.982220,
		-0.932048, 0.337044, -0.132993,
		31.309483, 38.561687, 31.605591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082077, 38.964466, 31.465097>,  <31.961918, 38.325756, 31.698687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082077, 38.964466, 31.465097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.691916, 38.980782, 31.551744>,  <31.457819, 38.990570, 31.603733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.691916, 38.980782, 31.551744>,  <32.082077, 38.964466, 31.465097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691916, 38.980782, 31.551744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057699, 0.995710, 0.072340,
		-0.212740, 0.083060, -0.973572,
		-0.975404, 0.040785, 0.216619,
		31.399294, 38.993015, 31.616730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828390, 39.447273, 31.085896>,  <32.082077, 38.964466, 31.465097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828390, 39.447273, 31.085896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.569510, 39.446877, 31.390821>,  <31.414181, 39.446640, 31.573778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.569510, 39.446877, 31.390821>,  <31.828390, 39.447273, 31.085896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569510, 39.446877, 31.390821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088510, 0.993138, 0.076438,
		-0.757162, 0.116943, -0.642674,
		-0.647203, -0.000993, 0.762317,
		31.375349, 39.446579, 31.619516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364594, 40.035786, 31.012339>,  <31.828390, 39.447273, 31.085896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364594, 40.035786, 31.012339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328300, 39.969608, 31.405153>,  <31.306524, 39.929901, 31.640842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328300, 39.969608, 31.405153>,  <31.364594, 40.035786, 31.012339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328300, 39.969608, 31.405153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014453, 0.985781, 0.167412,
		-0.995770, 0.029383, -0.087053,
		-0.090734, -0.165446, 0.982036,
		31.301081, 39.919975, 31.699764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952223, 40.515663, 31.247921>,  <31.364594, 40.035786, 31.012339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952223, 40.515663, 31.247921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.104717, 40.399925, 31.599133>,  <31.196215, 40.330482, 31.809860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.104717, 40.399925, 31.599133>,  <30.952223, 40.515663, 31.247921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104717, 40.399925, 31.599133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094784, 0.956987, 0.274212,
		-0.919605, -0.021317, 0.392265,
		0.381238, -0.289347, 0.878029,
		31.219090, 40.313122, 31.862541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640442, 40.977100, 31.757584>,  <30.952223, 40.515663, 31.247921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640442, 40.977100, 31.757584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.983994, 40.830120, 31.900307>,  <31.190125, 40.741932, 31.985941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.983994, 40.830120, 31.900307>,  <30.640442, 40.977100, 31.757584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983994, 40.830120, 31.900307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209804, 0.887917, 0.409373,
		-0.467237, -0.276743, 0.839704,
		0.858878, -0.367447, 0.356806,
		31.241657, 40.719887, 32.007347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589279, 41.017120, 32.495529>,  <30.640442, 40.977100, 31.757584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589279, 41.017120, 32.495529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.965147, 41.024628, 32.358902>,  <31.190668, 41.029133, 32.276924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.965147, 41.024628, 32.358902>,  <30.589279, 41.017120, 32.495529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965147, 41.024628, 32.358902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156451, 0.864372, 0.477896,
		0.304212, -0.502503, 0.809287,
		0.939669, 0.018768, -0.341569,
		31.247047, 41.030258, 32.256432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.692066, 33.558529, 46.345009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728458, 33.174107, 46.449387>,  <34.750294, 32.943455, 46.512012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728458, 33.174107, 46.449387>,  <34.692066, 33.558529, 46.345009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728458, 33.174107, 46.449387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338815, 0.216529, 0.915598,
		-0.936444, -0.171714, -0.305920,
		0.090981, -0.961057, 0.260946,
		34.755753, 32.885788, 46.527672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099628, 33.349926, 46.728970>,  <34.692066, 33.558529, 46.345009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099628, 33.349926, 46.728970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.355476, 33.068474, 46.852768>,  <34.508984, 32.899601, 46.927048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.355476, 33.068474, 46.852768>,  <34.099628, 33.349926, 46.728970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355476, 33.068474, 46.852768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383044, 0.057329, 0.921949,
		-0.666455, -0.708249, -0.232852,
		0.639620, -0.703631, 0.309498,
		34.547363, 32.857384, 46.945618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715599, 32.908073, 47.052876>,  <34.099628, 33.349926, 46.728970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715599, 32.908073, 47.052876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080856, 32.825153, 47.193272>,  <34.300011, 32.775402, 47.277508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080856, 32.825153, 47.193272>,  <33.715599, 32.908073, 47.052876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080856, 32.825153, 47.193272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382108, -0.135387, 0.914147,
		-0.142049, -0.968849, -0.202864,
		0.913135, -0.207370, 0.350973,
		34.354801, 32.762962, 47.298569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673264, 32.309212, 47.473133>,  <33.715599, 32.908073, 47.052876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673264, 32.309212, 47.473133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019436, 32.469448, 47.593506>,  <34.227139, 32.565590, 47.665730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019436, 32.469448, 47.593506>,  <33.673264, 32.309212, 47.473133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019436, 32.469448, 47.593506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189914, -0.293532, 0.936895,
		0.463645, -0.867966, -0.177953,
		0.865428, 0.400591, 0.300933,
		34.279064, 32.589626, 47.683784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915562, 31.925444, 48.043720>,  <33.673264, 32.309212, 47.473133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915562, 31.925444, 48.043720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135674, 32.256378, 48.088818>,  <34.267738, 32.454941, 48.115875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135674, 32.256378, 48.088818>,  <33.915562, 31.925444, 48.043720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135674, 32.256378, 48.088818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079886, -0.082240, 0.993406,
		0.831153, -0.555653, 0.020838,
		0.550275, 0.827337, 0.112743,
		34.300755, 32.504578, 48.122639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515945, 31.789585, 48.460903>,  <33.915562, 31.925444, 48.043720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515945, 31.789585, 48.460903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424957, 32.178528, 48.481983>,  <34.370365, 32.411892, 48.494629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424957, 32.178528, 48.481983>,  <34.515945, 31.789585, 48.460903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424957, 32.178528, 48.481983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024730, -0.059865, 0.997900,
		0.973471, 0.225690, 0.037664,
		-0.227470, 0.972358, 0.052695,
		34.356716, 32.470234, 48.497791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816925, 31.917341, 49.030201>,  <34.515945, 31.789585, 48.460903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816925, 31.917341, 49.030201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567814, 32.225060, 48.973167>,  <34.418346, 32.409691, 48.938946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567814, 32.225060, 48.973167>,  <34.816925, 31.917341, 49.030201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567814, 32.225060, 48.973167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087142, 0.112906, 0.989777,
		0.777530, 0.628837, -0.003277,
		-0.622779, 0.769296, -0.142586,
		34.380981, 32.455849, 48.930393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086063, 32.370300, 49.518097>,  <34.816925, 31.917341, 49.030201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086063, 32.370300, 49.518097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706009, 32.441608, 49.415760>,  <34.477974, 32.484394, 49.354359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706009, 32.441608, 49.415760>,  <35.086063, 32.370300, 49.518097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706009, 32.441608, 49.415760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254576, 0.030320, 0.966577,
		0.180068, 0.983514, 0.016575,
		-0.950140, 0.178270, -0.255839,
		34.420967, 32.495090, 49.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721035, 32.832554, 50.101498>,  <35.086063, 32.370300, 49.518097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721035, 32.832554, 50.101498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382111, 32.715584, 49.924160>,  <34.178757, 32.645401, 49.817757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382111, 32.715584, 49.924160>,  <34.721035, 32.832554, 50.101498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382111, 32.715584, 49.924160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426177, -0.123757, 0.896135,
		-0.316917, 0.948247, -0.019764,
		-0.847311, -0.292423, -0.443342,
		34.127918, 32.627857, 49.791157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225906, 33.074947, 50.579964>,  <34.721035, 32.832554, 50.101498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225906, 33.074947, 50.579964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027504, 32.801041, 50.366394>,  <33.908463, 32.636696, 50.238255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027504, 32.801041, 50.366394>,  <34.225906, 33.074947, 50.579964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027504, 32.801041, 50.366394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535062, -0.243247, 0.809036,
		-0.683878, 0.686966, -0.245742,
		-0.496004, -0.684769, -0.533921,
		33.878704, 32.595612, 50.206219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578110, 33.207523, 50.679974>,  <34.225906, 33.074947, 50.579964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578110, 33.207523, 50.679974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535114, 32.830048, 50.554821>,  <33.509315, 32.603561, 50.479729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535114, 32.830048, 50.554821>,  <33.578110, 33.207523, 50.679974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535114, 32.830048, 50.554821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642196, -0.174338, 0.746452,
		-0.758967, 0.281166, -0.587294,
		-0.107489, -0.943691, -0.312881,
		33.502869, 32.546940, 50.460957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897045, 33.039406, 50.638634>,  <33.578110, 33.207523, 50.679974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897045, 33.039406, 50.638634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096832, 32.700546, 50.711163>,  <33.216705, 32.497231, 50.754681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096832, 32.700546, 50.711163>,  <32.897045, 33.039406, 50.638634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096832, 32.700546, 50.711163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666973, -0.242444, 0.704534,
		-0.552884, -0.472825, -0.686117,
		0.499466, -0.847147, 0.181317,
		33.246674, 32.446404, 50.765556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400070, 32.490894, 50.875542>,  <32.897045, 33.039406, 50.638634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400070, 32.490894, 50.875542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771862, 32.456367, 51.018990>,  <32.994938, 32.435650, 51.105061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771862, 32.456367, 51.018990>,  <32.400070, 32.490894, 50.875542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771862, 32.456367, 51.018990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368708, -0.245796, 0.896459,
		0.010770, -0.965471, -0.260289,
		0.929483, -0.086316, 0.358624,
		33.050705, 32.430473, 51.126575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707800, 32.208641, 50.742355>,  <32.400070, 32.490894, 50.875542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707800, 32.208641, 50.742355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924398, 32.034119, 50.454906>,  <32.054359, 31.929405, 50.282436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924398, 32.034119, 50.454906>,  <31.707800, 32.208641, 50.742355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924398, 32.034119, 50.454906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612541, -0.380718, 0.692710,
		-0.575824, -0.815287, 0.061096,
		0.541497, -0.436303, -0.718624,
		32.086849, 31.903229, 50.239319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446566, 32.824169, 50.911968>,  <31.707800, 32.208641, 50.742355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446566, 32.824169, 50.911968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.118551, 32.980583, 51.079124>,  <30.921743, 33.074432, 51.179420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.118551, 32.980583, 51.079124>,  <31.446566, 32.824169, 50.911968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118551, 32.980583, 51.079124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394829, 0.142058, -0.907706,
		-0.414311, -0.909346, 0.037901,
		-0.820034, 0.391037, 0.417892,
		30.872541, 33.097893, 51.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863899, 32.472996, 50.708790>,  <31.446566, 32.824169, 50.911968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863899, 32.472996, 50.708790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730719, 32.839645, 50.797283>,  <30.650810, 33.059635, 50.850380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730719, 32.839645, 50.797283>,  <30.863899, 32.472996, 50.708790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730719, 32.839645, 50.797283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165848, 0.174032, -0.970674,
		-0.928244, -0.359878, 0.094076,
		-0.332952, 0.916625, 0.221229,
		30.630833, 33.114632, 50.863651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238495, 32.518394, 50.308079>,  <30.863899, 32.472996, 50.708790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238495, 32.518394, 50.308079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338942, 32.893780, 50.402931>,  <30.399210, 33.119011, 50.459843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338942, 32.893780, 50.402931>,  <30.238495, 32.518394, 50.308079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338942, 32.893780, 50.402931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171780, 0.284301, -0.943220,
		-0.952592, 0.196126, 0.232602,
		0.251119, 0.938460, 0.237133,
		30.414278, 33.175320, 50.474072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735260, 32.830082, 50.053268>,  <30.238495, 32.518394, 50.308079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735260, 32.830082, 50.053268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.031366, 33.098000, 50.076530>,  <30.209030, 33.258751, 50.090488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.031366, 33.098000, 50.076530>,  <29.735260, 32.830082, 50.053268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031366, 33.098000, 50.076530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162618, 0.262313, -0.951182,
		-0.652348, 0.694673, 0.303102,
		0.740268, 0.669792, 0.058153,
		30.253447, 33.298939, 50.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381145, 33.450615, 49.699684>,  <29.735260, 32.830082, 50.053268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381145, 33.450615, 49.699684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770372, 33.542694, 49.704563>,  <30.003908, 33.597942, 49.707489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770372, 33.542694, 49.704563>,  <29.381145, 33.450615, 49.699684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770372, 33.542694, 49.704563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026536, 0.164406, -0.986036,
		-0.228984, 0.959156, 0.166087,
		0.973068, 0.230194, 0.012194,
		30.062292, 33.611752, 49.708221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483124, 34.163345, 49.452778>,  <29.381145, 33.450615, 49.699684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483124, 34.163345, 49.452778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.842129, 34.002300, 49.380802>,  <30.057531, 33.905674, 49.337616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.842129, 34.002300, 49.380802>,  <29.483124, 34.163345, 49.452778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842129, 34.002300, 49.380802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015631, 0.378725, -0.925377,
		0.440712, 0.833350, 0.333617,
		0.897512, -0.402610, -0.179935,
		30.111382, 33.881516, 49.326820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899343, 34.755859, 49.216824>,  <29.483124, 34.163345, 49.452778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899343, 34.755859, 49.216824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086592, 34.421551, 49.102043>,  <30.198940, 34.220966, 49.033176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086592, 34.421551, 49.102043>,  <29.899343, 34.755859, 49.216824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086592, 34.421551, 49.102043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008785, 0.320311, -0.947272,
		0.883621, 0.445959, 0.142602,
		0.468121, -0.835776, -0.286951,
		30.227028, 34.170818, 49.015957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375998, 34.953625, 48.724670>,  <29.899343, 34.755859, 49.216824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375998, 34.953625, 48.724670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.358807, 34.560371, 48.653568>,  <30.348492, 34.324417, 48.610909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.358807, 34.560371, 48.653568>,  <30.375998, 34.953625, 48.724670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358807, 34.560371, 48.653568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299596, 0.157051, -0.941051,
		0.953098, -0.093697, 0.287794,
		-0.042975, -0.983136, -0.177757,
		30.345915, 34.265430, 48.600243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921520, 34.776112, 48.261353>,  <30.375998, 34.953625, 48.724670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921520, 34.776112, 48.261353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707598, 34.444397, 48.196514>,  <30.579245, 34.245369, 48.157612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707598, 34.444397, 48.196514>,  <30.921520, 34.776112, 48.261353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707598, 34.444397, 48.196514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346733, -0.040441, -0.937092,
		0.770559, -0.557364, 0.309167,
		-0.534804, -0.829283, -0.162095,
		30.547157, 34.195614, 48.147884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304750, 34.296387, 47.917412>,  <30.921520, 34.776112, 48.261353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304750, 34.296387, 47.917412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930933, 34.167130, 47.857796>,  <30.706642, 34.089577, 47.822025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930933, 34.167130, 47.857796>,  <31.304750, 34.296387, 47.917412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930933, 34.167130, 47.857796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211265, -0.166798, -0.963092,
		0.286356, -0.931535, 0.224148,
		-0.934541, -0.323142, -0.149037,
		30.650570, 34.070187, 47.813084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363865, 33.640972, 47.666805>,  <31.304750, 34.296387, 47.917412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363865, 33.640972, 47.666805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010752, 33.778809, 47.539089>,  <30.798883, 33.861511, 47.462460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010752, 33.778809, 47.539089>,  <31.363865, 33.640972, 47.666805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010752, 33.778809, 47.539089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259104, -0.209794, -0.942789,
		-0.391863, -0.915010, 0.095917,
		-0.882785, 0.344592, -0.319293,
		30.745916, 33.882187, 47.443302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140972, 33.200809, 47.142136>,  <31.363865, 33.640972, 47.666805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140972, 33.200809, 47.142136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889654, 33.507397, 47.088818>,  <30.738863, 33.691349, 47.056828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889654, 33.507397, 47.088818>,  <31.140972, 33.200809, 47.142136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889654, 33.507397, 47.088818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, -0.114376, -0.990919,
		-0.774756, -0.632013, 0.017678,
		-0.628296, 0.766471, -0.133292,
		30.701166, 33.737339, 47.048828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578241, 32.898987, 46.795483>,  <31.140972, 33.200809, 47.142136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578241, 32.898987, 46.795483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609581, 33.292919, 46.733555>,  <30.628386, 33.529278, 46.696400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609581, 33.292919, 46.733555>,  <30.578241, 32.898987, 46.795483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609581, 33.292919, 46.733555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100094, -0.162282, -0.981654,
		-0.991888, 0.061417, -0.111291,
		0.078351, 0.984831, -0.154819,
		30.633087, 33.588367, 46.687111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245943, 33.093418, 46.063381>,  <30.578241, 32.898987, 46.795483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245943, 33.093418, 46.063381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476494, 33.413162, 46.131279>,  <30.614824, 33.605007, 46.172016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476494, 33.413162, 46.131279>,  <30.245943, 33.093418, 46.063381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476494, 33.413162, 46.131279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320425, -0.029989, -0.946799,
		-0.751742, 0.600104, -0.273420,
		0.576378, 0.799360, 0.169745,
		30.649406, 33.652969, 46.182201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527178, 33.107494, 45.920803>,  <30.245943, 33.093418, 46.063381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527178, 33.107494, 45.920803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203064, 32.874916, 45.891521>,  <29.008596, 32.735367, 45.873951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203064, 32.874916, 45.891521>,  <29.527178, 33.107494, 45.920803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203064, 32.874916, 45.891521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094761, -0.253268, 0.962744,
		-0.578327, 0.773158, 0.260317,
		-0.810283, -0.581449, -0.073206,
		28.959980, 32.700481, 45.869560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920452, 33.384995, 46.364803>,  <29.527178, 33.107494, 45.920803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920452, 33.384995, 46.364803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.829769, 32.997253, 46.326954>,  <28.775360, 32.764606, 46.304245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.829769, 32.997253, 46.326954>,  <28.920452, 33.384995, 46.364803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829769, 32.997253, 46.326954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048714, -0.085751, 0.995125,
		-0.972744, 0.230211, -0.027781,
		-0.226707, -0.969355, -0.094628,
		28.761757, 32.706448, 46.298565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444614, 33.300220, 46.830841>,  <28.920452, 33.384995, 46.364803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444614, 33.300220, 46.830841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.564360, 32.925587, 46.757965>,  <28.636208, 32.700806, 46.714241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.564360, 32.925587, 46.757965>,  <28.444614, 33.300220, 46.830841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564360, 32.925587, 46.757965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043768, -0.204224, 0.977945,
		-0.953135, -0.284786, -0.102130,
		0.299363, -0.936584, -0.182188,
		28.654169, 32.644611, 46.703308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965446, 32.997574, 47.136444>,  <28.444614, 33.300220, 46.830841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965446, 32.997574, 47.136444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.258360, 32.726051, 47.114601>,  <28.434109, 32.563137, 47.101498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.258360, 32.726051, 47.114601>,  <27.965446, 32.997574, 47.136444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258360, 32.726051, 47.114601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282813, -0.376075, 0.882375,
		-0.619497, -0.630706, -0.467369,
		0.732284, -0.678806, -0.054605,
		28.478045, 32.522411, 47.098221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654589, 32.364285, 47.299206>,  <27.965446, 32.997574, 47.136444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654589, 32.364285, 47.299206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.045649, 32.300106, 47.353550>,  <28.280285, 32.261600, 47.386158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.045649, 32.300106, 47.353550>,  <27.654589, 32.364285, 47.299206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045649, 32.300106, 47.353550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179114, -0.297264, 0.937844,
		-0.110087, -0.941218, -0.319358,
		0.977650, -0.160446, 0.135860,
		28.338943, 32.251972, 47.394310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695629, 31.724066, 47.674675>,  <27.654589, 32.364285, 47.299206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695629, 31.724066, 47.674675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.063848, 31.873430, 47.720554>,  <28.284781, 31.963049, 47.748081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.063848, 31.873430, 47.720554>,  <27.695629, 31.724066, 47.674675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063848, 31.873430, 47.720554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041296, -0.385011, 0.921987,
		0.388444, -0.843996, -0.369842,
		0.920547, 0.373414, 0.114701,
		28.340012, 31.985455, 47.754963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041216, 31.151234, 48.062256>,  <27.695629, 31.724066, 47.674675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041216, 31.151234, 48.062256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.223110, 31.506973, 48.081352>,  <28.332247, 31.720417, 48.092812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.223110, 31.506973, 48.081352>,  <28.041216, 31.151234, 48.062256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223110, 31.506973, 48.081352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032441, -0.037030, 0.998788,
		0.890037, -0.455731, 0.012013,
		0.454733, 0.889347, 0.047743,
		28.359529, 31.773777, 48.095676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357962, 30.559582, 47.738499>,  <28.041216, 31.151234, 48.062256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357962, 30.559582, 47.738499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.301229, 30.164558, 47.765678>,  <28.267189, 29.927546, 47.781986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.301229, 30.164558, 47.765678>,  <28.357962, 30.559582, 47.738499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301229, 30.164558, 47.765678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028257, -0.064574, -0.997513,
		0.989487, -0.143399, -0.018746,
		-0.141832, -0.987556, 0.067948,
		28.258680, 29.868292, 47.786064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845064, 30.252335, 47.281559>,  <28.357962, 30.559582, 47.738499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845064, 30.252335, 47.281559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.568258, 29.968182, 47.332905>,  <28.402174, 29.797689, 47.363712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.568258, 29.968182, 47.332905>,  <28.845064, 30.252335, 47.281559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568258, 29.968182, 47.332905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056265, -0.124194, -0.990661,
		0.719688, -0.692774, 0.045975,
		-0.692014, -0.710380, 0.128360,
		28.360655, 29.755068, 47.371414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103411, 29.629774, 46.883835>,  <28.845064, 30.252335, 47.281559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103411, 29.629774, 46.883835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708818, 29.577394, 46.923237>,  <28.472063, 29.545967, 46.946880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708818, 29.577394, 46.923237>,  <29.103411, 29.629774, 46.883835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708818, 29.577394, 46.923237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073953, -0.180685, -0.980757,
		0.146228, -0.974785, 0.168559,
		-0.986483, -0.130948, 0.098509,
		28.412874, 29.538111, 46.952789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955967, 28.987194, 46.483948>,  <29.103411, 29.629774, 46.883835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955967, 28.987194, 46.483948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.593142, 29.149643, 46.528309>,  <28.375446, 29.247112, 46.554924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.593142, 29.149643, 46.528309>,  <28.955967, 28.987194, 46.483948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593142, 29.149643, 46.528309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259373, -0.331603, -0.907064,
		-0.331603, -0.851531, 0.406122,
		0.907064, -0.406122, -0.110903,
		28.321022, 29.271481, 46.561581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545229, 28.422354, 46.271683>,  <28.955967, 28.987194, 46.483948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545229, 28.422354, 46.271683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.316650, 28.747602, 46.227345>,  <28.179502, 28.942751, 46.200741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.316650, 28.747602, 46.227345>,  <28.545229, 28.422354, 46.271683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316650, 28.747602, 46.227345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162433, -0.244468, -0.955956,
		-0.804403, -0.528273, 0.271778,
		-0.571446, 0.813119, -0.110842,
		28.145216, 28.991539, 46.194092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018700, 28.243250, 45.860718>,  <28.545229, 28.422354, 46.271683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018700, 28.243250, 45.860718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.019917, 28.642677, 45.839355>,  <28.020647, 28.882334, 45.826538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.019917, 28.642677, 45.839355>,  <28.018700, 28.243250, 45.860718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019917, 28.642677, 45.839355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323444, -0.049550, -0.944949,
		-0.946243, 0.020150, 0.322830,
		0.003045, 0.998569, -0.053404,
		28.020830, 28.942247, 45.823334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331785, 28.605658, 45.717762>,  <28.018700, 28.243250, 45.860718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331785, 28.605658, 45.717762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.649485, 28.791668, 45.561344>,  <27.840105, 28.903275, 45.467495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.649485, 28.791668, 45.561344>,  <27.331785, 28.605658, 45.717762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649485, 28.791668, 45.561344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292663, -0.271207, -0.916949,
		-0.532460, 0.842731, -0.079310,
		0.794251, 0.465027, -0.391043,
		27.887760, 28.931175, 45.444031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.263313, 29.720724, 50.854519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553848, 29.995470, 50.844379>,  <32.728168, 30.160318, 50.838295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553848, 29.995470, 50.844379>,  <32.263313, 29.720724, 50.854519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553848, 29.995470, 50.844379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412228, -0.464834, -0.783580,
		-0.549996, 0.558699, -0.620773,
		0.726342, 0.686866, -0.025345,
		32.771751, 30.201530, 50.836777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296448, 29.929644, 50.187733>,  <32.263313, 29.720724, 50.854519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296448, 29.929644, 50.187733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659470, 30.007166, 50.336742>,  <32.877285, 30.053679, 50.426147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659470, 30.007166, 50.336742>,  <32.296448, 29.929644, 50.187733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659470, 30.007166, 50.336742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418608, -0.347364, -0.839110,
		-0.033222, 0.917484, -0.396382,
		0.907559, 0.193806, 0.372526,
		32.931736, 30.065308, 50.448502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591995, 30.527033, 49.875450>,  <32.296448, 29.929644, 50.187733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591995, 30.527033, 49.875450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.885994, 30.284945, 49.997749>,  <33.062393, 30.139692, 50.071129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.885994, 30.284945, 49.997749>,  <32.591995, 30.527033, 49.875450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885994, 30.284945, 49.997749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330050, -0.074566, -0.941014,
		0.592318, 0.792559, 0.144946,
		0.735001, -0.605219, 0.305751,
		33.106495, 30.103378, 50.089474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134312, 30.767012, 49.506962>,  <32.591995, 30.527033, 49.875450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134312, 30.767012, 49.506962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259285, 30.406300, 49.626411>,  <33.334270, 30.189873, 49.698082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259285, 30.406300, 49.626411>,  <33.134312, 30.767012, 49.506962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259285, 30.406300, 49.626411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279536, -0.213163, -0.936174,
		0.907879, 0.375971, 0.185480,
		0.312436, -0.901780, 0.298624,
		33.353016, 30.135765, 49.716000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721252, 30.676758, 49.141445>,  <33.134312, 30.767012, 49.506962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721252, 30.676758, 49.141445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636364, 30.308786, 49.273319>,  <33.585430, 30.088003, 49.352444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636364, 30.308786, 49.273319>,  <33.721252, 30.676758, 49.141445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636364, 30.308786, 49.273319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458241, -0.391661, -0.797883,
		0.863122, -0.018248, 0.504666,
		-0.212218, -0.919929, 0.329689,
		33.572701, 30.032808, 49.372227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401749, 30.331205, 49.098240>,  <33.721252, 30.676758, 49.141445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401749, 30.331205, 49.098240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.103451, 30.065031, 49.085194>,  <33.924473, 29.905327, 49.077366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.103451, 30.065031, 49.085194>,  <34.401749, 30.331205, 49.098240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103451, 30.065031, 49.085194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383547, -0.388778, -0.837701,
		0.544755, -0.637220, 0.545154,
		-0.745744, -0.665434, -0.032615,
		33.879726, 29.865400, 49.075409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761013, 29.845926, 48.921257>,  <34.401749, 30.331205, 49.098240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761013, 29.845926, 48.921257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379894, 29.746679, 48.851273>,  <34.151222, 29.687132, 48.809280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379894, 29.746679, 48.851273>,  <34.761013, 29.845926, 48.921257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379894, 29.746679, 48.851273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284052, -0.525086, -0.802246,
		0.107180, -0.814078, 0.570779,
		-0.952799, -0.248116, -0.174962,
		34.094055, 29.672245, 48.798782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914791, 29.303123, 48.566185>,  <34.761013, 29.845926, 48.921257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914791, 29.303123, 48.566185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534271, 29.400597, 48.490658>,  <34.305958, 29.459080, 48.445343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534271, 29.400597, 48.490658>,  <34.914791, 29.303123, 48.566185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534271, 29.400597, 48.490658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082598, -0.388620, -0.917688,
		-0.296998, -0.888592, 0.349566,
		-0.951299, 0.243678, -0.188816,
		34.248882, 29.473701, 48.434013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765045, 28.778526, 48.073318>,  <34.914791, 29.303123, 48.566185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765045, 28.778526, 48.073318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.501827, 29.061911, 47.971291>,  <34.343895, 29.231941, 47.910072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.501827, 29.061911, 47.971291>,  <34.765045, 28.778526, 48.073318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501827, 29.061911, 47.971291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005659, -0.334091, -0.942524,
		-0.752958, -0.621667, 0.215838,
		-0.658045, 0.708459, -0.255074,
		34.304413, 29.274448, 47.894768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354713, 28.513355, 47.617680>,  <34.765045, 28.778526, 48.073318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354713, 28.513355, 47.617680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264973, 28.895041, 47.538540>,  <34.211128, 29.124052, 47.491055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264973, 28.895041, 47.538540>,  <34.354713, 28.513355, 47.617680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264973, 28.895041, 47.538540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048091, -0.191939, -0.980228,
		-0.973321, -0.229428, -0.002828,
		-0.224349, 0.954213, -0.197852,
		34.197666, 29.181305, 47.479183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844765, 28.462357, 47.008095>,  <34.354713, 28.513355, 47.617680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844765, 28.462357, 47.008095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.009804, 28.826691, 47.012802>,  <34.108829, 29.045292, 47.015625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.009804, 28.826691, 47.012802>,  <33.844765, 28.462357, 47.008095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009804, 28.826691, 47.012802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141366, -0.051265, -0.988629,
		-0.899875, 0.409573, -0.149913,
		0.412601, 0.910836, 0.011768,
		34.133583, 29.099941, 47.016331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396454, 28.949474, 46.581123>,  <33.844765, 28.462357, 47.008095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396454, 28.949474, 46.581123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.763023, 29.108379, 46.600502>,  <33.982967, 29.203722, 46.612129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.763023, 29.108379, 46.600502>,  <33.396454, 28.949474, 46.581123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763023, 29.108379, 46.600502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058938, -0.014243, -0.998160,
		-0.395841, 0.917595, -0.036467,
		0.916426, 0.397262, 0.048443,
		34.037952, 29.227558, 46.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740768, 29.256826, 46.326584>,  <33.396454, 28.949474, 46.581123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740768, 29.256826, 46.326584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.428986, 29.018694, 46.248585>,  <32.241917, 28.875814, 46.201786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.428986, 29.018694, 46.248585>,  <32.740768, 29.256826, 46.326584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428986, 29.018694, 46.248585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427152, 0.277381, 0.860582,
		-0.458242, 0.754082, -0.470504,
		-0.779458, -0.595332, -0.195000,
		32.195148, 28.840094, 46.190086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033001, 29.682976, 46.390652>,  <32.740768, 29.256826, 46.326584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033001, 29.682976, 46.390652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991655, 29.290779, 46.457527>,  <31.966848, 29.055462, 46.497654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991655, 29.290779, 46.457527>,  <32.033001, 29.682976, 46.390652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991655, 29.290779, 46.457527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426844, 0.195554, 0.882929,
		-0.898398, 0.019901, -0.438730,
		-0.103366, -0.980491, 0.167191,
		31.960646, 28.996632, 46.507683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370445, 29.703594, 46.673985>,  <32.033001, 29.682976, 46.390652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370445, 29.703594, 46.673985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484688, 29.327223, 46.746735>,  <31.553234, 29.101400, 46.790386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484688, 29.327223, 46.746735>,  <31.370445, 29.703594, 46.673985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484688, 29.327223, 46.746735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516335, 0.008802, 0.856341,
		-0.807358, -0.338489, -0.483321,
		0.285608, -0.940930, 0.181880,
		31.570370, 29.044945, 46.801300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772091, 29.444046, 47.045734>,  <31.370445, 29.703594, 46.673985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772091, 29.444046, 47.045734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074928, 29.210058, 47.162090>,  <31.256632, 29.069666, 47.231903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074928, 29.210058, 47.162090>,  <30.772091, 29.444046, 47.045734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074928, 29.210058, 47.162090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406079, -0.072578, 0.910951,
		-0.511769, -0.807800, -0.292493,
		0.757095, -0.584971, 0.290888,
		31.302057, 29.034567, 47.249355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608166, 28.783005, 47.178223>,  <30.772091, 29.444046, 47.045734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608166, 28.783005, 47.178223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.940590, 28.848488, 47.390839>,  <31.140045, 28.887777, 47.518410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.940590, 28.848488, 47.390839>,  <30.608166, 28.783005, 47.178223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940590, 28.848488, 47.390839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503692, -0.183756, 0.844114,
		0.235860, -0.969244, -0.070255,
		0.831063, 0.163706, 0.531541,
		31.189909, 28.897600, 47.550301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541885, 28.384092, 47.795815>,  <30.608166, 28.783005, 47.178223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541885, 28.384092, 47.795815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.848454, 28.621687, 47.893616>,  <31.032394, 28.764244, 47.952297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.848454, 28.621687, 47.893616>,  <30.541885, 28.384092, 47.795815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848454, 28.621687, 47.893616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322782, 0.027048, 0.946087,
		0.555350, -0.804019, 0.212459,
		0.766418, 0.593988, 0.244502,
		31.078379, 28.799883, 47.966965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927422, 27.991413, 48.265316>,  <30.541885, 28.384092, 47.795815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927422, 27.991413, 48.265316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.040819, 28.371624, 48.316124>,  <31.108858, 28.599751, 48.346607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.040819, 28.371624, 48.316124>,  <30.927422, 27.991413, 48.265316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040819, 28.371624, 48.316124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166010, -0.081806, 0.982725,
		0.944496, -0.299680, 0.134605,
		0.283492, 0.950526, 0.127015,
		31.125866, 28.656782, 48.354229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375616, 28.051790, 48.840157>,  <30.927422, 27.991413, 48.265316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375616, 28.051790, 48.840157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268608, 28.435520, 48.804092>,  <31.204403, 28.665758, 48.782455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268608, 28.435520, 48.804092>,  <31.375616, 28.051790, 48.840157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268608, 28.435520, 48.804092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001515, 0.093990, 0.995572,
		0.963552, 0.266197, -0.026598,
		-0.267518, 0.959325, -0.090161,
		31.188353, 28.723318, 48.777042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672871, 28.418438, 49.364128>,  <31.375616, 28.051790, 48.840157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672871, 28.418438, 49.364128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.359058, 28.646694, 49.267067>,  <31.170771, 28.783648, 49.208832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.359058, 28.646694, 49.267067>,  <31.672871, 28.418438, 49.364128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359058, 28.646694, 49.267067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288288, 0.010800, 0.957483,
		0.549001, 0.821128, 0.156037,
		-0.784531, 0.570642, -0.242650,
		31.123699, 28.817886, 49.194271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596546, 28.964500, 49.882118>,  <31.672871, 28.418438, 49.364128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596546, 28.964500, 49.882118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.229517, 28.941454, 49.724773>,  <31.009298, 28.927626, 49.630367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.229517, 28.941454, 49.724773>,  <31.596546, 28.964500, 49.882118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229517, 28.941454, 49.724773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391690, -0.038409, 0.919295,
		-0.068076, 0.997600, 0.012675,
		-0.917575, -0.057617, -0.393365,
		30.954245, 28.924170, 49.606766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254045, 29.340101, 50.280693>,  <31.596546, 28.964500, 49.882118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254045, 29.340101, 50.280693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954762, 29.138968, 50.107559>,  <30.775192, 29.018288, 50.003681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954762, 29.138968, 50.107559>,  <31.254045, 29.340101, 50.280693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954762, 29.138968, 50.107559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522972, 0.045531, 0.851133,
		-0.408271, 0.863183, -0.297035,
		-0.748208, -0.502834, -0.432831,
		30.730299, 28.988117, 49.977711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635201, 29.688620, 50.426411>,  <31.254045, 29.340101, 50.280693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635201, 29.688620, 50.426411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.529106, 29.312939, 50.339184>,  <30.465450, 29.087530, 50.286846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.529106, 29.312939, 50.339184>,  <30.635201, 29.688620, 50.426411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529106, 29.312939, 50.339184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775600, 0.073470, 0.626935,
		-0.572796, 0.335418, -0.747930,
		-0.265235, -0.939200, -0.218066,
		30.449535, 29.031179, 50.273766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853283, 29.803576, 50.332897>,  <30.635201, 29.688620, 50.426411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853283, 29.803576, 50.332897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.981174, 29.429075, 50.391144>,  <30.057909, 29.204374, 50.426090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.981174, 29.429075, 50.391144>,  <29.853283, 29.803576, 50.332897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981174, 29.429075, 50.391144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595720, -0.079124, 0.799285,
		-0.736811, -0.342302, -0.583043,
		0.319730, -0.936252, 0.145617,
		30.077093, 29.148199, 50.434830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222927, 29.373796, 50.408802>,  <29.853283, 29.803576, 50.332897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222927, 29.373796, 50.408802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.542982, 29.206511, 50.580791>,  <29.735014, 29.106138, 50.683987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.542982, 29.206511, 50.580791>,  <29.222927, 29.373796, 50.408802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542982, 29.206511, 50.580791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449374, 0.056853, 0.891533,
		-0.397299, -0.906566, -0.142445,
		0.800135, -0.418216, 0.429975,
		29.783022, 29.081045, 50.709785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769306, 28.789087, 50.378696>,  <29.222927, 29.373796, 50.408802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769306, 28.789087, 50.378696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.374777, 28.769800, 50.441742>,  <28.138060, 28.758228, 50.479568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.374777, 28.769800, 50.441742>,  <28.769306, 28.789087, 50.378696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374777, 28.769800, 50.441742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164762, 0.314597, -0.934817,
		-0.004512, -0.948000, -0.318238,
		-0.986323, -0.048216, 0.157614,
		28.078880, 28.755335, 50.489025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465477, 28.214460, 50.007488>,  <28.769306, 28.789087, 50.378696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465477, 28.214460, 50.007488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238625, 28.541857, 50.044228>,  <28.102514, 28.738295, 50.066273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238625, 28.541857, 50.044228>,  <28.465477, 28.214460, 50.007488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238625, 28.541857, 50.044228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000769, 0.110990, -0.993821,
		-0.823629, -0.563696, -0.062316,
		-0.567129, 0.818492, 0.091848,
		28.068485, 28.787405, 50.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697016, 28.197311, 49.543316>,  <28.465477, 28.214460, 50.007488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697016, 28.197311, 49.543316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.836069, 28.562654, 49.628101>,  <27.919502, 28.781860, 49.678974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.836069, 28.562654, 49.628101>,  <27.697016, 28.197311, 49.543316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836069, 28.562654, 49.628101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063421, 0.248455, -0.966565,
		-0.935483, 0.322568, 0.144298,
		0.347634, 0.913356, 0.211968,
		27.940359, 28.836662, 49.691692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402660, 28.621140, 49.049370>,  <27.697016, 28.197311, 49.543316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402660, 28.621140, 49.049370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.685434, 28.866068, 49.190964>,  <27.855099, 29.013025, 49.275921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.685434, 28.866068, 49.190964>,  <27.402660, 28.621140, 49.049370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685434, 28.866068, 49.190964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284072, 0.212536, -0.934950,
		-0.647726, 0.761505, -0.023695,
		0.706933, 0.612323, 0.353987,
		27.897514, 29.049765, 49.297161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234400, 29.259838, 48.767994>,  <27.402660, 28.621140, 49.049370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234400, 29.259838, 48.767994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.615000, 29.302786, 48.883316>,  <27.843359, 29.328554, 48.952507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.615000, 29.302786, 48.883316>,  <27.234400, 29.259838, 48.767994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615000, 29.302786, 48.883316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217983, 0.426001, -0.878070,
		-0.217096, 0.898329, 0.381935,
		0.951500, 0.107370, 0.288304,
		27.900450, 29.334997, 48.969807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361563, 29.977057, 48.746719>,  <27.234400, 29.259838, 48.767994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361563, 29.977057, 48.746719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.692978, 29.755970, 48.710869>,  <27.891827, 29.623318, 48.689358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.692978, 29.755970, 48.710869>,  <27.361563, 29.977057, 48.746719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692978, 29.755970, 48.710869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176426, 0.409599, -0.895043,
		0.531415, 0.725764, 0.436881,
		0.828536, -0.552716, -0.089623,
		27.941538, 29.590155, 48.683983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912771, 30.422825, 48.399200>,  <27.361563, 29.977057, 48.746719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912771, 30.422825, 48.399200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.060970, 30.059902, 48.319679>,  <28.149891, 29.842148, 48.271965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.060970, 30.059902, 48.319679>,  <27.912771, 30.422825, 48.399200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060970, 30.059902, 48.319679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069899, 0.240668, -0.968087,
		0.926199, 0.344780, 0.152587,
		0.370500, -0.907307, -0.198806,
		28.172121, 29.787710, 48.260036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538420, 30.995708, 48.548737>,  <27.912771, 30.422825, 48.399200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538420, 30.995708, 48.548737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.521954, 31.394838, 48.528160>,  <28.512074, 31.634317, 48.515812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.521954, 31.394838, 48.528160>,  <28.538420, 30.995708, 48.548737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521954, 31.394838, 48.528160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015089, 0.050860, 0.998592,
		0.999038, 0.041885, 0.012962,
		-0.041167, 0.997827, -0.051443,
		28.509604, 31.694187, 48.512726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984537, 31.202845, 49.037731>,  <28.538420, 30.995708, 48.548737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984537, 31.202845, 49.037731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.785654, 31.545372, 48.981869>,  <28.666325, 31.750889, 48.948353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.785654, 31.545372, 48.981869>,  <28.984537, 31.202845, 49.037731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785654, 31.545372, 48.981869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065510, 0.197551, 0.978101,
		0.865156, 0.477170, -0.154321,
		-0.497206, 0.856319, -0.139653,
		28.636492, 31.802267, 48.939972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225468, 31.628286, 49.483559>,  <28.984537, 31.202845, 49.037731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225468, 31.628286, 49.483559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860041, 31.771921, 49.407188>,  <28.640785, 31.858103, 49.361366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860041, 31.771921, 49.407188>,  <29.225468, 31.628286, 49.483559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860041, 31.771921, 49.407188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101324, 0.253697, 0.961962,
		0.393866, 0.898162, -0.195385,
		-0.913566, 0.359087, -0.190928,
		28.585970, 31.879646, 49.349911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319567, 32.232849, 49.760567>,  <29.225468, 31.628286, 49.483559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319567, 32.232849, 49.760567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.931063, 32.144032, 49.726265>,  <28.697960, 32.090740, 49.705685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.931063, 32.144032, 49.726265>,  <29.319567, 32.232849, 49.760567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931063, 32.144032, 49.726265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162759, 0.356673, 0.919942,
		-0.173680, 0.907459, -0.382561,
		-0.971259, -0.222041, -0.085750,
		28.639685, 32.077419, 49.700539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952284, 32.784733, 50.077435>,  <29.319567, 32.232849, 49.760567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952284, 32.784733, 50.077435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.671982, 32.499519, 50.086628>,  <28.503801, 32.328392, 50.092144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.671982, 32.499519, 50.086628>,  <28.952284, 32.784733, 50.077435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671982, 32.499519, 50.086628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197690, 0.225038, 0.954084,
		-0.685464, 0.664036, -0.298656,
		-0.700755, -0.713031, 0.022982,
		28.461756, 32.285610, 50.093521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510893, 33.136894, 50.442028>,  <28.952284, 32.784733, 50.077435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510893, 33.136894, 50.442028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.410669, 32.750103, 50.460640>,  <28.350534, 32.518028, 50.471806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.410669, 32.750103, 50.460640>,  <28.510893, 33.136894, 50.442028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410669, 32.750103, 50.460640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037510, 0.057724, 0.997628,
		-0.967374, 0.248221, -0.050734,
		-0.250560, -0.966982, 0.046530,
		28.335501, 32.460007, 50.474598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031555, 33.136341, 50.952682>,  <28.510893, 33.136894, 50.442028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031555, 33.136341, 50.952682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.175249, 32.767555, 50.894821>,  <28.261465, 32.546284, 50.860104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.175249, 32.767555, 50.894821>,  <28.031555, 33.136341, 50.952682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175249, 32.767555, 50.894821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293127, -0.035686, 0.955407,
		-0.886017, -0.385618, 0.257434,
		0.359235, -0.921968, -0.144653,
		28.283020, 32.490963, 50.851425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620737, 32.675373, 51.381077>,  <28.031555, 33.136341, 50.952682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620737, 32.675373, 51.381077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.993799, 32.550720, 51.308372>,  <28.217636, 32.475929, 51.264751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.993799, 32.550720, 51.308372>,  <27.620737, 32.675373, 51.381077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993799, 32.550720, 51.308372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191522, 0.000732, 0.981488,
		-0.305729, -0.950203, 0.060367,
		0.932657, -0.311631, -0.181761,
		28.273596, 32.457230, 51.253845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752298, 32.237110, 51.919727>,  <27.620737, 32.675373, 51.381077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752298, 32.237110, 51.919727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.124205, 32.304039, 51.788555>,  <28.347349, 32.344196, 51.709850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.124205, 32.304039, 51.788555>,  <27.752298, 32.237110, 51.919727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124205, 32.304039, 51.788555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321918, 0.062668, 0.944691,
		0.178616, -0.983909, 0.004403,
		0.929766, 0.167319, -0.327932,
		28.403135, 32.354233, 51.690174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.571459, 33.138554, 35.890701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881109, 33.137520, 36.143909>,  <32.066898, 33.136898, 36.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881109, 33.137520, 36.143909>,  <31.571459, 33.138554, 35.890701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881109, 33.137520, 36.143909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632085, 0.051478, 0.773188,
		-0.034591, -0.998671, 0.038212,
		0.774127, -0.002592, 0.633025,
		32.113346, 33.136745, 36.333817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576635, 32.625397, 36.416172>,  <31.571459, 33.138554, 35.890701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576635, 32.625397, 36.416172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770634, 32.942688, 36.563454>,  <31.887033, 33.133060, 36.651821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770634, 32.942688, 36.563454>,  <31.576635, 32.625397, 36.416172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770634, 32.942688, 36.563454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507820, -0.087328, 0.857026,
		0.711968, -0.602636, 0.360461,
		0.484996, 0.793224, 0.368205,
		31.916132, 33.180656, 36.673916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678198, 32.412926, 37.055237>,  <31.576635, 32.625397, 36.416172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678198, 32.412926, 37.055237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736891, 32.806953, 37.091259>,  <31.772106, 33.043369, 37.112873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736891, 32.806953, 37.091259>,  <31.678198, 32.412926, 37.055237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736891, 32.806953, 37.091259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331271, -0.036847, 0.942816,
		0.932057, -0.168172, 0.320918,
		0.146730, 0.985069, 0.090054,
		31.780910, 33.102474, 37.118275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125244, 32.510548, 37.641876>,  <31.678198, 32.412926, 37.055237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125244, 32.510548, 37.641876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914137, 32.844284, 37.578205>,  <31.787472, 33.044525, 37.540001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914137, 32.844284, 37.578205>,  <32.125244, 32.510548, 37.641876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914137, 32.844284, 37.578205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531477, -0.178201, 0.828116,
		0.662563, 0.521655, 0.537481,
		-0.527771, 0.834338, -0.159178,
		31.755806, 33.094585, 37.530453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207729, 32.849022, 38.277832>,  <32.125244, 32.510548, 37.641876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207729, 32.849022, 38.277832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898396, 33.020672, 38.091156>,  <31.712795, 33.123661, 37.979149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898396, 33.020672, 38.091156>,  <32.207729, 32.849022, 38.277832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898396, 33.020672, 38.091156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530751, -0.035573, 0.846781,
		0.346776, 0.902543, 0.255270,
		-0.773337, 0.429128, -0.466690,
		31.666395, 33.149410, 37.951149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977352, 33.368492, 38.795700>,  <32.207729, 32.849022, 38.277832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977352, 33.368492, 38.795700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676508, 33.276917, 38.548504>,  <31.496000, 33.221970, 38.400185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676508, 33.276917, 38.548504>,  <31.977352, 33.368492, 38.795700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676508, 33.276917, 38.548504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612216, -0.104416, 0.783766,
		-0.243965, 0.967824, -0.061629,
		-0.752112, -0.228942, -0.617991,
		31.450874, 33.208233, 38.363106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488325, 33.702892, 39.102077>,  <31.977352, 33.368492, 38.795700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488325, 33.702892, 39.102077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288822, 33.453308, 38.861439>,  <31.169121, 33.303558, 38.717056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288822, 33.453308, 38.861439>,  <31.488325, 33.702892, 39.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288822, 33.453308, 38.861439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750955, -0.035493, 0.659399,
		-0.432788, 0.780653, -0.450860,
		-0.498759, -0.623956, -0.601596,
		31.139194, 33.266121, 38.680962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768953, 34.040279, 39.040409>,  <31.488325, 33.702892, 39.102077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768953, 34.040279, 39.040409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728552, 33.660244, 38.922340>,  <30.704311, 33.432220, 38.851501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728552, 33.660244, 38.922340>,  <30.768953, 34.040279, 39.040409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728552, 33.660244, 38.922340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795788, -0.100905, 0.597110,
		-0.597093, 0.295202, -0.745880,
		-0.101005, -0.950092, -0.295167,
		30.698250, 33.375217, 38.833790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121817, 33.952557, 38.882332>,  <30.768953, 34.040279, 39.040409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121817, 33.952557, 38.882332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245161, 33.576904, 38.942932>,  <30.319168, 33.351513, 38.979294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245161, 33.576904, 38.942932>,  <30.121817, 33.952557, 38.882332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245161, 33.576904, 38.942932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744674, -0.139211, 0.652748,
		-0.591923, -0.314102, -0.742271,
		0.308362, -0.939128, 0.151501,
		30.337669, 33.295166, 38.988384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417595, 33.619381, 38.957985>,  <30.121817, 33.952557, 38.882332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417595, 33.619381, 38.957985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699697, 33.386898, 39.120373>,  <29.868959, 33.247406, 39.217804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699697, 33.386898, 39.120373>,  <29.417595, 33.619381, 38.957985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699697, 33.386898, 39.120373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606660, -0.198444, 0.769795,
		-0.366852, -0.789185, -0.492551,
		0.705254, -0.581211, 0.405967,
		29.911274, 33.212536, 39.242165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083405, 33.085701, 39.080482>,  <29.417595, 33.619381, 38.957985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083405, 33.085701, 39.080482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401440, 33.058510, 39.321552>,  <29.592260, 33.042194, 39.466194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401440, 33.058510, 39.321552>,  <29.083405, 33.085701, 39.080482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401440, 33.058510, 39.321552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606492, -0.086763, 0.790342,
		-0.001433, -0.993907, -0.110210,
		0.795088, -0.067974, 0.602672,
		29.639967, 33.038116, 39.502354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001661, 32.550339, 39.546989>,  <29.083405, 33.085701, 39.080482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001661, 32.550339, 39.546989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260439, 32.789410, 39.736408>,  <29.415705, 32.932854, 39.850060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260439, 32.789410, 39.736408>,  <29.001661, 32.550339, 39.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260439, 32.789410, 39.736408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573162, -0.028448, 0.818948,
		0.502940, -0.801230, 0.324164,
		0.646944, 0.597680, 0.473542,
		29.454521, 32.968712, 39.878471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660122, 31.982494, 39.708298>,  <29.001661, 32.550339, 39.546989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660122, 31.982494, 39.708298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464878, 31.637035, 39.657913>,  <28.347733, 31.429760, 39.627682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464878, 31.637035, 39.657913>,  <28.660122, 31.982494, 39.708298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464878, 31.637035, 39.657913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398438, -0.092092, -0.912560,
		0.776529, -0.495615, 0.389060,
		-0.488108, -0.863646, -0.125960,
		28.318445, 31.377941, 39.620125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110804, 31.403160, 39.662563>,  <28.660122, 31.982494, 39.708298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110804, 31.403160, 39.662563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774828, 31.283066, 39.481735>,  <28.573242, 31.211010, 39.373238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774828, 31.283066, 39.481735>,  <29.110804, 31.403160, 39.662563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774828, 31.283066, 39.481735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494591, -0.080666, -0.865374,
		0.223349, -0.950448, 0.216248,
		-0.839938, -0.300235, -0.452067,
		28.522846, 31.192995, 39.346115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260651, 30.823473, 39.244358>,  <29.110804, 31.403160, 39.662563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260651, 30.823473, 39.244358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926712, 30.967632, 39.077915>,  <28.726349, 31.054127, 38.978050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926712, 30.967632, 39.077915>,  <29.260651, 30.823473, 39.244358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926712, 30.967632, 39.077915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422004, -0.066382, -0.904161,
		-0.353480, -0.930434, -0.096671,
		-0.834844, 0.360398, -0.416111,
		28.676258, 31.075752, 38.953083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189926, 30.439749, 38.722115>,  <29.260651, 30.823473, 39.244358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189926, 30.439749, 38.722115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950512, 30.737892, 38.604675>,  <28.806864, 30.916779, 38.534214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950512, 30.737892, 38.604675>,  <29.189926, 30.439749, 38.722115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950512, 30.737892, 38.604675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347532, -0.088619, -0.933470,
		-0.721788, -0.660748, -0.205994,
		-0.598534, 0.745358, -0.293596,
		28.770952, 30.961500, 38.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963097, 30.366282, 38.067104>,  <29.189926, 30.439749, 38.722115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963097, 30.366282, 38.067104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926561, 30.762741, 38.105644>,  <28.904640, 31.000616, 38.128769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926561, 30.762741, 38.105644>,  <28.963097, 30.366282, 38.067104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926561, 30.762741, 38.105644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376409, 0.123940, -0.918126,
		-0.921940, -0.047592, -0.384397,
		-0.091338, 0.991148, 0.096351,
		28.899160, 31.060085, 38.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691311, 30.495407, 37.478912>,  <28.963097, 30.366282, 38.067104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691311, 30.495407, 37.478912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823372, 30.860195, 37.576324>,  <28.902609, 31.079069, 37.634773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823372, 30.860195, 37.576324>,  <28.691311, 30.495407, 37.478912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823372, 30.860195, 37.576324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229412, 0.172738, -0.957879,
		-0.915625, 0.372115, -0.152187,
		0.330153, 0.911972, 0.243531,
		28.922419, 31.133787, 37.649384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409613, 30.937170, 37.044136>,  <28.691311, 30.495407, 37.478912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409613, 30.937170, 37.044136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719362, 31.154137, 37.174446>,  <28.905212, 31.284317, 37.252632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719362, 31.154137, 37.174446>,  <28.409613, 30.937170, 37.044136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719362, 31.154137, 37.174446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168025, 0.320103, -0.932363,
		-0.610013, 0.776735, 0.156740,
		0.774372, 0.542417, 0.325778,
		28.951674, 31.316862, 37.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369371, 31.574589, 36.695419>,  <28.409613, 30.937170, 37.044136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369371, 31.574589, 36.695419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748322, 31.546736, 36.820404>,  <28.975691, 31.530024, 36.895393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748322, 31.546736, 36.820404>,  <28.369371, 31.574589, 36.695419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748322, 31.546736, 36.820404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318754, 0.295445, -0.900615,
		-0.029605, 0.952819, 0.302092,
		0.947375, -0.069631, 0.312461,
		29.032534, 31.525846, 36.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645538, 32.130726, 36.510616>,  <28.369371, 31.574589, 36.695419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645538, 32.130726, 36.510616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968801, 31.900675, 36.561390>,  <29.162760, 31.762644, 36.591854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968801, 31.900675, 36.561390>,  <28.645538, 32.130726, 36.510616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968801, 31.900675, 36.561390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308266, 0.229407, -0.923225,
		0.501853, 0.785240, 0.362689,
		0.808156, -0.575128, 0.126934,
		29.211248, 31.728136, 36.599472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198317, 32.507690, 36.363415>,  <28.645538, 32.130726, 36.510616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198317, 32.507690, 36.363415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318237, 32.127979, 36.325493>,  <29.390190, 31.900152, 36.302738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318237, 32.127979, 36.325493>,  <29.198317, 32.507690, 36.363415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318237, 32.127979, 36.325493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297883, 0.187557, -0.935996,
		0.906303, 0.252371, 0.339004,
		0.299801, -0.949279, -0.094806,
		29.408178, 31.843195, 36.297050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826567, 32.643330, 35.962265>,  <29.198317, 32.507690, 36.363415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826567, 32.643330, 35.962265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713499, 32.260658, 35.934341>,  <29.645658, 32.031055, 35.917587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713499, 32.260658, 35.934341>,  <29.826567, 32.643330, 35.962265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713499, 32.260658, 35.934341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283545, -0.013815, -0.958859,
		0.916351, -0.290834, 0.275166,
		-0.282671, -0.956674, -0.069805,
		29.628698, 31.973656, 35.913399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479612, 32.227917, 35.743576>,  <29.826567, 32.643330, 35.962265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479612, 32.227917, 35.743576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167274, 31.989355, 35.669186>,  <29.979872, 31.846218, 35.624554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167274, 31.989355, 35.669186>,  <30.479612, 32.227917, 35.743576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167274, 31.989355, 35.669186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361523, -0.188605, -0.913088,
		0.509491, -0.780214, 0.362884,
		-0.780846, -0.596401, -0.185972,
		29.933022, 31.810434, 35.613396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883333, 31.676563, 35.444626>,  <30.479612, 32.227917, 35.743576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883333, 31.676563, 35.444626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490259, 31.662369, 35.371883>,  <30.254416, 31.653852, 35.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490259, 31.662369, 35.371883>,  <30.883333, 31.676563, 35.444626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490259, 31.662369, 35.371883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184425, -0.281617, -0.941637,
		-0.017799, -0.958871, 0.283285,
		-0.982685, -0.035485, -0.181852,
		30.195454, 31.651724, 35.317329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090773, 30.911386, 35.286560>,  <30.883333, 31.676563, 35.444626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090773, 30.911386, 35.286560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875019, 30.619085, 35.119198>,  <30.745567, 30.443705, 35.018780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875019, 30.619085, 35.119198>,  <31.090773, 30.911386, 35.286560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875019, 30.619085, 35.119198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832236, -0.538303, -0.132712,
		-0.128251, -0.419797, 0.898511,
		-0.539384, -0.730753, -0.418408,
		30.713203, 30.399860, 34.993675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250322, 30.277775, 35.563473>,  <31.090773, 30.911386, 35.286560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250322, 30.277775, 35.563473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153835, 30.228134, 35.178471>,  <31.095943, 30.198349, 34.947472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153835, 30.228134, 35.178471>,  <31.250322, 30.277775, 35.563473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153835, 30.228134, 35.178471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789867, -0.601341, -0.120417,
		-0.563848, -0.789296, 0.243079,
		-0.241218, -0.124103, -0.962503,
		31.081470, 30.190903, 34.889721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184834, 29.620646, 35.536427>,  <31.250322, 30.277775, 35.563473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184834, 29.620646, 35.536427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288454, 29.773737, 35.181705>,  <31.350626, 29.865591, 34.968872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288454, 29.773737, 35.181705>,  <31.184834, 29.620646, 35.536427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288454, 29.773737, 35.181705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461602, -0.855558, -0.234400,
		-0.848419, -0.348626, -0.398303,
		0.259053, 0.382727, -0.886799,
		31.366171, 29.888556, 34.915665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946957, 29.994049, 35.591000>,  <31.184834, 29.620646, 35.536427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946957, 29.994049, 35.591000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260403, 30.129377, 35.799416>,  <32.448471, 30.210575, 35.924465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260403, 30.129377, 35.799416>,  <31.946957, 29.994049, 35.591000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260403, 30.129377, 35.799416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438341, -0.293226, 0.849633,
		0.440233, -0.894179, -0.081476,
		0.783615, 0.338322, 0.521043,
		32.495487, 30.230873, 35.955730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987385, 29.468607, 36.171333>,  <31.946957, 29.994049, 35.591000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987385, 29.468607, 36.171333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223866, 29.770929, 36.283932>,  <32.365753, 29.952322, 36.351490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223866, 29.770929, 36.283932>,  <31.987385, 29.468607, 36.171333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223866, 29.770929, 36.283932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266636, -0.146239, 0.952638,
		0.761176, -0.638256, 0.115069,
		0.591200, 0.755806, 0.281495,
		32.401226, 29.997671, 36.368382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547527, 29.222017, 36.645878>,  <31.987385, 29.468607, 36.171333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547527, 29.222017, 36.645878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472248, 29.608723, 36.715103>,  <32.427082, 29.840746, 36.756638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472248, 29.608723, 36.715103>,  <32.547527, 29.222017, 36.645878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472248, 29.608723, 36.715103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005949, -0.177332, 0.984133,
		0.982114, 0.184178, 0.039124,
		-0.188194, 0.966763, 0.173065,
		32.415791, 29.898752, 36.767021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056160, 29.511766, 37.160988>,  <32.547527, 29.222017, 36.645878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056160, 29.511766, 37.160988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711910, 29.715027, 37.174309>,  <32.505360, 29.836983, 37.182301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711910, 29.715027, 37.174309>,  <33.056160, 29.511766, 37.160988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711910, 29.715027, 37.174309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007448, -0.052825, 0.998576,
		0.509189, 0.859645, 0.041677,
		-0.860623, 0.508153, 0.033301,
		32.453724, 29.867474, 37.184299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143394, 29.912470, 37.718159>,  <33.056160, 29.511766, 37.160988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143394, 29.912470, 37.718159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746738, 29.909899, 37.666611>,  <32.508743, 29.908356, 37.635681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746738, 29.909899, 37.666611>,  <33.143394, 29.912470, 37.718159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746738, 29.909899, 37.666611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122265, -0.272357, 0.954397,
		-0.041235, 0.962175, 0.269294,
		-0.991641, -0.006429, -0.128871,
		32.449245, 29.907970, 37.627949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872272, 30.228603, 38.286461>,  <33.143394, 29.912470, 37.718159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872272, 30.228603, 38.286461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541180, 30.033077, 38.176250>,  <32.342522, 29.915762, 38.110123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541180, 30.033077, 38.176250>,  <32.872272, 30.228603, 38.286461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541180, 30.033077, 38.176250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222572, -0.164728, 0.960899,
		-0.515087, 0.856695, 0.027555,
		-0.827736, -0.488813, -0.275525,
		32.292858, 29.886433, 38.093594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343956, 30.578779, 38.568150>,  <32.872272, 30.228603, 38.286461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343956, 30.578779, 38.568150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199196, 30.209648, 38.515362>,  <32.112339, 29.988169, 38.483688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199196, 30.209648, 38.515362>,  <32.343956, 30.578779, 38.568150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199196, 30.209648, 38.515362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262385, -0.035007, 0.964328,
		-0.894531, 0.383614, -0.229468,
		-0.361897, -0.922830, -0.131969,
		32.090626, 29.932798, 38.475773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787966, 30.504486, 39.061787>,  <32.343956, 30.578779, 38.568150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787966, 30.504486, 39.061787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849459, 30.131800, 38.930172>,  <31.886354, 29.908188, 38.851204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849459, 30.131800, 38.930172>,  <31.787966, 30.504486, 39.061787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849459, 30.131800, 38.930172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245399, -0.358567, 0.900671,
		-0.957155, -0.057714, -0.283765,
		0.153731, -0.931718, -0.329041,
		31.895578, 29.852283, 38.831459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220371, 30.035080, 39.325130>,  <31.787966, 30.504486, 39.061787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220371, 30.035080, 39.325130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509584, 29.768093, 39.253899>,  <31.683113, 29.607901, 39.211159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509584, 29.768093, 39.253899>,  <31.220371, 30.035080, 39.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509584, 29.768093, 39.253899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178504, -0.429542, 0.885228,
		-0.667354, -0.608261, -0.429718,
		0.723032, -0.667467, -0.178080,
		31.726494, 29.567854, 39.200474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008081, 29.367369, 39.578716>,  <31.220371, 30.035080, 39.325130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008081, 29.367369, 39.578716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405666, 29.338282, 39.545841>,  <31.644217, 29.320829, 39.526115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405666, 29.338282, 39.545841>,  <31.008081, 29.367369, 39.578716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405666, 29.338282, 39.545841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058360, -0.283981, 0.957052,
		-0.092934, -0.956068, -0.278023,
		0.993960, -0.072717, -0.082188,
		31.703854, 29.316465, 39.521183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158781, 28.767370, 39.909801>,  <31.008081, 29.367369, 39.578716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158781, 28.767370, 39.909801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519169, 28.940922, 39.910721>,  <31.735401, 29.045053, 39.911274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519169, 28.940922, 39.910721>,  <31.158781, 28.767370, 39.909801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519169, 28.940922, 39.910721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166007, -0.349611, 0.922070,
		0.400871, -0.830374, -0.387016,
		0.900968, 0.433878, 0.002301,
		31.789459, 29.071085, 39.911411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402021, 28.255817, 40.233170>,  <31.158781, 28.767370, 39.909801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402021, 28.255817, 40.233170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658178, 28.562910, 40.241989>,  <31.811872, 28.747166, 40.247280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658178, 28.562910, 40.241989>,  <31.402021, 28.255817, 40.233170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658178, 28.562910, 40.241989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225259, -0.215189, 0.950238,
		0.734273, -0.603558, -0.310744,
		0.640392, 0.767732, 0.022051,
		31.850296, 28.793230, 40.248604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047371, 28.026926, 40.458469>,  <31.402021, 28.255817, 40.233170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047371, 28.026926, 40.458469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024075, 28.413197, 40.559723>,  <32.010098, 28.644958, 40.620476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024075, 28.413197, 40.559723>,  <32.047371, 28.026926, 40.458469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024075, 28.413197, 40.559723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129336, -0.244130, 0.961079,
		0.989889, 0.088715, -0.110677,
		-0.058242, 0.965676, 0.253136,
		32.006603, 28.702900, 40.635662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334087, 27.955725, 41.069332>,  <32.047371, 28.026926, 40.458469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334087, 27.955725, 41.069332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238937, 28.344233, 41.072308>,  <32.181847, 28.577337, 41.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238937, 28.344233, 41.072308>,  <32.334087, 27.955725, 41.069332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238937, 28.344233, 41.072308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155712, 0.030576, 0.987329,
		0.958734, 0.236017, -0.158511,
		-0.237873, 0.971268, 0.007436,
		32.167576, 28.635612, 41.074539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947010, 28.351542, 41.239674>,  <32.334087, 27.955725, 41.069332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947010, 28.351542, 41.239674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623283, 28.558271, 41.351311>,  <32.429047, 28.682310, 41.418293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623283, 28.558271, 41.351311>,  <32.947010, 28.351542, 41.239674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623283, 28.558271, 41.351311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305259, -0.035859, 0.951594,
		0.501816, 0.855340, -0.128744,
		-0.809319, 0.516825, 0.279095,
		32.380489, 28.713320, 41.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089302, 28.826042, 41.913269>,  <32.947010, 28.351542, 41.239674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089302, 28.826042, 41.913269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689564, 28.837481, 41.904369>,  <32.449722, 28.844343, 41.899029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689564, 28.837481, 41.904369>,  <33.089302, 28.826042, 41.913269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689564, 28.837481, 41.904369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025068, -0.102235, 0.994444,
		0.026160, 0.994349, 0.102885,
		-0.999343, 0.028594, -0.022252,
		32.389759, 28.846058, 41.897694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786297, 29.265278, 42.317867>,  <33.089302, 28.826042, 41.913269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786297, 29.265278, 42.317867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491108, 28.997883, 42.280952>,  <32.313995, 28.837446, 42.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491108, 28.997883, 42.280952>,  <32.786297, 29.265278, 42.317867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491108, 28.997883, 42.280952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002742, -0.139728, 0.990186,
		-0.674823, 0.730479, 0.104948,
		-0.737974, -0.668488, -0.092289,
		32.269714, 28.797337, 42.253265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290703, 29.435572, 42.819042>,  <32.786297, 29.265278, 42.317867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290703, 29.435572, 42.819042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188324, 29.061962, 42.719368>,  <32.126896, 28.837797, 42.659565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188324, 29.061962, 42.719368>,  <32.290703, 29.435572, 42.819042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188324, 29.061962, 42.719368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166811, -0.211233, 0.963096,
		-0.952191, 0.288065, -0.101742,
		-0.255943, -0.934023, -0.249187,
		32.111542, 28.781755, 42.644611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459700, 29.285187, 43.013950>,  <32.290703, 29.435572, 42.819042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459700, 29.285187, 43.013950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691896, 28.959578, 43.021896>,  <31.831215, 28.764212, 43.026665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691896, 28.959578, 43.021896>,  <31.459700, 29.285187, 43.013950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691896, 28.959578, 43.021896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151139, -0.083744, 0.984959,
		-0.800117, -0.574762, -0.171644,
		0.580491, -0.814024, 0.019864,
		31.866043, 28.715370, 43.027855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113462, 28.862593, 43.349018>,  <31.459700, 29.285187, 43.013950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113462, 28.862593, 43.349018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478342, 28.699125, 43.360882>,  <31.697269, 28.601046, 43.368000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478342, 28.699125, 43.360882>,  <31.113462, 28.862593, 43.349018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478342, 28.699125, 43.360882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134004, -0.229132, 0.964127,
		-0.387213, -0.883452, -0.263778,
		0.912200, -0.408670, 0.029663,
		31.752003, 28.576525, 43.369781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967640, 28.408108, 43.860168>,  <31.113462, 28.862593, 43.349018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967640, 28.408108, 43.860168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365116, 28.407913, 43.815308>,  <31.603601, 28.407797, 43.788391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365116, 28.407913, 43.815308>,  <30.967640, 28.408108, 43.860168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365116, 28.407913, 43.815308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109536, -0.210409, 0.971458,
		-0.024067, -0.977613, -0.209028,
		0.993691, -0.000484, -0.112148,
		31.663223, 28.407768, 43.781662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254545, 27.818464, 44.150105>,  <30.967640, 28.408108, 43.860168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254545, 27.818464, 44.150105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540266, 28.098307, 44.142876>,  <31.711699, 28.266212, 44.138538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540266, 28.098307, 44.142876>,  <31.254545, 27.818464, 44.150105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540266, 28.098307, 44.142876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067155, -0.042821, 0.996823,
		0.696610, -0.713245, -0.077569,
		0.714300, 0.699606, -0.018068,
		31.754557, 28.308187, 44.137455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894928, 27.537203, 44.554070>,  <31.254545, 27.818464, 44.150105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894928, 27.537203, 44.554070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929827, 27.935673, 44.556179>,  <31.950766, 28.174755, 44.557446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929827, 27.935673, 44.556179>,  <31.894928, 27.537203, 44.554070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929827, 27.935673, 44.556179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278549, -0.029479, 0.959970,
		0.956451, -0.082284, -0.280055,
		0.087246, 0.996173, 0.005275,
		31.956001, 28.234524, 44.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427170, 27.601166, 45.089424>,  <31.894928, 27.537203, 44.554070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427170, 27.601166, 45.089424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332684, 27.986666, 45.039803>,  <32.275990, 28.217966, 45.010029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332684, 27.986666, 45.039803>,  <32.427170, 27.601166, 45.089424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332684, 27.986666, 45.039803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083752, 0.147382, 0.985527,
		0.968084, 0.222410, -0.115530,
		-0.236218, 0.963749, -0.124051,
		32.261818, 28.275791, 45.002586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823544, 28.021074, 45.495274>,  <32.427170, 27.601166, 45.089424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823544, 28.021074, 45.495274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490990, 28.230930, 45.422009>,  <32.291458, 28.356844, 45.378048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490990, 28.230930, 45.422009>,  <32.823544, 28.021074, 45.495274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490990, 28.230930, 45.422009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131705, 0.134183, 0.982165,
		0.539861, 0.840683, -0.042460,
		-0.831387, 0.524640, -0.183162,
		32.241573, 28.388323, 45.367062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050549, 28.590506, 45.834129>,  <32.823544, 28.021074, 45.495274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050549, 28.590506, 45.834129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652649, 28.588062, 45.793255>,  <32.413910, 28.586597, 45.768730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652649, 28.588062, 45.793255>,  <33.050549, 28.590506, 45.834129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652649, 28.588062, 45.793255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102125, 0.127557, 0.986560,
		0.007009, 0.991813, -0.127510,
		-0.994747, -0.006107, -0.102183,
		32.354225, 28.586229, 45.762600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407295, 29.274336, 45.942669>,  <33.050549, 28.590506, 45.834129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407295, 29.274336, 45.942669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788662, 29.286640, 46.062706>,  <34.017483, 29.294024, 46.134727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788662, 29.286640, 46.062706>,  <33.407295, 29.274336, 45.942669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788662, 29.286640, 46.062706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287960, 0.203635, -0.935741,
		-0.089895, 0.978563, 0.185291,
		0.953414, 0.030762, 0.300092,
		34.074688, 29.295868, 46.152733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784538, 29.869041, 45.545357>,  <33.407295, 29.274336, 45.942669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784538, 29.869041, 45.545357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083809, 29.643745, 45.685638>,  <34.263371, 29.508568, 45.769806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083809, 29.643745, 45.685638>,  <33.784538, 29.869041, 45.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083809, 29.643745, 45.685638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442765, 0.030173, -0.896130,
		0.494154, 0.825743, 0.271957,
		0.748179, -0.563239, 0.350700,
		34.308262, 29.474773, 45.790848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339504, 30.284716, 45.462406>,  <33.784538, 29.869041, 45.545357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339504, 30.284716, 45.462406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466171, 29.905302, 45.463169>,  <34.542171, 29.677654, 45.463627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466171, 29.905302, 45.463169>,  <34.339504, 30.284716, 45.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466171, 29.905302, 45.463169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440259, 0.145196, -0.886053,
		0.840175, 0.281425, 0.463580,
		0.316667, -0.948535, 0.001910,
		34.561172, 29.620741, 45.463741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118980, 30.314695, 45.209682>,  <34.339504, 30.284716, 45.462406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118980, 30.314695, 45.209682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959290, 29.950447, 45.167000>,  <34.863476, 29.731897, 45.141392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959290, 29.950447, 45.167000>,  <35.118980, 30.314695, 45.209682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959290, 29.950447, 45.167000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502822, -0.120138, -0.856001,
		0.766673, -0.395394, 0.505842,
		-0.399229, -0.910621, -0.106707,
		34.839520, 29.677261, 45.134987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560226, 30.040586, 44.795704>,  <35.118980, 30.314695, 45.209682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560226, 30.040586, 44.795704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269543, 29.767347, 44.766644>,  <35.095135, 29.603403, 44.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269543, 29.767347, 44.766644>,  <35.560226, 30.040586, 44.795704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269543, 29.767347, 44.766644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241985, -0.155574, -0.957726,
		0.642918, -0.713565, 0.278356,
		-0.726705, -0.683098, -0.072651,
		35.051533, 29.562418, 44.744846>
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
