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
	<37.570435, 52.607105, 49.135754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250584, 52.763657, 49.317924>,  <37.058674, 52.857586, 49.427227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250584, 52.763657, 49.317924>,  <37.570435, 52.607105, 49.135754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250584, 52.763657, 49.317924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235439, -0.493367, 0.837351,
		0.552414, 0.776797, 0.302366,
		-0.799630, 0.391375, 0.455431,
		37.010696, 52.881069, 49.454556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909920, 52.879169, 49.745113>,  <37.570435, 52.607105, 49.135754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909920, 52.879169, 49.745113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527035, 52.769238, 49.781380>,  <37.297306, 52.703278, 49.803139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527035, 52.769238, 49.781380>,  <37.909920, 52.879169, 49.745113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527035, 52.769238, 49.781380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222484, -0.498502, 0.837852,
		-0.185069, 0.822171, 0.538316,
		-0.957209, -0.274827, 0.090663,
		37.239872, 52.686790, 49.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564053, 52.820911, 50.445484>,  <37.909920, 52.879169, 49.745113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564053, 52.820911, 50.445484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628269, 53.035709, 50.776752>,  <37.666798, 53.164589, 50.975513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628269, 53.035709, 50.776752>,  <37.564053, 52.820911, 50.445484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628269, 53.035709, 50.776752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503665, -0.766157, 0.399155,
		0.848852, 0.353039, -0.393465,
		0.160539, 0.536998, 0.828167,
		37.676430, 53.196808, 51.025204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244335, 53.168018, 50.418991>,  <37.564053, 52.820911, 50.445484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244335, 53.168018, 50.418991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129997, 53.060833, 50.787010>,  <38.061394, 52.996521, 51.007820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129997, 53.060833, 50.787010>,  <38.244335, 53.168018, 50.418991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129997, 53.060833, 50.787010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524611, -0.847212, -0.083757,
		0.801920, 0.458727, 0.382746,
		-0.285845, -0.267959, 0.920049,
		38.044243, 52.980446, 51.063026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725357, 52.616177, 50.679123>,  <38.244335, 53.168018, 50.418991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725357, 52.616177, 50.679123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411644, 52.544800, 50.916798>,  <38.223415, 52.501976, 51.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411644, 52.544800, 50.916798>,  <38.725357, 52.616177, 50.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411644, 52.544800, 50.916798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316226, -0.938969, 0.135416,
		0.533761, 0.294102, 0.792845,
		-0.784283, -0.178439, 0.594188,
		38.176357, 52.491268, 51.095055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355125, 52.787243, 50.891430>,  <38.725357, 52.616177, 50.679123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355125, 52.787243, 50.891430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064991, 52.983875, 51.084190>,  <38.890911, 53.101856, 51.199848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064991, 52.983875, 51.084190>,  <39.355125, 52.787243, 50.891430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064991, 52.983875, 51.084190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380215, -0.869661, 0.314844,
		0.573864, 0.045142, 0.817706,
		-0.725339, 0.491581, 0.481903,
		38.847389, 53.131351, 51.228760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298424, 52.501339, 51.547829>,  <39.355125, 52.787243, 50.891430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298424, 52.501339, 51.547829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962101, 52.662224, 51.402905>,  <38.760307, 52.758755, 51.315952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962101, 52.662224, 51.402905>,  <39.298424, 52.501339, 51.547829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962101, 52.662224, 51.402905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493952, -0.843878, 0.209481,
		-0.221485, 0.355094, 0.908214,
		-0.840807, 0.402217, -0.362306,
		38.709858, 52.782890, 51.294212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981796, 52.488396, 51.400021>,  <39.298424, 52.501339, 51.547829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981796, 52.488396, 51.400021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036835, 52.599888, 51.780205>,  <40.069859, 52.666782, 52.008316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036835, 52.599888, 51.780205>,  <39.981796, 52.488396, 51.400021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036835, 52.599888, 51.780205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925339, 0.306097, -0.223726,
		-0.353292, 0.910283, -0.215801,
		0.137598, 0.278730, 0.950461,
		40.078114, 52.683506, 52.065342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311592, 53.188770, 51.334591>,  <39.981796, 52.488396, 51.400021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311592, 53.188770, 51.334591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397869, 52.963211, 51.653461>,  <40.449635, 52.827873, 51.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397869, 52.963211, 51.653461>,  <40.311592, 53.188770, 51.334591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397869, 52.963211, 51.653461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976440, 0.129962, -0.172264,
		-0.006463, 0.815552, 0.578648,
		0.215692, -0.563901, 0.797178,
		40.462578, 52.794041, 51.892616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953667, 53.347092, 51.547649>,  <40.311592, 53.188770, 51.334591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953667, 53.347092, 51.547649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903160, 52.983307, 51.706108>,  <40.872856, 52.765034, 51.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903160, 52.983307, 51.706108>,  <40.953667, 53.347092, 51.547649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903160, 52.983307, 51.706108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985956, -0.159059, -0.050908,
		0.109309, 0.384151, 0.916776,
		-0.126265, -0.909466, 0.396143,
		40.865280, 52.710468, 51.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460598, 53.351337, 52.136089>,  <40.953667, 53.347092, 51.547649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460598, 53.351337, 52.136089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344940, 53.014671, 51.953667>,  <41.275543, 52.812672, 51.844212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344940, 53.014671, 51.953667>,  <41.460598, 53.351337, 52.136089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344940, 53.014671, 51.953667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933091, -0.141374, -0.330687,
		0.213854, -0.521161, 0.826231,
		-0.289149, -0.841668, -0.456058,
		41.258194, 52.762173, 51.816849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020134, 54.043179, 52.327320>,  <41.460598, 53.351337, 52.136089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020134, 54.043179, 52.327320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232204, 54.379581, 52.284218>,  <41.359447, 54.581425, 52.258358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232204, 54.379581, 52.284218>,  <41.020134, 54.043179, 52.327320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232204, 54.379581, 52.284218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847882, -0.526217, 0.064740,
		-0.002255, -0.125688, -0.992067,
		0.530180, 0.841010, -0.107755,
		41.391258, 54.631886, 52.251892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690369, 54.383373, 52.663071>,  <41.020134, 54.043179, 52.327320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690369, 54.383373, 52.663071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835022, 54.335102, 52.293282>,  <41.921814, 54.306141, 52.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835022, 54.335102, 52.293282>,  <41.690369, 54.383373, 52.663071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835022, 54.335102, 52.293282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349731, 0.901620, -0.254499,
		0.864239, 0.415354, 0.283853,
		0.361634, -0.120676, -0.924477,
		41.943512, 54.298901, 52.015938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094040, 54.976913, 52.439659>,  <41.690369, 54.383373, 52.663071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094040, 54.976913, 52.439659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928082, 54.807369, 52.117615>,  <41.828506, 54.705643, 51.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928082, 54.807369, 52.117615>,  <42.094040, 54.976913, 52.439659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928082, 54.807369, 52.117615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444364, 0.866555, -0.227210,
		0.793978, 0.263493, -0.547878,
		-0.414898, -0.423857, -0.805112,
		41.803612, 54.680214, 51.876080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293312, 55.145786, 51.725483>,  <42.094040, 54.976913, 52.439659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293312, 55.145786, 51.725483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902969, 55.058422, 51.725121>,  <41.668762, 55.006004, 51.724903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902969, 55.058422, 51.725121>,  <42.293312, 55.145786, 51.725483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902969, 55.058422, 51.725121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204823, 0.916570, -0.343433,
		0.075839, -0.334956, -0.939177,
		-0.975857, -0.218410, -0.000905,
		41.610214, 54.992901, 51.724850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132061, 55.629143, 51.404243>,  <42.293312, 55.145786, 51.725483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132061, 55.629143, 51.404243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769821, 55.497601, 51.511379>,  <41.552475, 55.418674, 51.575661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769821, 55.497601, 51.511379>,  <42.132061, 55.629143, 51.404243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769821, 55.497601, 51.511379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379467, 0.910310, -0.165352,
		-0.189442, -0.251380, -0.949168,
		-0.905603, -0.328853, 0.267842,
		41.498138, 55.398945, 51.591732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633327, 55.712486, 50.843105>,  <42.132061, 55.629143, 51.404243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633327, 55.712486, 50.843105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418140, 55.721924, 51.180157>,  <41.289028, 55.727589, 51.382389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418140, 55.721924, 51.180157>,  <41.633327, 55.712486, 50.843105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418140, 55.721924, 51.180157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356326, 0.899546, -0.252684,
		-0.763950, -0.436189, -0.475521,
		-0.537971, 0.023597, 0.842633,
		41.256748, 55.729004, 51.432945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666924, 56.458115, 50.782639>,  <41.633327, 55.712486, 50.843105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666924, 56.458115, 50.782639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567482, 56.681114, 50.465805>,  <41.507816, 56.814915, 50.275703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567482, 56.681114, 50.465805>,  <41.666924, 56.458115, 50.782639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567482, 56.681114, 50.465805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279700, -0.824238, -0.492341,
		-0.927343, 0.099150, 0.360838,
		-0.248600, 0.557496, -0.792083,
		41.492901, 56.848362, 50.228180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137222, 56.674278, 51.364662>,  <41.666924, 56.458115, 50.782639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137222, 56.674278, 51.364662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321766, 56.349167, 51.506958>,  <42.432491, 56.154102, 51.592335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321766, 56.349167, 51.506958>,  <42.137222, 56.674278, 51.364662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321766, 56.349167, 51.506958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870046, 0.492966, -0.002059,
		-0.173692, 0.310457, 0.934584,
		0.461357, -0.812774, 0.355736,
		42.460175, 56.105335, 51.613678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488270, 56.766598, 52.097916>,  <42.137222, 56.674278, 51.364662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488270, 56.766598, 52.097916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655735, 56.502953, 51.848022>,  <42.756214, 56.344765, 51.698086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655735, 56.502953, 51.848022>,  <42.488270, 56.766598, 52.097916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655735, 56.502953, 51.848022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807563, 0.584880, -0.075876,
		0.415404, -0.472744, 0.777144,
		0.418666, -0.659112, -0.624732,
		42.781334, 56.305218, 51.660603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057423, 56.501110, 52.407707>,  <42.488270, 56.766598, 52.097916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057423, 56.501110, 52.407707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112316, 56.545341, 52.013969>,  <43.145252, 56.571880, 51.777725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112316, 56.545341, 52.013969>,  <43.057423, 56.501110, 52.407707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112316, 56.545341, 52.013969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745812, 0.642446, 0.176145,
		0.651868, -0.758311, 0.005696,
		0.137232, 0.110575, -0.984348,
		43.153484, 56.578514, 51.718666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665211, 56.212681, 52.201710>,  <43.057423, 56.501110, 52.407707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665211, 56.212681, 52.201710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567818, 56.525467, 51.972191>,  <43.509380, 56.713139, 51.834480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567818, 56.525467, 51.972191>,  <43.665211, 56.212681, 52.201710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567818, 56.525467, 51.972191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760890, 0.520872, 0.386961,
		0.601466, -0.342380, -0.721814,
		-0.243485, 0.781964, -0.573800,
		43.494774, 56.760056, 51.800053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218826, 56.494186, 51.761551>,  <43.665211, 56.212681, 52.201710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218826, 56.494186, 51.761551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982361, 56.811874, 51.817753>,  <43.840481, 57.002487, 51.851475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982361, 56.811874, 51.817753>,  <44.218826, 56.494186, 51.761551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982361, 56.811874, 51.817753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756678, 0.485815, 0.437517,
		0.279223, 0.364964, -0.888164,
		-0.591162, 0.794220, 0.140509,
		43.805012, 57.050140, 51.859905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626549, 57.130905, 51.601002>,  <44.218826, 56.494186, 51.761551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626549, 57.130905, 51.601002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387512, 57.172356, 51.919029>,  <44.244091, 57.197227, 52.109848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387512, 57.172356, 51.919029>,  <44.626549, 57.130905, 51.601002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387512, 57.172356, 51.919029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778979, 0.309920, 0.545106,
		-0.189922, 0.945098, -0.265930,
		-0.597596, 0.103626, 0.795073,
		44.208233, 57.203445, 52.157551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599110, 57.801727, 51.832680>,  <44.626549, 57.130905, 51.601002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599110, 57.801727, 51.832680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520741, 57.554432, 52.137154>,  <44.473721, 57.406055, 52.319836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520741, 57.554432, 52.137154>,  <44.599110, 57.801727, 51.832680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520741, 57.554432, 52.137154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826412, 0.313758, 0.467546,
		-0.527881, 0.720652, 0.449446,
		-0.195920, -0.618236, 0.761183,
		44.461964, 57.368961, 52.365509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731647, 58.115929, 52.464138>,  <44.599110, 57.801727, 51.832680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731647, 58.115929, 52.464138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782753, 57.732010, 52.564102>,  <44.813416, 57.501656, 52.624081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782753, 57.732010, 52.564102>,  <44.731647, 58.115929, 52.464138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782753, 57.732010, 52.564102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939572, 0.197824, 0.279410,
		-0.317617, 0.199115, 0.927078,
		0.127763, -0.959802, 0.249915,
		44.821083, 57.444069, 52.639076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170074, 58.073196, 53.060814>,  <44.731647, 58.115929, 52.464138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170074, 58.073196, 53.060814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203899, 57.725540, 52.865902>,  <45.224194, 57.516945, 52.748955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203899, 57.725540, 52.865902>,  <45.170074, 58.073196, 53.060814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203899, 57.725540, 52.865902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993069, 0.033449, 0.112673,
		-0.081630, -0.493426, 0.865949,
		0.084561, -0.869145, -0.487275,
		45.229267, 57.464798, 52.719719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463543, 57.430351, 53.489628>,  <45.170074, 58.073196, 53.060814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463543, 57.430351, 53.489628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548546, 57.359627, 53.105217>,  <45.599548, 57.317192, 52.874569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548546, 57.359627, 53.105217>,  <45.463543, 57.430351, 53.489628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548546, 57.359627, 53.105217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943037, -0.220527, 0.249098,
		-0.255976, -0.959222, 0.119873,
		0.212505, -0.176808, -0.961031,
		45.612297, 57.306583, 52.816906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803028, 56.738846, 53.423298>,  <45.463543, 57.430351, 53.489628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803028, 56.738846, 53.423298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961941, 56.949612, 53.122757>,  <46.057289, 57.076073, 52.942432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961941, 56.949612, 53.122757>,  <45.803028, 56.738846, 53.423298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961941, 56.949612, 53.122757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912275, -0.315617, 0.261036,
		-0.099595, -0.789142, -0.606082,
		0.397285, 0.526916, -0.751349,
		46.081127, 57.107685, 52.897354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160122, 56.401424, 52.860676>,  <45.803028, 56.738846, 53.423298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160122, 56.401424, 52.860676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300453, 56.757748, 52.976181>,  <46.384651, 56.971542, 53.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300453, 56.757748, 52.976181>,  <46.160122, 56.401424, 52.860676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300453, 56.757748, 52.976181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858518, -0.429114, 0.280730,
		0.373987, 0.149417, -0.915319,
		0.350830, 0.890806, 0.288760,
		46.405701, 57.024990, 53.062809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617748, 56.005699, 53.400845>,  <46.160122, 56.401424, 52.860676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617748, 56.005699, 53.400845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267624, 55.890862, 53.556488>,  <46.057549, 55.821960, 53.649872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267624, 55.890862, 53.556488>,  <46.617748, 56.005699, 53.400845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267624, 55.890862, 53.556488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286314, 0.340755, 0.895494,
		-0.389679, 0.895245, -0.216069,
		-0.875314, -0.287092, 0.389107,
		46.005032, 55.804733, 53.673222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451073, 56.531773, 53.856651>,  <46.617748, 56.005699, 53.400845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451073, 56.531773, 53.856651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294456, 56.175125, 53.947609>,  <46.200485, 55.961136, 54.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294456, 56.175125, 53.947609>,  <46.451073, 56.531773, 53.856651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294456, 56.175125, 53.947609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274402, 0.122736, 0.953750,
		-0.878292, 0.435832, 0.196605,
		-0.391544, -0.891620, 0.227392,
		46.176994, 55.907639, 54.015827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003719, 56.498844, 54.536205>,  <46.451073, 56.531773, 53.856651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003719, 56.498844, 54.536205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203098, 56.168316, 54.431328>,  <46.322727, 55.969997, 54.368401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203098, 56.168316, 54.431328>,  <46.003719, 56.498844, 54.536205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203098, 56.168316, 54.431328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548103, 0.066059, 0.833798,
		-0.671664, -0.559313, 0.485836,
		0.498447, -0.826321, -0.262192,
		46.352634, 55.920422, 54.352669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433792, 56.174580, 55.152962>,  <46.003719, 56.498844, 54.536205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433792, 56.174580, 55.152962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574932, 55.959183, 54.846886>,  <46.659615, 55.829945, 54.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574932, 55.959183, 54.846886>,  <46.433792, 56.174580, 55.152962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574932, 55.959183, 54.846886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809068, -0.235198, 0.538601,
		-0.470006, -0.809138, 0.352689,
		0.352850, -0.538495, -0.765193,
		46.680786, 55.797634, 54.617329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493279, 55.459675, 55.316349>,  <46.433792, 56.174580, 55.152962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493279, 55.459675, 55.316349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757370, 55.660576, 55.092979>,  <46.915825, 55.781116, 54.958958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757370, 55.660576, 55.092979>,  <46.493279, 55.459675, 55.316349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757370, 55.660576, 55.092979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728545, -0.247578, 0.638692,
		0.182535, -0.828519, -0.529375,
		0.660230, 0.502257, -0.558422,
		46.955441, 55.811253, 54.925453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150806, 54.992161, 55.008556>,  <46.493279, 55.459675, 55.316349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150806, 54.992161, 55.008556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.247440, 55.378796, 55.042854>,  <47.305420, 55.610775, 55.063435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.247440, 55.378796, 55.042854>,  <47.150806, 54.992161, 55.008556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.247440, 55.378796, 55.042854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727718, -0.238915, 0.642921,
		0.641924, -0.092918, -0.761118,
		0.241581, 0.966585, 0.085747,
		47.319916, 55.668770, 55.068577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.895298, 55.204269, 54.722939>,  <47.150806, 54.992161, 55.008556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.895298, 55.204269, 54.722939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738991, 55.402473, 55.033234>,  <47.645206, 55.521397, 55.219410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738991, 55.402473, 55.033234>,  <47.895298, 55.204269, 54.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.738991, 55.402473, 55.033234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805130, -0.224494, 0.548969,
		0.446167, 0.839093, -0.311222,
		-0.390768, 0.495506, 0.775741,
		47.621761, 55.551125, 55.265957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.359051, 55.545769, 55.200504>,  <47.895298, 55.204269, 54.722939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.359051, 55.545769, 55.200504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.040848, 55.482803, 55.434563>,  <47.849926, 55.445023, 55.574997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.040848, 55.482803, 55.434563>,  <48.359051, 55.545769, 55.200504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.040848, 55.482803, 55.434563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592826, -0.002318, 0.805327,
		-0.125412, 0.987530, 0.095162,
		-0.795506, -0.157412, 0.585142,
		47.802197, 55.435581, 55.610104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.116898, 55.756245, 55.071896>,  <48.359051, 55.545769, 55.200504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.116898, 55.756245, 55.071896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.932354, 56.100624, 55.157608>,  <48.821629, 56.307251, 55.209038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.932354, 56.100624, 55.157608>,  <49.116898, 55.756245, 55.071896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.932354, 56.100624, 55.157608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855569, 0.367805, 0.364310,
		0.234837, 0.351412, -0.906290,
		-0.461361, 0.860947, 0.214283,
		48.793945, 56.358910, 55.221893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.623840, 56.288265, 54.812519>,  <49.116898, 55.756245, 55.071896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.623840, 56.288265, 54.812519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.377586, 56.392429, 55.110023>,  <49.229832, 56.454929, 55.288525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.377586, 56.392429, 55.110023>,  <49.623840, 56.288265, 54.812519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.377586, 56.392429, 55.110023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780078, 0.335131, 0.528361,
		-0.111667, 0.905469, -0.409459,
		-0.615637, 0.260409, 0.743759,
		49.192894, 56.470551, 55.333153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.567734, 57.077679, 55.029015>,  <49.623840, 56.288265, 54.812519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.567734, 57.077679, 55.029015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.489353, 56.834904, 55.337097>,  <49.442326, 56.689240, 55.521946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.489353, 56.834904, 55.337097>,  <49.567734, 57.077679, 55.029015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.489353, 56.834904, 55.337097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678183, 0.483435, 0.553497,
		-0.708287, 0.630803, 0.316887,
		-0.195954, -0.606942, 0.770211,
		49.430569, 56.652821, 55.568161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.295113, 57.494835, 55.638149>,  <49.567734, 57.077679, 55.029015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.295113, 57.494835, 55.638149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.494862, 57.160431, 55.729103>,  <49.614712, 56.959789, 55.783676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.494862, 57.160431, 55.729103>,  <49.295113, 57.494835, 55.638149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.494862, 57.160431, 55.729103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583400, 0.518513, 0.625131,
		-0.640521, -0.179519, 0.746663,
		0.499377, -0.836013, 0.227387,
		49.644676, 56.909626, 55.797318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.001953, 57.760422, 55.108364>,  <49.295113, 57.494835, 55.638149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.001953, 57.760422, 55.108364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.178150, 58.113964, 55.171318>,  <49.283867, 58.326088, 55.209091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.178150, 58.113964, 55.171318>,  <49.001953, 57.760422, 55.108364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.178150, 58.113964, 55.171318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691355, -0.445802, 0.568584,
		0.572710, -0.141644, -0.807428,
		0.440489, 0.883854, 0.157389,
		49.310299, 58.379120, 55.218536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.758820, 57.908192, 54.983105>,  <49.001953, 57.760422, 55.108364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.758820, 57.908192, 54.983105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.582539, 57.992584, 55.332108>,  <49.476768, 58.043221, 55.541508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.582539, 57.992584, 55.332108>,  <49.758820, 57.908192, 54.983105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.582539, 57.992584, 55.332108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754547, -0.439449, 0.487384,
		0.486253, 0.873138, 0.034468,
		-0.440701, 0.210984, 0.872507,
		49.450329, 58.055878, 55.593861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.271210, 58.247089, 55.404663>,  <49.758820, 57.908192, 54.983105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.271210, 58.247089, 55.404663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.003834, 58.109409, 55.668396>,  <49.843410, 58.026802, 55.826633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.003834, 58.109409, 55.668396>,  <50.271210, 58.247089, 55.404663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.003834, 58.109409, 55.668396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743750, -0.315432, 0.589355,
		0.005117, 0.884324, 0.466846,
		-0.668438, -0.344201, 0.659330,
		49.803303, 58.006149, 55.866196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.349522, 58.430157, 56.185715>,  <50.271210, 58.247089, 55.404663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.349522, 58.430157, 56.185715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.188568, 58.064537, 56.165314>,  <50.091995, 57.845165, 56.153072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.188568, 58.064537, 56.165314>,  <50.349522, 58.430157, 56.185715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.188568, 58.064537, 56.165314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746782, -0.359959, 0.559237,
		-0.529529, 0.186940, 0.827437,
		-0.402387, -0.914048, -0.051005,
		50.067852, 57.790321, 56.150013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.175797, 58.282246, 56.775208>,  <50.349522, 58.430157, 56.185715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.175797, 58.282246, 56.775208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.257214, 57.951305, 56.565804>,  <50.306065, 57.752743, 56.440163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.257214, 57.951305, 56.565804>,  <50.175797, 58.282246, 56.775208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.257214, 57.951305, 56.565804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656133, -0.281596, 0.700138,
		-0.726677, -0.486001, 0.485534,
		0.203544, -0.827349, -0.523511,
		50.318275, 57.703102, 56.408749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.451900, 57.918827, 57.304306>,  <50.175797, 58.282246, 56.775208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.451900, 57.918827, 57.304306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.501217, 57.654102, 57.008522>,  <50.530807, 57.495266, 56.831051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.501217, 57.654102, 57.008522>,  <50.451900, 57.918827, 57.304306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.501217, 57.654102, 57.008522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450800, -0.626474, 0.635854,
		-0.884069, -0.411746, 0.221105,
		0.123293, -0.661813, -0.739461,
		50.538204, 57.455559, 56.786682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.540321, 57.531872, 57.932648>,  <50.451900, 57.918827, 57.304306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.540321, 57.531872, 57.932648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.669464, 57.153484, 57.920547>,  <50.746948, 56.926453, 57.913288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.669464, 57.153484, 57.920547>,  <50.540321, 57.531872, 57.932648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.669464, 57.153484, 57.920547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863784, 0.281446, 0.417931,
		-0.386835, -0.161060, 0.907975,
		0.322857, -0.945964, -0.030248,
		50.766323, 56.869694, 57.911472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.976028, 57.732800, 58.478172>,  <50.540321, 57.531872, 57.932648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.976028, 57.732800, 58.478172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.054867, 57.351120, 58.388145>,  <51.102169, 57.122112, 58.334129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.054867, 57.351120, 58.388145>,  <50.976028, 57.732800, 58.478172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.054867, 57.351120, 58.388145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900915, 0.085736, 0.425443,
		-0.386662, -0.286618, 0.876552,
		0.197092, -0.954201, -0.225068,
		51.113995, 57.064861, 58.320625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.399658, 57.381840, 58.979294>,  <50.976028, 57.732800, 58.478172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.399658, 57.381840, 58.979294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.468422, 57.136673, 58.670807>,  <51.509678, 56.989571, 58.485714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.468422, 57.136673, 58.670807>,  <51.399658, 57.381840, 58.979294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.468422, 57.136673, 58.670807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937883, -0.137669, 0.318468,
		-0.301368, -0.778059, 0.551182,
		0.171906, -0.612920, -0.771218,
		51.519993, 56.952797, 58.439442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.666817, 56.762596, 59.293453>,  <51.399658, 57.381840, 58.979294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.666817, 56.762596, 59.293453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.780491, 56.751060, 58.910118>,  <51.848694, 56.744141, 58.680119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.780491, 56.751060, 58.910118>,  <51.666817, 56.762596, 59.293453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.780491, 56.751060, 58.910118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927884, -0.243389, 0.282477,
		-0.241394, -0.969500, -0.042412,
		0.284185, -0.028835, -0.958336,
		51.865746, 56.742409, 58.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.080639, 56.145069, 59.145935>,  <51.666817, 56.762596, 59.293453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.080639, 56.145069, 59.145935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.196869, 56.414467, 58.874062>,  <52.266605, 56.576103, 58.710938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.196869, 56.414467, 58.874062>,  <52.080639, 56.145069, 59.145935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.196869, 56.414467, 58.874062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934389, -0.046711, 0.353178,
		0.206114, -0.737716, -0.642878,
		0.290575, 0.673493, -0.679687,
		52.284042, 56.616516, 58.670155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.717236, 55.897671, 58.826061>,  <52.080639, 56.145069, 59.145935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.717236, 55.897671, 58.826061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.699600, 56.297031, 58.811966>,  <52.689018, 56.536648, 58.803509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.699600, 56.297031, 58.811966>,  <52.717236, 55.897671, 58.826061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.699600, 56.297031, 58.811966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984899, 0.049344, 0.165950,
		0.167424, -0.027388, -0.985504,
		-0.044084, 0.998406, -0.035236,
		52.686375, 56.596554, 58.801395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.149609, 56.219929, 58.310337>,  <52.717236, 55.897671, 58.826061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.149609, 56.219929, 58.310337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.102264, 56.460251, 58.626572>,  <53.073856, 56.604443, 58.816311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.102264, 56.460251, 58.626572>,  <53.149609, 56.219929, 58.310337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.102264, 56.460251, 58.626572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991301, 0.025339, 0.129153,
		0.057563, 0.798996, -0.598575,
		-0.118360, 0.600802, 0.790587,
		53.066757, 56.640491, 58.863747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.572224, 56.877914, 58.240284>,  <53.149609, 56.219929, 58.310337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.572224, 56.877914, 58.240284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.531887, 56.828293, 58.635139>,  <53.507687, 56.798519, 58.872051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.531887, 56.828293, 58.635139>,  <53.572224, 56.877914, 58.240284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.531887, 56.828293, 58.635139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986563, 0.115728, 0.115326,
		-0.128547, 0.985503, 0.110720,
		-0.100841, -0.124057, 0.987138,
		53.501637, 56.791077, 58.931282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.928345, 57.359837, 58.655231>,  <53.572224, 56.877914, 58.240284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.928345, 57.359837, 58.655231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.935581, 57.047966, 58.905602>,  <53.939922, 56.860844, 59.055824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.935581, 57.047966, 58.905602>,  <53.928345, 57.359837, 58.655231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.935581, 57.047966, 58.905602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997147, 0.059952, 0.045863,
		-0.073284, 0.623310, 0.778533,
		0.018088, -0.779673, 0.625925,
		53.941010, 56.814064, 59.093380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.384460, 57.608738, 59.190876>,  <53.928345, 57.359837, 58.655231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.384460, 57.608738, 59.190876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.365822, 57.210220, 59.161972>,  <54.354637, 56.971107, 59.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.365822, 57.210220, 59.161972>,  <54.384460, 57.608738, 59.190876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.365822, 57.210220, 59.161972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992510, -0.054353, 0.109407,
		-0.112929, -0.066616, 0.991367,
		-0.046595, -0.996297, -0.072255,
		54.351845, 56.911331, 59.140297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.660835, 57.190273, 59.745453>,  <54.384460, 57.608738, 59.190876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.660835, 57.190273, 59.745453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.687523, 56.951969, 59.425301>,  <54.703537, 56.808987, 59.233208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.687523, 56.951969, 59.425301>,  <54.660835, 57.190273, 59.745453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.687523, 56.951969, 59.425301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982877, -0.098842, 0.155508,
		-0.171757, -0.797054, 0.578968,
		0.066722, -0.595764, -0.800384,
		54.707539, 56.773239, 59.185184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.875160, 56.463013, 59.925247>,  <54.660835, 57.190273, 59.745453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.875160, 56.463013, 59.925247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.976631, 56.617706, 59.570602>,  <55.037514, 56.710522, 59.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.976631, 56.617706, 59.570602>,  <54.875160, 56.463013, 59.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.976631, 56.617706, 59.570602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967285, -0.104387, 0.231224,
		-0.003129, -0.916264, -0.400563,
		0.253676, 0.386735, -0.886614,
		55.052734, 56.733727, 59.304619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.420647, 56.117500, 59.666916>,  <54.875160, 56.463013, 59.925247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.420647, 56.117500, 59.666916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.437279, 56.469345, 59.477364>,  <55.447258, 56.680450, 59.363632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.437279, 56.469345, 59.477364>,  <55.420647, 56.117500, 59.666916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.437279, 56.469345, 59.477364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999065, -0.031001, 0.030124,
		0.011806, -0.474687, -0.880076,
		0.041582, 0.879609, -0.473877,
		55.449753, 56.733227, 59.335201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.940090, 56.059250, 59.048378>,  <55.420647, 56.117500, 59.666916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.940090, 56.059250, 59.048378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.940758, 56.436066, 59.182579>,  <55.941158, 56.662155, 59.263100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.940758, 56.436066, 59.182579>,  <55.940090, 56.059250, 59.048378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.940758, 56.436066, 59.182579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997654, 0.021389, -0.065028,
		-0.068435, 0.334821, -0.939793,
		0.001671, 0.942039, 0.335499,
		55.941257, 56.718678, 59.283230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.483562, 56.356533, 58.685661>,  <55.940090, 56.059250, 59.048378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.483562, 56.356533, 58.685661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.384811, 56.627670, 58.962669>,  <56.325562, 56.790352, 59.128872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.384811, 56.627670, 58.962669>,  <56.483562, 56.356533, 58.685661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.384811, 56.627670, 58.962669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952510, 0.301204, 0.044735,
		-0.178265, 0.670674, -0.720013,
		-0.246873, 0.677845, 0.692517,
		56.310749, 56.831024, 59.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.642967, 56.976498, 58.537918>,  <56.483562, 56.356533, 58.685661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.642967, 56.976498, 58.537918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.673637, 56.987133, 58.936600>,  <56.692039, 56.993515, 59.175808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.673637, 56.987133, 58.936600>,  <56.642967, 56.976498, 58.537918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.673637, 56.987133, 58.936600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979143, 0.186627, -0.080306,
		-0.188146, 0.982071, -0.011722,
		0.076678, 0.026587, 0.996701,
		56.696640, 56.995110, 59.235611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.039402, 57.575180, 58.754463>,  <56.642967, 56.976498, 58.537918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.039402, 57.575180, 58.754463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.072685, 57.287739, 59.030632>,  <57.092655, 57.115273, 59.196335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.072685, 57.287739, 59.030632>,  <57.039402, 57.575180, 58.754463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.072685, 57.287739, 59.030632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980073, -0.066392, -0.187212,
		0.180370, 0.692244, 0.698759,
		0.083205, -0.718603, 0.690425,
		57.097645, 57.072159, 59.237759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.665340, 57.779701, 59.078697>,  <57.039402, 57.575180, 58.754463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.665340, 57.779701, 59.078697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.619003, 57.386593, 59.136307>,  <57.591202, 57.150726, 59.170872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.619003, 57.386593, 59.136307>,  <57.665340, 57.779701, 59.078697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.619003, 57.386593, 59.136307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993265, -0.114943, 0.014571,
		0.002234, 0.144743, 0.989467,
		-0.115841, -0.982770, 0.144025,
		57.584251, 57.091763, 59.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.260090, 57.526573, 59.535839>,  <57.665340, 57.779701, 59.078697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.260090, 57.526573, 59.535839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.131676, 57.199600, 59.344528>,  <58.054626, 57.003418, 59.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.131676, 57.199600, 59.344528>,  <58.260090, 57.526573, 59.535839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.131676, 57.199600, 59.344528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945354, -0.306953, -0.109936,
		-0.056943, -0.487431, 0.871303,
		-0.321035, -0.817429, -0.478273,
		58.035366, 56.954372, 59.201046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.527016, 56.881523, 59.946640>,  <58.260090, 57.526573, 59.535839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.527016, 56.881523, 59.946640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.491035, 56.904556, 59.548927>,  <58.469448, 56.918377, 59.310299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.491035, 56.904556, 59.548927>,  <58.527016, 56.881523, 59.946640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.491035, 56.904556, 59.548927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987496, -0.124616, -0.096554,
		-0.129463, -0.990533, -0.045654,
		-0.089951, 0.057583, -0.994280,
		58.464050, 56.921833, 59.250645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.219784, 57.085304, 60.169827>,  <58.527016, 56.881523, 59.946640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.219784, 57.085304, 60.169827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.560455, 56.943371, 60.324089>,  <59.764858, 56.858212, 60.416649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.560455, 56.943371, 60.324089>,  <59.219784, 57.085304, 60.169827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.560455, 56.943371, 60.324089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501393, 0.337613, -0.796631,
		0.152471, 0.871841, 0.465451,
		0.851679, -0.354837, 0.385659,
		59.815960, 56.836918, 60.439785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.715122, 57.644234, 60.169510>,  <59.219784, 57.085304, 60.169827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.715122, 57.644234, 60.169510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.890678, 57.291458, 60.100731>,  <59.996014, 57.079792, 60.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.890678, 57.291458, 60.100731>,  <59.715122, 57.644234, 60.169510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.890678, 57.291458, 60.100731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248623, 0.303091, -0.919958,
		0.863459, 0.361010, 0.352293,
		0.438891, -0.881934, -0.171951,
		60.022346, 57.026878, 60.049145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.320000, 57.995079, 60.085712>,  <59.715122, 57.644234, 60.169510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.320000, 57.995079, 60.085712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250481, 57.633038, 59.930496>,  <60.208771, 57.415813, 59.837364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250481, 57.633038, 59.930496>,  <60.320000, 57.995079, 60.085712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.250481, 57.633038, 59.930496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253242, 0.339711, -0.905795,
		0.951664, -0.255690, 0.170171,
		-0.173794, -0.905107, -0.388042,
		60.198341, 57.361504, 59.814083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.063831, 57.706764, 60.132530>,  <60.320000, 57.995079, 60.085712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.063831, 57.706764, 60.132530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.436684, 57.850182, 60.152878>,  <61.660393, 57.936230, 60.165085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.436684, 57.850182, 60.152878>,  <61.063831, 57.706764, 60.132530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.436684, 57.850182, 60.152878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109391, 0.412692, -0.904278,
		-0.345215, 0.837337, 0.423902,
		0.932127, 0.358541, 0.050870,
		61.716320, 57.957745, 60.168140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.010765, 58.412468, 59.772160>,  <61.063831, 57.706764, 60.132530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.010765, 58.412468, 59.772160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.395645, 58.303783, 59.764740>,  <61.626572, 58.238575, 59.760288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.395645, 58.303783, 59.764740>,  <61.010765, 58.412468, 59.772160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.395645, 58.303783, 59.764740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090325, 0.382649, -0.919468,
		0.256926, 0.883037, 0.392727,
		0.962201, -0.271708, -0.018552,
		61.684307, 58.222271, 59.759174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.379738, 59.056404, 59.643291>,  <61.010765, 58.412468, 59.772160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.379738, 59.056404, 59.643291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.554001, 58.713486, 59.533569>,  <61.658558, 58.507736, 59.467735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.554001, 58.713486, 59.533569>,  <61.379738, 59.056404, 59.643291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.554001, 58.713486, 59.533569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275717, 0.417195, -0.865984,
		0.856843, 0.301646, 0.418127,
		0.435662, -0.857297, -0.274302,
		61.684700, 58.456295, 59.451279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.116116, 59.087383, 59.445957>,  <61.379738, 59.056404, 59.643291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.116116, 59.087383, 59.445957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.889374, 58.840134, 59.228111>,  <61.753330, 58.691784, 59.097404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.889374, 58.840134, 59.228111>,  <62.116116, 59.087383, 59.445957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.889374, 58.840134, 59.228111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114593, 0.595496, -0.795143,
		0.815810, -0.513139, -0.266727,
		-0.566854, -0.618121, -0.544613,
		61.719318, 58.654697, 59.064728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.620239, 59.025223, 59.933655>,  <62.116116, 59.087383, 59.445957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.620239, 59.025223, 59.933655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.830788, 58.842659, 59.646706>,  <62.957119, 58.733120, 59.474537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.830788, 58.842659, 59.646706>,  <62.620239, 59.025223, 59.933655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.830788, 58.842659, 59.646706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849646, 0.250479, 0.464071,
		-0.032119, -0.853787, 0.519632,
		0.526374, -0.456408, -0.717372,
		62.988701, 58.705738, 59.431496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.258942, 58.915993, 60.314850>,  <62.620239, 59.025223, 59.933655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.258942, 58.915993, 60.314850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.320618, 58.829132, 59.929298>,  <63.357624, 58.777016, 59.697968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.320618, 58.829132, 59.929298>,  <63.258942, 58.915993, 60.314850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.320618, 58.829132, 59.929298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986766, 0.083390, 0.139067,
		0.050180, -0.972570, 0.227135,
		0.154194, -0.217150, -0.963883,
		63.366875, 58.763988, 59.640133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.753525, 58.480701, 60.389851>,  <63.258942, 58.915993, 60.314850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.753525, 58.480701, 60.389851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.729317, 58.673782, 60.040375>,  <63.714790, 58.789631, 59.830688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.729317, 58.673782, 60.040375>,  <63.753525, 58.480701, 60.389851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.729317, 58.673782, 60.040375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995472, 0.093469, -0.017315,
		0.073305, -0.870784, -0.486170,
		-0.060519, 0.482699, -0.873693,
		63.711163, 58.818592, 59.778267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.190933, 58.205196, 59.885529>,  <63.753525, 58.480701, 60.389851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.190933, 58.205196, 59.885529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.152260, 58.594688, 59.803070>,  <64.129051, 58.828384, 59.753593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.152260, 58.594688, 59.803070>,  <64.190933, 58.205196, 59.885529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.152260, 58.594688, 59.803070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985247, 0.064251, -0.158622,
		-0.141210, -0.218443, -0.965579,
		-0.096689, 0.973732, -0.206147,
		64.123253, 58.886806, 59.741226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.477440, 58.316376, 59.215221>,  <64.190933, 58.205196, 59.885529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.477440, 58.316376, 59.215221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.491074, 58.645699, 59.441849>,  <64.499252, 58.843292, 59.577827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.491074, 58.645699, 59.441849>,  <64.477440, 58.316376, 59.215221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.491074, 58.645699, 59.441849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988560, 0.055575, -0.140219,
		-0.146930, 0.564867, -0.811996,
		0.034078, 0.823308, 0.566570,
		64.501297, 58.892693, 59.611820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.252350, 57.774940, 58.621613>,  <64.477440, 58.316376, 59.215221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.252350, 57.774940, 58.621613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.457916, 58.077084, 58.458969>,  <64.581253, 58.258369, 58.361382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.457916, 58.077084, 58.458969>,  <64.252350, 57.774940, 58.621613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.457916, 58.077084, 58.458969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855035, -0.412706, 0.313989,
		0.069364, -0.509026, -0.857952,
		0.513910, 0.755358, -0.406608,
		64.612091, 58.303692, 58.336987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.761299, 57.393200, 58.294815>,  <64.252350, 57.774940, 58.621613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.761299, 57.393200, 58.294815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.875664, 57.772453, 58.350372>,  <64.944283, 58.000008, 58.383705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.875664, 57.772453, 58.350372>,  <64.761299, 57.393200, 58.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.875664, 57.772453, 58.350372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895366, -0.315975, 0.313814,
		0.341424, 0.034633, -0.939271,
		0.285917, 0.948135, 0.138891,
		64.961441, 58.056892, 58.392040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.463196, 57.515427, 57.989670>,  <64.761299, 57.393200, 58.294815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.463196, 57.515427, 57.989670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.478760, 57.847115, 58.212692>,  <65.488098, 58.046127, 58.346508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.478760, 57.847115, 58.212692>,  <65.463196, 57.515427, 57.989670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.478760, 57.847115, 58.212692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996967, 0.005424, -0.077642,
		-0.067406, 0.558890, -0.826498,
		0.038910, 0.829224, 0.557560,
		65.490433, 58.095882, 58.379959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.664062, 58.130901, 57.747894>,  <65.463196, 57.515427, 57.989670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.664062, 58.130901, 57.747894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.785736, 58.173107, 58.126595>,  <65.858742, 58.198429, 58.353817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.785736, 58.173107, 58.126595>,  <65.664062, 58.130901, 57.747894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.785736, 58.173107, 58.126595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947080, -0.140470, -0.288632,
		0.102537, 0.984447, -0.142655,
		0.304182, 0.105510, 0.946753,
		65.876991, 58.204762, 58.410622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.176926, 58.648712, 57.769909>,  <65.664062, 58.130901, 57.747894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.176926, 58.648712, 57.769909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.244072, 58.367287, 58.046120>,  <66.284363, 58.198433, 58.211845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.244072, 58.367287, 58.046120>,  <66.176926, 58.648712, 57.769909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.244072, 58.367287, 58.046120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903720, -0.170014, -0.392918,
		0.393841, 0.689998, 0.607283,
		0.167866, -0.703561, 0.690524,
		66.294434, 58.156219, 58.253277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.743782, 58.810841, 58.091858>,  <66.176926, 58.648712, 57.769909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.743782, 58.810841, 58.091858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.723213, 58.412277, 58.064949>,  <66.710876, 58.173138, 58.048801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.723213, 58.412277, 58.064949>,  <66.743782, 58.810841, 58.091858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.723213, 58.412277, 58.064949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959565, -0.030620, -0.279818,
		0.276753, -0.078941, 0.957693,
		-0.051414, -0.996409, -0.067275,
		66.707787, 58.113354, 58.044765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.349068, 59.152336, 58.705471>,  <66.743782, 58.810841, 58.091858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.349068, 59.152336, 58.705471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.061111, 59.255116, 58.963387>,  <65.888336, 59.316784, 59.118134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.061111, 59.255116, 58.963387>,  <66.349068, 59.152336, 58.705471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.061111, 59.255116, 58.963387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690040, 0.164657, 0.704793,
		0.074926, 0.952296, -0.295836,
		-0.719883, 0.256946, 0.644785,
		65.845146, 59.332199, 59.156822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.954636, 59.081951, 59.043015>,  <66.349068, 59.152336, 58.705471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.954636, 59.081951, 59.043015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.188156, 59.007431, 58.726921>,  <67.328270, 58.962719, 58.537266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.188156, 59.007431, 58.726921>,  <66.954636, 59.081951, 59.043015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.188156, 59.007431, 58.726921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521862, 0.831724, 0.189463,
		0.621956, -0.523000, 0.582787,
		0.583807, -0.186297, -0.790229,
		67.363297, 58.951542, 58.489853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.702240, 58.959232, 59.178150>,  <66.954636, 59.081951, 59.043015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.702240, 58.959232, 59.178150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.621025, 59.150208, 58.836197>,  <67.572296, 59.264793, 58.631023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.621025, 59.150208, 58.836197>,  <67.702240, 58.959232, 59.178150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.621025, 59.150208, 58.836197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304115, 0.860642, 0.408423,
		0.930746, -0.177056, -0.319943,
		-0.203042, 0.477438, -0.854884,
		67.560112, 59.293438, 58.579731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.267624, 59.342079, 58.833092>,  <67.702240, 58.959232, 59.178150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.267624, 59.342079, 58.833092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.932182, 59.541576, 58.745445>,  <67.730919, 59.661274, 58.692856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.932182, 59.541576, 58.745445>,  <68.267624, 59.342079, 58.833092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.932182, 59.541576, 58.745445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444399, 0.858967, 0.254333,
		0.315062, 0.115907, -0.941967,
		-0.838597, 0.498740, -0.219119,
		67.680603, 59.691200, 58.679710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.312111, 59.820381, 58.210114>,  <68.267624, 59.342079, 58.833092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.312111, 59.820381, 58.210114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030930, 59.958847, 58.458633>,  <67.862221, 60.041927, 58.607746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030930, 59.958847, 58.458633>,  <68.312111, 59.820381, 58.210114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.030930, 59.958847, 58.458633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570625, 0.795938, 0.202163,
		-0.424537, 0.496643, -0.757043,
		-0.702962, 0.346162, 0.621302,
		67.820038, 60.062695, 58.645023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.377609, 60.166035, 58.819191>,  <68.312111, 59.820381, 58.210114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.377609, 60.166035, 58.819191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.714546, 60.269943, 58.630310>,  <68.916710, 60.332287, 58.516979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.714546, 60.269943, 58.630310>,  <68.377609, 60.166035, 58.819191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.714546, 60.269943, 58.630310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137986, 0.743017, 0.654893,
		0.520978, -0.616803, 0.590031,
		0.842343, 0.259769, -0.472206,
		68.967247, 60.347874, 58.488647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.013458, 60.178638, 59.254524>,  <68.377609, 60.166035, 58.819191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.013458, 60.178638, 59.254524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.048569, 60.467293, 58.979851>,  <69.069633, 60.640488, 58.815048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.048569, 60.467293, 58.979851>,  <69.013458, 60.178638, 59.254524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.048569, 60.467293, 58.979851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128959, 0.675312, 0.726170,
		0.987758, -0.152294, -0.033786,
		0.087775, 0.721637, -0.686684,
		69.074898, 60.683784, 58.773846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.665176, 60.531467, 59.395626>,  <69.013458, 60.178638, 59.254524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.665176, 60.531467, 59.395626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.399864, 60.777924, 59.225708>,  <69.240677, 60.925797, 59.123756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.399864, 60.777924, 59.225708>,  <69.665176, 60.531467, 59.395626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.399864, 60.777924, 59.225708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028789, 0.546188, 0.837168,
		0.747825, 0.567499, -0.344532,
		-0.663271, 0.616136, -0.424791,
		69.200882, 60.962765, 59.098270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.019524, 59.999664, 59.013802>,  <69.665176, 60.531467, 59.395626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.019524, 59.999664, 59.013802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.170372, 59.675217, 59.192627>,  <70.260880, 59.480549, 59.299923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.170372, 59.675217, 59.192627>,  <70.019524, 59.999664, 59.013802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.170372, 59.675217, 59.192627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926130, 0.326254, -0.189318,
		0.007703, 0.485436, 0.874238,
		0.377125, -0.811117, 0.447064,
		70.283508, 59.431881, 59.326748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.647362, 60.176880, 59.460068>,  <70.019524, 59.999664, 59.013802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.647362, 60.176880, 59.460068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.694260, 59.812996, 59.300728>,  <70.722397, 59.594666, 59.205124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.694260, 59.812996, 59.300728>,  <70.647362, 60.176880, 59.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.694260, 59.812996, 59.300728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979636, 0.171772, -0.103957,
		0.162996, -0.378049, 0.911324,
		0.117239, -0.909711, -0.398349,
		70.729431, 59.540081, 59.181225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.178406, 59.828705, 59.818310>,  <70.647362, 60.176880, 59.460068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.178406, 59.828705, 59.818310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.143501, 59.711727, 59.437393>,  <71.122559, 59.641541, 59.208843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.143501, 59.711727, 59.437393>,  <71.178406, 59.828705, 59.818310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.143501, 59.711727, 59.437393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986075, 0.110490, -0.124293,
		0.141568, -0.949877, 0.278733,
		-0.087266, -0.292448, -0.952291,
		71.117325, 59.623993, 59.151707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.693871, 59.361679, 59.728607>,  <71.178406, 59.828705, 59.818310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.693871, 59.361679, 59.728607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.639442, 59.525833, 59.367928>,  <71.606789, 59.624325, 59.151520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.639442, 59.525833, 59.367928>,  <71.693871, 59.361679, 59.728607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.639442, 59.525833, 59.367928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985704, -0.035204, -0.164769,
		-0.099362, -0.911231, -0.399731,
		-0.136070, 0.410388, -0.901702,
		71.598625, 59.648949, 59.097416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.119644, 58.991745, 59.354176>,  <71.693871, 59.361679, 59.728607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.119644, 58.991745, 59.354176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.051826, 59.351608, 59.193245>,  <72.011139, 59.567528, 59.096687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.051826, 59.351608, 59.193245>,  <72.119644, 58.991745, 59.354176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.051826, 59.351608, 59.193245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979894, 0.110314, -0.166248,
		-0.105184, -0.422427, -0.900273,
		-0.169541, 0.899659, -0.402330,
		72.000961, 59.621506, 59.072544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.242287, 58.398918, 59.829918>,  <72.119644, 58.991745, 59.354176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.242287, 58.398918, 59.829918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.367455, 58.066006, 60.012955>,  <72.442558, 57.866261, 60.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.367455, 58.066006, 60.012955>,  <72.242287, 58.398918, 59.829918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.367455, 58.066006, 60.012955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674919, 0.144120, 0.723681,
		-0.668252, -0.535296, -0.516621,
		0.312928, -0.832278, 0.457590,
		72.461334, 57.816322, 60.150230>
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
