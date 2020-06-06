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
	<24.627626, 34.981945, 34.691490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378477, 34.937279, 35.001213>,  <24.228987, 34.910480, 35.187046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378477, 34.937279, 35.001213>,  <24.627626, 34.981945, 34.691490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378477, 34.937279, 35.001213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018336, -0.991573, -0.128248,
		0.782107, -0.065684, 0.619673,
		-0.622874, -0.111666, 0.774311,
		24.191614, 34.903778, 35.233505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752007, 35.623920, 34.423531>,  <24.627626, 34.981945, 34.691490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752007, 35.623920, 34.423531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063236, 35.757858, 34.636124>,  <25.249973, 35.838223, 34.763680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063236, 35.757858, 34.636124>,  <24.752007, 35.623920, 34.423531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063236, 35.757858, 34.636124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520514, -0.817322, -0.247084,
		0.351660, 0.468896, -0.810230,
		0.778075, 0.334846, 0.531486,
		25.296659, 35.858311, 34.795570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353159, 35.719193, 33.955879>,  <24.752007, 35.623920, 34.423531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353159, 35.719193, 33.955879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437841, 35.645916, 34.339882>,  <25.488651, 35.601948, 34.570286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437841, 35.645916, 34.339882>,  <25.353159, 35.719193, 33.955879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437841, 35.645916, 34.339882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507733, -0.818705, -0.268197,
		0.835098, 0.544208, -0.080311,
		0.211706, -0.183194, 0.960011,
		25.501352, 35.590958, 34.627884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017536, 35.657909, 33.958603>,  <25.353159, 35.719193, 33.955879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017536, 35.657909, 33.958603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893394, 35.444153, 34.273083>,  <25.818911, 35.315899, 34.461769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893394, 35.444153, 34.273083>,  <26.017536, 35.657909, 33.958603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893394, 35.444153, 34.273083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323079, -0.837099, -0.441458,
		0.894036, 0.116996, 0.432448,
		-0.310353, -0.534395, 0.786196,
		25.800289, 35.283836, 34.508942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570288, 35.290546, 34.154354>,  <26.017536, 35.657909, 33.958603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570288, 35.290546, 34.154354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226669, 35.112732, 34.255882>,  <26.020498, 35.006042, 34.316799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226669, 35.112732, 34.255882>,  <26.570288, 35.290546, 34.154354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226669, 35.112732, 34.255882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313897, -0.849132, -0.424787,
		0.404361, -0.285238, 0.868983,
		-0.859047, -0.444538, 0.253821,
		25.968956, 34.979370, 34.332027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662333, 34.664162, 34.403725>,  <26.570288, 35.290546, 34.154354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662333, 34.664162, 34.403725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296309, 34.663200, 34.242401>,  <26.076694, 34.662624, 34.145607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296309, 34.663200, 34.242401>,  <26.662333, 34.664162, 34.403725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296309, 34.663200, 34.242401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264724, -0.758012, -0.596103,
		-0.304279, -0.652236, 0.694264,
		-0.915060, -0.002407, -0.403310,
		26.021790, 34.662479, 34.121407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174118, 34.121712, 34.702438>,  <26.662333, 34.664162, 34.403725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174118, 34.121712, 34.702438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197531, 34.219193, 34.315205>,  <26.211578, 34.277679, 34.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197531, 34.219193, 34.315205>,  <26.174118, 34.121712, 34.702438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197531, 34.219193, 34.315205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247016, -0.943126, -0.222479,
		-0.967242, -0.226110, -0.115401,
		0.058533, 0.243697, -0.968083,
		26.215090, 34.292301, 34.024780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066071, 33.529575, 34.393269>,  <26.174118, 34.121712, 34.702438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066071, 33.529575, 34.393269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235430, 33.758209, 34.112118>,  <26.337046, 33.895390, 33.943428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235430, 33.758209, 34.112118>,  <26.066071, 33.529575, 34.393269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235430, 33.758209, 34.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428709, -0.809889, -0.400361,
		-0.798087, -0.131816, -0.587947,
		0.423398, 0.571581, -0.702872,
		26.362450, 33.929684, 33.901257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131208, 33.109459, 33.755997>,  <26.066071, 33.529575, 34.393269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131208, 33.109459, 33.755997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397610, 33.396542, 33.674679>,  <26.557451, 33.568790, 33.625889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397610, 33.396542, 33.674679>,  <26.131208, 33.109459, 33.755997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397610, 33.396542, 33.674679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639307, -0.689608, -0.340186,
		-0.384350, 0.096597, -0.918120,
		0.666004, 0.717711, -0.203296,
		26.597410, 33.611855, 33.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295019, 33.021755, 33.063335>,  <26.131208, 33.109459, 33.755997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295019, 33.021755, 33.063335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608723, 33.207035, 33.228447>,  <26.796944, 33.318203, 33.327515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608723, 33.207035, 33.228447>,  <26.295019, 33.021755, 33.063335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608723, 33.207035, 33.228447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614963, -0.668511, -0.418226,
		0.082229, 0.581844, -0.809133,
		0.784257, 0.463196, 0.412783,
		26.844000, 33.345993, 33.352283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839334, 33.081970, 32.620537>,  <26.295019, 33.021755, 33.063335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839334, 33.081970, 32.620537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063471, 33.118290, 32.949844>,  <27.197952, 33.140079, 33.147430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063471, 33.118290, 32.949844>,  <26.839334, 33.081970, 32.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063471, 33.118290, 32.949844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735078, -0.512558, -0.443785,
		0.381680, 0.853839, -0.353949,
		0.560340, 0.090796, 0.823271,
		27.231573, 33.145531, 33.196827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473703, 33.171955, 32.341736>,  <26.839334, 33.081970, 32.620537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473703, 33.171955, 32.341736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540916, 33.067341, 32.721916>,  <27.581244, 33.004570, 32.950024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540916, 33.067341, 32.721916>,  <27.473703, 33.171955, 32.341736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540916, 33.067341, 32.721916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759808, -0.579922, -0.293908,
		0.628057, 0.771549, 0.101274,
		0.168033, -0.261539, 0.950454,
		27.591326, 32.988880, 33.007053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487663, 32.462284, 32.428730>,  <27.473703, 33.171955, 32.341736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487663, 32.462284, 32.428730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753664, 32.224983, 32.610203>,  <27.913263, 32.082603, 32.719086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753664, 32.224983, 32.610203>,  <27.487663, 32.462284, 32.428730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753664, 32.224983, 32.610203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122726, 0.512399, 0.849932,
		-0.736691, -0.620883, 0.267938,
		0.665000, -0.593255, 0.453678,
		27.953163, 32.047009, 32.746307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384335, 31.906668, 33.048103>,  <27.487663, 32.462284, 32.428730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384335, 31.906668, 33.048103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752878, 32.058575, 33.081268>,  <27.974005, 32.149719, 33.101166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752878, 32.058575, 33.081268>,  <27.384335, 31.906668, 33.048103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752878, 32.058575, 33.081268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311663, 0.594257, 0.741434,
		0.232300, -0.708968, 0.665883,
		0.921359, 0.379767, 0.082914,
		28.029285, 32.172504, 33.106144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571457, 32.017120, 33.744286>,  <27.384335, 31.906668, 33.048103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571457, 32.017120, 33.744286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725557, 32.267868, 33.473400>,  <27.818018, 32.418316, 33.310871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725557, 32.267868, 33.473400>,  <27.571457, 32.017120, 33.744286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725557, 32.267868, 33.473400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408962, 0.773834, 0.483665,
		0.827245, 0.090622, 0.554485,
		0.385249, 0.626872, -0.677211,
		27.841133, 32.455929, 33.270237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936007, 32.562836, 34.116695>,  <27.571457, 32.017120, 33.744286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936007, 32.562836, 34.116695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805134, 32.685883, 33.759300>,  <27.726610, 32.759708, 33.544861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805134, 32.685883, 33.759300>,  <27.936007, 32.562836, 34.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805134, 32.685883, 33.759300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465701, 0.770244, 0.435714,
		0.822237, 0.558657, -0.108755,
		-0.327183, 0.307613, -0.893491,
		27.706980, 32.778168, 33.491253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006063, 33.312794, 34.224640>,  <27.936007, 32.562836, 34.116695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006063, 33.312794, 34.224640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749199, 33.254326, 33.923637>,  <27.595079, 33.219246, 33.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749199, 33.254326, 33.923637>,  <28.006063, 33.312794, 34.224640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749199, 33.254326, 33.923637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519615, 0.804714, 0.287117,
		0.563584, 0.575388, -0.592708,
		-0.642164, -0.146166, -0.752503,
		27.556549, 33.210476, 33.697887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708439, 34.045677, 33.996719>,  <28.006063, 33.312794, 34.224640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708439, 34.045677, 33.996719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459595, 33.826984, 33.772556>,  <27.310287, 33.695770, 33.638058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459595, 33.826984, 33.772556>,  <27.708439, 34.045677, 33.996719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459595, 33.826984, 33.772556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603493, 0.790865, -0.101628,
		0.498774, 0.274981, -0.821955,
		-0.622110, -0.546734, -0.560412,
		27.272963, 33.662964, 33.604431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496515, 34.461617, 33.474472>,  <27.708439, 34.045677, 33.996719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496515, 34.461617, 33.474472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211586, 34.186390, 33.529839>,  <27.040628, 34.021255, 33.563061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211586, 34.186390, 33.529839>,  <27.496515, 34.461617, 33.474472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211586, 34.186390, 33.529839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699382, 0.712405, -0.057827,
		-0.058823, -0.138000, -0.988684,
		-0.712324, -0.688066, 0.138420,
		26.997889, 33.979969, 33.571365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041216, 34.561455, 32.963959>,  <27.496515, 34.461617, 33.474472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041216, 34.561455, 32.963959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856125, 34.376713, 33.266636>,  <26.745070, 34.265869, 33.448242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856125, 34.376713, 33.266636>,  <27.041216, 34.561455, 32.963959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856125, 34.376713, 33.266636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674151, 0.737618, 0.037958,
		-0.575678, -0.492558, -0.652673,
		-0.462727, -0.461851, 0.756688,
		26.717306, 34.238159, 33.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371449, 34.734272, 32.841652>,  <27.041216, 34.561455, 32.963959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371449, 34.734272, 32.841652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422264, 34.635185, 33.225838>,  <26.452753, 34.575733, 33.456348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422264, 34.635185, 33.225838>,  <26.371449, 34.734272, 32.841652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422264, 34.635185, 33.225838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618503, 0.737225, 0.271944,
		-0.775445, -0.628600, -0.059555,
		0.127039, -0.247713, 0.960468,
		26.460375, 34.560871, 33.513977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675579, 34.541893, 33.167866>,  <26.371449, 34.734272, 32.841652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675579, 34.541893, 33.167866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959135, 34.682720, 33.412331>,  <26.129269, 34.767216, 33.559010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959135, 34.682720, 33.412331>,  <25.675579, 34.541893, 33.167866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959135, 34.682720, 33.412331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530600, 0.837088, 0.133222,
		-0.464695, -0.418723, 0.780212,
		0.708889, 0.352073, 0.611165,
		26.171803, 34.788342, 33.595680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289165, 34.027252, 33.563713>,  <25.675579, 34.541893, 33.167866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289165, 34.027252, 33.563713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496830, 34.000648, 33.904545>,  <25.621429, 33.984684, 34.109043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496830, 34.000648, 33.904545>,  <25.289165, 34.027252, 33.563713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496830, 34.000648, 33.904545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389813, 0.868805, 0.305327,
		-0.760602, -0.490667, 0.425124,
		0.519163, -0.066514, 0.852083,
		25.652578, 33.980694, 34.160172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875826, 34.185070, 34.171009>,  <25.289165, 34.027252, 33.563713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875826, 34.185070, 34.171009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249855, 34.261555, 34.290390>,  <25.474272, 34.307446, 34.362019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249855, 34.261555, 34.290390>,  <24.875826, 34.185070, 34.171009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249855, 34.261555, 34.290390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299558, 0.876425, 0.377020,
		-0.189484, -0.441947, 0.876800,
		0.935073, 0.191213, 0.298457,
		25.530376, 34.318920, 34.379929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991995, 34.347713, 34.857212>,  <24.875826, 34.185070, 34.171009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991995, 34.347713, 34.857212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309814, 34.544605, 34.714996>,  <25.500505, 34.662739, 34.629665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309814, 34.544605, 34.714996>,  <24.991995, 34.347713, 34.857212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309814, 34.544605, 34.714996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213980, 0.774954, 0.594693,
		0.568248, -0.396434, 0.721065,
		0.794548, 0.492226, -0.355537,
		25.548180, 34.692272, 34.608334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224527, 34.700794, 35.489788>,  <24.991995, 34.347713, 34.857212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224527, 34.700794, 35.489788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418737, 34.881046, 35.190136>,  <25.535263, 34.989197, 35.010345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418737, 34.881046, 35.190136>,  <25.224527, 34.700794, 35.489788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418737, 34.881046, 35.190136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098308, 0.879622, 0.465404,
		0.868672, -0.152325, 0.471387,
		0.485536, 0.450625, -0.749129,
		25.564396, 35.016235, 34.965397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765112, 35.156181, 35.814789>,  <25.224527, 34.700794, 35.489788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765112, 35.156181, 35.814789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658796, 35.286060, 35.451706>,  <25.595007, 35.363987, 35.233856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658796, 35.286060, 35.451706>,  <25.765112, 35.156181, 35.814789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658796, 35.286060, 35.451706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290473, 0.870841, 0.396562,
		0.919229, 0.369065, -0.137145,
		-0.265788, 0.324694, -0.907706,
		25.579060, 35.383469, 35.179394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365133, 35.262199, 36.195473>,  <25.765112, 35.156181, 35.814789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365133, 35.262199, 36.195473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587173, 35.007122, 35.981853>,  <26.720398, 34.854076, 35.853683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587173, 35.007122, 35.981853>,  <26.365133, 35.262199, 36.195473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587173, 35.007122, 35.981853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525419, 0.228912, -0.819472,
		0.644825, 0.735487, -0.207989,
		0.555100, -0.637697, -0.534047,
		26.753704, 34.815811, 35.821640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903904, 35.452274, 36.637154>,  <26.365133, 35.262199, 36.195473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903904, 35.452274, 36.637154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265604, 35.302200, 36.555599>,  <27.482624, 35.212158, 36.506668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265604, 35.302200, 36.555599>,  <26.903904, 35.452274, 36.637154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265604, 35.302200, 36.555599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396415, 0.560142, 0.727390,
		-0.158700, -0.738565, 0.655237,
		0.904250, -0.375183, -0.203884,
		27.536879, 35.189644, 36.494434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344852, 35.080505, 37.178329>,  <26.903904, 35.452274, 36.637154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344852, 35.080505, 37.178329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529270, 35.324322, 36.920368>,  <27.639921, 35.470612, 36.765591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529270, 35.324322, 36.920368>,  <27.344852, 35.080505, 37.178329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529270, 35.324322, 36.920368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046884, 0.742470, 0.668236,
		0.886139, -0.277849, 0.370888,
		0.461042, 0.609539, -0.644905,
		27.667583, 35.507183, 36.726898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837473, 35.470394, 37.488750>,  <27.344852, 35.080505, 37.178329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837473, 35.470394, 37.488750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783424, 35.715393, 37.177216>,  <27.750996, 35.862392, 36.990295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783424, 35.715393, 37.177216>,  <27.837473, 35.470394, 37.488750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783424, 35.715393, 37.177216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107802, 0.772296, 0.626050,
		0.984947, 0.168552, -0.038325,
		-0.135120, 0.612495, -0.778841,
		27.742887, 35.899143, 36.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165176, 36.030769, 37.677170>,  <27.837473, 35.470394, 37.488750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165176, 36.030769, 37.677170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938555, 36.166130, 37.376637>,  <27.802582, 36.247349, 37.196316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938555, 36.166130, 37.376637>,  <28.165176, 36.030769, 37.677170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938555, 36.166130, 37.376637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112057, 0.871671, 0.477108,
		0.816370, 0.354500, -0.455928,
		-0.566554, 0.338406, -0.751330,
		27.768589, 36.267651, 37.151237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401281, 36.712021, 37.436195>,  <28.165176, 36.030769, 37.677170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401281, 36.712021, 37.436195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015022, 36.674541, 37.339245>,  <27.783268, 36.652054, 37.281075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015022, 36.674541, 37.339245>,  <28.401281, 36.712021, 37.436195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015022, 36.674541, 37.339245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186313, 0.899853, 0.394401,
		0.181151, 0.426011, -0.886397,
		-0.965646, -0.093702, -0.242380,
		27.725328, 36.646431, 37.266529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218845, 37.424042, 37.054100>,  <28.401281, 36.712021, 37.436195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218845, 37.424042, 37.054100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890882, 37.238335, 37.188087>,  <27.694105, 37.126911, 37.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890882, 37.238335, 37.188087>,  <28.218845, 37.424042, 37.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890882, 37.238335, 37.188087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320585, 0.857098, 0.403247,
		-0.474316, 0.223240, -0.851580,
		-0.819908, -0.464270, 0.334968,
		27.644911, 37.099052, 37.288578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675835, 37.759472, 36.689098>,  <28.218845, 37.424042, 37.054100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675835, 37.759472, 36.689098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575279, 37.591648, 37.037987>,  <27.514946, 37.490955, 37.247322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575279, 37.591648, 37.037987>,  <27.675835, 37.759472, 36.689098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575279, 37.591648, 37.037987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520900, 0.818172, 0.243430,
		-0.815762, -0.393146, -0.424228,
		-0.251388, -0.419561, 0.872223,
		27.499863, 37.465778, 37.299652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002995, 38.018757, 36.818302>,  <27.675835, 37.759472, 36.689098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002995, 38.018757, 36.818302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162449, 37.910656, 37.168858>,  <27.258121, 37.845795, 37.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162449, 37.910656, 37.168858>,  <27.002995, 38.018757, 36.818302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162449, 37.910656, 37.168858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362457, 0.831373, 0.421240,
		-0.842446, -0.485574, 0.233460,
		0.398635, -0.270253, 0.876387,
		27.282040, 37.829578, 37.431774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574745, 37.987514, 37.405643>,  <27.002995, 38.018757, 36.818302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574745, 37.987514, 37.405643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939178, 38.079926, 37.542206>,  <27.157839, 38.135372, 37.624142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939178, 38.079926, 37.542206>,  <26.574745, 37.987514, 37.405643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939178, 38.079926, 37.542206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338901, 0.891283, 0.301264,
		-0.234686, -0.390178, 0.890328,
		0.911081, 0.231031, 0.341403,
		27.212503, 38.149235, 37.644627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883316, 38.140839, 37.256119>,  <26.574745, 37.987514, 37.405643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883316, 38.140839, 37.256119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161558, 38.100960, 36.971531>,  <26.328505, 38.077030, 36.800777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161558, 38.100960, 36.971531>,  <25.883316, 38.140839, 37.256119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161558, 38.100960, 36.971531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653954, -0.497894, -0.569601,
		-0.297449, 0.861488, -0.411537,
		0.695606, -0.099699, -0.711472,
		26.370239, 38.071049, 36.758091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749865, 37.906033, 38.021595>,  <25.883316, 38.140839, 37.256119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749865, 37.906033, 38.021595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565266, 38.067104, 37.705399>,  <25.454506, 38.163746, 37.515682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565266, 38.067104, 37.705399>,  <25.749865, 37.906033, 38.021595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565266, 38.067104, 37.705399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018095, 0.895139, 0.445420,
		0.886956, 0.191257, -0.420392,
		-0.461499, 0.402675, -0.790488,
		25.426815, 38.187908, 37.468250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044865, 38.599518, 37.968159>,  <25.749865, 37.906033, 38.021595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044865, 38.599518, 37.968159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693523, 38.603973, 37.777004>,  <25.482719, 38.606647, 37.662312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693523, 38.603973, 37.777004>,  <26.044865, 38.599518, 37.968159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693523, 38.603973, 37.777004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215764, 0.882849, 0.417161,
		0.426545, 0.469525, -0.773050,
		-0.878354, 0.011142, -0.477881,
		25.430017, 38.607315, 37.633640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515696, 38.998985, 38.485611>,  <26.044865, 38.599518, 37.968159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515696, 38.998985, 38.485611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686625, 38.760235, 38.757240>,  <26.789183, 38.616985, 38.920216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686625, 38.760235, 38.757240>,  <26.515696, 38.998985, 38.485611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686625, 38.760235, 38.757240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229655, -0.654805, -0.720062,
		0.874445, 0.463650, -0.142738,
		0.427323, -0.596874, 0.679071,
		26.814821, 38.581173, 38.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198565, 38.885319, 38.246433>,  <26.515696, 38.998985, 38.485611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198565, 38.885319, 38.246433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099977, 38.590794, 38.498497>,  <27.040825, 38.414078, 38.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099977, 38.590794, 38.498497>,  <27.198565, 38.885319, 38.246433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099977, 38.590794, 38.498497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157945, -0.672040, -0.723475,
		0.956194, -0.078784, 0.281934,
		-0.246469, -0.736312, 0.630156,
		27.026037, 38.369900, 38.687546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643114, 38.396118, 38.173042>,  <27.198565, 38.885319, 38.246433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643114, 38.396118, 38.173042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315268, 38.213001, 38.310829>,  <27.118561, 38.103130, 38.393501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315268, 38.213001, 38.310829>,  <27.643114, 38.396118, 38.173042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315268, 38.213001, 38.310829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079392, -0.686205, -0.723063,
		0.567388, -0.565284, 0.598768,
		-0.819614, -0.457795, 0.344465,
		27.069384, 38.075665, 38.414169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802700, 37.692661, 38.266895>,  <27.643114, 38.396118, 38.173042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802700, 37.692661, 38.266895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413956, 37.748615, 38.191090>,  <27.180710, 37.782188, 38.145607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413956, 37.748615, 38.191090>,  <27.802700, 37.692661, 38.266895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413956, 37.748615, 38.191090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006104, -0.789340, -0.613926,
		-0.235475, -0.597808, 0.766275,
		-0.971861, 0.139887, -0.189518,
		27.122396, 37.790581, 38.134235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371004, 37.161896, 38.406181>,  <27.802700, 37.692661, 38.266895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371004, 37.161896, 38.406181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180019, 37.355167, 38.112633>,  <27.065428, 37.471130, 37.936504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180019, 37.355167, 38.112633>,  <27.371004, 37.161896, 38.406181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180019, 37.355167, 38.112633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030170, -0.825717, -0.563277,
		-0.878134, -0.291084, 0.379672,
		-0.477462, 0.483178, -0.733872,
		27.036781, 37.500122, 37.892471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771185, 36.757996, 38.235092>,  <27.371004, 37.161896, 38.406181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771185, 36.757996, 38.235092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921522, 36.995308, 37.950344>,  <27.011724, 37.137695, 37.779495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921522, 36.995308, 37.950344>,  <26.771185, 36.757996, 38.235092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921522, 36.995308, 37.950344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184482, -0.800722, -0.569922,
		-0.908134, 0.082875, -0.410396,
		0.375845, 0.593276, -0.711874,
		27.034275, 37.173290, 37.736782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563309, 36.467350, 37.620117>,  <26.771185, 36.757996, 38.235092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563309, 36.467350, 37.620117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879343, 36.689560, 37.516464>,  <27.068964, 36.822887, 37.454273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879343, 36.689560, 37.516464>,  <26.563309, 36.467350, 37.620117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879343, 36.689560, 37.516464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315466, -0.730943, -0.605147,
		-0.525588, 0.396372, -0.752759,
		0.790088, 0.555528, -0.259133,
		27.116369, 36.856220, 37.438725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500933, 36.567936, 36.881363>,  <26.563309, 36.467350, 37.620117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500933, 36.567936, 36.881363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882355, 36.594357, 36.998917>,  <27.111208, 36.610210, 37.069450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882355, 36.594357, 36.998917>,  <26.500933, 36.567936, 36.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882355, 36.594357, 36.998917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233674, -0.777885, -0.583345,
		0.190078, 0.624925, -0.757191,
		0.953555, 0.066055, 0.293887,
		27.168421, 36.614174, 37.087082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892363, 36.684547, 36.306831>,  <26.500933, 36.567936, 36.881363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892363, 36.684547, 36.306831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149809, 36.525772, 36.568581>,  <27.304276, 36.430508, 36.725628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149809, 36.525772, 36.568581>,  <26.892363, 36.684547, 36.306831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149809, 36.525772, 36.568581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404342, -0.549586, -0.731070,
		0.649822, 0.735116, -0.193223,
		0.643614, -0.396937, 0.654371,
		27.342894, 36.406693, 36.764893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612385, 36.611874, 35.962097>,  <26.892363, 36.684547, 36.306831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612385, 36.611874, 35.962097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602020, 36.367599, 36.278679>,  <27.595802, 36.221035, 36.468628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602020, 36.367599, 36.278679>,  <27.612385, 36.611874, 35.962097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602020, 36.367599, 36.278679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712648, -0.566497, -0.413780,
		0.701043, 0.553304, 0.449882,
		-0.025910, -0.610685, 0.791450,
		27.594248, 36.184395, 36.516113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281509, 36.598312, 36.217087>,  <27.612385, 36.611874, 35.962097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281509, 36.598312, 36.217087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106743, 36.266056, 36.355156>,  <28.001883, 36.066704, 36.437996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106743, 36.266056, 36.355156>,  <28.281509, 36.598312, 36.217087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106743, 36.266056, 36.355156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685179, -0.555954, -0.470579,
		0.582782, 0.030903, 0.812041,
		-0.436914, -0.830639, 0.345174,
		27.975668, 36.016865, 36.458710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672810, 36.138641, 36.756233>,  <28.281509, 36.598312, 36.217087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672810, 36.138641, 36.756233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455957, 35.957748, 36.472946>,  <28.325846, 35.849213, 36.302975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455957, 35.957748, 36.472946>,  <28.672810, 36.138641, 36.756233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455957, 35.957748, 36.472946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829654, -0.421778, -0.365757,
		-0.133304, -0.785867, 0.603857,
		-0.542130, -0.452235, -0.708222,
		28.293318, 35.822079, 36.260479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795389, 35.396233, 36.777374>,  <28.672810, 36.138641, 36.756233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795389, 35.396233, 36.777374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732391, 35.541656, 36.410110>,  <28.694592, 35.628910, 36.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732391, 35.541656, 36.410110>,  <28.795389, 35.396233, 36.777374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732391, 35.541656, 36.410110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827078, -0.459452, -0.323798,
		-0.539571, -0.810389, -0.228327,
		-0.157496, 0.363556, -0.918162,
		28.685143, 35.650723, 36.134663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822527, 34.825439, 36.330727>,  <28.795389, 35.396233, 36.777374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822527, 34.825439, 36.330727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963715, 35.178162, 36.205608>,  <29.048428, 35.389793, 36.130539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963715, 35.178162, 36.205608>,  <28.822527, 34.825439, 36.330727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963715, 35.178162, 36.205608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841715, -0.445253, -0.305395,
		-0.408569, -0.155485, -0.899386,
		0.352970, 0.881801, -0.312791,
		29.069605, 35.442703, 36.111771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071413, 34.926582, 35.627468>,  <28.822527, 34.825439, 36.330727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071413, 34.926582, 35.627468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282206, 35.193768, 35.837654>,  <29.408680, 35.354080, 35.963768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282206, 35.193768, 35.837654>,  <29.071413, 34.926582, 35.627468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282206, 35.193768, 35.837654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848820, -0.382833, -0.364614,
		-0.042382, 0.638172, -0.768726,
		0.526980, 0.667963, 0.525468,
		29.440300, 35.394157, 35.995293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530174, 35.491337, 35.289017>,  <29.071413, 34.926582, 35.627468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530174, 35.491337, 35.289017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687153, 35.337612, 35.623272>,  <29.781340, 35.245377, 35.823826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687153, 35.337612, 35.623272>,  <29.530174, 35.491337, 35.289017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687153, 35.337612, 35.623272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747896, -0.395502, -0.533132,
		0.535384, 0.834197, 0.132209,
		0.392448, -0.384309, 0.835638,
		29.804888, 35.222321, 35.873962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144709, 35.757587, 35.395985>,  <29.530174, 35.491337, 35.289017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144709, 35.757587, 35.395985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189371, 35.404465, 35.578491>,  <30.216169, 35.192589, 35.687996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189371, 35.404465, 35.578491>,  <30.144709, 35.757587, 35.395985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189371, 35.404465, 35.578491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755208, -0.223044, -0.616370,
		0.645905, 0.413398, 0.641801,
		0.111657, -0.882810, 0.456267,
		30.222868, 35.139622, 35.715370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770332, 35.711891, 35.772964>,  <30.144709, 35.757587, 35.395985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770332, 35.711891, 35.772964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665394, 35.342579, 35.660732>,  <30.602430, 35.120991, 35.593391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665394, 35.342579, 35.660732>,  <30.770332, 35.711891, 35.772964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665394, 35.342579, 35.660732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849737, -0.083244, -0.520594,
		0.457298, -0.374998, 0.806384,
		-0.262348, -0.923281, -0.280582,
		30.586689, 35.065594, 35.576557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330980, 35.170105, 35.745827>,  <30.770332, 35.711891, 35.772964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330980, 35.170105, 35.745827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063683, 35.014668, 35.492073>,  <30.903303, 34.921406, 35.339821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063683, 35.014668, 35.492073>,  <31.330980, 35.170105, 35.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063683, 35.014668, 35.492073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741986, -0.286384, -0.606169,
		0.053876, -0.875774, 0.479706,
		-0.668247, -0.388594, -0.634383,
		30.863209, 34.898090, 35.301758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647635, 34.571308, 35.494591>,  <31.330980, 35.170105, 35.745827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647635, 34.571308, 35.494591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373190, 34.615719, 35.207001>,  <31.208523, 34.642365, 35.034447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373190, 34.615719, 35.207001>,  <31.647635, 34.571308, 35.494591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373190, 34.615719, 35.207001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597832, -0.477103, -0.644182,
		-0.414543, -0.871807, 0.260973,
		-0.686113, 0.111023, -0.718974,
		31.167356, 34.649025, 34.991310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609783, 33.870777, 35.235428>,  <31.647635, 34.571308, 35.494591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609783, 33.870777, 35.235428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392920, 34.081238, 34.973366>,  <31.262802, 34.207512, 34.816128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392920, 34.081238, 34.973366>,  <31.609783, 33.870777, 35.235428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392920, 34.081238, 34.973366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462925, -0.463672, -0.755453,
		-0.701260, -0.712863, 0.007816,
		-0.542158, 0.526150, -0.655156,
		31.230272, 34.239082, 34.776817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254341, 33.376148, 34.724468>,  <31.609783, 33.870777, 35.235428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254341, 33.376148, 34.724468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324202, 33.746552, 34.590603>,  <31.366117, 33.968796, 34.510284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324202, 33.746552, 34.590603>,  <31.254341, 33.376148, 34.724468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324202, 33.746552, 34.590603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553425, -0.373442, -0.744488,
		-0.814381, -0.055186, -0.577700,
		0.174652, 0.926010, -0.334666,
		31.376596, 34.024353, 34.490204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979296, 33.401527, 34.036209>,  <31.254341, 33.376148, 34.724468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979296, 33.401527, 34.036209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298687, 33.637623, 34.083630>,  <31.490322, 33.779282, 34.112083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298687, 33.637623, 34.083630>,  <30.979296, 33.401527, 34.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298687, 33.637623, 34.083630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483661, -0.511669, -0.710118,
		-0.358479, 0.624351, -0.694030,
		0.798477, 0.590238, 0.118551,
		31.538231, 33.814693, 34.119194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217039, 33.851479, 33.508919>,  <30.979296, 33.401527, 34.036209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217039, 33.851479, 33.508919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505621, 33.717850, 33.751537>,  <31.678770, 33.637672, 33.897110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505621, 33.717850, 33.751537>,  <31.217039, 33.851479, 33.508919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505621, 33.717850, 33.751537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441052, -0.453584, -0.774425,
		0.533833, 0.826232, -0.179898,
		0.721454, -0.334069, 0.606549,
		31.722057, 33.617630, 33.933502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822098, 34.248264, 33.386078>,  <31.217039, 33.851479, 33.508919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822098, 34.248264, 33.386078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851004, 33.855076, 33.453663>,  <31.868347, 33.619164, 33.494213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851004, 33.855076, 33.453663>,  <31.822098, 34.248264, 33.386078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851004, 33.855076, 33.453663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320588, -0.137523, -0.937182,
		0.944458, 0.121892, 0.305191,
		0.072265, -0.982970, 0.168962,
		31.872683, 33.560184, 33.504353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440853, 34.041164, 33.134808>,  <31.822098, 34.248264, 33.386078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440853, 34.041164, 33.134808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243534, 33.694954, 33.169483>,  <32.125141, 33.487228, 33.190289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243534, 33.694954, 33.169483>,  <32.440853, 34.041164, 33.134808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243534, 33.694954, 33.169483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212531, -0.216570, -0.952853,
		0.843497, -0.451615, 0.290785,
		-0.493298, -0.865530, 0.086694,
		32.095543, 33.435295, 33.195492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879528, 33.519615, 32.756371>,  <32.440853, 34.041164, 33.134808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879528, 33.519615, 32.756371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516903, 33.352634, 32.781300>,  <32.299328, 33.252445, 32.796257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516903, 33.352634, 32.781300>,  <32.879528, 33.519615, 32.756371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516903, 33.352634, 32.781300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072936, -0.300380, -0.951027,
		0.415726, -0.857618, 0.302760,
		-0.906561, -0.417448, 0.062325,
		32.244934, 33.227402, 32.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826633, 32.832565, 32.482452>,  <32.879528, 33.519615, 32.756371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826633, 32.832565, 32.482452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471588, 33.003292, 32.413204>,  <32.258560, 33.105728, 32.371655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471588, 33.003292, 32.413204>,  <32.826633, 32.832565, 32.482452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471588, 33.003292, 32.413204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020753, -0.338423, -0.940765,
		-0.460122, -0.838628, 0.291531,
		-0.887614, 0.426817, -0.173120,
		32.205303, 33.131336, 32.361267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358997, 32.322468, 32.170528>,  <32.826633, 32.832565, 32.482452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358997, 32.322468, 32.170528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222603, 32.688927, 32.086239>,  <32.140766, 32.908802, 32.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222603, 32.688927, 32.086239>,  <32.358997, 32.322468, 32.170528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222603, 32.688927, 32.086239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083579, -0.252813, -0.963898,
		-0.936344, -0.311068, 0.162778,
		-0.340990, 0.916145, -0.210721,
		32.120304, 32.963772, 32.023022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826672, 32.195419, 31.708261>,  <32.358997, 32.322468, 32.170528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826672, 32.195419, 31.708261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906168, 32.576653, 31.616924>,  <31.953865, 32.805393, 31.562122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906168, 32.576653, 31.616924>,  <31.826672, 32.195419, 31.708261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906168, 32.576653, 31.616924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216506, -0.184537, -0.958682,
		-0.955839, 0.239966, 0.169673,
		0.198740, 0.953080, -0.228342,
		31.965790, 32.862576, 31.548422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267744, 32.483749, 31.200905>,  <31.826672, 32.195419, 31.708261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267744, 32.483749, 31.200905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590147, 32.716652, 31.158331>,  <31.783588, 32.856392, 31.132786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590147, 32.716652, 31.158331>,  <31.267744, 32.483749, 31.200905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590147, 32.716652, 31.158331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095805, -0.049113, -0.994188,
		-0.584098, 0.811522, 0.016198,
		0.806009, 0.582255, -0.106434,
		31.831949, 32.891327, 31.126400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120049, 33.006897, 30.668631>,  <31.267744, 32.483749, 31.200905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120049, 33.006897, 30.668631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519499, 33.002018, 30.689013>,  <31.759169, 32.999092, 30.701241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519499, 33.002018, 30.689013>,  <31.120049, 33.006897, 30.668631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519499, 33.002018, 30.689013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051621, 0.062809, -0.996690,
		0.008953, 0.997951, 0.063352,
		0.998627, -0.012194, 0.050953,
		31.819086, 32.998360, 30.704298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284081, 33.506847, 30.131657>,  <31.120049, 33.006897, 30.668631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284081, 33.506847, 30.131657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626118, 33.325443, 30.232170>,  <31.831339, 33.216599, 30.292479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626118, 33.325443, 30.232170>,  <31.284081, 33.506847, 30.131657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626118, 33.325443, 30.232170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280265, -0.003441, -0.959916,
		0.436199, 0.891243, 0.124162,
		0.855092, -0.453513, 0.251285,
		31.882645, 33.189388, 30.307556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765697, 33.875572, 29.770088>,  <31.284081, 33.506847, 30.131657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765697, 33.875572, 29.770088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922672, 33.515003, 29.843216>,  <32.016857, 33.298660, 29.887093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922672, 33.515003, 29.843216>,  <31.765697, 33.875572, 29.770088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922672, 33.515003, 29.843216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333825, -0.045621, -0.941530,
		0.857060, 0.430523, 0.283015,
		0.392439, -0.901426, 0.182820,
		32.040405, 33.244576, 29.898062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295959, 33.809006, 29.390163>,  <31.765697, 33.875572, 29.770088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295959, 33.809006, 29.390163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225002, 33.416740, 29.423206>,  <32.182430, 33.181381, 29.443031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225002, 33.416740, 29.423206>,  <32.295959, 33.809006, 29.390163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225002, 33.416740, 29.423206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457244, -0.156455, -0.875471,
		0.871471, -0.117526, 0.476157,
		-0.177388, -0.980668, 0.082608,
		32.171787, 33.122540, 29.447989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922817, 33.391563, 29.303226>,  <32.295959, 33.809006, 29.390163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922817, 33.391563, 29.303226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646618, 33.111782, 29.229504>,  <32.480896, 32.943913, 29.185270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646618, 33.111782, 29.229504>,  <32.922817, 33.391563, 29.303226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646618, 33.111782, 29.229504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410414, -0.169036, -0.896095,
		0.595626, -0.694396, 0.403786,
		-0.690500, -0.699457, -0.184308,
		32.439468, 32.901943, 29.174212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340164, 32.815159, 29.095648>,  <32.922817, 33.391563, 29.303226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340164, 32.815159, 29.095648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968506, 32.748871, 28.963449>,  <32.745510, 32.709099, 28.884130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968506, 32.748871, 28.963449>,  <33.340164, 32.815159, 29.095648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968506, 32.748871, 28.963449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351976, -0.122920, -0.927903,
		0.113146, -0.978482, 0.172540,
		-0.929145, -0.165718, -0.330494,
		32.689762, 32.699154, 28.864302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322773, 32.189018, 28.651413>,  <33.340164, 32.815159, 29.095648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322773, 32.189018, 28.651413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986183, 32.385311, 28.560993>,  <32.784229, 32.503086, 28.506741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986183, 32.385311, 28.560993>,  <33.322773, 32.189018, 28.651413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986183, 32.385311, 28.560993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172973, -0.151677, -0.973177,
		-0.511859, -0.858005, 0.042748,
		-0.841475, 0.490736, -0.226049,
		32.733742, 32.532532, 28.493179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990520, 31.786879, 28.074385>,  <33.322773, 32.189018, 28.651413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990520, 31.786879, 28.074385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829777, 32.153111, 28.068483>,  <32.733330, 32.372849, 28.064943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829777, 32.153111, 28.068483>,  <32.990520, 31.786879, 28.074385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829777, 32.153111, 28.068483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013359, -0.021972, -0.999669,
		-0.915603, -0.401531, 0.021061,
		-0.401861, 0.915582, -0.014753,
		32.709217, 32.427784, 28.064058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345551, 31.769150, 27.690657>,  <32.990520, 31.786879, 28.074385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345551, 31.769150, 27.690657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473129, 32.148125, 27.700693>,  <32.549679, 32.375511, 27.706715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473129, 32.148125, 27.700693>,  <32.345551, 31.769150, 27.690657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473129, 32.148125, 27.700693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110826, -0.010989, -0.993779,
		-0.941269, 0.319747, -0.108506,
		0.318950, 0.947439, 0.025092,
		32.568813, 32.432358, 27.708221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006916, 32.050766, 27.179520>,  <32.345551, 31.769150, 27.690657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006916, 32.050766, 27.179520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310001, 32.304649, 27.240200>,  <32.491852, 32.456978, 27.276608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310001, 32.304649, 27.240200>,  <32.006916, 32.050766, 27.179520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310001, 32.304649, 27.240200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097213, 0.120088, -0.987992,
		-0.645301, 0.763366, 0.029291,
		0.757717, 0.634705, 0.151702,
		32.537315, 32.495060, 27.285711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907465, 32.491043, 26.692371>,  <32.006916, 32.050766, 27.179520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907465, 32.491043, 26.692371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274715, 32.610386, 26.796703>,  <32.495064, 32.681992, 26.859303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274715, 32.610386, 26.796703>,  <31.907465, 32.491043, 26.692371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274715, 32.610386, 26.796703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192194, 0.240369, -0.951464,
		-0.346567, 0.923693, 0.163347,
		0.918124, 0.298352, 0.260832,
		32.550152, 32.699890, 26.874952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025829, 33.082531, 26.339352>,  <31.907465, 32.491043, 26.692371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025829, 33.082531, 26.339352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402729, 32.967113, 26.407372>,  <32.628868, 32.897865, 26.448183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402729, 32.967113, 26.407372>,  <32.025829, 33.082531, 26.339352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402729, 32.967113, 26.407372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265039, 0.331986, -0.905284,
		0.204756, 0.898071, 0.389286,
		0.942247, -0.288539, 0.170048,
		32.685402, 32.880550, 26.458385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426235, 33.660816, 26.158665>,  <32.025829, 33.082531, 26.339352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426235, 33.660816, 26.158665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665001, 33.340359, 26.141346>,  <32.808258, 33.148087, 26.130955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665001, 33.340359, 26.141346>,  <32.426235, 33.660816, 26.158665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665001, 33.340359, 26.141346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387593, 0.335193, -0.858730,
		0.702474, 0.495803, 0.510596,
		0.596910, -0.801139, -0.043295,
		32.844074, 33.100018, 26.128357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037727, 33.892883, 26.151134>,  <32.426235, 33.660816, 26.158665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037727, 33.892883, 26.151134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066593, 33.552742, 25.942640>,  <33.083912, 33.348656, 25.817543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066593, 33.552742, 25.942640>,  <33.037727, 33.892883, 26.151134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066593, 33.552742, 25.942640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268077, 0.519907, -0.811068,
		0.960690, -0.081198, 0.265482,
		0.072168, -0.850355, -0.521237,
		33.088245, 33.297634, 25.786268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219254, 34.125786, 25.557362>,  <33.037727, 33.892883, 26.151134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219254, 34.125786, 25.557362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233036, 33.733814, 25.478815>,  <33.241306, 33.498631, 25.431686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233036, 33.733814, 25.478815>,  <33.219254, 34.125786, 25.557362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233036, 33.733814, 25.478815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204025, 0.199244, -0.958476,
		0.978359, -0.007039, 0.206794,
		0.034456, -0.979925, -0.196369,
		33.243374, 33.439838, 25.419905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821522, 34.037907, 25.217642>,  <33.219254, 34.125786, 25.557362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821522, 34.037907, 25.217642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545250, 33.782013, 25.082758>,  <33.379486, 33.628479, 25.001827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545250, 33.782013, 25.082758>,  <33.821522, 34.037907, 25.217642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545250, 33.782013, 25.082758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049349, 0.423514, -0.904544,
		0.721477, -0.641390, -0.260942,
		-0.690678, -0.639731, -0.337208,
		33.338047, 33.590096, 24.981596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068512, 33.863167, 24.479996>,  <33.821522, 34.037907, 25.217642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068512, 33.863167, 24.479996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686543, 33.744450, 24.477570>,  <33.457359, 33.673218, 24.476114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686543, 33.744450, 24.477570>,  <34.068512, 33.863167, 24.479996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686543, 33.744450, 24.477570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069570, 0.243610, -0.967375,
		0.288592, -0.923345, -0.253277,
		-0.954922, -0.296797, -0.006067,
		33.400066, 33.655411, 24.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901581, 33.480400, 23.769588>,  <34.068512, 33.863167, 24.479996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901581, 33.480400, 23.769588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557137, 33.627823, 23.909679>,  <33.350471, 33.716274, 23.993734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557137, 33.627823, 23.909679>,  <33.901581, 33.480400, 23.769588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557137, 33.627823, 23.909679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230521, 0.330958, -0.915056,
		-0.453158, -0.868697, -0.200032,
		-0.861109, 0.368553, 0.350229,
		33.298805, 33.738388, 24.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447399, 33.272911, 23.198578>,  <33.901581, 33.480400, 23.769588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447399, 33.272911, 23.198578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264263, 33.550484, 23.420872>,  <33.154381, 33.717026, 23.554247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264263, 33.550484, 23.420872>,  <33.447399, 33.272911, 23.198578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264263, 33.550484, 23.420872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305926, 0.463948, -0.831361,
		-0.834739, -0.550646, -0.000124,
		-0.457843, 0.693931, 0.555732,
		33.126911, 33.758663, 23.587591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760380, 33.235043, 22.960831>,  <33.447399, 33.272911, 23.198578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760380, 33.235043, 22.960831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767853, 33.596706, 23.131546>,  <32.772339, 33.813705, 23.233976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767853, 33.596706, 23.131546>,  <32.760380, 33.235043, 22.960831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767853, 33.596706, 23.131546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223504, 0.419840, -0.879648,
		-0.974524, -0.078953, 0.209928,
		0.018686, 0.904157, 0.426790,
		32.773457, 33.867954, 23.259583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172848, 33.557213, 22.771254>,  <32.760380, 33.235043, 22.960831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172848, 33.557213, 22.771254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408909, 33.857246, 22.890648>,  <32.550545, 34.037266, 22.962284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408909, 33.857246, 22.890648>,  <32.172848, 33.557213, 22.771254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408909, 33.857246, 22.890648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132928, 0.454980, -0.880524,
		-0.796272, 0.479967, 0.368215,
		0.590153, 0.750083, 0.298487,
		32.585957, 34.082272, 22.980194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892157, 34.264240, 22.508245>,  <32.172848, 33.557213, 22.771254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892157, 34.264240, 22.508245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283451, 34.310921, 22.576876>,  <32.518227, 34.338928, 22.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283451, 34.310921, 22.576876>,  <31.892157, 34.264240, 22.508245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283451, 34.310921, 22.576876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073965, 0.576449, -0.813779,
		-0.193873, 0.808757, 0.555271,
		0.978234, 0.116699, 0.171577,
		32.576920, 34.345932, 22.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078865, 35.050957, 22.545832>,  <31.892157, 34.264240, 22.508245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078865, 35.050957, 22.545832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422688, 34.863361, 22.464622>,  <32.628983, 34.750805, 22.415897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422688, 34.863361, 22.464622>,  <32.078865, 35.050957, 22.545832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422688, 34.863361, 22.464622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159790, 0.623995, -0.764917,
		0.485420, 0.625047, 0.611297,
		0.859555, -0.468985, -0.203023,
		32.680553, 34.722668, 22.403715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505512, 35.668755, 22.363382>,  <32.078865, 35.050957, 22.545832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505512, 35.668755, 22.363382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676617, 35.336849, 22.219984>,  <32.779278, 35.137707, 22.133945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676617, 35.336849, 22.219984>,  <32.505512, 35.668755, 22.363382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676617, 35.336849, 22.219984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365807, 0.521599, -0.770792,
		0.826563, 0.198573, 0.526651,
		0.427759, -0.829761, -0.358495,
		32.804943, 35.087921, 22.112436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298340, 35.788998, 22.333158>,  <32.505512, 35.668755, 22.363382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298340, 35.788998, 22.333158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177105, 35.509998, 22.073425>,  <33.104362, 35.342598, 21.917585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177105, 35.509998, 22.073425>,  <33.298340, 35.788998, 22.333158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177105, 35.509998, 22.073425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454467, 0.493113, -0.741822,
		0.837615, -0.519936, 0.167535,
		-0.303086, -0.697500, -0.649332,
		33.086178, 35.300747, 21.878626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890079, 35.621784, 21.906687>,  <33.298340, 35.788998, 22.333158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890079, 35.621784, 21.906687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594494, 35.461712, 21.689878>,  <33.417141, 35.365669, 21.559793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594494, 35.461712, 21.689878>,  <33.890079, 35.621784, 21.906687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594494, 35.461712, 21.689878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292264, 0.534456, -0.793056,
		0.607052, -0.744454, -0.277986,
		-0.738965, -0.400181, -0.542020,
		33.372807, 35.341656, 21.527273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160473, 35.436920, 21.156496>,  <33.890079, 35.621784, 21.906687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160473, 35.436920, 21.156496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763489, 35.457615, 21.112041>,  <33.525299, 35.470032, 21.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763489, 35.457615, 21.112041>,  <34.160473, 35.436920, 21.156496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763489, 35.457615, 21.112041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122486, 0.455340, -0.881852,
		0.004979, -0.888813, -0.458243,
		-0.992458, 0.051738, -0.111134,
		33.465752, 35.473137, 21.078701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997120, 35.210064, 20.403906>,  <34.160473, 35.436920, 21.156496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997120, 35.210064, 20.403906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704964, 35.447083, 20.539793>,  <33.529671, 35.589294, 20.621325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704964, 35.447083, 20.539793>,  <33.997120, 35.210064, 20.403906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704964, 35.447083, 20.539793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032035, 0.526542, -0.849545,
		-0.682274, -0.609620, -0.403565,
		-0.730394, 0.592551, 0.339716,
		33.485844, 35.624847, 20.641708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466381, 35.235004, 19.911800>,  <33.997120, 35.210064, 20.403906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466381, 35.235004, 19.911800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435051, 35.570980, 20.126596>,  <33.416252, 35.772568, 20.255474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435051, 35.570980, 20.126596>,  <33.466381, 35.235004, 19.911800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435051, 35.570980, 20.126596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017849, 0.537379, -0.843152,
		-0.996768, -0.075625, -0.027098,
		-0.078326, 0.839944, 0.536992,
		33.411552, 35.822964, 20.287693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061638, 35.515343, 19.472591>,  <33.466381, 35.235004, 19.911800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061638, 35.515343, 19.472591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160545, 35.819485, 19.712831>,  <33.219891, 36.001968, 19.856976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160545, 35.819485, 19.712831>,  <33.061638, 35.515343, 19.472591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160545, 35.819485, 19.712831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112626, 0.638203, -0.761585,
		-0.962379, 0.120675, 0.243444,
		0.247271, 0.760352, 0.600602,
		33.234726, 36.047588, 19.893013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771694, 36.139088, 19.081406>,  <33.061638, 35.515343, 19.472591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771694, 36.139088, 19.081406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006771, 36.290165, 19.367613>,  <33.147820, 36.380810, 19.539337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006771, 36.290165, 19.367613>,  <32.771694, 36.139088, 19.081406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006771, 36.290165, 19.367613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073090, 0.855955, -0.511858,
		-0.805775, 0.353113, 0.475434,
		0.587694, 0.377692, 0.715516,
		33.183079, 36.403473, 19.582268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454803, 36.859432, 19.352818>,  <32.771694, 36.139088, 19.081406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454803, 36.859432, 19.352818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847073, 36.820869, 19.420912>,  <33.082436, 36.797729, 19.461769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847073, 36.820869, 19.420912>,  <32.454803, 36.859432, 19.352818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847073, 36.820869, 19.420912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169435, 0.853576, -0.492646,
		-0.097814, 0.511970, 0.853416,
		0.980675, -0.096411, 0.170237,
		33.141273, 36.791946, 19.471983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655464, 37.488194, 19.695608>,  <32.454803, 36.859432, 19.352818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655464, 37.488194, 19.695608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992584, 37.332890, 19.546511>,  <33.194859, 37.239708, 19.457052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992584, 37.332890, 19.546511>,  <32.655464, 37.488194, 19.695608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992584, 37.332890, 19.546511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185603, 0.859724, -0.475842,
		0.505207, 0.331859, 0.796640,
		0.842803, -0.388258, -0.372745,
		33.245426, 37.216412, 19.434687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164402, 37.929310, 19.858662>,  <32.655464, 37.488194, 19.695608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164402, 37.929310, 19.858662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275192, 37.734688, 19.527229>,  <33.341667, 37.617916, 19.328369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275192, 37.734688, 19.527229>,  <33.164402, 37.929310, 19.858662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275192, 37.734688, 19.527229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197833, 0.872720, -0.446343,
		0.940291, -0.040295, 0.337979,
		0.276976, -0.486556, -0.828582,
		33.358284, 37.588722, 19.278654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626488, 38.362793, 19.617672>,  <33.164402, 37.929310, 19.858662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626488, 38.362793, 19.617672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574211, 38.141853, 19.288351>,  <33.542843, 38.009289, 19.090757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574211, 38.141853, 19.288351>,  <33.626488, 38.362793, 19.617672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574211, 38.141853, 19.288351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177554, 0.803960, -0.567558,
		0.975394, -0.220358, -0.007002,
		-0.130695, -0.552350, -0.823303,
		33.535004, 37.976147, 19.041361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182060, 38.548145, 19.203226>,  <33.626488, 38.362793, 19.617672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182060, 38.548145, 19.203226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930386, 38.381752, 18.940598>,  <33.779381, 38.281918, 18.783020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930386, 38.381752, 18.940598>,  <34.182060, 38.548145, 19.203226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930386, 38.381752, 18.940598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129878, 0.776584, -0.616481,
		0.766322, -0.473159, -0.434594,
		-0.629192, -0.415979, -0.656567,
		33.741631, 38.256958, 18.743626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553928, 38.612118, 18.565113>,  <34.182060, 38.548145, 19.203226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553928, 38.612118, 18.565113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169582, 38.559643, 18.467520>,  <33.938976, 38.528156, 18.408964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169582, 38.559643, 18.467520>,  <34.553928, 38.612118, 18.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169582, 38.559643, 18.467520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043879, 0.797551, -0.601654,
		0.273519, -0.588814, -0.760582,
		-0.960865, -0.131190, -0.243982,
		33.881321, 38.520287, 18.394325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649143, 38.871639, 17.973465>,  <34.553928, 38.612118, 18.565113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649143, 38.871639, 17.973465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251152, 38.835621, 17.990936>,  <34.012356, 38.814011, 18.001419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251152, 38.835621, 17.990936>,  <34.649143, 38.871639, 17.973465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251152, 38.835621, 17.990936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095364, 0.720596, -0.686766,
		0.030366, -0.687483, -0.725565,
		-0.994980, -0.090047, 0.043679,
		33.952660, 38.808605, 18.004040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476871, 39.062653, 17.269650>,  <34.649143, 38.871639, 17.973465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476871, 39.062653, 17.269650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136703, 39.113129, 17.473946>,  <33.932602, 39.143414, 17.596523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136703, 39.113129, 17.473946>,  <34.476871, 39.062653, 17.269650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136703, 39.113129, 17.473946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303604, 0.675127, -0.672331,
		-0.429656, -0.726829, -0.535832,
		-0.850424, 0.126190, 0.510741,
		33.881577, 39.150986, 17.627169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725060, 38.924343, 16.876810>,  <34.476871, 39.062653, 17.269650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725060, 38.924343, 16.876810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663891, 39.182018, 17.176579>,  <33.627190, 39.336624, 17.356440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663891, 39.182018, 17.176579>,  <33.725060, 38.924343, 16.876810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663891, 39.182018, 17.176579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237799, 0.712072, -0.660609,
		-0.959200, -0.279236, 0.044293,
		-0.152926, 0.644189, 0.749422,
		33.618011, 39.375275, 17.401405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141090, 39.288448, 16.683521>,  <33.725060, 38.924343, 16.876810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141090, 39.288448, 16.683521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307369, 39.532188, 16.953600>,  <33.407139, 39.678432, 17.115646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307369, 39.532188, 16.953600>,  <33.141090, 39.288448, 16.683521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307369, 39.532188, 16.953600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524649, 0.767072, -0.369249,
		-0.742925, -0.200744, 0.638564,
		0.415700, 0.609346, 0.675197,
		33.432079, 39.714993, 17.156158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720272, 39.751808, 17.077047>,  <33.141090, 39.288448, 16.683521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720272, 39.751808, 17.077047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063778, 39.956238, 17.062454>,  <33.269882, 40.078896, 17.053698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063778, 39.956238, 17.062454>,  <32.720272, 39.751808, 17.077047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063778, 39.956238, 17.062454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475403, 0.768222, -0.428751,
		-0.191094, 0.385541, 0.902686,
		0.858764, 0.511071, -0.036485,
		33.321407, 40.109558, 17.051508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552135, 40.420837, 17.333609>,  <32.720272, 39.751808, 17.077047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552135, 40.420837, 17.333609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874332, 40.436043, 17.097055>,  <33.067650, 40.445164, 16.955124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874332, 40.436043, 17.097055>,  <32.552135, 40.420837, 17.333609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874332, 40.436043, 17.097055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315938, 0.871831, -0.374292,
		0.501358, 0.488330, 0.714264,
		0.805495, 0.038009, -0.591382,
		33.115982, 40.447445, 16.919641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900974, 40.957344, 17.490000>,  <32.552135, 40.420837, 17.333609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900974, 40.957344, 17.490000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944824, 40.844090, 17.108881>,  <32.971134, 40.776138, 16.880211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944824, 40.844090, 17.108881>,  <32.900974, 40.957344, 17.490000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944824, 40.844090, 17.108881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441280, 0.845064, -0.301891,
		0.890648, 0.453544, -0.032302,
		0.109623, -0.283133, -0.952795,
		32.977711, 40.759151, 16.823042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053288, 41.587372, 17.095436>,  <32.900974, 40.957344, 17.490000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053288, 41.587372, 17.095436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924252, 41.324341, 16.823105>,  <32.846828, 41.166523, 16.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924252, 41.324341, 16.823105>,  <33.053288, 41.587372, 17.095436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924252, 41.324341, 16.823105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312159, 0.752951, -0.579328,
		0.893583, 0.025639, -0.448166,
		-0.322594, -0.657576, -0.680828,
		32.827473, 41.127068, 16.618856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423271, 41.131306, 16.932436>,  <33.053288, 41.587372, 17.095436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423271, 41.131306, 16.932436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031315, 41.056805, 16.903816>,  <31.796141, 41.012104, 16.886644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031315, 41.056805, 16.903816>,  <32.423271, 41.131306, 16.932436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031315, 41.056805, 16.903816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013390, -0.296402, 0.954969,
		-0.199071, 0.936727, 0.287948,
		-0.979894, -0.186251, -0.071548,
		31.737347, 41.000931, 16.882353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117664, 41.495987, 17.462246>,  <32.423271, 41.131306, 16.932436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117664, 41.495987, 17.462246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911215, 41.160831, 17.391190>,  <31.787346, 40.959736, 17.348557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911215, 41.160831, 17.391190>,  <32.117664, 41.495987, 17.462246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911215, 41.160831, 17.391190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198787, -0.084556, 0.976388,
		-0.833129, 0.539246, -0.122921,
		-0.516120, -0.837893, -0.177641,
		31.756378, 40.909462, 17.337898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863541, 41.424587, 18.080507>,  <32.117664, 41.495987, 17.462246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863541, 41.424587, 18.080507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786434, 41.080200, 17.892218>,  <31.740170, 40.873569, 17.779243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786434, 41.080200, 17.892218>,  <31.863541, 41.424587, 18.080507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786434, 41.080200, 17.892218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394093, -0.371401, 0.840685,
		-0.898628, 0.347566, -0.267705,
		-0.192767, -0.860964, -0.470725,
		31.728603, 40.821911, 17.750999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258387, 41.151825, 18.511711>,  <31.863541, 41.424587, 18.080507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258387, 41.151825, 18.511711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398745, 40.855469, 18.282640>,  <31.482960, 40.677654, 18.145197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398745, 40.855469, 18.282640>,  <31.258387, 41.151825, 18.511711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398745, 40.855469, 18.282640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331824, -0.670259, 0.663812,
		-0.875653, -0.042898, -0.481032,
		0.350893, -0.740887, -0.572679,
		31.504013, 40.633202, 18.110836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695044, 40.614262, 18.260246>,  <31.258387, 41.151825, 18.511711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695044, 40.614262, 18.260246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051502, 40.433022, 18.269674>,  <31.265377, 40.324276, 18.275331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051502, 40.433022, 18.269674>,  <30.695044, 40.614262, 18.260246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051502, 40.433022, 18.269674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345877, -0.644808, 0.681610,
		-0.293638, -0.615568, -0.731336,
		0.891149, -0.453099, 0.023571,
		31.318848, 40.297092, 18.276745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680002, 39.969604, 18.057121>,  <30.695044, 40.614262, 18.260246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680002, 39.969604, 18.057121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997025, 39.975559, 18.300968>,  <31.187239, 39.979134, 18.447277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997025, 39.975559, 18.300968>,  <30.680002, 39.969604, 18.057121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997025, 39.975559, 18.300968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404709, -0.734957, 0.544103,
		0.456143, -0.677950, -0.576470,
		0.792555, 0.014887, 0.609618,
		31.234791, 39.980026, 18.483854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721010, 39.251480, 18.203424>,  <30.680002, 39.969604, 18.057121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721010, 39.251480, 18.203424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972445, 39.403835, 18.474661>,  <31.123304, 39.495247, 18.637403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972445, 39.403835, 18.474661>,  <30.721010, 39.251480, 18.203424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972445, 39.403835, 18.474661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261174, -0.717866, 0.645335,
		0.732578, -0.582747, -0.351761,
		0.628584, 0.380887, 0.678091,
		31.161020, 39.518101, 18.678089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054768, 38.650181, 18.469011>,  <30.721010, 39.251480, 18.203424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054768, 38.650181, 18.469011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111086, 38.947388, 18.730730>,  <31.144876, 39.125713, 18.887760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111086, 38.947388, 18.730730>,  <31.054768, 38.650181, 18.469011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111086, 38.947388, 18.730730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113418, -0.644423, 0.756211,
		0.983521, -0.180680, -0.006460,
		0.140795, 0.743017, 0.654296,
		31.153324, 39.170292, 18.927019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423403, 38.280224, 18.945843>,  <31.054768, 38.650181, 18.469011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423403, 38.280224, 18.945843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268246, 38.609596, 19.111488>,  <31.175152, 38.807220, 19.210876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268246, 38.609596, 19.111488>,  <31.423403, 38.280224, 18.945843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268246, 38.609596, 19.111488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215527, -0.517871, 0.827863,
		0.896151, 0.231870, 0.378352,
		-0.387895, 0.823435, 0.414116,
		31.151876, 38.856628, 19.235723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713434, 38.302876, 19.620430>,  <31.423403, 38.280224, 18.945843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713434, 38.302876, 19.620430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396233, 38.542679, 19.663763>,  <31.205912, 38.686562, 19.689762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396233, 38.542679, 19.663763>,  <31.713434, 38.302876, 19.620430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396233, 38.542679, 19.663763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277796, -0.514095, 0.811502,
		0.542194, 0.613431, 0.574220,
		-0.793004, 0.599507, 0.108331,
		31.158331, 38.722530, 19.696262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732794, 38.675652, 20.272104>,  <31.713434, 38.302876, 19.620430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732794, 38.675652, 20.272104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346117, 38.670414, 20.169863>,  <31.114111, 38.667271, 20.108519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346117, 38.670414, 20.169863>,  <31.732794, 38.675652, 20.272104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346117, 38.670414, 20.169863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218858, -0.475457, 0.852081,
		-0.132685, 0.879641, 0.456755,
		-0.966693, -0.013094, -0.255603,
		31.056108, 38.666485, 20.093182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477985, 38.720791, 20.877544>,  <31.732794, 38.675652, 20.272104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477985, 38.720791, 20.877544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157284, 38.629753, 20.656496>,  <30.964863, 38.575130, 20.523867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157284, 38.629753, 20.656496>,  <31.477985, 38.720791, 20.877544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157284, 38.629753, 20.656496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349996, -0.570711, 0.742827,
		-0.484455, 0.788978, 0.377910,
		-0.801752, -0.227599, -0.552623,
		30.916758, 38.561474, 20.490709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859570, 38.910217, 21.208452>,  <31.477985, 38.720791, 20.877544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859570, 38.910217, 21.208452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773884, 38.603489, 20.966427>,  <30.722473, 38.419453, 20.821211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773884, 38.603489, 20.966427>,  <30.859570, 38.910217, 21.208452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773884, 38.603489, 20.966427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412708, -0.490382, 0.767592,
		-0.885316, 0.414143, -0.211426,
		-0.214214, -0.766819, -0.605063,
		30.709620, 38.373444, 20.784908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158251, 38.755127, 21.344431>,  <30.859570, 38.910217, 21.208452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158251, 38.755127, 21.344431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336599, 38.437504, 21.179180>,  <30.443609, 38.246929, 21.080030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336599, 38.437504, 21.179180>,  <30.158251, 38.755127, 21.344431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336599, 38.437504, 21.179180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335364, -0.576120, 0.745397,
		-0.829897, -0.193804, -0.523174,
		0.445872, -0.794056, -0.413125,
		30.470362, 38.199287, 21.055243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725649, 38.148010, 21.531551>,  <30.158251, 38.755127, 21.344431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725649, 38.148010, 21.531551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087616, 38.005665, 21.438185>,  <30.304796, 37.920258, 21.382166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087616, 38.005665, 21.438185>,  <29.725649, 38.148010, 21.531551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087616, 38.005665, 21.438185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116570, -0.734739, 0.668259,
		-0.409310, -0.577510, -0.706362,
		0.904918, -0.355866, -0.233415,
		30.359091, 37.898907, 21.368160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605249, 37.411377, 21.329084>,  <29.725649, 38.148010, 21.531551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605249, 37.411377, 21.329084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994989, 37.458881, 21.405546>,  <30.228832, 37.487385, 21.451424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994989, 37.458881, 21.405546>,  <29.605249, 37.411377, 21.329084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994989, 37.458881, 21.405546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007926, -0.830769, 0.556561,
		0.224903, -0.543800, -0.808517,
		0.974349, 0.118764, 0.191153,
		30.287294, 37.494511, 21.462893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819321, 36.675369, 21.596323>,  <29.605249, 37.411377, 21.329084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819321, 36.675369, 21.596323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099771, 36.941452, 21.699022>,  <30.268042, 37.101101, 21.760641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099771, 36.941452, 21.699022>,  <29.819321, 36.675369, 21.596323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099771, 36.941452, 21.699022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148231, -0.488189, 0.860058,
		0.697458, -0.564952, -0.440887,
		0.701128, 0.665207, 0.256748,
		30.310110, 37.141014, 21.776047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470062, 36.321026, 21.788549>,  <29.819321, 36.675369, 21.596323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470062, 36.321026, 21.788549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479311, 36.666256, 21.990370>,  <30.484861, 36.873394, 22.111462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479311, 36.666256, 21.990370>,  <30.470062, 36.321026, 21.788549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479311, 36.666256, 21.990370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081319, -0.504636, 0.859494,
		0.996420, 0.021155, -0.081853,
		0.023124, 0.863073, 0.504550,
		30.486248, 36.925179, 22.141735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052664, 36.339821, 22.206903>,  <30.470062, 36.321026, 21.788549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052664, 36.339821, 22.206903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800558, 36.606766, 22.365597>,  <30.649294, 36.766933, 22.460812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800558, 36.606766, 22.365597>,  <31.052664, 36.339821, 22.206903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800558, 36.606766, 22.365597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132170, -0.411314, 0.901860,
		0.765046, 0.620849, 0.171032,
		-0.630267, 0.667359, 0.396731,
		30.611479, 36.806973, 22.484615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384279, 36.545162, 22.833899>,  <31.052664, 36.339821, 22.206903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384279, 36.545162, 22.833899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997187, 36.636459, 22.876606>,  <30.764931, 36.691238, 22.902231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997187, 36.636459, 22.876606>,  <31.384279, 36.545162, 22.833899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997187, 36.636459, 22.876606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006407, -0.445867, 0.895076,
		0.251901, 0.865510, 0.432942,
		-0.967732, 0.228245, 0.106770,
		30.706867, 36.704933, 22.908636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312021, 36.707130, 23.615587>,  <31.384279, 36.545162, 22.833899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312021, 36.707130, 23.615587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949120, 36.613873, 23.475567>,  <30.731379, 36.557919, 23.391554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949120, 36.613873, 23.475567>,  <31.312021, 36.707130, 23.615587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949120, 36.613873, 23.475567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225546, -0.432792, 0.872823,
		-0.354996, 0.870823, 0.340066,
		-0.907252, -0.233148, -0.350051,
		30.676945, 36.543926, 23.370552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961803, 36.789082, 24.205418>,  <31.312021, 36.707130, 23.615587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961803, 36.789082, 24.205418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711927, 36.582649, 23.971010>,  <30.562002, 36.458790, 23.830366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711927, 36.582649, 23.971010>,  <30.961803, 36.789082, 24.205418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711927, 36.582649, 23.971010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300932, -0.533393, 0.790526,
		-0.720555, 0.670187, 0.177900,
		-0.624692, -0.516082, -0.586020,
		30.524521, 36.427826, 23.795204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440575, 36.709084, 24.675438>,  <30.961803, 36.789082, 24.205418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440575, 36.709084, 24.675438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381903, 36.435143, 24.389933>,  <30.346699, 36.270779, 24.218630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381903, 36.435143, 24.389933>,  <30.440575, 36.709084, 24.675438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381903, 36.435143, 24.389933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339619, -0.642842, 0.686595,
		-0.929055, 0.343119, -0.138297,
		-0.146681, -0.684853, -0.713765,
		30.337898, 36.229687, 24.175802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818537, 36.549702, 24.773994>,  <30.440575, 36.709084, 24.675438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818537, 36.549702, 24.773994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002523, 36.240341, 24.599512>,  <30.112915, 36.054726, 24.494822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002523, 36.240341, 24.599512>,  <29.818537, 36.549702, 24.773994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002523, 36.240341, 24.599512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292860, -0.595909, 0.747747,
		-0.838251, -0.216190, -0.500597,
		0.459966, -0.773404, -0.436208,
		30.140512, 36.008320, 24.468649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346140, 35.963425, 24.867100>,  <29.818537, 36.549702, 24.773994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346140, 35.963425, 24.867100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709003, 35.810207, 24.797434>,  <29.926722, 35.718277, 24.755634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709003, 35.810207, 24.797434>,  <29.346140, 35.963425, 24.867100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709003, 35.810207, 24.797434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079373, -0.562248, 0.823151,
		-0.413229, -0.732907, -0.540453,
		0.907161, -0.383047, -0.174164,
		29.981152, 35.695293, 24.745184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274824, 35.250149, 25.010050>,  <29.346140, 35.963425, 24.867100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274824, 35.250149, 25.010050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672028, 35.296120, 25.020811>,  <29.910351, 35.323704, 25.027267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672028, 35.296120, 25.020811>,  <29.274824, 35.250149, 25.010050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672028, 35.296120, 25.020811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054217, -0.646590, 0.760908,
		0.104845, -0.754131, -0.648301,
		0.993010, 0.114927, 0.026905,
		29.969931, 35.330597, 25.028883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442261, 34.639145, 25.263882>,  <29.274824, 35.250149, 25.010050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442261, 34.639145, 25.263882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784674, 34.839931, 25.313259>,  <29.990122, 34.960403, 25.342886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784674, 34.839931, 25.313259>,  <29.442261, 34.639145, 25.263882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784674, 34.839931, 25.313259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165282, -0.492063, 0.854725,
		0.489784, -0.711271, -0.504188,
		0.856034, 0.501964, 0.123445,
		30.041485, 34.990520, 25.350292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935572, 34.072781, 25.370468>,  <29.442261, 34.639145, 25.263882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935572, 34.072781, 25.370468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026283, 34.433594, 25.517384>,  <30.080709, 34.650082, 25.605534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026283, 34.433594, 25.517384>,  <29.935572, 34.072781, 25.370468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026283, 34.433594, 25.517384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115366, -0.349581, 0.929776,
		0.967090, -0.253226, 0.024787,
		0.226778, 0.902037, 0.367289,
		30.094316, 34.704205, 25.627571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345846, 33.912052, 25.963287>,  <29.935572, 34.072781, 25.370468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345846, 33.912052, 25.963287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278538, 34.301914, 26.022245>,  <30.238153, 34.535831, 26.057621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278538, 34.301914, 26.022245>,  <30.345846, 33.912052, 25.963287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278538, 34.301914, 26.022245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049103, -0.141053, 0.988783,
		0.984517, 0.173619, -0.024124,
		-0.168269, 0.974659, 0.147395,
		30.228058, 34.594311, 26.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821476, 34.040646, 26.446890>,  <30.345846, 33.912052, 25.963287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821476, 34.040646, 26.446890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553850, 34.337528, 26.462305>,  <30.393274, 34.515656, 26.471554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553850, 34.337528, 26.462305>,  <30.821476, 34.040646, 26.446890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553850, 34.337528, 26.462305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030892, -0.024036, 0.999234,
		0.742560, 0.669744, -0.006846,
		-0.669067, 0.742203, 0.038538,
		30.353130, 34.560188, 26.473866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085072, 34.541962, 26.928989>,  <30.821476, 34.040646, 26.446890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085072, 34.541962, 26.928989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696480, 34.636673, 26.923861>,  <30.463326, 34.693501, 26.920784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696480, 34.636673, 26.923861>,  <31.085072, 34.541962, 26.928989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696480, 34.636673, 26.923861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030442, -0.070905, 0.997018,
		0.235166, 0.968972, 0.076091,
		-0.971478, 0.236781, -0.012823,
		30.405037, 34.707706, 26.920013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923252, 35.123734, 27.371616>,  <31.085072, 34.541962, 26.928989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923252, 35.123734, 27.371616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569983, 34.939964, 27.333805>,  <30.358021, 34.829704, 27.311119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569983, 34.939964, 27.333805>,  <30.923252, 35.123734, 27.371616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569983, 34.939964, 27.333805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139427, 0.064718, 0.988115,
		-0.447845, 0.885857, -0.121213,
		-0.883173, -0.459423, -0.094528,
		30.305031, 34.802139, 27.305447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479174, 35.612232, 27.628237>,  <30.923252, 35.123734, 27.371616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479174, 35.612232, 27.628237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309858, 35.250854, 27.655397>,  <30.208269, 35.034027, 27.671694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309858, 35.250854, 27.655397>,  <30.479174, 35.612232, 27.628237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309858, 35.250854, 27.655397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136840, 0.137838, 0.980956,
		-0.895601, 0.405937, -0.181974,
		-0.423290, -0.903446, 0.067900,
		30.182871, 34.979820, 27.675768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019651, 35.662872, 28.088627>,  <30.479174, 35.612232, 27.628237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019651, 35.662872, 28.088627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040718, 35.263462, 28.083412>,  <30.053358, 35.023815, 28.080282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040718, 35.263462, 28.083412>,  <30.019651, 35.662872, 28.088627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040718, 35.263462, 28.083412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405946, -0.033337, 0.913289,
		-0.912378, -0.042807, -0.407104,
		0.052667, -0.998527, -0.013039,
		30.056519, 34.963905, 28.079500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357008, 35.486176, 28.226353>,  <30.019651, 35.662872, 28.088627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357008, 35.486176, 28.226353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615505, 35.200253, 28.333252>,  <29.770603, 35.028698, 28.397392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615505, 35.200253, 28.333252>,  <29.357008, 35.486176, 28.226353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615505, 35.200253, 28.333252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453096, -0.077607, 0.888077,
		-0.614061, -0.695004, -0.374029,
		0.646245, -0.714805, 0.267248,
		29.809380, 34.985809, 28.413427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955500, 34.932106, 28.672050>,  <29.357008, 35.486176, 28.226353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955500, 34.932106, 28.672050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341452, 34.854736, 28.743147>,  <29.573023, 34.808315, 28.785805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341452, 34.854736, 28.743147>,  <28.955500, 34.932106, 28.672050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341452, 34.854736, 28.743147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224093, -0.253039, 0.941145,
		-0.137068, -0.947923, -0.287498,
		0.964881, -0.193427, 0.177739,
		29.630917, 34.796707, 28.796469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017069, 34.229229, 29.082951>,  <28.955500, 34.932106, 28.672050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017069, 34.229229, 29.082951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374500, 34.397270, 29.146236>,  <29.588959, 34.498096, 29.184208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374500, 34.397270, 29.146236>,  <29.017069, 34.229229, 29.082951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374500, 34.397270, 29.146236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077770, -0.202246, 0.976242,
		0.442122, -0.884652, -0.148051,
		0.893577, 0.420104, 0.158216,
		29.642574, 34.523300, 29.193701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297976, 33.602531, 29.480591>,  <29.017069, 34.229229, 29.082951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297976, 33.602531, 29.480591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513470, 33.934780, 29.536922>,  <29.642765, 34.134129, 29.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513470, 33.934780, 29.536922>,  <29.297976, 33.602531, 29.480591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513470, 33.934780, 29.536922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092652, -0.224559, 0.970046,
		0.837366, -0.509548, -0.197937,
		0.538733, 0.830623, 0.140827,
		29.675089, 34.183968, 29.579170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979734, 33.489990, 29.718966>,  <29.297976, 33.602531, 29.480591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979734, 33.489990, 29.718966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888130, 33.858883, 29.843569>,  <29.833168, 34.080219, 29.918331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888130, 33.858883, 29.843569>,  <29.979734, 33.489990, 29.718966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888130, 33.858883, 29.843569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232529, -0.258919, 0.937492,
		0.945243, 0.287130, -0.155151,
		-0.229011, 0.922235, 0.311508,
		29.819427, 34.135551, 29.937021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466774, 33.555138, 30.167181>,  <29.979734, 33.489990, 29.718966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466774, 33.555138, 30.167181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208136, 33.841293, 30.273113>,  <30.052952, 34.012985, 30.336674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208136, 33.841293, 30.273113>,  <30.466774, 33.555138, 30.167181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208136, 33.841293, 30.273113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129838, -0.238894, 0.962326,
		0.751701, 0.656622, 0.061584,
		-0.646597, 0.715386, 0.264832,
		30.014156, 34.055908, 30.352562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770926, 33.837490, 30.741632>,  <30.466774, 33.555138, 30.167181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770926, 33.837490, 30.741632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393270, 33.965332, 30.773779>,  <30.166677, 34.042038, 30.793066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393270, 33.965332, 30.773779>,  <30.770926, 33.837490, 30.741632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393270, 33.965332, 30.773779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076834, -0.023667, 0.996763,
		0.320471, 0.947256, -0.002212,
		-0.944137, 0.319603, 0.080366,
		30.110029, 34.061214, 30.797888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772121, 34.377815, 31.342730>,  <30.770926, 33.837490, 30.741632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772121, 34.377815, 31.342730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394529, 34.253052, 31.299622>,  <30.167974, 34.178196, 31.273756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394529, 34.253052, 31.299622>,  <30.772121, 34.377815, 31.342730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394529, 34.253052, 31.299622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091503, -0.066373, 0.993590,
		-0.317058, 0.947792, 0.034115,
		-0.943982, -0.311904, -0.107770,
		30.111336, 34.159481, 31.267290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379602, 34.912067, 31.663965>,  <30.772121, 34.377815, 31.342730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379602, 34.912067, 31.663965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185493, 34.563232, 31.638748>,  <30.069029, 34.353931, 31.623617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185493, 34.563232, 31.638748>,  <30.379602, 34.912067, 31.663965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185493, 34.563232, 31.638748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176203, -0.168162, 0.969884,
		-0.856425, 0.459550, 0.235269,
		-0.485273, -0.872087, -0.063044,
		30.039911, 34.301605, 31.619835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051117, 34.929565, 32.093056>,  <30.379602, 34.912067, 31.663965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051117, 34.929565, 32.093056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298958, 35.156269, 32.310268>,  <31.447662, 35.292290, 32.440594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298958, 35.156269, 32.310268>,  <31.051117, 34.929565, 32.093056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298958, 35.156269, 32.310268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353841, 0.415858, -0.837770,
		-0.700633, 0.711231, 0.057126,
		0.619604, 0.566756, 0.543027,
		31.484838, 35.326294, 32.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961018, 35.525726, 31.853134>,  <31.051117, 34.929565, 32.093056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961018, 35.525726, 31.853134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328619, 35.514423, 32.010429>,  <31.549179, 35.507641, 32.104805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328619, 35.514423, 32.010429>,  <30.961018, 35.525726, 31.853134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328619, 35.514423, 32.010429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383736, 0.292928, -0.875751,
		-0.090448, 0.955717, 0.280044,
		0.919003, -0.028253, 0.393238,
		31.604321, 35.505947, 32.128399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259377, 36.222893, 31.697033>,  <30.961018, 35.525726, 31.853134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259377, 36.222893, 31.697033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561335, 35.969437, 31.764715>,  <31.742510, 35.817364, 31.805325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561335, 35.969437, 31.764715>,  <31.259377, 36.222893, 31.697033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561335, 35.969437, 31.764715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483898, 0.363981, -0.795839,
		0.442688, 0.682655, 0.581386,
		0.754898, -0.633640, 0.169205,
		31.787804, 35.779346, 31.815477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948830, 36.643570, 31.840910>,  <31.259377, 36.222893, 31.697033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948830, 36.643570, 31.840910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017288, 36.269989, 31.715410>,  <32.058365, 36.045841, 31.640110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017288, 36.269989, 31.715410>,  <31.948830, 36.643570, 31.840910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017288, 36.269989, 31.715410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535271, 0.355495, -0.766230,
		0.827160, -0.036803, 0.560761,
		0.171148, -0.933953, -0.313751,
		32.068634, 35.989803, 31.621284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636871, 36.630890, 31.605871>,  <31.948830, 36.643570, 31.840910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636871, 36.630890, 31.605871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459156, 36.330353, 31.410690>,  <32.352528, 36.150032, 31.293581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459156, 36.330353, 31.410690>,  <32.636871, 36.630890, 31.605871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459156, 36.330353, 31.410690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289895, 0.394789, -0.871838,
		0.847685, -0.528803, 0.042409,
		-0.444288, -0.751338, -0.487954,
		32.325871, 36.104950, 31.264303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069195, 36.435390, 31.059780>,  <32.636871, 36.630890, 31.605871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069195, 36.435390, 31.059780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725033, 36.265778, 30.946711>,  <32.518536, 36.164009, 30.878870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725033, 36.265778, 30.946711>,  <33.069195, 36.435390, 31.059780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725033, 36.265778, 30.946711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165372, 0.292345, -0.941906,
		0.482036, -0.857165, -0.181412,
		-0.860403, -0.424032, -0.282672,
		32.466911, 36.138569, 30.861910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231316, 36.031403, 30.486116>,  <33.069195, 36.435390, 31.059780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231316, 36.031403, 30.486116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838913, 36.108871, 30.481810>,  <32.603470, 36.155354, 30.479225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838913, 36.108871, 30.481810>,  <33.231316, 36.031403, 30.486116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838913, 36.108871, 30.481810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071714, 0.310551, -0.947848,
		-0.180231, -0.930617, -0.318542,
		-0.981007, 0.193676, -0.010767,
		32.544609, 36.166973, 30.478579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026134, 35.881390, 29.828140>,  <33.231316, 36.031403, 30.486116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026134, 35.881390, 29.828140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720242, 36.110844, 29.945526>,  <32.536705, 36.248516, 30.015959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720242, 36.110844, 29.945526>,  <33.026134, 35.881390, 29.828140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720242, 36.110844, 29.945526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013496, 0.469606, -0.882773,
		-0.644207, -0.671124, -0.366865,
		-0.764732, 0.573640, 0.293466,
		32.490822, 36.282936, 30.033566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553482, 35.753166, 29.313951>,  <33.026134, 35.881390, 29.828140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553482, 35.753166, 29.313951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530914, 36.107780, 29.497633>,  <32.517372, 36.320549, 29.607841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530914, 36.107780, 29.497633>,  <32.553482, 35.753166, 29.313951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530914, 36.107780, 29.497633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228056, 0.436334, -0.870404,
		-0.972012, -0.153832, 0.177562,
		-0.056420, 0.886538, 0.459204,
		32.513988, 36.373741, 29.635395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990734, 36.054646, 28.925392>,  <32.553482, 35.753166, 29.313951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990734, 36.054646, 28.925392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161221, 36.357239, 29.123817>,  <32.263512, 36.538795, 29.242872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161221, 36.357239, 29.123817>,  <31.990734, 36.054646, 28.925392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161221, 36.357239, 29.123817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004382, 0.550085, -0.835097,
		-0.904610, 0.353759, 0.237770,
		0.426217, 0.756479, 0.496063,
		32.289085, 36.584183, 29.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571518, 36.666889, 28.841990>,  <31.990734, 36.054646, 28.925392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571518, 36.666889, 28.841990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946909, 36.778240, 28.923737>,  <32.172142, 36.845051, 28.972786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946909, 36.778240, 28.923737>,  <31.571518, 36.666889, 28.841990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946909, 36.778240, 28.923737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011314, 0.566691, -0.823853,
		-0.345154, 0.775480, 0.528677,
		0.938478, 0.278375, 0.204370,
		32.228451, 36.861752, 28.985048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498638, 37.418198, 28.767641>,  <31.571518, 36.666889, 28.841990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498638, 37.418198, 28.767641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889191, 37.331818, 28.764847>,  <32.123520, 37.279987, 28.763170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889191, 37.331818, 28.764847>,  <31.498638, 37.418198, 28.767641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889191, 37.331818, 28.764847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119492, 0.566624, -0.815266,
		0.180016, 0.795174, 0.579045,
		0.976379, -0.215952, -0.006984,
		32.182106, 37.267033, 28.762751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923166, 38.075359, 28.530668>,  <31.498638, 37.418198, 28.767641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923166, 38.075359, 28.530668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134190, 37.741856, 28.465513>,  <32.260803, 37.541756, 28.426420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134190, 37.741856, 28.465513>,  <31.923166, 38.075359, 28.530668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134190, 37.741856, 28.465513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352801, 0.389449, -0.850800,
		0.772796, 0.391381, 0.499607,
		0.527559, -0.833757, -0.162885,
		32.292458, 37.491730, 28.416647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624828, 38.264938, 28.336157>,  <31.923166, 38.075359, 28.530668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624828, 38.264938, 28.336157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547417, 37.904613, 28.180681>,  <32.500969, 37.688419, 28.087395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547417, 37.904613, 28.180681>,  <32.624828, 38.264938, 28.336157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547417, 37.904613, 28.180681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217268, 0.346993, -0.912354,
		0.956736, -0.261013, 0.128567,
		-0.193525, -0.900815, -0.388691,
		32.489361, 37.634369, 28.064074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150738, 38.182289, 27.759661>,  <32.624828, 38.264938, 28.336157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150738, 38.182289, 27.759661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885300, 37.900547, 27.658844>,  <32.726036, 37.731503, 27.598354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885300, 37.900547, 27.658844>,  <33.150738, 38.182289, 27.759661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885300, 37.900547, 27.658844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065779, 0.280670, -0.957548,
		0.745192, -0.652005, -0.139920,
		-0.663598, -0.704353, -0.252042,
		32.686222, 37.689240, 27.583231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482334, 37.758747, 27.163506>,  <33.150738, 38.182289, 27.759661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482334, 37.758747, 27.163506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086285, 37.713360, 27.130558>,  <32.848656, 37.686127, 27.110788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086285, 37.713360, 27.130558>,  <33.482334, 37.758747, 27.163506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086285, 37.713360, 27.130558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053919, 0.234178, -0.970698,
		0.129430, -0.965550, -0.225746,
		-0.990122, -0.113466, -0.082371,
		32.789249, 37.679321, 27.105846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325356, 37.401478, 26.570541>,  <33.482334, 37.758747, 27.163506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325356, 37.401478, 26.570541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970787, 37.576717, 26.630297>,  <32.758045, 37.681862, 26.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970787, 37.576717, 26.630297>,  <33.325356, 37.401478, 26.570541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970787, 37.576717, 26.630297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121263, 0.091669, -0.988378,
		-0.446707, -0.894238, -0.028132,
		-0.886425, 0.438104, 0.149387,
		32.704861, 37.708149, 26.675114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850094, 37.061234, 26.137222>,  <33.325356, 37.401478, 26.570541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850094, 37.061234, 26.137222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609306, 37.360443, 26.249008>,  <32.464836, 37.539970, 26.316080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609306, 37.360443, 26.249008>,  <32.850094, 37.061234, 26.137222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609306, 37.360443, 26.249008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206265, 0.192438, -0.959386,
		-0.771423, -0.635160, 0.038450,
		-0.601964, 0.748024, 0.279462,
		32.428719, 37.584850, 26.332848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172867, 37.065849, 25.727638>,  <32.850094, 37.061234, 26.137222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172867, 37.065849, 25.727638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192936, 37.448517, 25.842363>,  <32.204979, 37.678120, 25.911198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192936, 37.448517, 25.842363>,  <32.172867, 37.065849, 25.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192936, 37.448517, 25.842363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188187, 0.291085, -0.938006,
		-0.980851, -0.006907, 0.194640,
		0.050178, 0.956672, 0.286811,
		32.207989, 37.735519, 25.928406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527403, 37.355400, 25.512579>,  <32.172867, 37.065849, 25.727638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527403, 37.355400, 25.512579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810490, 37.637398, 25.530998>,  <31.980341, 37.806595, 25.542049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810490, 37.637398, 25.530998>,  <31.527403, 37.355400, 25.512579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810490, 37.637398, 25.530998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213781, 0.275819, -0.937135,
		-0.673376, 0.653381, 0.345916,
		0.707717, 0.704994, 0.046049,
		32.022804, 37.848896, 25.544813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169907, 37.939728, 25.245544>,  <31.527403, 37.355400, 25.512579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169907, 37.939728, 25.245544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563890, 38.005836, 25.225397>,  <31.800282, 38.045502, 25.213308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563890, 38.005836, 25.225397>,  <31.169907, 37.939728, 25.245544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563890, 38.005836, 25.225397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122836, 0.464838, -0.876834,
		-0.121500, 0.869835, 0.478148,
		0.984962, 0.165269, -0.050370,
		31.859379, 38.055416, 25.210287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225393, 38.483570, 24.821360>,  <31.169907, 37.939728, 25.245544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225393, 38.483570, 24.821360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614086, 38.392265, 24.845451>,  <31.847301, 38.337482, 24.859905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614086, 38.392265, 24.845451>,  <31.225393, 38.483570, 24.821360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614086, 38.392265, 24.845451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177733, 0.539461, -0.823039,
		0.155381, 0.810479, 0.564783,
		0.971734, -0.228265, 0.060227,
		31.905607, 38.323784, 24.863520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550737, 39.084301, 24.606319>,  <31.225393, 38.483570, 24.821360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550737, 39.084301, 24.606319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810675, 38.785870, 24.548252>,  <31.966637, 38.606812, 24.513412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810675, 38.785870, 24.548252>,  <31.550737, 39.084301, 24.606319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810675, 38.785870, 24.548252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193646, 0.347208, -0.917577,
		0.734985, 0.568171, 0.370106,
		0.649844, -0.746075, -0.145168,
		32.005627, 38.562046, 24.504702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212528, 39.382702, 24.272572>,  <31.550737, 39.084301, 24.606319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212528, 39.382702, 24.272572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176430, 38.989788, 24.206888>,  <32.154770, 38.754040, 24.167479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176430, 38.989788, 24.206888>,  <32.212528, 39.382702, 24.272572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176430, 38.989788, 24.206888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211758, 0.142187, -0.966924,
		0.973147, -0.122031, 0.195176,
		-0.090244, -0.982289, -0.164210,
		32.149357, 38.695103, 24.157625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834671, 39.164082, 23.856581>,  <32.212528, 39.382702, 24.272572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834671, 39.164082, 23.856581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578114, 38.864296, 23.790956>,  <32.424179, 38.684425, 23.751581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578114, 38.864296, 23.790956>,  <32.834671, 39.164082, 23.856581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578114, 38.864296, 23.790956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188290, 0.053531, -0.980653,
		0.743746, -0.659879, 0.106782,
		-0.641396, -0.749463, -0.164062,
		32.385696, 38.639458, 23.741737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164280, 38.718349, 23.405729>,  <32.834671, 39.164082, 23.856581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164280, 38.718349, 23.405729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784027, 38.614872, 23.337172>,  <32.555874, 38.552784, 23.296038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784027, 38.614872, 23.337172>,  <33.164280, 38.718349, 23.405729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784027, 38.614872, 23.337172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183147, -0.021852, -0.982843,
		0.250512, -0.965712, 0.068152,
		-0.950632, -0.258695, -0.171393,
		32.498837, 38.537262, 23.285753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256214, 38.254875, 22.918528>,  <33.164280, 38.718349, 23.405729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256214, 38.254875, 22.918528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875858, 38.365383, 22.862705>,  <32.647644, 38.431686, 22.829212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875858, 38.365383, 22.862705>,  <33.256214, 38.254875, 22.918528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875858, 38.365383, 22.862705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145171, -0.000135, -0.989407,
		-0.273364, -0.961079, -0.039978,
		-0.950893, 0.276272, -0.139558,
		32.590591, 38.448265, 22.820837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933475, 37.813786, 22.411057>,  <33.256214, 38.254875, 22.918528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933475, 37.813786, 22.411057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767521, 38.177658, 22.403606>,  <32.667950, 38.395981, 22.399136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767521, 38.177658, 22.403606>,  <32.933475, 37.813786, 22.411057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767521, 38.177658, 22.403606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270039, 0.103558, -0.957264,
		-0.868880, -0.402181, -0.288614,
		-0.414882, 0.909685, -0.018625,
		32.643055, 38.450565, 22.398018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707577, 37.928185, 21.661201>,  <32.933475, 37.813786, 22.411057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707577, 37.928185, 21.661201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672871, 38.288937, 21.830477>,  <32.652046, 38.505386, 21.932041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672871, 38.288937, 21.830477>,  <32.707577, 37.928185, 21.661201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672871, 38.288937, 21.830477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261215, 0.430522, -0.863955,
		-0.961373, 0.035581, -0.272939,
		-0.086765, 0.901879, 0.423186,
		32.646839, 38.559502, 21.957432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373325, 38.269184, 21.066675>,  <32.707577, 37.928185, 21.661201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373325, 38.269184, 21.066675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520672, 38.538197, 21.323427>,  <32.609077, 38.699604, 21.477478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520672, 38.538197, 21.323427>,  <32.373325, 38.269184, 21.066675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520672, 38.538197, 21.323427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345747, 0.541806, -0.766097,
		-0.862999, 0.504131, -0.032944,
		0.368364, 0.672531, 0.641880,
		32.631180, 38.739956, 21.515991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308842, 38.885967, 20.709723>,  <32.373325, 38.269184, 21.066675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308842, 38.885967, 20.709723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596146, 38.937519, 20.983215>,  <32.768528, 38.968449, 21.147310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596146, 38.937519, 20.983215>,  <32.308842, 38.885967, 20.709723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596146, 38.937519, 20.983215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518346, 0.556406, -0.649407,
		-0.464128, 0.820855, 0.332841,
		0.718264, 0.128881, 0.683730,
		32.811626, 38.976185, 21.188334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340034, 39.656475, 20.834869>,  <32.308842, 38.885967, 20.709723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340034, 39.656475, 20.834869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679241, 39.482452, 20.955935>,  <32.882763, 39.378040, 21.028574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679241, 39.482452, 20.955935>,  <32.340034, 39.656475, 20.834869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679241, 39.482452, 20.955935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526974, 0.631472, -0.568808,
		0.056338, 0.641851, 0.764757,
		0.848012, -0.435052, 0.302663,
		32.933643, 39.351936, 21.046734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706604, 40.155006, 21.066986>,  <32.340034, 39.656475, 20.834869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706604, 40.155006, 21.066986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006329, 39.890503, 21.052700>,  <33.186161, 39.731800, 21.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006329, 39.890503, 21.052700>,  <32.706604, 40.155006, 21.066986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006329, 39.890503, 21.052700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560661, 0.662171, -0.497181,
		0.352415, 0.352517, 0.866911,
		0.749308, -0.661258, -0.035717,
		33.231121, 39.692127, 21.041985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365139, 40.527882, 21.228277>,  <32.706604, 40.155006, 21.066986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365139, 40.527882, 21.228277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472187, 40.221386, 20.994608>,  <33.536415, 40.037491, 20.854406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472187, 40.221386, 20.994608>,  <33.365139, 40.527882, 21.228277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472187, 40.221386, 20.994608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665216, 0.585542, -0.463280,
		0.697041, -0.264618, 0.666417,
		0.267623, -0.766236, -0.584175,
		33.552475, 39.991516, 20.819355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189228, 40.448803, 21.254595>,  <33.365139, 40.527882, 21.228277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189228, 40.448803, 21.254595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049706, 40.295444, 20.912519>,  <33.965992, 40.203430, 20.707275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049706, 40.295444, 20.912519>,  <34.189228, 40.448803, 21.254595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049706, 40.295444, 20.912519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613187, 0.596719, -0.517618,
		0.708757, -0.704937, 0.026954,
		-0.348805, -0.383393, -0.855188,
		33.945065, 40.180428, 20.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759106, 40.542580, 20.792873>,  <34.189228, 40.448803, 21.254595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759106, 40.542580, 20.792873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476181, 40.426861, 20.534878>,  <34.306427, 40.357430, 20.380081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476181, 40.426861, 20.534878>,  <34.759106, 40.542580, 20.792873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476181, 40.426861, 20.534878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340111, 0.660599, -0.669279,
		0.619698, -0.692760, -0.368860,
		-0.707318, -0.289297, -0.644987,
		34.263985, 40.340073, 20.341381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119949, 40.491322, 20.101862>,  <34.759106, 40.542580, 20.792873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119949, 40.491322, 20.101862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725399, 40.546124, 20.065424>,  <34.488670, 40.579002, 20.043560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725399, 40.546124, 20.065424>,  <35.119949, 40.491322, 20.101862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725399, 40.546124, 20.065424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157048, 0.619032, -0.769503,
		-0.049031, -0.773323, -0.632113,
		-0.986373, 0.137001, -0.091097,
		34.429485, 40.587223, 20.038095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020580, 40.340073, 19.449572>,  <35.119949, 40.491322, 20.101862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020580, 40.340073, 19.449572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729610, 40.573578, 19.593838>,  <34.555031, 40.713680, 19.680397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729610, 40.573578, 19.593838>,  <35.020580, 40.340073, 19.449572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729610, 40.573578, 19.593838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109884, 0.617922, -0.778523,
		-0.677335, -0.526684, -0.513636,
		-0.727422, 0.583761, 0.360666,
		34.511383, 40.748707, 19.702038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778316, 40.089870, 19.220066>,  <35.020580, 40.340073, 19.449572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778316, 40.089870, 19.220066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171825, 40.039650, 19.168789>,  <36.407928, 40.009518, 19.138023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171825, 40.039650, 19.168789>,  <35.778316, 40.089870, 19.220066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171825, 40.039650, 19.168789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046945, -0.509458, 0.859214,
		-0.173180, -0.851287, -0.495296,
		0.983771, -0.125547, -0.128192,
		36.466957, 40.001987, 19.130331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895252, 39.363220, 19.112099>,  <35.778316, 40.089870, 19.220066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895252, 39.363220, 19.112099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234238, 39.528973, 19.244823>,  <36.437630, 39.628422, 19.324457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234238, 39.528973, 19.244823>,  <35.895252, 39.363220, 19.112099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234238, 39.528973, 19.244823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083622, -0.721448, 0.687401,
		0.524227, -0.554800, -0.646052,
		0.847463, 0.414378, 0.331810,
		36.488476, 39.653286, 19.344366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349792, 38.837341, 19.004871>,  <35.895252, 39.363220, 19.112099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349792, 38.837341, 19.004871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453842, 39.099613, 19.288399>,  <36.516270, 39.256977, 19.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453842, 39.099613, 19.288399>,  <36.349792, 38.837341, 19.004871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453842, 39.099613, 19.288399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094361, -0.747836, 0.657144,
		0.960955, -0.104052, -0.256397,
		0.260120, 0.655679, 0.708818,
		36.531879, 39.296318, 19.501043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671635, 38.341228, 19.477180>,  <36.349792, 38.837341, 19.004871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671635, 38.341228, 19.477180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628063, 38.685596, 19.675955>,  <36.601921, 38.892220, 19.795219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628063, 38.685596, 19.675955>,  <36.671635, 38.341228, 19.477180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628063, 38.685596, 19.675955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190441, -0.508722, 0.839603,
		0.975637, -0.003180, 0.219369,
		-0.108928, 0.860925, 0.496934,
		36.595387, 38.943874, 19.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091385, 38.265713, 20.142706>,  <36.671635, 38.341228, 19.477180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091385, 38.265713, 20.142706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823395, 38.552963, 20.217999>,  <36.662601, 38.725315, 20.263174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823395, 38.552963, 20.217999>,  <37.091385, 38.265713, 20.142706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823395, 38.552963, 20.217999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106772, -0.344124, 0.932833,
		0.734668, 0.604875, 0.307229,
		-0.669972, 0.718126, 0.188233,
		36.622402, 38.768402, 20.274467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250828, 38.497059, 20.837450>,  <37.091385, 38.265713, 20.142706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250828, 38.497059, 20.837450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875488, 38.617970, 20.770363>,  <36.650284, 38.690517, 20.730110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875488, 38.617970, 20.770363>,  <37.250828, 38.497059, 20.837450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875488, 38.617970, 20.770363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219098, -0.144766, 0.964904,
		0.267390, 0.942163, 0.202070,
		-0.938349, 0.302279, -0.167717,
		36.593983, 38.708652, 20.720047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096107, 38.967522, 21.324091>,  <37.250828, 38.497059, 20.837450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096107, 38.967522, 21.324091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740108, 38.842796, 21.191013>,  <36.526508, 38.767963, 21.111168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740108, 38.842796, 21.191013>,  <37.096107, 38.967522, 21.324091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740108, 38.842796, 21.191013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308003, -0.126901, 0.942884,
		-0.336221, 0.941631, 0.016903,
		-0.889994, -0.311811, -0.332693,
		36.473110, 38.749252, 21.091206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662678, 39.441593, 21.685049>,  <37.096107, 38.967522, 21.324091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662678, 39.441593, 21.685049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430485, 39.148365, 21.543264>,  <36.291168, 38.972427, 21.458193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430485, 39.148365, 21.543264>,  <36.662678, 39.441593, 21.685049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430485, 39.148365, 21.543264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465973, -0.057929, 0.882901,
		-0.667766, 0.677676, -0.307966,
		-0.580481, -0.733075, -0.354462,
		36.256340, 38.928444, 21.436926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078167, 39.704384, 21.854288>,  <36.662678, 39.441593, 21.685049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078167, 39.704384, 21.854288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010994, 39.313709, 21.800812>,  <35.970692, 39.079304, 21.768726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010994, 39.313709, 21.800812>,  <36.078167, 39.704384, 21.854288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010994, 39.313709, 21.800812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461505, -0.041944, 0.886146,
		-0.871098, 0.210511, -0.443704,
		-0.167933, -0.976691, -0.133689,
		35.960613, 39.020702, 21.760704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397984, 39.561832, 22.065260>,  <36.078167, 39.704384, 21.854288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397984, 39.561832, 22.065260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551132, 39.193214, 22.091063>,  <35.643021, 38.972042, 22.106544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551132, 39.193214, 22.091063>,  <35.397984, 39.561832, 22.065260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551132, 39.193214, 22.091063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573557, -0.182393, 0.798602,
		-0.724184, -0.342759, -0.598393,
		0.382870, -0.921547, 0.064506,
		35.665993, 38.916752, 22.110415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839470, 39.151783, 22.279152>,  <35.397984, 39.561832, 22.065260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839470, 39.151783, 22.279152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168770, 38.949905, 22.383112>,  <35.366348, 38.828781, 22.445488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168770, 38.949905, 22.383112>,  <34.839470, 39.151783, 22.279152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168770, 38.949905, 22.383112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409082, -0.209992, 0.888006,
		-0.393593, -0.837370, -0.379336,
		0.823248, -0.504692, 0.259901,
		35.415745, 38.798496, 22.461082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623344, 38.398277, 22.479397>,  <34.839470, 39.151783, 22.279152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623344, 38.398277, 22.479397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981174, 38.466927, 22.644455>,  <35.195873, 38.508114, 22.743490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981174, 38.466927, 22.644455>,  <34.623344, 38.398277, 22.479397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981174, 38.466927, 22.644455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245112, -0.583653, 0.774125,
		0.373697, -0.793660, -0.480057,
		0.894578, 0.171620, 0.412645,
		35.249550, 38.518414, 22.768248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865662, 37.735153, 22.779909>,  <34.623344, 38.398277, 22.479397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865662, 37.735153, 22.779909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069721, 38.011013, 22.985483>,  <35.192158, 38.176529, 23.108828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069721, 38.011013, 22.985483>,  <34.865662, 37.735153, 22.779909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069721, 38.011013, 22.985483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075957, -0.559078, 0.825629,
		0.856726, -0.460230, -0.232828,
		0.510148, 0.689653, 0.513935,
		35.222767, 38.217907, 23.139664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414768, 37.425674, 23.171873>,  <34.865662, 37.735153, 22.779909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414768, 37.425674, 23.171873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367485, 37.766983, 23.375029>,  <35.339115, 37.971767, 23.496922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367485, 37.766983, 23.375029>,  <35.414768, 37.425674, 23.171873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367485, 37.766983, 23.375029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131587, -0.520426, 0.843707,
		0.984232, 0.032900, 0.173798,
		-0.118207, 0.853273, 0.507890,
		35.332024, 38.022964, 23.527395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818428, 37.299786, 23.835890>,  <35.414768, 37.425674, 23.171873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818428, 37.299786, 23.835890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547726, 37.586617, 23.902590>,  <35.385303, 37.758717, 23.942610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547726, 37.586617, 23.902590>,  <35.818428, 37.299786, 23.835890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547726, 37.586617, 23.902590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156446, -0.361400, 0.919192,
		0.719397, 0.595977, 0.356762,
		-0.676751, 0.717078, 0.166752,
		35.344700, 37.801739, 23.952616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075432, 37.764664, 24.349752>,  <35.818428, 37.299786, 23.835890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075432, 37.764664, 24.349752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681419, 37.824551, 24.383936>,  <35.445011, 37.860481, 24.404446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681419, 37.824551, 24.383936>,  <36.075432, 37.764664, 24.349752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681419, 37.824551, 24.383936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023200, -0.376090, 0.926293,
		0.170822, 0.914408, 0.366986,
		-0.985029, 0.149717, 0.085459,
		35.385910, 37.869465, 24.409573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997463, 37.730141, 25.041996>,  <36.075432, 37.764664, 24.349752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997463, 37.730141, 25.041996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608929, 37.738899, 24.947313>,  <35.375809, 37.744156, 24.890503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608929, 37.738899, 24.947313>,  <35.997463, 37.730141, 25.041996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608929, 37.738899, 24.947313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232457, -0.295817, 0.926529,
		-0.049733, 0.954994, 0.292428,
		-0.971334, 0.021898, -0.236707,
		35.317528, 37.745468, 24.876301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649288, 38.038120, 25.561003>,  <35.997463, 37.730141, 25.041996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649288, 38.038120, 25.561003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387321, 37.803406, 25.370523>,  <35.230141, 37.662579, 25.256235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387321, 37.803406, 25.370523>,  <35.649288, 38.038120, 25.561003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387321, 37.803406, 25.370523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278455, -0.398427, 0.873910,
		-0.702526, 0.704941, 0.097545,
		-0.654920, -0.586783, -0.476200,
		35.190845, 37.627373, 25.227663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019405, 38.035717, 25.921724>,  <35.649288, 38.038120, 25.561003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019405, 38.035717, 25.921724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988758, 37.695480, 25.713638>,  <34.970371, 37.491337, 25.588787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988758, 37.695480, 25.713638>,  <35.019405, 38.035717, 25.921724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988758, 37.695480, 25.713638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315350, -0.474294, 0.821948,
		-0.945877, 0.227025, -0.231895,
		-0.076616, -0.850590, -0.520217,
		34.965775, 37.440304, 25.557573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361301, 37.913685, 25.988924>,  <35.019405, 38.035717, 25.921724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361301, 37.913685, 25.988924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568295, 37.585384, 25.892109>,  <34.692490, 37.388405, 25.834019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568295, 37.585384, 25.892109>,  <34.361301, 37.913685, 25.988924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568295, 37.585384, 25.892109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306521, -0.441887, 0.843078,
		-0.798910, -0.362087, -0.480245,
		0.517482, -0.820749, -0.242040,
		34.723537, 37.339161, 25.819496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944675, 37.311893, 26.208055>,  <34.361301, 37.913685, 25.988924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944675, 37.311893, 26.208055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288219, 37.125271, 26.123507>,  <34.494347, 37.013298, 26.072777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288219, 37.125271, 26.123507>,  <33.944675, 37.311893, 26.208055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288219, 37.125271, 26.123507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159194, -0.635377, 0.755615,
		-0.486843, -0.615319, -0.619974,
		0.858861, -0.466561, -0.211374,
		34.545879, 36.985302, 26.060095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804928, 36.568836, 26.250809>,  <33.944675, 37.311893, 26.208055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804928, 36.568836, 26.250809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201500, 36.603916, 26.289534>,  <34.439442, 36.624966, 26.312769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201500, 36.603916, 26.289534>,  <33.804928, 36.568836, 26.250809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201500, 36.603916, 26.289534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017995, -0.642354, 0.766197,
		0.129385, -0.761374, -0.635271,
		0.991431, 0.087703, 0.096811,
		34.498928, 36.630226, 26.318577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026413, 36.000202, 26.550272>,  <33.804928, 36.568836, 26.250809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026413, 36.000202, 26.550272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355263, 36.219921, 26.610117>,  <34.552574, 36.351753, 26.646023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355263, 36.219921, 26.610117>,  <34.026413, 36.000202, 26.550272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355263, 36.219921, 26.610117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084246, -0.377281, 0.922259,
		0.563042, -0.745606, -0.356447,
		0.822123, 0.549300, 0.149611,
		34.601898, 36.384712, 26.655001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674011, 35.529835, 26.679380>,  <34.026413, 36.000202, 26.550272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674011, 35.529835, 26.679380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667225, 35.886593, 26.860149>,  <34.663155, 36.100647, 26.968611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667225, 35.886593, 26.860149>,  <34.674011, 35.529835, 26.679380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667225, 35.886593, 26.860149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089494, -0.448819, 0.889130,
		0.995843, 0.055526, -0.072206,
		-0.016963, 0.891896, 0.451923,
		34.662136, 36.154163, 26.995726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941395, 35.343994, 27.316412>,  <34.674011, 35.529835, 26.679380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941395, 35.343994, 27.316412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830276, 35.720993, 27.390747>,  <34.763607, 35.947193, 27.435349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830276, 35.720993, 27.390747>,  <34.941395, 35.343994, 27.316412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830276, 35.720993, 27.390747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117042, -0.158802, 0.980348,
		0.953484, 0.294085, -0.066197,
		-0.277794, 0.942495, 0.185836,
		34.746937, 36.003742, 27.446497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464722, 35.565292, 27.846172>,  <34.941395, 35.343994, 27.316412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464722, 35.565292, 27.846172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159389, 35.823364, 27.859289>,  <34.976192, 35.978207, 27.867159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159389, 35.823364, 27.859289>,  <35.464722, 35.565292, 27.846172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159389, 35.823364, 27.859289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096374, 0.063538, 0.993315,
		0.638781, 0.761386, -0.110679,
		-0.763329, 0.645178, 0.032790,
		34.930389, 36.016918, 27.869125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663033, 36.378300, 27.963779>,  <35.464722, 35.565292, 27.846172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663033, 36.378300, 27.963779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299873, 36.307884, 28.115955>,  <35.081978, 36.265636, 28.207262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299873, 36.307884, 28.115955>,  <35.663033, 36.378300, 27.963779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299873, 36.307884, 28.115955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377911, 0.049026, 0.924543,
		-0.181407, 0.983162, 0.022016,
		-0.907896, -0.176038, 0.380441,
		35.027504, 36.255074, 28.230087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531216, 36.805317, 28.497746>,  <35.663033, 36.378300, 27.963779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531216, 36.805317, 28.497746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303852, 36.487881, 28.584578>,  <35.167435, 36.297421, 28.636677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303852, 36.487881, 28.584578>,  <35.531216, 36.805317, 28.497746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303852, 36.487881, 28.584578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221760, 0.106306, 0.969289,
		-0.792295, 0.599094, 0.115561,
		-0.568411, -0.793590, 0.217081,
		35.133327, 36.249805, 28.649702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042274, 36.989105, 29.162243>,  <35.531216, 36.805317, 28.497746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042274, 36.989105, 29.162243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043308, 36.590172, 29.133097>,  <35.043930, 36.350811, 29.115608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043308, 36.590172, 29.133097>,  <35.042274, 36.989105, 29.162243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043308, 36.590172, 29.133097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030303, -0.072756, 0.996889,
		-0.999537, -0.004788, 0.030034,
		0.002588, -0.997338, -0.072868,
		35.044086, 36.290970, 29.111237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585487, 36.909729, 29.726030>,  <35.042274, 36.989105, 29.162243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585487, 36.909729, 29.726030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802521, 36.580585, 29.658487>,  <34.932739, 36.383099, 29.617962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802521, 36.580585, 29.658487>,  <34.585487, 36.909729, 29.726030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802521, 36.580585, 29.658487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125586, -0.119295, 0.984884,
		-0.830560, -0.555589, 0.038611,
		0.542584, -0.822855, -0.168856,
		34.965298, 36.333729, 29.607830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346676, 36.525661, 30.258797>,  <34.585487, 36.909729, 29.726030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346676, 36.525661, 30.258797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682068, 36.348450, 30.131878>,  <34.883305, 36.242123, 30.055727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682068, 36.348450, 30.131878>,  <34.346676, 36.525661, 30.258797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682068, 36.348450, 30.131878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264458, -0.178283, 0.947775,
		-0.476460, -0.878601, -0.032324,
		0.838479, -0.443028, -0.317298,
		34.933613, 36.215542, 30.036688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419361, 35.813080, 30.656458>,  <34.346676, 36.525661, 30.258797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419361, 35.813080, 30.656458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784473, 35.927979, 30.540302>,  <35.003540, 35.996918, 30.470610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784473, 35.927979, 30.540302>,  <34.419361, 35.813080, 30.656458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784473, 35.927979, 30.540302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319672, -0.059832, 0.945637,
		0.254255, -0.955986, -0.146438,
		0.912779, 0.287245, -0.290389,
		35.058308, 36.014153, 30.453186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944893, 35.340385, 30.977064>,  <34.419361, 35.813080, 30.656458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944893, 35.340385, 30.977064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184177, 35.637070, 30.855732>,  <35.327747, 35.815079, 30.782932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184177, 35.637070, 30.855732>,  <34.944893, 35.340385, 30.977064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184177, 35.637070, 30.855732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517246, -0.068288, 0.853108,
		0.612042, -0.667239, -0.424496,
		0.598215, 0.741707, -0.303332,
		35.363644, 35.859581, 30.764732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524982, 35.226994, 31.348431>,  <34.944893, 35.340385, 30.977064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524982, 35.226994, 31.348431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578590, 35.604603, 31.227856>,  <35.610756, 35.831169, 31.155512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578590, 35.604603, 31.227856>,  <35.524982, 35.226994, 31.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578590, 35.604603, 31.227856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369435, 0.234656, 0.899141,
		0.919541, -0.231866, -0.317305,
		0.134023, 0.944021, -0.301435,
		35.618797, 35.887810, 31.137424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195435, 35.267960, 31.427876>,  <35.524982, 35.226994, 31.348431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195435, 35.267960, 31.427876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035641, 35.634129, 31.447521>,  <35.939762, 35.853828, 31.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035641, 35.634129, 31.447521>,  <36.195435, 35.267960, 31.427876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035641, 35.634129, 31.447521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461527, 0.154542, 0.873561,
		0.792087, 0.371645, -0.484230,
		-0.399488, 0.915422, 0.049114,
		35.915794, 35.908756, 31.462255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714306, 35.746052, 31.473116>,  <36.195435, 35.267960, 31.427876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714306, 35.746052, 31.473116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395836, 35.939869, 31.618069>,  <36.204754, 36.056160, 31.705040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395836, 35.939869, 31.618069>,  <36.714306, 35.746052, 31.473116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395836, 35.939869, 31.618069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457057, 0.089170, 0.884956,
		0.396482, 0.870213, -0.292457,
		-0.796179, 0.484538, 0.362383,
		36.156982, 36.085232, 31.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002487, 36.247055, 31.773188>,  <36.714306, 35.746052, 31.473116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002487, 36.247055, 31.773188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640469, 36.229568, 31.942410>,  <36.423256, 36.219078, 32.043941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640469, 36.229568, 31.942410>,  <37.002487, 36.247055, 31.773188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640469, 36.229568, 31.942410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408000, 0.191632, 0.892644,
		-0.120092, 0.980493, -0.155601,
		-0.905049, -0.043714, 0.423054,
		36.368954, 36.216454, 32.069324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899227, 36.861938, 32.183224>,  <37.002487, 36.247055, 31.773188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899227, 36.861938, 32.183224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646469, 36.587830, 32.328064>,  <36.494816, 36.423367, 32.414967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646469, 36.587830, 32.328064>,  <36.899227, 36.861938, 32.183224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646469, 36.587830, 32.328064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202202, 0.305253, 0.930556,
		-0.748214, 0.661230, -0.054325,
		-0.631895, -0.685270, 0.362096,
		36.456902, 36.382248, 32.436691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483089, 37.202007, 32.716904>,  <36.899227, 36.861938, 32.183224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483089, 37.202007, 32.716904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482998, 36.805359, 32.768566>,  <36.482941, 36.567368, 32.799564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482998, 36.805359, 32.768566>,  <36.483089, 37.202007, 32.716904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482998, 36.805359, 32.768566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303207, 0.123010, 0.944952,
		-0.952925, 0.039381, 0.300639,
		-0.000232, -0.991624, 0.129160,
		36.482929, 36.507874, 32.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280094, 37.158054, 33.404922>,  <36.483089, 37.202007, 32.716904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280094, 37.158054, 33.404922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437229, 36.799011, 33.324936>,  <36.531509, 36.583588, 33.276943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437229, 36.799011, 33.324936>,  <36.280094, 37.158054, 33.404922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437229, 36.799011, 33.324936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460728, 0.003917, 0.887533,
		-0.795870, -0.440785, 0.415090,
		0.392837, -0.897604, -0.199965,
		36.555080, 36.529732, 33.264946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033806, 36.687000, 33.889252>,  <36.280094, 37.158054, 33.404922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033806, 36.687000, 33.889252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388554, 36.571217, 33.745209>,  <36.601402, 36.501747, 33.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388554, 36.571217, 33.745209>,  <36.033806, 36.687000, 33.889252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388554, 36.571217, 33.745209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393593, 0.065151, 0.916973,
		-0.241968, -0.954970, 0.171710,
		0.886869, -0.289462, -0.360105,
		36.654613, 36.484379, 33.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354443, 35.923923, 34.114334>,  <36.033806, 36.687000, 33.889252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354443, 35.923923, 34.114334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612865, 36.226986, 34.077312>,  <36.767921, 36.408821, 34.055099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612865, 36.226986, 34.077312>,  <36.354443, 35.923923, 34.114334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612865, 36.226986, 34.077312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347226, -0.183749, 0.919604,
		0.679735, -0.626257, -0.381790,
		0.646062, 0.757654, -0.092552,
		36.806683, 36.454281, 34.049545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053196, 35.842194, 34.351204>,  <36.354443, 35.923923, 34.114334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053196, 35.842194, 34.351204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972710, 36.227688, 34.421329>,  <36.924419, 36.458984, 34.463406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972710, 36.227688, 34.421329>,  <37.053196, 35.842194, 34.351204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972710, 36.227688, 34.421329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267293, -0.118164, 0.956343,
		0.942374, 0.239289, -0.233822,
		-0.201213, 0.963731, 0.175315,
		36.912346, 36.516808, 34.473923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563969, 36.205078, 34.759140>,  <37.053196, 35.842194, 34.351204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563969, 36.205078, 34.759140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223053, 36.397671, 34.840893>,  <37.018501, 36.513226, 34.889946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223053, 36.397671, 34.840893>,  <37.563969, 36.205078, 34.759140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223053, 36.397671, 34.840893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275352, 0.080775, 0.957944,
		0.444726, 0.872725, -0.201421,
		-0.852291, 0.481484, 0.204384,
		36.967365, 36.542114, 34.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676922, 36.841896, 35.095932>,  <37.563969, 36.205078, 34.759140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676922, 36.841896, 35.095932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345921, 36.656132, 35.222145>,  <37.147320, 36.544674, 35.297874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345921, 36.656132, 35.222145>,  <37.676922, 36.841896, 35.095932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345921, 36.656132, 35.222145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156358, 0.349144, 0.923932,
		-0.539253, 0.813891, -0.216302,
		-0.827501, -0.464413, 0.315535,
		37.097672, 36.516808, 35.316807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039658, 37.311340, 35.374077>,  <37.676922, 36.841896, 35.095932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039658, 37.311340, 35.374077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079639, 36.950657, 35.542328>,  <37.103630, 36.734245, 35.643280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079639, 36.950657, 35.542328>,  <37.039658, 37.311340, 35.374077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079639, 36.950657, 35.542328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193436, 0.432294, 0.880741,
		-0.976008, -0.006670, 0.217633,
		0.099957, -0.901708, 0.420632,
		37.109627, 36.680145, 35.668518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510914, 37.174179, 35.947971>,  <37.039658, 37.311340, 35.374077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510914, 37.174179, 35.947971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865044, 36.997540, 36.006195>,  <37.077522, 36.891556, 36.041130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865044, 36.997540, 36.006195>,  <36.510914, 37.174179, 35.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865044, 36.997540, 36.006195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192581, 0.633193, 0.749652,
		-0.423214, -0.635655, 0.645626,
		0.885326, -0.441599, 0.145561,
		37.130642, 36.865059, 36.049862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741436, 37.214252, 36.735291>,  <36.510914, 37.174179, 35.947971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741436, 37.214252, 36.735291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084373, 37.165699, 36.535198>,  <37.290134, 37.136566, 36.415142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084373, 37.165699, 36.535198>,  <36.741436, 37.214252, 36.735291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084373, 37.165699, 36.535198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444544, 0.664533, 0.600647,
		0.259516, -0.737335, 0.623689,
		0.857340, -0.121380, -0.500235,
		37.341576, 37.129284, 36.385128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245918, 37.115871, 37.259140>,  <36.741436, 37.214252, 36.735291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245918, 37.115871, 37.259140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377460, 37.272507, 36.915394>,  <37.456387, 37.366489, 36.709145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377460, 37.272507, 36.915394>,  <37.245918, 37.115871, 37.259140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377460, 37.272507, 36.915394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629852, 0.587088, 0.508541,
		0.703664, -0.708510, -0.053576,
		0.328853, 0.391587, -0.859369,
		37.476116, 37.389984, 36.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955856, 37.272423, 37.282429>,  <37.245918, 37.115871, 37.259140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955856, 37.272423, 37.282429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859234, 37.479843, 36.954342>,  <37.801262, 37.604294, 36.757488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859234, 37.479843, 36.954342>,  <37.955856, 37.272423, 37.282429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859234, 37.479843, 36.954342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709567, 0.670965, 0.215225,
		0.661942, -0.530011, -0.530019,
		-0.241553, 0.518550, -0.820218,
		37.786770, 37.635406, 36.708275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550159, 37.429844, 37.030582>,  <37.955856, 37.272423, 37.282429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550159, 37.429844, 37.030582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292896, 37.685001, 36.861141>,  <38.138538, 37.838097, 36.759476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292896, 37.685001, 36.861141>,  <38.550159, 37.429844, 37.030582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292896, 37.685001, 36.861141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720762, 0.691108, -0.053597,
		0.258566, -0.339788, -0.904261,
		-0.643154, 0.637898, -0.423603,
		38.099949, 37.876369, 36.734058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817303, 37.621853, 36.317799>,  <38.550159, 37.429844, 37.030582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817303, 37.621853, 36.317799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602207, 37.849838, 36.566307>,  <38.473148, 37.986629, 36.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602207, 37.849838, 36.566307>,  <38.817303, 37.621853, 36.317799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602207, 37.849838, 36.566307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737877, 0.674646, 0.019734,
		-0.407888, 0.469030, -0.783351,
		-0.537741, 0.569967, 0.621267,
		38.440884, 38.020828, 36.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494404, 38.337605, 36.116768>,  <38.817303, 37.621853, 36.317799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494404, 38.337605, 36.116768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576633, 38.356449, 36.507771>,  <38.625973, 38.367756, 36.742371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576633, 38.356449, 36.507771>,  <38.494404, 38.337605, 36.116768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576633, 38.356449, 36.507771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548117, 0.821936, -0.154885,
		-0.810744, 0.567629, 0.143149,
		0.205576, 0.047110, 0.977507,
		38.638306, 38.370583, 36.801022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196030, 38.891014, 36.520382>,  <38.494404, 38.337605, 36.116768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196030, 38.891014, 36.520382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563385, 38.806831, 36.654408>,  <38.783798, 38.756321, 36.734825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563385, 38.806831, 36.654408>,  <38.196030, 38.891014, 36.520382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563385, 38.806831, 36.654408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312716, 0.904891, -0.288759,
		-0.242427, 0.369974, 0.896855,
		0.918389, -0.210458, 0.335067,
		38.838902, 38.743694, 36.754929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629662, 39.459900, 36.362846>,  <38.196030, 38.891014, 36.520382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629662, 39.459900, 36.362846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708981, 39.771481, 36.124886>,  <38.756573, 39.958431, 35.982109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708981, 39.771481, 36.124886>,  <38.629662, 39.459900, 36.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708981, 39.771481, 36.124886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434469, -0.474210, -0.765742,
		-0.878587, 0.410308, 0.244400,
		0.198294, 0.778956, -0.594901,
		38.768467, 40.005169, 35.946415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035671, 39.768227, 36.044132>,  <38.629662, 39.459900, 36.362846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035671, 39.768227, 36.044132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337952, 39.856915, 35.797638>,  <38.519321, 39.910126, 35.649742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337952, 39.856915, 35.797638>,  <38.035671, 39.768227, 36.044132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337952, 39.856915, 35.797638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507763, -0.395924, -0.765128,
		-0.413625, 0.891115, -0.186623,
		0.755706, 0.221715, -0.616240,
		38.564663, 39.923428, 35.612766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715534, 40.108906, 35.365158>,  <38.035671, 39.768227, 36.044132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715534, 40.108906, 35.365158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067394, 39.923222, 35.323730>,  <38.278511, 39.811813, 35.298874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067394, 39.923222, 35.323730>,  <37.715534, 40.108906, 35.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067394, 39.923222, 35.323730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333114, -0.445873, -0.830802,
		0.339486, 0.765316, -0.546847,
		0.879650, -0.464208, -0.103570,
		38.331291, 39.783958, 35.292660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020054, 40.222729, 34.677029>,  <37.715534, 40.108906, 35.365158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020054, 40.222729, 34.677029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206455, 39.889118, 34.795174>,  <38.318295, 39.688950, 34.866062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206455, 39.889118, 34.795174>,  <38.020054, 40.222729, 34.677029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206455, 39.889118, 34.795174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299650, -0.462865, -0.834246,
		0.832498, 0.300254, -0.465612,
		0.466001, -0.834029, 0.295363,
		38.346256, 39.638908, 34.883781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547276, 40.069077, 34.177197>,  <38.020054, 40.222729, 34.677029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547276, 40.069077, 34.177197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433281, 39.732090, 34.360081>,  <38.364883, 39.529900, 34.469810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433281, 39.732090, 34.360081>,  <38.547276, 40.069077, 34.177197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433281, 39.732090, 34.360081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448525, -0.304340, -0.840358,
		0.847117, -0.444560, -0.291133,
		-0.284987, -0.842462, 0.457208,
		38.347786, 39.479351, 34.497242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881924, 39.348198, 33.818707>,  <38.547276, 40.069077, 34.177197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881924, 39.348198, 33.818707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520096, 39.350861, 33.989220>,  <38.303001, 39.352459, 34.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520096, 39.350861, 33.989220>,  <38.881924, 39.348198, 33.818707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520096, 39.350861, 33.989220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425027, -0.092299, -0.900462,
		0.033356, -0.995709, 0.086317,
		-0.904566, 0.006651, 0.426282,
		38.248726, 39.352856, 34.117104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461670, 38.719917, 33.859505>,  <38.881924, 39.348198, 33.818707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461670, 38.719917, 33.859505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191463, 39.012173, 33.819809>,  <38.029339, 39.187527, 33.795994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191463, 39.012173, 33.819809>,  <38.461670, 38.719917, 33.859505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191463, 39.012173, 33.819809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165507, -0.281398, -0.945210,
		-0.718533, -0.622078, 0.311014,
		-0.675513, 0.730639, -0.099236,
		37.988808, 39.231365, 33.790039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770569, 38.561432, 33.713699>,  <38.461670, 38.719917, 33.859505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770569, 38.561432, 33.713699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884365, 38.911915, 33.558094>,  <37.952641, 39.122204, 33.464733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884365, 38.911915, 33.558094>,  <37.770569, 38.561432, 33.713699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884365, 38.911915, 33.558094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290304, -0.307989, -0.906017,
		-0.913668, 0.370683, 0.166747,
		0.284488, 0.876206, -0.389010,
		37.969711, 39.174778, 33.441391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412853, 38.996578, 33.141735>,  <37.770569, 38.561432, 33.713699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412853, 38.996578, 33.141735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075741, 38.782757, 33.166973>,  <36.873474, 38.654465, 33.182117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075741, 38.782757, 33.166973>,  <37.412853, 38.996578, 33.141735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075741, 38.782757, 33.166973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153817, -0.126838, 0.979925,
		-0.515817, 0.835564, 0.189119,
		-0.842777, -0.534552, 0.063099,
		36.822906, 38.622391, 33.185902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118214, 39.102997, 33.754753>,  <37.412853, 38.996578, 33.141735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118214, 39.102997, 33.754753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861675, 38.806065, 33.677162>,  <36.707752, 38.627907, 33.630608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861675, 38.806065, 33.677162>,  <37.118214, 39.102997, 33.754753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861675, 38.806065, 33.677162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170131, -0.108935, 0.979381,
		-0.748154, 0.661121, -0.056429,
		-0.641342, -0.742329, -0.193978,
		36.669273, 38.583366, 33.618969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264641, 38.851345, 34.543282>,  <37.118214, 39.102997, 33.754753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264641, 38.851345, 34.543282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601601, 38.850956, 34.327740>,  <37.803776, 38.850723, 34.198414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601601, 38.850956, 34.327740>,  <37.264641, 38.851345, 34.543282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601601, 38.850956, 34.327740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527415, 0.206432, 0.824148,
		0.110433, -0.978460, 0.174413,
		0.842400, -0.000975, -0.538851,
		37.854321, 38.850662, 34.166084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723740, 38.381317, 34.825153>,  <37.264641, 38.851345, 34.543282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723740, 38.381317, 34.825153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920563, 38.671913, 34.633282>,  <38.038658, 38.846272, 34.518158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920563, 38.671913, 34.633282>,  <37.723740, 38.381317, 34.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920563, 38.671913, 34.633282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518370, 0.198169, 0.831878,
		0.699407, -0.657986, -0.279078,
		0.492059, 0.726487, -0.479681,
		38.068180, 38.889858, 34.489376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360207, 38.264111, 34.988689>,  <37.723740, 38.381317, 34.825153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360207, 38.264111, 34.988689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347977, 38.652878, 34.895359>,  <38.340637, 38.886139, 34.839359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347977, 38.652878, 34.895359>,  <38.360207, 38.264111, 34.988689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347977, 38.652878, 34.895359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621806, 0.201266, 0.756868,
		0.782574, -0.121941, -0.610499,
		-0.030580, 0.971917, -0.233329,
		38.338802, 38.944454, 34.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043163, 38.636265, 35.216301>,  <38.360207, 38.264111, 34.988689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043163, 38.636265, 35.216301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814613, 38.945351, 35.105713>,  <38.677483, 39.130802, 35.039360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814613, 38.945351, 35.105713>,  <39.043163, 38.636265, 35.216301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814613, 38.945351, 35.105713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548780, 0.610222, 0.571376,
		0.610222, 0.174747, -0.772718,
		-0.571376, 0.772718, -0.276473,
		38.643200, 39.177166, 35.022770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449539, 39.131790, 35.002026>,  <39.043163, 38.636265, 35.216301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449539, 39.131790, 35.002026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108414, 39.313892, 35.104355>,  <38.903736, 39.423153, 35.165752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108414, 39.313892, 35.104355>,  <39.449539, 39.131790, 35.002026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108414, 39.313892, 35.104355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508714, 0.613596, 0.603913,
		0.117959, 0.645170, -0.754879,
		-0.852816, 0.455254, 0.255827,
		38.852570, 39.450470, 35.181103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607620, 39.784439, 34.930767>,  <39.449539, 39.131790, 35.002026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607620, 39.784439, 34.930767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285339, 39.760204, 35.166454>,  <39.091972, 39.745663, 35.307865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285339, 39.760204, 35.166454>,  <39.607620, 39.784439, 34.930767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285339, 39.760204, 35.166454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471693, 0.536048, 0.700114,
		-0.358266, 0.842011, -0.403316,
		-0.805700, -0.060586, 0.589218,
		39.043629, 39.742027, 35.343220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333538, 40.477455, 35.157585>,  <39.607620, 39.784439, 34.930767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333538, 40.477455, 35.157585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237514, 40.203259, 35.432529>,  <39.179901, 40.038738, 35.597496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237514, 40.203259, 35.432529>,  <39.333538, 40.477455, 35.157585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237514, 40.203259, 35.432529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288302, 0.625778, 0.724765,
		-0.926960, 0.372153, 0.047406,
		-0.240058, -0.685495, 0.687363,
		39.165497, 39.997608, 35.638737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506371, 40.818203, 35.799839>,  <39.333538, 40.477455, 35.157585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506371, 40.818203, 35.799839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460487, 40.439819, 35.921169>,  <39.432957, 40.212788, 35.993969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460487, 40.439819, 35.921169>,  <39.506371, 40.818203, 35.799839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460487, 40.439819, 35.921169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511755, 0.205437, 0.834207,
		-0.851439, 0.250918, 0.460534,
		-0.114707, -0.945958, 0.303326,
		39.426075, 40.156033, 36.012169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220078, 40.980541, 36.442062>,  <39.506371, 40.818203, 35.799839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220078, 40.980541, 36.442062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426022, 40.640747, 36.395947>,  <39.549587, 40.436871, 36.368279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426022, 40.640747, 36.395947>,  <39.220078, 40.980541, 36.442062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426022, 40.640747, 36.395947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518286, 0.201323, 0.831173,
		-0.682861, -0.487690, 0.543930,
		0.514860, -0.849487, -0.115286,
		39.580479, 40.385902, 36.361359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198841, 40.509232, 36.985252>,  <39.220078, 40.980541, 36.442062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198841, 40.509232, 36.985252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547844, 40.378941, 36.839581>,  <39.757248, 40.300766, 36.752178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547844, 40.378941, 36.839581>,  <39.198841, 40.509232, 36.985252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547844, 40.378941, 36.839581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302328, -0.225622, 0.926117,
		-0.383828, -0.918149, -0.098382,
		0.872510, -0.325726, -0.364182,
		39.809597, 40.281223, 36.730328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395870, 39.892525, 37.458523>,  <39.198841, 40.509232, 36.985252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395870, 39.892525, 37.458523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695259, 40.058540, 37.251625>,  <39.874893, 40.158150, 37.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695259, 40.058540, 37.251625>,  <39.395870, 39.892525, 37.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695259, 40.058540, 37.251625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605358, -0.109091, 0.788442,
		0.270806, -0.903241, -0.332897,
		0.748469, 0.415037, -0.517242,
		39.919800, 40.183052, 37.096451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915138, 39.447842, 37.313862>,  <39.395870, 39.892525, 37.458523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915138, 39.447842, 37.313862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009438, 39.833202, 37.364895>,  <40.066017, 40.064419, 37.395515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009438, 39.833202, 37.364895>,  <39.915138, 39.447842, 37.313862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009438, 39.833202, 37.364895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568711, -0.243223, 0.785755,
		0.788029, -0.112682, -0.605237,
		0.235748, 0.963403, 0.127583,
		40.080162, 40.122223, 37.403172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675373, 39.549026, 37.196430>,  <39.915138, 39.447842, 37.313862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675373, 39.549026, 37.196430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514008, 39.797924, 37.464779>,  <40.417187, 39.947262, 37.625790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514008, 39.797924, 37.464779>,  <40.675373, 39.549026, 37.196430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514008, 39.797924, 37.464779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562494, -0.409641, 0.718188,
		0.721703, 0.667092, -0.184750,
		-0.403416, 0.622240, 0.670875,
		40.392982, 39.984596, 37.666042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178398, 39.288147, 36.586590>,  <40.675373, 39.549026, 37.196430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178398, 39.288147, 36.586590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524208, 39.480988, 36.643398>,  <41.731693, 39.596691, 36.677483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524208, 39.480988, 36.643398>,  <41.178398, 39.288147, 36.586590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524208, 39.480988, 36.643398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350044, 0.374818, 0.858476,
		0.360631, -0.791895, 0.492795,
		0.864532, 0.482093, 0.142028,
		41.783566, 39.625618, 36.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514915, 39.193924, 37.259701>,  <41.178398, 39.288147, 36.586590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514915, 39.193924, 37.259701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606754, 39.576405, 37.187073>,  <41.661858, 39.805893, 37.143497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606754, 39.576405, 37.187073>,  <41.514915, 39.193924, 37.259701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606754, 39.576405, 37.187073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324499, 0.251087, 0.911952,
		0.917597, -0.150466, 0.367936,
		0.229602, 0.956198, -0.181570,
		41.675636, 39.863266, 37.132603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072922, 39.380470, 37.637760>,  <41.514915, 39.193924, 37.259701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072922, 39.380470, 37.637760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782082, 39.644825, 37.563404>,  <41.607578, 39.803440, 37.518791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782082, 39.644825, 37.563404>,  <42.072922, 39.380470, 37.637760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782082, 39.644825, 37.563404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226743, 0.024400, 0.973649,
		0.648011, 0.750086, 0.132112,
		-0.727097, 0.660890, -0.185888,
		41.563953, 39.843094, 37.507637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769093, 38.718689, 37.796631>,  <42.072922, 39.380470, 37.637760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769093, 38.718689, 37.796631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662582, 38.343349, 37.708454>,  <41.598679, 38.118145, 37.655548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662582, 38.343349, 37.708454>,  <41.769093, 38.718689, 37.796631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662582, 38.343349, 37.708454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114984, -0.257986, 0.959282,
		-0.957016, 0.230082, 0.176590,
		-0.266271, -0.938353, -0.220441,
		41.582703, 38.061844, 37.642323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167858, 38.426907, 38.267551>,  <41.769093, 38.718689, 37.796631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167858, 38.426907, 38.267551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171665, 38.037346, 38.358265>,  <41.173950, 37.803612, 38.412693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171665, 38.037346, 38.358265>,  <41.167858, 38.426907, 38.267551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171665, 38.037346, 38.358265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835782, -0.116765, -0.536503,
		0.548980, 0.194650, 0.812855,
		0.009517, -0.973898, 0.226786,
		41.174519, 37.745178, 38.426300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812172, 38.246044, 38.441223>,  <41.167858, 38.426907, 38.267551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812172, 38.246044, 38.441223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614365, 37.935726, 38.284462>,  <41.495682, 37.749535, 38.190407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614365, 37.935726, 38.284462>,  <41.812172, 38.246044, 38.441223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614365, 37.935726, 38.284462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754458, -0.159267, -0.636731,
		0.431559, -0.610548, 0.664069,
		-0.494519, -0.775800, -0.391900,
		41.466007, 37.702988, 38.166893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349068, 37.782463, 38.355629>,  <41.812172, 38.246044, 38.441223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349068, 37.782463, 38.355629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035900, 37.646149, 38.147434>,  <41.848000, 37.564362, 38.022518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035900, 37.646149, 38.147434>,  <42.349068, 37.782463, 38.355629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035900, 37.646149, 38.147434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621449, -0.389431, -0.679812,
		0.028974, -0.855693, 0.516671,
		-0.782918, -0.340782, -0.520487,
		41.801025, 37.543915, 37.991287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370495, 37.051807, 38.193356>,  <42.349068, 37.782463, 38.355629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370495, 37.051807, 38.193356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183971, 37.259148, 37.906616>,  <42.072060, 37.383553, 37.734573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183971, 37.259148, 37.906616>,  <42.370495, 37.051807, 38.193356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183971, 37.259148, 37.906616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710316, -0.263596, -0.652662,
		-0.527268, -0.813528, -0.245278,
		-0.466305, 0.518353, -0.716848,
		42.044079, 37.414654, 37.691563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061577, 36.653103, 37.694782>,  <42.370495, 37.051807, 38.193356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061577, 36.653103, 37.694782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181206, 36.994953, 37.525002>,  <42.252983, 37.200066, 37.423134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181206, 36.994953, 37.525002>,  <42.061577, 36.653103, 37.694782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181206, 36.994953, 37.525002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605211, -0.513788, -0.608064,
		-0.737750, -0.075030, -0.670891,
		0.299073, 0.854630, -0.424456,
		42.270927, 37.251343, 37.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357319, 36.394913, 38.104328>,  <42.061577, 36.653103, 37.694782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357319, 36.394913, 38.104328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018517, 36.297726, 38.293453>,  <40.815235, 36.239414, 38.406929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018517, 36.297726, 38.293453>,  <41.357319, 36.394913, 38.104328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018517, 36.297726, 38.293453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468828, -0.077836, -0.879853,
		0.250574, -0.966908, -0.047981,
		-0.847002, -0.242963, 0.472817,
		40.764416, 36.224838, 38.435299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432735, 36.531311, 37.382248>,  <41.357319, 36.394913, 38.104328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432735, 36.531311, 37.382248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670380, 36.825539, 37.252029>,  <41.812965, 37.002075, 37.173901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670380, 36.825539, 37.252029>,  <41.432735, 36.531311, 37.382248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670380, 36.825539, 37.252029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636784, -0.677355, -0.368371,
		-0.491468, 0.011553, -0.870819,
		0.594109, 0.735566, -0.325542,
		41.848614, 37.046207, 37.154366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768726, 36.205563, 36.782394>,  <41.432735, 36.531311, 37.382248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768726, 36.205563, 36.782394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967556, 36.531918, 36.900543>,  <42.086853, 36.727730, 36.971432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967556, 36.531918, 36.900543>,  <41.768726, 36.205563, 36.782394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967556, 36.531918, 36.900543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824123, -0.337382, -0.454967,
		-0.271549, 0.469575, -0.840095,
		0.497074, 0.815888, 0.295372,
		42.116676, 36.776684, 36.989155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021908, 36.496075, 36.137161>,  <41.768726, 36.205563, 36.782394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021908, 36.496075, 36.137161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264626, 36.633125, 36.424049>,  <42.410255, 36.715355, 36.596184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264626, 36.633125, 36.424049>,  <42.021908, 36.496075, 36.137161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264626, 36.633125, 36.424049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758008, -0.520988, -0.392422,
		0.239210, 0.781779, -0.575847,
		0.606797, 0.342626, 0.717221,
		42.446663, 36.735912, 36.639217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570591, 36.835022, 35.852688>,  <42.021908, 36.496075, 36.137161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570591, 36.835022, 35.852688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699757, 36.672207, 36.194458>,  <42.777256, 36.574516, 36.399521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699757, 36.672207, 36.194458>,  <42.570591, 36.835022, 35.852688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699757, 36.672207, 36.194458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685608, -0.521748, -0.507663,
		0.652434, 0.749734, 0.110588,
		0.322913, -0.407037, 0.854429,
		42.796631, 36.550095, 36.450787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316910, 36.844566, 35.896770>,  <42.570591, 36.835022, 35.852688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316910, 36.844566, 35.896770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141857, 36.537441, 36.083939>,  <43.036827, 36.353168, 36.196239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141857, 36.537441, 36.083939>,  <43.316910, 36.844566, 35.896770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141857, 36.537441, 36.083939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618268, -0.634812, -0.463420,
		0.652860, 0.086495, 0.752524,
		-0.437628, -0.767810, 0.467920,
		43.010571, 36.307098, 36.224316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661758, 36.527912, 36.443386>,  <43.316910, 36.844566, 35.896770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661758, 36.527912, 36.443386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444653, 36.320988, 36.178719>,  <43.314388, 36.196835, 36.019920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444653, 36.320988, 36.178719>,  <43.661758, 36.527912, 36.443386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444653, 36.320988, 36.178719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836887, -0.266579, -0.478076,
		0.070927, -0.813220, 0.577619,
		-0.542761, -0.517310, -0.661665,
		43.281826, 36.165794, 35.980221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064613, 36.026272, 36.405712>,  <43.661758, 36.527912, 36.443386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064613, 36.026272, 36.405712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857323, 36.077667, 36.067497>,  <43.732948, 36.108505, 35.864567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857323, 36.077667, 36.067497>,  <44.064613, 36.026272, 36.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857323, 36.077667, 36.067497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825590, -0.182935, -0.533795,
		-0.223266, -0.974692, -0.011279,
		-0.518222, 0.128490, -0.845539,
		43.701855, 36.116215, 35.813835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258999, 35.410213, 35.906693>,  <44.064613, 36.026272, 36.405712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258999, 35.410213, 35.906693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152573, 35.768715, 35.764748>,  <44.088718, 35.983818, 35.679581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152573, 35.768715, 35.764748>,  <44.258999, 35.410213, 35.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152573, 35.768715, 35.764748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879794, 0.075345, -0.469346,
		-0.393917, -0.437087, -0.808569,
		-0.266067, 0.896258, -0.354866,
		44.072754, 36.037594, 35.658287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444557, 35.380821, 35.261120>,  <44.258999, 35.410213, 35.906693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444557, 35.380821, 35.261120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462582, 35.774746, 35.328194>,  <44.473396, 36.011101, 35.368439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462582, 35.774746, 35.328194>,  <44.444557, 35.380821, 35.261120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462582, 35.774746, 35.328194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827252, 0.057316, -0.558900,
		-0.560021, 0.163905, -0.812103,
		0.045061, 0.984810, 0.167689,
		44.476101, 36.070190, 35.378502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004654, 35.572380, 34.668388>,  <44.444557, 35.380821, 35.261120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004654, 35.572380, 34.668388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301899, 35.392479, 34.470192>,  <44.480244, 35.284538, 34.351273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301899, 35.392479, 34.470192>,  <44.004654, 35.572380, 34.668388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301899, 35.392479, 34.470192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602117, -0.772469, -0.201858,
		-0.291968, 0.448348, -0.844831,
		0.743108, -0.449751, -0.495494,
		44.524830, 35.257553, 34.321545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076569, 35.956673, 33.980373>,  <44.004654, 35.572380, 34.668388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076569, 35.956673, 33.980373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300167, 35.830410, 33.673679>,  <44.434326, 35.754650, 33.489662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300167, 35.830410, 33.673679>,  <44.076569, 35.956673, 33.980373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300167, 35.830410, 33.673679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623454, -0.449620, 0.639646,
		-0.546650, -0.835584, -0.054536,
		0.558998, -0.315662, -0.766733,
		44.467865, 35.735710, 33.443661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129940, 35.228870, 33.976067>,  <44.076569, 35.956673, 33.980373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129940, 35.228870, 33.976067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455509, 35.373383, 33.794075>,  <44.650852, 35.460091, 33.684879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455509, 35.373383, 33.794075>,  <44.129940, 35.228870, 33.976067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455509, 35.373383, 33.794075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579216, -0.565470, 0.587157,
		-0.045147, -0.741430, -0.669509,
		0.813923, 0.361282, -0.454977,
		44.699688, 35.481766, 33.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705452, 34.744045, 34.030453>,  <44.129940, 35.228870, 33.976067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705452, 34.744045, 34.030453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907818, 35.068935, 33.914291>,  <45.029236, 35.263870, 33.844593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907818, 35.068935, 33.914291>,  <44.705452, 34.744045, 34.030453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907818, 35.068935, 33.914291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836019, -0.378802, 0.396966,
		0.212422, -0.443615, -0.870679,
		0.505915, 0.812228, -0.290405,
		45.059593, 35.312603, 33.827171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292416, 34.538685, 33.705353>,  <44.705452, 34.744045, 34.030453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292416, 34.538685, 33.705353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334892, 34.901924, 33.867382>,  <45.360378, 35.119869, 33.964600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334892, 34.901924, 33.867382>,  <45.292416, 34.538685, 33.705353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334892, 34.901924, 33.867382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825142, -0.307793, 0.473712,
		0.554855, 0.283937, -0.781995,
		0.106188, 0.908099, 0.405069,
		45.366749, 35.174355, 33.988903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967834, 34.895000, 33.425594>,  <45.292416, 34.538685, 33.705353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967834, 34.895000, 33.425594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854572, 34.972984, 33.801212>,  <45.786617, 35.019775, 34.026585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854572, 34.972984, 33.801212>,  <45.967834, 34.895000, 33.425594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854572, 34.972984, 33.801212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946966, -0.098263, 0.305942,
		0.151921, 0.975876, -0.156800,
		-0.283153, 0.194963, 0.939049,
		45.769627, 35.031475, 34.082928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429432, 35.447231, 33.684425>,  <45.967834, 34.895000, 33.425594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429432, 35.447231, 33.684425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316830, 35.213203, 33.988647>,  <46.249268, 35.072788, 34.171181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316830, 35.213203, 33.988647>,  <46.429432, 35.447231, 33.684425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316830, 35.213203, 33.988647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868583, 0.181495, 0.461112,
		-0.407819, 0.790413, 0.457089,
		-0.281509, -0.585070, 0.760556,
		46.232376, 35.037682, 34.216816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393848, 35.791687, 34.346085>,  <46.429432, 35.447231, 33.684425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393848, 35.791687, 34.346085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498379, 35.408451, 34.393044>,  <46.561096, 35.178509, 34.421219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498379, 35.408451, 34.393044>,  <46.393848, 35.791687, 34.346085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.498379, 35.408451, 34.393044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862784, 0.286383, 0.416639,
		-0.432797, -0.007586, 0.901459,
		0.261324, -0.958085, 0.117401,
		46.576775, 35.121025, 34.428265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570259, 35.660542, 34.974571>,  <46.393848, 35.791687, 34.346085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570259, 35.660542, 34.974571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764160, 35.370975, 34.778217>,  <46.880501, 35.197235, 34.660404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764160, 35.370975, 34.778217>,  <46.570259, 35.660542, 34.974571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764160, 35.370975, 34.778217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872559, 0.361449, 0.328626,
		-0.060468, -0.587625, 0.806871,
		0.484752, -0.723914, -0.490881,
		46.909584, 35.153801, 34.630955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114189, 35.472546, 35.464294>,  <46.570259, 35.660542, 34.974571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114189, 35.472546, 35.464294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198895, 35.360992, 35.089619>,  <47.249718, 35.294060, 34.864815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198895, 35.360992, 35.089619>,  <47.114189, 35.472546, 35.464294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.198895, 35.360992, 35.089619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962317, 0.226788, 0.150040,
		0.170586, -0.933163, 0.316398,
		0.211767, -0.278881, -0.936686,
		47.262424, 35.277328, 34.808613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.700584, 34.993412, 35.560482>,  <47.114189, 35.472546, 35.464294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.700584, 34.993412, 35.560482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663780, 35.160515, 35.198929>,  <47.641697, 35.260777, 34.981995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663780, 35.160515, 35.198929>,  <47.700584, 34.993412, 35.560482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.663780, 35.160515, 35.198929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861724, 0.488263, 0.137948,
		0.498964, -0.766209, -0.404918,
		-0.092010, 0.417758, -0.903887,
		47.636177, 35.285843, 34.927761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.944923, 33.930569, 23.944660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555695, 33.870434, 23.874779>,  <36.322155, 33.834354, 23.832850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555695, 33.870434, 23.874779>,  <36.944923, 33.930569, 23.944660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555695, 33.870434, 23.874779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130880, -0.263512, 0.955736,
		-0.189720, 0.952870, 0.236741,
		-0.973076, -0.150338, -0.174705,
		36.263771, 33.825333, 23.822367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616142, 34.259987, 24.519896>,  <36.944923, 33.930569, 23.944660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616142, 34.259987, 24.519896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341343, 34.016739, 24.360785>,  <36.176464, 33.870789, 24.265318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341343, 34.016739, 24.360785>,  <36.616142, 34.259987, 24.519896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341343, 34.016739, 24.360785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200489, -0.367530, 0.908144,
		-0.698456, 0.703641, 0.130570,
		-0.686996, -0.608121, -0.397776,
		36.135242, 33.834301, 24.241451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920811, 34.448696, 24.894018>,  <36.616142, 34.259987, 24.519896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920811, 34.448696, 24.894018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911827, 34.083496, 24.731083>,  <35.906437, 33.864376, 24.633322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911827, 34.083496, 24.731083>,  <35.920811, 34.448696, 24.894018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911827, 34.083496, 24.731083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409092, -0.363375, 0.837020,
		-0.912217, 0.185437, -0.365340,
		-0.022459, -0.913002, -0.407338,
		35.905090, 33.809597, 24.608881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194679, 34.259624, 25.048504>,  <35.920811, 34.448696, 24.894018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194679, 34.259624, 25.048504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411942, 33.934879, 24.962841>,  <35.542301, 33.740032, 24.911444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411942, 33.934879, 24.962841>,  <35.194679, 34.259624, 25.048504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411942, 33.934879, 24.962841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421113, -0.484071, 0.767033,
		-0.726389, -0.326437, -0.604812,
		0.543159, -0.811859, -0.214157,
		35.574890, 33.691322, 24.898594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793369, 33.718018, 25.089138>,  <35.194679, 34.259624, 25.048504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793369, 33.718018, 25.089138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144840, 33.531796, 25.131449>,  <35.355724, 33.420063, 25.156836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144840, 33.531796, 25.131449>,  <34.793369, 33.718018, 25.089138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144840, 33.531796, 25.131449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301784, -0.369938, 0.878677,
		-0.369938, -0.803995, -0.465551,
		-0.878677, 0.465551, -0.105779,
		35.408443, 33.392132, 25.163183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558250, 33.076797, 25.268066>,  <34.793369, 33.718018, 25.089138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558250, 33.076797, 25.268066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939865, 33.108116, 25.383781>,  <35.168835, 33.126907, 25.453211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939865, 33.108116, 25.383781>,  <34.558250, 33.076797, 25.268066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939865, 33.108116, 25.383781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250002, -0.324404, 0.912283,
		0.165275, -0.942673, -0.289918,
		0.954035, 0.078297, 0.289286,
		35.226074, 33.131607, 25.470568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845322, 32.378128, 25.532721>,  <34.558250, 33.076797, 25.268066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845322, 32.378128, 25.532721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054966, 32.667885, 25.711857>,  <35.180752, 32.841740, 25.819338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054966, 32.667885, 25.711857>,  <34.845322, 32.378128, 25.532721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054966, 32.667885, 25.711857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200797, -0.405917, 0.891578,
		0.827640, -0.557211, -0.067289,
		0.524111, 0.724394, 0.447840,
		35.212200, 32.885204, 25.846209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087055, 32.038593, 26.145504>,  <34.845322, 32.378128, 25.532721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087055, 32.038593, 26.145504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157055, 32.425243, 26.220339>,  <35.199055, 32.657234, 26.265240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157055, 32.425243, 26.220339>,  <35.087055, 32.038593, 26.145504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157055, 32.425243, 26.220339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038928, -0.183078, 0.982328,
		0.983799, -0.179191, 0.005590,
		0.175001, 0.966630, 0.187087,
		35.209557, 32.715233, 26.276464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456821, 32.027153, 26.766603>,  <35.087055, 32.038593, 26.145504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456821, 32.027153, 26.766603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308765, 32.398666, 26.774193>,  <35.219933, 32.621574, 26.778746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308765, 32.398666, 26.774193>,  <35.456821, 32.027153, 26.766603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308765, 32.398666, 26.774193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092813, -0.057295, 0.994034,
		0.924328, 0.366170, 0.107410,
		-0.370139, 0.928783, 0.018974,
		35.197723, 32.677299, 26.779884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905914, 32.419132, 27.214302>,  <35.456821, 32.027153, 26.766603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905914, 32.419132, 27.214302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589931, 32.664246, 27.222963>,  <35.400341, 32.811314, 27.228161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589931, 32.664246, 27.222963>,  <35.905914, 32.419132, 27.214302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589931, 32.664246, 27.222963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129124, 0.131727, 0.982840,
		0.599417, 0.779194, -0.183183,
		-0.789953, 0.612785, 0.021653,
		35.352947, 32.848080, 27.229460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047134, 32.971615, 27.585714>,  <35.905914, 32.419132, 27.214302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047134, 32.971615, 27.585714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649685, 33.007442, 27.613092>,  <35.411213, 33.028938, 27.629519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649685, 33.007442, 27.613092>,  <36.047134, 32.971615, 27.585714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649685, 33.007442, 27.613092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075954, 0.083295, 0.993626,
		0.083295, 0.992492, -0.089567,
		-0.993626, 0.089567, 0.068446,
		35.351597, 33.034313, 27.633627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926033, 33.563877, 28.081652>,  <36.047134, 32.971615, 27.585714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926033, 33.563877, 28.081652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564411, 33.395557, 28.111647>,  <35.347439, 33.294567, 28.129642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564411, 33.395557, 28.111647>,  <35.926033, 33.563877, 28.081652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564411, 33.395557, 28.111647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063167, 0.041976, 0.997120,
		-0.422732, 0.906184, -0.011368,
		-0.904051, -0.420796, 0.074986,
		35.293198, 33.269318, 28.134142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410759, 33.975189, 28.553053>,  <35.926033, 33.563877, 28.081652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410759, 33.975189, 28.553053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274662, 33.599377, 28.537474>,  <35.193005, 33.373890, 28.528126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274662, 33.599377, 28.537474>,  <35.410759, 33.975189, 28.553053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274662, 33.599377, 28.537474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121899, -0.085138, 0.988884,
		-0.932404, 0.331711, 0.143495,
		-0.340240, -0.939532, -0.038947,
		35.172588, 33.317516, 28.525789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001328, 33.976360, 29.196392>,  <35.410759, 33.975189, 28.553053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001328, 33.976360, 29.196392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078430, 33.599106, 29.088064>,  <35.124691, 33.372753, 29.023067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078430, 33.599106, 29.088064>,  <35.001328, 33.976360, 29.196392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078430, 33.599106, 29.088064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050382, -0.266118, 0.962623,
		-0.979953, -0.199195, -0.003778,
		0.192755, -0.943135, -0.270818,
		35.136257, 33.316166, 29.006819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645672, 33.701107, 29.684816>,  <35.001328, 33.976360, 29.196392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645672, 33.701107, 29.684816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928932, 33.446629, 29.562325>,  <35.098888, 33.293941, 29.488831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928932, 33.446629, 29.562325>,  <34.645672, 33.701107, 29.684816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928932, 33.446629, 29.562325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185095, -0.251271, 0.950054,
		-0.681364, -0.729466, -0.060182,
		0.708155, -0.636193, -0.306227,
		35.141380, 33.255772, 29.470457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531017, 33.150604, 30.070581>,  <34.645672, 33.701107, 29.684816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531017, 33.150604, 30.070581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905930, 33.102646, 29.939663>,  <35.130878, 33.073872, 29.861113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905930, 33.102646, 29.939663>,  <34.531017, 33.150604, 30.070581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905930, 33.102646, 29.939663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245202, -0.440566, 0.863584,
		-0.247737, -0.889677, -0.383537,
		0.937284, -0.119897, -0.327296,
		35.187115, 33.066677, 29.841475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780903, 32.536404, 30.452356>,  <34.531017, 33.150604, 30.070581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780903, 32.536404, 30.452356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099041, 32.736050, 30.314774>,  <35.289925, 32.855839, 30.232224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099041, 32.736050, 30.314774>,  <34.780903, 32.536404, 30.452356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099041, 32.736050, 30.314774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433794, -0.072349, 0.898103,
		0.423371, -0.863511, -0.274056,
		0.795349, 0.499114, -0.343955,
		35.337646, 32.885784, 30.211586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344158, 32.176857, 30.592468>,  <34.780903, 32.536404, 30.452356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344158, 32.176857, 30.592468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471249, 32.554539, 30.557781>,  <35.547504, 32.781147, 30.536970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471249, 32.554539, 30.557781>,  <35.344158, 32.176857, 30.592468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471249, 32.554539, 30.557781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503791, -0.090629, 0.859058,
		0.803271, -0.316632, -0.504479,
		0.317726, 0.944209, -0.086716,
		35.566566, 32.837803, 30.531767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970741, 32.110039, 31.047840>,  <35.344158, 32.176857, 30.592468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970741, 32.110039, 31.047840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855160, 32.484852, 30.969387>,  <35.785809, 32.709740, 30.922316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855160, 32.484852, 30.969387>,  <35.970741, 32.110039, 31.047840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855160, 32.484852, 30.969387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252479, 0.272208, 0.928524,
		0.923449, 0.218784, -0.315239,
		-0.288957, 0.937036, -0.196132,
		35.768475, 32.765965, 30.910547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318775, 32.443878, 31.519554>,  <35.970741, 32.110039, 31.047840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318775, 32.443878, 31.519554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035870, 32.697113, 31.393709>,  <35.866127, 32.849052, 31.318203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035870, 32.697113, 31.393709>,  <36.318775, 32.443878, 31.519554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035870, 32.697113, 31.393709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066275, 0.383687, 0.921082,
		0.703838, 0.672297, -0.229410,
		-0.707262, 0.633088, -0.314610,
		35.823692, 32.887039, 31.299326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529858, 33.155495, 31.770174>,  <36.318775, 32.443878, 31.519554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529858, 33.155495, 31.770174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132526, 33.172367, 31.727257>,  <35.894127, 33.182491, 31.701508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132526, 33.172367, 31.727257>,  <36.529858, 33.155495, 31.770174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132526, 33.172367, 31.727257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094628, 0.233272, 0.967796,
		0.065853, 0.971496, -0.227725,
		-0.993332, 0.042183, -0.107292,
		35.834526, 33.185020, 31.695068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886513, 33.279594, 32.453842>,  <36.529858, 33.155495, 31.770174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886513, 33.279594, 32.453842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081627, 33.569118, 32.649048>,  <37.198696, 33.742832, 32.766171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081627, 33.569118, 32.649048>,  <36.886513, 33.279594, 32.453842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081627, 33.569118, 32.649048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163794, 0.473215, -0.865586,
		-0.857458, 0.502156, 0.112272,
		0.487787, 0.723814, 0.488013,
		37.227962, 33.786263, 32.795452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575844, 33.839981, 32.229774>,  <36.886513, 33.279594, 32.453842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575844, 33.839981, 32.229774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927155, 33.973415, 32.366806>,  <37.137939, 34.053474, 32.449024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927155, 33.973415, 32.366806>,  <36.575844, 33.839981, 32.229774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927155, 33.973415, 32.366806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125536, 0.530453, -0.838367,
		-0.461387, 0.779321, 0.424006,
		0.878272, 0.333584, 0.342577,
		37.190636, 34.073490, 32.469578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659977, 34.560318, 32.144157>,  <36.575844, 33.839981, 32.229774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659977, 34.560318, 32.144157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040874, 34.441135, 32.170830>,  <37.269413, 34.369625, 32.186832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040874, 34.441135, 32.170830>,  <36.659977, 34.560318, 32.144157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040874, 34.441135, 32.170830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206299, 0.466871, -0.859926,
		0.225087, 0.832619, 0.506045,
		0.952248, -0.297954, 0.066683,
		37.326550, 34.351749, 32.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111198, 35.144886, 32.011490>,  <36.659977, 34.560318, 32.144157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111198, 35.144886, 32.011490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346558, 34.827957, 31.946960>,  <37.487774, 34.637802, 31.908243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346558, 34.827957, 31.946960>,  <37.111198, 35.144886, 32.011490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346558, 34.827957, 31.946960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484280, 0.505092, -0.714391,
		0.647507, 0.342218, 0.680897,
		0.588393, -0.792319, -0.161321,
		37.523075, 34.590263, 31.898563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798130, 35.442135, 31.913651>,  <37.111198, 35.144886, 32.011490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798130, 35.442135, 31.913651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793243, 35.072617, 31.760578>,  <37.790314, 34.850906, 31.668736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793243, 35.072617, 31.760578>,  <37.798130, 35.442135, 31.913651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793243, 35.072617, 31.760578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533414, 0.317688, -0.783928,
		0.845766, -0.213702, 0.488887,
		-0.012213, -0.923800, -0.382681,
		37.789581, 34.795475, 31.645773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472198, 35.302860, 31.749561>,  <37.798130, 35.442135, 31.913651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472198, 35.302860, 31.749561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264523, 35.058170, 31.510818>,  <38.139915, 34.911358, 31.367573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264523, 35.058170, 31.510818>,  <38.472198, 35.302860, 31.749561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264523, 35.058170, 31.510818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398747, 0.444311, -0.802240,
		0.755937, -0.654511, 0.013239,
		-0.519192, -0.611722, -0.596855,
		38.108765, 34.874653, 31.331762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865879, 35.077557, 31.195946>,  <38.472198, 35.302860, 31.749561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865879, 35.077557, 31.195946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509521, 34.996536, 31.033329>,  <38.295708, 34.947922, 30.935759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509521, 34.996536, 31.033329>,  <38.865879, 35.077557, 31.195946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509521, 34.996536, 31.033329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370457, 0.193838, -0.908399,
		0.262803, -0.959895, -0.097651,
		-0.890896, -0.202554, -0.406541,
		38.242252, 34.935772, 30.911367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967220, 34.680458, 30.621326>,  <38.865879, 35.077557, 31.195946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967220, 34.680458, 30.621326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592796, 34.794823, 30.539310>,  <38.368141, 34.863441, 30.490101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592796, 34.794823, 30.539310>,  <38.967220, 34.680458, 30.621326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592796, 34.794823, 30.539310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260327, 0.170790, -0.950295,
		-0.236686, -0.942912, -0.234302,
		-0.936060, 0.285917, -0.205042,
		38.311977, 34.880596, 30.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873249, 34.321648, 29.994841>,  <38.967220, 34.680458, 30.621326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873249, 34.321648, 29.994841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596031, 34.608433, 30.024897>,  <38.429699, 34.780506, 30.042931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596031, 34.608433, 30.024897>,  <38.873249, 34.321648, 29.994841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596031, 34.608433, 30.024897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147517, 0.243071, -0.958726,
		-0.705638, -0.653357, -0.274224,
		-0.693046, 0.716966, 0.075138,
		38.388119, 34.823524, 30.047438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563545, 34.341946, 29.304270>,  <38.873249, 34.321648, 29.994841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563545, 34.341946, 29.304270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438450, 34.692009, 29.451946>,  <38.363392, 34.902046, 29.540552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438450, 34.692009, 29.451946>,  <38.563545, 34.341946, 29.304270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438450, 34.692009, 29.451946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007161, 0.390847, -0.920428,
		-0.949813, -0.285208, -0.128500,
		-0.312737, 0.875154, 0.369189,
		38.344627, 34.954556, 29.562702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992725, 34.487034, 28.954500>,  <38.563545, 34.341946, 29.304270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992725, 34.487034, 28.954500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119530, 34.837654, 29.099367>,  <38.195614, 35.048027, 29.186287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119530, 34.837654, 29.099367>,  <37.992725, 34.487034, 28.954500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119530, 34.837654, 29.099367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083523, 0.406183, -0.909967,
		-0.944737, 0.258221, 0.201977,
		0.317012, 0.876549, 0.362168,
		38.214634, 35.100620, 29.208017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566593, 34.905342, 28.523466>,  <37.992725, 34.487034, 28.954500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566593, 34.905342, 28.523466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.880325, 35.108131, 28.666464>,  <38.068565, 35.229805, 28.752262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.880325, 35.108131, 28.666464>,  <37.566593, 34.905342, 28.523466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880325, 35.108131, 28.666464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163059, 0.387530, -0.907322,
		-0.598529, 0.769933, 0.221284,
		0.784331, 0.506976, 0.357492,
		38.115623, 35.260223, 28.773712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436188, 35.575504, 28.353483>,  <37.566593, 34.905342, 28.523466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436188, 35.575504, 28.353483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832672, 35.551128, 28.400461>,  <38.070560, 35.536503, 28.428648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832672, 35.551128, 28.400461>,  <37.436188, 35.575504, 28.353483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832672, 35.551128, 28.400461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131216, 0.567004, -0.813197,
		-0.017035, 0.821457, 0.570015,
		0.991208, -0.060942, 0.117447,
		38.130035, 35.532845, 28.435696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631180, 36.259083, 28.338902>,  <37.436188, 35.575504, 28.353483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631180, 36.259083, 28.338902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915543, 35.992294, 28.249674>,  <38.086159, 35.832222, 28.196138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915543, 35.992294, 28.249674>,  <37.631180, 36.259083, 28.338902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915543, 35.992294, 28.249674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170416, 0.471096, -0.865464,
		0.682325, 0.577251, 0.448569,
		0.710908, -0.666971, -0.223068,
		38.128815, 35.792202, 28.182753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219288, 36.594131, 28.020630>,  <37.631180, 36.259083, 28.338902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219288, 36.594131, 28.020630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252174, 36.214500, 27.898979>,  <38.271908, 35.986721, 27.825989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252174, 36.214500, 27.898979>,  <38.219288, 36.594131, 28.020630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252174, 36.214500, 27.898979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156542, 0.313670, -0.936539,
		0.984243, 0.029394, 0.174361,
		0.082220, -0.949077, -0.304126,
		38.276840, 35.929779, 27.807741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812500, 36.574062, 27.564413>,  <38.219288, 36.594131, 28.020630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812500, 36.574062, 27.564413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636513, 36.224506, 27.481707>,  <38.530922, 36.014774, 27.432083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636513, 36.224506, 27.481707>,  <38.812500, 36.574062, 27.564413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636513, 36.224506, 27.481707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112578, 0.174756, -0.978154,
		0.890929, -0.453633, 0.021493,
		-0.439968, -0.873886, -0.206764,
		38.504524, 35.962341, 27.419678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074074, 36.519356, 26.903841>,  <38.812500, 36.574062, 27.564413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074074, 36.519356, 26.903841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786846, 36.241604, 26.884985>,  <38.614510, 36.074955, 26.873672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786846, 36.241604, 26.884985>,  <39.074074, 36.519356, 26.903841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786846, 36.241604, 26.884985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043097, 0.111964, -0.992777,
		0.694640, -0.710847, -0.110323,
		-0.718065, -0.694378, -0.047139,
		38.571426, 36.033291, 26.870844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242664, 35.986961, 26.355488>,  <39.074074, 36.519356, 26.903841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242664, 35.986961, 26.355488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844395, 35.980888, 26.392170>,  <38.605434, 35.977245, 26.414179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844395, 35.980888, 26.392170>,  <39.242664, 35.986961, 26.355488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844395, 35.980888, 26.392170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088563, -0.144703, -0.985504,
		0.028234, -0.989359, 0.142732,
		-0.995670, -0.015184, 0.091706,
		38.545692, 35.976334, 26.419682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049061, 35.396618, 26.036394>,  <39.242664, 35.986961, 26.355488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049061, 35.396618, 26.036394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741886, 35.652569, 26.024904>,  <38.557579, 35.806141, 26.018009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741886, 35.652569, 26.024904>,  <39.049061, 35.396618, 26.036394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741886, 35.652569, 26.024904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198387, -0.280255, -0.939201,
		-0.609027, -0.715549, 0.342163,
		-0.767938, 0.639880, -0.028727,
		38.511505, 35.844532, 26.016287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.453484, 34.959480, 25.777323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347778, 35.340710, 25.718248>,  <38.284355, 35.569447, 25.682804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347778, 35.340710, 25.718248>,  <38.453484, 34.959480, 25.777323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347778, 35.340710, 25.718248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409918, -0.249605, -0.877306,
		-0.873003, -0.171299, 0.456644,
		-0.264262, 0.953076, -0.147688,
		38.268501, 35.626633, 25.673943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917515, 34.980892, 25.272762>,  <38.453484, 34.959480, 25.777323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917515, 34.980892, 25.272762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013805, 35.368435, 25.295977>,  <38.071579, 35.600960, 25.309906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013805, 35.368435, 25.295977>,  <37.917515, 34.980892, 25.272762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013805, 35.368435, 25.295977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289980, 0.128859, -0.948318,
		-0.926262, 0.211459, 0.311969,
		0.240730, 0.968855, 0.058038,
		38.086025, 35.659092, 25.313389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394268, 35.360065, 25.171488>,  <37.917515, 34.980892, 25.272762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394268, 35.360065, 25.171488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702972, 35.582386, 25.047897>,  <37.888195, 35.715778, 24.973743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702972, 35.582386, 25.047897>,  <37.394268, 35.360065, 25.171488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702972, 35.582386, 25.047897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415373, 0.072704, -0.906741,
		-0.481503, 0.828131, 0.286974,
		0.771765, 0.555800, -0.308976,
		37.934502, 35.749126, 24.955204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202785, 35.629395, 24.631889>,  <37.394268, 35.360065, 25.171488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202785, 35.629395, 24.631889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584675, 35.722046, 24.557213>,  <37.813808, 35.777637, 24.512407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584675, 35.722046, 24.557213>,  <37.202785, 35.629395, 24.631889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584675, 35.722046, 24.557213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184271, -0.032234, -0.982347,
		-0.233557, 0.972270, 0.011908,
		0.954723, 0.231628, -0.186690,
		37.871090, 35.791534, 24.501205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090416, 36.057686, 24.071356>,  <37.202785, 35.629395, 24.631889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090416, 36.057686, 24.071356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.484035, 35.986950, 24.079021>,  <37.720207, 35.944508, 24.083620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.484035, 35.986950, 24.079021>,  <37.090416, 36.057686, 24.071356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484035, 35.986950, 24.079021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046033, 0.149111, -0.987748,
		0.171819, 0.972878, 0.154874,
		0.984052, -0.176844, 0.019164,
		37.779251, 35.933895, 24.084770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480591, 36.562061, 23.674767>,  <37.090416, 36.057686, 24.071356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480591, 36.562061, 23.674767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734776, 36.253216, 23.677013>,  <37.887287, 36.067909, 23.678362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734776, 36.253216, 23.677013>,  <37.480591, 36.562061, 23.674767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734776, 36.253216, 23.677013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280326, 0.223925, -0.933421,
		0.719447, 0.594728, 0.358739,
		0.635463, -0.772111, 0.005616,
		37.925415, 36.021584, 23.678698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177006, 36.738888, 23.468119>,  <37.480591, 36.562061, 23.674767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177006, 36.738888, 23.468119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165184, 36.345814, 23.394947>,  <38.158092, 36.109970, 23.351044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165184, 36.345814, 23.394947>,  <38.177006, 36.738888, 23.468119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165184, 36.345814, 23.394947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371111, 0.159143, -0.914850,
		0.928118, -0.094925, 0.359981,
		-0.029554, -0.982681, -0.182931,
		38.156319, 36.051010, 23.340067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693817, 36.564983, 22.952475>,  <38.177006, 36.738888, 23.468119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693817, 36.564983, 22.952475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481560, 36.229092, 22.906399>,  <38.354206, 36.027557, 22.878754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481560, 36.229092, 22.906399>,  <38.693817, 36.564983, 22.952475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481560, 36.229092, 22.906399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294909, -0.055506, -0.953912,
		0.794634, -0.540161, 0.277097,
		-0.530647, -0.839729, -0.115192,
		38.322365, 35.977173, 22.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084225, 35.962128, 22.631235>,  <38.693817, 36.564983, 22.952475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084225, 35.962128, 22.631235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700439, 35.889397, 22.545107>,  <38.470169, 35.845757, 22.493429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700439, 35.889397, 22.545107>,  <39.084225, 35.962128, 22.631235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700439, 35.889397, 22.545107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229400, -0.060072, -0.971477,
		0.163710, -0.981493, 0.099349,
		-0.959466, -0.181832, -0.215320,
		38.412601, 35.834846, 22.480511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110447, 35.422813, 22.103817>,  <39.084225, 35.962128, 22.631235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110447, 35.422813, 22.103817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736107, 35.558342, 22.065056>,  <38.511505, 35.639660, 22.041800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736107, 35.558342, 22.065056>,  <39.110447, 35.422813, 22.103817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736107, 35.558342, 22.065056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134426, 0.089038, -0.986915,
		-0.325765, -0.936627, -0.128873,
		-0.935846, 0.338826, -0.096901,
		38.455353, 35.659988, 22.035986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843048, 35.178890, 21.535353>,  <39.110447, 35.422813, 22.103817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843048, 35.178890, 21.535353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639412, 35.515522, 21.607542>,  <38.517231, 35.717503, 21.650856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639412, 35.515522, 21.607542>,  <38.843048, 35.178890, 21.535353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639412, 35.515522, 21.607542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154256, 0.117075, -0.981070,
		-0.846780, -0.527289, 0.070218,
		-0.509086, 0.841582, 0.180474,
		38.486687, 35.767998, 21.661684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404984, 35.254539, 20.940559>,  <38.843048, 35.178890, 21.535353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404984, 35.254539, 20.940559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390324, 35.623901, 21.093386>,  <38.381527, 35.845520, 21.185081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390324, 35.623901, 21.093386>,  <38.404984, 35.254539, 20.940559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390324, 35.623901, 21.093386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056293, 0.379807, -0.923352,
		-0.997742, -0.055344, 0.038063,
		-0.036645, 0.923409, 0.382064,
		38.379330, 35.900925, 21.208006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964798, 35.636230, 20.468729>,  <38.404984, 35.254539, 20.940559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964798, 35.636230, 20.468729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134659, 35.943081, 20.661057>,  <38.236576, 36.127193, 20.776453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134659, 35.943081, 20.661057>,  <37.964798, 35.636230, 20.468729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134659, 35.943081, 20.661057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070489, 0.557482, -0.827191,
		-0.902609, 0.317376, 0.290809,
		0.424651, 0.767129, 0.480817,
		38.262054, 36.173218, 20.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522476, 36.156502, 20.307089>,  <37.964798, 35.636230, 20.468729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522476, 36.156502, 20.307089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856522, 36.336319, 20.433899>,  <38.056950, 36.444210, 20.509985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856522, 36.336319, 20.433899>,  <37.522476, 36.156502, 20.307089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856522, 36.336319, 20.433899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018181, 0.598562, -0.800870,
		-0.549783, 0.663051, 0.508038,
		0.835110, 0.449541, 0.317024,
		38.107056, 36.471180, 20.529007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489395, 36.873932, 20.295988>,  <37.522476, 36.156502, 20.307089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489395, 36.873932, 20.295988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884533, 36.821720, 20.262236>,  <38.121616, 36.790394, 20.241983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884533, 36.821720, 20.262236>,  <37.489395, 36.873932, 20.295988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884533, 36.821720, 20.262236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022292, 0.656276, -0.754192,
		0.153821, 0.743146, 0.651210,
		0.987847, -0.130528, -0.084383,
		38.180885, 36.782562, 20.236921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831013, 37.467426, 20.416830>,  <37.489395, 36.873932, 20.295988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831013, 37.467426, 20.416830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103603, 37.270573, 20.200171>,  <38.267159, 37.152458, 20.070175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103603, 37.270573, 20.200171>,  <37.831013, 37.467426, 20.416830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103603, 37.270573, 20.200171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001851, 0.738964, -0.673742,
		0.731834, 0.460145, 0.502678,
		0.681480, -0.492137, -0.541651,
		38.308048, 37.122932, 20.037676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015533, 38.020329, 20.062786>,  <37.831013, 37.467426, 20.416830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015533, 38.020329, 20.062786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198444, 37.708588, 19.891434>,  <38.308193, 37.521545, 19.788622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198444, 37.708588, 19.891434>,  <38.015533, 38.020329, 20.062786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198444, 37.708588, 19.891434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054257, 0.456349, -0.888145,
		0.887666, 0.429374, 0.166395,
		0.457280, -0.779348, -0.428382,
		38.335629, 37.474785, 19.762918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568378, 38.229164, 19.797674>,  <38.015533, 38.020329, 20.062786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568378, 38.229164, 19.797674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454941, 37.909882, 19.585094>,  <38.386879, 37.718311, 19.457546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454941, 37.909882, 19.585094>,  <38.568378, 38.229164, 19.797674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454941, 37.909882, 19.585094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144042, 0.512456, -0.846546,
		0.948064, -0.316628, -0.030355,
		-0.283596, -0.798208, -0.531449,
		38.369862, 37.670418, 19.425659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039875, 38.274475, 19.222466>,  <38.568378, 38.229164, 19.797674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039875, 38.274475, 19.222466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731258, 38.046192, 19.110029>,  <38.546089, 37.909222, 19.042566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731258, 38.046192, 19.110029>,  <39.039875, 38.274475, 19.222466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731258, 38.046192, 19.110029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008436, 0.450987, -0.892491,
		0.636121, -0.686224, -0.352770,
		-0.771544, -0.570708, -0.281093,
		38.499794, 37.874981, 19.025702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167686, 38.292233, 18.569023>,  <39.039875, 38.274475, 19.222466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167686, 38.292233, 18.569023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791153, 38.162949, 18.607872>,  <38.565235, 38.085381, 18.631182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791153, 38.162949, 18.607872>,  <39.167686, 38.292233, 18.569023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791153, 38.162949, 18.607872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267352, 0.538535, -0.799064,
		0.205957, -0.778150, -0.593350,
		-0.941331, -0.323206, 0.097125,
		38.508755, 38.065987, 18.637009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987850, 37.983913, 17.960587>,  <39.167686, 38.292233, 18.569023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987850, 37.983913, 17.960587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641075, 38.080639, 18.134918>,  <38.433010, 38.138676, 18.239517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641075, 38.080639, 18.134918>,  <38.987850, 37.983913, 17.960587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641075, 38.080639, 18.134918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271647, 0.503894, -0.819938,
		-0.417886, -0.829226, -0.371155,
		-0.866937, 0.241818, 0.435827,
		38.380993, 38.153183, 18.265667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578098, 37.926384, 17.340721>,  <38.987850, 37.983913, 17.960587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578098, 37.926384, 17.340721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348484, 38.109249, 17.612450>,  <38.210716, 38.218967, 17.775486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348484, 38.109249, 17.612450>,  <38.578098, 37.926384, 17.340721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348484, 38.109249, 17.612450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399719, 0.567606, -0.719756,
		-0.714635, -0.684706, -0.143090,
		-0.574040, 0.457167, 0.679321,
		38.176273, 38.246399, 17.816246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893433, 37.800026, 17.066656>,  <38.578098, 37.926384, 17.340721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893433, 37.800026, 17.066656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904327, 38.109402, 17.319969>,  <37.910862, 38.295029, 17.471956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904327, 38.109402, 17.319969>,  <37.893433, 37.800026, 17.066656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904327, 38.109402, 17.319969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419028, 0.584004, -0.695238,
		-0.907565, -0.246427, 0.339999,
		0.027235, 0.773442, 0.633281,
		37.912498, 38.341434, 17.509954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351562, 38.084301, 16.576471>,  <37.893433, 37.800026, 17.066656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351562, 38.084301, 16.576471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961311, 38.172081, 16.576180>,  <36.727161, 38.224747, 16.576004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961311, 38.172081, 16.576180>,  <37.351562, 38.084301, 16.576471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961311, 38.172081, 16.576180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157702, -0.698804, 0.697713,
		0.152600, 0.680821, 0.716377,
		-0.975625, 0.219445, -0.000730,
		36.668625, 38.237915, 16.575960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193306, 38.082066, 17.234247>,  <37.351562, 38.084301, 16.576471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193306, 38.082066, 17.234247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838081, 37.970356, 17.088173>,  <36.624947, 37.903332, 17.000528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838081, 37.970356, 17.088173>,  <37.193306, 38.082066, 17.234247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838081, 37.970356, 17.088173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172117, -0.534608, 0.827388,
		-0.426298, 0.797622, 0.426695,
		-0.888057, -0.279272, -0.365187,
		36.571663, 37.886574, 16.978617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617821, 38.287605, 17.695488>,  <37.193306, 38.082066, 17.234247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617821, 38.287605, 17.695488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470985, 37.981415, 17.484097>,  <36.382885, 37.797699, 17.357262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470985, 37.981415, 17.484097>,  <36.617821, 38.287605, 17.695488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470985, 37.981415, 17.484097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464810, -0.341175, 0.817038,
		-0.805730, 0.545563, -0.230563,
		-0.367084, -0.765480, -0.528478,
		36.360859, 37.751770, 17.325554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995270, 38.167782, 18.053274>,  <36.617821, 38.287605, 17.695488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995270, 38.167782, 18.053274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072147, 37.825813, 17.860537>,  <36.118275, 37.620632, 17.744894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072147, 37.825813, 17.860537>,  <35.995270, 38.167782, 18.053274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072147, 37.825813, 17.860537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395969, -0.516811, 0.759023,
		-0.897925, 0.044914, -0.437850,
		0.192195, -0.854921, -0.481842,
		36.129807, 37.569336, 17.715984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343693, 37.860512, 18.102814>,  <35.995270, 38.167782, 18.053274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343693, 37.860512, 18.102814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626617, 37.587502, 18.029200>,  <35.796371, 37.423698, 17.985031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626617, 37.587502, 18.029200>,  <35.343693, 37.860512, 18.102814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626617, 37.587502, 18.029200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297492, -0.523570, 0.798356,
		-0.641252, -0.509939, -0.573374,
		0.707315, -0.682522, -0.184037,
		35.838814, 37.382744, 17.973989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005825, 37.163189, 17.994373>,  <35.343693, 37.860512, 18.102814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005825, 37.163189, 17.994373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378670, 37.075920, 18.110003>,  <35.602379, 37.023560, 18.179380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378670, 37.075920, 18.110003>,  <35.005825, 37.163189, 17.994373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378670, 37.075920, 18.110003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361099, -0.498732, 0.787956,
		-0.027743, -0.838849, -0.543658,
		0.932115, -0.218174, 0.289071,
		35.658302, 37.010468, 18.196724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931385, 36.492836, 18.308760>,  <35.005825, 37.163189, 17.994373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931385, 36.492836, 18.308760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295418, 36.604816, 18.430996>,  <35.513836, 36.672005, 18.504337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295418, 36.604816, 18.430996>,  <34.931385, 36.492836, 18.308760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295418, 36.604816, 18.430996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114997, -0.537821, 0.835179,
		0.398163, -0.795220, -0.457266,
		0.910078, 0.279953, 0.305588,
		35.568439, 36.688801, 18.522673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283043, 35.897091, 18.534990>,  <34.931385, 36.492836, 18.308760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283043, 35.897091, 18.534990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455360, 36.203495, 18.725842>,  <35.558750, 36.387337, 18.840353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455360, 36.203495, 18.725842>,  <35.283043, 35.897091, 18.534990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455360, 36.203495, 18.725842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018860, -0.536228, 0.843863,
		0.902255, -0.354529, -0.245448,
		0.430789, 0.766009, 0.477128,
		35.584599, 36.433296, 18.868980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574673, 35.580711, 19.052456>,  <35.283043, 35.897091, 18.534990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574673, 35.580711, 19.052456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635086, 35.958271, 19.169926>,  <35.671333, 36.184807, 19.240408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635086, 35.958271, 19.169926>,  <35.574673, 35.580711, 19.052456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635086, 35.958271, 19.169926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089823, -0.308957, 0.946825,
		0.984440, -0.116620, -0.131445,
		0.151029, 0.943899, 0.293674,
		35.680393, 36.241440, 19.258028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993568, 35.522541, 19.599691>,  <35.574673, 35.580711, 19.052456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993568, 35.522541, 19.599691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883354, 35.906986, 19.607058>,  <35.817226, 36.137653, 19.611477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883354, 35.906986, 19.607058>,  <35.993568, 35.522541, 19.599691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883354, 35.906986, 19.607058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203140, 0.039490, 0.978353,
		0.939581, 0.273314, -0.206122,
		-0.275538, 0.961114, 0.018417,
		35.800694, 36.195320, 19.612583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583145, 35.974693, 19.932589>,  <35.993568, 35.522541, 19.599691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583145, 35.974693, 19.932589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226772, 36.145573, 19.994230>,  <36.012951, 36.248100, 20.031216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226772, 36.145573, 19.994230>,  <36.583145, 35.974693, 19.932589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226772, 36.145573, 19.994230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159661, -0.023033, 0.986903,
		0.425152, 0.903865, -0.047687,
		-0.890929, 0.427197, 0.154105,
		35.959492, 36.273731, 20.040462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734215, 36.488113, 20.330593>,  <36.583145, 35.974693, 19.932589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734215, 36.488113, 20.330593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361820, 36.356800, 20.394453>,  <36.138382, 36.278011, 20.432770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361820, 36.356800, 20.394453>,  <36.734215, 36.488113, 20.330593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361820, 36.356800, 20.394453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279554, -0.359920, 0.890116,
		-0.234745, 0.873322, 0.426854,
		-0.930991, -0.328279, 0.159651,
		36.082523, 36.258316, 20.442348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657837, 36.603382, 21.063108>,  <36.734215, 36.488113, 20.330593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657837, 36.603382, 21.063108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357574, 36.361729, 20.956131>,  <36.177418, 36.216736, 20.891945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357574, 36.361729, 20.956131>,  <36.657837, 36.603382, 21.063108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357574, 36.361729, 20.956131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100015, -0.504038, 0.857871,
		-0.653074, 0.617222, 0.438784,
		-0.750661, -0.604138, -0.267443,
		36.132378, 36.180489, 20.875898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218258, 36.544838, 21.658979>,  <36.657837, 36.603382, 21.063108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218258, 36.544838, 21.658979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156887, 36.219555, 21.434427>,  <36.120064, 36.024384, 21.299696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156887, 36.219555, 21.434427>,  <36.218258, 36.544838, 21.658979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156887, 36.219555, 21.434427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201309, -0.581916, 0.787939,
		-0.967437, 0.007880, 0.252988,
		-0.153426, -0.813211, -0.561381,
		36.110859, 35.975594, 21.266012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628616, 36.173035, 21.944704>,  <36.218258, 36.544838, 21.658979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628616, 36.173035, 21.944704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830482, 35.887955, 21.749825>,  <35.951603, 35.716908, 21.632896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830482, 35.887955, 21.749825>,  <35.628616, 36.173035, 21.944704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830482, 35.887955, 21.749825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051804, -0.588318, 0.806969,
		-0.861757, -0.382014, -0.333826,
		0.504669, -0.712705, -0.487197,
		35.981884, 35.674145, 21.603666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251511, 35.557034, 22.059641>,  <35.628616, 36.173035, 21.944704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251511, 35.557034, 22.059641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591480, 35.400463, 21.918550>,  <35.795464, 35.306522, 21.833897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591480, 35.400463, 21.918550>,  <35.251511, 35.557034, 22.059641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591480, 35.400463, 21.918550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128618, -0.803299, 0.581523,
		-0.510967, -0.448883, -0.733087,
		0.849924, -0.391427, -0.352724,
		35.846458, 35.283035, 21.812733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186378, 34.850243, 21.903608>,  <35.251511, 35.557034, 22.059641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186378, 34.850243, 21.903608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574429, 34.902096, 21.985632>,  <35.807259, 34.933208, 22.034847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574429, 34.902096, 21.985632>,  <35.186378, 34.850243, 21.903608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574429, 34.902096, 21.985632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009700, -0.823852, 0.566721,
		0.242407, -0.551780, -0.797983,
		0.970126, 0.129636, 0.205060,
		35.865467, 34.940987, 22.047150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342533, 34.166603, 22.030003>,  <35.186378, 34.850243, 21.903608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342533, 34.166603, 22.030003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663616, 34.356861, 22.173906>,  <35.856266, 34.471016, 22.260248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663616, 34.356861, 22.173906>,  <35.342533, 34.166603, 22.030003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663616, 34.356861, 22.173906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000457, -0.603733, 0.797186,
		0.596378, -0.639740, -0.484836,
		0.802703, 0.475647, 0.359761,
		35.904427, 34.499554, 22.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879257, 33.696026, 22.189783>,  <35.342533, 34.166603, 22.030003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879257, 33.696026, 22.189783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950241, 34.006905, 22.431269>,  <35.992832, 34.193432, 22.576160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950241, 34.006905, 22.431269>,  <35.879257, 33.696026, 22.189783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950241, 34.006905, 22.431269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049088, -0.619675, 0.783322,
		0.982904, -0.109370, -0.148116,
		0.177456, 0.777201, 0.603712,
		36.003479, 34.240067, 22.612383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629322, 33.567444, 22.567499>,  <35.879257, 33.696026, 22.189783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629322, 33.567444, 22.567499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408192, 33.834003, 22.767616>,  <36.275513, 33.993938, 22.887686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408192, 33.834003, 22.767616>,  <36.629322, 33.567444, 22.567499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408192, 33.834003, 22.767616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170347, -0.497323, 0.850678,
		0.815698, 0.555501, 0.161414,
		-0.552827, 0.666400, 0.500293,
		36.242344, 34.033924, 22.917704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956806, 33.595108, 23.313185>,  <36.629322, 33.567444, 22.567499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956806, 33.595108, 23.313185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612064, 33.789959, 23.369621>,  <36.405220, 33.906872, 23.403484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612064, 33.789959, 23.369621>,  <36.956806, 33.595108, 23.313185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612064, 33.789959, 23.369621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001118, -0.280032, 0.959990,
		0.507152, 0.827215, 0.241892,
		-0.861856, 0.487132, 0.141093,
		36.353508, 33.936100, 23.411949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.390575, 35.534725, 28.773632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005096, 35.549301, 28.667835>,  <38.773808, 35.558044, 28.604357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005096, 35.549301, 28.667835>,  <39.390575, 35.534725, 28.773632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005096, 35.549301, 28.667835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266276, -0.058669, 0.962110,
		0.019540, 0.997612, 0.066242,
		-0.963699, 0.036438, -0.264494,
		38.715988, 35.560234, 28.588488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069347, 36.030014, 29.257032>,  <39.390575, 35.534725, 28.773632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069347, 36.030014, 29.257032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769459, 35.813564, 29.104664>,  <38.589527, 35.683693, 29.013243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769459, 35.813564, 29.104664>,  <39.069347, 36.030014, 29.257032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769459, 35.813564, 29.104664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386214, -0.109629, 0.915871,
		-0.537361, 0.833766, -0.126798,
		-0.749722, -0.541124, -0.380922,
		38.544540, 35.651226, 28.990387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511444, 36.305538, 29.602970>,  <39.069347, 36.030014, 29.257032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511444, 36.305538, 29.602970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405750, 35.933796, 29.499842>,  <38.342335, 35.710751, 29.437965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405750, 35.933796, 29.499842>,  <38.511444, 36.305538, 29.602970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405750, 35.933796, 29.499842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393137, -0.140318, 0.908710,
		-0.880696, 0.341469, -0.328289,
		-0.264231, -0.929360, -0.257822,
		38.326481, 35.654987, 29.422495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963032, 36.106712, 29.963869>,  <38.511444, 36.305538, 29.602970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963032, 36.106712, 29.963869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062927, 35.737549, 29.846651>,  <38.122864, 35.516052, 29.776321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062927, 35.737549, 29.846651>,  <37.963032, 36.106712, 29.963869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062927, 35.737549, 29.846651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380113, -0.371780, 0.846932,
		-0.890586, -0.100124, -0.443657,
		0.249741, -0.922906, -0.293044,
		38.137848, 35.460678, 29.758738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419846, 35.696350, 30.327589>,  <37.963032, 36.106712, 29.963869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419846, 35.696350, 30.327589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.706120, 35.440891, 30.214500>,  <37.877884, 35.287617, 30.146648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.706120, 35.440891, 30.214500>,  <37.419846, 35.696350, 30.327589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706120, 35.440891, 30.214500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285914, -0.637223, 0.715681,
		-0.637223, -0.431366, -0.638647,
		-0.715681, 0.638647, 0.282720,
		37.920822, 35.249298, 30.129684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044514, 35.149437, 30.156502>,  <37.419846, 35.696350, 30.327589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044514, 35.149437, 30.156502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421875, 35.075817, 30.266853>,  <37.648293, 35.031647, 30.333063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421875, 35.075817, 30.266853>,  <37.044514, 35.149437, 30.156502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421875, 35.075817, 30.266853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330121, -0.600583, 0.728231,
		0.031657, -0.778091, -0.627353,
		0.943407, -0.184049, 0.275877,
		37.704899, 35.020603, 30.349617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015717, 34.544605, 30.694710>,  <37.044514, 35.149437, 30.156502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015717, 34.544605, 30.694710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403141, 34.635647, 30.734882>,  <37.635597, 34.690273, 30.758986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403141, 34.635647, 30.734882>,  <37.015717, 34.544605, 30.694710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403141, 34.635647, 30.734882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017544, -0.465181, 0.885041,
		0.248161, -0.855454, -0.454549,
		0.968560, 0.227607, 0.100431,
		37.693710, 34.703930, 30.765011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440796, 33.920868, 30.681494>,  <37.015717, 34.544605, 30.694710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440796, 33.920868, 30.681494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656197, 34.188576, 30.886274>,  <37.785435, 34.349201, 31.009142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656197, 34.188576, 30.886274>,  <37.440796, 33.920868, 30.681494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656197, 34.188576, 30.886274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221668, -0.473649, 0.852362,
		0.812948, -0.572478, -0.106703,
		0.538498, 0.669273, 0.511951,
		37.817745, 34.389359, 31.039860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870655, 33.574924, 31.149460>,  <37.440796, 33.920868, 30.681494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870655, 33.574924, 31.149460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.864262, 33.941181, 31.310135>,  <37.860424, 34.160934, 31.406540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.864262, 33.941181, 31.310135>,  <37.870655, 33.574924, 31.149460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864262, 33.941181, 31.310135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264392, -0.391309, 0.881461,
		0.964283, -0.092114, 0.248342,
		-0.015983, 0.915638, 0.401687,
		37.859467, 34.215874, 31.430641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315865, 33.574379, 31.747931>,  <37.870655, 33.574924, 31.149460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315865, 33.574379, 31.747931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054665, 33.875248, 31.783323>,  <37.897945, 34.055771, 31.804560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054665, 33.875248, 31.783323>,  <38.315865, 33.574379, 31.747931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054665, 33.875248, 31.783323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211227, -0.293067, 0.932467,
		0.727307, 0.590210, 0.350251,
		-0.652999, 0.752173, 0.088481,
		37.858765, 34.100899, 31.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579285, 34.040489, 32.334675>,  <38.315865, 33.574379, 31.747931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579285, 34.040489, 32.334675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195488, 34.142399, 32.286568>,  <37.965210, 34.203545, 32.257702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195488, 34.142399, 32.286568>,  <38.579285, 34.040489, 32.334675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195488, 34.142399, 32.286568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142017, -0.068681, 0.987479,
		0.243325, 0.964558, 0.102082,
		-0.959492, 0.254776, -0.120271,
		37.907642, 34.218830, 32.250484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317307, 34.521999, 32.861893>,  <38.579285, 34.040489, 32.334675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317307, 34.521999, 32.861893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967564, 34.367764, 32.744034>,  <37.757717, 34.275223, 32.673321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967564, 34.367764, 32.744034>,  <38.317307, 34.521999, 32.861893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967564, 34.367764, 32.744034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195273, -0.276278, 0.941031,
		-0.444251, 0.880337, 0.166273,
		-0.874362, -0.385586, -0.294644,
		37.705254, 34.252087, 32.655640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715290, 34.797966, 33.278332>,  <38.317307, 34.521999, 32.861893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715290, 34.797966, 33.278332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613701, 34.435108, 33.144115>,  <37.552746, 34.217392, 33.063587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613701, 34.435108, 33.144115>,  <37.715290, 34.797966, 33.278332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613701, 34.435108, 33.144115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397241, -0.218471, 0.891331,
		-0.881871, 0.359665, -0.304869,
		-0.253975, -0.907145, -0.335537,
		37.537510, 34.162964, 33.043453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090466, 34.707233, 33.546478>,  <37.715290, 34.797966, 33.278332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090466, 34.707233, 33.546478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176487, 34.329552, 33.446690>,  <37.228100, 34.102943, 33.386818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176487, 34.329552, 33.446690>,  <37.090466, 34.707233, 33.546478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176487, 34.329552, 33.446690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381819, -0.316406, 0.868390,
		-0.898870, -0.091496, -0.428558,
		0.215052, -0.944201, -0.249473,
		37.241001, 34.046291, 33.371849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961693, 35.269009, 32.999924>,  <37.090466, 34.707233, 33.546478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961693, 35.269009, 32.999924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854527, 35.647366, 33.073154>,  <36.790226, 35.874378, 33.117092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854527, 35.647366, 33.073154>,  <36.961693, 35.269009, 32.999924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854527, 35.647366, 33.073154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821406, -0.124952, -0.556488,
		-0.503501, -0.299470, 0.810435,
		-0.267917, 0.945888, 0.183073,
		36.774151, 35.931133, 33.128075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293903, 35.241726, 33.072666>,  <36.961693, 35.269009, 32.999924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293903, 35.241726, 33.072666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361031, 35.624207, 32.976738>,  <36.401306, 35.853695, 32.919182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361031, 35.624207, 32.976738>,  <36.293903, 35.241726, 33.072666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361031, 35.624207, 32.976738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725987, -0.044704, -0.686253,
		-0.666918, 0.289275, 0.686688,
		0.167818, 0.956202, -0.239824,
		36.411377, 35.911068, 32.904793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615490, 35.495716, 32.923843>,  <36.293903, 35.241726, 33.072666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615490, 35.495716, 32.923843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852913, 35.778721, 32.770416>,  <35.995365, 35.948524, 32.678360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852913, 35.778721, 32.770416>,  <35.615490, 35.495716, 32.923843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852913, 35.778721, 32.770416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600526, 0.072075, -0.796350,
		-0.535782, 0.703016, 0.467660,
		0.593554, 0.707512, -0.383563,
		36.030979, 35.990974, 32.655346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172264, 36.110508, 32.659451>,  <35.615490, 35.495716, 32.923843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172264, 36.110508, 32.659451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.530052, 36.153622, 32.485870>,  <35.744724, 36.179489, 32.381721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.530052, 36.153622, 32.485870>,  <35.172264, 36.110508, 32.659451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530052, 36.153622, 32.485870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446078, 0.148470, -0.882593,
		-0.030699, 0.983026, 0.180881,
		0.894467, 0.107782, -0.433948,
		35.798393, 36.185955, 32.355686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111259, 36.673473, 32.236599>,  <35.172264, 36.110508, 32.659451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111259, 36.673473, 32.236599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424637, 36.474628, 32.087414>,  <35.612663, 36.355324, 31.997904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424637, 36.474628, 32.087414>,  <35.111259, 36.673473, 32.236599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424637, 36.474628, 32.087414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326961, 0.180655, -0.927610,
		0.528499, 0.848674, -0.021002,
		0.783444, -0.497108, -0.372959,
		35.659672, 36.325497, 31.975527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226284, 36.969078, 31.615683>,  <35.111259, 36.673473, 32.236599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226284, 36.969078, 31.615683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459522, 36.648552, 31.562181>,  <35.599464, 36.456234, 31.530081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459522, 36.648552, 31.562181>,  <35.226284, 36.969078, 31.615683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459522, 36.648552, 31.562181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163315, 0.045660, -0.985517,
		0.795819, 0.596495, -0.104243,
		0.583096, -0.801317, -0.133754,
		35.634453, 36.408157, 31.522055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744061, 37.158775, 30.947741>,  <35.226284, 36.969078, 31.615683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744061, 37.158775, 30.947741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.697628, 36.765060, 31.000952>,  <35.669769, 36.528831, 31.032879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.697628, 36.765060, 31.000952>,  <35.744061, 37.158775, 30.947741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697628, 36.765060, 31.000952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134110, -0.117177, -0.984014,
		0.984144, -0.132064, -0.118401,
		-0.116079, -0.984291, 0.133030,
		35.662804, 36.469772, 31.040861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098846, 36.878120, 30.395105>,  <35.744061, 37.158775, 30.947741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098846, 36.878120, 30.395105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.864853, 36.574436, 30.509228>,  <35.724457, 36.392227, 30.577702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.864853, 36.574436, 30.509228>,  <36.098846, 36.878120, 30.395105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864853, 36.574436, 30.509228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113794, -0.271466, -0.955697,
		0.803024, -0.591531, 0.072409,
		-0.584981, -0.759208, 0.285307,
		35.689358, 36.346672, 30.594820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165276, 36.320927, 29.948519>,  <36.098846, 36.878120, 30.395105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165276, 36.320927, 29.948519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813419, 36.225193, 30.112930>,  <35.602306, 36.167751, 30.211578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813419, 36.225193, 30.112930>,  <36.165276, 36.320927, 29.948519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813419, 36.225193, 30.112930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343981, -0.276714, -0.897277,
		0.328486, -0.930671, 0.161084,
		-0.879644, -0.239333, 0.411030,
		35.549526, 36.153393, 30.236238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037579, 35.578316, 29.749693>,  <36.165276, 36.320927, 29.948519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037579, 35.578316, 29.749693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705452, 35.786377, 29.829706>,  <35.506176, 35.911213, 29.877714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705452, 35.786377, 29.829706>,  <36.037579, 35.578316, 29.749693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705452, 35.786377, 29.829706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334753, -0.178549, -0.925236,
		-0.445548, -0.835201, 0.322375,
		-0.830318, 0.520153, 0.200034,
		35.456356, 35.942425, 29.889717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498833, 35.136909, 29.450954>,  <36.037579, 35.578316, 29.749693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498833, 35.136909, 29.450954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.332870, 35.498558, 29.491785>,  <35.233292, 35.715546, 29.516283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.332870, 35.498558, 29.491785>,  <35.498833, 35.136909, 29.450954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332870, 35.498558, 29.491785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362312, -0.061264, -0.930041,
		-0.834615, -0.422865, 0.352992,
		-0.414908, 0.904119, 0.102077,
		35.208397, 35.769794, 29.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829887, 35.041225, 29.001368>,  <35.498833, 35.136909, 29.450954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829887, 35.041225, 29.001368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.884304, 35.435081, 29.045160>,  <34.916954, 35.671394, 29.071436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.884304, 35.435081, 29.045160>,  <34.829887, 35.041225, 29.001368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884304, 35.435081, 29.045160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361264, 0.152201, -0.919958,
		-0.922487, 0.085598, 0.376419,
		0.136038, 0.984636, 0.109480,
		34.925114, 35.730473, 29.078005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247150, 35.366543, 28.863596>,  <34.829887, 35.041225, 29.001368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247150, 35.366543, 28.863596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514141, 35.659081, 28.807581>,  <34.674335, 35.834602, 28.773972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514141, 35.659081, 28.807581>,  <34.247150, 35.366543, 28.863596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514141, 35.659081, 28.807581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406012, 0.199804, -0.891758,
		-0.624202, 0.652084, 0.430299,
		0.667477, 0.731344, -0.140036,
		34.714386, 35.878483, 28.765570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808262, 36.072575, 28.639311>,  <34.247150, 35.366543, 28.863596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808262, 36.072575, 28.639311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184547, 36.089111, 28.504637>,  <34.410316, 36.099033, 28.423832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184547, 36.089111, 28.504637>,  <33.808262, 36.072575, 28.639311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184547, 36.089111, 28.504637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325403, 0.390309, -0.861262,
		0.095805, 0.919756, 0.380620,
		0.940709, 0.041341, -0.336685,
		34.466759, 36.101513, 28.403631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459610, 36.745953, 28.786240>,  <33.808262, 36.072575, 28.639311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459610, 36.745953, 28.786240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.123341, 36.962517, 28.781509>,  <32.921577, 37.092457, 28.778671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.123341, 36.962517, 28.781509>,  <33.459610, 36.745953, 28.786240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123341, 36.962517, 28.781509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245724, -0.361900, 0.899249,
		0.482586, 0.758880, 0.437278,
		-0.840673, 0.541414, -0.011827,
		32.871140, 37.124943, 28.777962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400032, 37.224018, 29.417072>,  <33.459610, 36.745953, 28.786240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400032, 37.224018, 29.417072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034618, 37.122204, 29.290165>,  <32.815369, 37.061115, 29.214020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034618, 37.122204, 29.290165>,  <33.400032, 37.224018, 29.417072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034618, 37.122204, 29.290165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255443, -0.247993, 0.934478,
		-0.316538, 0.934725, 0.161532,
		-0.913539, -0.254535, -0.317268,
		32.760555, 37.045845, 29.194984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890831, 37.564960, 29.936197>,  <33.400032, 37.224018, 29.417072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890831, 37.564960, 29.936197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.703777, 37.283283, 29.722492>,  <32.591545, 37.114277, 29.594269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.703777, 37.283283, 29.722492>,  <32.890831, 37.564960, 29.936197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703777, 37.283283, 29.722492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310410, -0.435099, 0.845183,
		-0.827627, 0.561075, -0.015121,
		-0.467632, -0.704190, -0.534263,
		32.563488, 37.072025, 29.562214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162899, 37.465157, 30.323269>,  <32.890831, 37.564960, 29.936197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162899, 37.465157, 30.323269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.214169, 37.134094, 30.104710>,  <32.244930, 36.935455, 29.973574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.214169, 37.134094, 30.104710>,  <32.162899, 37.465157, 30.323269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214169, 37.134094, 30.104710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312573, -0.556576, 0.769754,
		-0.941207, 0.072128, -0.330042,
		0.128172, -0.827659, -0.546399,
		32.252621, 36.885796, 29.940790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541214, 36.977901, 30.437243>,  <32.162899, 37.465157, 30.323269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541214, 36.977901, 30.437243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.856262, 36.764610, 30.313749>,  <32.045292, 36.636635, 30.239655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.856262, 36.764610, 30.313749>,  <31.541214, 36.977901, 30.437243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856262, 36.764610, 30.313749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213152, -0.705920, 0.675458,
		-0.578114, -0.466200, -0.669658,
		0.787623, -0.533231, -0.308731,
		32.092548, 36.604641, 30.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235285, 36.256939, 30.450705>,  <31.541214, 36.977901, 30.437243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235285, 36.256939, 30.450705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.633457, 36.220913, 30.463398>,  <31.872360, 36.199299, 30.471014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.633457, 36.220913, 30.463398>,  <31.235285, 36.256939, 30.450705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633457, 36.220913, 30.463398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076629, -0.555107, 0.828242,
		-0.056979, -0.826889, -0.559471,
		0.995430, -0.090064, 0.031734,
		31.932087, 36.193893, 30.472918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402578, 35.517231, 30.531584>,  <31.235285, 36.256939, 30.450705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402578, 35.517231, 30.531584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.733740, 35.705994, 30.652828>,  <31.932436, 35.819252, 30.725574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.733740, 35.705994, 30.652828>,  <31.402578, 35.517231, 30.531584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733740, 35.705994, 30.652828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033966, -0.581622, 0.812750,
		0.559841, -0.662583, -0.497556,
		0.827903, 0.471911, 0.303111,
		31.982111, 35.847569, 30.743761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813002, 34.980774, 30.787479>,  <31.402578, 35.517231, 30.531584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813002, 34.980774, 30.787479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.967684, 35.318951, 30.934824>,  <32.060493, 35.521854, 31.023232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.967684, 35.318951, 30.934824>,  <31.813002, 34.980774, 30.787479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967684, 35.318951, 30.934824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030503, -0.387491, 0.921369,
		0.921698, -0.367536, -0.124057,
		0.386707, 0.845440, 0.368361,
		32.083694, 35.572582, 31.045332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363190, 34.811295, 31.224861>,  <31.813002, 34.980774, 30.787479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363190, 34.811295, 31.224861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.249878, 35.175758, 31.344555>,  <32.181892, 35.394436, 31.416370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.249878, 35.175758, 31.344555>,  <32.363190, 34.811295, 31.224861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249878, 35.175758, 31.344555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029656, -0.320188, 0.946890,
		0.958580, 0.259357, 0.117723,
		-0.283276, 0.911161, 0.299234,
		32.164894, 35.449108, 31.434324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790051, 34.888210, 31.818567>,  <32.363190, 34.811295, 31.224861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790051, 34.888210, 31.818567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472572, 35.131031, 31.834293>,  <32.282085, 35.276722, 31.843729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472572, 35.131031, 31.834293>,  <32.790051, 34.888210, 31.818567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472572, 35.131031, 31.834293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064851, -0.148698, 0.986754,
		0.604854, 0.780628, 0.157388,
		-0.793691, 0.607049, 0.039316,
		32.234467, 35.313145, 31.846088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846680, 35.327896, 32.441299>,  <32.790051, 34.888210, 31.818567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846680, 35.327896, 32.441299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.460529, 35.350140, 32.339359>,  <32.228840, 35.363487, 32.278194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.460529, 35.350140, 32.339359>,  <32.846680, 35.327896, 32.441299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460529, 35.350140, 32.339359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255284, -0.402173, 0.879254,
		-0.053599, 0.913873, 0.402446,
		-0.965379, 0.055611, -0.254853,
		32.170914, 35.366821, 32.262905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563953, 35.215233, 33.087311>,  <32.846680, 35.327896, 32.441299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563953, 35.215233, 33.087311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.254395, 35.186680, 32.835602>,  <32.068657, 35.169548, 32.684578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.254395, 35.186680, 32.835602>,  <32.563953, 35.215233, 33.087311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254395, 35.186680, 32.835602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567207, -0.363853, 0.738842,
		-0.281703, 0.928717, 0.241097,
		-0.773899, -0.071382, -0.629273,
		32.022224, 35.165264, 32.646820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.132099, 38.460091, 25.190691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754730, 38.328136, 25.204113>,  <32.528309, 38.248966, 25.212166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754730, 38.328136, 25.204113>,  <33.132099, 38.460091, 25.190691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754730, 38.328136, 25.204113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042227, -0.019153, 0.998924,
		-0.328883, 0.943828, 0.031999,
		-0.943426, -0.329881, 0.033556,
		32.471703, 38.229172, 25.214180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787907, 38.873737, 25.765989>,  <33.132099, 38.460091, 25.190691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787907, 38.873737, 25.765989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559643, 38.553619, 25.692369>,  <32.422684, 38.361549, 25.648197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559643, 38.553619, 25.692369>,  <32.787907, 38.873737, 25.765989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559643, 38.553619, 25.692369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158483, -0.112580, 0.980922,
		-0.805751, 0.588938, -0.062590,
		-0.570657, -0.800298, -0.184048,
		32.388447, 38.313530, 25.637156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242229, 38.954666, 26.262550>,  <32.787907, 38.873737, 25.765989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242229, 38.954666, 26.262550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244205, 38.564659, 26.173723>,  <32.245392, 38.330654, 26.120426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244205, 38.564659, 26.173723>,  <32.242229, 38.954666, 26.262550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244205, 38.564659, 26.173723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034548, -0.222105, 0.974411,
		-0.999391, 0.002858, -0.034782,
		0.004941, -0.975019, -0.222068,
		32.245689, 38.272152, 26.107103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741606, 38.611340, 26.712593>,  <32.242229, 38.954666, 26.262550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741606, 38.611340, 26.712593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960032, 38.298569, 26.592323>,  <32.091087, 38.110909, 26.520161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960032, 38.298569, 26.592323>,  <31.741606, 38.611340, 26.712593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960032, 38.298569, 26.592323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053581, -0.325579, 0.943995,
		-0.836027, -0.531594, -0.135891,
		0.546065, -0.781925, -0.300676,
		32.123852, 38.063992, 26.502121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587666, 38.144722, 27.173065>,  <31.741606, 38.611340, 26.712593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587666, 38.144722, 27.173065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925667, 38.014812, 27.003128>,  <32.128468, 37.936867, 26.901165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925667, 38.014812, 27.003128>,  <31.587666, 38.144722, 27.173065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925667, 38.014812, 27.003128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184323, -0.568880, 0.801499,
		-0.501993, -0.755576, -0.420841,
		0.845002, -0.324776, -0.424844,
		32.179169, 37.917381, 26.875675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539406, 37.357613, 27.150768>,  <31.587666, 38.144722, 27.173065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539406, 37.357613, 27.150768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923832, 37.468105, 27.147869>,  <32.154488, 37.534401, 27.146130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923832, 37.468105, 27.147869>,  <31.539406, 37.357613, 27.150768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923832, 37.468105, 27.147869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157624, -0.526495, 0.835438,
		0.226956, -0.804053, -0.549536,
		0.961065, 0.276228, -0.007247,
		32.212151, 37.550972, 27.145695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793522, 36.793751, 27.503397>,  <31.539406, 37.357613, 27.150768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793522, 36.793751, 27.503397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094475, 37.057178, 27.509115>,  <32.275047, 37.215237, 27.512547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094475, 37.057178, 27.509115>,  <31.793522, 36.793751, 27.503397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094475, 37.057178, 27.509115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267213, -0.324969, 0.907189,
		0.602093, -0.678735, -0.420480,
		0.752384, 0.658570, 0.014295,
		32.320190, 37.254749, 27.513403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509590, 36.457466, 27.548874>,  <31.793522, 36.793751, 27.503397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509590, 36.457466, 27.548874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510426, 36.827225, 27.701448>,  <32.510925, 37.049080, 27.792994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510426, 36.827225, 27.701448>,  <32.509590, 36.457466, 27.548874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510426, 36.827225, 27.701448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113280, -0.379199, 0.918355,
		0.993561, 0.041291, -0.105508,
		0.002089, 0.924393, 0.381435,
		32.511051, 37.104542, 27.815880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107868, 36.536026, 28.037462>,  <32.509590, 36.457466, 27.548874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107868, 36.536026, 28.037462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839619, 36.804256, 28.164331>,  <32.678669, 36.965195, 28.240452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839619, 36.804256, 28.164331>,  <33.107868, 36.536026, 28.037462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839619, 36.804256, 28.164331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157154, -0.289432, 0.944210,
		0.724961, 0.683053, 0.088716,
		-0.670622, 0.670573, 0.317171,
		32.638432, 37.005428, 28.259483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815498, 36.643810, 28.075043>,  <33.107868, 36.536026, 28.037462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815498, 36.643810, 28.075043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167564, 36.465370, 28.010164>,  <34.378803, 36.358307, 27.971237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167564, 36.465370, 28.010164>,  <33.815498, 36.643810, 28.075043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167564, 36.465370, 28.010164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018422, 0.373551, -0.927427,
		0.474316, 0.813298, 0.337004,
		0.880162, -0.446102, -0.162199,
		34.431614, 36.331539, 27.961504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283428, 37.179070, 27.799963>,  <33.815498, 36.643810, 28.075043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283428, 37.179070, 27.799963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426888, 36.825146, 27.680971>,  <34.512962, 36.612793, 27.609577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426888, 36.825146, 27.680971>,  <34.283428, 37.179070, 27.799963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426888, 36.825146, 27.680971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068347, 0.342713, -0.936951,
		0.930969, 0.315700, 0.183386,
		0.358644, -0.884806, -0.297478,
		34.534481, 36.559704, 27.591728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934536, 37.325611, 27.426611>,  <34.283428, 37.179070, 27.799963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934536, 37.325611, 27.426611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845482, 36.953205, 27.310926>,  <34.792049, 36.729763, 27.241516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845482, 36.953205, 27.310926>,  <34.934536, 37.325611, 27.426611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845482, 36.953205, 27.310926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210005, 0.243895, -0.946791,
		0.952015, -0.271524, 0.141219,
		-0.222633, -0.931016, -0.289213,
		34.778690, 36.673901, 27.224163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542126, 37.049427, 27.156290>,  <34.934536, 37.325611, 27.426611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542126, 37.049427, 27.156290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217270, 36.865826, 27.012213>,  <35.022354, 36.755665, 26.925766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217270, 36.865826, 27.012213>,  <35.542126, 37.049427, 27.156290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217270, 36.865826, 27.012213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264707, 0.260287, -0.928537,
		0.519954, -0.849451, -0.089889,
		-0.812144, -0.459002, -0.360193,
		34.973625, 36.728127, 26.904156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766594, 36.765934, 26.515835>,  <35.542126, 37.049427, 27.156290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766594, 36.765934, 26.515835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368511, 36.743786, 26.483589>,  <35.129662, 36.730499, 26.464241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368511, 36.743786, 26.483589>,  <35.766594, 36.765934, 26.515835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368511, 36.743786, 26.483589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059343, 0.313314, -0.947794,
		0.077733, -0.948034, -0.308526,
		-0.995207, -0.055366, -0.080614,
		35.069950, 36.727177, 26.459404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658955, 36.339256, 25.906069>,  <35.766594, 36.765934, 26.515835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658955, 36.339256, 25.906069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317390, 36.540771, 25.958271>,  <35.112453, 36.661682, 25.989594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317390, 36.540771, 25.958271>,  <35.658955, 36.339256, 25.906069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317390, 36.540771, 25.958271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075589, 0.368176, -0.926678,
		-0.514902, -0.781435, -0.352470,
		-0.853910, 0.503792, 0.130507,
		35.061218, 36.691910, 25.997423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225945, 36.167564, 25.398081>,  <35.658955, 36.339256, 25.906069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225945, 36.167564, 25.398081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075390, 36.516190, 25.523752>,  <34.985058, 36.725365, 25.599155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075390, 36.516190, 25.523752>,  <35.225945, 36.167564, 25.398081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075390, 36.516190, 25.523752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015185, 0.344875, -0.938526,
		-0.926339, -0.348475, -0.143040,
		-0.376384, 0.871565, 0.314180,
		34.962475, 36.777660, 25.618006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851768, 36.411518, 24.833824>,  <35.225945, 36.167564, 25.398081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851768, 36.411518, 24.833824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873238, 36.729282, 25.075829>,  <34.886120, 36.919941, 25.221031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873238, 36.729282, 25.075829>,  <34.851768, 36.411518, 24.833824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873238, 36.729282, 25.075829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040460, 0.607115, -0.793583,
		-0.997739, 0.018116, 0.064728,
		0.053674, 0.794408, 0.605009,
		34.889339, 36.967606, 25.257332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528618, 36.882519, 24.440920>,  <34.851768, 36.411518, 24.833824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528618, 36.882519, 24.440920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709023, 37.106133, 24.719221>,  <34.817265, 37.240299, 24.886202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709023, 37.106133, 24.719221>,  <34.528618, 36.882519, 24.440920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709023, 37.106133, 24.719221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130743, 0.729746, -0.671101,
		-0.882890, 0.393639, 0.256034,
		0.451012, 0.559034, 0.695751,
		34.844326, 37.273842, 24.927946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144054, 37.473614, 24.417330>,  <34.528618, 36.882519, 24.440920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144054, 37.473614, 24.417330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512741, 37.540592, 24.557270>,  <34.733952, 37.580780, 24.641235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512741, 37.540592, 24.557270>,  <34.144054, 37.473614, 24.417330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512741, 37.540592, 24.557270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099243, 0.770160, -0.630083,
		-0.374949, 0.615479, 0.693252,
		0.921718, 0.167449, 0.349853,
		34.789257, 37.590828, 24.662226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145523, 38.136101, 24.527813>,  <34.144054, 37.473614, 24.417330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145523, 38.136101, 24.527813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534523, 38.050659, 24.490700>,  <34.767925, 37.999393, 24.468431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534523, 38.050659, 24.490700>,  <34.145523, 38.136101, 24.527813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534523, 38.050659, 24.490700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080881, 0.683383, -0.725566,
		0.218392, 0.698111, 0.681869,
		0.972503, -0.213608, -0.092781,
		34.826275, 37.986576, 24.462866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442738, 38.769997, 24.390682>,  <34.145523, 38.136101, 24.527813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442738, 38.769997, 24.390682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701256, 38.500027, 24.248260>,  <34.856365, 38.338043, 24.162807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701256, 38.500027, 24.248260>,  <34.442738, 38.769997, 24.390682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701256, 38.500027, 24.248260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171058, 0.582861, -0.794363,
		0.743668, 0.452486, 0.492152,
		0.646294, -0.674929, -0.356054,
		34.895145, 38.297546, 24.141445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018021, 39.124710, 24.132339>,  <34.442738, 38.769997, 24.390682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018021, 39.124710, 24.132339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120300, 38.787636, 23.942818>,  <35.181667, 38.585392, 23.829105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120300, 38.787636, 23.942818>,  <35.018021, 39.124710, 24.132339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120300, 38.787636, 23.942818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514085, 0.533583, -0.671570,
		0.818739, -0.071853, 0.569652,
		0.255702, -0.842690, -0.473804,
		35.197010, 38.534828, 23.800676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734901, 39.129082, 23.866493>,  <35.018021, 39.124710, 24.132339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734901, 39.129082, 23.866493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566742, 38.852779, 23.631165>,  <35.465847, 38.686996, 23.489967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566742, 38.852779, 23.631165>,  <35.734901, 39.129082, 23.866493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566742, 38.852779, 23.631165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370469, 0.461218, -0.806245,
		0.828262, -0.556899, 0.062008,
		-0.420398, -0.690755, -0.588323,
		35.440624, 38.645554, 23.454668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.331085, 34.025417, 21.571161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.173866, 34.354439, 21.735559>,  <33.079533, 34.551853, 21.834198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.173866, 34.354439, 21.735559>,  <33.331085, 34.025417, 21.571161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173866, 34.354439, 21.735559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160124, -0.378913, 0.911474,
		0.905468, 0.424065, 0.017221,
		-0.393050, 0.822553, 0.410997,
		33.055950, 34.601204, 21.858858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822102, 34.203503, 22.158894>,  <33.331085, 34.025417, 21.571161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822102, 34.203503, 22.158894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456417, 34.351933, 22.224026>,  <33.237007, 34.440990, 22.263105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456417, 34.351933, 22.224026>,  <33.822102, 34.203503, 22.158894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456417, 34.351933, 22.224026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036025, -0.325808, 0.944749,
		0.403625, 0.869570, 0.284491,
		-0.914215, 0.371075, 0.162830,
		33.182152, 34.463257, 22.272875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869900, 34.529701, 22.779976>,  <33.822102, 34.203503, 22.158894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869900, 34.529701, 22.779976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480949, 34.461395, 22.716331>,  <33.247578, 34.420410, 22.678144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480949, 34.461395, 22.716331>,  <33.869900, 34.529701, 22.779976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480949, 34.461395, 22.716331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103856, -0.293931, 0.950168,
		-0.209024, 0.940449, 0.268077,
		-0.972380, -0.170766, -0.159110,
		33.189236, 34.410164, 22.668598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468449, 34.935081, 23.285437>,  <33.869900, 34.529701, 22.779976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468449, 34.935081, 23.285437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.210285, 34.643314, 23.194754>,  <33.055389, 34.468254, 23.140343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.210285, 34.643314, 23.194754>,  <33.468449, 34.935081, 23.285437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210285, 34.643314, 23.194754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035125, -0.268146, 0.962738,
		-0.763034, 0.629318, 0.147442,
		-0.645404, -0.729422, -0.226709,
		33.016663, 34.424488, 23.126741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065739, 34.937180, 23.860538>,  <33.468449, 34.935081, 23.285437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065739, 34.937180, 23.860538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.965740, 34.597343, 23.674767>,  <32.905743, 34.393440, 23.563303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.965740, 34.597343, 23.674767>,  <33.065739, 34.937180, 23.860538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965740, 34.597343, 23.674767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100323, -0.454348, 0.885157,
		-0.963036, 0.267876, 0.028350,
		-0.249993, -0.849594, -0.464427,
		32.890743, 34.342464, 23.535439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511166, 34.621353, 24.298244>,  <33.065739, 34.937180, 23.860538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511166, 34.621353, 24.298244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.709732, 34.356182, 24.074066>,  <32.828873, 34.197079, 23.939560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.709732, 34.356182, 24.074066>,  <32.511166, 34.621353, 24.298244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709732, 34.356182, 24.074066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036048, -0.629312, 0.776316,
		-0.867338, -0.405576, -0.288502,
		0.496413, -0.662929, -0.560446,
		32.858658, 34.157303, 23.905931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073761, 34.078815, 24.411039>,  <32.511166, 34.621353, 24.298244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073761, 34.078815, 24.411039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.437950, 33.959087, 24.296885>,  <32.656464, 33.887249, 24.228392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.437950, 33.959087, 24.296885>,  <32.073761, 34.078815, 24.411039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437950, 33.959087, 24.296885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030628, -0.639359, 0.768298,
		-0.412432, -0.708256, -0.572951,
		0.910473, -0.299322, -0.285384,
		32.711094, 33.869289, 24.211269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138809, 33.385651, 24.537994>,  <32.073761, 34.078815, 24.411039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138809, 33.385651, 24.537994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528145, 33.473846, 24.512691>,  <32.761745, 33.526764, 24.497511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528145, 33.473846, 24.512691>,  <32.138809, 33.385651, 24.537994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528145, 33.473846, 24.512691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191918, -0.631754, 0.751036,
		0.125632, -0.743150, -0.657225,
		0.973337, 0.220487, -0.063255,
		32.820145, 33.539993, 24.493715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482738, 32.740398, 24.460705>,  <32.138809, 33.385651, 24.537994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482738, 32.740398, 24.460705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728378, 33.002125, 24.637228>,  <32.875763, 33.159161, 24.743141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728378, 33.002125, 24.637228>,  <32.482738, 32.740398, 24.460705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728378, 33.002125, 24.637228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313731, -0.715469, 0.624241,
		0.724195, -0.244892, -0.644647,
		0.614096, 0.654318, 0.441309,
		32.912605, 33.198421, 24.769621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908051, 32.340744, 24.810579>,  <32.482738, 32.740398, 24.460705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908051, 32.340744, 24.810579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010754, 32.664188, 25.022322>,  <33.072376, 32.858257, 25.149366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010754, 32.664188, 25.022322>,  <32.908051, 32.340744, 24.810579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010754, 32.664188, 25.022322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033646, -0.554864, 0.831260,
		0.965889, -0.195626, -0.169675,
		0.256762, 0.808614, 0.529355,
		33.087784, 32.906773, 25.181128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333675, 32.125172, 25.290499>,  <32.908051, 32.340744, 24.810579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333675, 32.125172, 25.290499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247280, 32.485344, 25.441538>,  <33.195442, 32.701447, 25.532162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247280, 32.485344, 25.441538>,  <33.333675, 32.125172, 25.290499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247280, 32.485344, 25.441538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136222, -0.410734, 0.901522,
		0.966847, 0.143281, 0.211372,
		-0.215989, 0.900427, 0.377599,
		33.182484, 32.755470, 25.554817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578918, 32.045189, 26.014902>,  <33.333675, 32.125172, 25.290499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578918, 32.045189, 26.014902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.340786, 32.365871, 26.036251>,  <33.197906, 32.558281, 26.049061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.340786, 32.365871, 26.036251>,  <33.578918, 32.045189, 26.014902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340786, 32.365871, 26.036251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069780, -0.117762, 0.990587,
		0.800442, 0.586007, 0.126050,
		-0.595335, 0.801703, 0.053370,
		33.162186, 32.606380, 26.052261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784698, 32.262001, 26.709879>,  <33.578918, 32.045189, 26.014902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784698, 32.262001, 26.709879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.453880, 32.469719, 26.623783>,  <33.255390, 32.594349, 26.572124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.453880, 32.469719, 26.623783>,  <33.784698, 32.262001, 26.709879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453880, 32.469719, 26.623783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138397, 0.183015, 0.973320,
		0.544829, 0.834771, -0.079494,
		-0.827048, 0.519291, -0.215242,
		33.205765, 32.625507, 26.559210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804077, 32.962559, 26.964787>,  <33.784698, 32.262001, 26.709879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804077, 32.962559, 26.964787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416721, 32.863792, 26.950647>,  <33.184307, 32.804531, 26.942163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416721, 32.863792, 26.950647>,  <33.804077, 32.962559, 26.964787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416721, 32.863792, 26.950647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114362, 0.313576, 0.942651,
		-0.221670, 0.916899, -0.331903,
		-0.968392, -0.246915, -0.035348,
		33.126205, 32.789719, 26.940042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262493, 33.562077, 27.088945>,  <33.804077, 32.962559, 26.964787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262493, 33.562077, 27.088945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593647, 33.346157, 27.149912>,  <34.792339, 33.216606, 27.186491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593647, 33.346157, 27.149912>,  <34.262493, 33.562077, 27.088945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593647, 33.346157, 27.149912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299682, 0.195985, -0.933692,
		0.474130, 0.818665, 0.324019,
		0.827884, -0.539794, 0.152416,
		34.842010, 33.184219, 27.195637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804596, 33.890259, 26.734423>,  <34.262493, 33.562077, 27.088945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804596, 33.890259, 26.734423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950523, 33.518768, 26.760855>,  <35.038082, 33.295872, 26.776714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950523, 33.518768, 26.760855>,  <34.804596, 33.890259, 26.734423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950523, 33.518768, 26.760855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456714, 0.116656, -0.881932,
		0.811368, 0.351927, 0.466723,
		0.364822, -0.928730, 0.066079,
		35.059971, 33.240150, 26.780678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625568, 33.878262, 26.714468>,  <34.804596, 33.890259, 26.734423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625568, 33.878262, 26.714468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472485, 33.543663, 26.557598>,  <35.380634, 33.342903, 26.463476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472485, 33.543663, 26.557598>,  <35.625568, 33.878262, 26.714468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472485, 33.543663, 26.557598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482536, 0.181002, -0.856970,
		0.787839, -0.517209, 0.334371,
		-0.382711, -0.836500, -0.392172,
		35.357670, 33.292713, 26.439947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079651, 33.767990, 26.231739>,  <35.625568, 33.878262, 26.714468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079651, 33.767990, 26.231739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808163, 33.493393, 26.127377>,  <35.645271, 33.328636, 26.064760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808163, 33.493393, 26.127377>,  <36.079651, 33.767990, 26.231739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808163, 33.493393, 26.127377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250101, 0.117967, -0.961006,
		0.690502, -0.717504, 0.091626,
		-0.678717, -0.686492, -0.260905,
		35.604549, 33.287445, 26.049105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440411, 33.227695, 25.861778>,  <36.079651, 33.767990, 26.231739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440411, 33.227695, 25.861778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.063251, 33.190907, 25.733727>,  <35.836956, 33.168831, 25.656895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.063251, 33.190907, 25.733727>,  <36.440411, 33.227695, 25.861778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063251, 33.190907, 25.733727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316407, 0.052955, -0.947144,
		0.104070, -0.994352, -0.020828,
		-0.942898, -0.091979, -0.320131,
		35.780380, 33.163315, 25.637688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448044, 32.705452, 25.323317>,  <36.440411, 33.227695, 25.861778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448044, 32.705452, 25.323317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132347, 32.945110, 25.269472>,  <35.942928, 33.088905, 25.237165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132347, 32.945110, 25.269472>,  <36.448044, 32.705452, 25.323317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132347, 32.945110, 25.269472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216396, 0.066208, -0.974058,
		-0.574691, -0.797898, -0.181907,
		-0.789243, 0.599146, -0.134612,
		35.895573, 33.124855, 25.229088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125389, 32.525810, 24.715345>,  <36.448044, 32.705452, 25.323317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125389, 32.525810, 24.715345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943398, 32.879581, 24.756874>,  <35.834202, 33.091843, 24.781792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943398, 32.879581, 24.756874>,  <36.125389, 32.525810, 24.715345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943398, 32.879581, 24.756874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165941, 0.198753, -0.965899,
		-0.874905, -0.422235, -0.237192,
		-0.454978, 0.884429, 0.103824,
		35.806904, 33.144909, 24.788021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944675, 32.610435, 24.063250>,  <36.125389, 32.525810, 24.715345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944675, 32.610435, 24.063250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901218, 32.972614, 24.227377>,  <35.875145, 33.189922, 24.325853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901218, 32.972614, 24.227377>,  <35.944675, 32.610435, 24.063250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901218, 32.972614, 24.227377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088992, 0.402247, -0.911196,
		-0.990090, -0.135509, 0.036877,
		-0.108642, 0.905447, 0.410320,
		35.868626, 33.244247, 24.350473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391994, 32.973724, 23.671495>,  <35.944675, 32.610435, 24.063250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391994, 32.973724, 23.671495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611263, 33.252739, 23.856081>,  <35.742825, 33.420147, 23.966833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611263, 33.252739, 23.856081>,  <35.391994, 32.973724, 23.671495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611263, 33.252739, 23.856081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081252, 0.593557, -0.800680,
		-0.832408, 0.401417, 0.382048,
		0.548174, 0.697535, 0.461466,
		35.775715, 33.461998, 23.994520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055756, 33.648041, 23.513453>,  <35.391994, 32.973724, 23.671495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055756, 33.648041, 23.513453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428970, 33.717503, 23.639486>,  <35.652901, 33.759182, 23.715107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428970, 33.717503, 23.639486>,  <35.055756, 33.648041, 23.513453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428970, 33.717503, 23.639486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106560, 0.703101, -0.703060,
		-0.343627, 0.689559, 0.637517,
		0.933041, 0.173656, 0.315084,
		35.708881, 33.769600, 23.734011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109219, 34.385143, 23.518326>,  <35.055756, 33.648041, 23.513453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109219, 34.385143, 23.518326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487259, 34.255913, 23.498709>,  <35.714085, 34.178375, 23.486938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487259, 34.255913, 23.498709>,  <35.109219, 34.385143, 23.518326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487259, 34.255913, 23.498709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217627, 0.734248, -0.643054,
		0.243761, 0.597079, 0.764249,
		0.945103, -0.323073, -0.049040,
		35.770790, 34.158993, 23.483997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586807, 34.914192, 23.639116>,  <35.109219, 34.385143, 23.518326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586807, 34.914192, 23.639116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767845, 34.653900, 23.395247>,  <35.876469, 34.497723, 23.248924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767845, 34.653900, 23.395247>,  <35.586807, 34.914192, 23.639116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767845, 34.653900, 23.395247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163134, 0.732595, -0.660827,
		0.876664, 0.199631, 0.437729,
		0.452600, -0.650732, -0.609673,
		35.903625, 34.458679, 23.212345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170490, 35.287338, 23.350531>,  <35.586807, 34.914192, 23.639116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170490, 35.287338, 23.350531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099247, 34.977322, 23.108015>,  <36.056499, 34.791309, 22.962505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099247, 34.977322, 23.108015>,  <36.170490, 35.287338, 23.350531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099247, 34.977322, 23.108015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330132, 0.533363, -0.778805,
		0.926979, -0.338866, 0.160871,
		-0.178107, -0.775045, -0.606287,
		36.045815, 34.744808, 22.926128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796959, 35.195671, 22.832716>,  <36.170490, 35.287338, 23.350531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796959, 35.195671, 22.832716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482845, 35.016514, 22.661736>,  <36.294376, 34.909019, 22.559147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482845, 35.016514, 22.661736>,  <36.796959, 35.195671, 22.832716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482845, 35.016514, 22.661736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239251, 0.417242, -0.876737,
		0.571040, -0.790756, -0.220493,
		-0.785284, -0.447899, -0.427451,
		36.247261, 34.882145, 22.533501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458271, 35.036373, 22.841394>,  <36.796959, 35.195671, 22.832716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458271, 35.036373, 22.841394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.770477, 35.286427, 22.842117>,  <37.957802, 35.436459, 22.842550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.770477, 35.286427, 22.842117>,  <37.458271, 35.036373, 22.841394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770477, 35.286427, 22.842117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158285, -0.200422, 0.966839,
		0.604769, -0.754344, -0.255382,
		0.780513, 0.625137, 0.001807,
		38.004631, 35.473969, 22.842659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035580, 34.724380, 23.199753>,  <37.458271, 35.036373, 22.841394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035580, 34.724380, 23.199753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074287, 35.121643, 23.225895>,  <38.097511, 35.360001, 23.241581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074287, 35.121643, 23.225895>,  <38.035580, 34.724380, 23.199753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074287, 35.121643, 23.225895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000591, -0.065606, 0.997846,
		0.995307, -0.096595, -0.005762,
		0.096765, 0.993159, 0.065355,
		38.103317, 35.419590, 23.245501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564911, 34.952072, 23.578491>,  <38.035580, 34.724380, 23.199753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564911, 34.952072, 23.578491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385185, 35.309380, 23.584063>,  <38.277351, 35.523766, 23.587404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385185, 35.309380, 23.584063>,  <38.564911, 34.952072, 23.578491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385185, 35.309380, 23.584063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244355, 0.107885, 0.963666,
		0.859309, 0.436388, -0.266748,
		-0.449310, 0.893268, 0.013927,
		38.250393, 35.577358, 23.588242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026470, 35.496922, 23.878994>,  <38.564911, 34.952072, 23.578491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026470, 35.496922, 23.878994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655834, 35.631321, 23.946566>,  <38.433453, 35.711960, 23.987108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655834, 35.631321, 23.946566>,  <39.026470, 35.496922, 23.878994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655834, 35.631321, 23.946566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282418, 0.325068, 0.902536,
		0.248338, 0.883989, -0.396097,
		-0.926590, 0.335999, 0.168927,
		38.377857, 35.732121, 23.997244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142956, 36.020115, 24.357874>,  <39.026470, 35.496922, 23.878994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142956, 36.020115, 24.357874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746906, 35.977085, 24.393850>,  <38.509277, 35.951267, 24.415436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746906, 35.977085, 24.393850>,  <39.142956, 36.020115, 24.357874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746906, 35.977085, 24.393850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062275, 0.237341, 0.969428,
		-0.125628, 0.965452, -0.228298,
		-0.990121, -0.107570, 0.089941,
		38.449871, 35.944813, 24.420832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037182, 36.513783, 24.763762>,  <39.142956, 36.020115, 24.357874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037182, 36.513783, 24.763762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704063, 36.295975, 24.803659>,  <38.504192, 36.165291, 24.827599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704063, 36.295975, 24.803659>,  <39.037182, 36.513783, 24.763762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704063, 36.295975, 24.803659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029007, 0.222857, 0.974420,
		-0.552822, 0.808598, -0.201389,
		-0.832794, -0.544523, 0.099745,
		38.454224, 36.132618, 24.833584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599556, 36.828365, 25.271343>,  <39.037182, 36.513783, 24.763762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599556, 36.828365, 25.271343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454670, 36.455528, 25.270807>,  <38.367737, 36.231827, 25.270485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454670, 36.455528, 25.270807>,  <38.599556, 36.828365, 25.271343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454670, 36.455528, 25.270807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049889, 0.017951, 0.998594,
		-0.930758, 0.361774, -0.053003,
		-0.362217, -0.932093, -0.001340,
		38.346004, 36.175900, 25.270405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990513, 36.918964, 25.564936>,  <38.599556, 36.828365, 25.271343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990513, 36.918964, 25.564936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056740, 36.525177, 25.588312>,  <38.096478, 36.288906, 25.602339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056740, 36.525177, 25.588312>,  <37.990513, 36.918964, 25.564936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056740, 36.525177, 25.588312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027170, 0.063789, 0.997594,
		-0.985824, -0.163583, 0.037309,
		0.165570, -0.984465, 0.058441,
		38.106411, 36.229839, 25.605844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468403, 36.632389, 26.014917>,  <37.990513, 36.918964, 25.564936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468403, 36.632389, 26.014917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765846, 36.364986, 26.010098>,  <37.944313, 36.204544, 26.007206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765846, 36.364986, 26.010098>,  <37.468403, 36.632389, 26.014917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765846, 36.364986, 26.010098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072650, -0.098702, 0.992461,
		-0.664660, -0.737124, -0.121963,
		0.743605, -0.668510, -0.012051,
		37.988930, 36.164433, 26.006483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267967, 36.067207, 26.521730>,  <37.468403, 36.632389, 26.014917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267967, 36.067207, 26.521730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662926, 36.024155, 26.475325>,  <37.899902, 35.998325, 26.447481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662926, 36.024155, 26.475325>,  <37.267967, 36.067207, 26.521730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662926, 36.024155, 26.475325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091541, -0.209562, 0.973501,
		-0.129086, -0.971854, -0.197069,
		0.987399, -0.107625, -0.116016,
		37.959145, 35.991867, 26.440519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496883, 35.375988, 26.876814>,  <37.267967, 36.067207, 26.521730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496883, 35.375988, 26.876814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845005, 35.572803, 26.868185>,  <38.053879, 35.690891, 26.863008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845005, 35.572803, 26.868185>,  <37.496883, 35.375988, 26.876814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845005, 35.572803, 26.868185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143318, -0.211106, 0.966899,
		0.471199, -0.844589, -0.254245,
		0.870305, 0.492040, -0.021572,
		38.106098, 35.720417, 26.861713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881489, 34.893970, 27.216702>,  <37.496883, 35.375988, 26.876814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881489, 34.893970, 27.216702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094769, 35.230515, 27.252041>,  <38.222736, 35.432442, 27.273245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094769, 35.230515, 27.252041>,  <37.881489, 34.893970, 27.216702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094769, 35.230515, 27.252041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245897, -0.254056, 0.935409,
		0.809464, -0.477036, -0.342351,
		0.533200, 0.841363, 0.088348,
		38.254730, 35.482925, 27.278545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546116, 34.716339, 27.534878>,  <37.881489, 34.893970, 27.216702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546116, 34.716339, 27.534878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440475, 35.091835, 27.623447>,  <38.377090, 35.317131, 27.676590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440475, 35.091835, 27.623447>,  <38.546116, 34.716339, 27.534878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440475, 35.091835, 27.623447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261043, -0.151437, 0.953375,
		0.928498, 0.309586, -0.205056,
		-0.264098, 0.938735, 0.221424,
		38.361244, 35.373455, 27.689875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166004, 35.016293, 27.946465>,  <38.546116, 34.716339, 27.534878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166004, 35.016293, 27.946465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.846336, 35.243179, 28.026056>,  <38.654533, 35.379311, 28.073811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.846336, 35.243179, 28.026056>,  <39.166004, 35.016293, 27.946465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846336, 35.243179, 28.026056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155555, -0.124594, 0.979938,
		0.580627, 0.814091, 0.011339,
		-0.799171, 0.567215, 0.198979,
		38.606586, 35.413345, 28.085751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.377125, 38.631729, 23.351513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026352, 38.584080, 23.165262>,  <35.815887, 38.555492, 23.053513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026352, 38.584080, 23.165262>,  <36.377125, 38.631729, 23.351513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026352, 38.584080, 23.165262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470151, -0.011481, -0.882511,
		0.099778, -0.992813, 0.066072,
		-0.876927, -0.119119, -0.465627,
		35.763275, 38.548344, 23.025574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490559, 38.122688, 22.840178>,  <36.377125, 38.631729, 23.351513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490559, 38.122688, 22.840178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167873, 38.332756, 22.731798>,  <35.974262, 38.458797, 22.666771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167873, 38.332756, 22.731798>,  <36.490559, 38.122688, 22.840178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167873, 38.332756, 22.731798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293573, -0.041768, -0.955024,
		-0.512867, -0.849971, -0.120481,
		-0.806710, 0.525171, -0.270950,
		35.925861, 38.490307, 22.650513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183826, 37.735317, 22.286747>,  <36.490559, 38.122688, 22.840178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183826, 37.735317, 22.286747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019421, 38.092216, 22.211960>,  <35.920776, 38.306358, 22.167088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019421, 38.092216, 22.211960>,  <36.183826, 37.735317, 22.286747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019421, 38.092216, 22.211960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255235, -0.084260, -0.963200,
		-0.875170, -0.443608, -0.193102,
		-0.411013, 0.892251, -0.186966,
		35.896118, 38.359890, 22.155870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892143, 37.709743, 21.693602>,  <36.183826, 37.735317, 22.286747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892143, 37.709743, 21.693602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904453, 38.108994, 21.714779>,  <35.911839, 38.348541, 21.727486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904453, 38.108994, 21.714779>,  <35.892143, 37.709743, 21.693602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904453, 38.108994, 21.714779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140896, 0.048107, -0.988855,
		-0.989546, 0.037888, -0.139151,
		0.030771, 0.998123, 0.052942,
		35.913685, 38.408432, 21.730661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606319, 37.893070, 21.052168>,  <35.892143, 37.709743, 21.693602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606319, 37.893070, 21.052168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812950, 38.212158, 21.176615>,  <35.936928, 38.403610, 21.251282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812950, 38.212158, 21.176615>,  <35.606319, 37.893070, 21.052168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812950, 38.212158, 21.176615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185790, 0.250265, -0.950184,
		-0.835843, 0.548641, -0.018929,
		0.516573, 0.797722, 0.311115,
		35.967922, 38.451473, 21.269949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453026, 38.243385, 20.540295>,  <35.606319, 37.893070, 21.052168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453026, 38.243385, 20.540295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.745876, 38.445053, 20.723516>,  <35.921585, 38.566055, 20.833448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.745876, 38.445053, 20.723516>,  <35.453026, 38.243385, 20.540295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745876, 38.445053, 20.723516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195548, 0.488583, -0.850322,
		-0.652502, 0.712111, 0.259113,
		0.732122, 0.504168, 0.458053,
		35.965511, 38.596302, 20.860931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366741, 39.008278, 20.399881>,  <35.453026, 38.243385, 20.540295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366741, 39.008278, 20.399881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743927, 38.902473, 20.480732>,  <35.970238, 38.838989, 20.529243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743927, 38.902473, 20.480732>,  <35.366741, 39.008278, 20.399881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743927, 38.902473, 20.480732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316688, 0.525583, -0.789602,
		0.102626, 0.808575, 0.579374,
		0.942961, -0.264514, 0.202128,
		36.026817, 38.823120, 20.541370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711491, 39.652401, 20.548286>,  <35.366741, 39.008278, 20.399881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711491, 39.652401, 20.548286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.986481, 39.377510, 20.454388>,  <36.151474, 39.212578, 20.398048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.986481, 39.377510, 20.454388>,  <35.711491, 39.652401, 20.548286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986481, 39.377510, 20.454388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321665, 0.577966, -0.749991,
		0.651088, 0.440088, 0.618391,
		0.687471, -0.687225, -0.234746,
		36.192722, 39.171341, 20.383965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330692, 40.020966, 20.539007>,  <35.711491, 39.652401, 20.548286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330692, 40.020966, 20.539007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.434570, 39.693260, 20.334515>,  <36.496899, 39.496635, 20.211819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.434570, 39.693260, 20.334515>,  <36.330692, 40.020966, 20.539007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434570, 39.693260, 20.334515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226178, 0.566273, -0.792577,
		0.938830, 0.090200, 0.332359,
		0.259696, -0.819267, -0.511233,
		36.512478, 39.447479, 20.181145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040001, 40.102127, 20.391760>,  <36.330692, 40.020966, 20.539007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040001, 40.102127, 20.391760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872639, 39.863777, 20.117571>,  <36.772221, 39.720768, 19.953056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872639, 39.863777, 20.117571>,  <37.040001, 40.102127, 20.391760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872639, 39.863777, 20.117571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319284, 0.610046, -0.725190,
		0.850291, -0.522285, -0.064995,
		-0.418406, -0.595871, -0.685474,
		36.747116, 39.685017, 19.911928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548054, 40.147121, 19.858273>,  <37.040001, 40.102127, 20.391760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548054, 40.147121, 19.858273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218880, 39.995781, 19.688744>,  <37.021374, 39.904976, 19.587027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218880, 39.995781, 19.688744>,  <37.548054, 40.147121, 19.858273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218880, 39.995781, 19.688744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163604, 0.556579, -0.814527,
		0.544047, -0.739653, -0.396140,
		-0.822950, -0.378331, -0.423815,
		36.972000, 39.882275, 19.561596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730305, 39.866100, 19.214268>,  <37.548054, 40.147121, 19.858273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730305, 39.866100, 19.214268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.344746, 39.969807, 19.189964>,  <37.113411, 40.032032, 19.175383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.344746, 39.969807, 19.189964>,  <37.730305, 39.866100, 19.214268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344746, 39.969807, 19.189964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174803, 0.443925, -0.878848,
		-0.200884, -0.857736, -0.473217,
		-0.963893, 0.259266, -0.060757,
		37.055576, 40.047588, 19.171738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480961, 39.886642, 18.490782>,  <37.730305, 39.866100, 19.214268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480961, 39.886642, 18.490782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195728, 40.129784, 18.630510>,  <37.024590, 40.275669, 18.714348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195728, 40.129784, 18.630510>,  <37.480961, 39.886642, 18.490782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195728, 40.129784, 18.630510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075533, 0.561972, -0.823700,
		-0.696998, -0.560982, -0.446646,
		-0.713084, 0.607854, 0.349321,
		36.981804, 40.312141, 18.735306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083740, 39.378101, 18.164072>,  <37.480961, 39.886642, 18.490782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083740, 39.378101, 18.164072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883530, 39.054039, 18.042009>,  <37.763401, 38.859600, 17.968771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883530, 39.054039, 18.042009>,  <38.083740, 39.378101, 18.164072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883530, 39.054039, 18.042009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225601, -0.462372, 0.857506,
		-0.835808, 0.360363, 0.414202,
		-0.500529, -0.810154, -0.305156,
		37.733372, 38.810993, 17.950462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661388, 39.133186, 18.717321>,  <38.083740, 39.378101, 18.164072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661388, 39.133186, 18.717321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732681, 38.813965, 18.487072>,  <37.775459, 38.622433, 18.348923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732681, 38.813965, 18.487072>,  <37.661388, 39.133186, 18.717321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732681, 38.813965, 18.487072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179989, -0.548677, 0.816430,
		-0.967386, -0.249123, 0.045848,
		0.178236, -0.798055, -0.575622,
		37.786152, 38.574547, 18.314386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324009, 38.418217, 18.926792>,  <37.661388, 39.133186, 18.717321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324009, 38.418217, 18.926792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659576, 38.348694, 18.720490>,  <37.860916, 38.306980, 18.596708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659576, 38.348694, 18.720490>,  <37.324009, 38.418217, 18.926792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659576, 38.348694, 18.720490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221889, -0.756079, 0.615719,
		-0.496967, -0.630980, -0.595725,
		0.838921, -0.173807, -0.515754,
		37.911251, 38.296551, 18.565763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295376, 37.708584, 18.901453>,  <37.324009, 38.418217, 18.926792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295376, 37.708584, 18.901453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669727, 37.813080, 18.806896>,  <37.894341, 37.875778, 18.750162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669727, 37.813080, 18.806896>,  <37.295376, 37.708584, 18.901453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669727, 37.813080, 18.806896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351201, -0.745087, 0.567012,
		-0.028007, -0.613677, -0.789060,
		0.935881, 0.261238, -0.236392,
		37.950493, 37.891453, 18.735979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581791, 37.054798, 18.797890>,  <37.295376, 37.708584, 18.901453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581791, 37.054798, 18.797890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883423, 37.307392, 18.870094>,  <38.064404, 37.458950, 18.913418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883423, 37.307392, 18.870094>,  <37.581791, 37.054798, 18.797890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883423, 37.307392, 18.870094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460111, -0.704059, 0.540923,
		0.468677, -0.324845, -0.821473,
		0.754082, 0.631487, 0.180512,
		38.109646, 37.496838, 18.924248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279266, 36.614563, 18.731161>,  <37.581791, 37.054798, 18.797890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279266, 36.614563, 18.731161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.316074, 36.942715, 18.956907>,  <38.338158, 37.139606, 19.092356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.316074, 36.942715, 18.956907>,  <38.279266, 36.614563, 18.731161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316074, 36.942715, 18.956907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461038, -0.537462, 0.706101,
		0.882597, 0.195222, -0.427681,
		0.092016, 0.820379, 0.564368,
		38.343678, 37.188828, 19.126217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773712, 36.455273, 19.079380>,  <38.279266, 36.614563, 18.731161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773712, 36.455273, 19.079380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642181, 36.770405, 19.287687>,  <38.563263, 36.959484, 19.412672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642181, 36.770405, 19.287687>,  <38.773712, 36.455273, 19.079380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642181, 36.770405, 19.287687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280525, -0.445062, 0.850427,
		0.901765, 0.425730, -0.074658,
		-0.328824, 0.787829, 0.520769,
		38.543533, 37.006752, 19.443918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304176, 36.652222, 19.489519>,  <38.773712, 36.455273, 19.079380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304176, 36.652222, 19.489519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962112, 36.777966, 19.654385>,  <38.756874, 36.853413, 19.753304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962112, 36.777966, 19.654385>,  <39.304176, 36.652222, 19.489519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962112, 36.777966, 19.654385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256170, -0.434956, 0.863244,
		0.450641, 0.843796, 0.291428,
		-0.855160, 0.314358, 0.412164,
		38.705563, 36.872272, 19.778034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426041, 36.551559, 20.272739>,  <39.304176, 36.652222, 19.489519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426041, 36.551559, 20.272739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039074, 36.652733, 20.268303>,  <38.806892, 36.713436, 20.265642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039074, 36.652733, 20.268303>,  <39.426041, 36.551559, 20.272739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039074, 36.652733, 20.268303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122549, -0.429500, 0.894713,
		0.221539, 0.866922, 0.446504,
		-0.967420, 0.252933, -0.011089,
		38.748848, 36.728611, 20.264977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277077, 36.929832, 20.887798>,  <39.426041, 36.551559, 20.272739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277077, 36.929832, 20.887798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920254, 36.794064, 20.768454>,  <38.706158, 36.712601, 20.696846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920254, 36.794064, 20.768454>,  <39.277077, 36.929832, 20.887798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920254, 36.794064, 20.768454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132004, -0.435719, 0.890351,
		-0.432208, 0.833632, 0.343882,
		-0.892060, -0.339423, -0.298364,
		38.652637, 36.692238, 20.678944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807842, 37.171520, 21.409214>,  <39.277077, 36.929832, 20.887798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807842, 37.171520, 21.409214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653034, 36.844124, 21.239368>,  <38.560150, 36.647686, 21.137461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653034, 36.844124, 21.239368>,  <38.807842, 37.171520, 21.409214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653034, 36.844124, 21.239368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236494, -0.356983, 0.903678,
		-0.891229, 0.450157, -0.055409,
		-0.387017, -0.818488, -0.424613,
		38.536930, 36.598576, 21.111984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127281, 37.043262, 21.693224>,  <38.807842, 37.171520, 21.409214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127281, 37.043262, 21.693224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226616, 36.684612, 21.546587>,  <38.286217, 36.469421, 21.458605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226616, 36.684612, 21.546587>,  <38.127281, 37.043262, 21.693224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226616, 36.684612, 21.546587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238604, -0.423405, 0.873954,
		-0.938828, -0.129562, -0.319085,
		0.248333, -0.896628, -0.366591,
		38.301117, 36.415623, 21.436609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571709, 36.654293, 21.644272>,  <38.127281, 37.043262, 21.693224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571709, 36.654293, 21.644272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892349, 36.416309, 21.667824>,  <38.084732, 36.273521, 21.681955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892349, 36.416309, 21.667824>,  <37.571709, 36.654293, 21.644272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892349, 36.416309, 21.667824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336614, -0.367741, 0.866867,
		-0.494098, -0.714697, -0.495051,
		0.801597, -0.594958, 0.058877,
		38.132828, 36.237823, 21.685488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253574, 36.237759, 22.083876>,  <37.571709, 36.654293, 21.644272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253574, 36.237759, 22.083876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624401, 36.088093, 22.093220>,  <37.846897, 35.998295, 22.098827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624401, 36.088093, 22.093220>,  <37.253574, 36.237759, 22.083876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624401, 36.088093, 22.093220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223271, -0.500990, 0.836157,
		-0.301157, -0.780391, -0.547992,
		0.927068, -0.374165, 0.023362,
		37.902523, 35.975842, 22.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182369, 35.573711, 22.239508>,  <37.253574, 36.237759, 22.083876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182369, 35.573711, 22.239508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.568199, 35.651184, 22.311152>,  <37.799698, 35.697666, 22.354137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.568199, 35.651184, 22.311152>,  <37.182369, 35.573711, 22.239508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568199, 35.651184, 22.311152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097868, -0.367772, 0.924752,
		0.244979, -0.909522, -0.335789,
		0.964576, 0.193682, 0.179109,
		37.857571, 35.709290, 22.364883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114044, 34.871815, 22.201385>,  <37.182369, 35.573711, 22.239508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114044, 34.871815, 22.201385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.718128, 34.913651, 22.162642>,  <36.480579, 34.938751, 22.139395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.718128, 34.913651, 22.162642>,  <37.114044, 34.871815, 22.201385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718128, 34.913651, 22.162642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138087, 0.534740, -0.833658,
		-0.035401, -0.838519, -0.543721,
		-0.989787, 0.104593, -0.096858,
		36.421192, 34.945026, 22.133583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021564, 34.860779, 21.413910>,  <37.114044, 34.871815, 22.201385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021564, 34.860779, 21.413910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.657612, 34.984810, 21.524160>,  <36.439240, 35.059227, 21.590311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.657612, 34.984810, 21.524160>,  <37.021564, 34.860779, 21.413910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657612, 34.984810, 21.524160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127879, 0.422398, -0.897344,
		-0.394666, -0.851724, -0.344681,
		-0.909882, 0.310073, 0.275624,
		36.384647, 35.077831, 21.606848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514328, 34.759670, 20.871902>,  <37.021564, 34.860779, 21.413910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514328, 34.759670, 20.871902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347015, 35.042629, 21.099808>,  <36.246628, 35.212402, 21.236551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347015, 35.042629, 21.099808>,  <36.514328, 34.759670, 20.871902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347015, 35.042629, 21.099808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332175, 0.464693, -0.820805,
		-0.845399, -0.532590, 0.040605,
		-0.418283, 0.707395, 0.569764,
		36.221531, 35.254848, 21.270737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811378, 34.954559, 20.542820>,  <36.514328, 34.759670, 20.871902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811378, 34.954559, 20.542820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888592, 35.269520, 20.776995>,  <35.934917, 35.458496, 20.917500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888592, 35.269520, 20.776995>,  <35.811378, 34.954559, 20.542820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888592, 35.269520, 20.776995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285058, 0.615926, -0.734423,
		-0.938872, -0.025116, 0.343349,
		0.193032, 0.787404, 0.585435,
		35.946503, 35.505741, 20.952625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223652, 35.340813, 20.556305>,  <35.811378, 34.954559, 20.542820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223652, 35.340813, 20.556305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507767, 35.603168, 20.658520>,  <35.678238, 35.760582, 20.719849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507767, 35.603168, 20.658520>,  <35.223652, 35.340813, 20.556305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507767, 35.603168, 20.658520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318051, 0.622893, -0.714736,
		-0.627959, 0.426396, 0.651041,
		0.710289, 0.655889, 0.255536,
		35.720852, 35.799934, 20.735180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853470, 35.947662, 20.536207>,  <35.223652, 35.340813, 20.556305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853470, 35.947662, 20.536207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238815, 36.052280, 20.512482>,  <35.470024, 36.115051, 20.498245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238815, 36.052280, 20.512482>,  <34.853470, 35.947662, 20.536207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238815, 36.052280, 20.512482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209837, 0.597379, -0.774020,
		-0.167005, 0.758112, 0.630377,
		0.963368, 0.261541, -0.059315,
		35.527824, 36.130741, 20.494688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796131, 36.629749, 20.359262>,  <34.853470, 35.947662, 20.536207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796131, 36.629749, 20.359262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168217, 36.537682, 20.244911>,  <35.391468, 36.482441, 20.176300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168217, 36.537682, 20.244911>,  <34.796131, 36.629749, 20.359262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168217, 36.537682, 20.244911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084086, 0.624538, -0.776454,
		0.357261, 0.746305, 0.561599,
		0.930212, -0.230174, -0.285877,
		35.447281, 36.468628, 20.159147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053974, 36.817406, 20.439789>,  <34.796131, 36.629749, 20.359262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053974, 36.817406, 20.439789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766251, 36.712006, 20.182676>,  <33.593616, 36.648766, 20.028410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766251, 36.712006, 20.182676>,  <34.053974, 36.817406, 20.439789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766251, 36.712006, 20.182676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461374, -0.510539, 0.725592,
		-0.519354, 0.818486, 0.245665,
		-0.719309, -0.263495, -0.642779,
		33.550457, 36.632957, 19.989843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532368, 37.000370, 20.714718>,  <34.053974, 36.817406, 20.439789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532368, 37.000370, 20.714718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428082, 36.718098, 20.451189>,  <33.365509, 36.548737, 20.293072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428082, 36.718098, 20.451189>,  <33.532368, 37.000370, 20.714718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428082, 36.718098, 20.451189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359122, -0.562559, 0.744687,
		-0.896134, 0.430751, -0.106754,
		-0.260719, -0.705677, -0.658821,
		33.349865, 36.506393, 20.253542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810276, 36.830101, 20.866888>,  <33.532368, 37.000370, 20.714718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810276, 36.830101, 20.866888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011524, 36.523014, 20.708155>,  <33.132275, 36.338760, 20.612915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011524, 36.523014, 20.708155>,  <32.810276, 36.830101, 20.866888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011524, 36.523014, 20.708155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426558, -0.619956, 0.658561,
		-0.751608, -0.162065, -0.639390,
		0.503124, -0.767717, -0.396834,
		33.162460, 36.292698, 20.589106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459457, 36.254768, 21.104418>,  <32.810276, 36.830101, 20.866888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459457, 36.254768, 21.104418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766624, 36.052578, 20.947041>,  <32.950924, 35.931263, 20.852613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766624, 36.052578, 20.947041>,  <32.459457, 36.254768, 21.104418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766624, 36.052578, 20.947041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170546, -0.753400, 0.635061,
		-0.617430, -0.420573, -0.664755,
		0.767916, -0.505477, -0.393445,
		32.996998, 35.900936, 20.829006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262150, 35.591602, 20.773310>,  <32.459457, 36.254768, 21.104418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262150, 35.591602, 20.773310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643623, 35.547268, 20.885174>,  <32.872505, 35.520668, 20.952293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643623, 35.547268, 20.885174>,  <32.262150, 35.591602, 20.773310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643623, 35.547268, 20.885174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280908, -0.660738, 0.696072,
		0.107636, -0.742389, -0.661266,
		0.953680, -0.110833, 0.279662,
		32.929726, 35.514019, 20.969072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307102, 34.921974, 20.826019>,  <32.262150, 35.591602, 20.773310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307102, 34.921974, 20.826019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624416, 35.047886, 21.034483>,  <32.814804, 35.123432, 21.159561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624416, 35.047886, 21.034483>,  <32.307102, 34.921974, 20.826019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624416, 35.047886, 21.034483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132647, -0.746066, 0.652526,
		0.594219, -0.586772, -0.550093,
		0.793290, 0.314775, 0.521160,
		32.862404, 35.142319, 21.190830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709244, 34.317657, 21.098152>,  <32.307102, 34.921974, 20.826019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709244, 34.317657, 21.098152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829109, 34.616161, 21.335905>,  <32.901028, 34.795265, 21.478558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829109, 34.616161, 21.335905>,  <32.709244, 34.317657, 21.098152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829109, 34.616161, 21.335905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059240, -0.636368, 0.769108,
		0.952203, -0.195265, -0.234907,
		0.299667, 0.746263, 0.594384,
		32.919010, 34.840038, 21.514219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.486202, 41.462265, 20.068525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.793381, 41.242832, 19.936275>,  <33.977688, 41.111172, 19.856926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.793381, 41.242832, 19.936275>,  <33.486202, 41.462265, 20.068525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793381, 41.242832, 19.936275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273492, -0.747608, 0.605215,
		-0.579187, -0.374351, -0.724157,
		0.767948, -0.548584, -0.330622,
		34.023766, 41.078259, 19.837088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233711, 40.877998, 19.701796>,  <33.486202, 41.462265, 20.068525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233711, 40.877998, 19.701796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.598690, 40.770103, 19.824873>,  <33.817677, 40.705368, 19.898720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.598690, 40.770103, 19.824873>,  <33.233711, 40.877998, 19.701796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598690, 40.770103, 19.824873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397725, -0.761363, 0.511998,
		0.096164, -0.589551, -0.801986,
		0.912451, -0.269734, 0.307695,
		33.872425, 40.689182, 19.917181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234356, 40.107300, 19.624258>,  <33.233711, 40.877998, 19.701796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234356, 40.107300, 19.624258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.555420, 40.167179, 19.855196>,  <33.748058, 40.203106, 19.993759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.555420, 40.167179, 19.855196>,  <33.234356, 40.107300, 19.624258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555420, 40.167179, 19.855196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306241, -0.727215, 0.614309,
		0.511815, -0.669888, -0.537862,
		0.802659, 0.149697, 0.577347,
		33.796219, 40.212090, 20.028400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578014, 39.419735, 19.730518>,  <33.234356, 40.107300, 19.624258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578014, 39.419735, 19.730518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.700714, 39.676361, 20.011742>,  <33.774334, 39.830338, 20.180475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.700714, 39.676361, 20.011742>,  <33.578014, 39.419735, 19.730518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700714, 39.676361, 20.011742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116958, -0.707665, 0.696800,
		0.944577, -0.295971, -0.142039,
		0.306749, 0.641569, 0.703060,
		33.792740, 39.868832, 20.222660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077206, 39.027252, 20.167086>,  <33.578014, 39.419735, 19.730518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077206, 39.027252, 20.167086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.890327, 39.315956, 20.371359>,  <33.778202, 39.489178, 20.493923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.890327, 39.315956, 20.371359>,  <34.077206, 39.027252, 20.167086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890327, 39.315956, 20.371359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249625, -0.661774, 0.706925,
		0.848186, 0.202791, 0.489344,
		-0.467193, 0.721756, 0.510685,
		33.750168, 39.532482, 20.524565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969551, 38.707214, 20.790121>,  <34.077206, 39.027252, 20.167086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969551, 38.707214, 20.790121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758862, 39.033920, 20.884323>,  <33.632446, 39.229942, 20.940844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758862, 39.033920, 20.884323>,  <33.969551, 38.707214, 20.790121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758862, 39.033920, 20.884323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348524, -0.460201, 0.816546,
		0.775303, 0.348014, 0.527059,
		-0.526723, 0.816763, 0.235504,
		33.600845, 39.278950, 20.954975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973583, 38.773369, 21.580519>,  <33.969551, 38.707214, 20.790121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973583, 38.773369, 21.580519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662796, 38.964619, 21.416702>,  <33.476326, 39.079369, 21.318413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662796, 38.964619, 21.416702>,  <33.973583, 38.773369, 21.580519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662796, 38.964619, 21.416702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582959, -0.300829, 0.754759,
		0.237668, 0.825165, 0.512461,
		-0.776964, 0.478126, -0.409540,
		33.429707, 39.108055, 21.293840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782806, 39.203278, 22.075680>,  <33.973583, 38.773369, 21.580519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782806, 39.203278, 22.075680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.486660, 39.144173, 21.813374>,  <33.308971, 39.108711, 21.655989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.486660, 39.144173, 21.813374>,  <33.782806, 39.203278, 22.075680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486660, 39.144173, 21.813374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638670, -0.149671, 0.754784,
		-0.209679, 0.977632, 0.016438,
		-0.740361, -0.147763, -0.655768,
		33.264553, 39.099842, 21.616644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169762, 39.624954, 22.275270>,  <33.782806, 39.203278, 22.075680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169762, 39.624954, 22.275270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.995674, 39.347866, 22.045237>,  <32.891224, 39.181614, 21.907217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.995674, 39.347866, 22.045237>,  <33.169762, 39.624954, 22.275270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995674, 39.347866, 22.045237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666570, -0.181451, 0.723021,
		-0.605204, 0.698003, -0.382779,
		-0.435215, -0.692725, -0.575083,
		32.865108, 39.140049, 21.872711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424072, 39.802181, 22.219328>,  <33.169762, 39.624954, 22.275270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424072, 39.802181, 22.219328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.503304, 39.413727, 22.166180>,  <32.550842, 39.180653, 22.134291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.503304, 39.413727, 22.166180>,  <32.424072, 39.802181, 22.219328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503304, 39.413727, 22.166180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601501, -0.227465, 0.765804,
		-0.773926, -0.071768, -0.629197,
		0.198081, -0.971138, -0.132873,
		32.562729, 39.122387, 22.126318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764755, 39.391029, 22.331244>,  <32.424072, 39.802181, 22.219328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764755, 39.391029, 22.331244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025478, 39.088493, 22.353510>,  <32.181911, 38.906971, 22.366869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025478, 39.088493, 22.353510>,  <31.764755, 39.391029, 22.331244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025478, 39.088493, 22.353510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441781, -0.319010, 0.838488,
		-0.616424, -0.571124, -0.542069,
		0.651806, -0.756340, 0.055666,
		32.221020, 38.861591, 22.370211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378246, 38.746067, 22.466291>,  <31.764755, 39.391029, 22.331244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378246, 38.746067, 22.466291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.748240, 38.695591, 22.609667>,  <31.970236, 38.665306, 22.695692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.748240, 38.695591, 22.609667>,  <31.378246, 38.746067, 22.466291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748240, 38.695591, 22.609667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379467, -0.356948, 0.853577,
		0.020230, -0.925561, -0.378057,
		0.924984, -0.126192, 0.358441,
		32.025734, 38.657734, 22.717199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167461, 37.978817, 22.307043>,  <31.378246, 38.746067, 22.466291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167461, 37.978817, 22.307043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895227, 37.732365, 22.148458>,  <30.731886, 37.584492, 22.053308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895227, 37.732365, 22.148458>,  <31.167461, 37.978817, 22.307043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895227, 37.732365, 22.148458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151519, 0.411058, -0.898929,
		0.716829, -0.671870, -0.186404,
		-0.680586, -0.616135, -0.396460,
		30.691051, 37.547523, 22.029520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493782, 37.642338, 21.774969>,  <31.167461, 37.978817, 22.307043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493782, 37.642338, 21.774969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098774, 37.622173, 21.715282>,  <30.861769, 37.610073, 21.679470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098774, 37.622173, 21.715282>,  <31.493782, 37.642338, 21.774969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098774, 37.622173, 21.715282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102951, 0.510368, -0.853771,
		0.119198, -0.858477, -0.498808,
		-0.987518, -0.050415, -0.149216,
		30.802519, 37.607048, 21.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476601, 37.371433, 21.057405>,  <31.493782, 37.642338, 21.774969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476601, 37.371433, 21.057405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142014, 37.568031, 21.154364>,  <30.941261, 37.685989, 21.212538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142014, 37.568031, 21.154364>,  <31.476601, 37.371433, 21.057405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142014, 37.568031, 21.154364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017005, 0.465378, -0.884949,
		-0.547753, -0.736109, -0.397631,
		-0.836468, 0.491495, 0.242395,
		30.891073, 37.715481, 21.227081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223885, 37.334995, 20.380249>,  <31.476601, 37.371433, 21.057405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223885, 37.334995, 20.380249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996300, 37.590370, 20.587584>,  <30.859749, 37.743595, 20.711985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996300, 37.590370, 20.587584>,  <31.223885, 37.334995, 20.380249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996300, 37.590370, 20.587584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177081, 0.520400, -0.835360,
		-0.803070, -0.567078, -0.183033,
		-0.568964, 0.638441, 0.518336,
		30.825611, 37.781902, 20.743084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520987, 37.473747, 19.905849>,  <31.223885, 37.334995, 20.380249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520987, 37.473747, 19.905849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587482, 37.753056, 20.184357>,  <30.627380, 37.920639, 20.351461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587482, 37.753056, 20.184357>,  <30.520987, 37.473747, 19.905849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587482, 37.753056, 20.184357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077475, 0.713159, -0.696708,
		-0.983037, 0.061878, 0.172654,
		0.166241, 0.698266, 0.696267,
		30.637354, 37.962536, 20.393236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050100, 37.998302, 19.662718>,  <30.520987, 37.473747, 19.905849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050100, 37.998302, 19.662718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316994, 38.155201, 19.915998>,  <30.477129, 38.249340, 20.067966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316994, 38.155201, 19.915998>,  <30.050100, 37.998302, 19.662718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316994, 38.155201, 19.915998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002511, 0.848915, -0.528523,
		-0.744846, 0.354237, 0.565438,
		0.667231, 0.392249, 0.633201,
		30.517162, 38.272877, 20.105959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909082, 38.673569, 19.525105>,  <30.050100, 37.998302, 19.662718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909082, 38.673569, 19.525105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265852, 38.666367, 19.705837>,  <30.479914, 38.662045, 19.814276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265852, 38.666367, 19.705837>,  <29.909082, 38.673569, 19.525105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265852, 38.666367, 19.705837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289802, 0.789781, -0.540611,
		-0.347115, 0.613124, 0.709641,
		0.891922, -0.018001, 0.451830,
		30.533428, 38.660965, 19.841387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046221, 39.361752, 19.622877>,  <29.909082, 38.673569, 19.525105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046221, 39.361752, 19.622877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398928, 39.176304, 19.657623>,  <30.610552, 39.065037, 19.678471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398928, 39.176304, 19.657623>,  <30.046221, 39.361752, 19.622877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398928, 39.176304, 19.657623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413371, 0.670842, -0.615707,
		0.227177, 0.578819, 0.783173,
		0.881768, -0.463615, 0.086867,
		30.663458, 39.037220, 19.683683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565374, 39.840874, 19.893635>,  <30.046221, 39.361752, 19.622877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565374, 39.840874, 19.893635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747087, 39.548286, 19.690233>,  <30.856115, 39.372734, 19.568192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747087, 39.548286, 19.690233>,  <30.565374, 39.840874, 19.893635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747087, 39.548286, 19.690233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510708, 0.681529, -0.524114,
		0.729935, -0.021602, 0.683175,
		0.454282, -0.731472, -0.508504,
		30.883371, 39.328846, 19.537682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267736, 40.125271, 19.837416>,  <30.565374, 39.840874, 19.893635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267736, 40.125271, 19.837416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252810, 39.828053, 19.570135>,  <31.243853, 39.649723, 19.409767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252810, 39.828053, 19.570135>,  <31.267736, 40.125271, 19.837416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252810, 39.828053, 19.570135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466653, 0.578325, -0.669160,
		0.883653, -0.336790, 0.325161,
		-0.037318, -0.743043, -0.668203,
		31.241613, 39.605141, 19.369675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896942, 40.050163, 19.622452>,  <31.267736, 40.125271, 19.837416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896942, 40.050163, 19.622452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672047, 39.882225, 19.337461>,  <31.537109, 39.781464, 19.166468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672047, 39.882225, 19.337461>,  <31.896942, 40.050163, 19.622452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672047, 39.882225, 19.337461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542076, 0.463536, -0.700919,
		0.624536, -0.780298, -0.033029,
		-0.562236, -0.419845, -0.712476,
		31.503376, 39.756271, 19.123718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342735, 39.966511, 19.151325>,  <31.896942, 40.050163, 19.622452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342735, 39.966511, 19.151325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994720, 39.973419, 18.954250>,  <31.785912, 39.977562, 18.836006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994720, 39.973419, 18.954250>,  <32.342735, 39.966511, 19.151325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994720, 39.973419, 18.954250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435496, 0.495291, -0.751685,
		0.231042, -0.868555, -0.438442,
		-0.870036, 0.017269, -0.492686,
		31.733709, 39.978600, 18.806444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487511, 39.757957, 18.410074>,  <32.342735, 39.966511, 19.151325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487511, 39.757957, 18.410074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.137104, 39.950752, 18.416882>,  <31.926861, 40.066429, 18.420967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.137104, 39.950752, 18.416882>,  <32.487511, 39.757957, 18.410074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137104, 39.950752, 18.416882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287349, 0.549950, -0.784210,
		-0.387340, -0.682088, -0.620262,
		-0.876013, 0.481988, 0.017020,
		31.874300, 40.095348, 18.421988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106220, 39.513016, 17.850733>,  <32.487511, 39.757957, 18.410074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106220, 39.513016, 17.850733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049015, 39.887596, 17.978861>,  <32.014690, 40.112343, 18.055738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049015, 39.887596, 17.978861>,  <32.106220, 39.513016, 17.850733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049015, 39.887596, 17.978861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322247, 0.350070, -0.879550,
		-0.935790, -0.022566, -0.351834,
		-0.143015, 0.936452, 0.320320,
		32.006111, 40.168533, 18.074957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675430, 39.062664, 18.035368>,  <32.106220, 39.513016, 17.850733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675430, 39.062664, 18.035368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.061558, 38.959820, 18.017256>,  <33.293236, 38.898113, 18.006388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.061558, 38.959820, 18.017256>,  <32.675430, 39.062664, 18.035368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061558, 38.959820, 18.017256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197342, -0.832177, 0.518205,
		-0.170917, -0.491298, -0.854057,
		0.965320, -0.257111, -0.045280,
		33.351154, 38.882687, 18.003672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672344, 38.443428, 17.954649>,  <32.675430, 39.062664, 18.035368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672344, 38.443428, 17.954649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044453, 38.469769, 18.099010>,  <33.267719, 38.485573, 18.185627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044453, 38.469769, 18.099010>,  <32.672344, 38.443428, 17.954649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044453, 38.469769, 18.099010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120046, -0.874962, 0.469075,
		0.346666, -0.479693, -0.806050,
		0.930275, 0.065850, 0.360905,
		33.323536, 38.489525, 18.207281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949451, 37.792389, 17.865602>,  <32.672344, 38.443428, 17.954649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949451, 37.792389, 17.865602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206055, 37.941914, 18.133551>,  <33.360016, 38.031628, 18.294319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206055, 37.941914, 18.133551>,  <32.949451, 37.792389, 17.865602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206055, 37.941914, 18.133551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131605, -0.806658, 0.576180,
		0.755741, -0.457784, -0.468283,
		0.641510, 0.373814, 0.669871,
		33.398506, 38.054058, 18.334513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242149, 37.216934, 18.051773>,  <32.949451, 37.792389, 17.865602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242149, 37.216934, 18.051773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.345074, 37.460781, 18.351681>,  <33.406830, 37.607090, 18.531626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.345074, 37.460781, 18.351681>,  <33.242149, 37.216934, 18.051773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345074, 37.460781, 18.351681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084131, -0.758818, 0.645846,
		0.962660, -0.229262, -0.143964,
		0.257310, 0.609618, 0.749771,
		33.422268, 37.643665, 18.576612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848858, 36.833603, 18.353168>,  <33.242149, 37.216934, 18.051773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848858, 36.833603, 18.353168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.699665, 37.085033, 18.626158>,  <33.610149, 37.235893, 18.789951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.699665, 37.085033, 18.626158>,  <33.848858, 36.833603, 18.353168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699665, 37.085033, 18.626158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081002, -0.754804, 0.650930,
		0.924296, 0.187504, 0.332445,
		-0.372983, 0.628580, 0.682474,
		33.587769, 37.273609, 18.830900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367485, 36.806393, 18.853329>,  <33.848858, 36.833603, 18.353168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367485, 36.806393, 18.853329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.034290, 36.917778, 19.044573>,  <33.834373, 36.984608, 19.159319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.034290, 36.917778, 19.044573>,  <34.367485, 36.806393, 18.853329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034290, 36.917778, 19.044573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111187, -0.762245, 0.637667,
		0.542005, 0.584328, 0.603979,
		-0.832987, 0.278464, 0.478110,
		33.784393, 37.001316, 19.188005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454380, 36.566368, 19.555529>,  <34.367485, 36.806393, 18.853329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454380, 36.566368, 19.555529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.066181, 36.662689, 19.550709>,  <33.833260, 36.720482, 19.547817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.066181, 36.662689, 19.550709>,  <34.454380, 36.566368, 19.555529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066181, 36.662689, 19.550709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180589, -0.692894, 0.698058,
		0.159746, 0.679641, 0.715940,
		-0.970499, 0.240803, -0.012048,
		33.775032, 36.734932, 19.547094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970890, 37.108826, 19.851994>,  <34.454380, 36.566368, 19.555529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970890, 37.108826, 19.851994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.268494, 36.844391, 19.813181>,  <35.447056, 36.685730, 19.789894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.268494, 36.844391, 19.813181>,  <34.970890, 37.108826, 19.851994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268494, 36.844391, 19.813181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082935, 0.235466, -0.968337,
		0.663006, 0.712402, 0.230016,
		0.744006, -0.661090, -0.097032,
		35.491695, 36.646065, 19.784071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632595, 37.452732, 19.616743>,  <34.970890, 37.108826, 19.851994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632595, 37.452732, 19.616743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.645714, 37.066879, 19.512117>,  <35.653584, 36.835369, 19.449341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.645714, 37.066879, 19.512117>,  <35.632595, 37.452732, 19.616743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645714, 37.066879, 19.512117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302999, 0.258986, -0.917125,
		0.952426, -0.049179, 0.300775,
		0.032793, -0.964628, -0.261566,
		35.655552, 36.777493, 19.433647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295807, 37.376549, 19.436104>,  <35.632595, 37.452732, 19.616743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295807, 37.376549, 19.436104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.060242, 37.102818, 19.264112>,  <35.918903, 36.938580, 19.160917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.060242, 37.102818, 19.264112>,  <36.295807, 37.376549, 19.436104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060242, 37.102818, 19.264112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316450, 0.294299, -0.901802,
		0.743671, -0.667146, 0.043241,
		-0.588908, -0.684327, -0.429980,
		35.883568, 36.897518, 19.135118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720356, 37.030682, 18.901308>,  <36.295807, 37.376549, 19.436104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720356, 37.030682, 18.901308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339371, 36.952084, 18.808174>,  <36.110779, 36.904926, 18.752295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339371, 36.952084, 18.808174>,  <36.720356, 37.030682, 18.901308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339371, 36.952084, 18.808174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194244, 0.197109, -0.960946,
		0.234715, -0.960488, -0.149570,
		-0.952459, -0.196495, -0.232833,
		36.053635, 36.893135, 18.738325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809792, 36.552689, 18.385262>,  <36.720356, 37.030682, 18.901308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809792, 36.552689, 18.385262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.453869, 36.728130, 18.334881>,  <36.240314, 36.833397, 18.304651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.453869, 36.728130, 18.334881>,  <36.809792, 36.552689, 18.385262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453869, 36.728130, 18.334881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312495, 0.384532, -0.868609,
		-0.332543, -0.812257, -0.479222,
		-0.889810, 0.438604, -0.125953,
		36.186924, 36.859711, 18.297094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651558, 36.394585, 17.700146>,  <36.809792, 36.552689, 18.385262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651558, 36.394585, 17.700146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395020, 36.692043, 17.775688>,  <36.241096, 36.870518, 17.821014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395020, 36.692043, 17.775688>,  <36.651558, 36.394585, 17.700146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395020, 36.692043, 17.775688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272552, 0.450910, -0.849939,
		-0.717212, -0.493629, -0.491871,
		-0.641343, 0.743647, 0.188858,
		36.202618, 36.915138, 17.832346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230125, 36.414005, 17.137993>,  <36.651558, 36.394585, 17.700146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230125, 36.414005, 17.137993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228092, 36.778107, 17.303604>,  <36.226871, 36.996567, 17.402971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228092, 36.778107, 17.303604>,  <36.230125, 36.414005, 17.137993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228092, 36.778107, 17.303604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188807, 0.407462, -0.893491,
		-0.982001, 0.073629, -0.173933,
		-0.005084, 0.910249, 0.414030,
		36.226566, 37.051182, 17.427813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826416, 36.806458, 16.621662>,  <36.230125, 36.414005, 17.137993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826416, 36.806458, 16.621662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984917, 37.101562, 16.840271>,  <36.080017, 37.278625, 16.971436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984917, 37.101562, 16.840271>,  <35.826416, 36.806458, 16.621662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984917, 37.101562, 16.840271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246873, 0.487713, -0.837370,
		-0.884327, 0.466735, 0.011126,
		0.396256, 0.737763, 0.546523,
		36.103794, 37.322891, 17.004229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510635, 37.447495, 16.322170>,  <35.826416, 36.806458, 16.621662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510635, 37.447495, 16.322170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839458, 37.556408, 16.522202>,  <36.036755, 37.621758, 16.642220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839458, 37.556408, 16.522202>,  <35.510635, 37.447495, 16.322170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839458, 37.556408, 16.522202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278769, 0.573343, -0.770432,
		-0.496493, 0.772748, 0.395417,
		0.822060, 0.272285, 0.500079,
		36.086075, 37.638092, 16.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.649853, 32.757923, 32.042912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969849, 32.997719, 32.032883>,  <35.161846, 33.141598, 32.026867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969849, 32.997719, 32.032883>,  <34.649853, 32.757923, 32.042912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969849, 32.997719, 32.032883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058509, 0.036357, -0.997625,
		-0.597153, 0.799557, 0.064160,
		0.799991, 0.599489, -0.025071,
		35.209846, 33.177567, 32.025360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526272, 33.278240, 31.509893>,  <34.649853, 32.757923, 32.042912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526272, 33.278240, 31.509893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923019, 33.276237, 31.560745>,  <35.161068, 33.275036, 31.591257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923019, 33.276237, 31.560745>,  <34.526272, 33.278240, 31.509893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923019, 33.276237, 31.560745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124586, -0.164339, -0.978505,
		0.025792, 0.986391, -0.162380,
		0.991874, -0.005008, 0.127129,
		35.220581, 33.274734, 31.598885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839447, 33.703556, 31.040943>,  <34.526272, 33.278240, 31.509893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839447, 33.703556, 31.040943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151318, 33.466530, 31.121908>,  <35.338440, 33.324314, 31.170488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151318, 33.466530, 31.121908>,  <34.839447, 33.703556, 31.040943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151318, 33.466530, 31.121908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204660, -0.064352, -0.976715,
		0.591790, 0.802951, 0.071099,
		0.779679, -0.592561, 0.202415,
		35.385220, 33.288761, 31.182632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547123, 34.024769, 30.800417>,  <34.839447, 33.703556, 31.040943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547123, 34.024769, 30.800417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.602619, 33.629528, 30.826948>,  <35.635918, 33.392384, 30.842867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.602619, 33.629528, 30.826948>,  <35.547123, 34.024769, 30.800417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602619, 33.629528, 30.826948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181114, -0.040532, -0.982626,
		0.973627, 0.148342, 0.173336,
		0.138740, -0.988105, 0.066330,
		35.644241, 33.333096, 30.846848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095932, 33.960297, 30.283817>,  <35.547123, 34.024769, 30.800417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095932, 33.960297, 30.283817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940609, 33.599606, 30.359819>,  <35.847416, 33.383190, 30.405420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940609, 33.599606, 30.359819>,  <36.095932, 33.960297, 30.283817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940609, 33.599606, 30.359819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185699, -0.125390, -0.974573,
		0.902628, -0.413714, -0.118761,
		-0.388303, -0.901730, 0.190006,
		35.824120, 33.329086, 30.416821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418148, 33.478809, 29.816725>,  <36.095932, 33.960297, 30.283817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418148, 33.478809, 29.816725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068687, 33.326496, 29.937878>,  <35.859013, 33.235107, 30.010571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068687, 33.326496, 29.937878>,  <36.418148, 33.478809, 29.816725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068687, 33.326496, 29.937878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270807, -0.136624, -0.952889,
		0.404226, -0.914515, 0.016243,
		-0.873650, -0.380783, 0.302884,
		35.806591, 33.212261, 30.028744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415596, 32.907291, 29.402411>,  <36.418148, 33.478809, 29.816725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415596, 32.907291, 29.402411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038364, 32.971493, 29.518923>,  <35.812027, 33.010014, 29.588829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038364, 32.971493, 29.518923>,  <36.415596, 32.907291, 29.402411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038364, 32.971493, 29.518923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298151, -0.020000, -0.954309,
		-0.147344, -0.986833, 0.066715,
		-0.943078, 0.160503, 0.291278,
		35.755440, 33.019642, 29.606306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037407, 32.510765, 28.953856>,  <36.415596, 32.907291, 29.402411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037407, 32.510765, 28.953856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735497, 32.727810, 29.101303>,  <35.554352, 32.858036, 29.189772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735497, 32.727810, 29.101303>,  <36.037407, 32.510765, 28.953856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735497, 32.727810, 29.101303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491661, -0.095940, -0.865486,
		-0.434262, -0.834483, 0.339197,
		-0.754776, 0.542617, 0.368619,
		35.509064, 32.890594, 29.211889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478481, 32.158104, 28.623255>,  <36.037407, 32.510765, 28.953856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478481, 32.158104, 28.623255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363293, 32.520290, 28.747963>,  <35.294178, 32.737602, 28.822788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363293, 32.520290, 28.747963>,  <35.478481, 32.158104, 28.623255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363293, 32.520290, 28.747963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562524, 0.103532, -0.820273,
		-0.775009, -0.411594, 0.479532,
		-0.287973, 0.905467, 0.311770,
		35.276901, 32.791931, 28.841494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684277, 32.103725, 28.450394>,  <35.478481, 32.158104, 28.623255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684277, 32.103725, 28.450394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832249, 32.474754, 28.471375>,  <34.921032, 32.697372, 28.483963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832249, 32.474754, 28.471375>,  <34.684277, 32.103725, 28.450394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832249, 32.474754, 28.471375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356626, 0.193907, -0.913903,
		-0.857886, 0.319376, 0.402530,
		0.369932, 0.927577, 0.052452,
		34.943230, 32.753029, 28.487110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203892, 32.529495, 28.199545>,  <34.684277, 32.103725, 28.450394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203892, 32.529495, 28.199545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532207, 32.755615, 28.166704>,  <34.729195, 32.891289, 28.146999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532207, 32.755615, 28.166704>,  <34.203892, 32.529495, 28.199545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532207, 32.755615, 28.166704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203051, 0.154389, -0.966920,
		-0.533927, 0.810306, 0.241506,
		0.820787, 0.565303, -0.082101,
		34.778442, 32.925205, 28.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055908, 33.226852, 27.950230>,  <34.203892, 32.529495, 28.199545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055908, 33.226852, 27.950230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435577, 33.157303, 27.845285>,  <34.663380, 33.115574, 27.782318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435577, 33.157303, 27.845285>,  <34.055908, 33.226852, 27.950230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435577, 33.157303, 27.845285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253237, 0.073139, -0.964635,
		0.186914, 0.982048, 0.025390,
		0.949175, -0.173874, -0.262362,
		34.720329, 33.105141, 27.766577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428577, 33.391777, 27.471323>,  <34.055908, 33.226852, 27.950230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428577, 33.391777, 27.471323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157898, 33.106201, 27.399361>,  <32.995491, 32.934856, 27.356184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157898, 33.106201, 27.399361>,  <33.428577, 33.391777, 27.471323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157898, 33.106201, 27.399361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365644, 0.113793, 0.923773,
		-0.639046, 0.690899, -0.338052,
		-0.676701, -0.713940, -0.179905,
		32.954887, 32.892021, 27.345388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004517, 33.625549, 27.906357>,  <33.428577, 33.391777, 27.471323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004517, 33.625549, 27.906357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859135, 33.263115, 27.819714>,  <32.771908, 33.045654, 27.767727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859135, 33.263115, 27.819714>,  <33.004517, 33.625549, 27.906357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859135, 33.263115, 27.819714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544253, 0.017803, 0.838732,
		-0.756104, 0.422728, -0.499608,
		-0.363450, -0.906082, -0.216610,
		32.750099, 32.991291, 27.754730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253727, 33.698711, 28.002958>,  <33.004517, 33.625549, 27.906357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253727, 33.698711, 28.002958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378147, 33.319725, 28.032787>,  <32.452801, 33.092335, 28.050684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378147, 33.319725, 28.032787>,  <32.253727, 33.698711, 28.002958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378147, 33.319725, 28.032787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466021, -0.083669, 0.880808,
		-0.828295, -0.308726, -0.467564,
		0.311049, -0.947464, 0.074570,
		32.471462, 33.035484, 28.055159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696814, 33.251259, 28.149815>,  <32.253727, 33.698711, 28.002958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696814, 33.251259, 28.149815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014801, 33.036243, 28.262295>,  <32.205593, 32.907234, 28.329782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014801, 33.036243, 28.262295>,  <31.696814, 33.251259, 28.149815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014801, 33.036243, 28.262295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459601, -0.231106, 0.857530,
		-0.395971, -0.810949, -0.430777,
		0.794968, -0.537542, 0.281202,
		32.253292, 32.874981, 28.346655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457743, 32.622948, 28.417753>,  <31.696814, 33.251259, 28.149815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457743, 32.622948, 28.417753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828583, 32.666718, 28.561146>,  <32.051086, 32.692978, 28.647182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828583, 32.666718, 28.561146>,  <31.457743, 32.622948, 28.417753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828583, 32.666718, 28.561146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325239, -0.240503, 0.914537,
		0.186287, -0.964461, -0.187382,
		0.927101, 0.109422, 0.358482,
		32.106712, 32.699543, 28.668690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556448, 32.034206, 28.837246>,  <31.457743, 32.622948, 28.417753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556448, 32.034206, 28.837246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811710, 32.326469, 28.934324>,  <31.964869, 32.501827, 28.992571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811710, 32.326469, 28.934324>,  <31.556448, 32.034206, 28.837246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811710, 32.326469, 28.934324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304514, -0.049986, 0.951195,
		0.707127, -0.680915, 0.190595,
		0.638157, 0.730654, 0.242695,
		32.003159, 32.545666, 29.007133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869743, 31.830193, 29.536497>,  <31.556448, 32.034206, 28.837246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869743, 31.830193, 29.536497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929049, 32.224331, 29.502764>,  <31.964632, 32.460815, 29.482525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929049, 32.224331, 29.502764>,  <31.869743, 31.830193, 29.536497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929049, 32.224331, 29.502764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010875, 0.083645, 0.996436,
		0.988888, -0.148651, 0.001686,
		0.148262, 0.985346, -0.084332,
		31.973528, 32.519936, 29.477465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491253, 32.062645, 30.026878>,  <31.869743, 31.830193, 29.536497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491253, 32.062645, 30.026878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309563, 32.415428, 29.976543>,  <32.200550, 32.627098, 29.946342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309563, 32.415428, 29.976543>,  <32.491253, 32.062645, 30.026878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309563, 32.415428, 29.976543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138182, 0.209286, 0.968042,
		0.880105, 0.422321, -0.216933,
		-0.454225, 0.881955, -0.125836,
		32.173294, 32.680016, 29.938793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898335, 32.422756, 30.459354>,  <32.491253, 32.062645, 30.026878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898335, 32.422756, 30.459354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575119, 32.653984, 30.413895>,  <32.381191, 32.792721, 30.386618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575119, 32.653984, 30.413895>,  <32.898335, 32.422756, 30.459354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575119, 32.653984, 30.413895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095763, 0.319225, 0.942828,
		0.581296, 0.750957, -0.313303,
		-0.808037, 0.578065, -0.113650,
		32.332706, 32.827404, 30.379799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096607, 33.094555, 30.785244>,  <32.898335, 32.422756, 30.459354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096607, 33.094555, 30.785244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697186, 33.078445, 30.771004>,  <32.457531, 33.068779, 30.762459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697186, 33.078445, 30.771004>,  <33.096607, 33.094555, 30.785244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697186, 33.078445, 30.771004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048838, 0.403055, 0.913872,
		-0.022458, 0.914289, -0.404439,
		-0.998554, -0.040276, -0.035601,
		32.397621, 33.066364, 30.760324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880135, 33.699089, 31.078140>,  <33.096607, 33.094555, 30.785244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880135, 33.699089, 31.078140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573845, 33.443501, 31.107494>,  <32.390072, 33.290146, 31.125107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573845, 33.443501, 31.107494>,  <32.880135, 33.699089, 31.078140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573845, 33.443501, 31.107494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103184, 0.234667, 0.966584,
		-0.634839, 0.732563, -0.245622,
		-0.765723, -0.638970, 0.073387,
		32.344128, 33.251808, 31.129511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438114, 34.075127, 31.459957>,  <32.880135, 33.699089, 31.078140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438114, 34.075127, 31.459957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.285160, 33.705814, 31.474548>,  <32.193386, 33.484226, 31.483303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.285160, 33.705814, 31.474548>,  <32.438114, 34.075127, 31.459957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285160, 33.705814, 31.474548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310693, 0.165658, 0.935963,
		-0.870201, 0.346566, -0.350203,
		-0.382387, -0.923282, 0.036480,
		32.170444, 33.428829, 31.485493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780582, 34.150532, 31.623737>,  <32.438114, 34.075127, 31.459957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780582, 34.150532, 31.623737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910942, 33.796062, 31.755486>,  <31.989159, 33.583382, 31.834534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910942, 33.796062, 31.755486>,  <31.780582, 34.150532, 31.623737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910942, 33.796062, 31.755486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258345, 0.251651, 0.932700,
		-0.909421, -0.389059, -0.146926,
		0.325901, -0.886174, 0.329368,
		32.008713, 33.530209, 31.854296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250967, 33.847630, 32.052307>,  <31.780582, 34.150532, 31.623737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250967, 33.847630, 32.052307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.569557, 33.640827, 32.177738>,  <31.760712, 33.516747, 32.252998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.569557, 33.640827, 32.177738>,  <31.250967, 33.847630, 32.052307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569557, 33.640827, 32.177738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358108, 0.014555, 0.933567,
		-0.487226, -0.855857, -0.173552,
		0.796473, -0.517008, 0.313581,
		31.808498, 33.485725, 32.271812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585981, 33.598320, 32.231552>,  <31.250967, 33.847630, 32.052307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585981, 33.598320, 32.231552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208551, 33.691273, 32.325928>,  <29.982094, 33.747044, 32.382553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208551, 33.691273, 32.325928>,  <30.585981, 33.598320, 32.231552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208551, 33.691273, 32.325928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144047, 0.353531, -0.924265,
		-0.298192, -0.906100, -0.300109,
		-0.943574, 0.232378, 0.235941,
		29.925480, 33.760986, 32.396709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032917, 33.191608, 31.842615>,  <30.585981, 33.598320, 32.231552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032917, 33.191608, 31.842615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.883118, 33.552769, 31.927010>,  <29.793238, 33.769466, 31.977646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.883118, 33.552769, 31.927010>,  <30.032917, 33.191608, 31.842615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883118, 33.552769, 31.927010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206273, 0.140717, -0.968323,
		-0.903992, -0.406157, 0.133547,
		-0.374499, 0.902904, 0.210986,
		29.770767, 33.823639, 31.990305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294966, 33.235538, 31.537893>,  <30.032917, 33.191608, 31.842615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294966, 33.235538, 31.537893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.489983, 33.581070, 31.588644>,  <29.606993, 33.788391, 31.619095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.489983, 33.581070, 31.588644>,  <29.294966, 33.235538, 31.537893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489983, 33.581070, 31.588644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198764, 0.251314, -0.947277,
		-0.850173, 0.436621, 0.294225,
		0.487544, 0.863830, 0.126876,
		29.636246, 33.840218, 31.626707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854980, 33.760143, 31.260368>,  <29.294966, 33.235538, 31.537893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854980, 33.760143, 31.260368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.222586, 33.917641, 31.252497>,  <29.443148, 34.012138, 31.247774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.222586, 33.917641, 31.252497>,  <28.854980, 33.760143, 31.260368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222586, 33.917641, 31.252497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136201, 0.270268, -0.953103,
		-0.369958, 0.878592, 0.302007,
		0.919011, 0.393741, -0.019677,
		29.498289, 34.035763, 31.246593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875586, 34.350185, 30.906771>,  <28.854980, 33.760143, 31.260368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875586, 34.350185, 30.906771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270744, 34.294430, 30.879553>,  <29.507839, 34.260975, 30.863222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270744, 34.294430, 30.879553>,  <28.875586, 34.350185, 30.906771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270744, 34.294430, 30.879553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016800, 0.339948, -0.940294,
		0.154201, 0.930057, 0.333492,
		0.987897, -0.139391, -0.068045,
		29.567114, 34.252613, 30.859138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197603, 34.975491, 30.695950>,  <28.875586, 34.350185, 30.906771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197603, 34.975491, 30.695950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442797, 34.681076, 30.581059>,  <29.589912, 34.504425, 30.512123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442797, 34.681076, 30.581059>,  <29.197603, 34.975491, 30.695950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442797, 34.681076, 30.581059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074298, 0.415622, -0.906498,
		0.786596, 0.534326, 0.309455,
		0.612982, -0.736040, -0.287227,
		29.626692, 34.460262, 30.494890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765238, 35.364452, 30.371866>,  <29.197603, 34.975491, 30.695950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765238, 35.364452, 30.371866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754667, 34.993176, 30.223398>,  <29.748325, 34.770409, 30.134317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754667, 34.993176, 30.223398>,  <29.765238, 35.364452, 30.371866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754667, 34.993176, 30.223398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029313, 0.370423, -0.928401,
		0.999221, -0.035415, 0.017419,
		-0.026427, -0.928188, -0.371172,
		29.746738, 34.714718, 30.112047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296618, 35.343826, 29.840963>,  <29.765238, 35.364452, 30.371866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296618, 35.343826, 29.840963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089401, 35.010853, 29.762281>,  <29.965071, 34.811069, 29.715073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089401, 35.010853, 29.762281>,  <30.296618, 35.343826, 29.840963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089401, 35.010853, 29.762281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258677, 0.066731, -0.963656,
		0.815303, -0.550097, 0.180761,
		-0.518041, -0.832431, -0.196703,
		29.933989, 34.761124, 29.703270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762104, 35.167225, 29.483744>,  <30.296618, 35.343826, 29.840963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762104, 35.167225, 29.483744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438992, 34.946316, 29.401293>,  <30.245125, 34.813770, 29.351822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438992, 34.946316, 29.401293>,  <30.762104, 35.167225, 29.483744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438992, 34.946316, 29.401293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285437, -0.060497, -0.956486,
		0.515768, -0.831468, 0.206506,
		-0.807781, -0.552269, -0.206129,
		30.196657, 34.780636, 29.339455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939955, 34.660507, 29.023920>,  <30.762104, 35.167225, 29.483744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939955, 34.660507, 29.023920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.545120, 34.672386, 28.960949>,  <30.308220, 34.679512, 28.923166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.545120, 34.672386, 28.960949>,  <30.939955, 34.660507, 29.023920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545120, 34.672386, 28.960949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159291, 0.077262, -0.984204,
		-0.017067, -0.996568, -0.080995,
		-0.987084, 0.029699, -0.157426,
		30.248995, 34.681293, 28.913721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782833, 34.144753, 28.544930>,  <30.939955, 34.660507, 29.023920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782833, 34.144753, 28.544930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469057, 34.392826, 28.542660>,  <30.280792, 34.541668, 28.541298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469057, 34.392826, 28.542660>,  <30.782833, 34.144753, 28.544930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469057, 34.392826, 28.542660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071000, -0.098885, -0.992563,
		-0.616128, -0.778202, 0.121601,
		-0.784439, 0.620180, -0.005674,
		30.233725, 34.578880, 28.540958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207020, 33.712463, 28.097815>,  <30.782833, 34.144753, 28.544930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207020, 33.712463, 28.097815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109005, 34.099705, 28.076880>,  <30.050196, 34.332050, 28.064318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109005, 34.099705, 28.076880>,  <30.207020, 33.712463, 28.097815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109005, 34.099705, 28.076880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049791, -0.066477, -0.996545,
		-0.968235, -0.241584, 0.064492,
		-0.245036, 0.968100, -0.052337,
		30.035494, 34.390137, 28.061178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639183, 33.804367, 27.705936>,  <30.207020, 33.712463, 28.097815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639183, 33.804367, 27.705936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.828836, 34.155842, 27.683636>,  <29.942629, 34.366726, 27.670256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.828836, 34.155842, 27.683636>,  <29.639183, 33.804367, 27.705936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828836, 34.155842, 27.683636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082424, -0.018746, -0.996421,
		-0.876587, 0.477031, 0.063537,
		0.474132, 0.878687, -0.055752,
		29.971077, 34.419449, 27.666910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264603, 34.108322, 27.183310>,  <29.639183, 33.804367, 27.705936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264603, 34.108322, 27.183310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592657, 34.334488, 27.218367>,  <29.789490, 34.470188, 27.239401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592657, 34.334488, 27.218367>,  <29.264603, 34.108322, 27.183310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592657, 34.334488, 27.218367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067574, 0.056386, -0.996120,
		-0.568164, 0.822876, 0.008037,
		0.820136, 0.565417, 0.087642,
		29.838697, 34.504112, 27.244659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148985, 34.787006, 26.792177>,  <29.264603, 34.108322, 27.183310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148985, 34.787006, 26.792177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545450, 34.751820, 26.831892>,  <29.783329, 34.730705, 26.855721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545450, 34.751820, 26.831892>,  <29.148985, 34.787006, 26.792177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545450, 34.751820, 26.831892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124533, 0.359250, -0.924895,
		0.045694, 0.929086, 0.367030,
		0.991163, -0.087970, 0.099287,
		29.842798, 34.725430, 26.861677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399744, 35.488018, 26.630121>,  <29.148985, 34.787006, 26.792177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399744, 35.488018, 26.630121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684710, 35.211994, 26.579071>,  <29.855688, 35.046379, 26.548441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684710, 35.211994, 26.579071>,  <29.399744, 35.488018, 26.630121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684710, 35.211994, 26.579071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304222, 0.467575, -0.829954,
		0.632389, 0.552444, 0.543037,
		0.712414, -0.690057, -0.127624,
		29.898434, 35.004978, 26.540785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860445, 35.857868, 26.227419>,  <29.399744, 35.488018, 26.630121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860445, 35.857868, 26.227419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.970453, 35.475746, 26.184036>,  <30.036459, 35.246475, 26.158007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.970453, 35.475746, 26.184036>,  <29.860445, 35.857868, 26.227419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970453, 35.475746, 26.184036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370379, 0.209371, -0.904977,
		0.887234, 0.208717, 0.411405,
		0.275020, -0.955302, -0.108456,
		30.052959, 35.189156, 26.151499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700653, 35.750793, 26.215702>,  <29.860445, 35.857868, 26.227419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700653, 35.750793, 26.215702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490646, 35.466526, 26.028383>,  <30.364643, 35.295963, 25.915993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490646, 35.466526, 26.028383>,  <30.700653, 35.750793, 26.215702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490646, 35.466526, 26.028383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446308, 0.238616, -0.862480,
		0.724684, -0.661821, 0.191902,
		-0.525016, -0.710673, -0.468297,
		30.333141, 35.253323, 25.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062500, 35.620079, 25.699171>,  <30.700653, 35.750793, 26.215702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062500, 35.620079, 25.699171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727367, 35.441521, 25.573463>,  <30.526287, 35.334385, 25.498039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727367, 35.441521, 25.573463>,  <31.062500, 35.620079, 25.699171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727367, 35.441521, 25.573463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266408, 0.168148, -0.949080,
		0.476512, -0.878894, -0.021955,
		-0.837832, -0.446399, -0.314269,
		30.476017, 35.307602, 25.479183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235298, 35.406830, 25.097778>,  <31.062500, 35.620079, 25.699171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235298, 35.406830, 25.097778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837109, 35.399704, 25.060434>,  <30.598194, 35.395428, 25.038029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837109, 35.399704, 25.060434>,  <31.235298, 35.406830, 25.097778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837109, 35.399704, 25.060434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083999, 0.294642, -0.951909,
		0.044468, -0.955442, -0.291811,
		-0.995473, -0.017818, -0.093359,
		30.538467, 35.394360, 25.032427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124464, 35.210972, 24.385782>,  <31.235298, 35.406830, 25.097778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124464, 35.210972, 24.385782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.770504, 35.362320, 24.494440>,  <30.558128, 35.453129, 24.559635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.770504, 35.362320, 24.494440>,  <31.124464, 35.210972, 24.385782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770504, 35.362320, 24.494440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147519, 0.325520, -0.933957,
		-0.441807, -0.866529, -0.232235,
		-0.884898, 0.378370, 0.271646,
		30.505035, 35.475830, 24.575933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623377, 35.014511, 23.816498>,  <31.124464, 35.210972, 24.385782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623377, 35.014511, 23.816498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484406, 35.333141, 24.014389>,  <30.401022, 35.524319, 24.133123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484406, 35.333141, 24.014389>,  <30.623377, 35.014511, 23.816498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484406, 35.333141, 24.014389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019766, 0.521254, -0.853173,
		-0.937498, -0.306195, -0.165353,
		-0.347428, 0.796579, 0.494727,
		30.380177, 35.572117, 24.162807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226154, 35.255989, 23.376057>,  <30.623377, 35.014511, 23.816498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226154, 35.255989, 23.376057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.261087, 35.565563, 23.626944>,  <30.282047, 35.751308, 23.777475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.261087, 35.565563, 23.626944>,  <30.226154, 35.255989, 23.376057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261087, 35.565563, 23.626944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025747, 0.631169, -0.775218,
		-0.995847, 0.051552, 0.075047,
		0.087332, 0.773931, 0.627220,
		30.287287, 35.797741, 23.815109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715525, 35.678383, 23.120150>,  <30.226154, 35.255989, 23.376057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715525, 35.678383, 23.120150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.965940, 35.915218, 23.323130>,  <30.116190, 36.057320, 23.444918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.965940, 35.915218, 23.323130>,  <29.715525, 35.678383, 23.120150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965940, 35.915218, 23.323130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009638, 0.644825, -0.764269,
		-0.779732, 0.483353, 0.397979,
		0.626039, 0.592089, 0.507450,
		30.153751, 36.092846, 23.475365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447506, 36.384083, 22.942133>,  <29.715525, 35.678383, 23.120150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447506, 36.384083, 22.942133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.823708, 36.419819, 23.073265>,  <30.049429, 36.441261, 23.151943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.823708, 36.419819, 23.073265>,  <29.447506, 36.384083, 22.942133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823708, 36.419819, 23.073265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211379, 0.601551, -0.770361,
		-0.266032, 0.793823, 0.546875,
		0.940503, 0.089342, 0.327829,
		30.105858, 36.446621, 23.171614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504278, 37.078224, 23.089481>,  <29.447506, 36.384083, 22.942133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504278, 37.078224, 23.089481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.868999, 36.929474, 23.019829>,  <30.087831, 36.840221, 22.978037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.868999, 36.929474, 23.019829>,  <29.504278, 37.078224, 23.089481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868999, 36.929474, 23.019829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150436, 0.697103, -0.701011,
		0.382079, 0.612988, 0.691564,
		0.911803, -0.371878, -0.174132,
		30.142540, 36.817909, 22.967588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918871, 37.720531, 23.074499>,  <29.504278, 37.078224, 23.089481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918871, 37.720531, 23.074499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.122547, 37.430328, 22.889303>,  <30.244753, 37.256207, 22.778187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.122547, 37.430328, 22.889303>,  <29.918871, 37.720531, 23.074499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122547, 37.430328, 22.889303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158219, 0.607690, -0.778254,
		0.845987, 0.323025, 0.424219,
		0.509189, -0.725512, -0.462989,
		30.275303, 37.212673, 22.750406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493483, 38.030491, 22.779934>,  <29.918871, 37.720531, 23.074499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493483, 38.030491, 22.779934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.486357, 37.687984, 22.573442>,  <30.482080, 37.482479, 22.449547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.486357, 37.687984, 22.573442>,  <30.493483, 38.030491, 22.779934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486357, 37.687984, 22.573442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274766, 0.492240, -0.825957,
		0.961346, -0.156556, 0.226504,
		-0.017814, -0.856266, -0.516229,
		30.481012, 37.431107, 22.418573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346794, 38.023468, 23.047533>,  <30.493483, 38.030491, 22.779934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346794, 38.023468, 23.047533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710163, 38.171246, 23.125790>,  <31.928185, 38.259911, 23.172743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710163, 38.171246, 23.125790>,  <31.346794, 38.023468, 23.047533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710163, 38.171246, 23.125790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107046, -0.246817, 0.963132,
		0.404111, -0.895875, -0.184667,
		0.908425, 0.369444, 0.195641,
		31.982691, 38.282078, 23.184483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592649, 37.649113, 23.564426>,  <31.346794, 38.023468, 23.047533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592649, 37.649113, 23.564426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846884, 37.955532, 23.602804>,  <31.999424, 38.139385, 23.625830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846884, 37.955532, 23.602804>,  <31.592649, 37.649113, 23.564426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846884, 37.955532, 23.602804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050422, -0.165196, 0.984971,
		0.770384, -0.621194, -0.143622,
		0.635584, 0.766047, 0.095942,
		32.037560, 38.185345, 23.631586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149490, 37.441029, 23.919708>,  <31.592649, 37.649113, 23.564426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149490, 37.441029, 23.919708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123150, 37.835033, 23.983482>,  <32.107346, 38.071434, 24.021746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123150, 37.835033, 23.983482>,  <32.149490, 37.441029, 23.919708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123150, 37.835033, 23.983482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048006, -0.156468, 0.986516,
		0.996674, 0.072621, -0.036982,
		-0.065856, 0.985010, 0.159434,
		32.103394, 38.130535, 24.031313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746403, 37.531277, 24.285337>,  <32.149490, 37.441029, 23.919708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746403, 37.531277, 24.285337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529575, 37.855495, 24.374043>,  <32.399479, 38.050026, 24.427265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529575, 37.855495, 24.374043>,  <32.746403, 37.531277, 24.285337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529575, 37.855495, 24.374043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219786, -0.117965, 0.968390,
		0.811085, 0.573672, -0.114202,
		-0.542066, 0.810546, 0.221764,
		32.366955, 38.098660, 24.440573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074459, 37.803211, 24.868679>,  <32.746403, 37.531277, 24.285337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074459, 37.803211, 24.868679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712646, 37.973312, 24.856173>,  <32.495560, 38.075375, 24.848669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712646, 37.973312, 24.856173>,  <33.074459, 37.803211, 24.868679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712646, 37.973312, 24.856173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057369, -0.048710, 0.997164,
		0.422528, 0.903761, 0.068456,
		-0.904533, 0.425257, -0.031266,
		32.441288, 38.100891, 24.846792>
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
