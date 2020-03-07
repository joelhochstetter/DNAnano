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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<40.548473, 48.754585, 54.382767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813637, 48.504761, 54.547924>,  <40.972733, 48.354866, 54.647018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813637, 48.504761, 54.547924>,  <40.548473, 48.754585, 54.382767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813637, 48.504761, 54.547924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022833, -0.534355, -0.844952,
		0.748356, 0.569550, -0.339965,
		0.662904, -0.624563, 0.412892,
		41.012508, 48.317390, 54.671791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962818, 48.550320, 53.841423>,  <40.548473, 48.754585, 54.382767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962818, 48.550320, 53.841423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028740, 48.274773, 54.123787>,  <41.068295, 48.109444, 54.293205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028740, 48.274773, 54.123787>,  <40.962818, 48.550320, 53.841423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028740, 48.274773, 54.123787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036605, -0.710927, -0.702313,
		0.985646, 0.141587, -0.091951,
		0.164809, -0.688866, 0.705905,
		41.078182, 48.068111, 54.335560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430157, 48.040989, 53.609024>,  <40.962818, 48.550320, 53.841423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430157, 48.040989, 53.609024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279846, 47.839447, 53.920132>,  <41.189659, 47.718521, 54.106796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279846, 47.839447, 53.920132>,  <41.430157, 48.040989, 53.609024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279846, 47.839447, 53.920132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032458, -0.831606, -0.554417,
		0.926143, -0.233580, 0.296141,
		-0.375774, -0.503857, 0.777768,
		41.167114, 47.688290, 54.153461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777672, 47.527287, 53.654007>,  <41.430157, 48.040989, 53.609024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777672, 47.527287, 53.654007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454475, 47.394005, 53.848381>,  <41.260559, 47.314034, 53.965004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454475, 47.394005, 53.848381>,  <41.777672, 47.527287, 53.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454475, 47.394005, 53.848381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022481, -0.806696, -0.590539,
		0.588770, -0.488073, 0.644310,
		-0.807988, -0.333207, 0.485931,
		41.212078, 47.294044, 53.994160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935959, 46.886189, 53.958427>,  <41.777672, 47.527287, 53.654007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935959, 46.886189, 53.958427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536285, 46.876450, 53.945480>,  <41.296482, 46.870605, 53.937714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536285, 46.876450, 53.945480>,  <41.935959, 46.886189, 53.958427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536285, 46.876450, 53.945480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036513, -0.887347, -0.459654,
		-0.017530, -0.460459, 0.887508,
		-0.999180, -0.024348, -0.032368,
		41.236530, 46.869144, 53.935768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839489, 46.132339, 53.995857>,  <41.935959, 46.886189, 53.958427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839489, 46.132339, 53.995857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480156, 46.272339, 53.889652>,  <41.264557, 46.356339, 53.825932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480156, 46.272339, 53.889652>,  <41.839489, 46.132339, 53.995857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480156, 46.272339, 53.889652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040711, -0.668095, -0.742961,
		-0.437421, -0.656619, 0.614422,
		-0.898335, 0.350000, -0.265508,
		41.210655, 46.377338, 53.810001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341618, 45.537991, 53.951946>,  <41.839489, 46.132339, 53.995857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341618, 45.537991, 53.951946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212341, 45.823261, 53.703133>,  <41.134773, 45.994423, 53.553844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212341, 45.823261, 53.703133>,  <41.341618, 45.537991, 53.951946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212341, 45.823261, 53.703133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117299, -0.682428, -0.721480,
		-0.939035, -0.160214, 0.304211,
		-0.323193, 0.713179, -0.622030,
		41.115383, 46.037216, 53.516525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809994, 45.185051, 53.710518>,  <41.341618, 45.537991, 53.951946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809994, 45.185051, 53.710518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914780, 45.475040, 53.455711>,  <40.977654, 45.649033, 53.302826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914780, 45.475040, 53.455711>,  <40.809994, 45.185051, 53.710518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914780, 45.475040, 53.455711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206723, -0.602595, -0.770807,
		-0.942677, 0.333612, -0.007992,
		0.261966, 0.724970, -0.637018,
		40.993370, 45.692532, 53.264606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242130, 45.305950, 53.263306>,  <40.809994, 45.185051, 53.710518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242130, 45.305950, 53.263306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571480, 45.435593, 53.076965>,  <40.769089, 45.513378, 52.965160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571480, 45.435593, 53.076965>,  <40.242130, 45.305950, 53.263306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571480, 45.435593, 53.076965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247595, -0.533470, -0.808768,
		-0.510646, 0.781257, -0.358996,
		0.823370, 0.324109, -0.465849,
		40.818489, 45.532825, 52.937210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169033, 45.141094, 52.583851>,  <40.242130, 45.305950, 53.263306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169033, 45.141094, 52.583851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556160, 45.238575, 52.558769>,  <40.788437, 45.297062, 52.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556160, 45.238575, 52.558769>,  <40.169033, 45.141094, 52.583851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556160, 45.238575, 52.558769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053433, -0.442541, -0.895155,
		-0.245898, 0.863000, -0.441322,
		0.967822, 0.243698, -0.062707,
		40.846508, 45.311684, 52.539955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317173, 45.230713, 51.886150>,  <40.169033, 45.141094, 52.583851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317173, 45.230713, 51.886150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683662, 45.184700, 52.039673>,  <40.903557, 45.157093, 52.131786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683662, 45.184700, 52.039673>,  <40.317173, 45.230713, 51.886150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683662, 45.184700, 52.039673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349066, -0.241103, -0.905551,
		0.196707, 0.963658, -0.180749,
		0.916220, -0.115035, 0.383806,
		40.958527, 45.150188, 52.154816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739780, 45.615204, 51.410637>,  <40.317173, 45.230713, 51.886150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739780, 45.615204, 51.410637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933754, 45.323124, 51.603157>,  <41.050137, 45.147877, 51.718670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933754, 45.323124, 51.603157>,  <40.739780, 45.615204, 51.410637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933754, 45.323124, 51.603157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330999, -0.356160, -0.873836,
		0.809496, 0.583059, 0.068983,
		0.484929, -0.730200, 0.481302,
		41.079231, 45.104065, 51.747547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339813, 45.582722, 51.092030>,  <40.739780, 45.615204, 51.410637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339813, 45.582722, 51.092030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335083, 45.229733, 51.280113>,  <41.332245, 45.017941, 51.392963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335083, 45.229733, 51.280113>,  <41.339813, 45.582722, 51.092030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335083, 45.229733, 51.280113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581213, -0.388717, -0.714905,
		0.813665, 0.264837, 0.517504,
		-0.011830, -0.882474, 0.470212,
		41.331535, 44.964989, 51.421177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088326, 45.440796, 51.364353>,  <41.339813, 45.582722, 51.092030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088326, 45.440796, 51.364353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852661, 45.124607, 51.297363>,  <41.711262, 44.934895, 51.257168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852661, 45.124607, 51.297363>,  <42.088326, 45.440796, 51.364353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852661, 45.124607, 51.297363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648070, -0.338484, -0.682227,
		0.482593, -0.510475, 0.711701,
		-0.589159, -0.790471, -0.167474,
		41.675915, 44.887466, 51.247120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600815, 44.830601, 51.179546>,  <42.088326, 45.440796, 51.364353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600815, 44.830601, 51.179546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244514, 44.704987, 51.048126>,  <42.030735, 44.629620, 50.969273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244514, 44.704987, 51.048126>,  <42.600815, 44.830601, 51.179546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244514, 44.704987, 51.048126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445297, -0.458359, -0.769167,
		0.090949, -0.831439, 0.548121,
		-0.890752, -0.314031, -0.328550,
		41.977287, 44.610779, 50.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748363, 44.171646, 50.937210>,  <42.600815, 44.830601, 51.179546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748363, 44.171646, 50.937210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390175, 44.241127, 50.773285>,  <42.175262, 44.282818, 50.674931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390175, 44.241127, 50.773285>,  <42.748363, 44.171646, 50.937210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390175, 44.241127, 50.773285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342945, -0.317679, -0.884007,
		-0.283744, -0.932152, 0.224904,
		-0.895477, 0.173702, -0.409816,
		42.121532, 44.293240, 50.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564247, 43.538097, 50.545036>,  <42.748363, 44.171646, 50.937210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564247, 43.538097, 50.545036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370010, 43.856472, 50.400436>,  <42.253468, 44.047497, 50.313675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370010, 43.856472, 50.400436>,  <42.564247, 43.538097, 50.545036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370010, 43.856472, 50.400436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412274, -0.156144, -0.897580,
		-0.770862, -0.584899, -0.252321,
		-0.485595, 0.795935, -0.361504,
		42.224331, 44.095253, 50.291985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384727, 43.281738, 49.939304>,  <42.564247, 43.538097, 50.545036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384727, 43.281738, 49.939304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319435, 43.672276, 49.882591>,  <42.280262, 43.906597, 49.848564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319435, 43.672276, 49.882591>,  <42.384727, 43.281738, 49.939304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319435, 43.672276, 49.882591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393938, -0.067259, -0.916673,
		-0.904528, -0.205479, -0.373642,
		-0.163226, 0.976348, -0.141783,
		42.270466, 43.965179, 49.840057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250965, 43.284039, 49.232502>,  <42.384727, 43.281738, 49.939304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250965, 43.284039, 49.232502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278336, 43.674644, 49.314220>,  <42.294758, 43.909008, 49.363251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278336, 43.674644, 49.314220>,  <42.250965, 43.284039, 49.232502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278336, 43.674644, 49.314220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410587, 0.159068, -0.897839,
		-0.909250, 0.145314, -0.390061,
		0.068422, 0.976515, 0.204297,
		42.298862, 43.967598, 49.375511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962368, 43.566544, 48.683525>,  <42.250965, 43.284039, 49.232502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962368, 43.566544, 48.683525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199203, 43.853191, 48.830978>,  <42.341305, 44.025181, 48.919449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199203, 43.853191, 48.830978>,  <41.962368, 43.566544, 48.683525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199203, 43.853191, 48.830978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392944, 0.142639, -0.908432,
		-0.703585, 0.682719, -0.197138,
		0.592084, 0.716623, 0.368629,
		42.376827, 44.068180, 48.941566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020138, 44.047344, 48.212719>,  <41.962368, 43.566544, 48.683525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020138, 44.047344, 48.212719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364380, 44.090698, 48.411758>,  <42.570927, 44.116711, 48.531181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364380, 44.090698, 48.411758>,  <42.020138, 44.047344, 48.212719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364380, 44.090698, 48.411758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481748, 0.143582, -0.864467,
		-0.165145, 0.983685, 0.071351,
		0.860608, 0.108389, 0.497600,
		42.622562, 44.123215, 48.561039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327049, 44.493164, 47.770424>,  <42.020138, 44.047344, 48.212719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327049, 44.493164, 47.770424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623848, 44.346046, 47.994629>,  <42.801926, 44.257774, 48.129150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623848, 44.346046, 47.994629>,  <42.327049, 44.493164, 47.770424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623848, 44.346046, 47.994629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652690, 0.205381, -0.729257,
		0.153100, 0.906943, 0.392448,
		0.741995, -0.367796, 0.560508,
		42.846447, 44.235706, 48.162781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861626, 44.889706, 47.582836>,  <42.327049, 44.493164, 47.770424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861626, 44.889706, 47.582836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052101, 44.580906, 47.751247>,  <43.166386, 44.395626, 47.852295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052101, 44.580906, 47.751247>,  <42.861626, 44.889706, 47.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052101, 44.580906, 47.751247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703570, 0.047287, -0.709051,
		0.527475, 0.633867, 0.565671,
		0.476193, -0.771995, 0.421027,
		43.194958, 44.349308, 47.877556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517925, 45.069714, 47.729263>,  <42.861626, 44.889706, 47.582836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517925, 45.069714, 47.729263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520325, 44.672222, 47.684586>,  <43.521767, 44.433727, 47.657780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520325, 44.672222, 47.684586>,  <43.517925, 45.069714, 47.729263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520325, 44.672222, 47.684586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703431, 0.083586, -0.705832,
		0.710738, -0.074336, 0.699518,
		0.006001, -0.993724, -0.111698,
		43.522125, 44.374104, 47.651077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273067, 44.793518, 47.455643>,  <43.517925, 45.069714, 47.729263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273067, 44.793518, 47.455643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020325, 44.487263, 47.407394>,  <43.868679, 44.303509, 47.378445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020325, 44.487263, 47.407394>,  <44.273067, 44.793518, 47.455643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020325, 44.487263, 47.407394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331123, -0.125934, -0.935146,
		0.700795, -0.630821, 0.333093,
		-0.631857, -0.765641, -0.120625,
		43.830769, 44.257572, 47.371208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597839, 44.320118, 47.087685>,  <44.273067, 44.793518, 47.455643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597839, 44.320118, 47.087685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216362, 44.229069, 47.009037>,  <43.987476, 44.174438, 46.961849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216362, 44.229069, 47.009037>,  <44.597839, 44.320118, 47.087685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216362, 44.229069, 47.009037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222089, -0.092040, -0.970673,
		0.202850, -0.969390, 0.138330,
		-0.953692, -0.227623, -0.196620,
		43.930256, 44.160782, 46.950050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669731, 43.689823, 46.698677>,  <44.597839, 44.320118, 47.087685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669731, 43.689823, 46.698677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316879, 43.849426, 46.598572>,  <44.105167, 43.945190, 46.538509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316879, 43.849426, 46.598572>,  <44.669731, 43.689823, 46.698677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316879, 43.849426, 46.598572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088962, -0.380625, -0.920440,
		-0.462525, -0.834213, 0.300264,
		-0.882132, 0.399015, -0.250262,
		44.052238, 43.969131, 46.523495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463753, 43.148834, 46.285065>,  <44.669731, 43.689823, 46.698677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463753, 43.148834, 46.285065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257698, 43.480728, 46.199108>,  <44.134064, 43.679863, 46.147533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257698, 43.480728, 46.199108>,  <44.463753, 43.148834, 46.285065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257698, 43.480728, 46.199108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058685, -0.215980, -0.974633,
		-0.855096, -0.514680, 0.062566,
		-0.515137, 0.829733, -0.214888,
		44.103157, 43.729649, 46.134644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164406, 42.938725, 45.711197>,  <44.463753, 43.148834, 46.285065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164406, 42.938725, 45.711197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086479, 43.331028, 45.706100>,  <44.039722, 43.566410, 45.703041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086479, 43.331028, 45.706100>,  <44.164406, 42.938725, 45.711197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086479, 43.331028, 45.706100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150395, -0.042708, -0.987703,
		-0.969242, -0.190501, 0.155821,
		-0.194813, 0.980758, -0.012744,
		44.028034, 43.625256, 45.702278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532314, 43.075680, 45.396320>,  <44.164406, 42.938725, 45.711197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532314, 43.075680, 45.396320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732430, 43.419472, 45.354355>,  <43.852501, 43.625748, 45.329174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732430, 43.419472, 45.354355>,  <43.532314, 43.075680, 45.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732430, 43.419472, 45.354355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189523, -0.009532, -0.981830,
		-0.844861, 0.511085, 0.158122,
		0.500291, 0.859477, -0.104916,
		43.882515, 43.677315, 45.322880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113289, 43.465775, 45.068676>,  <43.532314, 43.075680, 45.396320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113289, 43.465775, 45.068676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465187, 43.640160, 44.992790>,  <43.676327, 43.744789, 44.947258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465187, 43.640160, 44.992790>,  <43.113289, 43.465775, 45.068676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465187, 43.640160, 44.992790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191419, -0.040486, -0.980673,
		-0.435217, 0.899054, 0.047834,
		0.879741, 0.435962, -0.189716,
		43.729111, 43.770947, 44.935875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069260, 44.177181, 44.741879>,  <43.113289, 43.465775, 45.068676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069260, 44.177181, 44.741879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434074, 44.040932, 44.650513>,  <43.652962, 43.959183, 44.595695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434074, 44.040932, 44.650513>,  <43.069260, 44.177181, 44.741879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434074, 44.040932, 44.650513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199726, 0.117536, -0.972777,
		0.358193, 0.932826, 0.039166,
		0.912035, -0.340620, -0.228410,
		43.707684, 43.938747, 44.581989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356850, 44.618298, 44.220886>,  <43.069260, 44.177181, 44.741879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356850, 44.618298, 44.220886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544624, 44.267479, 44.180054>,  <43.657291, 44.056988, 44.155556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544624, 44.267479, 44.180054>,  <43.356850, 44.618298, 44.220886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544624, 44.267479, 44.180054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135423, 0.042727, -0.989866,
		0.872517, 0.478508, -0.098714,
		0.469441, -0.877043, -0.102081,
		43.685455, 44.004368, 44.149429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916290, 44.617214, 43.643520>,  <43.356850, 44.618298, 44.220886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916290, 44.617214, 43.643520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791199, 44.241287, 43.698578>,  <43.716145, 44.015732, 43.731613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791199, 44.241287, 43.698578>,  <43.916290, 44.617214, 43.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791199, 44.241287, 43.698578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523500, 0.049622, -0.850580,
		0.792558, -0.338057, -0.507512,
		-0.312728, -0.939816, 0.137644,
		43.697380, 43.959343, 43.739872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756199, 44.417805, 42.970665>,  <43.916290, 44.617214, 43.643520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756199, 44.417805, 42.970665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643112, 44.093437, 43.175598>,  <43.575260, 43.898815, 43.298557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643112, 44.093437, 43.175598>,  <43.756199, 44.417805, 42.970665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643112, 44.093437, 43.175598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672151, -0.213567, -0.708945,
		0.684313, -0.544795, -0.484679,
		-0.282718, -0.810918, 0.512331,
		43.558296, 43.850163, 43.329296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813881, 43.891003, 42.479404>,  <43.756199, 44.417805, 42.970665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813881, 43.891003, 42.479404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547821, 43.810287, 42.766975>,  <43.388187, 43.761860, 42.939518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547821, 43.810287, 42.766975>,  <43.813881, 43.891003, 42.479404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547821, 43.810287, 42.766975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674857, -0.249645, -0.694439,
		0.319607, -0.947079, 0.029872,
		-0.665146, -0.201788, 0.718931,
		43.348278, 43.749752, 42.982655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493999, 43.197678, 42.363796>,  <43.813881, 43.891003, 42.479404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493999, 43.197678, 42.363796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242790, 43.423927, 42.577583>,  <43.092064, 43.559677, 42.705856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242790, 43.423927, 42.577583>,  <43.493999, 43.197678, 42.363796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242790, 43.423927, 42.577583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714974, -0.148214, -0.683261,
		-0.307253, -0.811234, 0.497488,
		-0.628019, 0.565625, 0.534472,
		43.054386, 43.593616, 42.737926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878120, 42.751682, 42.341717>,  <43.493999, 43.197678, 42.363796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878120, 42.751682, 42.341717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737556, 43.118294, 42.418114>,  <42.653217, 43.338261, 42.463951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737556, 43.118294, 42.418114>,  <42.878120, 42.751682, 42.341717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737556, 43.118294, 42.418114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587885, -0.057255, -0.806916,
		-0.728630, -0.395839, 0.558936,
		-0.351410, 0.916533, 0.190990,
		42.632133, 43.393253, 42.475410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089272, 42.689297, 42.289001>,  <42.878120, 42.751682, 42.341717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089272, 42.689297, 42.289001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151802, 43.083622, 42.264542>,  <42.189320, 43.320217, 42.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151802, 43.083622, 42.264542>,  <42.089272, 42.689297, 42.289001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151802, 43.083622, 42.264542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698720, 0.066616, -0.712287,
		-0.698107, 0.154071, 0.699220,
		0.156322, 0.985812, -0.061147,
		42.198700, 43.379364, 42.246197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454746, 42.911064, 42.072910>,  <42.089272, 42.689297, 42.289001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454746, 42.911064, 42.072910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700104, 43.222881, 42.022228>,  <41.847321, 43.409973, 41.991817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700104, 43.222881, 42.022228>,  <41.454746, 42.911064, 42.072910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700104, 43.222881, 42.022228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555198, 0.311521, -0.771174,
		-0.561694, 0.543382, 0.623888,
		0.613396, 0.779545, -0.126705,
		41.884121, 43.456745, 41.984215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962902, 43.529396, 42.000702>,  <41.454746, 42.911064, 42.072910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962902, 43.529396, 42.000702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322289, 43.615780, 41.847801>,  <41.537922, 43.667610, 41.756062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322289, 43.615780, 41.847801>,  <40.962902, 43.529396, 42.000702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322289, 43.615780, 41.847801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437232, 0.519026, -0.734466,
		0.039780, 0.827026, 0.560755,
		0.898468, 0.215963, -0.382249,
		41.591827, 43.680569, 41.733128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903820, 44.226181, 41.756027>,  <40.962902, 43.529396, 42.000702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903820, 44.226181, 41.756027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206177, 44.059105, 41.554371>,  <41.387592, 43.958858, 41.433376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206177, 44.059105, 41.554371>,  <40.903820, 44.226181, 41.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206177, 44.059105, 41.554371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231417, 0.549873, -0.802550,
		0.612429, 0.723311, 0.318986,
		0.755895, -0.417686, -0.504144,
		41.432945, 43.933800, 41.403126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236015, 44.767582, 41.387745>,  <40.903820, 44.226181, 41.756027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236015, 44.767582, 41.387745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307259, 44.410469, 41.222233>,  <41.350002, 44.196201, 41.122925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307259, 44.410469, 41.222233>,  <41.236015, 44.767582, 41.387745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307259, 44.410469, 41.222233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259278, 0.363066, -0.894962,
		0.949239, 0.266680, -0.166816,
		0.178104, -0.892785, -0.413781,
		41.360691, 44.142635, 41.098099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742504, 44.994904, 40.908165>,  <41.236015, 44.767582, 41.387745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742504, 44.994904, 40.908165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615013, 44.632870, 40.795574>,  <41.538517, 44.415649, 40.728020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615013, 44.632870, 40.795574>,  <41.742504, 44.994904, 40.908165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615013, 44.632870, 40.795574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202322, 0.355086, -0.912677,
		0.926001, -0.233947, -0.296295,
		-0.318728, -0.905087, -0.281478,
		41.519394, 44.361343, 40.711132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114048, 44.881725, 40.336807>,  <41.742504, 44.994904, 40.908165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114048, 44.881725, 40.336807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808243, 44.625713, 40.306152>,  <41.624760, 44.472107, 40.287758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808243, 44.625713, 40.306152>,  <42.114048, 44.881725, 40.336807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808243, 44.625713, 40.306152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144662, 0.286213, -0.947183,
		0.628163, -0.713050, -0.311402,
		-0.764516, -0.640033, -0.076637,
		41.578888, 44.433704, 40.283161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186539, 44.452374, 39.682381>,  <42.114048, 44.881725, 40.336807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186539, 44.452374, 39.682381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798965, 44.426563, 39.777889>,  <41.566422, 44.411076, 39.835194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798965, 44.426563, 39.777889>,  <42.186539, 44.452374, 39.682381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798965, 44.426563, 39.777889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247292, 0.234690, -0.940089,
		0.004624, -0.969926, -0.243355,
		-0.968930, -0.064527, 0.238769,
		41.508286, 44.407204, 39.849522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852428, 44.051350, 39.143768>,  <42.186539, 44.452374, 39.682381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852428, 44.051350, 39.143768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560265, 44.261856, 39.317917>,  <41.384968, 44.388161, 39.422405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560265, 44.261856, 39.317917>,  <41.852428, 44.051350, 39.143768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560265, 44.261856, 39.317917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351815, 0.256471, -0.900249,
		-0.585429, -0.810721, -0.002181,
		-0.730410, 0.526265, 0.435369,
		41.341141, 44.419735, 39.448528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258377, 43.886768, 38.762794>,  <41.852428, 44.051350, 39.143768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258377, 43.886768, 38.762794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139168, 44.219200, 38.950619>,  <41.067642, 44.418659, 39.063313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139168, 44.219200, 38.950619>,  <41.258377, 43.886768, 38.762794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139168, 44.219200, 38.950619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404327, 0.335698, -0.850780,
		-0.864699, -0.443404, 0.235985,
		-0.298019, 0.831084, 0.469558,
		41.049763, 44.468525, 39.091488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662663, 44.041035, 38.423420>,  <41.258377, 43.886768, 38.762794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662663, 44.041035, 38.423420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774849, 44.383320, 38.597363>,  <40.842159, 44.588692, 38.701729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774849, 44.383320, 38.597363>,  <40.662663, 44.041035, 38.423420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774849, 44.383320, 38.597363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203762, 0.495793, -0.844198,
		-0.937987, 0.148160, 0.313414,
		0.280465, 0.855709, 0.434859,
		40.858990, 44.640034, 38.727821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265751, 44.524578, 38.153481>,  <40.662663, 44.041035, 38.423420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265751, 44.524578, 38.153481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556595, 44.768879, 38.278885>,  <40.731102, 44.915459, 38.354126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556595, 44.768879, 38.278885>,  <40.265751, 44.524578, 38.153481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556595, 44.768879, 38.278885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124012, 0.566001, -0.815024,
		-0.675226, 0.553734, 0.487287,
		0.727111, 0.610755, 0.313509,
		40.774727, 44.952106, 38.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962269, 45.202560, 37.989429>,  <40.265751, 44.524578, 38.153481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962269, 45.202560, 37.989429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355972, 45.262390, 38.027092>,  <40.592194, 45.298290, 38.049690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355972, 45.262390, 38.027092>,  <39.962269, 45.202560, 37.989429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355972, 45.262390, 38.027092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018874, 0.618619, -0.785464,
		-0.175732, 0.771322, 0.611703,
		0.984257, 0.149577, 0.094153,
		40.651249, 45.307262, 38.055340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045990, 45.885777, 37.950291>,  <39.962269, 45.202560, 37.989429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045990, 45.885777, 37.950291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418846, 45.765171, 37.870087>,  <40.642559, 45.692806, 37.821964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418846, 45.765171, 37.870087>,  <40.045990, 45.885777, 37.950291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418846, 45.765171, 37.870087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114600, 0.770934, -0.626520,
		0.343483, 0.561027, 0.753172,
		0.932141, -0.301512, -0.200509,
		40.698490, 45.674717, 37.809933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482277, 46.499405, 37.922997>,  <40.045990, 45.885777, 37.950291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482277, 46.499405, 37.922997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653000, 46.208725, 37.707687>,  <40.755432, 46.034317, 37.578503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653000, 46.208725, 37.707687>,  <40.482277, 46.499405, 37.922997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653000, 46.208725, 37.707687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133399, 0.639290, -0.757306,
		0.894451, 0.251416, 0.369793,
		0.426804, -0.726704, -0.538275,
		40.781040, 45.990715, 37.546204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116730, 46.736813, 37.667423>,  <40.482277, 46.499405, 37.922997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116730, 46.736813, 37.667423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005074, 46.439720, 37.423973>,  <40.938080, 46.261463, 37.277905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005074, 46.439720, 37.423973>,  <41.116730, 46.736813, 37.667423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005074, 46.439720, 37.423973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060048, 0.619076, -0.783032,
		0.958371, -0.255123, -0.128210,
		-0.279141, -0.742736, -0.608624,
		40.921329, 46.216900, 37.241386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612247, 46.742130, 37.125381>,  <41.116730, 46.736813, 37.667423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612247, 46.742130, 37.125381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314438, 46.533600, 36.958572>,  <41.135754, 46.408482, 36.858486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314438, 46.533600, 36.958572>,  <41.612247, 46.742130, 37.125381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314438, 46.533600, 36.958572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177812, 0.447248, -0.876557,
		0.643485, -0.726766, -0.240287,
		-0.744520, -0.521326, -0.417025,
		41.091084, 46.377201, 36.833466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901634, 46.331322, 36.622932>,  <41.612247, 46.742130, 37.125381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901634, 46.331322, 36.622932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515610, 46.353310, 36.520447>,  <41.283997, 46.366501, 36.458958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515610, 46.353310, 36.520447>,  <41.901634, 46.331322, 36.622932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515610, 46.353310, 36.520447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261436, 0.135630, -0.955644,
		-0.017781, -0.989233, -0.145261,
		-0.965057, 0.054969, -0.256209,
		41.226093, 46.369801, 36.443584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794601, 46.017239, 35.954163>,  <41.901634, 46.331322, 36.622932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794601, 46.017239, 35.954163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447502, 46.215973, 35.959167>,  <41.239243, 46.335213, 35.962170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447502, 46.215973, 35.959167>,  <41.794601, 46.017239, 35.954163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447502, 46.215973, 35.959167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111966, 0.219953, -0.969064,
		-0.484220, -0.839507, -0.246494,
		-0.867753, 0.496839, 0.012509,
		41.187176, 46.365025, 35.962921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495159, 45.912159, 35.345913>,  <41.794601, 46.017239, 35.954163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495159, 45.912159, 35.345913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307426, 46.250160, 35.448437>,  <41.194786, 46.452961, 35.509953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307426, 46.250160, 35.448437>,  <41.495159, 45.912159, 35.345913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307426, 46.250160, 35.448437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076945, 0.328295, -0.941436,
		-0.879662, -0.422127, -0.219100,
		-0.469335, 0.845004, 0.256308,
		41.166626, 46.503662, 35.525330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099087, 46.104046, 34.766743>,  <41.495159, 45.912159, 35.345913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099087, 46.104046, 34.766743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118523, 46.455200, 34.957306>,  <41.130184, 46.665894, 35.071644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118523, 46.455200, 34.957306>,  <41.099087, 46.104046, 34.766743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118523, 46.455200, 34.957306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172038, 0.462485, -0.869776,
		-0.983891, 0.124222, -0.128557,
		0.048589, 0.877882, 0.476406,
		41.133099, 46.718563, 35.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690926, 46.629364, 34.368713>,  <41.099087, 46.104046, 34.766743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690926, 46.629364, 34.368713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966377, 46.829041, 34.579086>,  <41.131649, 46.948845, 34.705311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966377, 46.829041, 34.579086>,  <40.690926, 46.629364, 34.368713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966377, 46.829041, 34.579086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272555, 0.493933, -0.825678,
		-0.671944, 0.711929, 0.204078,
		0.688625, 0.499187, 0.525935,
		41.172966, 46.978798, 34.736866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568092, 47.333485, 34.263050>,  <40.690926, 46.629364, 34.368713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568092, 47.333485, 34.263050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950859, 47.287865, 34.369858>,  <41.180519, 47.260494, 34.433945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950859, 47.287865, 34.369858>,  <40.568092, 47.333485, 34.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950859, 47.287865, 34.369858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275370, 0.648131, -0.709998,
		-0.092090, 0.752940, 0.651614,
		0.956917, -0.114051, 0.267024,
		41.237934, 47.253651, 34.449966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809109, 48.037582, 34.070316>,  <40.568092, 47.333485, 34.263050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809109, 48.037582, 34.070316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137100, 47.825378, 34.156296>,  <41.333893, 47.698055, 34.207882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137100, 47.825378, 34.156296>,  <40.809109, 48.037582, 34.070316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137100, 47.825378, 34.156296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548064, 0.619321, -0.562199,
		0.165129, 0.578795, 0.798579,
		0.819975, -0.530508, 0.214949,
		41.383091, 47.666225, 34.220779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364746, 48.542549, 34.167690>,  <40.809109, 48.037582, 34.070316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364746, 48.542549, 34.167690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555786, 48.200905, 34.085339>,  <41.670410, 47.995918, 34.035927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555786, 48.200905, 34.085339>,  <41.364746, 48.542549, 34.167690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555786, 48.200905, 34.085339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597485, 0.487555, -0.636633,
		0.644135, 0.181047, 0.743177,
		0.477600, -0.854115, -0.205879,
		41.699066, 47.944672, 34.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160500, 48.543648, 34.521008>,  <41.364746, 48.542549, 34.167690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160500, 48.543648, 34.521008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119621, 48.303307, 34.203888>,  <42.095093, 48.159103, 34.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119621, 48.303307, 34.203888>,  <42.160500, 48.543648, 34.521008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119621, 48.303307, 34.203888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594534, 0.602077, -0.532947,
		0.797549, -0.525813, 0.295696,
		-0.102199, -0.600853, -0.792800,
		42.088963, 48.123051, 33.966049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.899582, 45.377392, 32.201550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.619148, 45.620083, 32.351410>,  <43.450890, 45.765697, 32.441326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.619148, 45.620083, 32.351410>,  <43.899582, 45.377392, 32.201550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619148, 45.620083, 32.351410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191979, -0.345402, 0.918608,
		0.686749, 0.715948, 0.125678,
		-0.701085, 0.606726, 0.374651,
		43.408821, 45.802101, 32.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068314, 45.447712, 32.808262>,  <43.899582, 45.377392, 32.201550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068314, 45.447712, 32.808262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686768, 45.566307, 32.827137>,  <43.457840, 45.637466, 32.838463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686768, 45.566307, 32.827137>,  <44.068314, 45.447712, 32.808262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686768, 45.566307, 32.827137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068878, -0.369114, 0.926828,
		0.292215, 0.880822, 0.372508,
		-0.953869, 0.296491, 0.047192,
		43.400608, 45.655254, 32.841293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021152, 45.967541, 33.336147>,  <44.068314, 45.447712, 32.808262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021152, 45.967541, 33.336147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.663757, 45.798237, 33.276104>,  <43.449322, 45.696655, 33.240078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.663757, 45.798237, 33.276104>,  <44.021152, 45.967541, 33.336147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663757, 45.798237, 33.276104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052696, -0.233136, 0.971015,
		-0.445991, 0.875498, 0.185999,
		-0.893485, -0.423262, -0.150112,
		43.395710, 45.671257, 33.231071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567749, 46.240955, 33.859627>,  <44.021152, 45.967541, 33.336147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567749, 46.240955, 33.859627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.434784, 45.887051, 33.728970>,  <43.355003, 45.674709, 33.650574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.434784, 45.887051, 33.728970>,  <43.567749, 46.240955, 33.859627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434784, 45.887051, 33.728970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031207, -0.335834, 0.941404,
		-0.942617, 0.323131, 0.084026,
		-0.332415, -0.884761, -0.326647,
		43.335060, 45.621624, 33.630974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036953, 46.184265, 34.301544>,  <43.567749, 46.240955, 33.859627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036953, 46.184265, 34.301544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.109093, 45.820744, 34.151054>,  <43.152378, 45.602631, 34.060760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.109093, 45.820744, 34.151054>,  <43.036953, 46.184265, 34.301544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109093, 45.820744, 34.151054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152850, -0.403747, 0.902012,
		-0.971653, -0.105175, -0.211728,
		0.180354, -0.908805, -0.376226,
		43.163200, 45.548103, 34.038185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531197, 45.725918, 34.665138>,  <43.036953, 46.184265, 34.301544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531197, 45.725918, 34.665138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.807800, 45.476387, 34.519451>,  <42.973763, 45.326668, 34.432037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.807800, 45.476387, 34.519451>,  <42.531197, 45.725918, 34.665138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807800, 45.476387, 34.519451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031352, -0.477806, 0.877905,
		-0.721688, -0.618497, -0.310849,
		0.691508, -0.623828, -0.364219,
		43.015251, 45.289238, 34.410187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324478, 45.037773, 34.880066>,  <42.531197, 45.725918, 34.665138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324478, 45.037773, 34.880066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.715988, 45.035778, 34.798122>,  <42.950893, 45.034580, 34.748955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.715988, 45.035778, 34.798122>,  <42.324478, 45.037773, 34.880066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715988, 45.035778, 34.798122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193021, -0.313242, 0.929851,
		-0.068809, -0.949660, -0.305631,
		0.978779, -0.004989, -0.204858,
		43.009621, 45.034283, 34.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614044, 44.451244, 35.100929>,  <42.324478, 45.037773, 34.880066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614044, 44.451244, 35.100929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.946228, 44.673153, 35.080681>,  <43.145538, 44.806297, 35.068531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.946228, 44.673153, 35.080681>,  <42.614044, 44.451244, 35.100929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946228, 44.673153, 35.080681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301692, -0.371502, 0.878048,
		0.468310, -0.744457, -0.475888,
		0.830463, 0.554770, -0.050619,
		43.195366, 44.839584, 35.065495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070049, 43.985985, 35.298607>,  <42.614044, 44.451244, 35.100929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070049, 43.985985, 35.298607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.293091, 44.313053, 35.355858>,  <43.426918, 44.509293, 35.390209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.293091, 44.313053, 35.355858>,  <43.070049, 43.985985, 35.298607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293091, 44.313053, 35.355858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406625, -0.419373, 0.811654,
		0.723692, -0.394384, -0.566331,
		0.557608, 0.817672, 0.143131,
		43.460373, 44.558353, 35.398796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675911, 43.729752, 35.463505>,  <43.070049, 43.985985, 35.298607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675911, 43.729752, 35.463505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.696869, 44.104565, 35.601624>,  <43.709446, 44.329453, 35.684494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.696869, 44.104565, 35.601624>,  <43.675911, 43.729752, 35.463505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696869, 44.104565, 35.601624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555137, -0.314750, 0.769906,
		0.830107, 0.151343, -0.536673,
		0.052398, 0.937031, 0.345292,
		43.712589, 44.385674, 35.705212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368267, 43.750492, 35.651260>,  <43.675911, 43.729752, 35.463505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368267, 43.750492, 35.651260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.179092, 44.039883, 35.852421>,  <44.065586, 44.213516, 35.973118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.179092, 44.039883, 35.852421>,  <44.368267, 43.750492, 35.651260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179092, 44.039883, 35.852421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489816, -0.258557, 0.832603,
		0.732399, 0.640098, -0.232090,
		-0.472940, 0.723479, 0.502897,
		44.037212, 44.256927, 36.003288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875221, 43.984161, 36.079193>,  <44.368267, 43.750492, 35.651260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875221, 43.984161, 36.079193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.532570, 44.121376, 36.233341>,  <44.326977, 44.203705, 36.325829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.532570, 44.121376, 36.233341>,  <44.875221, 43.984161, 36.079193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532570, 44.121376, 36.233341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388059, -0.063828, 0.919422,
		0.339990, 0.937152, -0.078440,
		-0.856631, 0.343034, 0.385371,
		44.275581, 44.224285, 36.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006626, 44.533146, 36.455555>,  <44.875221, 43.984161, 36.079193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006626, 44.533146, 36.455555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663811, 44.407894, 36.619232>,  <44.458122, 44.332745, 36.717438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663811, 44.407894, 36.619232>,  <45.006626, 44.533146, 36.455555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663811, 44.407894, 36.619232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463340, -0.120941, 0.877889,
		-0.225401, 0.941979, 0.248735,
		-0.857036, -0.313126, 0.409197,
		44.406700, 44.313957, 36.741993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077236, 44.756897, 37.149353>,  <45.006626, 44.533146, 36.455555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077236, 44.756897, 37.149353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.770180, 44.503456, 37.187878>,  <44.585945, 44.351391, 37.210995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.770180, 44.503456, 37.187878>,  <45.077236, 44.756897, 37.149353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770180, 44.503456, 37.187878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204836, -0.100162, 0.973658,
		-0.607262, 0.767150, 0.206673,
		-0.767643, -0.633599, 0.096315,
		44.539886, 44.313377, 37.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856762, 44.860287, 37.834995>,  <45.077236, 44.756897, 37.149353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856762, 44.860287, 37.834995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.684677, 44.513580, 37.734089>,  <44.581425, 44.305557, 37.673546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.684677, 44.513580, 37.734089>,  <44.856762, 44.860287, 37.834995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684677, 44.513580, 37.734089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011897, -0.273976, 0.961663,
		-0.902649, 0.416721, 0.107556,
		-0.430213, -0.866764, -0.252262,
		44.555614, 44.253551, 37.658409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269398, 44.798836, 38.231258>,  <44.856762, 44.860287, 37.834995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269398, 44.798836, 38.231258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.377983, 44.426250, 38.134361>,  <44.443134, 44.202698, 38.076221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.377983, 44.426250, 38.134361>,  <44.269398, 44.798836, 38.231258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377983, 44.426250, 38.134361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108214, -0.279637, 0.953988,
		-0.956345, -0.232763, -0.176710,
		0.271468, -0.931464, -0.242241,
		44.459423, 44.146812, 38.061687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732903, 44.325161, 38.564919>,  <44.269398, 44.798836, 38.231258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732903, 44.325161, 38.564919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.058990, 44.108791, 38.482147>,  <44.254642, 43.978970, 38.432484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.058990, 44.108791, 38.482147>,  <43.732903, 44.325161, 38.564919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058990, 44.108791, 38.482147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088185, -0.469071, 0.878747,
		-0.572400, -0.698122, -0.430097,
		0.815218, -0.540923, -0.206933,
		44.303555, 43.946514, 38.420067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536579, 43.572376, 38.644707>,  <43.732903, 44.325161, 38.564919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536579, 43.572376, 38.644707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.928009, 43.612907, 38.716408>,  <44.162865, 43.637226, 38.759430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.928009, 43.612907, 38.716408>,  <43.536579, 43.572376, 38.644707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928009, 43.612907, 38.716408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114108, -0.457797, 0.881703,
		0.171400, -0.883264, -0.436425,
		0.978571, 0.101325, 0.179254,
		44.221581, 43.643307, 38.770184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641136, 43.035172, 39.031113>,  <43.536579, 43.572376, 38.644707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641136, 43.035172, 39.031113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.967308, 43.261932, 39.077923>,  <44.163010, 43.397991, 39.106007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.967308, 43.261932, 39.077923>,  <43.641136, 43.035172, 39.031113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967308, 43.261932, 39.077923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102833, -0.340814, 0.934490,
		0.569649, -0.749977, -0.336206,
		0.815429, 0.566905, 0.117022,
		44.211937, 43.432003, 39.113029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188477, 42.531818, 39.181156>,  <43.641136, 43.035172, 39.031113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188477, 42.531818, 39.181156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.340027, 42.877720, 39.313007>,  <44.430958, 43.085258, 39.392120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.340027, 42.877720, 39.313007>,  <44.188477, 42.531818, 39.181156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340027, 42.877720, 39.313007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372277, -0.468512, 0.801191,
		0.847267, -0.180839, -0.499436,
		0.378879, 0.864751, 0.329632,
		44.453690, 43.137146, 39.411896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904900, 42.448067, 39.320259>,  <44.188477, 42.531818, 39.181156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904900, 42.448067, 39.320259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.806221, 42.764374, 39.544338>,  <44.747013, 42.954159, 39.678787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.806221, 42.764374, 39.544338>,  <44.904900, 42.448067, 39.320259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806221, 42.764374, 39.544338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494891, -0.394205, 0.774393,
		0.833201, 0.468277, -0.294097,
		-0.246696, 0.790771, 0.560198,
		44.732212, 43.001606, 39.712399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590187, 42.694431, 39.641048>,  <44.904900, 42.448067, 39.320259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590187, 42.694431, 39.641048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.310745, 42.886295, 39.853416>,  <45.143082, 43.001415, 39.980835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.310745, 42.886295, 39.853416>,  <45.590187, 42.694431, 39.641048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310745, 42.886295, 39.853416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560304, -0.094724, 0.822853,
		0.444982, 0.872325, -0.202582,
		-0.698606, 0.479662, 0.530918,
		45.101162, 43.030193, 40.012691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012070, 43.004021, 40.093727>,  <45.590187, 42.694431, 39.641048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012070, 43.004021, 40.093727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.636360, 42.996639, 40.230801>,  <45.410934, 42.992210, 40.313046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.636360, 42.996639, 40.230801>,  <46.012070, 43.004021, 40.093727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636360, 42.996639, 40.230801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343005, -0.082408, 0.935712,
		0.010968, 0.996428, 0.083734,
		-0.939270, -0.018458, 0.342684,
		45.354580, 42.991100, 40.333607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963425, 43.557068, 40.607719>,  <46.012070, 43.004021, 40.093727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963425, 43.557068, 40.607719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.680489, 43.284878, 40.684258>,  <45.510727, 43.121563, 40.730179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.680489, 43.284878, 40.684258>,  <45.963425, 43.557068, 40.607719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680489, 43.284878, 40.684258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319592, -0.066423, 0.945224,
		-0.630495, 0.729751, 0.264459,
		-0.707345, -0.680479, 0.191343,
		45.468285, 43.080734, 40.741661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487427, 43.803593, 41.152431>,  <45.963425, 43.557068, 40.607719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487427, 43.803593, 41.152431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.484245, 43.403633, 41.147591>,  <45.482338, 43.163658, 41.144684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.484245, 43.403633, 41.147591>,  <45.487427, 43.803593, 41.152431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484245, 43.403633, 41.147591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182553, -0.013353, 0.983106,
		-0.983164, 0.005607, 0.182640,
		-0.007951, -0.999895, -0.012104,
		45.481861, 43.103664, 41.143959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091293, 43.622440, 41.767853>,  <45.487427, 43.803593, 41.152431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091293, 43.622440, 41.767853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.239197, 43.263123, 41.672901>,  <45.327938, 43.047531, 41.615929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.239197, 43.263123, 41.672901>,  <45.091293, 43.622440, 41.767853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239197, 43.263123, 41.672901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109583, -0.211544, 0.971206,
		-0.922642, -0.385126, 0.020217,
		0.369760, -0.898291, -0.237383,
		45.350124, 42.993637, 41.601685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705097, 43.088837, 42.145523>,  <45.091293, 43.622440, 41.767853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705097, 43.088837, 42.145523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.067032, 42.941341, 42.060383>,  <45.284191, 42.852844, 42.009296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.067032, 42.941341, 42.060383>,  <44.705097, 43.088837, 42.145523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067032, 42.941341, 42.060383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151892, -0.187474, 0.970455,
		-0.397753, -0.910430, -0.113623,
		0.904832, -0.368743, -0.212855,
		45.338482, 42.830719, 41.996525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817387, 42.400852, 42.556305>,  <44.705097, 43.088837, 42.145523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817387, 42.400852, 42.556305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.172012, 42.548107, 42.444256>,  <45.384789, 42.636459, 42.377026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.172012, 42.548107, 42.444256>,  <44.817387, 42.400852, 42.556305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172012, 42.548107, 42.444256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364927, -0.184417, 0.912589,
		0.284302, -0.911297, -0.297843,
		0.886567, 0.368141, -0.280126,
		45.437981, 42.658550, 42.360218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191624, 41.988064, 42.974987>,  <44.817387, 42.400852, 42.556305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191624, 41.988064, 42.974987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.430702, 42.285164, 42.854263>,  <45.574150, 42.463425, 42.781830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.430702, 42.285164, 42.854263>,  <45.191624, 41.988064, 42.974987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430702, 42.285164, 42.854263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379348, 0.069639, 0.922630,
		0.706299, -0.665940, -0.240137,
		0.597693, 0.742748, -0.301809,
		45.610008, 42.507988, 42.763721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730083, 41.848610, 43.368526>,  <45.191624, 41.988064, 42.974987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730083, 41.848610, 43.368526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.766426, 42.229210, 43.250954>,  <45.788231, 42.457569, 43.180408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.766426, 42.229210, 43.250954>,  <45.730083, 41.848610, 43.368526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766426, 42.229210, 43.250954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391370, 0.237292, 0.889113,
		0.915737, -0.195818, -0.350828,
		0.090855, 0.951498, -0.293935,
		45.793682, 42.514660, 43.162773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429588, 42.019619, 43.618546>,  <45.730083, 41.848610, 43.368526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429588, 42.019619, 43.618546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.224876, 42.356014, 43.548328>,  <46.102051, 42.557854, 43.506199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.224876, 42.356014, 43.548328>,  <46.429588, 42.019619, 43.618546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224876, 42.356014, 43.548328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203321, 0.317089, 0.926345,
		0.834711, 0.438392, -0.333270,
		-0.511779, 0.840991, -0.175543,
		46.071342, 42.608311, 43.495667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854923, 42.590233, 43.757343>,  <46.429588, 42.019619, 43.618546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854923, 42.590233, 43.757343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.480568, 42.727947, 43.787209>,  <46.255955, 42.810577, 43.805126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.480568, 42.727947, 43.787209>,  <46.854923, 42.590233, 43.757343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480568, 42.727947, 43.787209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254432, 0.513983, 0.819198,
		0.243667, 0.785676, -0.568630,
		-0.935890, 0.344289, 0.074661,
		46.199802, 42.831234, 43.809608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022724, 43.224365, 44.084038>,  <46.854923, 42.590233, 43.757343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022724, 43.224365, 44.084038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.641899, 43.149956, 44.181168>,  <46.413403, 43.105309, 44.239445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.641899, 43.149956, 44.181168>,  <47.022724, 43.224365, 44.084038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641899, 43.149956, 44.181168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117942, 0.509206, 0.852525,
		-0.282242, 0.840299, -0.462857,
		-0.952066, -0.186028, 0.242825,
		46.356277, 43.094147, 44.254017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803864, 43.910217, 44.276791>,  <47.022724, 43.224365, 44.084038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803864, 43.910217, 44.276791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.543495, 43.640888, 44.417046>,  <46.387276, 43.479290, 44.501198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.543495, 43.640888, 44.417046>,  <46.803864, 43.910217, 44.276791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543495, 43.640888, 44.417046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034288, 0.435331, 0.899617,
		-0.758374, 0.597599, -0.260277,
		-0.650917, -0.673322, 0.350634,
		46.348221, 43.438892, 44.522236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.494972, 44.256355, 44.874298>,  <46.803864, 43.910217, 44.276791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.494972, 44.256355, 44.874298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.367912, 43.879684, 44.918720>,  <46.291676, 43.653683, 44.945374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.367912, 43.879684, 44.918720>,  <46.494972, 44.256355, 44.874298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367912, 43.879684, 44.918720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215596, 0.185786, 0.958646,
		-0.923373, 0.280570, -0.262038,
		-0.317650, -0.941682, 0.111060,
		46.272617, 43.597179, 44.952038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802349, 44.273438, 45.157063>,  <46.494972, 44.256355, 44.874298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802349, 44.273438, 45.157063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.992371, 43.936371, 45.258446>,  <46.106384, 43.734131, 45.319275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.992371, 43.936371, 45.258446>,  <45.802349, 44.273438, 45.157063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992371, 43.936371, 45.258446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298432, 0.116686, 0.947271,
		-0.827807, -0.525645, -0.196046,
		0.475052, -0.842664, 0.253463,
		46.134888, 43.683571, 45.334484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364262, 43.948013, 45.735470>,  <45.802349, 44.273438, 45.157063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364262, 43.948013, 45.735470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.737694, 43.809788, 45.773438>,  <45.961754, 43.726852, 45.796219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.737694, 43.809788, 45.773438>,  <45.364262, 43.948013, 45.735470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737694, 43.809788, 45.773438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149364, -0.134449, 0.979599,
		-0.325751, -0.928714, -0.177134,
		0.933583, -0.345563, 0.094920,
		46.017769, 43.706120, 45.801914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365910, 43.369152, 46.171871>,  <45.364262, 43.948013, 45.735470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365910, 43.369152, 46.171871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.751648, 43.474998, 46.170444>,  <45.983093, 43.538506, 46.169586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.751648, 43.474998, 46.170444>,  <45.365910, 43.369152, 46.171871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751648, 43.474998, 46.170444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049016, -0.165346, 0.985017,
		0.260060, -0.950073, -0.172422,
		0.964348, 0.264615, -0.003569,
		46.040951, 43.554382, 46.169373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733582, 42.755558, 46.585411>,  <45.365910, 43.369152, 46.171871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733582, 42.755558, 46.585411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.961761, 43.083862, 46.573112>,  <46.098671, 43.280846, 46.565735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.961761, 43.083862, 46.573112>,  <45.733582, 42.755558, 46.585411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961761, 43.083862, 46.573112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143205, -0.062532, 0.987716,
		0.808752, -0.567845, -0.153208,
		0.570450, 0.820757, -0.030745,
		46.132896, 43.330090, 46.563889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160557, 42.650658, 47.102970>,  <45.733582, 42.755558, 46.585411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160557, 42.650658, 47.102970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.200195, 43.042850, 47.035038>,  <46.223980, 43.278164, 46.994278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.200195, 43.042850, 47.035038>,  <46.160557, 42.650658, 47.102970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.200195, 43.042850, 47.035038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209313, 0.146309, 0.966841,
		0.972815, -0.131356, -0.190729,
		0.099095, 0.980479, -0.169826,
		46.229923, 43.336994, 46.984089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692879, 42.857430, 47.504848>,  <46.160557, 42.650658, 47.102970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692879, 42.857430, 47.504848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.466171, 43.175343, 47.418045>,  <46.330147, 43.366089, 47.365963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.466171, 43.175343, 47.418045>,  <46.692879, 42.857430, 47.504848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466171, 43.175343, 47.418045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166653, 0.147353, 0.974943,
		0.806844, 0.588735, 0.048937,
		-0.566772, 0.794782, -0.217006,
		46.296139, 43.413776, 47.352943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051105, 43.452003, 47.930904>,  <46.692879, 42.857430, 47.504848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051105, 43.452003, 47.930904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.691895, 43.615891, 47.866806>,  <46.476368, 43.714222, 47.828346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.691895, 43.615891, 47.866806>,  <47.051105, 43.452003, 47.930904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691895, 43.615891, 47.866806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044525, 0.277740, 0.959624,
		0.437685, 0.868902, -0.231175,
		-0.898025, 0.409720, -0.160250,
		46.422485, 43.738808, 47.818729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031227, 43.978039, 48.299007>,  <47.051105, 43.452003, 47.930904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031227, 43.978039, 48.299007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.637772, 43.962872, 48.228565>,  <46.401699, 43.953770, 48.186302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.637772, 43.962872, 48.228565>,  <47.031227, 43.978039, 48.299007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637772, 43.962872, 48.228565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178492, 0.337071, 0.924404,
		0.024307, 0.940715, -0.338325,
		-0.983641, -0.037919, -0.176103,
		46.342678, 43.951496, 48.175735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628525, 44.663002, 48.537334>,  <47.031227, 43.978039, 48.299007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628525, 44.663002, 48.537334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.361046, 44.367718, 48.501793>,  <46.200558, 44.190548, 48.480469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.361046, 44.367718, 48.501793>,  <46.628525, 44.663002, 48.537334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361046, 44.367718, 48.501793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392842, 0.249310, 0.885166,
		-0.631288, 0.626809, -0.456712,
		-0.668693, -0.738211, -0.088851,
		46.160439, 44.146255, 48.475140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083633, 45.021507, 48.737968>,  <46.628525, 44.663002, 48.537334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083633, 45.021507, 48.737968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.952133, 44.644009, 48.752235>,  <45.873234, 44.417511, 48.760796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.952133, 44.644009, 48.752235>,  <46.083633, 45.021507, 48.737968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952133, 44.644009, 48.752235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458902, 0.192639, 0.867352,
		-0.825430, 0.268769, -0.496416,
		-0.328746, -0.943744, 0.035672,
		45.853508, 44.360886, 48.762936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355598, 45.017902, 48.769737>,  <46.083633, 45.021507, 48.737968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355598, 45.017902, 48.769737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.484756, 44.677143, 48.934662>,  <45.562252, 44.472687, 49.033619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.484756, 44.677143, 48.934662>,  <45.355598, 45.017902, 48.769737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484756, 44.677143, 48.934662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524297, 0.201690, 0.827305,
		-0.787943, -0.483305, -0.381526,
		0.322891, -0.851902, 0.412316,
		45.581623, 44.421574, 49.058357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747494, 44.695271, 49.100971>,  <45.355598, 45.017902, 48.769737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747494, 44.695271, 49.100971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.042198, 44.486076, 49.272392>,  <45.219021, 44.360558, 49.375244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.042198, 44.486076, 49.272392>,  <44.747494, 44.695271, 49.100971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042198, 44.486076, 49.272392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347732, 0.250501, 0.903511,
		-0.579879, -0.814699, 0.002701,
		0.736766, -0.522987, 0.428557,
		45.263229, 44.329182, 49.400959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461304, 44.285793, 49.574722>,  <44.747494, 44.695271, 49.100971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461304, 44.285793, 49.574722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.846214, 44.309345, 49.680977>,  <45.077160, 44.323475, 49.744732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.846214, 44.309345, 49.680977>,  <44.461304, 44.285793, 49.574722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846214, 44.309345, 49.680977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271311, 0.133961, 0.953124,
		0.020534, -0.989236, 0.144882,
		0.962272, 0.058879, 0.265640,
		45.134895, 44.327011, 49.760670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571938, 43.820896, 50.153366>,  <44.461304, 44.285793, 49.574722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571938, 43.820896, 50.153366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.885941, 44.068024, 50.171524>,  <45.074341, 44.216301, 50.182419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.885941, 44.068024, 50.171524>,  <44.571938, 43.820896, 50.153366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885941, 44.068024, 50.171524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200666, 0.184273, 0.962173,
		0.586084, -0.764423, 0.268631,
		0.785008, 0.617819, 0.045394,
		45.121445, 44.253368, 50.185143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954479, 43.641365, 50.823963>,  <44.571938, 43.820896, 50.153366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954479, 43.641365, 50.823963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.034142, 44.023403, 50.736214>,  <45.081940, 44.252628, 50.683563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.034142, 44.023403, 50.736214>,  <44.954479, 43.641365, 50.823963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034142, 44.023403, 50.736214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223459, 0.262221, 0.938779,
		0.954150, -0.137945, 0.265648,
		0.199158, 0.955098, -0.219373,
		45.093887, 44.309933, 50.670403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196430, 43.878391, 51.491600>,  <44.954479, 43.641365, 50.823963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196430, 43.878391, 51.491600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.122070, 44.190258, 51.252411>,  <45.077454, 44.377377, 51.108898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.122070, 44.190258, 51.252411>,  <45.196430, 43.878391, 51.491600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122070, 44.190258, 51.252411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150226, 0.578869, 0.801463,
		0.971017, 0.238820, 0.009516,
		-0.185897, 0.779664, -0.597969,
		45.066299, 44.424156, 51.073021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318470, 44.409222, 51.884186>,  <45.196430, 43.878391, 51.491600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318470, 44.409222, 51.884186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.137932, 44.601017, 51.583153>,  <45.029610, 44.716095, 51.402534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.137932, 44.601017, 51.583153>,  <45.318470, 44.409222, 51.884186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137932, 44.601017, 51.583153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361837, 0.672585, 0.645525,
		0.815694, 0.563669, -0.130076,
		-0.451350, 0.479485, -0.752580,
		45.002525, 44.744862, 51.357380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573849, 45.129093, 51.847672>,  <45.318470, 44.409222, 51.884186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573849, 45.129093, 51.847672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.213913, 45.141285, 51.673607>,  <44.997952, 45.148602, 51.569168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.213913, 45.141285, 51.673607>,  <45.573849, 45.129093, 51.847672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213913, 45.141285, 51.673607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208412, 0.846304, 0.490238,
		0.383225, 0.531827, -0.755181,
		-0.899835, 0.030482, -0.435164,
		44.943962, 45.150429, 51.543056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507637, 45.799042, 51.508522>,  <45.573849, 45.129093, 51.847672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507637, 45.799042, 51.508522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.136330, 45.663307, 51.569420>,  <44.913548, 45.581867, 51.605957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.136330, 45.663307, 51.569420>,  <45.507637, 45.799042, 51.508522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136330, 45.663307, 51.569420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262288, 0.887494, 0.378891,
		-0.263685, 0.311780, -0.912833,
		-0.928265, -0.339333, 0.152243,
		44.857849, 45.561508, 51.615093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182583, 46.427723, 51.464970>,  <45.507637, 45.799042, 51.508522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182583, 46.427723, 51.464970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.899559, 46.194626, 51.624851>,  <44.729744, 46.054768, 51.720779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.899559, 46.194626, 51.624851>,  <45.182583, 46.427723, 51.464970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899559, 46.194626, 51.624851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371298, 0.787848, 0.491358,
		-0.601247, 0.199254, -0.773822,
		-0.707559, -0.582745, 0.399709,
		44.687290, 46.019802, 51.744762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524052, 46.804871, 51.418278>,  <45.182583, 46.427723, 51.464970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524052, 46.804871, 51.418278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.500122, 46.537109, 51.714470>,  <44.485764, 46.376453, 51.892185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.500122, 46.537109, 51.714470>,  <44.524052, 46.804871, 51.418278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500122, 46.537109, 51.714470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298108, 0.719942, 0.626749,
		-0.952655, -0.183249, -0.242626,
		-0.059826, -0.669405, 0.740485,
		44.482174, 46.336288, 51.936615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889339, 46.966446, 51.705479>,  <44.524052, 46.804871, 51.418278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889339, 46.966446, 51.705479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.098167, 46.761253, 51.978035>,  <44.223465, 46.638138, 52.141567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.098167, 46.761253, 51.978035>,  <43.889339, 46.966446, 51.705479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098167, 46.761253, 51.978035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162822, 0.724270, 0.670017,
		-0.837219, -0.460739, 0.294592,
		0.522067, -0.512985, 0.681390,
		44.254787, 46.607357, 52.182453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503368, 46.949276, 52.350975>,  <43.889339, 46.966446, 51.705479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503368, 46.949276, 52.350975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.876869, 46.850525, 52.454628>,  <44.100971, 46.791275, 52.516819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.876869, 46.850525, 52.454628>,  <43.503368, 46.949276, 52.350975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876869, 46.850525, 52.454628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040817, 0.645846, 0.762376,
		-0.355576, -0.722450, 0.592986,
		0.933756, -0.246878, 0.259136,
		44.156998, 46.776463, 52.532368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384476, 46.974838, 53.015915>,  <43.503368, 46.949276, 52.350975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384476, 46.974838, 53.015915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.778831, 46.980591, 52.949203>,  <44.015446, 46.984043, 52.909176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.778831, 46.980591, 52.949203>,  <43.384476, 46.974838, 53.015915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778831, 46.980591, 52.949203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124359, 0.604014, 0.787211,
		0.112059, -0.796844, 0.593702,
		0.985889, 0.014382, -0.166780,
		44.074596, 46.984905, 52.899170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680271, 46.963158, 53.745781>,  <43.384476, 46.974838, 53.015915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680271, 46.963158, 53.745781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.960686, 47.112923, 53.503010>,  <44.128933, 47.202782, 53.357346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.960686, 47.112923, 53.503010>,  <43.680271, 46.963158, 53.745781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960686, 47.112923, 53.503010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218382, 0.697484, 0.682514,
		0.678862, -0.611012, 0.407199,
		0.701039, 0.374408, -0.606930,
		44.170998, 47.225246, 53.320930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289192, 47.152660, 54.166309>,  <43.680271, 46.963158, 53.745781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289192, 47.152660, 54.166309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.285423, 47.388084, 53.842949>,  <44.283161, 47.529339, 53.648933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.285423, 47.388084, 53.842949>,  <44.289192, 47.152660, 54.166309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285423, 47.388084, 53.842949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266981, 0.780566, 0.565188,
		0.963656, -0.210501, -0.164491,
		-0.009423, 0.588563, -0.808397,
		44.282597, 47.564651, 53.600430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984756, 47.380421, 54.307068>,  <44.289192, 47.152660, 54.166309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984756, 47.380421, 54.307068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.763161, 47.615982, 54.071686>,  <44.630203, 47.757320, 53.930454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.763161, 47.615982, 54.071686>,  <44.984756, 47.380421, 54.307068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763161, 47.615982, 54.071686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291730, 0.799341, 0.525307,
		0.779736, 0.119344, -0.614629,
		-0.553990, 0.588906, -0.588459,
		44.596962, 47.792652, 53.895149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402451, 47.927330, 54.290745>,  <44.984756, 47.380421, 54.307068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402451, 47.927330, 54.290745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.047836, 48.062164, 54.163979>,  <44.835068, 48.143066, 54.087921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.047836, 48.062164, 54.163979>,  <45.402451, 47.927330, 54.290745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047836, 48.062164, 54.163979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122485, 0.831519, 0.541824,
		0.446161, 0.441527, -0.778457,
		-0.886531, 0.337090, -0.316911,
		44.781876, 48.163292, 54.068905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505253, 48.658695, 54.137264>,  <45.402451, 47.927330, 54.290745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505253, 48.658695, 54.137264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.116440, 48.612160, 54.218872>,  <44.883152, 48.584236, 54.267838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.116440, 48.612160, 54.218872>,  <45.505253, 48.658695, 54.137264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116440, 48.612160, 54.218872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015131, 0.835855, 0.548742,
		-0.234369, 0.536481, -0.810715,
		-0.972030, -0.116341, 0.204016,
		44.824829, 48.577259, 54.280075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.522545, 48.505756, 54.376110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.921120, 48.522461, 54.346817>,  <44.160267, 48.532482, 54.329243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.921120, 48.522461, 54.346817>,  <43.522545, 48.505756, 54.376110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921120, 48.522461, 54.346817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022380, -0.706474, -0.707385,
		-0.081276, 0.706505, -0.703025,
		0.996440, 0.041759, -0.073231,
		44.220051, 48.534988, 54.324848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638012, 48.679798, 53.668743>,  <43.522545, 48.505756, 54.376110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638012, 48.679798, 53.668743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.985901, 48.521706, 53.786980>,  <44.194633, 48.426849, 53.857922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.985901, 48.521706, 53.786980>,  <43.638012, 48.679798, 53.668743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985901, 48.521706, 53.786980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047173, -0.662743, -0.747359,
		0.491281, 0.636052, -0.595047,
		0.869723, -0.395234, 0.295588,
		44.246819, 48.403137, 53.875656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970592, 48.588318, 53.038513>,  <43.638012, 48.679798, 53.668743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970592, 48.588318, 53.038513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.130966, 48.328758, 53.297180>,  <44.227188, 48.173023, 53.452381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.130966, 48.328758, 53.297180>,  <43.970592, 48.588318, 53.038513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130966, 48.328758, 53.297180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121001, -0.662191, -0.739501,
		0.908081, 0.374737, -0.186976,
		0.400933, -0.648903, 0.646667,
		44.251247, 48.134087, 53.491180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581417, 48.362938, 52.681973>,  <43.970592, 48.588318, 53.038513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581417, 48.362938, 52.681973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.460953, 48.107285, 52.965042>,  <44.388672, 47.953892, 53.134884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.460953, 48.107285, 52.965042>,  <44.581417, 48.362938, 52.681973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460953, 48.107285, 52.965042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151072, -0.764740, -0.626379,
		0.941529, -0.081733, 0.326869,
		-0.301165, -0.639135, 0.707677,
		44.370602, 47.915543, 53.177345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999313, 47.782104, 52.487625>,  <44.581417, 48.362938, 52.681973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999313, 47.782104, 52.487625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.748001, 47.617165, 52.751514>,  <44.597214, 47.518200, 52.909847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.748001, 47.617165, 52.751514>,  <44.999313, 47.782104, 52.487625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748001, 47.617165, 52.751514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050083, -0.824790, -0.563217,
		0.776376, -0.386897, 0.497545,
		-0.628277, -0.412350, 0.659724,
		44.559517, 47.493462, 52.949432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337440, 47.148117, 52.730083>,  <44.999313, 47.782104, 52.487625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337440, 47.148117, 52.730083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.948158, 47.079185, 52.790970>,  <44.714588, 47.037827, 52.827499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.948158, 47.079185, 52.790970>,  <45.337440, 47.148117, 52.730083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948158, 47.079185, 52.790970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073050, -0.859456, -0.505963,
		0.218012, -0.481288, 0.849019,
		-0.973208, -0.172327, 0.152214,
		44.656197, 47.027489, 52.836636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372421, 46.440411, 52.813774>,  <45.337440, 47.148117, 52.730083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372421, 46.440411, 52.813774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.999382, 46.563904, 52.738998>,  <44.775558, 46.638000, 52.694134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.999382, 46.563904, 52.738998>,  <45.372421, 46.440411, 52.813774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999382, 46.563904, 52.738998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168739, -0.830826, -0.530335,
		-0.319050, -0.463043, 0.826921,
		-0.932596, 0.308737, -0.186942,
		44.719604, 46.656525, 52.682915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948463, 45.951008, 53.009991>,  <45.372421, 46.440411, 52.813774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948463, 45.951008, 53.009991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.726158, 46.161751, 52.752758>,  <44.592777, 46.288197, 52.598419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.726158, 46.161751, 52.752758>,  <44.948463, 45.951008, 53.009991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726158, 46.161751, 52.752758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077287, -0.802941, -0.591026,
		-0.827746, -0.278763, 0.486958,
		-0.555755, 0.526855, -0.643086,
		44.559429, 46.319805, 52.559834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370289, 45.494827, 52.947659>,  <44.948463, 45.951008, 53.009991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370289, 45.494827, 52.947659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.392723, 45.741070, 52.633236>,  <44.406185, 45.888817, 52.444584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.392723, 45.741070, 52.633236>,  <44.370289, 45.494827, 52.947659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392723, 45.741070, 52.633236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127613, -0.776416, -0.617166,
		-0.990237, 0.134926, 0.035012,
		0.056088, 0.615608, -0.786054,
		44.409550, 45.925751, 52.397419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904919, 45.267841, 52.425816>,  <44.370289, 45.494827, 52.947659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904919, 45.267841, 52.425816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.147049, 45.503151, 52.211334>,  <44.292328, 45.644337, 52.082645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.147049, 45.503151, 52.211334>,  <43.904919, 45.267841, 52.425816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147049, 45.503151, 52.211334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043970, -0.647903, -0.760453,
		-0.794761, 0.483900, -0.366328,
		0.605328, 0.588271, -0.536205,
		44.328648, 45.679630, 52.050472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586258, 45.229744, 51.709415>,  <43.904919, 45.267841, 52.425816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586258, 45.229744, 51.709415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.974731, 45.324272, 51.697060>,  <44.207817, 45.380989, 51.689648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.974731, 45.324272, 51.697060>,  <43.586258, 45.229744, 51.709415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974731, 45.324272, 51.697060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144389, -0.686519, -0.712632,
		-0.189616, 0.687636, -0.700858,
		0.971184, 0.236322, -0.030888,
		44.266087, 45.395168, 51.687794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800198, 45.342609, 50.945930>,  <43.586258, 45.229744, 51.709415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800198, 45.342609, 50.945930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.150070, 45.278206, 51.128799>,  <44.359993, 45.239563, 51.238522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.150070, 45.278206, 51.128799>,  <43.800198, 45.342609, 50.945930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150070, 45.278206, 51.128799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286665, -0.588722, -0.755798,
		0.390840, 0.792138, -0.468788,
		0.874682, -0.161011, 0.457174,
		44.412476, 45.229904, 51.265953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248104, 45.419449, 50.492443>,  <43.800198, 45.342609, 50.945930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248104, 45.419449, 50.492443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.492256, 45.236626, 50.751217>,  <44.638748, 45.126930, 50.906483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.492256, 45.236626, 50.751217>,  <44.248104, 45.419449, 50.492443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492256, 45.236626, 50.751217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439170, -0.484435, -0.756606,
		0.659212, 0.745937, -0.094965,
		0.610385, -0.457058, 0.646938,
		44.675373, 45.099510, 50.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990627, 45.543293, 50.380058>,  <44.248104, 45.419449, 50.492443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990627, 45.543293, 50.380058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.020798, 45.205898, 50.592789>,  <45.038898, 45.003460, 50.720428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.020798, 45.205898, 50.592789>,  <44.990627, 45.543293, 50.380058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020798, 45.205898, 50.592789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552861, -0.408487, -0.726280,
		0.829853, 0.348806, 0.435521,
		0.075426, -0.843488, 0.531826,
		45.043427, 44.952850, 50.752335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641113, 45.432487, 50.509037>,  <44.990627, 45.543293, 50.380058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641113, 45.432487, 50.509037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.460724, 45.077839, 50.550068>,  <45.352489, 44.865047, 50.574688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.460724, 45.077839, 50.550068>,  <45.641113, 45.432487, 50.509037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460724, 45.077839, 50.550068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681686, -0.416341, -0.601634,
		0.576131, -0.201393, 0.792158,
		-0.450973, -0.886623, 0.102581,
		45.325432, 44.811852, 50.580841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075623, 45.072056, 50.177212>,  <45.641113, 45.432487, 50.509037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075623, 45.072056, 50.177212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.792023, 44.790958, 50.200768>,  <45.621864, 44.622299, 50.214901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.792023, 44.790958, 50.200768>,  <46.075623, 45.072056, 50.177212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792023, 44.790958, 50.200768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352149, -0.425153, -0.833808,
		0.610990, -0.570434, 0.548904,
		-0.709001, -0.702745, 0.058887,
		45.579323, 44.580135, 50.218433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405651, 44.424290, 50.069309>,  <46.075623, 45.072056, 50.177212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405651, 44.424290, 50.069309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.019012, 44.384026, 49.975033>,  <45.787029, 44.359867, 49.918465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.019012, 44.384026, 49.975033>,  <46.405651, 44.424290, 50.069309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019012, 44.384026, 49.975033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251720, -0.545763, -0.799237,
		-0.048183, -0.831872, 0.552872,
		-0.966600, -0.100659, -0.235695,
		45.729031, 44.353828, 49.904324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248188, 43.724426, 50.013237>,  <46.405651, 44.424290, 50.069309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248188, 43.724426, 50.013237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.979370, 43.918385, 49.789368>,  <45.818081, 44.034760, 49.655045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.979370, 43.918385, 49.789368>,  <46.248188, 43.724426, 50.013237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979370, 43.918385, 49.789368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245132, -0.567512, -0.786028,
		-0.698762, -0.665439, 0.262530,
		-0.672043, 0.484892, -0.559677,
		45.777756, 44.063850, 49.621464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960964, 43.266266, 49.582706>,  <46.248188, 43.724426, 50.013237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960964, 43.266266, 49.582706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.846863, 43.610729, 49.414398>,  <45.778400, 43.817406, 49.313416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.846863, 43.610729, 49.414398>,  <45.960964, 43.266266, 49.582706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846863, 43.610729, 49.414398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252764, -0.355874, -0.899702,
		-0.924522, -0.362997, -0.116155,
		-0.285253, 0.861154, -0.420766,
		45.761288, 43.869076, 49.288170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620918, 43.082016, 49.010822>,  <45.960964, 43.266266, 49.582706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620918, 43.082016, 49.010822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.699661, 43.467762, 48.940109>,  <45.746906, 43.699207, 48.897682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.699661, 43.467762, 48.940109>,  <45.620918, 43.082016, 49.010822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699661, 43.467762, 48.940109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329429, -0.234891, -0.914496,
		-0.923431, 0.121785, -0.363928,
		0.196855, 0.964362, -0.176786,
		45.758717, 43.757072, 48.887074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241879, 43.223789, 48.435612>,  <45.620918, 43.082016, 49.010822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241879, 43.223789, 48.435612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.517670, 43.513241, 48.448158>,  <45.683144, 43.686913, 48.455685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.517670, 43.513241, 48.448158>,  <45.241879, 43.223789, 48.435612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517670, 43.513241, 48.448158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206149, -0.154535, -0.966241,
		-0.694353, 0.672666, -0.255723,
		0.689475, 0.723630, 0.031367,
		45.724514, 43.730331, 48.457569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121494, 43.654377, 47.915524>,  <45.241879, 43.223789, 48.435612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121494, 43.654377, 47.915524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.491035, 43.787682, 47.990814>,  <45.712761, 43.867664, 48.035988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.491035, 43.787682, 47.990814>,  <45.121494, 43.654377, 47.915524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491035, 43.787682, 47.990814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184034, 0.044423, -0.981916,
		-0.335593, 0.941789, -0.020291,
		0.923855, 0.333258, 0.188229,
		45.768192, 43.887657, 48.047283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256653, 44.266426, 47.494648>,  <45.121494, 43.654377, 47.915524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256653, 44.266426, 47.494648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.601006, 44.097519, 47.608192>,  <45.807617, 43.996174, 47.676319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.601006, 44.097519, 47.608192>,  <45.256653, 44.266426, 47.494648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601006, 44.097519, 47.608192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303149, -0.022387, -0.952680,
		0.408643, 0.906194, 0.108738,
		0.860879, -0.422270, 0.283859,
		45.859268, 43.970837, 47.693352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775101, 44.685547, 47.212185>,  <45.256653, 44.266426, 47.494648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775101, 44.685547, 47.212185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936043, 44.322968, 47.263496>,  <46.032608, 44.105419, 47.294285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936043, 44.322968, 47.263496>,  <45.775101, 44.685547, 47.212185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936043, 44.322968, 47.263496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374098, 0.034906, -0.926732,
		0.835560, 0.420865, 0.353146,
		0.402356, -0.906451, 0.128279,
		46.056751, 44.051033, 47.301979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183441, 44.569824, 46.677677>,  <45.775101, 44.685547, 47.212185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183441, 44.569824, 46.677677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.204880, 44.186417, 46.789658>,  <46.217743, 43.956371, 46.856846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.204880, 44.186417, 46.789658>,  <46.183441, 44.569824, 46.677677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204880, 44.186417, 46.789658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166664, -0.267832, -0.948941,
		0.984556, 0.097519, 0.145395,
		0.053599, -0.958518, 0.279948,
		46.220959, 43.898861, 46.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874634, 44.368317, 46.434818>,  <46.183441, 44.569824, 46.677677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874634, 44.368317, 46.434818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.629776, 44.055557, 46.481987>,  <46.482861, 43.867901, 46.510288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.629776, 44.055557, 46.481987>,  <46.874634, 44.368317, 46.434818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.629776, 44.055557, 46.481987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254416, -0.335949, -0.906869,
		0.748697, -0.525137, 0.404579,
		-0.612148, -0.781901, 0.117921,
		46.446133, 43.820988, 46.517365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287926, 43.847553, 46.183388>,  <46.874634, 44.368317, 46.434818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287926, 43.847553, 46.183388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.905296, 43.732254, 46.166073>,  <46.675716, 43.663074, 46.155685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.905296, 43.732254, 46.166073>,  <47.287926, 43.847553, 46.183388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905296, 43.732254, 46.166073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119379, -0.251967, -0.960344,
		0.265910, -0.923811, 0.275436,
		-0.956577, -0.288247, -0.043283,
		46.618324, 43.645779, 46.153088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203945, 43.205914, 45.779293>,  <47.287926, 43.847553, 46.183388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203945, 43.205914, 45.779293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.827469, 43.339497, 45.799858>,  <46.601585, 43.419647, 45.812199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.827469, 43.339497, 45.799858>,  <47.203945, 43.205914, 45.779293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827469, 43.339497, 45.799858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162220, -0.313115, -0.935758,
		-0.296392, -0.889067, 0.348873,
		-0.941189, 0.333945, 0.051420,
		46.545113, 43.439682, 45.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857044, 42.649944, 45.537270>,  <47.203945, 43.205914, 45.779293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857044, 42.649944, 45.537270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.622917, 42.971504, 45.495045>,  <46.482441, 43.164440, 45.469711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.622917, 42.971504, 45.495045>,  <46.857044, 42.649944, 45.537270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622917, 42.971504, 45.495045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272145, -0.317432, -0.908391,
		-0.763765, -0.502971, 0.404577,
		-0.585320, 0.803901, -0.105563,
		46.447323, 43.212673, 45.463375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.248787, 45.169991, 32.978649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609329, 45.315800, 33.072186>,  <42.825653, 45.403286, 33.128307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609329, 45.315800, 33.072186>,  <42.248787, 45.169991, 32.978649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609329, 45.315800, 33.072186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016516, 0.568487, -0.822527,
		-0.432765, 0.737527, 0.518429,
		0.901356, 0.364523, 0.233840,
		42.879734, 45.425156, 33.142338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093624, 45.942295, 32.842197>,  <42.248787, 45.169991, 32.978649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093624, 45.942295, 32.842197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488167, 45.877007, 32.850803>,  <42.724892, 45.837833, 32.855968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488167, 45.877007, 32.850803>,  <42.093624, 45.942295, 32.842197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488167, 45.877007, 32.850803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125871, 0.663416, -0.737587,
		0.106120, 0.730231, 0.674909,
		0.986354, -0.163224, 0.021513,
		42.784073, 45.828041, 32.857258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394894, 46.615398, 32.791744>,  <42.093624, 45.942295, 32.842197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394894, 46.615398, 32.791744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.702240, 46.382538, 32.685383>,  <42.886650, 46.242821, 32.621567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.702240, 46.382538, 32.685383>,  <42.394894, 46.615398, 32.791744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702240, 46.382538, 32.685383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119212, 0.538384, -0.834225,
		0.628805, 0.609295, 0.483077,
		0.768370, -0.582153, -0.265903,
		42.932751, 46.207893, 32.605614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370728, 47.256981, 33.089752>,  <42.394894, 46.615398, 32.791744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370728, 47.256981, 33.089752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.264740, 47.526558, 33.365604>,  <42.201149, 47.688305, 33.531116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.264740, 47.526558, 33.365604>,  <42.370728, 47.256981, 33.089752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264740, 47.526558, 33.365604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165157, -0.736343, 0.656142,
		0.950009, 0.059957, 0.306412,
		-0.264964, 0.673947, 0.689630,
		42.185249, 47.728741, 33.572495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484612, 46.924858, 33.705727>,  <42.370728, 47.256981, 33.089752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484612, 46.924858, 33.705727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250504, 47.229042, 33.818264>,  <42.110039, 47.411552, 33.885788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250504, 47.229042, 33.818264>,  <42.484612, 46.924858, 33.705727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250504, 47.229042, 33.818264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393567, -0.569800, 0.721410,
		0.708917, 0.311491, 0.632780,
		-0.585271, 0.760461, 0.281348,
		42.074921, 47.457180, 33.902668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486217, 46.927250, 34.410873>,  <42.484612, 46.924858, 33.705727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486217, 46.927250, 34.410873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152748, 47.140511, 34.353268>,  <41.952667, 47.268467, 34.318703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152748, 47.140511, 34.353268>,  <42.486217, 46.927250, 34.410873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152748, 47.140511, 34.353268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362736, -0.331989, 0.870750,
		0.416432, 0.778159, 0.470164,
		-0.833671, 0.533153, -0.144015,
		41.902645, 47.300457, 34.310062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372856, 47.335602, 35.044983>,  <42.486217, 46.927250, 34.410873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372856, 47.335602, 35.044983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024529, 47.305748, 34.850620>,  <41.815533, 47.287834, 34.734005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024529, 47.305748, 34.850620>,  <42.372856, 47.335602, 35.044983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024529, 47.305748, 34.850620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455945, -0.246950, 0.855061,
		-0.183810, 0.966150, 0.181020,
		-0.870820, -0.074634, -0.485904,
		41.763283, 47.283360, 34.704849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953976, 47.635372, 35.531277>,  <42.372856, 47.335602, 35.044983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953976, 47.635372, 35.531277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.725800, 47.431458, 35.273682>,  <41.588894, 47.309109, 35.119125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.725800, 47.431458, 35.273682>,  <41.953976, 47.635372, 35.531277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725800, 47.431458, 35.273682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470091, -0.440302, 0.764950,
		-0.673510, 0.739088, 0.011518,
		-0.570437, -0.509787, -0.643987,
		41.554668, 47.278522, 35.080486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377510, 47.661968, 35.938271>,  <41.953976, 47.635372, 35.531277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377510, 47.661968, 35.938271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275452, 47.387245, 35.666039>,  <41.214214, 47.222412, 35.502697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275452, 47.387245, 35.666039>,  <41.377510, 47.661968, 35.938271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275452, 47.387245, 35.666039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564289, -0.465808, 0.681617,
		-0.785160, 0.557961, -0.268706,
		-0.255150, -0.686806, -0.680585,
		41.198906, 47.181202, 35.461864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625019, 47.573429, 35.943718>,  <41.377510, 47.661968, 35.938271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625019, 47.573429, 35.943718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796600, 47.239868, 35.804806>,  <40.899551, 47.039734, 35.721458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796600, 47.239868, 35.804806>,  <40.625019, 47.573429, 35.943718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796600, 47.239868, 35.804806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417309, -0.523903, 0.742549,
		-0.801155, -0.173596, -0.572725,
		0.428956, -0.833900, -0.347285,
		40.925285, 46.989697, 35.700619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030582, 47.053795, 35.975784>,  <40.625019, 47.573429, 35.943718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030582, 47.053795, 35.975784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382332, 46.864960, 36.000549>,  <40.593384, 46.751659, 36.015408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382332, 46.864960, 36.000549>,  <40.030582, 47.053795, 35.975784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382332, 46.864960, 36.000549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384488, -0.627403, 0.677151,
		-0.280832, -0.619274, -0.733235,
		0.879376, -0.472085, 0.061908,
		40.646145, 46.723335, 36.019123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958038, 46.411743, 36.174335>,  <40.030582, 47.053795, 35.975784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958038, 46.411743, 36.174335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.353180, 46.399055, 36.235176>,  <40.590267, 46.391445, 36.271679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.353180, 46.399055, 36.235176>,  <39.958038, 46.411743, 36.174335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353180, 46.399055, 36.235176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145452, -0.532995, 0.833523,
		0.054634, -0.845524, -0.531135,
		0.987855, -0.031716, 0.152103,
		40.649536, 46.389542, 36.280807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109226, 45.772469, 36.280056>,  <39.958038, 46.411743, 36.174335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109226, 45.772469, 36.280056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.425087, 45.951809, 36.447598>,  <40.614601, 46.059414, 36.548122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.425087, 45.951809, 36.447598>,  <40.109226, 45.772469, 36.280056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425087, 45.951809, 36.447598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023802, -0.659762, 0.751098,
		0.613100, -0.603071, -0.510307,
		0.789647, 0.448352, 0.418854,
		40.661980, 46.086315, 36.573254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598564, 45.289661, 36.430744>,  <40.109226, 45.772469, 36.280056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598564, 45.289661, 36.430744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649963, 45.600361, 36.677372>,  <40.680801, 45.786781, 36.825348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649963, 45.600361, 36.677372>,  <40.598564, 45.289661, 36.430744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649963, 45.600361, 36.677372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047380, -0.616203, 0.786161,
		0.990578, -0.130231, -0.042378,
		0.128496, 0.776745, 0.616567,
		40.688511, 45.833385, 36.862343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268818, 45.087654, 36.832104>,  <40.598564, 45.289661, 36.430744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268818, 45.087654, 36.832104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.098152, 45.369064, 37.059441>,  <40.995754, 45.537910, 37.195843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.098152, 45.369064, 37.059441>,  <41.268818, 45.087654, 36.832104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098152, 45.369064, 37.059441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062765, -0.603862, 0.794614,
		0.902231, 0.374702, 0.213487,
		-0.426661, 0.703526, 0.568341,
		40.970154, 45.580124, 37.229942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806480, 45.301891, 37.343090>,  <41.268818, 45.087654, 36.832104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806480, 45.301891, 37.343090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451729, 45.370869, 37.514534>,  <41.238876, 45.412254, 37.617401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451729, 45.370869, 37.514534>,  <41.806480, 45.301891, 37.343090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451729, 45.370869, 37.514534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279908, -0.537514, 0.795443,
		0.367554, 0.825435, 0.428441,
		-0.886880, 0.172444, 0.428611,
		41.185665, 45.422604, 37.643116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987053, 45.376495, 38.095852>,  <41.806480, 45.301891, 37.343090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987053, 45.376495, 38.095852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587074, 45.378429, 38.099316>,  <41.347088, 45.379589, 38.101395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587074, 45.378429, 38.099316>,  <41.987053, 45.376495, 38.095852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587074, 45.378429, 38.099316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005660, -0.438611, 0.898659,
		0.008140, 0.898664, 0.438563,
		-0.999951, 0.004833, 0.008657,
		41.287090, 45.379879, 38.101913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717831, 45.762589, 38.692471>,  <41.987053, 45.376495, 38.095852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717831, 45.762589, 38.692471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433937, 45.502033, 38.585163>,  <41.263599, 45.345699, 38.520779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433937, 45.502033, 38.585163>,  <41.717831, 45.762589, 38.692471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433937, 45.502033, 38.585163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014177, -0.393936, 0.919029,
		-0.704323, 0.648467, 0.288826,
		-0.709738, -0.651388, -0.268265,
		41.221016, 45.306618, 38.504684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263401, 45.731754, 39.291115>,  <41.717831, 45.762589, 38.692471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263401, 45.731754, 39.291115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.131897, 45.394672, 39.120579>,  <41.052994, 45.192425, 39.018257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.131897, 45.394672, 39.120579>,  <41.263401, 45.731754, 39.291115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131897, 45.394672, 39.120579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092489, -0.477996, 0.873479,
		-0.939875, 0.247729, 0.235085,
		-0.328756, -0.842704, -0.426344,
		41.033272, 45.141861, 38.992676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734085, 45.525990, 39.712261>,  <41.263401, 45.731754, 39.291115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734085, 45.525990, 39.712261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851463, 45.201508, 39.509941>,  <40.921890, 45.006817, 39.388550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851463, 45.201508, 39.509941>,  <40.734085, 45.525990, 39.712261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851463, 45.201508, 39.509941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066459, -0.510498, 0.857307,
		-0.953662, -0.285190, -0.095892,
		0.293448, -0.811208, -0.505796,
		40.939499, 44.958145, 39.358204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298187, 44.986942, 40.078632>,  <40.734085, 45.525990, 39.712261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298187, 44.986942, 40.078632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.614365, 44.825932, 39.893951>,  <40.804070, 44.729324, 39.783142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.614365, 44.825932, 39.893951>,  <40.298187, 44.986942, 40.078632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614365, 44.825932, 39.893951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196426, -0.547378, 0.813507,
		-0.580190, -0.733720, -0.353602,
		0.790440, -0.402532, -0.461705,
		40.851498, 44.705173, 39.755440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219620, 44.293194, 40.192783>,  <40.298187, 44.986942, 40.078632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219620, 44.293194, 40.192783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605103, 44.332600, 40.093540>,  <40.836391, 44.356243, 40.033993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605103, 44.332600, 40.093540>,  <40.219620, 44.293194, 40.192783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605103, 44.332600, 40.093540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258831, -0.572331, 0.778103,
		-0.065344, -0.814083, -0.577060,
		0.963710, 0.098517, -0.248108,
		40.894215, 44.362156, 40.019108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516491, 43.632019, 40.308434>,  <40.219620, 44.293194, 40.192783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516491, 43.632019, 40.308434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.831932, 43.877964, 40.305489>,  <41.021194, 44.025532, 40.303722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.831932, 43.877964, 40.305489>,  <40.516491, 43.632019, 40.308434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831932, 43.877964, 40.305489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347033, -0.435142, 0.830795,
		0.507618, -0.657722, -0.556530,
		0.788601, 0.614861, -0.007366,
		41.068512, 44.062424, 40.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068127, 43.186764, 40.347988>,  <40.516491, 43.632019, 40.308434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068127, 43.186764, 40.347988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193985, 43.549877, 40.458931>,  <41.269501, 43.767746, 40.525497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193985, 43.549877, 40.458931>,  <41.068127, 43.186764, 40.347988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193985, 43.549877, 40.458931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452614, -0.400323, 0.796795,
		0.834350, -0.125173, -0.536835,
		0.314645, 0.907785, 0.277354,
		41.288380, 43.822212, 40.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792728, 43.128792, 40.399387>,  <41.068127, 43.186764, 40.347988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792728, 43.128792, 40.399387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675163, 43.433895, 40.629803>,  <41.604622, 43.616955, 40.768051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675163, 43.433895, 40.629803>,  <41.792728, 43.128792, 40.399387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675163, 43.433895, 40.629803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565112, -0.347375, 0.748318,
		0.770884, 0.545468, -0.328942,
		-0.293917, 0.762755, 0.576036,
		41.586987, 43.662720, 40.802612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403984, 43.412601, 40.705090>,  <41.792728, 43.128792, 40.399387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403984, 43.412601, 40.705090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119614, 43.567272, 40.940060>,  <41.948994, 43.660072, 41.081043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119614, 43.567272, 40.940060>,  <42.403984, 43.412601, 40.705090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119614, 43.567272, 40.940060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617001, -0.057904, 0.784829,
		0.337488, 0.920396, -0.197414,
		-0.710923, 0.386675, 0.587428,
		41.906338, 43.683273, 41.116287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766518, 43.845581, 41.192360>,  <42.403984, 43.412601, 40.705090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766518, 43.845581, 41.192360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402412, 43.820568, 41.356071>,  <42.183949, 43.805561, 41.454296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402412, 43.820568, 41.356071>,  <42.766518, 43.845581, 41.192360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402412, 43.820568, 41.356071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414018, -0.143979, 0.898810,
		0.002720, 0.987603, 0.156950,
		-0.910265, -0.062535, 0.409277,
		42.129333, 43.801807, 41.478855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813057, 44.349533, 41.678200>,  <42.766518, 43.845581, 41.192360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813057, 44.349533, 41.678200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527626, 44.083443, 41.766083>,  <42.356365, 43.923786, 41.818813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527626, 44.083443, 41.766083>,  <42.813057, 44.349533, 41.678200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527626, 44.083443, 41.766083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336374, -0.050242, 0.940387,
		-0.614535, 0.744947, 0.259618,
		-0.713582, -0.665230, 0.219705,
		42.313553, 43.883873, 41.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476509, 44.617138, 42.257965>,  <42.813057, 44.349533, 41.678200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476509, 44.617138, 42.257965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.389046, 44.226822, 42.255943>,  <42.336567, 43.992634, 42.254730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.389046, 44.226822, 42.255943>,  <42.476509, 44.617138, 42.257965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389046, 44.226822, 42.255943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331953, -0.079252, 0.939961,
		-0.917604, 0.203851, 0.341245,
		-0.218657, -0.975789, -0.005053,
		42.323448, 43.934086, 42.254429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298111, 44.551228, 42.913097>,  <42.476509, 44.617138, 42.257965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298111, 44.551228, 42.913097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386734, 44.183636, 42.782631>,  <42.439907, 43.963081, 42.704350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386734, 44.183636, 42.782631>,  <42.298111, 44.551228, 42.913097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386734, 44.183636, 42.782631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568171, -0.150183, 0.809090,
		-0.792525, -0.364576, 0.488865,
		0.221555, -0.918983, -0.326165,
		42.453201, 43.907940, 42.684780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134384, 44.080112, 43.449261>,  <42.298111, 44.551228, 42.913097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134384, 44.080112, 43.449261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421066, 43.906067, 43.231270>,  <42.593075, 43.801640, 43.100475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421066, 43.906067, 43.231270>,  <42.134384, 44.080112, 43.449261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421066, 43.906067, 43.231270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585225, -0.049730, 0.809345,
		-0.379262, -0.898999, 0.219000,
		0.716709, -0.435118, -0.544977,
		42.636078, 43.775532, 43.067776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289864, 43.485397, 43.696465>,  <42.134384, 44.080112, 43.449261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289864, 43.485397, 43.696465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631569, 43.566833, 43.505138>,  <42.836594, 43.615696, 43.390343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631569, 43.566833, 43.505138>,  <42.289864, 43.485397, 43.696465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631569, 43.566833, 43.505138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504466, -0.102581, 0.857316,
		0.125475, -0.973668, -0.190335,
		0.854266, 0.203589, -0.478310,
		42.887848, 43.627911, 43.361645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.954037, 42.866253, 43.978512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153831, 43.142841, 43.769753>,  <43.273708, 43.308796, 43.644497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153831, 43.142841, 43.769753>,  <42.954037, 42.866253, 43.978512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153831, 43.142841, 43.769753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624202, 0.130493, 0.770287,
		0.600736, -0.710520, -0.366439,
		0.499487, 0.691471, -0.521900,
		43.303677, 43.350285, 43.613182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739746, 42.681068, 43.825844>,  <42.954037, 42.866253, 43.978512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739746, 42.681068, 43.825844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663269, 43.073429, 43.840168>,  <43.617382, 43.308846, 43.848763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663269, 43.073429, 43.840168>,  <43.739746, 42.681068, 43.825844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663269, 43.073429, 43.840168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762039, 0.125335, 0.635285,
		0.618662, 0.148752, -0.771447,
		-0.191189, 0.980900, 0.035815,
		43.605911, 43.367699, 43.850914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369339, 42.934830, 44.003056>,  <43.739746, 42.681068, 43.825844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369339, 42.934830, 44.003056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121994, 43.244762, 44.055603>,  <43.973587, 43.430721, 44.087132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121994, 43.244762, 44.055603>,  <44.369339, 42.934830, 44.003056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121994, 43.244762, 44.055603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539485, 0.296954, 0.787892,
		0.571473, 0.558078, -0.601637,
		-0.618364, 0.774834, 0.131373,
		43.936485, 43.477211, 44.095016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029053, 43.360188, 43.875298>,  <44.369339, 42.934830, 44.003056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029053, 43.360188, 43.875298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390297, 43.189381, 43.857155>,  <45.607044, 43.086899, 43.846272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390297, 43.189381, 43.857155>,  <45.029053, 43.360188, 43.875298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390297, 43.189381, 43.857155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074768, -0.052358, -0.995825,
		0.422858, 0.902727, -0.079212,
		0.903106, -0.427015, -0.045355,
		45.661228, 43.061275, 43.843548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355843, 43.693027, 43.251915>,  <45.029053, 43.360188, 43.875298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355843, 43.693027, 43.251915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583626, 43.372318, 43.324440>,  <45.720295, 43.179893, 43.367954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583626, 43.372318, 43.324440>,  <45.355843, 43.693027, 43.251915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583626, 43.372318, 43.324440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082913, -0.163425, -0.983065,
		0.817829, 0.574847, -0.026586,
		0.569457, -0.801775, 0.181316,
		45.754463, 43.131786, 43.378834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861946, 43.746025, 42.805706>,  <45.355843, 43.693027, 43.251915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861946, 43.746025, 42.805706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869507, 43.360584, 42.912369>,  <45.874043, 43.129318, 42.976368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869507, 43.360584, 42.912369>,  <45.861946, 43.746025, 42.805706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869507, 43.360584, 42.912369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027036, -0.266113, -0.963563,
		0.999456, 0.025420, 0.021023,
		0.018900, -0.963607, 0.266656,
		45.875175, 43.071503, 42.992367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425831, 43.418671, 42.407822>,  <45.861946, 43.746025, 42.805706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425831, 43.418671, 42.407822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158257, 43.141762, 42.516106>,  <45.997711, 42.975616, 42.581078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158257, 43.141762, 42.516106>,  <46.425831, 43.418671, 42.407822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158257, 43.141762, 42.516106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066788, -0.306745, -0.949446,
		0.740316, -0.653196, 0.158956,
		-0.668933, -0.692274, 0.270714,
		45.957577, 42.934078, 42.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641094, 42.886101, 42.086674>,  <46.425831, 43.418671, 42.407822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641094, 42.886101, 42.086674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264244, 42.788460, 42.178593>,  <46.038132, 42.729874, 42.233746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264244, 42.788460, 42.178593>,  <46.641094, 42.886101, 42.086674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264244, 42.788460, 42.178593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185288, -0.192112, -0.963723,
		0.279393, -0.950530, 0.135765,
		-0.942129, -0.244102, 0.229797,
		45.981606, 42.715229, 42.247532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504761, 42.308647, 41.635456>,  <46.641094, 42.886101, 42.086674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504761, 42.308647, 41.635456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165634, 42.488098, 41.748547>,  <45.962158, 42.595768, 41.816402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165634, 42.488098, 41.748547>,  <46.504761, 42.308647, 41.635456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165634, 42.488098, 41.748547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338457, -0.047364, -0.939789,
		-0.408226, -0.892462, 0.191998,
		-0.847820, 0.448629, 0.282725,
		45.911289, 42.622688, 41.833363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011681, 41.912373, 41.319725>,  <46.504761, 42.308647, 41.635456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011681, 41.912373, 41.319725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794731, 42.233784, 41.417847>,  <45.664562, 42.426632, 41.476719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794731, 42.233784, 41.417847>,  <46.011681, 41.912373, 41.319725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794731, 42.233784, 41.417847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408881, 0.002608, -0.912584,
		-0.733927, -0.595260, 0.327133,
		-0.542372, 0.803529, 0.245305,
		45.632019, 42.474842, 41.491440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294563, 41.801762, 41.177376>,  <46.011681, 41.912373, 41.319725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294563, 41.801762, 41.177376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328560, 42.200218, 41.168591>,  <45.348957, 42.439293, 41.163319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328560, 42.200218, 41.168591>,  <45.294563, 41.801762, 41.177376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328560, 42.200218, 41.168591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598650, 0.033432, -0.800312,
		-0.796488, 0.081173, 0.599181,
		0.084996, 0.996139, -0.021966,
		45.354057, 42.499062, 41.162003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574520, 42.149818, 40.915283>,  <45.294563, 41.801762, 41.177376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574520, 42.149818, 40.915283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842201, 42.443981, 40.872677>,  <45.002808, 42.620480, 40.847115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842201, 42.443981, 40.872677>,  <44.574520, 42.149818, 40.915283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842201, 42.443981, 40.872677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489490, 0.328421, -0.807799,
		-0.559080, 0.592719, 0.579754,
		0.669201, 0.735408, -0.106516,
		45.042961, 42.664604, 40.840721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211475, 42.884586, 40.994099>,  <44.574520, 42.149818, 40.915283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211475, 42.884586, 40.994099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551483, 42.909332, 40.784855>,  <44.755489, 42.924179, 40.659309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551483, 42.909332, 40.784855>,  <44.211475, 42.884586, 40.994099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551483, 42.909332, 40.784855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505650, 0.374097, -0.777412,
		0.147599, 0.925324, 0.349271,
		0.850019, 0.061864, -0.523107,
		44.806488, 42.927891, 40.627922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244843, 43.587643, 40.773865>,  <44.211475, 42.884586, 40.994099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244843, 43.587643, 40.773865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505005, 43.401127, 40.534016>,  <44.661102, 43.289219, 40.390106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505005, 43.401127, 40.534016>,  <44.244843, 43.587643, 40.773865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505005, 43.401127, 40.534016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390291, 0.472077, -0.790453,
		0.651645, 0.748144, 0.125055,
		0.650409, -0.466287, -0.599621,
		44.700127, 43.261242, 40.354130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457016, 44.097694, 40.352982>,  <44.244843, 43.587643, 40.773865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457016, 44.097694, 40.352982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543221, 43.760868, 40.155205>,  <44.594944, 43.558773, 40.036537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543221, 43.760868, 40.155205>,  <44.457016, 44.097694, 40.352982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543221, 43.760868, 40.155205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259266, 0.438827, -0.860356,
		0.941454, 0.313609, -0.123748,
		0.215511, -0.842069, -0.494443,
		44.607872, 43.508247, 40.006870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972546, 44.247574, 39.839195>,  <44.457016, 44.097694, 40.352982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972546, 44.247574, 39.839195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801735, 43.912720, 39.702457>,  <44.699249, 43.711807, 39.620415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801735, 43.912720, 39.702457>,  <44.972546, 44.247574, 39.839195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801735, 43.912720, 39.702457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089746, 0.415416, -0.905193,
		0.899775, -0.355861, -0.252522,
		-0.427025, -0.837133, -0.341844,
		44.673626, 43.661579, 39.599903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334824, 44.124779, 39.265450>,  <44.972546, 44.247574, 39.839195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334824, 44.124779, 39.265450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993584, 43.923660, 39.209717>,  <44.788837, 43.802990, 39.176277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993584, 43.923660, 39.209717>,  <45.334824, 44.124779, 39.265450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993584, 43.923660, 39.209717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013498, 0.245686, -0.969255,
		0.521566, -0.828756, -0.202810,
		-0.853104, -0.502793, -0.139328,
		44.737652, 43.772823, 39.167919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483089, 43.621471, 38.635498>,  <45.334824, 44.124779, 39.265450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483089, 43.621471, 38.635498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088104, 43.642044, 38.695202>,  <44.851112, 43.654388, 38.731026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088104, 43.642044, 38.695202>,  <45.483089, 43.621471, 38.635498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088104, 43.642044, 38.695202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137005, 0.190611, -0.972058,
		-0.078441, -0.980318, -0.181174,
		-0.987460, 0.051428, 0.149260,
		44.791866, 43.657471, 38.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296726, 43.144108, 38.150627>,  <45.483089, 43.621471, 38.635498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296726, 43.144108, 38.150627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993538, 43.390141, 38.237488>,  <44.811626, 43.537762, 38.289604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993538, 43.390141, 38.237488>,  <45.296726, 43.144108, 38.150627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993538, 43.390141, 38.237488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184425, 0.117242, -0.975828,
		-0.625677, -0.779695, 0.024572,
		-0.757968, 0.615085, 0.217151,
		44.766148, 43.574665, 38.302631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798035, 42.977577, 37.664700>,  <45.296726, 43.144108, 38.150627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798035, 42.977577, 37.664700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677094, 43.338871, 37.786522>,  <44.604530, 43.555645, 37.859615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677094, 43.338871, 37.786522>,  <44.798035, 42.977577, 37.664700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677094, 43.338871, 37.786522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197052, 0.253380, -0.947084,
		-0.932606, -0.346366, 0.101374,
		-0.302352, 0.903232, 0.304556,
		44.586388, 43.609840, 37.877888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119003, 43.054867, 37.332733>,  <44.798035, 42.977577, 37.664700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119003, 43.054867, 37.332733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249260, 43.419788, 37.432060>,  <44.327415, 43.638741, 37.491657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249260, 43.419788, 37.432060>,  <44.119003, 43.054867, 37.332733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249260, 43.419788, 37.432060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477195, 0.385311, -0.789823,
		-0.816236, 0.138707, 0.560820,
		0.325644, 0.912302, 0.248315,
		44.346954, 43.693478, 37.506554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544170, 43.530453, 37.346848>,  <44.119003, 43.054867, 37.332733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544170, 43.530453, 37.346848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861549, 43.769634, 37.301426>,  <44.051975, 43.913143, 37.274174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861549, 43.769634, 37.301426>,  <43.544170, 43.530453, 37.346848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861549, 43.769634, 37.301426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392745, 0.360474, -0.846056,
		-0.464967, 0.715899, 0.520860,
		0.793446, 0.597953, -0.113557,
		44.099583, 43.949020, 37.267357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309910, 44.227268, 37.333370>,  <43.544170, 43.530453, 37.346848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309910, 44.227268, 37.333370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664963, 44.240162, 37.149597>,  <43.877995, 44.247898, 37.039333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664963, 44.240162, 37.149597>,  <43.309910, 44.227268, 37.333370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664963, 44.240162, 37.149597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413382, 0.495563, -0.763893,
		0.203050, 0.867974, 0.453202,
		0.887630, 0.032237, -0.459428,
		43.931252, 44.249832, 37.011768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112915, 44.661343, 36.841728>,  <43.309910, 44.227268, 37.333370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112915, 44.661343, 36.841728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475700, 44.563587, 36.704498>,  <43.693371, 44.504932, 36.622162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475700, 44.563587, 36.704498>,  <43.112915, 44.661343, 36.841728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475700, 44.563587, 36.704498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210063, 0.443542, -0.871289,
		0.365099, 0.862291, 0.350938,
		0.906960, -0.244388, -0.343072,
		43.747787, 44.490273, 36.601578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395271, 45.235065, 36.613293>,  <43.112915, 44.661343, 36.841728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395271, 45.235065, 36.613293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586060, 44.937687, 36.425762>,  <43.700531, 44.759262, 36.313244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586060, 44.937687, 36.425762>,  <43.395271, 45.235065, 36.613293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586060, 44.937687, 36.425762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024992, 0.521719, -0.852751,
		0.878564, 0.418453, 0.230264,
		0.476970, -0.743442, -0.468822,
		43.729149, 44.714653, 36.285114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936165, 45.529346, 36.222050>,  <43.395271, 45.235065, 36.613293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936165, 45.529346, 36.222050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860626, 45.169979, 36.063469>,  <43.815304, 44.954357, 35.968319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860626, 45.169979, 36.063469>,  <43.936165, 45.529346, 36.222050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860626, 45.169979, 36.063469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072221, 0.415329, -0.906800,
		0.979347, -0.142614, -0.143319,
		-0.188846, -0.898422, -0.396451,
		43.803970, 44.900452, 35.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975300, 45.767101, 35.550247>,  <43.936165, 45.529346, 36.222050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975300, 45.767101, 35.550247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857544, 45.390148, 35.486691>,  <43.786892, 45.163975, 35.448555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857544, 45.390148, 35.486691>,  <43.975300, 45.767101, 35.550247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857544, 45.390148, 35.486691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039881, 0.154004, -0.987265,
		0.954854, -0.296973, -0.007753,
		-0.294385, -0.942385, -0.158895,
		43.769230, 45.107433, 35.439022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366882, 45.306335, 35.053112>,  <43.975300, 45.767101, 35.550247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366882, 45.306335, 35.053112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995766, 45.157600, 35.040848>,  <43.773094, 45.068359, 35.033489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995766, 45.157600, 35.040848>,  <44.366882, 45.306335, 35.053112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995766, 45.157600, 35.040848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063570, 0.238521, -0.969055,
		0.367646, -0.897131, -0.244935,
		-0.927791, -0.371839, -0.030660,
		43.717430, 45.046047, 35.031651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293148, 44.913116, 34.367428>,  <44.366882, 45.306335, 35.053112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293148, 44.913116, 34.367428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914284, 44.958160, 34.487568>,  <43.686966, 44.985188, 34.559650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914284, 44.958160, 34.487568>,  <44.293148, 44.913116, 34.367428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914284, 44.958160, 34.487568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278857, 0.173660, -0.944500,
		-0.158519, -0.978346, -0.133082,
		-0.947159, 0.112610, 0.300347,
		43.630135, 44.991943, 34.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886452, 44.435555, 34.066631>,  <44.293148, 44.913116, 34.367428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886452, 44.435555, 34.066631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617905, 44.715267, 34.164825>,  <43.456776, 44.883095, 34.223740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617905, 44.715267, 34.164825>,  <43.886452, 44.435555, 34.066631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617905, 44.715267, 34.164825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250593, 0.097526, -0.963168,
		-0.697469, -0.708159, 0.109760,
		-0.671372, 0.699285, 0.245480,
		43.416492, 44.925053, 34.238468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400307, 44.306187, 33.635983>,  <43.886452, 44.435555, 34.066631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400307, 44.306187, 33.635983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306152, 44.672218, 33.766960>,  <43.249660, 44.891838, 33.845547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306152, 44.672218, 33.766960>,  <43.400307, 44.306187, 33.635983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306152, 44.672218, 33.766960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194901, 0.285626, -0.938313,
		-0.952160, -0.284684, 0.111118,
		-0.235384, 0.915081, 0.327447,
		43.235538, 44.946743, 33.865192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824337, 44.503204, 33.282578>,  <43.400307, 44.306187, 33.635983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824337, 44.503204, 33.282578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996101, 44.851128, 33.379776>,  <43.099159, 45.059879, 33.438095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996101, 44.851128, 33.379776>,  <42.824337, 44.503204, 33.282578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996101, 44.851128, 33.379776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200642, 0.354222, -0.913384,
		-0.880538, 0.343465, 0.326627,
		0.429414, 0.869804, 0.242992,
		43.124924, 45.112068, 33.452675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.011158, 42.375702, 45.272961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.090553, 42.759048, 45.190853>,  <46.138191, 42.989056, 45.141586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.090553, 42.759048, 45.190853>,  <46.011158, 42.375702, 45.272961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090553, 42.759048, 45.190853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166690, -0.173377, -0.970646,
		-0.965824, 0.226881, 0.125336,
		0.198491, 0.958366, -0.205271,
		46.150101, 43.046558, 45.129272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481113, 42.677677, 45.079567>,  <46.011158, 42.375702, 45.272961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481113, 42.677677, 45.079567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.773170, 42.877487, 44.893078>,  <45.948406, 42.997372, 44.781185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.773170, 42.877487, 44.893078>,  <45.481113, 42.677677, 45.079567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773170, 42.877487, 44.893078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486761, -0.098596, -0.867953,
		-0.479532, 0.860670, 0.171160,
		0.730146, 0.499525, -0.466221,
		45.992214, 43.027344, 44.753212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114506, 43.024857, 44.519302>,  <45.481113, 42.677677, 45.079567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114506, 43.024857, 44.519302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.490059, 43.059124, 44.385941>,  <45.715389, 43.079685, 44.305923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.490059, 43.059124, 44.385941>,  <45.114506, 43.024857, 44.519302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490059, 43.059124, 44.385941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316300, -0.167504, -0.933754,
		-0.135839, 0.982143, -0.130170,
		0.938883, 0.085668, -0.333405,
		45.771725, 43.084824, 44.285919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950527, 43.655643, 44.593872>,  <45.114506, 43.024857, 44.519302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950527, 43.655643, 44.593872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.561813, 43.746517, 44.568523>,  <44.328583, 43.801041, 44.553314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.561813, 43.746517, 44.568523>,  <44.950527, 43.655643, 44.593872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561813, 43.746517, 44.568523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005134, 0.248250, 0.968682,
		0.235801, 0.941679, -0.240080,
		-0.971788, 0.227184, -0.063372,
		44.270279, 43.814671, 44.549511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912960, 44.307087, 44.806213>,  <44.950527, 43.655643, 44.593872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912960, 44.307087, 44.806213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.546288, 44.150085, 44.836243>,  <44.326283, 44.055885, 44.854259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.546288, 44.150085, 44.836243>,  <44.912960, 44.307087, 44.806213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546288, 44.150085, 44.836243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040281, 0.277651, 0.959837,
		-0.397586, 0.876840, -0.270328,
		-0.916680, -0.392506, 0.075070,
		44.271282, 44.032333, 44.858765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567757, 44.712784, 45.210964>,  <44.912960, 44.307087, 44.806213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567757, 44.712784, 45.210964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.338028, 44.388371, 45.255478>,  <44.200191, 44.193722, 45.282185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.338028, 44.388371, 45.255478>,  <44.567757, 44.712784, 45.210964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338028, 44.388371, 45.255478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188339, 0.263194, 0.946180,
		-0.796670, 0.522452, -0.303907,
		-0.574321, -0.811031, 0.111281,
		44.165733, 44.145061, 45.288860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907310, 44.893795, 45.593472>,  <44.567757, 44.712784, 45.210964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907310, 44.893795, 45.593472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.913628, 44.494633, 45.618587>,  <43.917419, 44.255135, 45.633656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.913628, 44.494633, 45.618587>,  <43.907310, 44.893795, 45.593472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913628, 44.494633, 45.618587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434818, 0.049694, 0.899146,
		-0.900380, -0.041504, -0.433121,
		0.015795, -0.997902, 0.062791,
		43.918365, 44.195263, 45.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229610, 44.656410, 45.930744>,  <43.907310, 44.893795, 45.593472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229610, 44.656410, 45.930744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.500175, 44.367115, 45.986446>,  <43.662514, 44.193539, 46.019867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.500175, 44.367115, 45.986446>,  <43.229610, 44.656410, 45.930744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500175, 44.367115, 45.986446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345475, -0.144576, 0.927224,
		-0.650468, -0.675298, -0.347653,
		0.676415, -0.723236, 0.139257,
		43.703098, 44.150143, 46.028225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815033, 44.227203, 46.185192>,  <43.229610, 44.656410, 45.930744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815033, 44.227203, 46.185192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.192856, 44.159958, 46.298008>,  <43.419552, 44.119610, 46.365696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.192856, 44.159958, 46.298008>,  <42.815033, 44.227203, 46.185192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192856, 44.159958, 46.298008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302955, -0.115041, 0.946036,
		-0.126618, -0.979028, -0.159601,
		0.944556, -0.168138, 0.282035,
		43.476223, 44.109524, 46.382622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742062, 43.683804, 46.603813>,  <42.815033, 44.227203, 46.185192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742062, 43.683804, 46.603813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.093849, 43.838326, 46.715023>,  <43.304924, 43.931038, 46.781750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.093849, 43.838326, 46.715023>,  <42.742062, 43.683804, 46.603813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093849, 43.838326, 46.715023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255137, -0.110487, 0.960572,
		0.401789, -0.915731, 0.001390,
		0.879472, 0.386301, 0.278029,
		43.357693, 43.954216, 46.798431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908909, 43.307888, 47.247868>,  <42.742062, 43.683804, 46.603813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908909, 43.307888, 47.247868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.179199, 43.602573, 47.258091>,  <43.341373, 43.779385, 47.264225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.179199, 43.602573, 47.258091>,  <42.908909, 43.307888, 47.247868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179199, 43.602573, 47.258091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020322, -0.016046, 0.999665,
		0.736874, -0.676018, 0.004129,
		0.675725, 0.736710, 0.025562,
		43.381916, 43.823586, 47.265759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450336, 43.103497, 47.721989>,  <42.908909, 43.307888, 47.247868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450336, 43.103497, 47.721989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.486977, 43.500801, 47.693588>,  <43.508961, 43.739185, 47.676548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.486977, 43.500801, 47.693588>,  <43.450336, 43.103497, 47.721989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486977, 43.500801, 47.693588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093999, 0.079611, 0.992384,
		0.991349, -0.084230, 0.100658,
		0.091601, 0.993261, -0.071005,
		43.514458, 43.798779, 47.672287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631844, 43.245804, 48.382668>,  <43.450336, 43.103497, 47.721989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631844, 43.245804, 48.382668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.511612, 43.597717, 48.235352>,  <43.439472, 43.808865, 48.146961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.511612, 43.597717, 48.235352>,  <43.631844, 43.245804, 48.382668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511612, 43.597717, 48.235352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408490, 0.230182, 0.883262,
		0.861853, 0.415929, 0.290195,
		-0.300577, 0.879784, -0.368286,
		43.421440, 43.861652, 48.124866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822956, 43.758053, 48.864731>,  <43.631844, 43.245804, 48.382668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822956, 43.758053, 48.864731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.527504, 43.913239, 48.644218>,  <43.350231, 44.006348, 48.511913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.527504, 43.913239, 48.644218>,  <43.822956, 43.758053, 48.864731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527504, 43.913239, 48.644218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497901, 0.237321, 0.834130,
		0.454440, 0.890598, 0.017873,
		-0.738633, 0.387961, -0.551278,
		43.305916, 44.029625, 48.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702976, 44.298477, 49.282505>,  <43.822956, 43.758053, 48.864731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702976, 44.298477, 49.282505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.381119, 44.249081, 49.050194>,  <43.188004, 44.219444, 48.910805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.381119, 44.249081, 49.050194>,  <43.702976, 44.298477, 49.282505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381119, 44.249081, 49.050194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575080, 0.405526, 0.710515,
		0.147779, 0.905703, -0.397320,
		-0.804639, -0.123492, -0.580780,
		43.139729, 44.212032, 48.875961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264904, 44.846645, 49.534073>,  <43.702976, 44.298477, 49.282505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264904, 44.846645, 49.534073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.984604, 44.627586, 49.351196>,  <42.816425, 44.496151, 49.241470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.984604, 44.627586, 49.351196>,  <43.264904, 44.846645, 49.534073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984604, 44.627586, 49.351196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633536, 0.183072, 0.751743,
		-0.327994, 0.816433, -0.475245,
		-0.700751, -0.547652, -0.457193,
		42.774380, 44.463291, 49.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677452, 45.247440, 49.534740>,  <43.264904, 44.846645, 49.534073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677452, 45.247440, 49.534740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.570702, 44.862232, 49.519966>,  <42.506653, 44.631107, 49.511101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.570702, 44.862232, 49.519966>,  <42.677452, 45.247440, 49.534740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570702, 44.862232, 49.519966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691517, 0.164660, 0.703343,
		-0.671253, 0.213248, -0.709891,
		-0.266877, -0.963023, -0.036936,
		42.490639, 44.573326, 49.508884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985558, 45.256039, 49.668488>,  <42.677452, 45.247440, 49.534740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985558, 45.256039, 49.668488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.072159, 44.871780, 49.738098>,  <42.124119, 44.641224, 49.779865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.072159, 44.871780, 49.738098>,  <41.985558, 45.256039, 49.668488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072159, 44.871780, 49.738098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696433, -0.027047, 0.717112,
		-0.684183, -0.276459, -0.674881,
		0.216505, -0.960645, 0.174030,
		42.137112, 44.583588, 49.790306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422417, 44.915794, 49.598190>,  <41.985558, 45.256039, 49.668488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422417, 44.915794, 49.598190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.658630, 44.694267, 49.832985>,  <41.800358, 44.561352, 49.973862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.658630, 44.694267, 49.832985>,  <41.422417, 44.915794, 49.598190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658630, 44.694267, 49.832985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665469, 0.077288, 0.742413,
		-0.456528, -0.829044, -0.322906,
		0.590536, -0.553817, 0.586987,
		41.835793, 44.528122, 50.009083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000885, 44.596695, 50.027084>,  <41.422417, 44.915794, 49.598190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000885, 44.596695, 50.027084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.344330, 44.511555, 50.213623>,  <41.550396, 44.460468, 50.325546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.344330, 44.511555, 50.213623>,  <41.000885, 44.596695, 50.027084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344330, 44.511555, 50.213623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468986, 0.041151, 0.882247,
		-0.206980, -0.976217, -0.064493,
		0.858610, -0.212854, 0.466349,
		41.601913, 44.447701, 50.353527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832718, 44.118603, 50.593616>,  <41.000885, 44.596695, 50.027084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832718, 44.118603, 50.593616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.181839, 44.286633, 50.693024>,  <41.391312, 44.387451, 50.752666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.181839, 44.286633, 50.693024>,  <40.832718, 44.118603, 50.593616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181839, 44.286633, 50.693024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314768, 0.095308, 0.944372,
		0.373018, -0.902472, 0.215410,
		0.872799, 0.420072, 0.248517,
		41.443680, 44.412655, 50.767578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069004, 43.753048, 51.133522>,  <40.832718, 44.118603, 50.593616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069004, 43.753048, 51.133522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.243164, 44.111954, 51.162758>,  <41.347660, 44.327297, 51.180298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.243164, 44.111954, 51.162758>,  <41.069004, 43.753048, 51.133522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243164, 44.111954, 51.162758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467576, 0.156020, 0.870075,
		0.769285, -0.413004, 0.487471,
		0.435400, 0.897266, 0.073087,
		41.373783, 44.381134, 51.184685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433830, 43.790737, 51.940109>,  <41.069004, 43.753048, 51.133522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433830, 43.790737, 51.940109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388603, 44.159912, 51.792923>,  <41.361465, 44.381416, 51.704613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388603, 44.159912, 51.792923>,  <41.433830, 43.790737, 51.940109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388603, 44.159912, 51.792923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341877, 0.311589, 0.886585,
		0.932918, 0.226046, 0.280299,
		-0.113071, 0.922938, -0.367967,
		41.354683, 44.436794, 51.682533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894638, 44.258862, 52.355999>,  <41.433830, 43.790737, 51.940109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894638, 44.258862, 52.355999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.635193, 44.489792, 52.157608>,  <41.479527, 44.628349, 52.038574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.635193, 44.489792, 52.157608>,  <41.894638, 44.258862, 52.355999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635193, 44.489792, 52.157608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245187, 0.458418, 0.854246,
		0.720542, 0.675685, -0.155785,
		-0.648616, 0.577324, -0.495978,
		41.440609, 44.662991, 52.008816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113132, 44.923145, 52.589111>,  <41.894638, 44.258862, 52.355999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113132, 44.923145, 52.589111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.736832, 44.957054, 52.457779>,  <41.511051, 44.977402, 52.378979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.736832, 44.957054, 52.457779>,  <42.113132, 44.923145, 52.589111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736832, 44.957054, 52.457779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206033, 0.626124, 0.752010,
		0.269324, 0.775101, -0.571561,
		-0.940752, 0.084774, -0.328327,
		41.454605, 44.982487, 52.359280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092716, 45.538456, 52.523483>,  <42.113132, 44.923145, 52.589111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092716, 45.538456, 52.523483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.704216, 45.444843, 52.540939>,  <41.471115, 45.388676, 52.551411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.704216, 45.444843, 52.540939>,  <42.092716, 45.538456, 52.523483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704216, 45.444843, 52.540939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179031, 0.838859, 0.514066,
		-0.156911, 0.491474, -0.856640,
		-0.971250, -0.234027, 0.043637,
		41.412842, 45.374634, 52.554031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744263, 46.130947, 52.250698>,  <42.092716, 45.538456, 52.523483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744263, 46.130947, 52.250698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.466278, 45.935177, 52.461411>,  <41.299488, 45.817715, 52.587837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.466278, 45.935177, 52.461411>,  <41.744263, 46.130947, 52.250698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466278, 45.935177, 52.461411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193069, 0.832714, 0.518953,
		-0.692643, 0.258948, -0.673196,
		-0.694961, -0.489422, 0.526779,
		41.257790, 45.788349, 52.619446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369392, 46.653038, 52.479412>,  <41.744263, 46.130947, 52.250698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369392, 46.653038, 52.479412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.232124, 46.358109, 52.712166>,  <41.149765, 46.181152, 52.851818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.232124, 46.358109, 52.712166>,  <41.369392, 46.653038, 52.479412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232124, 46.358109, 52.712166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308885, 0.673635, 0.671421,
		-0.887031, 0.050677, -0.458919,
		-0.343170, -0.737325, 0.581882,
		41.129173, 46.136909, 52.886730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659435, 46.907993, 52.681751>,  <41.369392, 46.653038, 52.479412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659435, 46.907993, 52.681751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801857, 46.641388, 52.943741>,  <40.887310, 46.481426, 53.100933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801857, 46.641388, 52.943741>,  <40.659435, 46.907993, 52.681751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801857, 46.641388, 52.943741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221790, 0.620602, 0.752105,
		-0.907765, -0.413054, 0.073140,
		0.356051, -0.666513, 0.654972,
		40.908672, 46.441433, 53.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166756, 46.776451, 53.198704>,  <40.659435, 46.907993, 52.681751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166756, 46.776451, 53.198704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.500511, 46.674553, 53.394211>,  <40.700764, 46.613415, 53.511517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.500511, 46.674553, 53.394211>,  <40.166756, 46.776451, 53.198704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500511, 46.674553, 53.394211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233078, 0.640505, 0.731730,
		-0.499464, -0.724471, 0.475056,
		0.834392, -0.254747, 0.488767,
		40.750828, 46.598129, 53.540840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980804, 46.785034, 53.854702>,  <40.166756, 46.776451, 53.198704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980804, 46.785034, 53.854702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.377869, 46.828690, 53.875542>,  <40.616108, 46.854881, 53.888046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.377869, 46.828690, 53.875542>,  <39.980804, 46.785034, 53.854702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377869, 46.828690, 53.875542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114303, 0.705998, 0.698929,
		0.039499, -0.699754, 0.713291,
		0.992660, 0.109138, 0.052098,
		40.675667, 46.861431, 53.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218552, 46.845333, 54.662666>,  <39.980804, 46.785034, 53.854702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218552, 46.845333, 54.662666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.527489, 46.980736, 54.447670>,  <40.712852, 47.061977, 54.318672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.527489, 46.980736, 54.447670>,  <40.218552, 46.845333, 54.662666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527489, 46.980736, 54.447670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116917, 0.755952, 0.644102,
		0.624351, -0.560310, 0.544278,
		0.772345, 0.338510, -0.537489,
		40.759193, 47.082291, 54.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691494, 47.027367, 55.147461>,  <40.218552, 46.845333, 54.662666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691494, 47.027367, 55.147461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834923, 47.221184, 54.828300>,  <40.920979, 47.337475, 54.636803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834923, 47.221184, 54.828300>,  <40.691494, 47.027367, 55.147461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834923, 47.221184, 54.828300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407118, 0.687999, 0.600760,
		0.840048, -0.540255, 0.049432,
		0.358573, 0.484543, -0.797900,
		40.942493, 47.366547, 54.588932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404472, 47.199654, 55.296352>,  <40.691494, 47.027367, 55.147461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404472, 47.199654, 55.296352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.310135, 47.453110, 55.001633>,  <41.253532, 47.605183, 54.824802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.310135, 47.453110, 55.001633>,  <41.404472, 47.199654, 55.296352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310135, 47.453110, 55.001633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506756, 0.727131, 0.463120,
		0.829201, -0.264151, -0.492595,
		-0.235848, 0.633645, -0.736797,
		41.239380, 47.643204, 54.780594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978191, 47.443226, 54.937443>,  <41.404472, 47.199654, 55.296352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978191, 47.443226, 54.937443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687164, 47.716454, 54.911957>,  <41.512547, 47.880390, 54.896664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687164, 47.716454, 54.911957>,  <41.978191, 47.443226, 54.937443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687164, 47.716454, 54.911957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517018, 0.606998, 0.603528,
		0.450928, 0.406164, -0.794792,
		-0.727569, 0.683069, -0.063719,
		41.468895, 47.921375, 54.892841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
