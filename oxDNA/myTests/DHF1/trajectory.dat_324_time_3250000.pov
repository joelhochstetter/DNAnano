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
	<1.331080, 2.999813, 5.535588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469887, 3.008820, 5.160553>,  <1.553171, 3.014224, 4.935532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469887, 3.008820, 5.160553>,  <1.331080, 2.999813, 5.535588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469887, 3.008820, 5.160553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128207, 0.991466, -0.023640,
		0.929055, 0.128409, 0.346942,
		0.347017, 0.022517, -0.937589,
		1.573992, 3.015575, 4.879276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.926286, 3.444523, 5.547400>,  <1.331080, 2.999813, 5.535588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.926286, 3.444523, 5.547400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737648, 3.441032, 5.194691>,  <1.624465, 3.438938, 4.983066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737648, 3.441032, 5.194691>,  <1.926286, 3.444523, 5.547400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.737648, 3.441032, 5.194691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053983, 0.998361, 0.018991,
		0.880161, 0.056556, -0.471293,
		-0.471595, -0.008727, -0.881772,
		1.596169, 3.438414, 4.930159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.282236, 3.856556, 5.106278>,  <1.926286, 3.444523, 5.547400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.282236, 3.856556, 5.106278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901436, 3.872940, 4.984940>,  <1.672956, 3.882770, 4.912137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901436, 3.872940, 4.984940>,  <2.282236, 3.856556, 5.106278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.901436, 3.872940, 4.984940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055803, 0.997623, -0.040425,
		0.300970, -0.055412, -0.952023,
		-0.952000, 0.040959, -0.303347,
		1.615836, 3.885228, 4.893936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.332768, 4.208927, 4.390078>,  <2.282236, 3.856556, 5.106278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.332768, 4.208927, 4.390078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.017300, 4.261299, 4.630363>,  <1.828019, 4.292723, 4.774535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.017300, 4.261299, 4.630363>,  <2.332768, 4.208927, 4.390078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.017300, 4.261299, 4.630363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131145, 0.990400, -0.043688,
		-0.600667, 0.044325, -0.798270,
		-0.788670, 0.130931, 0.600713,
		1.780699, 4.300579, 4.810577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.800601, 4.690988, 4.109134>,  <2.332768, 4.208927, 4.390078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.800601, 4.690988, 4.109134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752342, 4.736549, 4.503590>,  <1.723387, 4.763886, 4.740263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752342, 4.736549, 4.503590>,  <1.800601, 4.690988, 4.109134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.752342, 4.736549, 4.503590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218638, 0.972051, -0.085528,
		-0.968319, 0.205289, -0.142178,
		-0.120647, 0.113904, 0.986139,
		1.716148, 4.770720, 4.799431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.442796, 5.283176, 4.195370>,  <1.800601, 4.690988, 4.109134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.442796, 5.283176, 4.195370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.635677, 5.224197, 4.540794>,  <1.751406, 5.188810, 4.748049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.635677, 5.224197, 4.540794>,  <1.442796, 5.283176, 4.195370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.635677, 5.224197, 4.540794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272798, 0.961998, 0.011927,
		-0.832503, 0.229826, 0.504102,
		0.482204, -0.147447, 0.863562,
		1.780339, 5.179963, 4.799863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235945, 5.877677, 4.627000>,  <1.442796, 5.283176, 4.195370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235945, 5.877677, 4.627000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.570484, 5.724243, 4.783657>,  <1.771208, 5.632183, 4.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.570484, 5.724243, 4.783657>,  <1.235945, 5.877677, 4.627000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.570484, 5.724243, 4.783657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355813, 0.923320, 0.144492,
		-0.417037, 0.018506, 0.908701,
		0.836348, -0.383586, 0.391643,
		1.821388, 5.609168, 4.901150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.394730, 6.317938, 5.104603>,  <1.235945, 5.877677, 4.627000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.394730, 6.317938, 5.104603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737377, 6.113106, 5.079372>,  <1.942966, 5.990207, 5.064234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737377, 6.113106, 5.079372>,  <1.394730, 6.317938, 5.104603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.737377, 6.113106, 5.079372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507207, 0.813373, 0.284895,
		-0.094583, -0.276039, 0.956481,
		0.856618, -0.512080, -0.063078,
		1.994363, 5.959482, 5.060449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.202193, 2.680128, -0.412338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.485937, 2.606491, -0.140186>,  <2.656184, 2.562309, 0.023105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.485937, 2.606491, -0.140186>,  <2.202193, 2.680128, -0.412338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.485937, 2.606491, -0.140186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007745, -0.967268, -0.253641,
		0.704802, 0.174653, -0.687568,
		0.709361, -0.184092, 0.680380,
		2.698745, 2.551264, 0.063928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.636504, 2.289360, -0.719387>,  <2.202193, 2.680128, -0.412338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.636504, 2.289360, -0.719387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.681476, 2.199417, -0.332233>,  <2.708459, 2.145452, -0.099941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.681476, 2.199417, -0.332233>,  <2.636504, 2.289360, -0.719387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.681476, 2.199417, -0.332233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286978, -0.939899, -0.185019,
		0.951317, -0.256960, -0.170201,
		0.112429, -0.224856, 0.967884,
		2.715204, 2.131960, -0.041868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095262, 1.699566, -0.697434>,  <2.636504, 2.289360, -0.719387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095262, 1.699566, -0.697434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.867255, 1.673462, -0.369820>,  <2.730451, 1.657800, -0.173251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.867255, 1.673462, -0.369820>,  <3.095262, 1.699566, -0.697434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867255, 1.673462, -0.369820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210645, -0.951917, -0.222447,
		0.794172, -0.299325, 0.528863,
		-0.570018, -0.065259, 0.819037,
		2.696250, 1.653884, -0.124109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.229487, 1.028989, -0.434901>,  <3.095262, 1.699566, -0.697434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.229487, 1.028989, -0.434901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.882220, 1.098160, -0.248833>,  <2.673861, 1.139663, -0.137192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.882220, 1.098160, -0.248833>,  <3.229487, 1.028989, -0.434901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.882220, 1.098160, -0.248833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212455, -0.976598, -0.033461,
		0.448499, -0.127877, 0.884588,
		-0.868166, 0.172928, 0.465171,
		2.621770, 1.150038, -0.109281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.145639, 0.374460, -0.070490>,  <3.229487, 1.028989, -0.434901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.145639, 0.374460, -0.070490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.788944, 0.553192, -0.041790>,  <2.574928, 0.660432, -0.024570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.788944, 0.553192, -0.041790>,  <3.145639, 0.374460, -0.070490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.788944, 0.553192, -0.041790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450205, -0.892023, -0.040138,
		0.046068, -0.068094, 0.996615,
		-0.891736, 0.446831, 0.071750,
		2.521423, 0.687242, -0.020265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.868945, 0.083591, 0.446759>,  <3.145639, 0.374460, -0.070490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.868945, 0.083591, 0.446759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.556824, 0.251526, 0.261345>,  <2.369551, 0.352287, 0.150097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.556824, 0.251526, 0.261345>,  <2.868945, 0.083591, 0.446759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.556824, 0.251526, 0.261345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545177, -0.819805, 0.175220,
		-0.306444, 0.389433, 0.868582,
		-0.780304, 0.419836, -0.463534,
		2.322733, 0.377477, 0.122285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.327971, 0.004411, 0.956035>,  <2.868945, 0.083591, 0.446759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.327971, 0.004411, 0.956035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.177013, 0.050079, 0.588440>,  <2.086439, 0.077480, 0.367883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.177013, 0.050079, 0.588440>,  <2.327971, 0.004411, 0.956035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.177013, 0.050079, 0.588440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626342, -0.762425, 0.162495,
		-0.682107, 0.636925, 0.359243,
		-0.377393, 0.114170, -0.918988,
		2.063796, 0.084330, 0.312743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660291, 0.057757, 1.064796>,  <2.327971, 0.004411, 0.956035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660291, 0.057757, 1.064796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.699432, -0.056549, 0.683479>,  <1.722917, -0.125133, 0.454690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.699432, -0.056549, 0.683479>,  <1.660291, 0.057757, 1.064796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.699432, -0.056549, 0.683479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700388, -0.700289, 0.138029,
		-0.707023, 0.654167, -0.268673,
		0.097854, -0.285765, -0.953290,
		1.728789, -0.142278, 0.397492>
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
