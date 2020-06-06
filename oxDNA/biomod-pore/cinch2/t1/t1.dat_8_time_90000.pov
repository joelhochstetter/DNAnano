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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.266121, 31.820175, 22.675026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450066, 32.175037, 22.690422>,  <42.560432, 32.387955, 22.699659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450066, 32.175037, 22.690422>,  <42.266121, 31.820175, 22.675026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450066, 32.175037, 22.690422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846578, 0.451089, -0.282532,
		-0.268013, 0.097339, 0.958485,
		0.459864, 0.887155, 0.038492,
		42.588024, 32.441185, 22.701969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715111, 32.239376, 23.008127>,  <42.266121, 31.820175, 22.675026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715111, 32.239376, 23.008127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963634, 32.485683, 22.814301>,  <42.112747, 32.633469, 22.698006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963634, 32.485683, 22.814301>,  <41.715111, 32.239376, 23.008127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963634, 32.485683, 22.814301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755648, 0.634470, -0.162619,
		0.207306, 0.467197, 0.859507,
		0.621306, 0.615772, -0.484565,
		42.150024, 32.670414, 22.668930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417149, 32.865932, 23.198296>,  <41.715111, 32.239376, 23.008127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417149, 32.865932, 23.198296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634933, 32.906067, 22.865192>,  <41.765606, 32.930149, 22.665331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634933, 32.906067, 22.865192>,  <41.417149, 32.865932, 23.198296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634933, 32.906067, 22.865192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685842, 0.624817, -0.373128,
		0.482885, 0.774297, 0.409007,
		0.544467, 0.100336, -0.832760,
		41.798275, 32.936169, 22.615364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340801, 33.537968, 22.918175>,  <41.417149, 32.865932, 23.198296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340801, 33.537968, 22.918175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449520, 33.344929, 22.585133>,  <41.514751, 33.229107, 22.385307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449520, 33.344929, 22.585133>,  <41.340801, 33.537968, 22.918175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449520, 33.344929, 22.585133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732467, 0.457424, -0.504236,
		0.624195, 0.746905, -0.229158,
		0.271794, -0.482593, -0.832606,
		41.531059, 33.200150, 22.335350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404606, 34.036720, 22.281277>,  <41.340801, 33.537968, 22.918175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404606, 34.036720, 22.281277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309772, 33.675865, 22.137085>,  <41.252872, 33.459354, 22.050570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309772, 33.675865, 22.137085>,  <41.404606, 34.036720, 22.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309772, 33.675865, 22.137085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730905, 0.410071, -0.545545,
		0.639977, 0.134139, -0.756595,
		-0.237079, -0.902136, -0.360479,
		41.238647, 33.405224, 22.028942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400116, 34.096455, 21.495251>,  <41.404606, 34.036720, 22.281277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400116, 34.096455, 21.495251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175919, 33.801434, 21.645908>,  <41.041401, 33.624420, 21.736303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175919, 33.801434, 21.645908>,  <41.400116, 34.096455, 21.495251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175919, 33.801434, 21.645908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766786, 0.290358, -0.572478,
		0.312887, -0.609656, -0.728300,
		-0.560483, -0.737571, 0.376626,
		41.007771, 33.580166, 21.758902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855293, 33.989864, 21.001316>,  <41.400116, 34.096455, 21.495251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855293, 33.989864, 21.001316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468796, 34.092793, 21.006336>,  <40.236897, 34.154549, 21.009348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468796, 34.092793, 21.006336>,  <40.855293, 33.989864, 21.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468796, 34.092793, 21.006336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164293, 0.652976, -0.739345,
		-0.198446, -0.712326, -0.673210,
		-0.966244, 0.257324, 0.012550,
		40.178921, 34.169991, 21.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696095, 34.227287, 20.342163>,  <40.855293, 33.989864, 21.001316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696095, 34.227287, 20.342163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402348, 34.374794, 20.570099>,  <40.226101, 34.463299, 20.706860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402348, 34.374794, 20.570099>,  <40.696095, 34.227287, 20.342163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402348, 34.374794, 20.570099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142685, 0.736904, -0.660767,
		-0.663588, -0.566552, -0.488539,
		-0.734365, 0.368770, 0.569839,
		40.182037, 34.485424, 20.741051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282066, 34.524384, 19.860510>,  <40.696095, 34.227287, 20.342163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282066, 34.524384, 19.860510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156479, 34.687447, 20.203495>,  <40.081127, 34.785282, 20.409286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156479, 34.687447, 20.203495>,  <40.282066, 34.524384, 19.860510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156479, 34.687447, 20.203495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099697, 0.883983, -0.456766,
		-0.944186, -0.228895, -0.236897,
		-0.313965, 0.407654, 0.857464,
		40.062290, 34.809742, 20.460733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704903, 34.897736, 19.683136>,  <40.282066, 34.524384, 19.860510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704903, 34.897736, 19.683136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821510, 35.059654, 20.029812>,  <39.891476, 35.156807, 20.237818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821510, 35.059654, 20.029812>,  <39.704903, 34.897736, 19.683136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821510, 35.059654, 20.029812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086278, 0.891226, -0.445277,
		-0.952665, 0.204585, 0.224888,
		0.291523, 0.404797, 0.866691,
		39.908966, 35.181095, 20.289820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240261, 35.541691, 19.804996>,  <39.704903, 34.897736, 19.683136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240261, 35.541691, 19.804996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586170, 35.578300, 20.002495>,  <39.793716, 35.600266, 20.120995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586170, 35.578300, 20.002495>,  <39.240261, 35.541691, 19.804996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586170, 35.578300, 20.002495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203741, 0.834731, -0.511579,
		-0.458967, 0.542998, 0.703209,
		0.864777, 0.091526, 0.493745,
		39.845604, 35.605759, 20.150618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375278, 36.348331, 19.926939>,  <39.240261, 35.541691, 19.804996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375278, 36.348331, 19.926939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721760, 36.167370, 20.011806>,  <39.929649, 36.058792, 20.062727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721760, 36.167370, 20.011806>,  <39.375278, 36.348331, 19.926939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721760, 36.167370, 20.011806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498061, 0.747502, -0.439518,
		0.040245, 0.486386, 0.872817,
		0.866207, -0.452404, 0.212167,
		39.981621, 36.031647, 20.075457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913803, 36.836548, 20.191397>,  <39.375278, 36.348331, 19.926939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913803, 36.836548, 20.191397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111523, 36.532097, 20.023418>,  <40.230156, 36.349426, 19.922632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111523, 36.532097, 20.023418>,  <39.913803, 36.836548, 20.191397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111523, 36.532097, 20.023418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465971, 0.639817, -0.611152,
		0.733850, 0.106412, 0.670925,
		0.494303, -0.761125, -0.419944,
		40.259815, 36.303761, 19.897434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296291, 37.253792, 19.873802>,  <39.913803, 36.836548, 20.191397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296291, 37.253792, 19.873802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415916, 36.903660, 19.721821>,  <40.487690, 36.693581, 19.630632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415916, 36.903660, 19.721821>,  <40.296291, 37.253792, 19.873802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415916, 36.903660, 19.721821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614670, 0.481277, -0.624943,
		0.729893, -0.046650, 0.681968,
		0.299062, -0.875327, -0.379955,
		40.505634, 36.641064, 19.607834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980423, 37.404823, 19.818083>,  <40.296291, 37.253792, 19.873802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980423, 37.404823, 19.818083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897499, 37.101856, 19.570423>,  <40.847744, 36.920078, 19.421827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897499, 37.101856, 19.570423>,  <40.980423, 37.404823, 19.818083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897499, 37.101856, 19.570423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763292, 0.270633, -0.586638,
		0.611890, -0.594207, 0.522023,
		-0.207307, -0.757414, -0.619151,
		40.835308, 36.874634, 19.384678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595104, 37.080307, 19.643175>,  <40.980423, 37.404823, 19.818083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595104, 37.080307, 19.643175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347115, 36.954117, 19.355812>,  <41.198322, 36.878403, 19.183393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347115, 36.954117, 19.355812>,  <41.595104, 37.080307, 19.643175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347115, 36.954117, 19.355812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735737, 0.084397, -0.671988,
		0.272629, -0.945172, 0.179785,
		-0.619971, -0.315478, -0.718407,
		41.161121, 36.859474, 19.140289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935661, 36.509251, 19.210735>,  <41.595104, 37.080307, 19.643175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935661, 36.509251, 19.210735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646873, 36.686939, 18.998539>,  <41.473602, 36.793552, 18.871222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646873, 36.686939, 18.998539>,  <41.935661, 36.509251, 19.210735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646873, 36.686939, 18.998539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662718, 0.223553, -0.714723,
		-0.198904, -0.867576, -0.455795,
		-0.721970, 0.444225, -0.530493,
		41.430283, 36.820206, 18.839392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006355, 36.235710, 18.607090>,  <41.935661, 36.509251, 19.210735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006355, 36.235710, 18.607090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783802, 36.559376, 18.531528>,  <41.650269, 36.753574, 18.486191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783802, 36.559376, 18.531528>,  <42.006355, 36.235710, 18.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783802, 36.559376, 18.531528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575768, 0.211522, -0.789778,
		-0.599103, -0.548188, -0.583580,
		-0.556387, 0.809165, -0.188905,
		41.616886, 36.802124, 18.474857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781910, 36.163044, 17.951023>,  <42.006355, 36.235710, 18.607090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781910, 36.163044, 17.951023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777454, 36.558613, 18.010227>,  <41.774780, 36.795956, 18.045750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777454, 36.558613, 18.010227>,  <41.781910, 36.163044, 17.951023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777454, 36.558613, 18.010227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418291, 0.139055, -0.897606,
		-0.908245, 0.051916, -0.415206,
		-0.011137, 0.988923, 0.148012,
		41.774113, 36.855289, 18.054630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632767, 36.419952, 17.318689>,  <41.781910, 36.163044, 17.951023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632767, 36.419952, 17.318689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786980, 36.722500, 17.530075>,  <41.879505, 36.904026, 17.656906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786980, 36.722500, 17.530075>,  <41.632767, 36.419952, 17.318689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786980, 36.722500, 17.530075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375491, 0.394562, -0.838646,
		-0.842837, 0.521757, -0.131894,
		0.385529, 0.756367, 0.528466,
		41.902637, 36.949409, 17.688616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633591, 36.945461, 16.852541>,  <41.632767, 36.419952, 17.318689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633591, 36.945461, 16.852541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888084, 37.104149, 17.117214>,  <42.040779, 37.199360, 17.276018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888084, 37.104149, 17.117214>,  <41.633591, 36.945461, 16.852541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888084, 37.104149, 17.117214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571609, 0.333615, -0.749643,
		-0.518141, 0.855172, -0.014509,
		0.636233, 0.396714, 0.661683,
		42.078953, 37.223164, 17.315720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695061, 37.617760, 16.582674>,  <41.633591, 36.945461, 16.852541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695061, 37.617760, 16.582674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997585, 37.523750, 16.826889>,  <42.179100, 37.467346, 16.973417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997585, 37.523750, 16.826889>,  <41.695061, 37.617760, 16.582674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997585, 37.523750, 16.826889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651937, 0.193015, -0.733297,
		0.054499, 0.952633, 0.299199,
		0.756312, -0.235023, 0.610537,
		42.224480, 37.453243, 17.010050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120205, 38.162888, 16.399063>,  <41.695061, 37.617760, 16.582674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120205, 38.162888, 16.399063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343826, 37.888763, 16.585743>,  <42.478001, 37.724289, 16.697750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343826, 37.888763, 16.585743>,  <42.120205, 38.162888, 16.399063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343826, 37.888763, 16.585743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791486, 0.273417, -0.546620,
		0.247002, 0.674974, 0.695270,
		0.559053, -0.685312, 0.466698,
		42.511543, 37.683170, 16.725752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711437, 38.497662, 16.683371>,  <42.120205, 38.162888, 16.399063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711437, 38.497662, 16.683371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806187, 38.114449, 16.618786>,  <42.863037, 37.884521, 16.580036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806187, 38.114449, 16.618786>,  <42.711437, 38.497662, 16.683371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806187, 38.114449, 16.618786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667780, 0.281260, -0.689176,
		0.705663, 0.055428, 0.706376,
		0.236875, -0.958030, -0.161461,
		42.877251, 37.827038, 16.570347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499054, 38.520222, 16.716955>,  <42.711437, 38.497662, 16.683371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499054, 38.520222, 16.716955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369656, 38.177845, 16.555607>,  <43.292015, 37.972420, 16.458797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369656, 38.177845, 16.555607>,  <43.499054, 38.520222, 16.716955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369656, 38.177845, 16.555607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712160, 0.060449, -0.699410,
		0.623040, -0.513520, 0.590015,
		-0.323495, -0.855946, -0.403370,
		43.272606, 37.921062, 16.434595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066547, 38.351868, 16.529848>,  <43.499054, 38.520222, 16.716955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066547, 38.351868, 16.529848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811489, 38.124313, 16.322090>,  <43.658455, 37.987782, 16.197435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811489, 38.124313, 16.322090>,  <44.066547, 38.351868, 16.529848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811489, 38.124313, 16.322090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590480, 0.072050, -0.803830,
		0.494712, -0.819253, 0.289974,
		-0.637647, -0.568889, -0.519396,
		43.620193, 37.953648, 16.166271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468304, 37.844898, 16.059132>,  <44.066547, 38.351868, 16.529848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468304, 37.844898, 16.059132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105133, 37.913025, 15.905948>,  <43.887230, 37.953899, 15.814037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105133, 37.913025, 15.905948>,  <44.468304, 37.844898, 16.059132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105133, 37.913025, 15.905948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395223, 0.043744, -0.917543,
		-0.139517, -0.984418, -0.107027,
		-0.907928, 0.170313, -0.382962,
		43.832756, 37.964119, 15.791059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140530, 37.418037, 15.533021>,  <44.468304, 37.844898, 16.059132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140530, 37.418037, 15.533021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024582, 37.793488, 15.458224>,  <43.955013, 38.018757, 15.413346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024582, 37.793488, 15.458224>,  <44.140530, 37.418037, 15.533021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024582, 37.793488, 15.458224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248264, -0.114948, -0.961848,
		-0.924306, -0.325233, -0.199706,
		-0.289869, 0.938621, -0.186991,
		43.937622, 38.075073, 15.402127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690922, 37.331757, 14.966512>,  <44.140530, 37.418037, 15.533021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690922, 37.331757, 14.966512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874466, 37.687000, 14.977139>,  <43.984592, 37.900146, 14.983516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874466, 37.687000, 14.977139>,  <43.690922, 37.331757, 14.966512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874466, 37.687000, 14.977139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282208, -0.117324, -0.952152,
		-0.842498, 0.444405, -0.304468,
		0.458863, 0.888110, 0.026569,
		44.012123, 37.953434, 14.985110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697781, 37.619480, 14.316470>,  <43.690922, 37.331757, 14.966512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697781, 37.619480, 14.316470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980667, 37.838367, 14.495536>,  <44.150398, 37.969700, 14.602975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980667, 37.838367, 14.495536>,  <43.697781, 37.619480, 14.316470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980667, 37.838367, 14.495536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548236, -0.024653, -0.835960,
		-0.446414, 0.836628, -0.317439,
		0.707214, 0.547216, 0.447665,
		44.192833, 38.002533, 14.629835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021870, 38.088306, 13.805861>,  <43.697781, 37.619480, 14.316470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021870, 38.088306, 13.805861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288452, 38.040611, 14.100240>,  <44.448402, 38.011993, 14.276867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288452, 38.040611, 14.100240>,  <44.021870, 38.088306, 13.805861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288452, 38.040611, 14.100240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718522, -0.160625, -0.676702,
		0.198902, 0.979786, -0.021373,
		0.666456, -0.119240, 0.735947,
		44.488388, 38.004841, 14.321024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555073, 37.912937, 13.252923>,  <44.021870, 38.088306, 13.805861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555073, 37.912937, 13.252923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266876, 38.092453, 13.041459>,  <43.093960, 38.200161, 12.914580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266876, 38.092453, 13.041459>,  <43.555073, 37.912937, 13.252923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266876, 38.092453, 13.041459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671858, -0.640562, 0.371868,
		-0.171749, 0.623112, 0.763042,
		-0.720492, 0.448788, -0.528659,
		43.050728, 38.227089, 12.882861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950645, 38.111755, 13.686196>,  <43.555073, 37.912937, 13.252923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950645, 38.111755, 13.686196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851238, 37.995235, 13.316682>,  <42.791595, 37.925323, 13.094973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851238, 37.995235, 13.316682>,  <42.950645, 38.111755, 13.686196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851238, 37.995235, 13.316682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532671, -0.755450, 0.381519,
		-0.809012, 0.586889, 0.032576,
		-0.248519, -0.291301, -0.923787,
		42.776684, 37.907845, 13.039546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221027, 38.151264, 13.696633>,  <42.950645, 38.111755, 13.686196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221027, 38.151264, 13.696633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359009, 37.871811, 13.445901>,  <42.441799, 37.704140, 13.295462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359009, 37.871811, 13.445901>,  <42.221027, 38.151264, 13.696633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359009, 37.871811, 13.445901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465511, -0.707242, 0.532079,
		-0.815050, 0.108254, -0.569188,
		0.344955, -0.698634, -0.626831,
		42.462494, 37.662220, 13.257852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708076, 37.731064, 13.327511>,  <42.221027, 38.151264, 13.696633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708076, 37.731064, 13.327511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039238, 37.510101, 13.366340>,  <42.237934, 37.377525, 13.389637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039238, 37.510101, 13.366340>,  <41.708076, 37.731064, 13.327511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039238, 37.510101, 13.366340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523499, -0.698954, 0.487249,
		-0.201312, -0.454212, -0.867851,
		0.827903, -0.552408, 0.097072,
		42.287609, 37.344379, 13.395461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540363, 36.986141, 13.412156>,  <41.708076, 37.731064, 13.327511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540363, 36.986141, 13.412156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936077, 36.948780, 13.457034>,  <42.173508, 36.926365, 13.483961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936077, 36.948780, 13.457034>,  <41.540363, 36.986141, 13.412156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936077, 36.948780, 13.457034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139854, -0.826763, 0.544889,
		0.041864, -0.554742, -0.830968,
		0.989287, -0.093403, 0.112194,
		42.232864, 36.920757, 13.490692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650665, 36.392014, 13.093615>,  <41.540363, 36.986141, 13.412156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650665, 36.392014, 13.093615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890324, 36.472897, 13.403489>,  <42.034119, 36.521427, 13.589414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890324, 36.472897, 13.403489>,  <41.650665, 36.392014, 13.093615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890324, 36.472897, 13.403489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369453, -0.788582, 0.491572,
		0.710304, -0.580732, -0.397766,
		0.599143, 0.202210, 0.774686,
		42.070068, 36.533558, 13.635895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857063, 35.799683, 13.346668>,  <41.650665, 36.392014, 13.093615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857063, 35.799683, 13.346668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900963, 36.032722, 13.668794>,  <41.927303, 36.172546, 13.862069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900963, 36.032722, 13.668794>,  <41.857063, 35.799683, 13.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900963, 36.032722, 13.668794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428260, -0.703430, 0.567256,
		0.896967, -0.407138, 0.172307,
		0.109745, 0.582601, 0.805314,
		41.933887, 36.207504, 13.910388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214603, 35.401833, 13.879033>,  <41.857063, 35.799683, 13.346668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214603, 35.401833, 13.879033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026207, 35.683174, 14.092000>,  <41.913170, 35.851978, 14.219780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026207, 35.683174, 14.092000>,  <42.214603, 35.401833, 13.879033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026207, 35.683174, 14.092000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324897, -0.699436, 0.636577,
		0.820129, 0.126840, 0.557943,
		-0.470989, 0.703349, 0.532418,
		41.884911, 35.894180, 14.251725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355309, 35.177555, 14.555942>,  <42.214603, 35.401833, 13.879033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355309, 35.177555, 14.555942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035656, 35.412014, 14.609342>,  <41.843864, 35.552689, 14.641381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035656, 35.412014, 14.609342>,  <42.355309, 35.177555, 14.555942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035656, 35.412014, 14.609342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262838, -0.540395, 0.799306,
		0.540651, 0.603662, 0.585908,
		-0.799133, 0.586145, 0.133500,
		41.795918, 35.587856, 14.649391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360256, 35.454117, 15.265150>,  <42.355309, 35.177555, 14.555942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360256, 35.454117, 15.265150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980362, 35.496071, 15.147161>,  <41.752426, 35.521244, 15.076366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980362, 35.496071, 15.147161>,  <42.360256, 35.454117, 15.265150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980362, 35.496071, 15.147161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309499, -0.456382, 0.834222,
		-0.047125, 0.883581, 0.465902,
		-0.949731, 0.104884, -0.294974,
		41.695442, 35.527534, 15.058668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997311, 35.856674, 15.924726>,  <42.360256, 35.454117, 15.265150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997311, 35.856674, 15.924726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743053, 35.655388, 15.690553>,  <41.590500, 35.534618, 15.550049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743053, 35.655388, 15.690553>,  <41.997311, 35.856674, 15.924726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743053, 35.655388, 15.690553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459036, -0.363345, 0.810720,
		-0.620679, 0.784065, -0.000035,
		-0.635644, -0.503213, -0.585434,
		41.552361, 35.504425, 15.514922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360497, 36.041916, 16.034998>,  <41.997311, 35.856674, 15.924726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360497, 36.041916, 16.034998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281452, 35.696819, 15.848826>,  <41.234024, 35.489761, 15.737123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281452, 35.696819, 15.848826>,  <41.360497, 36.041916, 16.034998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281452, 35.696819, 15.848826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647561, -0.241559, 0.722713,
		-0.735944, 0.444213, -0.510942,
		-0.197616, -0.862742, -0.465428,
		41.222168, 35.437996, 15.709198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564041, 35.944698, 16.134665>,  <41.360497, 36.041916, 16.034998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564041, 35.944698, 16.134665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692085, 35.585732, 16.013226>,  <40.768913, 35.370350, 15.940363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692085, 35.585732, 16.013226>,  <40.564041, 35.944698, 16.134665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692085, 35.585732, 16.013226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644007, -0.441160, 0.625006,
		-0.694825, -0.004555, -0.719164,
		0.320114, -0.897417, -0.303596,
		40.788120, 35.316505, 15.922147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964672, 35.492870, 16.090586>,  <40.564041, 35.944698, 16.134665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964672, 35.492870, 16.090586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265209, 35.242638, 16.174614>,  <40.445534, 35.092499, 16.225031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265209, 35.242638, 16.174614>,  <39.964672, 35.492870, 16.090586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265209, 35.242638, 16.174614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578585, -0.471390, 0.665606,
		-0.317362, -0.621646, -0.716127,
		0.751346, -0.625578, 0.210074,
		40.490612, 35.054962, 16.237637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642426, 34.764519, 16.018215>,  <39.964672, 35.492870, 16.090586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642426, 34.764519, 16.018215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930847, 34.761555, 16.295349>,  <40.103901, 34.759777, 16.461630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930847, 34.761555, 16.295349>,  <39.642426, 34.764519, 16.018215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930847, 34.761555, 16.295349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521260, -0.664568, 0.535386,
		0.456468, -0.747191, -0.483055,
		0.721058, -0.007411, 0.692835,
		40.147163, 34.759331, 16.503199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550976, 34.076252, 16.247721>,  <39.642426, 34.764519, 16.018215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550976, 34.076252, 16.247721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791603, 34.230667, 16.527462>,  <39.935978, 34.323315, 16.695307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791603, 34.230667, 16.527462>,  <39.550976, 34.076252, 16.247721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791603, 34.230667, 16.527462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303568, -0.699324, 0.647142,
		0.738894, -0.601600, -0.303501,
		0.601566, 0.386036, 0.699353,
		39.972073, 34.346478, 16.737268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634552, 33.492046, 16.744394>,  <39.550976, 34.076252, 16.247721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634552, 33.492046, 16.744394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781105, 33.791039, 16.966038>,  <39.869038, 33.970432, 17.099024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781105, 33.791039, 16.966038>,  <39.634552, 33.492046, 16.744394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781105, 33.791039, 16.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110125, -0.556499, 0.823518,
		0.923925, -0.362742, -0.121574,
		0.366380, 0.747480, 0.554110,
		39.891018, 34.015282, 17.132271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083450, 33.164974, 17.275103>,  <39.634552, 33.492046, 16.744394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083450, 33.164974, 17.275103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985226, 33.532402, 17.398994>,  <39.926292, 33.752857, 17.473330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985226, 33.532402, 17.398994>,  <40.083450, 33.164974, 17.275103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985226, 33.532402, 17.398994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262512, -0.370587, 0.890928,
		0.933160, 0.137470, 0.332137,
		-0.245562, 0.918568, 0.309729,
		39.911556, 33.807972, 17.491913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347672, 33.275764, 17.956507>,  <40.083450, 33.164974, 17.275103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347672, 33.275764, 17.956507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037964, 33.524918, 17.911743>,  <39.852139, 33.674408, 17.884886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037964, 33.524918, 17.911743>,  <40.347672, 33.275764, 17.956507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037964, 33.524918, 17.911743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417655, -0.370074, 0.829825,
		0.475470, 0.689247, 0.546688,
		-0.774269, 0.622884, -0.111909,
		39.805683, 33.711784, 17.878170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213467, 33.463577, 18.611732>,  <40.347672, 33.275764, 17.956507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213467, 33.463577, 18.611732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891068, 33.579140, 18.405083>,  <39.697628, 33.648476, 18.281094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891068, 33.579140, 18.405083>,  <40.213467, 33.463577, 18.611732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891068, 33.579140, 18.405083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571767, -0.154210, 0.805793,
		0.153130, 0.944856, 0.289480,
		-0.805999, 0.288906, -0.516623,
		39.649269, 33.665813, 18.250095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823414, 33.790371, 19.021004>,  <40.213467, 33.463577, 18.611732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823414, 33.790371, 19.021004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524185, 33.727535, 18.763100>,  <39.344650, 33.689835, 18.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524185, 33.727535, 18.763100>,  <39.823414, 33.790371, 19.021004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524185, 33.727535, 18.763100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642457, -0.071985, 0.762933,
		-0.166260, 0.984958, -0.047072,
		-0.748068, -0.157087, -0.644762,
		39.299767, 33.680408, 18.569672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186058, 34.316395, 19.149069>,  <39.823414, 33.790371, 19.021004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186058, 34.316395, 19.149069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035225, 33.986954, 18.979603>,  <38.944725, 33.789291, 18.877924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035225, 33.986954, 18.979603>,  <39.186058, 34.316395, 19.149069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035225, 33.986954, 18.979603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763111, 0.017060, 0.646042,
		-0.524852, 0.566916, -0.634931,
		-0.377083, -0.823599, -0.423665,
		38.922100, 33.739876, 18.852503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395275, 34.450939, 19.012888>,  <39.186058, 34.316395, 19.149069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395275, 34.450939, 19.012888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472458, 34.058647, 19.025097>,  <38.518768, 33.823273, 19.032423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472458, 34.058647, 19.025097>,  <38.395275, 34.450939, 19.012888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472458, 34.058647, 19.025097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770818, -0.132262, 0.623174,
		-0.607130, -0.143773, -0.781487,
		0.192957, -0.980732, 0.030523,
		38.530346, 33.764427, 19.034254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764759, 34.125519, 18.943211>,  <38.395275, 34.450939, 19.012888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764759, 34.125519, 18.943211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995792, 33.839905, 19.101475>,  <38.134415, 33.668537, 19.196432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995792, 33.839905, 19.101475>,  <37.764759, 34.125519, 18.943211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995792, 33.839905, 19.101475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760969, -0.295501, 0.577587,
		-0.295501, -0.634690, -0.714036,
		-0.577587, 0.714036, -0.395658,
		38.169067, 33.625694, 19.220173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357262, 33.556648, 19.066343>,  <37.764759, 34.125519, 18.943211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357262, 33.556648, 19.066343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660370, 33.495770, 19.320152>,  <37.842236, 33.459244, 19.472437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660370, 33.495770, 19.320152>,  <37.357262, 33.556648, 19.066343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660370, 33.495770, 19.320152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651173, -0.238800, 0.720381,
		0.041885, -0.959068, -0.280061,
		0.757773, -0.152195, 0.634521,
		37.887703, 33.450111, 19.510509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121704, 32.877960, 19.423359>,  <37.357262, 33.556648, 19.066343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121704, 32.877960, 19.423359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385220, 33.099483, 19.627041>,  <37.543331, 33.232399, 19.749250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385220, 33.099483, 19.627041>,  <37.121704, 32.877960, 19.423359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385220, 33.099483, 19.627041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584605, -0.049175, 0.809826,
		0.473529, -0.831190, 0.291364,
		0.658792, 0.553809, 0.509204,
		37.582859, 33.265625, 19.779802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088814, 32.523857, 20.024511>,  <37.121704, 32.877960, 19.423359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088814, 32.523857, 20.024511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245174, 32.888184, 20.077602>,  <37.338989, 33.106777, 20.109457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245174, 32.888184, 20.077602>,  <37.088814, 32.523857, 20.024511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245174, 32.888184, 20.077602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563187, 0.122624, 0.817180,
		0.728024, -0.394183, 0.560892,
		0.390898, 0.910815, 0.132725,
		37.362442, 33.161427, 20.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351364, 32.591972, 20.705133>,  <37.088814, 32.523857, 20.024511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351364, 32.591972, 20.705133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169308, 32.917526, 20.560669>,  <37.060074, 33.112858, 20.473991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169308, 32.917526, 20.560669>,  <37.351364, 32.591972, 20.705133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169308, 32.917526, 20.560669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623456, -0.001706, 0.781857,
		0.635725, 0.581025, 0.508197,
		-0.455145, 0.813884, -0.361159,
		37.032764, 33.161690, 20.452322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125057, 33.096725, 21.149197>,  <37.351364, 32.591972, 20.705133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125057, 33.096725, 21.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776878, 33.148182, 20.959133>,  <36.567970, 33.179058, 20.845095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776878, 33.148182, 20.959133>,  <37.125057, 33.096725, 21.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776878, 33.148182, 20.959133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480883, -0.015839, 0.876642,
		0.105249, 0.991564, 0.075650,
		-0.870445, 0.128645, -0.475159,
		36.515743, 33.186775, 20.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605423, 33.672291, 21.362648>,  <37.125057, 33.096725, 21.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605423, 33.672291, 21.362648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389156, 33.371922, 21.210968>,  <36.259396, 33.191700, 21.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389156, 33.371922, 21.210968>,  <36.605423, 33.672291, 21.362648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389156, 33.371922, 21.210968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694398, 0.143935, 0.705049,
		-0.474858, 0.644513, -0.599260,
		-0.540668, -0.750923, -0.379200,
		36.226955, 33.146645, 21.097208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985683, 34.022518, 21.422148>,  <36.605423, 33.672291, 21.362648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985683, 34.022518, 21.422148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924507, 33.628246, 21.393730>,  <35.887802, 33.391682, 21.376680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924507, 33.628246, 21.393730>,  <35.985683, 34.022518, 21.422148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924507, 33.628246, 21.393730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604054, 0.036346, 0.796114,
		-0.782131, 0.164671, -0.600962,
		-0.152939, -0.985679, -0.071042,
		35.878624, 33.332542, 21.372417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266403, 33.942860, 21.481377>,  <35.985683, 34.022518, 21.422148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266403, 33.942860, 21.481377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487511, 33.639969, 21.620544>,  <35.620174, 33.458233, 21.704044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487511, 33.639969, 21.620544>,  <35.266403, 33.942860, 21.481377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487511, 33.639969, 21.620544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588033, -0.058604, 0.806711,
		-0.590476, -0.650513, -0.477672,
		0.552770, -0.757230, 0.347919,
		35.653343, 33.412800, 21.724920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873104, 33.202290, 21.676132>,  <35.266403, 33.942860, 21.481377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873104, 33.202290, 21.676132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172085, 33.299953, 21.923264>,  <35.351471, 33.358551, 22.071543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172085, 33.299953, 21.923264>,  <34.873104, 33.202290, 21.676132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172085, 33.299953, 21.923264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581263, -0.209921, 0.786172,
		0.321645, -0.946742, -0.014984,
		0.747447, 0.244158, 0.617827,
		35.396320, 33.373199, 22.108612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149387, 32.602394, 21.906681>,  <34.873104, 33.202290, 21.676132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149387, 32.602394, 21.906681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163734, 32.927429, 22.139374>,  <35.172340, 33.122452, 22.278990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163734, 32.927429, 22.139374>,  <35.149387, 32.602394, 21.906681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163734, 32.927429, 22.139374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573767, -0.459864, 0.677729,
		0.818233, -0.358085, 0.449744,
		0.035863, 0.812588, 0.581734,
		35.174492, 33.171207, 22.313894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345261, 32.434986, 22.654535>,  <35.149387, 32.602394, 21.906681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345261, 32.434986, 22.654535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137669, 32.776901, 22.653576>,  <35.013115, 32.982048, 22.653000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137669, 32.776901, 22.653576>,  <35.345261, 32.434986, 22.654535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137669, 32.776901, 22.653576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528784, -0.318839, 0.786594,
		0.671603, 0.409493, 0.617467,
		-0.518977, 0.854785, -0.002400,
		34.981976, 33.033337, 22.652855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392124, 32.723576, 23.403246>,  <35.345261, 32.434986, 22.654535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392124, 32.723576, 23.403246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071255, 32.850319, 23.200809>,  <34.878735, 32.926365, 23.079348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071255, 32.850319, 23.200809>,  <35.392124, 32.723576, 23.403246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071255, 32.850319, 23.200809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577539, -0.196580, 0.792341,
		0.151569, 0.927879, 0.340686,
		-0.802169, 0.316854, -0.506091,
		34.830605, 32.945374, 23.048983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107647, 33.063866, 23.875475>,  <35.392124, 32.723576, 23.403246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107647, 33.063866, 23.875475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807674, 33.053337, 23.611076>,  <34.627693, 33.047020, 23.452438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807674, 33.053337, 23.611076>,  <35.107647, 33.063866, 23.875475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807674, 33.053337, 23.611076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650616, -0.151322, 0.744177,
		-0.119608, 0.988134, 0.096359,
		-0.749928, -0.026317, -0.660996,
		34.582695, 33.045441, 23.412777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605648, 33.577309, 24.057930>,  <35.107647, 33.063866, 23.875475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605648, 33.577309, 24.057930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408386, 33.313202, 23.831356>,  <34.290028, 33.154739, 23.695412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408386, 33.313202, 23.831356>,  <34.605648, 33.577309, 24.057930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408386, 33.313202, 23.831356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722506, -0.051802, 0.689422,
		-0.484543, 0.749244, -0.451498,
		-0.493157, -0.660265, -0.566434,
		34.260441, 33.115124, 23.661427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867405, 33.874096, 23.943624>,  <34.605648, 33.577309, 24.057930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867405, 33.874096, 23.943624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863468, 33.478809, 23.882515>,  <33.861107, 33.241638, 23.845850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863468, 33.478809, 23.882515>,  <33.867405, 33.874096, 23.943624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863468, 33.478809, 23.882515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727078, -0.097813, 0.679551,
		-0.686484, 0.117768, -0.717545,
		-0.009844, -0.988212, -0.152774,
		33.860516, 33.182346, 23.836683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067516, 33.639004, 23.943813>,  <33.867405, 33.874096, 23.943624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067516, 33.639004, 23.943813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234516, 33.277725, 23.983673>,  <33.334717, 33.060959, 24.007589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234516, 33.277725, 23.983673>,  <33.067516, 33.639004, 23.943813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234516, 33.277725, 23.983673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700937, -0.250327, 0.667851,
		-0.578255, -0.348676, -0.737595,
		0.417503, -0.903195, 0.099647,
		33.359768, 33.006767, 24.013567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538849, 33.146420, 24.003847>,  <33.067516, 33.639004, 23.943813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538849, 33.146420, 24.003847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845646, 32.965248, 24.185650>,  <33.029724, 32.856544, 24.294731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845646, 32.965248, 24.185650>,  <32.538849, 33.146420, 24.003847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845646, 32.965248, 24.185650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617290, -0.327503, 0.715329,
		-0.175137, -0.829217, -0.530778,
		0.766995, -0.452924, 0.454510,
		33.075745, 32.829369, 24.322002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268696, 32.392738, 24.156727>,  <32.538849, 33.146420, 24.003847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268696, 32.392738, 24.156727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569096, 32.469410, 24.409477>,  <32.749336, 32.515411, 24.561127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569096, 32.469410, 24.409477>,  <32.268696, 32.392738, 24.156727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569096, 32.469410, 24.409477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580964, -0.262999, 0.770268,
		0.313824, -0.945564, -0.086155,
		0.750996, 0.191676, 0.631874,
		32.794395, 32.526913, 24.599039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205185, 31.804033, 24.547121>,  <32.268696, 32.392738, 24.156727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205185, 31.804033, 24.547121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412785, 32.068657, 24.763630>,  <32.537346, 32.227432, 24.893536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412785, 32.068657, 24.763630>,  <32.205185, 31.804033, 24.547121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412785, 32.068657, 24.763630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249892, -0.488139, 0.836227,
		0.817430, -0.569262, -0.088026,
		0.519001, 0.661560, 0.541273,
		32.568485, 32.267124, 24.926012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598122, 31.388876, 25.022955>,  <32.205185, 31.804033, 24.547121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598122, 31.388876, 25.022955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589127, 31.751205, 25.192181>,  <32.583729, 31.968603, 25.293716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589127, 31.751205, 25.192181>,  <32.598122, 31.388876, 25.022955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589127, 31.751205, 25.192181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191259, -0.419251, 0.887496,
		0.981282, -0.060955, 0.182675,
		-0.022489, 0.905822, 0.423062,
		32.582378, 32.022953, 25.319099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909916, 31.224075, 25.657291>,  <32.598122, 31.388876, 25.022955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909916, 31.224075, 25.657291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719067, 31.573120, 25.699047>,  <32.604557, 31.782547, 25.724100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719067, 31.573120, 25.699047>,  <32.909916, 31.224075, 25.657291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719067, 31.573120, 25.699047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093915, -0.168729, 0.981178,
		0.873802, 0.458342, 0.162456,
		-0.477127, 0.872613, 0.104391,
		32.575928, 31.834904, 25.730364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191872, 31.544397, 26.193615>,  <32.909916, 31.224075, 25.657291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191872, 31.544397, 26.193615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845081, 31.743099, 26.177708>,  <32.637005, 31.862320, 26.168163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845081, 31.743099, 26.177708>,  <33.191872, 31.544397, 26.193615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845081, 31.743099, 26.177708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020085, 0.114562, 0.993213,
		0.497939, 0.860296, -0.109300,
		-0.866979, 0.496755, -0.039766,
		32.584988, 31.892126, 26.165777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354488, 32.094429, 26.549429>,  <33.191872, 31.544397, 26.193615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354488, 32.094429, 26.549429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956993, 32.049885, 26.553112>,  <32.718494, 32.023159, 26.555323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956993, 32.049885, 26.553112>,  <33.354488, 32.094429, 26.549429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956993, 32.049885, 26.553112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003956, 0.117421, 0.993074,
		-0.111671, 0.986819, -0.117126,
		-0.993737, -0.111361, 0.009209,
		32.658871, 32.016476, 26.555874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979412, 32.647259, 26.771950>,  <33.354488, 32.094429, 26.549429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979412, 32.647259, 26.771950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741032, 32.339451, 26.863758>,  <32.598003, 32.154766, 26.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741032, 32.339451, 26.863758>,  <32.979412, 32.647259, 26.771950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741032, 32.339451, 26.863758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001054, 0.285071, 0.958506,
		-0.803022, 0.571462, -0.169077,
		-0.595949, -0.769523, 0.229521,
		32.562248, 32.108593, 26.932615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713657, 32.903606, 27.379488>,  <32.979412, 32.647259, 26.771950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713657, 32.903606, 27.379488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568760, 32.530937, 27.390575>,  <32.481819, 32.307335, 27.397228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568760, 32.530937, 27.390575>,  <32.713657, 32.903606, 27.379488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568760, 32.530937, 27.390575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092707, 0.065607, 0.993530,
		-0.927460, 0.357334, -0.110138,
		-0.362247, -0.931670, 0.027720,
		32.460087, 32.251438, 27.398891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088772, 32.877277, 27.826321>,  <32.713657, 32.903606, 27.379488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088772, 32.877277, 27.826321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249935, 32.511635, 27.808102>,  <32.346634, 32.292248, 27.797171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249935, 32.511635, 27.808102>,  <32.088772, 32.877277, 27.826321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249935, 32.511635, 27.808102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116635, -0.100639, 0.988063,
		-0.907780, -0.392783, -0.147165,
		0.402905, -0.914108, -0.045546,
		32.370808, 32.237404, 27.794437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617493, 32.519791, 28.240889>,  <32.088772, 32.877277, 27.826321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617493, 32.519791, 28.240889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923937, 32.266468, 28.197079>,  <32.107803, 32.114475, 28.170794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923937, 32.266468, 28.197079>,  <31.617493, 32.519791, 28.240889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923937, 32.266468, 28.197079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158984, -0.351852, 0.922455,
		-0.622734, -0.689291, -0.370243,
		0.766111, -0.633307, -0.109524,
		32.153770, 32.076477, 28.164221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440990, 32.057865, 28.663710>,  <31.617493, 32.519791, 28.240889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440990, 32.057865, 28.663710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827372, 31.972965, 28.604534>,  <32.059200, 31.922026, 28.569029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827372, 31.972965, 28.604534>,  <31.440990, 32.057865, 28.663710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827372, 31.972965, 28.604534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062492, -0.363473, 0.929506,
		-0.251057, -0.907104, -0.337834,
		0.965952, -0.212247, -0.147939,
		32.117157, 31.909290, 28.560152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459352, 31.350733, 28.834581>,  <31.440990, 32.057865, 28.663710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459352, 31.350733, 28.834581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822405, 31.511837, 28.881893>,  <32.040237, 31.608500, 28.910280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822405, 31.511837, 28.881893>,  <31.459352, 31.350733, 28.834581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822405, 31.511837, 28.881893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012813, -0.308221, 0.951228,
		0.419573, -0.861849, -0.284911,
		0.907631, 0.402760, 0.118278,
		32.094696, 31.632666, 28.917377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927893, 30.851322, 29.126495>,  <31.459352, 31.350733, 28.834581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927893, 30.851322, 29.126495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130726, 31.186024, 29.209156>,  <32.252426, 31.386845, 29.258753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130726, 31.186024, 29.209156>,  <31.927893, 30.851322, 29.126495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130726, 31.186024, 29.209156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104061, -0.297449, 0.949050,
		0.855591, -0.459744, -0.237906,
		0.507085, 0.836756, 0.206654,
		32.282852, 31.437050, 29.271152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491470, 30.558502, 29.318794>,  <31.927893, 30.851322, 29.126495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491470, 30.558502, 29.318794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475574, 30.930168, 29.465801>,  <32.466038, 31.153168, 29.554007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475574, 30.930168, 29.465801>,  <32.491470, 30.558502, 29.318794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475574, 30.930168, 29.465801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059957, -0.369364, 0.927348,
		0.997410, 0.014817, 0.070388,
		-0.039739, 0.929166, 0.367519,
		32.463654, 31.208918, 29.576057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934116, 30.526756, 29.832584>,  <32.491470, 30.558502, 29.318794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934116, 30.526756, 29.832584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686825, 30.827682, 29.923634>,  <32.538448, 31.008238, 29.978264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686825, 30.827682, 29.923634>,  <32.934116, 30.526756, 29.832584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686825, 30.827682, 29.923634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134247, -0.386412, 0.912504,
		0.774447, 0.533580, 0.339887,
		-0.618230, 0.752315, 0.227624,
		32.501354, 31.053377, 29.991920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203609, 30.872190, 30.484732>,  <32.934116, 30.526756, 29.832584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203609, 30.872190, 30.484732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817776, 30.975460, 30.463085>,  <32.586277, 31.037422, 30.450098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817776, 30.975460, 30.463085>,  <33.203609, 30.872190, 30.484732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817776, 30.975460, 30.463085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108904, -0.202912, 0.973122,
		0.240256, 0.944549, 0.223841,
		-0.964581, 0.258175, -0.054114,
		32.528400, 31.052912, 30.446852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074516, 31.305418, 30.941813>,  <33.203609, 30.872190, 30.484732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074516, 31.305418, 30.941813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701218, 31.177269, 30.876797>,  <32.477238, 31.100380, 30.837788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701218, 31.177269, 30.876797>,  <33.074516, 31.305418, 30.941813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701218, 31.177269, 30.876797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140848, -0.089926, 0.985939,
		-0.330486, 0.943013, 0.038798,
		-0.933242, -0.320375, -0.162541,
		32.421246, 31.081156, 30.828035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757454, 31.512503, 31.595072>,  <33.074516, 31.305418, 30.941813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757454, 31.512503, 31.595072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491055, 31.256058, 31.442532>,  <32.331215, 31.102192, 31.351007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491055, 31.256058, 31.442532>,  <32.757454, 31.512503, 31.595072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491055, 31.256058, 31.442532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350052, -0.182836, 0.918714,
		-0.658721, 0.745351, -0.102654,
		-0.665996, -0.641110, -0.381349,
		32.291256, 31.063725, 31.328127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086132, 31.666311, 31.930933>,  <32.757454, 31.512503, 31.595072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086132, 31.666311, 31.930933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084641, 31.289619, 31.796391>,  <32.083744, 31.063604, 31.715666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084641, 31.289619, 31.796391>,  <32.086132, 31.666311, 31.930933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084641, 31.289619, 31.796391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377556, -0.310136, 0.872506,
		-0.925979, 0.130251, -0.354398,
		-0.003733, -0.941727, -0.336356,
		32.083519, 31.007101, 31.695484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368385, 31.397202, 32.000744>,  <32.086132, 31.666311, 31.930933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368385, 31.397202, 32.000744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617983, 31.086254, 31.968929>,  <31.767742, 30.899685, 31.949841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617983, 31.086254, 31.968929>,  <31.368385, 31.397202, 32.000744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617983, 31.086254, 31.968929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452861, -0.442695, 0.773911,
		-0.636825, -0.446898, -0.628280,
		0.623996, -0.777369, -0.079536,
		31.805182, 30.853043, 31.945068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956011, 30.819067, 32.234158>,  <31.368385, 31.397202, 32.000744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956011, 30.819067, 32.234158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315754, 30.644203, 32.231396>,  <31.531599, 30.539286, 32.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315754, 30.644203, 32.231396>,  <30.956011, 30.819067, 32.234158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315754, 30.644203, 32.231396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197869, -0.421057, 0.885189,
		-0.389871, -0.794737, -0.465181,
		0.899360, -0.437154, -0.006904,
		31.585562, 30.513056, 32.229324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850254, 30.149590, 32.326889>,  <30.956011, 30.819067, 32.234158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850254, 30.149590, 32.326889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228088, 30.222107, 32.436356>,  <31.454788, 30.265617, 32.502033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228088, 30.222107, 32.436356>,  <30.850254, 30.149590, 32.326889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228088, 30.222107, 32.436356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171927, -0.436955, 0.882899,
		0.279643, -0.881024, -0.381572,
		0.944585, 0.181294, 0.273663,
		31.511463, 30.276495, 32.518456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133589, 29.485357, 32.566917>,  <30.850254, 30.149590, 32.326889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133589, 29.485357, 32.566917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387983, 29.747452, 32.729980>,  <31.540621, 29.904709, 32.827820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387983, 29.747452, 32.729980>,  <31.133589, 29.485357, 32.566917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387983, 29.747452, 32.729980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017729, -0.515719, 0.856574,
		0.771495, -0.551998, -0.316374,
		0.635988, 0.655234, 0.407661,
		31.578779, 29.944021, 32.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396355, 29.089880, 33.025887>,  <31.133589, 29.485357, 32.566917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396355, 29.089880, 33.025887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492311, 29.451565, 33.167225>,  <31.549887, 29.668575, 33.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492311, 29.451565, 33.167225>,  <31.396355, 29.089880, 33.025887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492311, 29.451565, 33.167225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175684, -0.317527, 0.931832,
		0.954770, -0.285617, 0.082683,
		0.239893, 0.904212, 0.353344,
		31.564280, 29.722828, 33.273228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991257, 29.003044, 33.460449>,  <31.396355, 29.089880, 33.025887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991257, 29.003044, 33.460449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808851, 29.332733, 33.594738>,  <31.699408, 29.530546, 33.675312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808851, 29.332733, 33.594738>,  <31.991257, 29.003044, 33.460449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808851, 29.332733, 33.594738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005848, -0.379993, 0.924971,
		0.889954, 0.419835, 0.178102,
		-0.456013, 0.824223, 0.335721,
		31.672047, 29.580000, 33.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304932, 29.142803, 34.041668>,  <31.991257, 29.003044, 33.460449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304932, 29.142803, 34.041668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958220, 29.338692, 34.079330>,  <31.750193, 29.456224, 34.101929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958220, 29.338692, 34.079330>,  <32.304932, 29.142803, 34.041668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958220, 29.338692, 34.079330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137589, -0.416324, 0.898746,
		0.479335, 0.766059, 0.428242,
		-0.866779, 0.489722, 0.094157,
		31.698185, 29.485609, 34.107578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372242, 29.562668, 34.699078>,  <32.304932, 29.142803, 34.041668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372242, 29.562668, 34.699078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980135, 29.514236, 34.636566>,  <31.744871, 29.485178, 34.599060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980135, 29.514236, 34.636566>,  <32.372242, 29.562668, 34.699078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980135, 29.514236, 34.636566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094953, -0.405012, 0.909368,
		-0.173402, 0.906259, 0.385521,
		-0.980263, -0.121080, -0.156282,
		31.686056, 29.477913, 34.589684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056805, 29.834021, 35.254505>,  <32.372242, 29.562668, 34.699078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056805, 29.834021, 35.254505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754015, 29.605679, 35.127312>,  <31.572342, 29.468674, 35.050995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754015, 29.605679, 35.127312>,  <32.056805, 29.834021, 35.254505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754015, 29.605679, 35.127312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273242, -0.165517, 0.947598,
		-0.593574, 0.804194, -0.030689,
		-0.756974, -0.570855, -0.317987,
		31.526922, 29.434422, 35.031918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474060, 29.941751, 35.628746>,  <32.056805, 29.834021, 35.254505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474060, 29.941751, 35.628746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439268, 29.564110, 35.501560>,  <31.418394, 29.337524, 35.425247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439268, 29.564110, 35.501560>,  <31.474060, 29.941751, 35.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439268, 29.564110, 35.501560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213831, -0.294043, 0.931566,
		-0.972991, 0.149016, -0.176303,
		-0.086978, -0.944105, -0.317965,
		31.413176, 29.280878, 35.406170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878731, 29.694843, 35.909691>,  <31.474060, 29.941751, 35.628746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878731, 29.694843, 35.909691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097740, 29.380283, 35.795292>,  <31.229145, 29.191547, 35.726654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097740, 29.380283, 35.795292>,  <30.878731, 29.694843, 35.909691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097740, 29.380283, 35.795292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124435, -0.414496, 0.901503,
		-0.827487, -0.458005, -0.324802,
		0.547522, -0.786399, -0.285998,
		31.261997, 29.144363, 35.709492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590508, 29.245014, 36.395645>,  <30.878731, 29.694843, 35.909691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590508, 29.245014, 36.395645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916544, 29.075069, 36.238106>,  <31.112165, 28.973103, 36.143581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916544, 29.075069, 36.238106>,  <30.590508, 29.245014, 36.395645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916544, 29.075069, 36.238106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152608, -0.498361, 0.853432,
		-0.558872, -0.755730, -0.341373,
		0.815091, -0.424863, -0.393850,
		31.161072, 28.947611, 36.119949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616520, 28.534636, 36.624130>,  <30.590508, 29.245014, 36.395645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616520, 28.534636, 36.624130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995729, 28.570671, 36.502060>,  <31.223255, 28.592293, 36.428818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995729, 28.570671, 36.502060>,  <30.616520, 28.534636, 36.624130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995729, 28.570671, 36.502060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301883, -0.557826, 0.773109,
		-0.100586, -0.825054, -0.556029,
		0.948024, 0.090091, -0.305179,
		31.280136, 28.597698, 36.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973362, 27.859606, 36.724442>,  <30.616520, 28.534636, 36.624130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973362, 27.859606, 36.724442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283798, 28.111855, 36.725002>,  <31.470060, 28.263203, 36.725338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283798, 28.111855, 36.725002>,  <30.973362, 27.859606, 36.724442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283798, 28.111855, 36.725002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438147, -0.540810, 0.718020,
		0.453554, -0.556635, -0.696021,
		0.776090, 0.630621, 0.001399,
		31.516624, 28.301041, 36.725422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656729, 27.441050, 36.710987>,  <30.973362, 27.859606, 36.724442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656729, 27.441050, 36.710987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729343, 27.813599, 36.837219>,  <31.772913, 28.037128, 36.912960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729343, 27.813599, 36.837219>,  <31.656729, 27.441050, 36.710987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729343, 27.813599, 36.837219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435455, -0.363868, 0.823395,
		0.881716, -0.012055, -0.471626,
		0.181536, 0.931372, 0.315579,
		31.783804, 28.093010, 36.931892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355209, 27.440321, 37.010303>,  <31.656729, 27.441050, 36.710987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355209, 27.440321, 37.010303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116619, 27.720181, 37.167641>,  <31.973465, 27.888096, 37.262043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116619, 27.720181, 37.167641>,  <32.355209, 27.440321, 37.010303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116619, 27.720181, 37.167641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291509, -0.267760, 0.918328,
		0.747826, 0.662419, -0.044242,
		-0.596472, 0.699646, 0.393339,
		31.937677, 27.930075, 37.285641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729782, 28.067829, 37.439182>,  <32.355209, 27.440321, 37.010303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729782, 28.067829, 37.439182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362236, 27.970589, 37.563492>,  <32.141708, 27.912245, 37.638077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362236, 27.970589, 37.563492>,  <32.729782, 28.067829, 37.439182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362236, 27.970589, 37.563492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347531, -0.125723, 0.929202,
		-0.186818, 0.961819, 0.200008,
		-0.918869, -0.243101, 0.310775,
		32.086575, 27.897659, 37.656723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499134, 28.431099, 38.072468>,  <32.729782, 28.067829, 37.439182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499134, 28.431099, 38.072468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292213, 28.088882, 38.064011>,  <32.168060, 27.883553, 38.058937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292213, 28.088882, 38.064011>,  <32.499134, 28.431099, 38.072468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292213, 28.088882, 38.064011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180943, -0.133494, 0.974392,
		-0.836453, 0.500232, 0.223861,
		-0.517306, -0.855539, -0.021148,
		32.137020, 27.832220, 38.057667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827677, 28.340885, 38.505966>,  <32.499134, 28.431099, 38.072468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827677, 28.340885, 38.505966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952173, 27.963390, 38.461269>,  <32.026871, 27.736893, 38.434452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952173, 27.963390, 38.461269>,  <31.827677, 28.340885, 38.505966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952173, 27.963390, 38.461269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314443, -0.008689, 0.949237,
		-0.896803, -0.330576, 0.294048,
		0.311240, -0.943739, -0.111739,
		32.045544, 27.680269, 38.427746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431383, 28.506897, 37.894264>,  <31.827677, 28.340885, 38.505966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431383, 28.506897, 37.894264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485407, 28.871967, 37.739975>,  <31.517820, 29.091009, 37.647400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485407, 28.871967, 37.739975>,  <31.431383, 28.506897, 37.894264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485407, 28.871967, 37.739975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671613, 0.370541, 0.641588,
		0.728488, 0.172404, 0.663009,
		0.135060, 0.912675, -0.385724,
		31.525925, 29.145769, 37.624256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851320, 29.185795, 38.229977>,  <31.431383, 28.506897, 37.894264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851320, 29.185795, 38.229977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539358, 29.263515, 37.991985>,  <31.352180, 29.310148, 37.849190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539358, 29.263515, 37.991985>,  <31.851320, 29.185795, 38.229977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539358, 29.263515, 37.991985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492825, 0.395367, 0.775119,
		0.385839, 0.897738, -0.212593,
		-0.779905, 0.194300, -0.594975,
		31.305387, 29.321806, 37.813492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745836, 29.858719, 38.252522>,  <31.851320, 29.185795, 38.229977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745836, 29.858719, 38.252522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421341, 29.634270, 38.186749>,  <31.226645, 29.499601, 38.147285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421341, 29.634270, 38.186749>,  <31.745836, 29.858719, 38.252522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421341, 29.634270, 38.186749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375384, 0.284177, 0.882230,
		-0.448310, 0.777423, -0.441171,
		-0.811237, -0.561122, -0.164433,
		31.177971, 29.465933, 38.137417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370554, 30.272816, 38.506542>,  <31.745836, 29.858719, 38.252522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370554, 30.272816, 38.506542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237633, 29.903477, 38.583485>,  <31.157881, 29.681873, 38.629650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237633, 29.903477, 38.583485>,  <31.370554, 30.272816, 38.506542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237633, 29.903477, 38.583485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005154, 0.205724, 0.978597,
		-0.943159, 0.324198, -0.073121,
		-0.332301, -0.923349, 0.192359,
		31.137943, 29.626472, 38.641193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326971, 30.959713, 38.818127>,  <31.370554, 30.272816, 38.506542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326971, 30.959713, 38.818127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657778, 30.749645, 38.898365>,  <31.856262, 30.623606, 38.946507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657778, 30.749645, 38.898365>,  <31.326971, 30.959713, 38.818127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657778, 30.749645, 38.898365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480837, 0.475925, -0.736404,
		0.291267, 0.705474, 0.646119,
		0.827018, -0.525168, 0.200597,
		31.905884, 30.592094, 38.958546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847622, 31.383736, 38.677238>,  <31.326971, 30.959713, 38.818127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847622, 31.383736, 38.677238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088631, 31.065266, 38.655052>,  <32.233234, 30.874184, 38.641743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088631, 31.065266, 38.655052>,  <31.847622, 31.383736, 38.677238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088631, 31.065266, 38.655052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422817, 0.377368, -0.823905,
		0.676901, 0.472969, 0.564008,
		0.602520, -0.796175, -0.055461,
		32.269386, 30.826414, 38.638412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544483, 31.619778, 38.585316>,  <31.847622, 31.383736, 38.677238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544483, 31.619778, 38.585316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540722, 31.240810, 38.457375>,  <32.538467, 31.013430, 38.380608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540722, 31.240810, 38.457375>,  <32.544483, 31.619778, 38.585316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540722, 31.240810, 38.457375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443169, 0.282793, -0.850664,
		0.896389, -0.149745, 0.417210,
		-0.009399, -0.947420, -0.319855,
		32.537903, 30.956585, 38.361420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294800, 31.291636, 38.381863>,  <32.544483, 31.619778, 38.585316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294800, 31.291636, 38.381863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972797, 31.142105, 38.197594>,  <32.779594, 31.052387, 38.087032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972797, 31.142105, 38.197594>,  <33.294800, 31.291636, 38.381863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972797, 31.142105, 38.197594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308621, 0.399299, -0.863316,
		0.506676, -0.837147, -0.206068,
		-0.805005, -0.373824, -0.460676,
		32.731297, 31.029957, 38.059391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549400, 31.032688, 37.712578>,  <33.294800, 31.291636, 38.381863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549400, 31.032688, 37.712578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153702, 31.065296, 37.663990>,  <32.916283, 31.084862, 37.634838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153702, 31.065296, 37.663990>,  <33.549400, 31.032688, 37.712578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153702, 31.065296, 37.663990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146288, 0.547326, -0.824035,
		-0.000693, -0.832940, -0.553363,
		-0.989242, 0.081522, -0.121470,
		32.856930, 31.089752, 37.627548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380615, 30.728727, 37.031963>,  <33.549400, 31.032688, 37.712578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380615, 30.728727, 37.031963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058872, 30.947475, 37.124863>,  <32.865826, 31.078724, 37.180603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058872, 30.947475, 37.124863>,  <33.380615, 30.728727, 37.031963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058872, 30.947475, 37.124863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057917, 0.316863, -0.946701,
		-0.591314, -0.774939, -0.223198,
		-0.804359, 0.546871, 0.232248,
		32.817566, 31.111536, 37.194538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020977, 30.744778, 36.422337>,  <33.380615, 30.728727, 37.031963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020977, 30.744778, 36.422337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837185, 31.019516, 36.647591>,  <32.726910, 31.184359, 36.782742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837185, 31.019516, 36.647591>,  <33.020977, 30.744778, 36.422337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837185, 31.019516, 36.647591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123768, 0.578326, -0.806363,
		-0.879520, -0.440208, -0.180722,
		-0.459484, 0.686845, 0.563133,
		32.699341, 31.225569, 36.816532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485222, 30.901327, 36.039959>,  <33.020977, 30.744778, 36.422337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485222, 30.901327, 36.039959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540783, 31.217796, 36.278202>,  <32.574120, 31.407679, 36.421146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540783, 31.217796, 36.278202>,  <32.485222, 30.901327, 36.039959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540783, 31.217796, 36.278202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283814, 0.608015, -0.741463,
		-0.948765, -0.066049, 0.309002,
		0.138905, 0.791174, 0.595609,
		32.582455, 31.455149, 36.456886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925924, 31.267708, 35.957523>,  <32.485222, 30.901327, 36.039959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925924, 31.267708, 35.957523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186153, 31.530945, 36.109138>,  <32.342293, 31.688887, 36.200108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186153, 31.530945, 36.109138>,  <31.925924, 31.267708, 35.957523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186153, 31.530945, 36.109138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309372, 0.685464, -0.659112,
		-0.693572, 0.311538, 0.649540,
		0.650574, 0.658091, 0.379038,
		32.381325, 31.728373, 36.222851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589287, 31.861246, 35.832706>,  <31.925924, 31.267708, 35.957523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589287, 31.861246, 35.832706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979788, 31.937393, 35.874058>,  <32.214088, 31.983082, 35.898869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979788, 31.937393, 35.874058>,  <31.589287, 31.861246, 35.832706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979788, 31.937393, 35.874058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026875, 0.579954, -0.814206,
		-0.214953, 0.792094, 0.571299,
		0.976255, 0.190370, 0.103376,
		32.272663, 31.994505, 35.905071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728497, 32.566792, 35.870338>,  <31.589287, 31.861246, 35.832706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728497, 32.566792, 35.870338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069447, 32.412056, 35.729588>,  <32.274017, 32.319214, 35.645138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069447, 32.412056, 35.729588>,  <31.728497, 32.566792, 35.870338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069447, 32.412056, 35.729588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105673, 0.531588, -0.840385,
		0.512146, 0.753505, 0.412233,
		0.852373, -0.386838, -0.351876,
		32.325157, 32.296005, 35.624023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115196, 33.135593, 35.665279>,  <31.728497, 32.566792, 35.870338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115196, 33.135593, 35.665279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271900, 32.827030, 35.464699>,  <32.365925, 32.641891, 35.344353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271900, 32.827030, 35.464699>,  <32.115196, 33.135593, 35.665279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271900, 32.827030, 35.464699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070961, 0.568724, -0.819462,
		0.917326, 0.285452, 0.277545,
		0.391763, -0.771408, -0.501449,
		32.389427, 32.595608, 35.314262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505096, 33.431274, 35.160770>,  <32.115196, 33.135593, 35.665279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505096, 33.431274, 35.160770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502247, 33.059105, 35.014202>,  <32.500538, 32.835804, 34.926262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502247, 33.059105, 35.014202>,  <32.505096, 33.431274, 35.160770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502247, 33.059105, 35.014202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233718, 0.354730, -0.905286,
		0.972278, -0.092086, 0.214930,
		-0.007122, -0.930423, -0.366418,
		32.500111, 32.779980, 34.904278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197495, 33.329182, 35.015045>,  <32.505096, 33.431274, 35.160770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197495, 33.329182, 35.015045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960114, 33.086971, 34.802952>,  <32.817684, 32.941647, 34.675694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960114, 33.086971, 34.802952>,  <33.197495, 33.329182, 35.015045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960114, 33.086971, 34.802952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364526, 0.385143, -0.847812,
		0.717590, -0.696422, -0.007834,
		-0.593452, -0.605526, -0.530238,
		32.782078, 32.905315, 34.643879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518620, 33.271839, 34.439930>,  <33.197495, 33.329182, 35.015045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518620, 33.271839, 34.439930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167137, 33.125782, 34.316940>,  <32.956245, 33.038147, 34.243149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167137, 33.125782, 34.316940>,  <33.518620, 33.271839, 34.439930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167137, 33.125782, 34.316940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172616, 0.357469, -0.917834,
		0.445057, -0.859583, -0.251081,
		-0.878708, -0.365148, -0.307472,
		32.903526, 33.016239, 34.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662437, 32.896576, 33.810452>,  <33.518620, 33.271839, 34.439930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662437, 32.896576, 33.810452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276127, 33.000263, 33.813988>,  <33.044338, 33.062477, 33.816109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276127, 33.000263, 33.813988>,  <33.662437, 32.896576, 33.810452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276127, 33.000263, 33.813988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045404, 0.202526, -0.978224,
		-0.255364, -0.944346, -0.207365,
		-0.965778, 0.259218, 0.008841,
		32.986393, 33.078030, 33.816639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486027, 32.705887, 33.174976>,  <33.662437, 32.896576, 33.810452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486027, 32.705887, 33.174976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167023, 32.918617, 33.288918>,  <32.975620, 33.046253, 33.357281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167023, 32.918617, 33.288918>,  <33.486027, 32.705887, 33.174976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167023, 32.918617, 33.288918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198740, 0.214211, -0.956356,
		-0.569631, -0.819315, -0.065141,
		-0.797511, 0.531824, 0.284852,
		32.927769, 33.078163, 33.374374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931187, 32.514458, 32.698692>,  <33.486027, 32.705887, 33.174976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931187, 32.514458, 32.698692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849232, 32.871685, 32.858913>,  <32.800056, 33.086021, 32.955048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849232, 32.871685, 32.858913>,  <32.931187, 32.514458, 32.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849232, 32.871685, 32.858913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213204, 0.358686, -0.908784,
		-0.955282, -0.271600, 0.116915,
		-0.204890, 0.893072, 0.400553,
		32.787766, 33.139606, 32.979080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304287, 32.698513, 32.452290>,  <32.931187, 32.514458, 32.698692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304287, 32.698513, 32.452290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486610, 33.031246, 32.578968>,  <32.596004, 33.230885, 32.654976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486610, 33.031246, 32.578968>,  <32.304287, 32.698513, 32.452290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486610, 33.031246, 32.578968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074870, 0.390374, -0.917607,
		-0.886922, 0.394544, 0.240216,
		0.455811, 0.831831, 0.316692,
		32.623352, 33.280796, 32.673977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889172, 33.236721, 32.178432>,  <32.304287, 32.698513, 32.452290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889172, 33.236721, 32.178432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258492, 33.372017, 32.251221>,  <32.480083, 33.453194, 32.294895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258492, 33.372017, 32.251221>,  <31.889172, 33.236721, 32.178432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258492, 33.372017, 32.251221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085982, 0.279745, -0.956217,
		-0.374335, 0.898520, 0.229206,
		0.923299, 0.338237, 0.181975,
		32.535480, 33.473488, 32.305813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872564, 33.924187, 31.954973>,  <31.889172, 33.236721, 32.178432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872564, 33.924187, 31.954973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234669, 33.754414, 31.947395>,  <32.451931, 33.652550, 31.942848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234669, 33.754414, 31.947395>,  <31.872564, 33.924187, 31.954973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234669, 33.754414, 31.947395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164674, 0.391640, -0.905263,
		0.391640, 0.816381, 0.424429,
		0.905263, -0.424429, -0.018944,
		32.506248, 33.627087, 31.941711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278229, 34.443916, 31.610449>,  <31.872564, 33.924187, 31.954973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278229, 34.443916, 31.610449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489845, 34.104969, 31.592205>,  <32.616817, 33.901600, 31.581259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489845, 34.104969, 31.592205>,  <32.278229, 34.443916, 31.610449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489845, 34.104969, 31.592205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306479, 0.240914, -0.920886,
		0.791317, 0.473212, 0.387154,
		0.529045, -0.847367, -0.045610,
		32.648560, 33.850758, 31.578522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943291, 34.668453, 31.321310>,  <32.278229, 34.443916, 31.610449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943291, 34.668453, 31.321310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925518, 34.271065, 31.279263>,  <32.914856, 34.032631, 31.254034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925518, 34.271065, 31.279263>,  <32.943291, 34.668453, 31.321310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925518, 34.271065, 31.279263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299948, 0.087103, -0.949971,
		0.952920, -0.073739, 0.294118,
		-0.044432, -0.993467, -0.105120,
		32.912189, 33.973026, 31.247726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654881, 34.494659, 31.120375>,  <32.943291, 34.668453, 31.321310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654881, 34.494659, 31.120375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414593, 34.190704, 31.021019>,  <33.270420, 34.008331, 30.961407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414593, 34.190704, 31.021019>,  <33.654881, 34.494659, 31.120375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414593, 34.190704, 31.021019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391523, -0.008751, -0.920127,
		0.697023, -0.649990, 0.302772,
		-0.600723, -0.759892, -0.248387,
		33.234375, 33.962738, 30.946503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088093, 33.962784, 30.750666>,  <33.654881, 34.494659, 31.120375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088093, 33.962784, 30.750666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712978, 33.886383, 30.634678>,  <33.487911, 33.840542, 30.565084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712978, 33.886383, 30.634678>,  <34.088093, 33.962784, 30.750666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712978, 33.886383, 30.634678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291714, 0.019560, -0.956306,
		0.188325, -0.981395, 0.037374,
		-0.937783, -0.190999, -0.289970,
		33.431644, 33.829082, 30.547688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133171, 33.372955, 30.165213>,  <34.088093, 33.962784, 30.750666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133171, 33.372955, 30.165213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783981, 33.568008, 30.160446>,  <33.574467, 33.685040, 30.157587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783981, 33.568008, 30.160446>,  <34.133171, 33.372955, 30.165213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783981, 33.568008, 30.160446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097719, 0.150900, -0.983707,
		-0.477886, -0.859911, -0.179382,
		-0.872970, 0.487629, -0.011917,
		33.522091, 33.714298, 30.156872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860424, 33.177940, 29.496342>,  <34.133171, 33.372955, 30.165213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860424, 33.177940, 29.496342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593685, 33.460892, 29.590096>,  <33.433643, 33.630661, 29.646347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593685, 33.460892, 29.590096>,  <33.860424, 33.177940, 29.496342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593685, 33.460892, 29.590096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031624, 0.287380, -0.957295,
		-0.744525, -0.645779, -0.169268,
		-0.666845, 0.707376, 0.234384,
		33.393631, 33.673103, 29.660410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402344, 33.029652, 29.088058>,  <33.860424, 33.177940, 29.496342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402344, 33.029652, 29.088058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346912, 33.411972, 29.191776>,  <33.313656, 33.641365, 29.254007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346912, 33.411972, 29.191776>,  <33.402344, 33.029652, 29.088058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346912, 33.411972, 29.191776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129304, 0.242117, -0.961592,
		-0.981874, -0.166780, 0.090038,
		-0.138575, 0.955805, 0.259293,
		33.305340, 33.698715, 29.269564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754875, 33.364357, 28.745886>,  <33.402344, 33.029652, 29.088058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754875, 33.364357, 28.745886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008301, 33.664223, 28.822414>,  <33.160355, 33.844143, 28.868332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008301, 33.664223, 28.822414>,  <32.754875, 33.364357, 28.745886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008301, 33.664223, 28.822414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002722, 0.249441, -0.968386,
		-0.773686, 0.613014, 0.160077,
		0.633564, 0.749662, 0.191321,
		33.198368, 33.889122, 28.879810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453033, 33.836224, 28.372028>,  <32.754875, 33.364357, 28.745886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453033, 33.836224, 28.372028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831322, 33.946037, 28.441586>,  <33.058296, 34.011925, 28.483320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831322, 33.946037, 28.441586>,  <32.453033, 33.836224, 28.372028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831322, 33.946037, 28.441586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129728, 0.171685, -0.976573,
		-0.297954, 0.946127, 0.126752,
		0.945724, 0.274531, 0.173894,
		33.115040, 34.028397, 28.493753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453568, 34.472118, 28.064823>,  <32.453033, 33.836224, 28.372028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453568, 34.472118, 28.064823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830593, 34.342968, 28.099072>,  <33.056808, 34.265476, 28.119621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830593, 34.342968, 28.099072>,  <32.453568, 34.472118, 28.064823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830593, 34.342968, 28.099072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179554, 0.273577, -0.944942,
		0.281677, 0.906038, 0.315836,
		0.942560, -0.322878, 0.085623,
		33.113361, 34.246105, 28.124758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835011, 34.978916, 27.721792>,  <32.453568, 34.472118, 28.064823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835011, 34.978916, 27.721792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101826, 34.681667, 27.743065>,  <33.261913, 34.503319, 27.755829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101826, 34.681667, 27.743065>,  <32.835011, 34.978916, 27.721792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101826, 34.681667, 27.743065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358220, 0.257312, -0.897480,
		0.653254, 0.617704, 0.437838,
		0.667037, -0.743124, 0.053184,
		33.301937, 34.458729, 27.759020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464931, 35.208633, 27.636072>,  <32.835011, 34.978916, 27.721792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464931, 35.208633, 27.636072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541939, 34.821739, 27.569881>,  <33.588142, 34.589603, 27.530167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541939, 34.821739, 27.569881>,  <33.464931, 35.208633, 27.636072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541939, 34.821739, 27.569881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393952, 0.230628, -0.889726,
		0.898742, 0.106101, 0.425447,
		0.192521, -0.967240, -0.165477,
		33.599693, 34.531567, 27.520239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251904, 35.026817, 27.375309>,  <33.464931, 35.208633, 27.636072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251904, 35.026817, 27.375309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105404, 34.677986, 27.245480>,  <34.017506, 34.468689, 27.167582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105404, 34.677986, 27.245480>,  <34.251904, 35.026817, 27.375309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105404, 34.677986, 27.245480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388539, 0.173622, -0.904927,
		0.845517, -0.457537, 0.275247,
		-0.366249, -0.872075, -0.324572,
		33.995529, 34.416363, 27.148108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755787, 34.667774, 27.057859>,  <34.251904, 35.026817, 27.375309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755787, 34.667774, 27.057859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410851, 34.531223, 26.908283>,  <34.203888, 34.449291, 26.818537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410851, 34.531223, 26.908283>,  <34.755787, 34.667774, 27.057859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410851, 34.531223, 26.908283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400826, -0.009017, -0.916110,
		0.309366, -0.939883, 0.144609,
		-0.862340, -0.341376, -0.373940,
		34.152149, 34.428810, 26.796101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992722, 34.230114, 26.572386>,  <34.755787, 34.667774, 27.057859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992722, 34.230114, 26.572386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606014, 34.266724, 26.476902>,  <34.373989, 34.288689, 26.419611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606014, 34.266724, 26.476902>,  <34.992722, 34.230114, 26.572386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606014, 34.266724, 26.476902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240864, 0.013088, -0.970471,
		-0.085703, -0.995716, -0.034699,
		-0.966767, 0.091530, -0.238710,
		34.315983, 34.294182, 26.405289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844330, 33.768047, 26.086082>,  <34.992722, 34.230114, 26.572386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844330, 33.768047, 26.086082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576279, 34.061337, 26.039925>,  <34.415447, 34.237309, 26.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576279, 34.061337, 26.039925>,  <34.844330, 33.768047, 26.086082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576279, 34.061337, 26.039925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245822, 0.072546, -0.966596,
		-0.700359, -0.676108, -0.228857,
		-0.670126, 0.733222, -0.115394,
		34.375240, 34.281303, 26.005306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610252, 33.651714, 25.450920>,  <34.844330, 33.768047, 26.086082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610252, 33.651714, 25.450920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519623, 34.036716, 25.510574>,  <34.465244, 34.267719, 25.546368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519623, 34.036716, 25.510574>,  <34.610252, 33.651714, 25.450920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519623, 34.036716, 25.510574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330896, 0.220075, -0.917646,
		-0.916064, -0.158563, -0.368353,
		-0.226570, 0.962509, 0.149135,
		34.451653, 34.325470, 25.555315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259644, 33.868118, 24.867584>,  <34.610252, 33.651714, 25.450920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259644, 33.868118, 24.867584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403088, 34.196056, 25.046131>,  <34.489155, 34.392822, 25.153259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403088, 34.196056, 25.046131>,  <34.259644, 33.868118, 24.867584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403088, 34.196056, 25.046131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321862, 0.340252, -0.883535,
		-0.876243, 0.460516, -0.141859,
		0.358614, 0.819850, 0.446366,
		34.510674, 34.442013, 25.180040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978294, 34.390602, 24.561655>,  <34.259644, 33.868118, 24.867584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978294, 34.390602, 24.561655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309921, 34.550907, 24.717625>,  <34.508896, 34.647091, 24.811207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309921, 34.550907, 24.717625>,  <33.978294, 34.390602, 24.561655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309921, 34.550907, 24.717625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306802, 0.256955, -0.916431,
		-0.467467, 0.879409, 0.090076,
		0.829064, 0.400766, 0.389923,
		34.558640, 34.671139, 24.834602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997536, 35.014339, 24.343252>,  <33.978294, 34.390602, 24.561655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997536, 35.014339, 24.343252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375362, 34.943623, 24.453918>,  <34.602058, 34.901192, 24.520319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375362, 34.943623, 24.453918>,  <33.997536, 35.014339, 24.343252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375362, 34.943623, 24.453918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310823, 0.209997, -0.926979,
		0.105786, 0.961585, 0.253307,
		0.944563, -0.176795, 0.276668,
		34.658730, 34.890583, 24.536919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327602, 35.699879, 24.186066>,  <33.997536, 35.014339, 24.343252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327602, 35.699879, 24.186066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585564, 35.394344, 24.196316>,  <34.740341, 35.211025, 24.202465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585564, 35.394344, 24.196316>,  <34.327602, 35.699879, 24.186066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585564, 35.394344, 24.196316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334051, 0.251566, -0.908364,
		0.687393, 0.594367, 0.417395,
		0.644904, -0.763834, 0.025624,
		34.779034, 35.165195, 24.204002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970001, 36.292877, 24.505135>,  <34.327602, 35.699879, 24.186066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970001, 36.292877, 24.505135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776840, 36.641960, 24.533924>,  <33.660942, 36.851410, 24.551197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776840, 36.641960, 24.533924>,  <33.970001, 36.292877, 24.505135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776840, 36.641960, 24.533924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462979, -0.324219, 0.824944,
		0.743272, 0.365047, 0.560614,
		-0.482905, 0.872710, 0.071974,
		33.631969, 36.903774, 24.555517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971485, 36.491245, 25.208870>,  <33.970001, 36.292877, 24.505135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971485, 36.491245, 25.208870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647640, 36.653561, 25.039227>,  <33.453335, 36.750950, 24.937441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647640, 36.653561, 25.039227>,  <33.971485, 36.491245, 25.208870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647640, 36.653561, 25.039227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564297, -0.339229, 0.752657,
		0.161549, 0.848682, 0.503628,
		-0.809611, 0.405787, -0.424107,
		33.404758, 36.775295, 24.911995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687271, 37.034473, 25.755558>,  <33.971485, 36.491245, 25.208870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687271, 37.034473, 25.755558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373066, 36.972816, 25.515823>,  <33.184544, 36.935822, 25.371983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373066, 36.972816, 25.515823>,  <33.687271, 37.034473, 25.755558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373066, 36.972816, 25.515823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572817, -0.185396, 0.798441,
		-0.234189, 0.970499, 0.057336,
		-0.785516, -0.154143, -0.599336,
		33.137409, 36.926575, 25.336023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091454, 37.406063, 26.056490>,  <33.687271, 37.034473, 25.755558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091454, 37.406063, 26.056490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907444, 37.149830, 25.810555>,  <32.797039, 36.996090, 25.662994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907444, 37.149830, 25.810555>,  <33.091454, 37.406063, 26.056490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907444, 37.149830, 25.810555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694331, -0.172071, 0.698782,
		-0.553426, 0.748358, -0.365622,
		-0.460026, -0.640586, -0.614837,
		32.769436, 36.957653, 25.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384121, 37.608658, 26.052818>,  <33.091454, 37.406063, 26.056490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384121, 37.608658, 26.052818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412384, 37.220684, 25.959671>,  <32.429340, 36.987900, 25.903782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412384, 37.220684, 25.959671>,  <32.384121, 37.608658, 26.052818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412384, 37.220684, 25.959671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776634, -0.199993, 0.597363,
		-0.625977, 0.138646, -0.767418,
		0.070656, -0.969938, -0.232868,
		32.433582, 36.929703, 25.889811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660309, 37.299480, 26.080902>,  <32.384121, 37.608658, 26.052818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660309, 37.299480, 26.080902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868704, 36.958065, 26.083584>,  <31.993742, 36.753216, 26.085192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868704, 36.958065, 26.083584>,  <31.660309, 37.299480, 26.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868704, 36.958065, 26.083584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600936, -0.361206, 0.713026,
		-0.606173, -0.375506, -0.701106,
		0.520989, -0.853537, 0.006702,
		32.025002, 36.702003, 26.085594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139523, 36.790867, 26.167677>,  <31.660309, 37.299480, 26.080902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139523, 36.790867, 26.167677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482105, 36.625374, 26.291168>,  <31.687654, 36.526077, 26.365263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482105, 36.625374, 26.291168>,  <31.139523, 36.790867, 26.167677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482105, 36.625374, 26.291168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463420, -0.352721, 0.812915,
		-0.227430, -0.839296, -0.493819,
		0.856457, -0.413727, 0.308727,
		31.739042, 36.501255, 26.383785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933903, 36.218662, 26.461351>,  <31.139523, 36.790867, 26.167677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933903, 36.218662, 26.461351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306746, 36.262581, 26.599407>,  <31.530451, 36.288933, 26.682240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306746, 36.262581, 26.599407>,  <30.933903, 36.218662, 26.461351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306746, 36.262581, 26.599407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298611, -0.306294, 0.903889,
		0.204955, -0.945584, -0.252713,
		0.932108, 0.109793, 0.345138,
		31.586378, 36.295517, 26.702950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874552, 35.662373, 27.018206>,  <30.933903, 36.218662, 26.461351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874552, 35.662373, 27.018206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190155, 35.887268, 27.117283>,  <31.379517, 36.022205, 27.176729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190155, 35.887268, 27.117283>,  <30.874552, 35.662373, 27.018206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190155, 35.887268, 27.117283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266417, -0.050181, 0.962551,
		0.553612, -0.825451, 0.110196,
		0.789009, 0.562238, 0.247695,
		31.426857, 36.055939, 27.191591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302534, 35.301876, 27.435097>,  <30.874552, 35.662373, 27.018206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302534, 35.301876, 27.435097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404161, 35.676189, 27.532883>,  <31.465137, 35.900776, 27.591555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404161, 35.676189, 27.532883>,  <31.302534, 35.301876, 27.435097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404161, 35.676189, 27.532883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411928, -0.123996, 0.902740,
		0.875080, -0.330058, 0.353972,
		0.254066, 0.935781, 0.244467,
		31.480381, 35.956924, 27.606222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635777, 35.210979, 28.104788>,  <31.302534, 35.301876, 27.435097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635777, 35.210979, 28.104788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505417, 35.588196, 28.078064>,  <31.427200, 35.814526, 28.062031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505417, 35.588196, 28.078064>,  <31.635777, 35.210979, 28.104788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505417, 35.588196, 28.078064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308295, -0.039206, 0.950483,
		0.893725, 0.330357, 0.303512,
		-0.325898, 0.943041, -0.066808,
		31.407648, 35.871109, 28.058022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005295, 35.546772, 28.524803>,  <31.635777, 35.210979, 28.104788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005295, 35.546772, 28.524803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665169, 35.754997, 28.493893>,  <31.461092, 35.879932, 28.475346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665169, 35.754997, 28.493893>,  <32.005295, 35.546772, 28.524803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665169, 35.754997, 28.493893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061577, 0.047418, 0.996975,
		0.522655, 0.852504, -0.008266,
		-0.850318, 0.520565, -0.077278,
		31.410074, 35.911167, 28.470709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049717, 36.083229, 28.953295>,  <32.005295, 35.546772, 28.524803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049717, 36.083229, 28.953295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657515, 36.022713, 28.903156>,  <31.422192, 35.986401, 28.873074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657515, 36.022713, 28.903156>,  <32.049717, 36.083229, 28.953295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657515, 36.022713, 28.903156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151035, 0.172382, 0.973382,
		-0.125658, 0.973342, -0.191872,
		-0.980509, -0.151293, -0.125347,
		31.363361, 35.977325, 28.865553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652008, 36.655174, 29.368027>,  <32.049717, 36.083229, 28.953295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652008, 36.655174, 29.368027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404387, 36.343849, 29.326080>,  <31.255814, 36.157055, 29.300913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404387, 36.343849, 29.326080>,  <31.652008, 36.655174, 29.368027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404387, 36.343849, 29.326080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236165, 0.057142, 0.970031,
		-0.748997, 0.625270, -0.219185,
		-0.619056, -0.778314, -0.104868,
		31.218670, 36.110355, 29.294621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043095, 36.779068, 29.780199>,  <31.652008, 36.655174, 29.368027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043095, 36.779068, 29.780199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028627, 36.385151, 29.712231>,  <31.019947, 36.148800, 29.671450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028627, 36.385151, 29.712231>,  <31.043095, 36.779068, 29.780199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028627, 36.385151, 29.712231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431295, -0.138000, 0.891595,
		-0.901486, 0.105534, -0.419745,
		-0.036169, -0.984794, -0.169921,
		31.017776, 36.089714, 29.661255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403576, 36.535763, 30.089155>,  <31.043095, 36.779068, 29.780199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403576, 36.535763, 30.089155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608294, 36.196785, 30.032715>,  <30.731125, 35.993401, 29.998850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608294, 36.196785, 30.032715>,  <30.403576, 36.535763, 30.089155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608294, 36.196785, 30.032715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181218, -0.267036, 0.946494,
		-0.839778, -0.458840, -0.290239,
		0.511794, -0.847442, -0.141101,
		30.761831, 35.942551, 29.990385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018501, 36.059093, 30.401215>,  <30.403576, 36.535763, 30.089155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018501, 36.059093, 30.401215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384661, 35.905918, 30.351566>,  <30.604357, 35.814014, 30.321777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384661, 35.905918, 30.351566>,  <30.018501, 36.059093, 30.401215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384661, 35.905918, 30.351566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027107, -0.249001, 0.968124,
		-0.401635, -0.889584, -0.217555,
		0.915399, -0.382935, -0.124122,
		30.659281, 35.791039, 30.314329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950806, 35.372234, 30.621801>,  <30.018501, 36.059093, 30.401215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950806, 35.372234, 30.621801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336946, 35.471054, 30.655422>,  <30.568630, 35.530346, 30.675594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336946, 35.471054, 30.655422>,  <29.950806, 35.372234, 30.621801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336946, 35.471054, 30.655422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003000, -0.332577, 0.943071,
		0.260942, -0.910142, -0.321794,
		0.965350, 0.247052, 0.084053,
		30.626551, 35.545170, 30.680637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200096, 34.834492, 30.953274>,  <29.950806, 35.372234, 30.621801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200096, 34.834492, 30.953274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479435, 35.115936, 31.005810>,  <30.647038, 35.284801, 31.037333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479435, 35.115936, 31.005810>,  <30.200096, 34.834492, 30.953274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479435, 35.115936, 31.005810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077483, -0.256734, 0.963371,
		0.711555, -0.662589, -0.233806,
		0.698345, 0.703607, 0.131341,
		30.688938, 35.327019, 31.045212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873785, 34.528755, 31.196756>,  <30.200096, 34.834492, 30.953274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873785, 34.528755, 31.196756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871933, 34.910084, 31.317524>,  <30.870821, 35.138882, 31.389984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871933, 34.910084, 31.317524>,  <30.873785, 34.528755, 31.196756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871933, 34.910084, 31.317524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126630, -0.298934, 0.945835,
		0.991939, 0.042612, -0.119335,
		-0.004630, 0.953322, 0.301920,
		30.870544, 35.196079, 31.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453484, 34.555759, 31.617872>,  <30.873785, 34.528755, 31.196756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453484, 34.555759, 31.617872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203501, 34.856327, 31.702534>,  <31.053511, 35.036667, 31.753330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203501, 34.856327, 31.702534>,  <31.453484, 34.555759, 31.617872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203501, 34.856327, 31.702534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068007, -0.322498, 0.944124,
		0.777690, 0.575644, 0.252650,
		-0.624958, 0.751418, 0.211655,
		31.016014, 35.081753, 31.766031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615091, 34.874851, 32.270061>,  <31.453484, 34.555759, 31.617872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615091, 34.874851, 32.270061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221874, 34.872227, 32.196758>,  <30.985943, 34.870651, 32.152779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221874, 34.872227, 32.196758>,  <31.615091, 34.874851, 32.270061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221874, 34.872227, 32.196758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167217, -0.378069, 0.910551,
		-0.075255, 0.925754, 0.370562,
		-0.983044, -0.006559, -0.183253,
		30.926962, 34.870258, 32.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310835, 35.375385, 32.741920>,  <31.615091, 34.874851, 32.270061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310835, 35.375385, 32.741920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008324, 35.134491, 32.639660>,  <30.826817, 34.989956, 32.578304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008324, 35.134491, 32.639660>,  <31.310835, 35.375385, 32.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008324, 35.134491, 32.639660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142568, -0.229667, 0.962771,
		-0.638527, 0.764571, 0.087833,
		-0.756279, -0.602233, -0.255652,
		30.781441, 34.953819, 32.562965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698830, 35.471096, 33.269985>,  <31.310835, 35.375385, 32.741920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698830, 35.471096, 33.269985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632095, 35.124920, 33.081020>,  <30.592054, 34.917213, 32.967640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632095, 35.124920, 33.081020>,  <30.698830, 35.471096, 33.269985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632095, 35.124920, 33.081020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368945, -0.389525, 0.843889,
		-0.914355, 0.315086, -0.254313,
		-0.166836, -0.865442, -0.472414,
		30.582045, 34.865288, 32.939297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057245, 35.223915, 33.562298>,  <30.698830, 35.471096, 33.269985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057245, 35.223915, 33.562298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235891, 34.892250, 33.427818>,  <30.343079, 34.693253, 33.347130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235891, 34.892250, 33.427818>,  <30.057245, 35.223915, 33.562298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235891, 34.892250, 33.427818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419775, -0.526016, 0.739659,
		-0.790141, -0.189216, -0.582988,
		0.446617, -0.829159, -0.336198,
		30.369877, 34.643501, 33.326958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529980, 34.632751, 33.496170>,  <30.057245, 35.223915, 33.562298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529980, 34.632751, 33.496170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899834, 34.486958, 33.540356>,  <30.121746, 34.399483, 33.566868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899834, 34.486958, 33.540356>,  <29.529980, 34.632751, 33.496170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899834, 34.486958, 33.540356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295229, -0.502730, 0.812467,
		-0.240596, -0.783848, -0.572447,
		0.924637, -0.364479, 0.110460,
		30.177225, 34.377613, 33.573494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379631, 33.822998, 33.755795>,  <29.529980, 34.632751, 33.496170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379631, 33.822998, 33.755795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769165, 33.893692, 33.812943>,  <30.002886, 33.936108, 33.847233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769165, 33.893692, 33.812943>,  <29.379631, 33.822998, 33.755795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769165, 33.893692, 33.812943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037671, -0.494434, 0.868398,
		0.224121, -0.851057, -0.474839,
		0.973833, 0.176738, 0.142873,
		30.061316, 33.946712, 33.855804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636217, 33.222691, 33.963459>,  <29.379631, 33.822998, 33.755795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636217, 33.222691, 33.963459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908842, 33.490498, 34.081589>,  <30.072416, 33.651184, 34.152466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908842, 33.490498, 34.081589>,  <29.636217, 33.222691, 33.963459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908842, 33.490498, 34.081589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059880, -0.453259, 0.889365,
		0.729308, -0.588472, -0.349015,
		0.681560, 0.669520, 0.295328,
		30.113310, 33.691353, 34.170185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199223, 32.770611, 34.381062>,  <29.636217, 33.222691, 33.963459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199223, 32.770611, 34.381062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231394, 33.154945, 34.487133>,  <30.250696, 33.385548, 34.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231394, 33.154945, 34.487133>,  <30.199223, 32.770611, 34.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231394, 33.154945, 34.487133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020619, -0.267590, 0.963312,
		0.996547, -0.072011, -0.041333,
		0.080429, 0.960838, 0.265181,
		30.255522, 33.443195, 34.566689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572294, 32.778862, 34.983379>,  <30.199223, 32.770611, 34.381062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572294, 32.778862, 34.983379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456295, 33.160248, 35.016396>,  <30.386696, 33.389080, 35.036205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456295, 33.160248, 35.016396>,  <30.572294, 32.778862, 34.983379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456295, 33.160248, 35.016396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108116, -0.053059, 0.992721,
		0.950901, 0.296811, -0.087698,
		-0.289998, 0.953461, 0.082544,
		30.369295, 33.446285, 35.041161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198877, 33.154678, 35.289421>,  <30.572294, 32.778862, 34.983379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198877, 33.154678, 35.289421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856802, 33.345833, 35.369694>,  <30.651556, 33.460526, 35.417858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856802, 33.345833, 35.369694>,  <31.198877, 33.154678, 35.289421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856802, 33.345833, 35.369694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031786, -0.338095, 0.940575,
		0.517341, 0.810748, 0.273945,
		-0.855189, 0.477891, 0.200680,
		30.600245, 33.489201, 35.429897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289291, 33.362755, 35.917591>,  <31.198877, 33.154678, 35.289421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289291, 33.362755, 35.917591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894056, 33.423653, 35.908653>,  <30.656916, 33.460194, 35.903290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894056, 33.423653, 35.908653>,  <31.289291, 33.362755, 35.917591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894056, 33.423653, 35.908653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067600, -0.299048, 0.951841,
		0.138235, 0.942014, 0.305778,
		-0.988090, 0.152249, -0.022341,
		30.597630, 33.469326, 35.901951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097521, 33.823944, 36.519733>,  <31.289291, 33.362755, 35.917591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097521, 33.823944, 36.519733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766001, 33.637024, 36.396629>,  <30.567089, 33.524872, 36.322769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766001, 33.637024, 36.396629>,  <31.097521, 33.823944, 36.519733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766001, 33.637024, 36.396629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170474, -0.312982, 0.934335,
		-0.532940, 0.826843, 0.179737,
		-0.828803, -0.467304, -0.307756,
		30.517361, 33.496834, 36.304302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574690, 34.026646, 36.955585>,  <31.097521, 33.823944, 36.519733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574690, 34.026646, 36.955585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433960, 33.686134, 36.799870>,  <30.349522, 33.481827, 36.706440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433960, 33.686134, 36.799870>,  <30.574690, 34.026646, 36.955585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433960, 33.686134, 36.799870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390455, -0.244508, 0.887559,
		-0.850744, 0.464263, -0.246363,
		-0.351823, -0.851279, -0.389287,
		30.328413, 33.430752, 36.683083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894707, 34.008930, 37.254280>,  <30.574690, 34.026646, 36.955585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894707, 34.008930, 37.254280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995287, 33.640278, 37.136047>,  <30.055635, 33.419086, 37.065109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995287, 33.640278, 37.136047>,  <29.894707, 34.008930, 37.254280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995287, 33.640278, 37.136047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229598, -0.353476, 0.906829,
		-0.940244, -0.160156, -0.300486,
		0.251448, -0.921631, -0.295583,
		30.070721, 33.363789, 37.047371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376711, 33.586063, 37.604969>,  <29.894707, 34.008930, 37.254280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376711, 33.586063, 37.604969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674023, 33.341114, 37.497246>,  <29.852409, 33.194145, 37.432610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674023, 33.341114, 37.497246>,  <29.376711, 33.586063, 37.604969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674023, 33.341114, 37.497246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251689, -0.628974, 0.735558,
		-0.619819, -0.478951, -0.621636,
		0.743289, -0.612371, -0.269303,
		29.897007, 33.157402, 37.416454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098675, 32.782597, 37.705803>,  <29.376711, 33.586063, 37.604969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098675, 32.782597, 37.705803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497301, 32.757805, 37.683857>,  <29.736477, 32.742931, 37.670689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497301, 32.757805, 37.683857>,  <29.098675, 32.782597, 37.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497301, 32.757805, 37.683857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010105, -0.566791, 0.823800,
		-0.082158, -0.821527, -0.564219,
		0.996568, -0.061980, -0.054868,
		29.796272, 32.739212, 37.667397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275667, 32.105114, 37.723400>,  <29.098675, 32.782597, 37.705803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275667, 32.105114, 37.723400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585705, 32.307716, 37.874496>,  <29.771727, 32.429276, 37.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585705, 32.307716, 37.874496>,  <29.275667, 32.105114, 37.723400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585705, 32.307716, 37.874496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041258, -0.637126, 0.769655,
		0.630498, -0.580970, -0.514729,
		0.775093, 0.506503, 0.377737,
		29.818233, 32.459667, 37.987816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273605, 31.413719, 37.531025>,  <29.275667, 32.105114, 37.723400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273605, 31.413719, 37.531025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186577, 31.051609, 37.385071>,  <29.134359, 30.834343, 37.297501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186577, 31.051609, 37.385071>,  <29.273605, 31.413719, 37.531025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186577, 31.051609, 37.385071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355595, 0.274624, -0.893383,
		0.908964, -0.324125, 0.262161,
		-0.217572, -0.905276, -0.364881,
		29.121305, 30.780025, 37.275608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854807, 31.222715, 37.156384>,  <29.273605, 31.413719, 37.531025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854807, 31.222715, 37.156384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556503, 30.997860, 37.013363>,  <29.377522, 30.862946, 36.927551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556503, 30.997860, 37.013363>,  <29.854807, 31.222715, 37.156384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556503, 30.997860, 37.013363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318550, 0.170491, -0.932448,
		0.585126, -0.809278, 0.051925,
		-0.745757, -0.562140, -0.357554,
		29.332777, 30.829218, 36.906097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108225, 30.889645, 36.512657>,  <29.854807, 31.222715, 37.156384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108225, 30.889645, 36.512657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711998, 30.848202, 36.476791>,  <29.474262, 30.823336, 36.455273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711998, 30.848202, 36.476791>,  <30.108225, 30.889645, 36.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711998, 30.848202, 36.476791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091480, -0.012934, -0.995723,
		0.102006, -0.994534, 0.022290,
		-0.990569, -0.103609, -0.089661,
		29.414827, 30.817120, 36.449894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067915, 30.445021, 35.990299>,  <30.108225, 30.889645, 36.512657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067915, 30.445021, 35.990299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723442, 30.647587, 36.007774>,  <29.516758, 30.769127, 36.018257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723442, 30.647587, 36.007774>,  <30.067915, 30.445021, 35.990299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723442, 30.647587, 36.007774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011900, 0.106006, -0.994294,
		-0.508155, -0.855750, -0.097317,
		-0.861184, 0.506413, 0.043684,
		29.465088, 30.799511, 36.020878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539160, 30.004026, 35.505451>,  <30.067915, 30.445021, 35.990299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539160, 30.004026, 35.505451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401367, 30.375462, 35.560665>,  <29.318691, 30.598324, 35.593792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401367, 30.375462, 35.560665>,  <29.539160, 30.004026, 35.505451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401367, 30.375462, 35.560665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183469, 0.077605, -0.979958,
		-0.920690, -0.362903, 0.143634,
		-0.344483, 0.928590, 0.138032,
		29.298023, 30.654039, 35.602074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941141, 30.079527, 35.061199>,  <29.539160, 30.004026, 35.505451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941141, 30.079527, 35.061199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049610, 30.457104, 35.136501>,  <29.114691, 30.683649, 35.181683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049610, 30.457104, 35.136501>,  <28.941141, 30.079527, 35.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049610, 30.457104, 35.136501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087942, 0.219066, -0.971739,
		-0.958505, 0.246953, 0.142417,
		0.271173, 0.943941, 0.188258,
		29.130962, 30.740286, 35.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394682, 30.573923, 34.765202>,  <28.941141, 30.079527, 35.061199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394682, 30.573923, 34.765202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728315, 30.793240, 34.789463>,  <28.928495, 30.924829, 34.804020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728315, 30.793240, 34.789463>,  <28.394682, 30.573923, 34.765202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728315, 30.793240, 34.789463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195815, 0.397076, -0.896653,
		-0.515714, 0.736006, 0.438559,
		0.834084, 0.548293, 0.060656,
		28.978540, 30.957727, 34.807659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170992, 31.224844, 34.700375>,  <28.394682, 30.573923, 34.765202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170992, 31.224844, 34.700375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555883, 31.252987, 34.595177>,  <28.786818, 31.269873, 34.532059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555883, 31.252987, 34.595177>,  <28.170992, 31.224844, 34.700375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555883, 31.252987, 34.595177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265811, 0.451582, -0.851715,
		0.058842, 0.889452, 0.453226,
		0.962228, 0.070356, -0.262998,
		28.844551, 31.274094, 34.516277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138096, 31.766273, 34.293476>,  <28.170992, 31.224844, 34.700375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138096, 31.766273, 34.293476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507620, 31.628044, 34.227558>,  <28.729334, 31.545107, 34.188007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507620, 31.628044, 34.227558>,  <28.138096, 31.766273, 34.293476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507620, 31.628044, 34.227558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019074, 0.471441, -0.881691,
		0.382381, 0.811370, 0.442113,
		0.923808, -0.345575, -0.164794,
		28.784761, 31.524372, 34.178120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514952, 32.380360, 34.034939>,  <28.138096, 31.766273, 34.293476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514952, 32.380360, 34.034939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723555, 32.053753, 33.935879>,  <28.848717, 31.857788, 33.876442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723555, 32.053753, 33.935879>,  <28.514952, 32.380360, 34.034939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723555, 32.053753, 33.935879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013400, 0.298042, -0.954459,
		0.853142, 0.494439, 0.166373,
		0.521508, -0.816518, -0.247646,
		28.880007, 31.808798, 33.861584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996881, 32.635433, 33.671261>,  <28.514952, 32.380360, 34.034939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996881, 32.635433, 33.671261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966129, 32.251675, 33.562706>,  <28.947678, 32.021420, 33.497574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966129, 32.251675, 33.562706>,  <28.996881, 32.635433, 33.671261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966129, 32.251675, 33.562706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041476, 0.275033, -0.960540,
		0.996177, -0.062592, -0.060937,
		-0.076882, -0.959395, -0.271385,
		28.943066, 31.963856, 33.481289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557236, 32.535011, 33.116520>,  <28.996881, 32.635433, 33.671261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557236, 32.535011, 33.116520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277571, 32.254456, 33.061066>,  <29.109772, 32.086121, 33.027794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277571, 32.254456, 33.061066>,  <29.557236, 32.535011, 33.116520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277571, 32.254456, 33.061066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103757, 0.291390, -0.950961,
		0.707394, -0.650492, -0.276503,
		-0.699162, -0.701393, -0.138635,
		29.067822, 32.044037, 33.019474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814816, 31.963448, 32.622410>,  <29.557236, 32.535011, 33.116520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814816, 31.963448, 32.622410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415575, 31.982998, 32.637417>,  <29.176031, 31.994728, 32.646420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415575, 31.982998, 32.637417>,  <29.814816, 31.963448, 32.622410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415575, 31.982998, 32.637417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034852, 0.054310, -0.997916,
		-0.050814, -0.997327, -0.052504,
		-0.998100, 0.048879, 0.037518,
		29.116144, 31.997660, 32.648674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598766, 31.546068, 32.009945>,  <29.814816, 31.963448, 32.622410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598766, 31.546068, 32.009945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292137, 31.777344, 32.121704>,  <29.108160, 31.916109, 32.188759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292137, 31.777344, 32.121704>,  <29.598766, 31.546068, 32.009945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292137, 31.777344, 32.121704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122286, 0.295693, -0.947424,
		-0.630408, -0.760435, -0.155965,
		-0.766572, 0.578191, 0.279397,
		29.062166, 31.950802, 32.205524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217051, 31.535910, 31.371939>,  <29.598766, 31.546068, 32.009945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217051, 31.535910, 31.371939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030420, 31.814426, 31.590107>,  <28.918442, 31.981537, 31.721008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030420, 31.814426, 31.590107>,  <29.217051, 31.535910, 31.371939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030420, 31.814426, 31.590107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193561, 0.521330, -0.831113,
		-0.863042, -0.493350, -0.108466,
		-0.466576, 0.696291, 0.545423,
		28.890448, 32.023315, 31.753735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625946, 31.760088, 30.963160>,  <29.217051, 31.535910, 31.371939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625946, 31.760088, 30.963160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703323, 32.063263, 31.212353>,  <28.749750, 32.245167, 31.361868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703323, 32.063263, 31.212353>,  <28.625946, 31.760088, 30.963160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703323, 32.063263, 31.212353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104029, 0.647242, -0.755153,
		-0.975581, 0.081270, 0.204051,
		0.193442, 0.757940, 0.622983,
		28.761356, 32.290646, 31.399248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144318, 32.252350, 30.808397>,  <28.625946, 31.760088, 30.963160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144318, 32.252350, 30.808397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460085, 32.430668, 30.977200>,  <28.649546, 32.537659, 31.078480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460085, 32.430668, 30.977200>,  <28.144318, 32.252350, 30.808397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460085, 32.430668, 30.977200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025748, 0.662812, -0.748344,
		-0.613316, 0.601622, 0.511757,
		0.789418, 0.445794, 0.422004,
		28.696911, 32.564407, 31.103800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998430, 33.097454, 30.942572>,  <28.144318, 32.252350, 30.808397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998430, 33.097454, 30.942572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388201, 33.022083, 30.893608>,  <28.622063, 32.976860, 30.864229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388201, 33.022083, 30.893608>,  <27.998430, 33.097454, 30.942572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388201, 33.022083, 30.893608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045523, 0.699029, -0.713643,
		0.220038, 0.689821, 0.689732,
		0.974429, -0.188427, -0.122410,
		28.680529, 32.965557, 30.856886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278418, 33.738884, 30.860394>,  <27.998430, 33.097454, 30.942572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278418, 33.738884, 30.860394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580154, 33.510704, 30.730438>,  <28.761196, 33.373795, 30.652464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580154, 33.510704, 30.730438>,  <28.278418, 33.738884, 30.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580154, 33.510704, 30.730438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270274, 0.720870, -0.638200,
		0.598266, 0.393611, 0.697960,
		0.754341, -0.570453, -0.324889,
		28.806458, 33.339569, 30.632971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710070, 34.187347, 30.720474>,  <28.278418, 33.738884, 30.860394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710070, 34.187347, 30.720474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844431, 33.866638, 30.522758>,  <28.925049, 33.674213, 30.404129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844431, 33.866638, 30.522758>,  <28.710070, 34.187347, 30.720474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844431, 33.866638, 30.522758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347994, 0.593293, -0.725882,
		0.875254, 0.071817, 0.478303,
		0.335904, -0.801777, -0.494290,
		28.945202, 33.626106, 30.374472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370438, 34.410023, 30.549871>,  <28.710070, 34.187347, 30.720474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370438, 34.410023, 30.549871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267004, 34.118061, 30.296772>,  <29.204945, 33.942883, 30.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267004, 34.118061, 30.296772>,  <29.370438, 34.410023, 30.549871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267004, 34.118061, 30.296772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326355, 0.550503, -0.768400,
		0.909190, -0.405197, 0.095857,
		-0.258584, -0.729905, -0.632750,
		29.189428, 33.899090, 30.106947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876762, 34.354031, 30.115286>,  <29.370438, 34.410023, 30.549871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876762, 34.354031, 30.115286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576214, 34.188000, 29.910095>,  <29.395884, 34.088379, 29.786980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576214, 34.188000, 29.910095>,  <29.876762, 34.354031, 30.115286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576214, 34.188000, 29.910095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178521, 0.620530, -0.763592,
		0.635284, -0.665313, -0.392140,
		-0.751362, -0.415093, -0.512984,
		29.350801, 34.063477, 29.756203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155788, 34.204758, 29.504845>,  <29.876762, 34.354031, 30.115286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155788, 34.204758, 29.504845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760742, 34.204044, 29.442089>,  <29.523714, 34.203617, 29.404436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760742, 34.204044, 29.442089>,  <30.155788, 34.204758, 29.504845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760742, 34.204044, 29.442089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133133, 0.519574, -0.843990,
		0.083024, -0.854424, -0.512901,
		-0.987614, -0.001788, -0.156889,
		29.464458, 34.203506, 29.395021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125780, 34.088589, 28.830683>,  <30.155788, 34.204758, 29.504845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125780, 34.088589, 28.830683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764858, 34.238388, 28.916100>,  <29.548306, 34.328266, 28.967350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764858, 34.238388, 28.916100>,  <30.125780, 34.088589, 28.830683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764858, 34.238388, 28.916100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048671, 0.403678, -0.913606,
		-0.428346, -0.834742, -0.346013,
		-0.902303, 0.374499, 0.213541,
		29.494167, 34.350739, 28.980162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853636, 34.053482, 28.168734>,  <30.125780, 34.088589, 28.830683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853636, 34.053482, 28.168734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612089, 34.319183, 28.344967>,  <29.467161, 34.478603, 28.450706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612089, 34.319183, 28.344967>,  <29.853636, 34.053482, 28.168734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612089, 34.319183, 28.344967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139192, 0.456375, -0.878833,
		-0.784837, -0.592025, -0.183131,
		-0.603867, 0.664251, 0.440585,
		29.430929, 34.518459, 28.477142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328091, 34.127823, 27.736437>,  <29.853636, 34.053482, 28.168734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328091, 34.127823, 27.736437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272533, 34.464725, 27.944790>,  <29.239199, 34.666866, 28.069801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272533, 34.464725, 27.944790>,  <29.328091, 34.127823, 27.736437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272533, 34.464725, 27.944790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300939, 0.465209, -0.832476,
		-0.943475, -0.272377, 0.188854,
		-0.138891, 0.842254, 0.520882,
		29.230865, 34.717403, 28.101055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576822, 34.446144, 27.749287>,  <29.328091, 34.127823, 27.736437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576822, 34.446144, 27.749287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852001, 34.730289, 27.808758>,  <29.017109, 34.900776, 27.844440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852001, 34.730289, 27.808758>,  <28.576822, 34.446144, 27.749287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852001, 34.730289, 27.808758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412564, 0.551318, -0.725148,
		-0.597090, 0.437525, 0.672350,
		0.687949, 0.710366, 0.148679,
		29.058386, 34.943398, 27.853361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193470, 35.118992, 27.703491>,  <28.576822, 34.446144, 27.749287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193470, 35.118992, 27.703491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580238, 35.218029, 27.678951>,  <28.812300, 35.277451, 27.664227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580238, 35.218029, 27.678951>,  <28.193470, 35.118992, 27.703491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580238, 35.218029, 27.678951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204912, 0.610698, -0.764891,
		-0.151916, 0.752160, 0.641231,
		0.966919, 0.247595, -0.061352,
		28.870314, 35.292309, 27.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143675, 35.877995, 27.724907>,  <28.193470, 35.118992, 27.703491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143675, 35.877995, 27.724907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484838, 35.750458, 27.559551>,  <28.689537, 35.673935, 27.460339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484838, 35.750458, 27.559551>,  <28.143675, 35.877995, 27.724907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484838, 35.750458, 27.559551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203791, 0.525679, -0.825912,
		0.480642, 0.788672, 0.383380,
		0.852909, -0.318839, -0.413387,
		28.740711, 35.654808, 27.435535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386030, 36.474380, 27.412201>,  <28.143675, 35.877995, 27.724907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386030, 36.474380, 27.412201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564245, 36.172215, 27.220013>,  <28.671175, 35.990917, 27.104700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564245, 36.172215, 27.220013>,  <28.386030, 36.474380, 27.412201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564245, 36.172215, 27.220013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218655, 0.428609, -0.876632,
		0.868151, 0.495629, 0.025787,
		0.445537, -0.755411, -0.480469,
		28.697906, 35.945591, 27.075872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643301, 36.848721, 26.815155>,  <28.386030, 36.474380, 27.412201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643301, 36.848721, 26.815155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707624, 36.475056, 26.687733>,  <28.746218, 36.250854, 26.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707624, 36.475056, 26.687733>,  <28.643301, 36.848721, 26.815155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707624, 36.475056, 26.687733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034080, 0.327819, -0.944125,
		0.986397, 0.140966, 0.084552,
		0.160807, -0.934164, -0.318556,
		28.755867, 36.194805, 26.592165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909922, 36.919510, 26.219215>,  <28.643301, 36.848721, 26.815155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909922, 36.919510, 26.219215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805340, 36.537830, 26.161053>,  <28.742590, 36.308823, 26.126156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805340, 36.537830, 26.161053>,  <28.909922, 36.919510, 26.219215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805340, 36.537830, 26.161053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104664, 0.121731, -0.987029,
		0.959524, -0.273283, 0.068044,
		-0.261455, -0.954200, -0.145407,
		28.726904, 36.251572, 26.117430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407061, 36.588993, 25.729969>,  <28.909922, 36.919510, 26.219215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407061, 36.588993, 25.729969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070824, 36.373226, 25.749691>,  <28.869081, 36.243767, 25.761524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070824, 36.373226, 25.749691>,  <29.407061, 36.588993, 25.729969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070824, 36.373226, 25.749691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168181, 0.173383, -0.970388,
		0.514899, -0.823992, -0.236465,
		-0.840591, -0.539421, 0.049306,
		28.818645, 36.211399, 25.764482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286989, 36.284683, 25.133450>,  <29.407061, 36.588993, 25.729969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286989, 36.284683, 25.133450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915569, 36.252590, 25.278423>,  <28.692717, 36.233334, 25.365408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915569, 36.252590, 25.278423>,  <29.286989, 36.284683, 25.133450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915569, 36.252590, 25.278423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370355, 0.134032, -0.919170,
		0.025174, -0.987723, -0.154171,
		-0.928549, -0.080237, 0.362434,
		28.637005, 36.228519, 25.387154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014467, 35.858624, 24.661827>,  <29.286989, 36.284683, 25.133450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014467, 35.858624, 24.661827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725359, 36.063129, 24.847820>,  <28.551893, 36.185833, 24.959415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725359, 36.063129, 24.847820>,  <29.014467, 35.858624, 24.661827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725359, 36.063129, 24.847820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456570, 0.151830, -0.876637,
		-0.518791, -0.845906, 0.123689,
		-0.722772, 0.511264, 0.464983,
		28.508528, 36.216507, 24.987314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372168, 35.521526, 24.430035>,  <29.014467, 35.858624, 24.661827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372168, 35.521526, 24.430035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278126, 35.886398, 24.564285>,  <28.221701, 36.105324, 24.644836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278126, 35.886398, 24.564285>,  <28.372168, 35.521526, 24.430035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278126, 35.886398, 24.564285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535194, 0.166753, -0.828107,
		-0.811353, -0.374318, 0.448991,
		-0.235105, 0.912184, 0.335628,
		28.207594, 36.160053, 24.664974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662037, 35.505333, 24.371159>,  <28.372168, 35.521526, 24.430035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662037, 35.505333, 24.371159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754316, 35.894470, 24.363716>,  <27.809683, 36.127953, 24.359251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754316, 35.894470, 24.363716>,  <27.662037, 35.505333, 24.371159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754316, 35.894470, 24.363716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718539, 0.157435, -0.677433,
		-0.656110, 0.169652, 0.735349,
		0.230697, 0.972847, -0.018607,
		27.823526, 36.186325, 24.358133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996950, 35.965244, 24.364561>,  <27.662037, 35.505333, 24.371159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996950, 35.965244, 24.364561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276173, 36.226742, 24.247711>,  <27.443707, 36.383640, 24.177601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276173, 36.226742, 24.247711>,  <26.996950, 35.965244, 24.364561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276173, 36.226742, 24.247711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543131, 0.217565, -0.810971,
		-0.466610, 0.724767, 0.506941,
		0.698057, 0.653742, -0.292125,
		27.485590, 36.422863, 24.160074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557165, 36.449905, 24.163023>,  <26.996950, 35.965244, 24.364561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557165, 36.449905, 24.163023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916094, 36.510082, 23.997044>,  <27.131451, 36.546188, 23.897455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916094, 36.510082, 23.997044>,  <26.557165, 36.449905, 24.163023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916094, 36.510082, 23.997044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440057, 0.232190, -0.867431,
		-0.034150, 0.960965, 0.274552,
		0.897320, 0.150441, -0.414951,
		27.185289, 36.555214, 23.872559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530027, 37.127659, 23.773014>,  <26.557165, 36.449905, 24.163023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530027, 37.127659, 23.773014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830919, 36.911209, 23.622639>,  <27.011456, 36.781338, 23.532413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830919, 36.911209, 23.622639>,  <26.530027, 37.127659, 23.773014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830919, 36.911209, 23.622639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267376, 0.270777, -0.924765,
		0.602212, 0.796153, 0.059002,
		0.752231, -0.541128, -0.375937,
		27.056589, 36.748871, 23.509857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610117, 37.434368, 23.134768>,  <26.530027, 37.127659, 23.773014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610117, 37.434368, 23.134768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834841, 37.103848, 23.118832>,  <26.969675, 36.905533, 23.109270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834841, 37.103848, 23.118832>,  <26.610117, 37.434368, 23.134768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834841, 37.103848, 23.118832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222041, -0.104227, -0.969451,
		0.796910, 0.553494, -0.242029,
		0.561812, -0.826305, -0.039839,
		27.003384, 36.855957, 23.106880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947626, 37.696468, 22.820604>,  <26.610117, 37.434368, 23.134768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947626, 37.696468, 22.820604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029455, 38.064114, 22.955296>,  <26.078552, 38.284698, 23.036110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029455, 38.064114, 22.955296>,  <25.947626, 37.696468, 22.820604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029455, 38.064114, 22.955296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975622, 0.219375, -0.006066,
		-0.079445, -0.327279, 0.941582,
		0.204575, 0.919110, 0.336729,
		26.090828, 38.339848, 23.056314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440374, 37.736542, 23.262968>,  <25.947626, 37.696468, 22.820604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440374, 37.736542, 23.262968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566425, 38.112274, 23.208794>,  <25.642056, 38.337715, 23.176289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566425, 38.112274, 23.208794>,  <25.440374, 37.736542, 23.262968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566425, 38.112274, 23.208794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949042, 0.311334, -0.048893,
		-0.003761, 0.143944, 0.989579,
		0.315127, 0.939335, -0.135438,
		25.660963, 38.394073, 23.168163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093208, 38.282436, 23.716312>,  <25.440374, 37.736542, 23.262968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093208, 38.282436, 23.716312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181086, 38.459183, 23.368408>,  <25.233812, 38.565231, 23.159666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181086, 38.459183, 23.368408>,  <25.093208, 38.282436, 23.716312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181086, 38.459183, 23.368408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953760, 0.284741, -0.096254,
		0.205126, 0.850691, 0.483992,
		0.219695, 0.441868, -0.869763,
		25.246994, 38.591743, 23.107479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207598, 37.727356, 24.209040>,  <25.093208, 38.282436, 23.716312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207598, 37.727356, 24.209040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268789, 37.996044, 24.498974>,  <25.305504, 38.157257, 24.672934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268789, 37.996044, 24.498974>,  <25.207598, 37.727356, 24.209040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268789, 37.996044, 24.498974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867570, 0.442500, -0.226970,
		-0.473200, -0.594123, 0.650461,
		0.152980, 0.671723, 0.724835,
		25.314684, 38.197559, 24.716425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720177, 37.588627, 24.655399>,  <25.207598, 37.727356, 24.209040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720177, 37.588627, 24.655399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815456, 37.977112, 24.655884>,  <24.872623, 38.210205, 24.656176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815456, 37.977112, 24.655884>,  <24.720177, 37.588627, 24.655399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815456, 37.977112, 24.655884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969211, 0.237625, 0.064529,
		0.062383, -0.016546, 0.997915,
		0.238198, 0.971216, 0.001212,
		24.886915, 38.268478, 24.656248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241488, 37.960068, 25.058762>,  <24.720177, 37.588627, 24.655399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241488, 37.960068, 25.058762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420630, 38.261139, 24.865723>,  <24.528114, 38.441780, 24.749899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420630, 38.261139, 24.865723>,  <24.241488, 37.960068, 25.058762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420630, 38.261139, 24.865723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868339, 0.494796, -0.034125,
		0.213102, 0.434341, 0.875177,
		0.447856, 0.752679, -0.482597,
		24.554987, 38.486942, 24.720943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.804092, 37.859585, 24.397070>,  <24.241488, 37.960068, 25.058762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.804092, 37.859585, 24.397070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499388, 37.791363, 24.147068>,  <23.316565, 37.750427, 23.997066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499388, 37.791363, 24.147068>,  <23.804092, 37.859585, 24.397070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.499388, 37.791363, 24.147068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361148, 0.689130, -0.628229,
		0.537860, -0.704279, -0.463355,
		-0.761760, -0.170559, -0.625005,
		23.270859, 37.740196, 23.959566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068205, 37.752132, 23.646456>,  <23.804092, 37.859585, 24.397070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068205, 37.752132, 23.646456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.688496, 37.872551, 23.610119>,  <23.460670, 37.944801, 23.588316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.688496, 37.872551, 23.610119>,  <24.068205, 37.752132, 23.646456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.688496, 37.872551, 23.610119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275134, 0.655295, -0.703484,
		-0.152250, -0.692793, -0.704882,
		-0.949274, 0.301043, -0.090842,
		23.403713, 37.962864, 23.582867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.982096, 37.872105, 22.898979>,  <24.068205, 37.752132, 23.646456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.982096, 37.872105, 22.898979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.683027, 38.071041, 23.074997>,  <23.503586, 38.190403, 23.180609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.683027, 38.071041, 23.074997>,  <23.982096, 37.872105, 22.898979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.683027, 38.071041, 23.074997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149623, 0.771775, -0.618043,
		-0.646994, -0.396252, -0.651447,
		-0.747671, 0.497341, 0.440045,
		23.458727, 38.220245, 23.207010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.813154, 38.327793, 22.397491>,  <23.982096, 37.872105, 22.898979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.813154, 38.327793, 22.397491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.638861, 38.507851, 22.709263>,  <23.534285, 38.615887, 22.896326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.638861, 38.507851, 22.709263>,  <23.813154, 38.327793, 22.397491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.638861, 38.507851, 22.709263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215908, 0.892948, -0.395003,
		-0.873796, -0.003833, -0.486279,
		-0.435735, 0.450143, 0.779427,
		23.508141, 38.642895, 22.943090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.399506, 38.898212, 22.141409>,  <23.813154, 38.327793, 22.397491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.399506, 38.898212, 22.141409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477543, 38.995884, 22.521370>,  <23.524364, 39.054485, 22.749348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477543, 38.995884, 22.521370>,  <23.399506, 38.898212, 22.141409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477543, 38.995884, 22.521370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252985, 0.923212, -0.289272,
		-0.947596, 0.296746, 0.118339,
		0.195093, 0.244175, 0.949904,
		23.536070, 39.069138, 22.806341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212294, 39.645180, 22.264299>,  <23.399506, 38.898212, 22.141409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212294, 39.645180, 22.264299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.500681, 39.548412, 22.524048>,  <23.673714, 39.490353, 22.679897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.500681, 39.548412, 22.524048>,  <23.212294, 39.645180, 22.264299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.500681, 39.548412, 22.524048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417310, 0.899683, -0.128153,
		-0.553227, 0.363384, 0.749594,
		0.720966, -0.241915, 0.649373,
		23.716970, 39.475838, 22.718859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.235636, 40.243103, 22.637426>,  <23.212294, 39.645180, 22.264299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.235636, 40.243103, 22.637426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.575171, 40.056129, 22.736206>,  <23.778891, 39.943947, 22.795475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.575171, 40.056129, 22.736206>,  <23.235636, 40.243103, 22.637426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.575171, 40.056129, 22.736206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490496, 0.870612, -0.038065,
		-0.197205, 0.153439, 0.968280,
		0.848837, -0.467431, 0.246950,
		23.829821, 39.915901, 22.810291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.518993, 40.754696, 23.004364>,  <23.235636, 40.243103, 22.637426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.518993, 40.754696, 23.004364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.796854, 40.489368, 22.893028>,  <23.963570, 40.330173, 22.826227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.796854, 40.489368, 22.893028>,  <23.518993, 40.754696, 23.004364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.796854, 40.489368, 22.893028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621271, 0.748255, -0.232673,
		0.362603, -0.011296, 0.931875,
		0.694652, -0.663315, -0.278337,
		24.005249, 40.290375, 22.809526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275949, 41.040146, 23.179132>,  <23.518993, 40.754696, 23.004364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275949, 41.040146, 23.179132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346754, 40.763226, 22.899307>,  <24.389236, 40.597073, 22.731413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346754, 40.763226, 22.899307>,  <24.275949, 41.040146, 23.179132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346754, 40.763226, 22.899307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694786, 0.591330, -0.409390,
		0.697093, -0.413578, 0.585674,
		0.177012, -0.692302, -0.699561,
		24.399858, 40.555534, 22.689440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015707, 41.172844, 23.062881>,  <24.275949, 41.040146, 23.179132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015707, 41.172844, 23.062881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887238, 40.949692, 22.756779>,  <24.810156, 40.815800, 22.573116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887238, 40.949692, 22.756779>,  <25.015707, 41.172844, 23.062881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887238, 40.949692, 22.756779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543754, 0.552962, -0.631320,
		0.775358, -0.618875, 0.125751,
		-0.321172, -0.557877, -0.765259,
		24.790886, 40.782330, 22.527201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612648, 41.033234, 22.661196>,  <25.015707, 41.172844, 23.062881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612648, 41.033234, 22.661196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330969, 40.958138, 22.387302>,  <25.161961, 40.913082, 22.222967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330969, 40.958138, 22.387302>,  <25.612648, 41.033234, 22.661196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330969, 40.958138, 22.387302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552250, 0.461293, -0.694427,
		0.446223, -0.867161, -0.221173,
		-0.704205, -0.187726, -0.684729,
		25.119709, 40.901817, 22.181883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958260, 40.869442, 21.960438>,  <25.612648, 41.033234, 22.661196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958260, 40.869442, 21.960438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588114, 40.980900, 21.857632>,  <25.366026, 41.047775, 21.795948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588114, 40.980900, 21.857632>,  <25.958260, 40.869442, 21.960438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588114, 40.980900, 21.857632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371635, 0.533145, -0.760029,
		-0.074752, -0.798820, -0.596908,
		-0.925365, 0.278646, -0.257015,
		25.310505, 41.064495, 21.780527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833296, 40.645172, 21.241272>,  <25.958260, 40.869442, 21.960438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833296, 40.645172, 21.241272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561581, 40.935326, 21.285786>,  <25.398552, 41.109417, 21.312494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561581, 40.935326, 21.285786>,  <25.833296, 40.645172, 21.241272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561581, 40.935326, 21.285786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439249, 0.523356, -0.730178,
		-0.587902, -0.447119, -0.674134,
		-0.679288, 0.725385, 0.111285,
		25.357794, 41.152943, 21.319172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468210, 40.716793, 20.554466>,  <25.833296, 40.645172, 21.241272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468210, 40.716793, 20.554466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376747, 41.052597, 20.751621>,  <25.321869, 41.254078, 20.869915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376747, 41.052597, 20.751621>,  <25.468210, 40.716793, 20.554466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376747, 41.052597, 20.751621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219871, 0.537755, -0.813926,
		-0.948353, -0.077738, -0.307545,
		-0.228657, 0.839509, 0.492889,
		25.308149, 41.304451, 20.899488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778427, 41.100327, 20.225943>,  <25.468210, 40.716793, 20.554466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778427, 41.100327, 20.225943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038725, 41.354782, 20.391766>,  <25.194904, 41.507454, 20.491259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038725, 41.354782, 20.391766>,  <24.778427, 41.100327, 20.225943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038725, 41.354782, 20.391766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121259, 0.451902, -0.883788,
		-0.749550, 0.625390, 0.216936,
		0.650746, 0.636138, 0.414558,
		25.233950, 41.545624, 20.516132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612608, 41.667900, 19.946440>,  <24.778427, 41.100327, 20.225943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612608, 41.667900, 19.946440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947741, 41.798241, 20.121647>,  <25.148819, 41.876446, 20.226772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947741, 41.798241, 20.121647>,  <24.612608, 41.667900, 19.946440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947741, 41.798241, 20.121647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321570, 0.353814, -0.878299,
		-0.441173, 0.876719, 0.191652,
		0.837830, 0.325852, 0.438019,
		25.199089, 41.895996, 20.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692667, 42.439159, 19.879635>,  <24.612608, 41.667900, 19.946440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692667, 42.439159, 19.879635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065281, 42.296116, 19.906052>,  <25.288849, 42.210289, 19.921902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065281, 42.296116, 19.906052>,  <24.692667, 42.439159, 19.879635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065281, 42.296116, 19.906052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273665, 0.569756, -0.774910,
		0.239488, 0.739928, 0.628612,
		0.931533, -0.357611, 0.066043,
		25.344740, 42.188831, 19.925865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013155, 43.032463, 19.652599>,  <24.692667, 42.439159, 19.879635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013155, 43.032463, 19.652599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286478, 42.741299, 19.629833>,  <25.450472, 42.566601, 19.616175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286478, 42.741299, 19.629833>,  <25.013155, 43.032463, 19.652599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286478, 42.741299, 19.629833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400727, 0.439049, -0.804148,
		0.610333, 0.526675, 0.591699,
		0.683309, -0.727907, -0.056914,
		25.491470, 42.522926, 19.612759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681505, 43.399254, 19.756147>,  <25.013155, 43.032463, 19.652599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681505, 43.399254, 19.756147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753292, 43.060993, 19.555084>,  <25.796364, 42.858036, 19.434446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753292, 43.060993, 19.555084>,  <25.681505, 43.399254, 19.756147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753292, 43.060993, 19.555084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502640, 0.518049, -0.692083,
		0.845662, -0.128449, 0.518032,
		0.179468, -0.845651, -0.502658,
		25.807133, 42.807297, 19.404287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438395, 43.355740, 19.584564>,  <25.681505, 43.399254, 19.756147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438395, 43.355740, 19.584564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272726, 43.091961, 19.333618>,  <26.173325, 42.933693, 19.183050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272726, 43.091961, 19.333618>,  <26.438395, 43.355740, 19.584564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272726, 43.091961, 19.333618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480593, 0.426909, -0.766015,
		0.772976, -0.618770, 0.140113,
		-0.414172, -0.659449, -0.627367,
		26.148474, 42.894127, 19.145409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933687, 43.224590, 19.151367>,  <26.438395, 43.355740, 19.584564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933687, 43.224590, 19.151367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613680, 43.111347, 18.939774>,  <26.421677, 43.043404, 18.812817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613680, 43.111347, 18.939774>,  <26.933687, 43.224590, 19.151367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613680, 43.111347, 18.939774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394494, 0.416086, -0.819297,
		0.452056, -0.864130, -0.221188,
		-0.800013, -0.283110, -0.528988,
		26.373674, 43.026417, 18.781078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180784, 42.872898, 18.461651>,  <26.933687, 43.224590, 19.151367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180784, 42.872898, 18.461651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822018, 43.047886, 18.435860>,  <26.606758, 43.152878, 18.420385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822018, 43.047886, 18.435860>,  <27.180784, 42.872898, 18.461651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822018, 43.047886, 18.435860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278905, 0.446508, -0.850201,
		-0.343147, -0.780545, -0.522494,
		-0.896918, 0.437470, -0.064480,
		26.552942, 43.179127, 18.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045044, 42.932053, 17.759571>,  <27.180784, 42.872898, 18.461651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045044, 42.932053, 17.759571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789574, 43.190220, 17.927155>,  <26.636292, 43.345119, 18.027704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789574, 43.190220, 17.927155>,  <27.045044, 42.932053, 17.759571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789574, 43.190220, 17.927155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044820, 0.574751, -0.817100,
		-0.768171, -0.503083, -0.396006,
		-0.638674, 0.645422, 0.418958,
		26.597971, 43.383846, 18.052841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497070, 43.069736, 17.274349>,  <27.045044, 42.932053, 17.759571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497070, 43.069736, 17.274349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547001, 43.374073, 17.529076>,  <26.576960, 43.556675, 17.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547001, 43.374073, 17.529076>,  <26.497070, 43.069736, 17.274349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547001, 43.374073, 17.529076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118118, 0.625878, -0.770925,
		-0.985123, 0.171452, -0.011742,
		0.124828, 0.760842, 0.636818,
		26.584450, 43.602325, 17.720121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786570, 42.696308, 17.014977>,  <26.497070, 43.069736, 17.274349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786570, 42.696308, 17.014977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611944, 42.458332, 17.284927>,  <25.507170, 42.315548, 17.446898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611944, 42.458332, 17.284927>,  <25.786570, 42.696308, 17.014977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611944, 42.458332, 17.284927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544458, -0.422472, -0.724626,
		0.716226, -0.683787, -0.139484,
		-0.436562, -0.594939, 0.674879,
		25.480976, 42.279850, 17.487391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789112, 42.049538, 16.998066>,  <25.786570, 42.696308, 17.014977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789112, 42.049538, 16.998066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434937, 42.077496, 17.181854>,  <25.222431, 42.094269, 17.292128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434937, 42.077496, 17.181854>,  <25.789112, 42.049538, 16.998066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434937, 42.077496, 17.181854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451757, -0.361608, -0.815571,
		0.109147, -0.929707, 0.351755,
		-0.885440, 0.069891, 0.459470,
		25.169304, 42.098465, 17.319695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380705, 41.384056, 16.926657>,  <25.789112, 42.049538, 16.998066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380705, 41.384056, 16.926657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103161, 41.659748, 17.010098>,  <24.936634, 41.825165, 17.060162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103161, 41.659748, 17.010098>,  <25.380705, 41.384056, 16.926657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103161, 41.659748, 17.010098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523668, -0.284100, -0.803155,
		-0.494298, -0.666516, 0.558056,
		-0.693860, 0.689234, 0.208603,
		24.895002, 41.866520, 17.072678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670856, 41.077492, 16.922688>,  <25.380705, 41.384056, 16.926657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670856, 41.077492, 16.922688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683054, 41.454063, 16.788357>,  <24.690372, 41.680008, 16.707758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683054, 41.454063, 16.788357>,  <24.670856, 41.077492, 16.922688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683054, 41.454063, 16.788357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488807, -0.279021, -0.826568,
		-0.871859, 0.189362, 0.451669,
		0.030495, 0.941430, -0.335828,
		24.692204, 41.736492, 16.687609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607450, 40.985947, 16.255688>,  <24.670856, 41.077492, 16.922688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607450, 40.985947, 16.255688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546095, 40.714245, 15.968612>,  <24.509281, 40.551224, 15.796366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546095, 40.714245, 15.968612>,  <24.607450, 40.985947, 16.255688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546095, 40.714245, 15.968612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237165, -0.730364, 0.640563,
		-0.959284, -0.071956, 0.273125,
		-0.153388, -0.679257, -0.717692,
		24.500078, 40.510468, 15.753304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254543, 40.307564, 16.502922>,  <24.607450, 40.985947, 16.255688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254543, 40.307564, 16.502922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.454725, 40.230595, 16.165279>,  <24.574835, 40.184414, 15.962693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.454725, 40.230595, 16.165279>,  <24.254543, 40.307564, 16.502922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.454725, 40.230595, 16.165279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182798, -0.929521, 0.320273,
		-0.846245, -0.314584, -0.430007,
		0.500454, -0.192425, -0.844108,
		24.604860, 40.172867, 15.912046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.626715, 40.687508, 16.684847>,  <24.254543, 40.307564, 16.502922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.626715, 40.687508, 16.684847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708021, 40.319901, 16.549744>,  <23.756805, 40.099335, 16.468681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708021, 40.319901, 16.549744>,  <23.626715, 40.687508, 16.684847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708021, 40.319901, 16.549744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605019, -0.389114, 0.694653,
		-0.769828, 0.063151, -0.635119,
		0.203266, -0.919022, -0.337759,
		23.769001, 40.044193, 16.448416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075666, 40.213844, 16.497923>,  <23.626715, 40.687508, 16.684847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075666, 40.213844, 16.497923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.380835, 40.000561, 16.644154>,  <23.563934, 39.872593, 16.731892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.380835, 40.000561, 16.644154>,  <23.075666, 40.213844, 16.497923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.380835, 40.000561, 16.644154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569094, -0.285599, 0.771081,
		-0.306743, -0.796315, -0.521336,
		0.762916, -0.533213, 0.365572,
		23.609711, 39.840599, 16.753826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811129, 39.651573, 16.700411>,  <23.075666, 40.213844, 16.497923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811129, 39.651573, 16.700411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143400, 39.685364, 16.920532>,  <23.342764, 39.705639, 17.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143400, 39.685364, 16.920532>,  <22.811129, 39.651573, 16.700411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143400, 39.685364, 16.920532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509221, -0.284328, 0.812312,
		0.225090, -0.954998, -0.193167,
		0.830679, 0.084479, 0.550305,
		23.392605, 39.710709, 17.085623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.959274, 38.988445, 17.099911>,  <22.811129, 39.651573, 16.700411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.959274, 38.988445, 17.099911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163429, 39.276371, 17.288113>,  <23.285921, 39.449127, 17.401033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163429, 39.276371, 17.288113>,  <22.959274, 38.988445, 17.099911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.163429, 39.276371, 17.288113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486201, -0.209749, 0.848301,
		0.709306, -0.661721, 0.242921,
		0.510386, 0.719813, 0.470505,
		23.316545, 39.492313, 17.429264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.226465, 38.664688, 17.755314>,  <22.959274, 38.988445, 17.099911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.226465, 38.664688, 17.755314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206179, 39.063869, 17.770885>,  <23.194008, 39.303379, 17.780228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206179, 39.063869, 17.770885>,  <23.226465, 38.664688, 17.755314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206179, 39.063869, 17.770885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431908, -0.057061, 0.900111,
		0.900491, 0.028836, 0.433918,
		-0.050715, 0.997954, 0.038928,
		23.190964, 39.363255, 17.782564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.447622, 38.789761, 18.373348>,  <23.226465, 38.664688, 17.755314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.447622, 38.789761, 18.373348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262793, 39.128475, 18.267948>,  <23.151894, 39.331703, 18.204708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262793, 39.128475, 18.267948>,  <23.447622, 38.789761, 18.373348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.262793, 39.128475, 18.267948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384847, 0.076227, 0.919827,
		0.798986, 0.526438, 0.290662,
		-0.462076, 0.846789, -0.263502,
		23.124170, 39.382511, 18.188898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.463678, 39.048126, 19.050392>,  <23.447622, 38.789761, 18.373348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.463678, 39.048126, 19.050392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216711, 39.258926, 18.816788>,  <23.068531, 39.385406, 18.676626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216711, 39.258926, 18.816788>,  <23.463678, 39.048126, 19.050392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216711, 39.258926, 18.816788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594079, 0.174255, 0.785306,
		0.515623, 0.831809, 0.205492,
		-0.617417, 0.527000, -0.584010,
		23.031487, 39.417027, 18.641584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285580, 39.742512, 19.335554>,  <23.463678, 39.048126, 19.050392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285580, 39.742512, 19.335554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.969177, 39.696320, 19.095230>,  <22.779335, 39.668606, 18.951036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.969177, 39.696320, 19.095230>,  <23.285580, 39.742512, 19.335554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.969177, 39.696320, 19.095230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609352, 0.236591, 0.756779,
		0.054752, 0.964722, -0.257515,
		-0.791007, -0.115482, -0.600809,
		22.731874, 39.661674, 18.914988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.850914, 40.207710, 19.460215>,  <23.285580, 39.742512, 19.335554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.850914, 40.207710, 19.460215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623487, 39.916897, 19.306252>,  <22.487032, 39.742409, 19.213873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623487, 39.916897, 19.306252>,  <22.850914, 40.207710, 19.460215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623487, 39.916897, 19.306252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575357, 0.017027, 0.817726,
		-0.587961, 0.686390, -0.427985,
		-0.568566, -0.727035, -0.384907,
		22.452917, 39.698788, 19.190779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.194477, 40.392868, 19.714159>,  <22.850914, 40.207710, 19.460215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.194477, 40.392868, 19.714159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.189154, 40.009262, 19.600941>,  <22.185959, 39.779099, 19.533009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.189154, 40.009262, 19.600941>,  <22.194477, 40.392868, 19.714159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.189154, 40.009262, 19.600941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456195, -0.246072, 0.855181,
		-0.889780, 0.140506, -0.434223,
		-0.013308, -0.959013, -0.283048,
		22.185162, 39.721558, 19.516026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.596462, 40.303574, 19.767715>,  <22.194477, 40.392868, 19.714159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.596462, 40.303574, 19.767715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.772230, 39.945717, 19.800034>,  <21.877691, 39.731003, 19.819426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.772230, 39.945717, 19.800034>,  <21.596462, 40.303574, 19.767715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772230, 39.945717, 19.800034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499273, -0.168471, 0.849908,
		-0.746751, -0.413805, -0.520700,
		0.439419, -0.894641, 0.080796,
		21.904057, 39.677326, 19.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021811, 39.857010, 19.892776>,  <21.596462, 40.303574, 19.767715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021811, 39.857010, 19.892776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.346149, 39.659779, 20.018887>,  <21.540752, 39.541439, 20.094553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.346149, 39.659779, 20.018887>,  <21.021811, 39.857010, 19.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.346149, 39.659779, 20.018887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516937, -0.350816, 0.780836,
		-0.274410, -0.796116, -0.539349,
		0.810848, -0.493079, 0.315274,
		21.589403, 39.511852, 20.113468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.697058, 39.310860, 20.201118>,  <21.021811, 39.857010, 19.892776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.697058, 39.310860, 20.201118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077227, 39.330376, 20.323963>,  <21.305328, 39.342083, 20.397671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077227, 39.330376, 20.323963>,  <20.697058, 39.310860, 20.201118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077227, 39.330376, 20.323963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253045, -0.452686, 0.855011,
		0.180741, -0.890334, -0.417896,
		0.950421, 0.048789, 0.307114,
		21.362352, 39.345013, 20.416098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868200, 38.672932, 20.486235>,  <20.697058, 39.310860, 20.201118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868200, 38.672932, 20.486235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159067, 38.905487, 20.632229>,  <21.333588, 39.045021, 20.719826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159067, 38.905487, 20.632229>,  <20.868200, 38.672932, 20.486235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.159067, 38.905487, 20.632229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237165, -0.286176, 0.928362,
		0.644189, -0.761637, -0.070213,
		0.727168, 0.581389, 0.364985,
		21.377218, 39.079903, 20.741724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118427, 38.224312, 20.964230>,  <20.868200, 38.672932, 20.486235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118427, 38.224312, 20.964230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.280106, 38.566250, 21.094376>,  <21.377113, 38.771412, 21.172464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.280106, 38.566250, 21.094376>,  <21.118427, 38.224312, 20.964230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280106, 38.566250, 21.094376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000740, -0.356025, 0.934476,
		0.914672, -0.377471, -0.144537,
		0.404196, 0.854846, 0.325366,
		21.401365, 38.822704, 21.191986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.633207, 37.964020, 21.369585>,  <21.118427, 38.224312, 20.964230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.633207, 37.964020, 21.369585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556654, 38.341194, 21.478577>,  <21.510721, 38.567497, 21.543972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556654, 38.341194, 21.478577>,  <21.633207, 37.964020, 21.369585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556654, 38.341194, 21.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120089, -0.298021, 0.946975,
		0.974141, 0.148514, 0.170272,
		-0.191384, 0.942935, 0.272480,
		21.499239, 38.624073, 21.560320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.804251, 37.975151, 22.036402>,  <21.633207, 37.964020, 21.369585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.804251, 37.975151, 22.036402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594971, 38.316025, 22.033516>,  <21.469402, 38.520550, 22.031784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594971, 38.316025, 22.033516>,  <21.804251, 37.975151, 22.036402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594971, 38.316025, 22.033516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327458, -0.193212, 0.924900,
		0.786787, 0.486270, 0.380141,
		-0.523199, 0.852180, -0.007216,
		21.438011, 38.571678, 22.031351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.053873, 38.401676, 22.606951>,  <21.804251, 37.975151, 22.036402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.053873, 38.401676, 22.606951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.688286, 38.526123, 22.502743>,  <21.468933, 38.600792, 22.440218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.688286, 38.526123, 22.502743>,  <22.053873, 38.401676, 22.606951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.688286, 38.526123, 22.502743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332080, -0.204485, 0.920820,
		0.233210, 0.928112, 0.290208,
		-0.913967, 0.311117, -0.260519,
		21.414095, 38.619457, 22.424587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.834576, 38.822586, 23.156437>,  <22.053873, 38.401676, 22.606951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.834576, 38.822586, 23.156437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505884, 38.703358, 22.962154>,  <21.308668, 38.631821, 22.845585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505884, 38.703358, 22.962154>,  <21.834576, 38.822586, 23.156437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505884, 38.703358, 22.962154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389421, -0.328558, 0.860466,
		-0.416066, 0.896215, 0.153909,
		-0.821730, -0.298075, -0.485707,
		21.259365, 38.613934, 22.816442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229538, 39.065544, 23.557377>,  <21.834576, 38.822586, 23.156437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229538, 39.065544, 23.557377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108299, 38.763744, 23.324528>,  <21.035555, 38.582664, 23.184818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108299, 38.763744, 23.324528>,  <21.229538, 39.065544, 23.557377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108299, 38.763744, 23.324528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324653, -0.492562, 0.807455,
		-0.895953, 0.433726, -0.095655,
		-0.303098, -0.754496, -0.582123,
		21.017370, 38.537395, 23.149891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548996, 38.997494, 23.669489>,  <21.229538, 39.065544, 23.557377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548996, 38.997494, 23.669489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660862, 38.642349, 23.523342>,  <20.727982, 38.429264, 23.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660862, 38.642349, 23.523342>,  <20.548996, 38.997494, 23.669489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660862, 38.642349, 23.523342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319385, -0.444913, 0.836687,
		-0.905418, -0.117297, -0.407995,
		0.279663, -0.887859, -0.365369,
		20.744761, 38.375992, 23.413731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.016966, 38.491089, 23.850756>,  <20.548996, 38.997494, 23.669489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.016966, 38.491089, 23.850756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355566, 38.283432, 23.803543>,  <20.558725, 38.158840, 23.775215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355566, 38.283432, 23.803543>,  <20.016966, 38.491089, 23.850756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355566, 38.283432, 23.803543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276908, -0.618682, 0.735224,
		-0.454707, -0.589684, -0.667469,
		0.846501, -0.519138, -0.118031,
		20.609516, 38.127689, 23.768133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399271, 38.370544, 24.113031>,  <20.016966, 38.491089, 23.850756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399271, 38.370544, 24.113031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220200, 38.507984, 23.782814>,  <19.112757, 38.590446, 23.584684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220200, 38.507984, 23.782814>,  <19.399271, 38.370544, 24.113031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220200, 38.507984, 23.782814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004486, -0.924077, -0.382179,
		-0.894183, -0.167391, 0.415232,
		-0.447680, 0.343600, -0.825543,
		19.085896, 38.611065, 23.535151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.003313, 37.691418, 24.035801>,  <19.399271, 38.370544, 24.113031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.003313, 37.691418, 24.035801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944225, 37.879578, 23.687801>,  <18.908773, 37.992474, 23.479002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944225, 37.879578, 23.687801>,  <19.003313, 37.691418, 24.035801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944225, 37.879578, 23.687801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446370, -0.816675, -0.365781,
		-0.882571, 0.334309, 0.330613,
		-0.147720, 0.470403, -0.869999,
		18.899910, 38.020699, 23.426802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325726, 37.808762, 23.892601>,  <19.003313, 37.691418, 24.035801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.325726, 37.808762, 23.892601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545416, 37.740192, 23.565441>,  <18.677231, 37.699051, 23.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545416, 37.740192, 23.565441>,  <18.325726, 37.808762, 23.892601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545416, 37.740192, 23.565441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494490, -0.855661, -0.152719,
		-0.673668, 0.488322, -0.554720,
		0.549228, -0.171422, -0.817902,
		18.710184, 37.688766, 23.320070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931355, 37.709747, 23.244629>,  <18.325726, 37.808762, 23.892601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931355, 37.709747, 23.244629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.276360, 37.508732, 23.268364>,  <18.483364, 37.388123, 23.282604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.276360, 37.508732, 23.268364>,  <17.931355, 37.709747, 23.244629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.276360, 37.508732, 23.268364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472901, -0.842214, -0.258922,
		0.180092, 0.195264, -0.964074,
		0.862515, -0.502541, 0.059335,
		18.535114, 37.357971, 23.286165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301079, 38.123470, 23.374193>,  <17.931355, 37.709747, 23.244629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301079, 38.123470, 23.374193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.694645, 38.193932, 23.386066>,  <17.930784, 38.236206, 23.393190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.694645, 38.193932, 23.386066>,  <17.301079, 38.123470, 23.374193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694645, 38.193932, 23.386066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036914, 0.037910, 0.998599,
		0.174779, -0.983633, 0.043803,
		0.983915, 0.176151, 0.029683,
		17.989820, 38.246777, 23.394972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.430019, 30.016264, 29.639952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.822212, 29.973980, 29.706264>,  <29.057528, 29.948610, 29.746052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.822212, 29.973980, 29.706264>,  <28.430019, 30.016264, 29.639952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822212, 29.973980, 29.706264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196608, 0.535966, -0.821027,
		-0.002063, 0.837595, 0.546288,
		0.980480, -0.105711, 0.165784,
		29.116356, 29.942266, 29.756001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816366, 30.599483, 29.531353>,  <28.430019, 30.016264, 29.639952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816366, 30.599483, 29.531353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121872, 30.341309, 29.527962>,  <29.305176, 30.186403, 29.525927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121872, 30.341309, 29.527962>,  <28.816366, 30.599483, 29.531353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121872, 30.341309, 29.527962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286497, 0.350729, -0.891577,
		0.578431, 0.678527, 0.452790,
		0.763765, -0.645439, -0.008477,
		29.351002, 30.147676, 29.525419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402319, 31.031559, 29.306892>,  <28.816366, 30.599483, 29.531353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402319, 31.031559, 29.306892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.479437, 30.645714, 29.234947>,  <29.525707, 30.414206, 29.191780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.479437, 30.645714, 29.234947>,  <29.402319, 31.031559, 29.306892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479437, 30.645714, 29.234947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490513, 0.253498, -0.833748,
		0.849839, 0.072518, 0.522029,
		0.192795, -0.964614, -0.179861,
		29.537275, 30.356329, 29.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154510, 31.032665, 29.086170>,  <29.402319, 31.031559, 29.306892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154510, 31.032665, 29.086170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.991892, 30.696690, 28.942379>,  <29.894320, 30.495104, 28.856104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.991892, 30.696690, 28.942379>,  <30.154510, 31.032665, 29.086170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991892, 30.696690, 28.942379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276031, 0.262154, -0.924707,
		0.870934, -0.475165, 0.125270,
		-0.406548, -0.839937, -0.359479,
		29.869928, 30.444708, 28.834536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572105, 30.824873, 28.549267>,  <30.154510, 31.032665, 29.086170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572105, 30.824873, 28.549267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255911, 30.594852, 28.464939>,  <30.066195, 30.456841, 28.414343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255911, 30.594852, 28.464939>,  <30.572105, 30.824873, 28.549267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255911, 30.594852, 28.464939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215107, 0.061620, -0.974645,
		0.573462, -0.815793, 0.074987,
		-0.790487, -0.575052, -0.210819,
		30.018764, 30.422337, 28.401693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766796, 30.286623, 28.128679>,  <30.572105, 30.824873, 28.549267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766796, 30.286623, 28.128679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.381979, 30.345116, 28.036514>,  <30.151089, 30.380211, 27.981216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.381979, 30.345116, 28.036514>,  <30.766796, 30.286623, 28.128679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381979, 30.345116, 28.036514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237758, 0.034689, -0.970705,
		-0.133955, -0.988642, -0.068140,
		-0.962043, 0.146231, -0.230411,
		30.093367, 30.388985, 27.967390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577833, 29.833906, 27.538326>,  <30.766796, 30.286623, 28.128679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577833, 29.833906, 27.538326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255039, 30.069336, 27.518909>,  <30.061363, 30.210594, 27.507259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255039, 30.069336, 27.518909>,  <30.577833, 29.833906, 27.538326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255039, 30.069336, 27.518909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046207, -0.019018, -0.998751,
		-0.588761, -0.808220, -0.011849,
		-0.806986, 0.588573, -0.048542,
		30.012943, 30.245907, 27.504347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130976, 29.599470, 26.963263>,  <30.577833, 29.833906, 27.538326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130976, 29.599470, 26.963263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.031174, 29.982849, 27.018578>,  <29.971292, 30.212877, 27.051767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.031174, 29.982849, 27.018578>,  <30.130976, 29.599470, 26.963263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031174, 29.982849, 27.018578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111340, 0.113463, -0.987284,
		-0.961951, -0.261730, 0.078404,
		-0.249505, 0.958448, 0.138287,
		29.956322, 30.270384, 27.060064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894737, 29.822062, 26.342562>,  <30.130976, 29.599470, 26.963263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894737, 29.822062, 26.342562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.910038, 30.178368, 26.523705>,  <29.919218, 30.392151, 26.632389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.910038, 30.178368, 26.523705>,  <29.894737, 29.822062, 26.342562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910038, 30.178368, 26.523705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101988, 0.454301, -0.884991,
		-0.994050, -0.012333, 0.108225,
		0.038252, 0.890763, 0.452855,
		29.921515, 30.445597, 26.659561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368406, 30.330000, 25.949020>,  <29.894737, 29.822062, 26.342562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368406, 30.330000, 25.949020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.619856, 30.557190, 26.161526>,  <29.770725, 30.693504, 26.289028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.619856, 30.557190, 26.161526>,  <29.368406, 30.330000, 25.949020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619856, 30.557190, 26.161526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019813, 0.671194, -0.741017,
		-0.777458, 0.476346, 0.410675,
		0.628623, 0.567973, 0.531263,
		29.808443, 30.727581, 26.320904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100084, 31.031919, 26.038351>,  <29.368406, 30.330000, 25.949020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100084, 31.031919, 26.038351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.498652, 31.065525, 26.042206>,  <29.737791, 31.085688, 26.044518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.498652, 31.065525, 26.042206>,  <29.100084, 31.031919, 26.038351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498652, 31.065525, 26.042206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035381, 0.517673, -0.854847,
		-0.076806, 0.851444, 0.518791,
		0.996418, 0.084012, 0.009636,
		29.797577, 31.090729, 26.045097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277029, 31.787371, 25.962721>,  <29.100084, 31.031919, 26.038351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277029, 31.787371, 25.962721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.614918, 31.596462, 25.865845>,  <29.817652, 31.481916, 25.807718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.614918, 31.596462, 25.865845>,  <29.277029, 31.787371, 25.962721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614918, 31.596462, 25.865845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106442, 0.593296, -0.797915,
		0.524514, 0.648237, 0.551972,
		0.844722, -0.477271, -0.242192,
		29.868334, 31.453281, 25.793186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631584, 32.272705, 25.695362>,  <29.277029, 31.787371, 25.962721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631584, 32.272705, 25.695362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.790176, 31.941158, 25.537487>,  <29.885332, 31.742229, 25.442762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.790176, 31.941158, 25.537487>,  <29.631584, 32.272705, 25.695362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790176, 31.941158, 25.537487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028420, 0.440799, -0.897156,
		0.917603, 0.344489, 0.198325,
		0.396481, -0.828869, -0.394688,
		29.909121, 31.692497, 25.419081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152353, 32.543144, 25.216532>,  <29.631584, 32.272705, 25.695362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152353, 32.543144, 25.216532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084623, 32.175369, 25.074570>,  <30.043985, 31.954704, 24.989391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084623, 32.175369, 25.074570>,  <30.152353, 32.543144, 25.216532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084623, 32.175369, 25.074570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011122, 0.358302, -0.933540,
		0.985498, -0.162019, -0.050444,
		-0.169325, -0.919440, -0.354907,
		30.033825, 31.899538, 24.968098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702570, 32.474770, 24.758001>,  <30.152353, 32.543144, 25.216532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702570, 32.474770, 24.758001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.397720, 32.234905, 24.660370>,  <30.214811, 32.090984, 24.601791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.397720, 32.234905, 24.660370>,  <30.702570, 32.474770, 24.758001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397720, 32.234905, 24.660370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091096, 0.472566, -0.876574,
		0.640993, -0.645822, -0.414780,
		-0.762122, -0.599663, -0.244080,
		30.169085, 32.055008, 24.587147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786446, 32.400906, 24.054607>,  <30.702570, 32.474770, 24.758001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786446, 32.400906, 24.054607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.414177, 32.262550, 24.102291>,  <30.190815, 32.179539, 24.130901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.414177, 32.262550, 24.102291>,  <30.786446, 32.400906, 24.054607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414177, 32.262550, 24.102291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209107, 0.235526, -0.949106,
		0.300210, -0.908233, -0.291525,
		-0.930671, -0.345891, 0.119211,
		30.134975, 32.158783, 24.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645046, 32.120541, 23.333418>,  <30.786446, 32.400906, 24.054607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645046, 32.120541, 23.333418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.299576, 32.184074, 23.524765>,  <30.092295, 32.222195, 23.639574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.299576, 32.184074, 23.524765>,  <30.645046, 32.120541, 23.333418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299576, 32.184074, 23.524765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416400, 0.309968, -0.854711,
		-0.284036, -0.937385, -0.201573,
		-0.863675, 0.158834, 0.478369,
		30.040474, 32.231724, 23.668276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038750, 31.848473, 22.935659>,  <30.645046, 32.120541, 23.333418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038750, 31.848473, 22.935659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.854990, 32.092766, 23.193638>,  <29.744734, 32.239342, 23.348425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.854990, 32.092766, 23.193638>,  <30.038750, 31.848473, 22.935659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854990, 32.092766, 23.193638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625619, 0.292944, -0.723038,
		-0.630517, -0.735654, 0.247508,
		-0.459400, 0.610734, 0.644946,
		29.717171, 32.275986, 23.387121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394466, 31.747622, 22.817774>,  <30.038750, 31.848473, 22.935659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394466, 31.747622, 22.817774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.375601, 32.098949, 23.008068>,  <29.364281, 32.309746, 23.122246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.375601, 32.098949, 23.008068>,  <29.394466, 31.747622, 22.817774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375601, 32.098949, 23.008068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582880, 0.362573, -0.727181,
		-0.811189, -0.311596, 0.494855,
		-0.047166, 0.878322, 0.475738,
		29.361450, 32.362446, 23.150789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674044, 32.020599, 22.699865>,  <29.394466, 31.747622, 22.817774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674044, 32.020599, 22.699865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.914461, 32.334183, 22.762039>,  <29.058712, 32.522331, 22.799343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.914461, 32.334183, 22.762039>,  <28.674044, 32.020599, 22.699865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914461, 32.334183, 22.762039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500210, 0.520678, -0.691870,
		-0.623328, 0.338092, 0.705093,
		0.601042, 0.783956, 0.155436,
		29.094774, 32.569370, 22.808670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267591, 32.599705, 22.667839>,  <28.674044, 32.020599, 22.699865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267591, 32.599705, 22.667839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.632263, 32.758106, 22.623981>,  <28.851067, 32.853146, 22.597666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.632263, 32.758106, 22.623981>,  <28.267591, 32.599705, 22.667839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632263, 32.758106, 22.623981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336102, 0.565169, -0.753405,
		-0.236383, 0.723716, 0.648350,
		0.911679, 0.396004, -0.109646,
		28.905767, 32.876907, 22.591087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178488, 33.361603, 22.668888>,  <28.267591, 32.599705, 22.667839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178488, 33.361603, 22.668888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.513170, 33.259491, 22.475082>,  <28.713980, 33.198223, 22.358799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.513170, 33.259491, 22.475082>,  <28.178488, 33.361603, 22.668888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513170, 33.259491, 22.475082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241302, 0.622354, -0.744613,
		0.491625, 0.739937, 0.459128,
		0.836707, -0.255282, -0.484513,
		28.764183, 33.182907, 22.329729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243172, 34.080505, 22.702341>,  <28.178488, 33.361603, 22.668888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243172, 34.080505, 22.702341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.976393, 34.334969, 22.857510>,  <27.816326, 34.487648, 22.950611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.976393, 34.334969, 22.857510>,  <28.243172, 34.080505, 22.702341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976393, 34.334969, 22.857510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383409, -0.739419, 0.553405,
		0.638890, 0.220360, 0.737063,
		-0.666946, 0.636162, 0.387919,
		27.776308, 34.525818, 22.973885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283117, 34.044106, 23.359287>,  <28.243172, 34.080505, 22.702341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283117, 34.044106, 23.359287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.937555, 34.245163, 23.346535>,  <27.730219, 34.365799, 23.338884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.937555, 34.245163, 23.346535>,  <28.283117, 34.044106, 23.359287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937555, 34.245163, 23.346535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317451, -0.494278, 0.809268,
		0.391020, 0.709249, 0.586574,
		-0.863903, 0.502648, -0.031879,
		27.678385, 34.395958, 23.336971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047606, 34.268276, 24.053045>,  <28.283117, 34.044106, 23.359287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047606, 34.268276, 24.053045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.719561, 34.231068, 23.827209>,  <27.522734, 34.208740, 23.691708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.719561, 34.231068, 23.827209>,  <28.047606, 34.268276, 24.053045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719561, 34.231068, 23.827209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482186, -0.418888, 0.769435,
		-0.308076, 0.903260, 0.298681,
		-0.820113, -0.093025, -0.564589,
		27.473526, 34.203159, 23.657833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592655, 34.595695, 24.514233>,  <28.047606, 34.268276, 24.053045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592655, 34.595695, 24.514233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.365885, 34.409210, 24.242573>,  <27.229822, 34.297321, 24.079576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.365885, 34.409210, 24.242573>,  <27.592655, 34.595695, 24.514233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365885, 34.409210, 24.242573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658207, -0.239371, 0.713768,
		-0.495334, 0.851675, -0.171156,
		-0.566928, -0.466209, -0.679147,
		27.195807, 34.269348, 24.038828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876995, 34.772144, 24.657482>,  <27.592655, 34.595695, 24.514233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876995, 34.772144, 24.657482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.856804, 34.429192, 24.452602>,  <26.844688, 34.223419, 24.329674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.856804, 34.429192, 24.452602>,  <26.876995, 34.772144, 24.657482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856804, 34.429192, 24.452602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602614, -0.382828, 0.700214,
		-0.796435, 0.344004, -0.497346,
		-0.050478, -0.857382, -0.512199,
		26.841660, 34.171978, 24.298943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157528, 34.498127, 24.573732>,  <26.876995, 34.772144, 24.657482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157528, 34.498127, 24.573732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.404808, 34.185204, 24.543209>,  <26.553175, 33.997448, 24.524895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.404808, 34.185204, 24.543209>,  <26.157528, 34.498127, 24.573732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404808, 34.185204, 24.543209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581222, -0.520328, 0.625652,
		-0.529161, -0.342422, -0.776361,
		0.618199, -0.782308, -0.076314,
		26.590267, 33.950512, 24.520315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677263, 33.982887, 24.701366>,  <26.157528, 34.498127, 24.573732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677263, 33.982887, 24.701366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.018311, 33.776016, 24.731220>,  <26.222939, 33.651894, 24.749132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.018311, 33.776016, 24.731220>,  <25.677263, 33.982887, 24.701366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018311, 33.776016, 24.731220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355196, -0.468874, 0.808698,
		-0.383244, -0.716022, -0.583470,
		0.852619, -0.517175, 0.074635,
		26.274096, 33.620865, 24.753611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503767, 33.265251, 24.902943>,  <25.677263, 33.982887, 24.701366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503767, 33.265251, 24.902943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.886328, 33.242535, 25.017532>,  <26.115864, 33.228905, 25.086287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.886328, 33.242535, 25.017532>,  <25.503767, 33.265251, 24.902943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886328, 33.242535, 25.017532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283657, -0.414100, 0.864904,
		0.069508, -0.908458, -0.412157,
		0.956403, -0.056794, 0.286474,
		26.173248, 33.225498, 25.103474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700283, 32.549709, 25.169611>,  <25.503767, 33.265251, 24.902943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700283, 32.549709, 25.169611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.965752, 32.803070, 25.328777>,  <26.125032, 32.955086, 25.424276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.965752, 32.803070, 25.328777>,  <25.700283, 32.549709, 25.169611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965752, 32.803070, 25.328777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014615, -0.520874, 0.853508,
		0.747880, -0.572266, -0.336433,
		0.663673, 0.633405, 0.397915,
		26.164854, 32.993092, 25.448153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304537, 32.151089, 25.470304>,  <25.700283, 32.549709, 25.169611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304537, 32.151089, 25.470304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.300287, 32.508175, 25.650505>,  <26.297737, 32.722427, 25.758625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.300287, 32.508175, 25.650505>,  <26.304537, 32.151089, 25.470304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300287, 32.508175, 25.650505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324153, -0.423121, 0.846105,
		0.945945, 0.155021, -0.284880,
		-0.010625, 0.892713, 0.450499,
		26.297100, 32.775990, 25.785654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858440, 32.161484, 25.813715>,  <26.304537, 32.151089, 25.470304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858440, 32.161484, 25.813715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633221, 32.425777, 26.012272>,  <26.498089, 32.584354, 26.131405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633221, 32.425777, 26.012272>,  <26.858440, 32.161484, 25.813715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633221, 32.425777, 26.012272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197021, -0.476011, 0.857086,
		0.802595, 0.580381, 0.137839,
		-0.563049, 0.660735, 0.496391,
		26.464306, 32.623997, 26.161190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232044, 32.235229, 26.467905>,  <26.858440, 32.161484, 25.813715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232044, 32.235229, 26.467905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.886951, 32.406693, 26.575195>,  <26.679895, 32.509571, 26.639570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.886951, 32.406693, 26.575195>,  <27.232044, 32.235229, 26.467905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886951, 32.406693, 26.575195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148174, -0.292856, 0.944606,
		0.483462, 0.854687, 0.189140,
		-0.862733, 0.428656, 0.268227,
		26.628132, 32.535290, 26.655663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315292, 32.676544, 26.993505>,  <27.232044, 32.235229, 26.467905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315292, 32.676544, 26.993505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.924261, 32.601540, 27.031841>,  <26.689642, 32.556538, 27.054842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.924261, 32.601540, 27.031841>,  <27.315292, 32.676544, 26.993505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924261, 32.601540, 27.031841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125465, -0.153112, 0.980212,
		-0.169124, 0.970256, 0.173204,
		-0.977577, -0.187508, 0.095838,
		26.630989, 32.545288, 27.060593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059916, 33.086388, 27.574795>,  <27.315292, 32.676544, 26.993505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059916, 33.086388, 27.574795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.796530, 32.787903, 27.535606>,  <26.638498, 32.608814, 27.512093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.796530, 32.787903, 27.535606>,  <27.059916, 33.086388, 27.574795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796530, 32.787903, 27.535606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112631, -0.226413, 0.967497,
		-0.744137, 0.626028, 0.233131,
		-0.658464, -0.746208, -0.097972,
		26.598991, 32.564041, 27.506214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653191, 33.254333, 28.132854>,  <27.059916, 33.086388, 27.574795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653191, 33.254333, 28.132854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.598349, 32.871609, 28.030323>,  <26.565443, 32.641972, 27.968803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.598349, 32.871609, 28.030323>,  <26.653191, 33.254333, 28.132854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598349, 32.871609, 28.030323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042325, -0.252877, 0.966572,
		-0.989652, 0.143370, -0.005826,
		-0.137104, -0.956816, -0.256329,
		26.557217, 32.584564, 27.953424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189152, 32.899933, 28.706419>,  <26.653191, 33.254333, 28.132854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189152, 32.899933, 28.706419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.350346, 32.585079, 28.519646>,  <26.447062, 32.396168, 28.407581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.350346, 32.585079, 28.519646>,  <26.189152, 32.899933, 28.706419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350346, 32.585079, 28.519646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083521, -0.476437, 0.875233,
		-0.911387, -0.391706, -0.126255,
		0.402986, -0.787131, -0.466934,
		26.471241, 32.348942, 28.379566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619373, 32.285213, 28.814812>,  <26.189152, 32.899933, 28.706419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619373, 32.285213, 28.814812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.999117, 32.187824, 28.735378>,  <26.226963, 32.129391, 28.687717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.999117, 32.187824, 28.735378>,  <25.619373, 32.285213, 28.814812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999117, 32.187824, 28.735378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070960, -0.449567, 0.890424,
		-0.306071, -0.859424, -0.409524,
		0.949360, -0.243473, -0.198584,
		26.283924, 32.114780, 28.675802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652695, 31.685265, 28.877262>,  <25.619373, 32.285213, 28.814812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652695, 31.685265, 28.877262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.031179, 31.792671, 28.949463>,  <26.258270, 31.857115, 28.992785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.031179, 31.792671, 28.949463>,  <25.652695, 31.685265, 28.877262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031179, 31.792671, 28.949463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032887, -0.475184, 0.879272,
		0.321870, -0.837914, -0.440794,
		0.946213, 0.268515, 0.180504,
		26.315042, 31.873226, 29.003614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.060902, 30.950224, 29.144705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285057, 31.259434, 29.263630>,  <26.419550, 31.444960, 29.334986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285057, 31.259434, 29.263630>,  <26.060902, 30.950224, 29.144705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285057, 31.259434, 29.263630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252933, -0.501556, 0.827324,
		0.788664, -0.388422, -0.476590,
		0.560388, 0.773026, 0.297315,
		26.453173, 31.491343, 29.352825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651295, 30.657196, 29.370638>,  <26.060902, 30.950224, 29.144705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651295, 30.657196, 29.370638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688000, 31.029678, 29.511738>,  <26.710022, 31.253168, 29.596397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688000, 31.029678, 29.511738>,  <26.651295, 30.657196, 29.370638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688000, 31.029678, 29.511738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438693, -0.355821, 0.825191,
		0.893940, 0.079027, -0.441165,
		0.091763, 0.931207, 0.352751,
		26.715528, 31.309040, 29.617563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190804, 30.598930, 29.735075>,  <26.651295, 30.657196, 29.370638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190804, 30.598930, 29.735075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.047640, 30.940365, 29.886490>,  <26.961742, 31.145226, 29.977339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.047640, 30.940365, 29.886490>,  <27.190804, 30.598930, 29.735075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047640, 30.940365, 29.886490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290740, -0.283366, 0.913879,
		0.887339, 0.437141, -0.146752,
		-0.357910, 0.853587, 0.378536,
		26.940268, 31.196442, 30.000051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767103, 30.838839, 30.095596>,  <27.190804, 30.598930, 29.735075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767103, 30.838839, 30.095596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.431408, 30.999470, 30.242245>,  <27.229990, 31.095848, 30.330235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.431408, 30.999470, 30.242245>,  <27.767103, 30.838839, 30.095596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431408, 30.999470, 30.242245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202337, -0.395189, 0.896039,
		0.504715, 0.826173, 0.250404,
		-0.839239, 0.401578, 0.366623,
		27.179636, 31.119944, 30.352232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942156, 31.111629, 30.782352>,  <27.767103, 30.838839, 30.095596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942156, 31.111629, 30.782352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.543785, 31.079433, 30.798607>,  <27.304762, 31.060116, 30.808359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.543785, 31.079433, 30.798607>,  <27.942156, 31.111629, 30.782352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543785, 31.079433, 30.798607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071910, -0.437167, 0.896501,
		-0.054395, 0.895772, 0.441174,
		-0.995927, -0.080490, 0.040635,
		27.245007, 31.055286, 30.810797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688116, 31.462862, 31.375366>,  <27.942156, 31.111629, 30.782352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688116, 31.462862, 31.375366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.406853, 31.199745, 31.267380>,  <27.238094, 31.041876, 31.202587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.406853, 31.199745, 31.267380>,  <27.688116, 31.462862, 31.375366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406853, 31.199745, 31.267380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112722, -0.271754, 0.955742,
		-0.702042, 0.702468, 0.116939,
		-0.703157, -0.657790, -0.269966,
		27.195906, 31.002409, 31.186390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178198, 31.529415, 31.894638>,  <27.688116, 31.462862, 31.375366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178198, 31.529415, 31.894638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.106352, 31.173363, 31.727112>,  <27.063244, 30.959732, 31.626596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.106352, 31.173363, 31.727112>,  <27.178198, 31.529415, 31.894638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106352, 31.173363, 31.727112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276900, -0.362778, 0.889786,
		-0.943963, 0.275787, -0.181318,
		-0.179613, -0.890131, -0.418814,
		27.052467, 30.906322, 31.601467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475693, 31.276619, 32.081676>,  <27.178198, 31.529415, 31.894638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475693, 31.276619, 32.081676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.679026, 30.946674, 31.982719>,  <26.801025, 30.748709, 31.923346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.679026, 30.946674, 31.982719>,  <26.475693, 31.276619, 32.081676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679026, 30.946674, 31.982719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256391, -0.419215, 0.870932,
		-0.822109, -0.379293, -0.424587,
		0.508332, -0.824861, -0.247393,
		26.831526, 30.699217, 31.908501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973129, 30.682344, 32.140533>,  <26.475693, 31.276619, 32.081676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973129, 30.682344, 32.140533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.348349, 30.549049, 32.178513>,  <26.573481, 30.469072, 32.201302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.348349, 30.549049, 32.178513>,  <25.973129, 30.682344, 32.140533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348349, 30.549049, 32.178513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267154, -0.521039, 0.810646,
		-0.220664, -0.785793, -0.577786,
		0.938049, -0.333238, 0.094953,
		26.629763, 30.449078, 32.206997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932934, 30.077303, 32.354176>,  <25.973129, 30.682344, 32.140533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932934, 30.077303, 32.354176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.312109, 30.143513, 32.463001>,  <26.539614, 30.183239, 32.528297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.312109, 30.143513, 32.463001>,  <25.932934, 30.077303, 32.354176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312109, 30.143513, 32.463001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112739, -0.624566, 0.772792,
		0.297837, -0.763230, -0.573387,
		0.947936, 0.165523, 0.272065,
		26.596489, 30.193171, 32.544621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311310, 29.537382, 32.194008>,  <25.932934, 30.077303, 32.354176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311310, 29.537382, 32.194008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.515888, 29.702118, 32.495686>,  <26.638636, 29.800959, 32.676693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.515888, 29.702118, 32.495686>,  <26.311310, 29.537382, 32.194008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515888, 29.702118, 32.495686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096012, -0.844788, 0.526417,
		0.853936, -0.341645, -0.392521,
		0.511445, 0.411840, 0.754196,
		26.669321, 29.825670, 32.721943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658632, 28.951784, 32.546906>,  <26.311310, 29.537382, 32.194008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658632, 28.951784, 32.546906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.665579, 29.249660, 32.813778>,  <26.669746, 29.428387, 32.973904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.665579, 29.249660, 32.813778>,  <26.658632, 28.951784, 32.546906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665579, 29.249660, 32.813778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119746, -0.664030, 0.738055,
		0.992653, 0.067075, -0.100706,
		0.017366, 0.744691, 0.667183,
		26.670790, 29.473068, 33.013931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157490, 28.741899, 32.993351>,  <26.658632, 28.951784, 32.546906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157490, 28.741899, 32.993351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935921, 29.002403, 33.200825>,  <26.802980, 29.158705, 33.325310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935921, 29.002403, 33.200825>,  <27.157490, 28.741899, 32.993351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935921, 29.002403, 33.200825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071353, -0.583565, 0.808926,
		0.829506, 0.485091, 0.276779,
		-0.553921, 0.651259, 0.518683,
		26.769745, 29.197781, 33.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490601, 28.865334, 33.518597>,  <27.157490, 28.741899, 32.993351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490601, 28.865334, 33.518597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.127316, 28.975574, 33.644577>,  <26.909344, 29.041719, 33.720165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.127316, 28.975574, 33.644577>,  <27.490601, 28.865334, 33.518597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127316, 28.975574, 33.644577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156953, -0.473323, 0.866794,
		0.387962, 0.836666, 0.386622,
		-0.908213, 0.275601, 0.314948,
		26.854851, 29.058254, 33.739063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577551, 28.831978, 34.233589>,  <27.490601, 28.865334, 33.518597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577551, 28.831978, 34.233589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181601, 28.842476, 34.177795>,  <26.944031, 28.848776, 34.144318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181601, 28.842476, 34.177795>,  <27.577551, 28.831978, 34.233589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181601, 28.842476, 34.177795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135587, -0.465498, 0.874602,
		-0.041976, 0.884660, 0.464344,
		-0.989876, 0.026247, -0.139488,
		26.884638, 28.850349, 34.135948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237465, 29.258781, 34.801701>,  <27.577551, 28.831978, 34.233589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237465, 29.258781, 34.801701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.960184, 29.010643, 34.654926>,  <26.793816, 28.861759, 34.566860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.960184, 29.010643, 34.654926>,  <27.237465, 29.258781, 34.801701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960184, 29.010643, 34.654926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188723, -0.335116, 0.923083,
		-0.695598, 0.709130, 0.115228,
		-0.693200, -0.620348, -0.366935,
		26.752224, 28.824539, 34.544846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678320, 29.207043, 35.260406>,  <27.237465, 29.258781, 34.801701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678320, 29.207043, 35.260406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.604418, 28.876884, 35.047020>,  <26.560078, 28.678789, 34.918987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.604418, 28.876884, 35.047020>,  <26.678320, 29.207043, 35.260406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604418, 28.876884, 35.047020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368003, -0.445218, 0.816306,
		-0.911285, 0.347132, -0.221493,
		-0.184753, -0.825397, -0.533466,
		26.548992, 28.629265, 34.886982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059771, 28.971704, 35.499599>,  <26.678320, 29.207043, 35.260406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059771, 28.971704, 35.499599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.211790, 28.637989, 35.339836>,  <26.303001, 28.437759, 35.243980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.211790, 28.637989, 35.339836>,  <26.059771, 28.971704, 35.499599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211790, 28.637989, 35.339836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023407, -0.440340, 0.897526,
		-0.924671, -0.331754, -0.186879,
		0.380048, -0.834291, -0.399404,
		26.325804, 28.387703, 35.220016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686298, 28.477036, 35.834236>,  <26.059771, 28.971704, 35.499599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686298, 28.477036, 35.834236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.004103, 28.287514, 35.682308>,  <26.194786, 28.173801, 35.591152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.004103, 28.287514, 35.682308>,  <25.686298, 28.477036, 35.834236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004103, 28.287514, 35.682308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086098, -0.531262, 0.842822,
		-0.601116, -0.702332, -0.381299,
		0.794510, -0.473805, -0.379819,
		26.242456, 28.145372, 35.568363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523695, 27.743656, 35.869728>,  <25.686298, 28.477036, 35.834236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523695, 27.743656, 35.869728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.920992, 27.789391, 35.861736>,  <26.159370, 27.816832, 35.856941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.920992, 27.789391, 35.861736>,  <25.523695, 27.743656, 35.869728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920992, 27.789391, 35.861736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078776, -0.537588, 0.839520,
		0.085246, -0.835420, -0.542961,
		0.993241, 0.114339, -0.019984,
		26.218964, 27.823692, 35.855740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864155, 27.088263, 36.121967>,  <25.523695, 27.743656, 35.869728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864155, 27.088263, 36.121967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.155539, 27.357342, 36.173851>,  <26.330368, 27.518789, 36.204979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.155539, 27.357342, 36.173851>,  <25.864155, 27.088263, 36.121967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155539, 27.357342, 36.173851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273722, -0.459345, 0.845032,
		0.628032, -0.580067, -0.518747,
		0.728459, 0.672699, 0.129706,
		26.374077, 27.559151, 36.212765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440477, 26.704641, 36.270546>,  <25.864155, 27.088263, 36.121967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440477, 26.704641, 36.270546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.534737, 27.070591, 36.401680>,  <26.591293, 27.290161, 36.480358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.534737, 27.070591, 36.401680>,  <26.440477, 26.704641, 36.270546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534737, 27.070591, 36.401680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400207, -0.398755, 0.825124,
		0.885609, -0.063240, -0.460106,
		0.235650, 0.914875, 0.327832,
		26.605433, 27.345053, 36.500031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948860, 26.555878, 36.660107>,  <26.440477, 26.704641, 36.270546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948860, 26.555878, 36.660107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.852726, 26.913708, 36.810825>,  <26.795046, 27.128407, 36.901257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.852726, 26.913708, 36.810825>,  <26.948860, 26.555878, 36.660107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852726, 26.913708, 36.810825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111146, -0.360259, 0.926207,
		0.964306, 0.264481, -0.012845,
		-0.240336, 0.894575, 0.376795,
		26.780624, 27.182079, 36.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565220, 26.822557, 37.030231>,  <26.948860, 26.555878, 36.660107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565220, 26.822557, 37.030231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.271656, 27.036270, 37.198002>,  <27.095518, 27.164497, 37.298664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.271656, 27.036270, 37.198002>,  <27.565220, 26.822557, 37.030231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271656, 27.036270, 37.198002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349899, -0.231876, 0.907636,
		0.582189, 0.812881, -0.016769,
		-0.733912, 0.534283, 0.419422,
		27.051483, 27.196556, 37.323830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348234, 26.826357, 37.043568>,  <27.565220, 26.822557, 37.030231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348234, 26.826357, 37.043568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715998, 26.759533, 37.185989>,  <28.936657, 26.719439, 37.271442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715998, 26.759533, 37.185989>,  <28.348234, 26.826357, 37.043568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715998, 26.759533, 37.185989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393021, 0.356156, -0.847754,
		0.014815, 0.919371, 0.393112,
		0.919410, -0.167061, 0.356056,
		28.991821, 26.709415, 37.292805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718122, 27.432140, 37.162003>,  <28.348234, 26.826357, 37.043568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718122, 27.432140, 37.162003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.990129, 27.154480, 37.067577>,  <29.153334, 26.987883, 37.010921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.990129, 27.154480, 37.067577>,  <28.718122, 27.432140, 37.162003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990129, 27.154480, 37.067577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344116, 0.586465, -0.733241,
		0.647424, 0.417385, 0.637677,
		0.680019, -0.694153, -0.236063,
		29.194136, 26.946234, 36.996758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402340, 27.751408, 36.991943>,  <28.718122, 27.432140, 37.162003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402340, 27.751408, 36.991943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413645, 27.400421, 36.800419>,  <29.420427, 27.189829, 36.685505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413645, 27.400421, 36.800419>,  <29.402340, 27.751408, 36.991943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413645, 27.400421, 36.800419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212066, 0.473360, -0.854961,
		0.976847, -0.077378, 0.199457,
		0.028260, -0.877464, -0.478809,
		29.422123, 27.137182, 36.656776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080469, 27.747068, 36.622837>,  <29.402340, 27.751408, 36.991943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080469, 27.747068, 36.622837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.828972, 27.488228, 36.450356>,  <29.678074, 27.332924, 36.346867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.828972, 27.488228, 36.450356>,  <30.080469, 27.747068, 36.622837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828972, 27.488228, 36.450356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102730, 0.480543, -0.870934,
		0.770796, -0.591893, -0.235661,
		-0.628745, -0.647103, -0.431206,
		29.640348, 27.294096, 36.320995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472570, 27.562088, 35.899853>,  <30.080469, 27.747068, 36.622837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472570, 27.562088, 35.899853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085964, 27.462372, 35.875511>,  <29.854000, 27.402542, 35.860909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085964, 27.462372, 35.875511>,  <30.472570, 27.562088, 35.899853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085964, 27.462372, 35.875511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002220, 0.245246, -0.969458,
		0.256614, -0.936857, -0.237587,
		-0.966511, -0.249304, -0.060854,
		29.796009, 27.387585, 35.857258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399988, 27.430275, 35.179943>,  <30.472570, 27.562088, 35.899853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399988, 27.430275, 35.179943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019253, 27.453655, 35.300331>,  <29.790812, 27.467684, 35.372566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019253, 27.453655, 35.300331>,  <30.399988, 27.430275, 35.179943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019253, 27.453655, 35.300331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274491, 0.274855, -0.921471,
		-0.136586, -0.959707, -0.245574,
		-0.951840, 0.058453, 0.300972,
		29.733700, 27.471191, 35.390621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979286, 27.006355, 34.644894>,  <30.399988, 27.430275, 35.179943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979286, 27.006355, 34.644894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729580, 27.265217, 34.819927>,  <29.579756, 27.420534, 34.924950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729580, 27.265217, 34.819927>,  <29.979286, 27.006355, 34.644894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729580, 27.265217, 34.819927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471680, 0.134276, -0.871486,
		-0.622743, -0.750441, 0.221425,
		-0.624267, 0.647153, 0.437588,
		29.542299, 27.459362, 34.951202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341351, 26.881578, 34.327412>,  <29.979286, 27.006355, 34.644894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341351, 26.881578, 34.327412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307251, 27.243759, 34.493732>,  <29.286791, 27.461067, 34.593525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307251, 27.243759, 34.493732>,  <29.341351, 26.881578, 34.327412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307251, 27.243759, 34.493732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333310, 0.367361, -0.868303,
		-0.938955, -0.212613, 0.270479,
		-0.085249, 0.905451, 0.415801,
		29.281675, 27.515394, 34.618473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795313, 27.172035, 33.994572>,  <29.341351, 26.881578, 34.327412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795313, 27.172035, 33.994572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.997528, 27.479877, 34.150589>,  <29.118858, 27.664583, 34.244198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.997528, 27.479877, 34.150589>,  <28.795313, 27.172035, 33.994572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997528, 27.479877, 34.150589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204452, 0.546046, -0.812425,
		-0.838230, 0.330967, 0.433395,
		0.505540, 0.769607, 0.390045,
		29.149191, 27.710760, 34.267601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350538, 27.689932, 33.932709>,  <28.795313, 27.172035, 33.994572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350538, 27.689932, 33.932709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696325, 27.890255, 33.950092>,  <28.903797, 28.010448, 33.960522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696325, 27.890255, 33.950092>,  <28.350538, 27.689932, 33.932709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696325, 27.890255, 33.950092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240630, 0.488161, -0.838925,
		-0.441357, 0.714765, 0.542508,
		0.864466, 0.500810, 0.043459,
		28.955666, 28.040499, 33.963131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163589, 28.372259, 33.821705>,  <28.350538, 27.689932, 33.932709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163589, 28.372259, 33.821705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.555677, 28.361591, 33.743263>,  <28.790930, 28.355190, 33.696198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.555677, 28.361591, 33.743263>,  <28.163589, 28.372259, 33.821705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555677, 28.361591, 33.743263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146561, 0.568050, -0.809839,
		0.132994, 0.822561, 0.552906,
		0.980220, -0.026669, -0.196103,
		28.849743, 28.353590, 33.684433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358885, 29.103518, 33.641945>,  <28.163589, 28.372259, 33.821705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358885, 29.103518, 33.641945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.655430, 28.880230, 33.492935>,  <28.833357, 28.746258, 33.403530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.655430, 28.880230, 33.492935>,  <28.358885, 29.103518, 33.641945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655430, 28.880230, 33.492935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037775, 0.588920, -0.807308,
		0.670039, 0.584437, 0.457691,
		0.741364, -0.558217, -0.372522,
		28.877840, 28.712765, 33.381180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794899, 29.556969, 33.384003>,  <28.358885, 29.103518, 33.641945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794899, 29.556969, 33.384003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902954, 29.229214, 33.181763>,  <28.967787, 29.032560, 33.060417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902954, 29.229214, 33.181763>,  <28.794899, 29.556969, 33.384003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902954, 29.229214, 33.181763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116631, 0.549106, -0.827575,
		0.955732, 0.164590, 0.243900,
		0.270138, -0.819386, -0.505601,
		28.983995, 28.983398, 33.030083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461660, 29.716871, 32.977161>,  <28.794899, 29.556969, 33.384003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461660, 29.716871, 32.977161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296152, 29.403347, 32.791935>,  <29.196848, 29.215233, 32.680798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296152, 29.403347, 32.791935>,  <29.461660, 29.716871, 32.977161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296152, 29.403347, 32.791935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000264, 0.508758, -0.860909,
		0.910382, -0.356096, -0.210716,
		-0.413769, -0.783812, -0.463070,
		29.172022, 29.168203, 32.653015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904522, 29.527651, 32.402443>,  <29.461660, 29.716871, 32.977161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904522, 29.527651, 32.402443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.547062, 29.364010, 32.328659>,  <29.332586, 29.265825, 32.284389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.547062, 29.364010, 32.328659>,  <29.904522, 29.527651, 32.402443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547062, 29.364010, 32.328659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005466, 0.420938, -0.907073,
		0.448728, -0.809599, -0.378408,
		-0.893652, -0.409097, -0.184461,
		29.278967, 29.241280, 32.273319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011936, 29.211004, 31.750271>,  <29.904522, 29.527651, 32.402443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011936, 29.211004, 31.750271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.613729, 29.233387, 31.780762>,  <29.374805, 29.246817, 31.799057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.613729, 29.233387, 31.780762>,  <30.011936, 29.211004, 31.750271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613729, 29.233387, 31.780762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066156, 0.163872, -0.984261,
		-0.067571, -0.984893, -0.159436,
		-0.995519, 0.055960, 0.076229,
		29.315073, 29.250175, 31.803631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846344, 28.725838, 31.257547>,  <30.011936, 29.211004, 31.750271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846344, 28.725838, 31.257547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536903, 28.976555, 31.294788>,  <29.351238, 29.126986, 31.317133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536903, 28.976555, 31.294788>,  <29.846344, 28.725838, 31.257547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536903, 28.976555, 31.294788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025896, 0.115532, -0.992966,
		-0.633141, -0.770572, -0.073145,
		-0.773603, 0.626794, 0.093103,
		29.304823, 29.164593, 31.322720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415630, 28.574993, 30.647762>,  <29.846344, 28.725838, 31.257547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415630, 28.574993, 30.647762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296446, 28.936947, 30.769356>,  <29.224936, 29.154119, 30.842312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296446, 28.936947, 30.769356>,  <29.415630, 28.574993, 30.647762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296446, 28.936947, 30.769356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073603, 0.339279, -0.937802,
		-0.951736, -0.257056, -0.167694,
		-0.297963, 0.904882, 0.303984,
		29.207056, 29.208412, 30.860550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962833, 28.764286, 30.096428>,  <29.415630, 28.574993, 30.647762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962833, 28.764286, 30.096428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.092136, 29.094913, 30.280727>,  <29.169718, 29.293289, 30.391308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.092136, 29.094913, 30.280727>,  <28.962833, 28.764286, 30.096428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092136, 29.094913, 30.280727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080120, 0.509049, -0.857000,
		-0.942913, 0.240116, 0.230778,
		0.323257, 0.826567, 0.460751,
		29.189114, 29.342884, 30.418953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585749, 29.298998, 29.737841>,  <28.962833, 28.764286, 30.096428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585749, 29.298998, 29.737841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902304, 29.487793, 29.893242>,  <29.092237, 29.601070, 29.986483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902304, 29.487793, 29.893242>,  <28.585749, 29.298998, 29.737841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902304, 29.487793, 29.893242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028210, 0.663038, -0.748054,
		-0.610664, 0.581040, 0.538035,
		0.791387, 0.471988, 0.388502,
		29.139719, 29.629389, 30.009792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.269581, 42.661045, 18.209820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625431, 42.750423, 18.369137>,  <25.838942, 42.804050, 18.464727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625431, 42.750423, 18.369137>,  <25.269581, 42.661045, 18.209820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625431, 42.750423, 18.369137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201147, -0.591264, 0.780991,
		0.410008, -0.774905, -0.481057,
		0.889625, 0.223449, 0.398293,
		25.892319, 42.817459, 18.488625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621408, 41.991695, 18.383173>,  <25.269581, 42.661045, 18.209820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621408, 41.991695, 18.383173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.779156, 42.272240, 18.620686>,  <25.873804, 42.440567, 18.763193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.779156, 42.272240, 18.620686>,  <25.621408, 41.991695, 18.383173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779156, 42.272240, 18.620686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187086, -0.571339, 0.799106,
		0.899708, -0.426228, -0.094102,
		0.394366, 0.701357, 0.593780,
		25.897465, 42.482647, 18.798819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938168, 41.612946, 18.838579>,  <25.621408, 41.991695, 18.383173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938168, 41.612946, 18.838579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.926188, 41.972679, 19.013073>,  <25.918999, 42.188519, 19.117769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.926188, 41.972679, 19.013073>,  <25.938168, 41.612946, 18.838579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926188, 41.972679, 19.013073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279245, -0.426584, 0.860261,
		0.959753, -0.096051, 0.263912,
		-0.029952, 0.899334, 0.436237,
		25.917202, 42.242477, 19.143944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410692, 41.647675, 19.417736>,  <25.938168, 41.612946, 18.838579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410692, 41.647675, 19.417736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.123163, 41.915390, 19.492947>,  <25.950645, 42.076019, 19.538073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.123163, 41.915390, 19.492947>,  <26.410692, 41.647675, 19.417736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123163, 41.915390, 19.492947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111030, -0.377518, 0.919322,
		0.686271, 0.639952, 0.345678,
		-0.718821, 0.669285, 0.188026,
		25.907516, 42.116177, 19.549355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564806, 41.888165, 20.163649>,  <26.410692, 41.647675, 19.417736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564806, 41.888165, 20.163649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.188383, 42.009850, 20.104496>,  <25.962530, 42.082859, 20.069004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.188383, 42.009850, 20.104496>,  <26.564806, 41.888165, 20.163649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188383, 42.009850, 20.104496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233794, -0.269033, 0.934324,
		0.244445, 0.913826, 0.324297,
		-0.941056, 0.304210, -0.147883,
		25.906067, 42.101112, 20.060131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361444, 42.178440, 20.764734>,  <26.564806, 41.888165, 20.163649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361444, 42.178440, 20.764734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.005896, 42.102009, 20.598171>,  <25.792566, 42.056149, 20.498234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.005896, 42.102009, 20.598171>,  <26.361444, 42.178440, 20.764734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005896, 42.102009, 20.598171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355515, -0.285631, 0.889957,
		-0.288991, 0.939097, 0.185958,
		-0.888872, -0.191078, -0.416408,
		25.739235, 42.044685, 20.473249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857367, 42.456974, 21.184774>,  <26.361444, 42.178440, 20.764734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857367, 42.456974, 21.184774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.662008, 42.198441, 20.950264>,  <25.544794, 42.043320, 20.809559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.662008, 42.198441, 20.950264>,  <25.857367, 42.456974, 21.184774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662008, 42.198441, 20.950264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580788, -0.260664, 0.771193,
		-0.651272, 0.717149, -0.248078,
		-0.488395, -0.646337, -0.586275,
		25.515490, 42.004539, 20.774382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198853, 42.409744, 21.560738>,  <25.857367, 42.456974, 21.184774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198853, 42.409744, 21.560738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.215019, 42.077766, 21.338184>,  <25.224718, 41.878578, 21.204653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.215019, 42.077766, 21.338184>,  <25.198853, 42.409744, 21.560738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215019, 42.077766, 21.338184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560273, -0.479882, 0.675135,
		-0.827321, 0.284440, -0.484390,
		0.040414, -0.829944, -0.556381,
		25.227144, 41.828785, 21.171270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505434, 42.110889, 21.636580>,  <25.198853, 42.409744, 21.560738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505434, 42.110889, 21.636580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.760136, 41.820755, 21.531937>,  <24.912956, 41.646675, 21.469151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.760136, 41.820755, 21.531937>,  <24.505434, 42.110889, 21.636580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760136, 41.820755, 21.531937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535161, -0.659982, 0.527282,
		-0.555108, -0.195749, -0.808416,
		0.636755, -0.725332, -0.261605,
		24.951162, 41.603157, 21.453455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.101009, 41.519032, 21.407377>,  <24.505434, 42.110889, 21.636580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.101009, 41.519032, 21.407377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.457232, 41.379757, 21.524460>,  <24.670965, 41.296192, 21.594709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.457232, 41.379757, 21.524460>,  <24.101009, 41.519032, 21.407377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457232, 41.379757, 21.524460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450134, -0.767255, 0.456836,
		0.065513, -0.538594, -0.840015,
		0.890555, -0.348190, 0.292704,
		24.724398, 41.275299, 21.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.058643, 40.763767, 21.361198>,  <24.101009, 41.519032, 21.407377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.058643, 40.763767, 21.361198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.372971, 40.823421, 21.601280>,  <24.561567, 40.859215, 21.745329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.372971, 40.823421, 21.601280>,  <24.058643, 40.763767, 21.361198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372971, 40.823421, 21.601280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307629, -0.747650, 0.588543,
		0.536517, -0.647129, -0.541639,
		0.785820, 0.149140, 0.600203,
		24.608717, 40.868164, 21.781342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274813, 40.082462, 21.512638>,  <24.058643, 40.763767, 21.361198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274813, 40.082462, 21.512638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.437319, 40.280773, 21.819664>,  <24.534822, 40.399761, 22.003880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.437319, 40.280773, 21.819664>,  <24.274813, 40.082462, 21.512638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437319, 40.280773, 21.819664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314734, -0.712684, 0.626917,
		0.857842, -0.496272, -0.133499,
		0.406264, 0.495778, 0.767563,
		24.559198, 40.429508, 22.049932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608620, 39.596535, 21.811838>,  <24.274813, 40.082462, 21.512638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608620, 39.596535, 21.811838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.550920, 39.892151, 22.075054>,  <24.516300, 40.069519, 22.232983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.550920, 39.892151, 22.075054>,  <24.608620, 39.596535, 21.811838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550920, 39.892151, 22.075054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239925, -0.671271, 0.701307,
		0.960015, -0.056718, 0.274144,
		-0.144248, 0.739039, 0.658038,
		24.507647, 40.113861, 22.272465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851927, 39.411774, 22.411013>,  <24.608620, 39.596535, 21.811838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851927, 39.411774, 22.411013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.605755, 39.698822, 22.541409>,  <24.458052, 39.871052, 22.619646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.605755, 39.698822, 22.541409>,  <24.851927, 39.411774, 22.411013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605755, 39.698822, 22.541409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415689, -0.646906, 0.639309,
		0.669665, 0.257939, 0.696431,
		-0.615428, 0.717622, 0.325988,
		24.421127, 39.914108, 22.639204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886549, 39.293419, 23.162254>,  <24.851927, 39.411774, 22.411013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886549, 39.293419, 23.162254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.556236, 39.491322, 23.053959>,  <24.358049, 39.610062, 22.988981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.556236, 39.491322, 23.053959>,  <24.886549, 39.293419, 23.162254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.556236, 39.491322, 23.053959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549366, -0.597031, 0.584594,
		0.127595, 0.631481, 0.764821,
		-0.825782, 0.494758, -0.270736,
		24.308502, 39.639748, 22.972738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426622, 39.199402, 23.713877>,  <24.886549, 39.293419, 23.162254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426622, 39.199402, 23.713877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.193426, 39.300323, 23.404953>,  <24.053509, 39.360878, 23.219599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.193426, 39.300323, 23.404953>,  <24.426622, 39.199402, 23.713877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.193426, 39.300323, 23.404953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682526, -0.667767, 0.297063,
		-0.440770, 0.700306, 0.561510,
		-0.582992, 0.252309, -0.772308,
		24.018528, 39.376015, 23.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.770555, 39.348312, 24.046505>,  <24.426622, 39.199402, 23.713877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.770555, 39.348312, 24.046505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.695215, 39.280571, 23.659550>,  <23.650011, 39.239925, 23.427376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.695215, 39.280571, 23.659550>,  <23.770555, 39.348312, 24.046505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.695215, 39.280571, 23.659550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626905, -0.737500, 0.251167,
		-0.755986, 0.653768, 0.032738,
		-0.188349, -0.169355, -0.967390,
		23.638710, 39.229763, 23.369333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102613, 39.253521, 23.984955>,  <23.770555, 39.348312, 24.046505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102613, 39.253521, 23.984955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216461, 39.066586, 23.650150>,  <23.284769, 38.954426, 23.449268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216461, 39.066586, 23.650150>,  <23.102613, 39.253521, 23.984955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216461, 39.066586, 23.650150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495278, -0.819252, 0.289010,
		-0.820798, 0.332313, -0.464606,
		0.284587, -0.467328, -0.837027,
		23.301847, 38.926384, 23.399048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479351, 38.946369, 23.727871>,  <23.102613, 39.253521, 23.984955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479351, 38.946369, 23.727871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767973, 38.722729, 23.564526>,  <22.941147, 38.588543, 23.466518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767973, 38.722729, 23.564526>,  <22.479351, 38.946369, 23.727871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767973, 38.722729, 23.564526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454056, -0.827397, 0.330527,
		-0.522677, -0.053074, -0.850877,
		0.721555, -0.559105, -0.408363,
		22.984440, 38.554996, 23.442017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.151377, 38.312801, 23.557423>,  <22.479351, 38.946369, 23.727871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.151377, 38.312801, 23.557423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.535795, 38.202351, 23.552662>,  <22.766447, 38.136078, 23.549805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.535795, 38.202351, 23.552662>,  <22.151377, 38.312801, 23.557423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.535795, 38.202351, 23.552662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255429, -0.903800, 0.343368,
		-0.105571, -0.326952, -0.939126,
		0.961047, -0.276130, -0.011902,
		22.824110, 38.119511, 23.549091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.181225, 37.700531, 23.242735>,  <22.151377, 38.312801, 23.557423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.181225, 37.700531, 23.242735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.511551, 37.722183, 23.467270>,  <22.709747, 37.735176, 23.601990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.511551, 37.722183, 23.467270>,  <22.181225, 37.700531, 23.242735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511551, 37.722183, 23.467270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275994, -0.829236, 0.485999,
		0.491788, -0.556271, -0.669856,
		0.825816, 0.054132, 0.561336,
		22.759296, 37.738422, 23.635672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536915, 37.266361, 23.406532>,  <22.181225, 37.700531, 23.242735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536915, 37.266361, 23.406532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.242693, 37.515446, 23.513264>,  <21.066160, 37.664894, 23.577303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.242693, 37.515446, 23.513264>,  <21.536915, 37.266361, 23.406532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242693, 37.515446, 23.513264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005244, 0.399085, -0.916899,
		-0.677448, -0.673028, -0.296813,
		-0.735552, 0.622707, 0.266830,
		21.022028, 37.702259, 23.593313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084587, 37.308392, 22.777115>,  <21.536915, 37.266361, 23.406532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084587, 37.308392, 22.777115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.964235, 37.631237, 22.980309>,  <20.892025, 37.824944, 23.102224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.964235, 37.631237, 22.980309>,  <21.084587, 37.308392, 22.777115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.964235, 37.631237, 22.980309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068486, 0.549576, -0.832632,
		-0.951200, -0.215732, -0.220632,
		-0.300879, 0.807110, 0.507982,
		20.873972, 37.873371, 23.132704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548664, 37.602291, 22.341074>,  <21.084587, 37.308392, 22.777115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548664, 37.602291, 22.341074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.672615, 37.890396, 22.589333>,  <20.746984, 38.063259, 22.738289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.672615, 37.890396, 22.589333>,  <20.548664, 37.602291, 22.341074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.672615, 37.890396, 22.589333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105148, 0.674737, -0.730530,
		-0.944945, 0.161113, 0.284818,
		0.309875, 0.720259, 0.620648,
		20.765577, 38.106472, 22.775528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148281, 38.319965, 22.212687>,  <20.548664, 37.602291, 22.341074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148281, 38.319965, 22.212687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.481340, 38.419796, 22.410435>,  <20.681177, 38.479694, 22.529083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.481340, 38.419796, 22.410435>,  <20.148281, 38.319965, 22.212687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.481340, 38.419796, 22.410435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228056, 0.658957, -0.716774,
		-0.504662, 0.709567, 0.491763,
		0.832650, 0.249579, 0.494372,
		20.731136, 38.494671, 22.558746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233870, 39.065830, 22.140383>,  <20.148281, 38.319965, 22.212687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233870, 39.065830, 22.140383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.593237, 38.909901, 22.221256>,  <20.808857, 38.816341, 22.269779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.593237, 38.909901, 22.221256>,  <20.233870, 39.065830, 22.140383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593237, 38.909901, 22.221256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428044, 0.674552, -0.601463,
		0.098084, 0.626909, 0.772893,
		0.898420, -0.389826, 0.202182,
		20.862762, 38.792953, 22.281910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.628008, 39.639893, 21.967855>,  <20.233870, 39.065830, 22.140383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.628008, 39.639893, 21.967855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.878977, 39.328796, 21.983131>,  <21.029558, 39.142139, 21.992296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.878977, 39.328796, 21.983131>,  <20.628008, 39.639893, 21.967855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878977, 39.328796, 21.983131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580197, 0.434221, -0.689074,
		0.519341, 0.454495, 0.723684,
		0.627420, -0.777744, 0.038188,
		21.067204, 39.095474, 21.994587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283508, 39.893005, 22.005917>,  <20.628008, 39.639893, 21.967855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283508, 39.893005, 22.005917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.367647, 39.521538, 21.883720>,  <21.418131, 39.298656, 21.810402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.367647, 39.521538, 21.883720>,  <21.283508, 39.893005, 22.005917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367647, 39.521538, 21.883720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358778, 0.364008, -0.859522,
		0.909414, 0.071193, 0.409754,
		0.210345, -0.928671, -0.305491,
		21.430750, 39.242935, 21.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869982, 39.943802, 21.649662>,  <21.283508, 39.893005, 22.005917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869982, 39.943802, 21.649662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.719143, 39.601925, 21.506950>,  <21.628639, 39.396797, 21.421324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.719143, 39.601925, 21.506950>,  <21.869982, 39.943802, 21.649662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719143, 39.601925, 21.506950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285286, 0.259296, -0.922701,
		0.881140, -0.449734, 0.146053,
		-0.377099, -0.854696, -0.356780,
		21.606012, 39.345516, 21.399916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.335186, 39.804771, 21.150959>,  <21.869982, 39.943802, 21.649662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.335186, 39.804771, 21.150959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.034477, 39.567345, 21.036053>,  <21.854052, 39.424889, 20.967108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.034477, 39.567345, 21.036053>,  <22.335186, 39.804771, 21.150959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.034477, 39.567345, 21.036053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300873, 0.078898, -0.950395,
		0.586785, -0.800910, 0.119274,
		-0.751771, -0.593564, -0.287268,
		21.808947, 39.389275, 20.949873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.556746, 39.154568, 20.792816>,  <22.335186, 39.804771, 21.150959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.556746, 39.154568, 20.792816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186932, 39.231926, 20.661465>,  <21.965044, 39.278343, 20.582653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186932, 39.231926, 20.661465>,  <22.556746, 39.154568, 20.792816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186932, 39.231926, 20.661465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280144, -0.239292, -0.929655,
		-0.258377, -0.951491, 0.167052,
		-0.924532, 0.193403, -0.328382,
		21.909571, 39.289944, 20.562950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509764, 38.634434, 20.357164>,  <22.556746, 39.154568, 20.792816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509764, 38.634434, 20.357164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.228163, 38.903522, 20.266102>,  <22.059202, 39.064976, 20.211464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.228163, 38.903522, 20.266102>,  <22.509764, 38.634434, 20.357164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.228163, 38.903522, 20.266102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322247, 0.016924, -0.946504,
		-0.632881, -0.739702, -0.228697,
		-0.704002, 0.672722, -0.227656,
		22.016962, 39.105339, 20.197805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.232079, 38.396660, 19.786625>,  <22.509764, 38.634434, 20.357164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.232079, 38.396660, 19.786625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.122198, 38.781086, 19.774708>,  <22.056271, 39.011742, 19.767557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.122198, 38.781086, 19.774708>,  <22.232079, 38.396660, 19.786625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122198, 38.781086, 19.774708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346680, 0.070096, -0.935361,
		-0.896857, -0.267273, -0.352438,
		-0.274701, 0.961068, -0.029792,
		22.039787, 39.069405, 19.765770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.071674, 38.439587, 19.134628>,  <22.232079, 38.396660, 19.786625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.071674, 38.439587, 19.134628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.081409, 38.827965, 19.229847>,  <22.087252, 39.060993, 19.286978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.081409, 38.827965, 19.229847>,  <22.071674, 38.439587, 19.134628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.081409, 38.827965, 19.229847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332921, 0.216651, -0.917729,
		-0.942641, 0.101587, -0.317976,
		0.024339, 0.970949, 0.238045,
		22.088711, 39.119251, 19.301260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885412, 38.770691, 18.533083>,  <22.071674, 38.439587, 19.134628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885412, 38.770691, 18.533083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.036715, 39.076004, 18.742584>,  <22.127497, 39.259193, 18.868284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.036715, 39.076004, 18.742584>,  <21.885412, 38.770691, 18.533083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.036715, 39.076004, 18.742584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318991, 0.423662, -0.847794,
		-0.869003, 0.487756, -0.083229,
		0.378256, 0.763285, 0.523753,
		22.150192, 39.304989, 18.899710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.771452, 39.382751, 18.091669>,  <21.885412, 38.770691, 18.533083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.771452, 39.382751, 18.091669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.069592, 39.448505, 18.350105>,  <22.248476, 39.487957, 18.505167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.069592, 39.448505, 18.350105>,  <21.771452, 39.382751, 18.091669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069592, 39.448505, 18.350105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627906, 0.152562, -0.763190,
		-0.224025, 0.974527, 0.010494,
		0.745350, 0.164385, 0.646089,
		22.293196, 39.497822, 18.543932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.012644, 40.020962, 17.962252>,  <21.771452, 39.382751, 18.091669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.012644, 40.020962, 17.962252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.322500, 39.853317, 18.151684>,  <22.508415, 39.752731, 18.265343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.322500, 39.853317, 18.151684>,  <22.012644, 40.020962, 17.962252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.322500, 39.853317, 18.151684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598590, 0.244351, -0.762878,
		0.204010, 0.874437, 0.440159,
		0.774642, -0.419110, 0.473579,
		22.554893, 39.727585, 18.293758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.523035, 40.536789, 17.987724>,  <22.012644, 40.020962, 17.962252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.523035, 40.536789, 17.987724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.709784, 40.188988, 18.052227>,  <22.821833, 39.980309, 18.090929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.709784, 40.188988, 18.052227>,  <22.523035, 40.536789, 17.987724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709784, 40.188988, 18.052227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704742, 0.255670, -0.661794,
		0.534200, 0.422617, 0.732137,
		0.466871, -0.869499, 0.161257,
		22.849844, 39.928139, 18.100605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.243608, 40.643776, 17.909309>,  <22.523035, 40.536789, 17.987724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.243608, 40.643776, 17.909309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232929, 40.245594, 17.872761>,  <23.226522, 40.006683, 17.850832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232929, 40.245594, 17.872761>,  <23.243608, 40.643776, 17.909309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232929, 40.245594, 17.872761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725574, 0.043579, -0.686762,
		0.687626, -0.084633, 0.721116,
		-0.026697, -0.995459, -0.091373,
		23.224920, 39.946957, 17.845348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960945, 40.455505, 18.054996>,  <23.243608, 40.643776, 17.909309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960945, 40.455505, 18.054996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.771141, 40.162537, 17.859695>,  <23.657259, 39.986755, 17.742516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.771141, 40.162537, 17.859695>,  <23.960945, 40.455505, 18.054996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.771141, 40.162537, 17.859695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802696, -0.132391, -0.581508,
		0.361271, -0.667851, 0.650736,
		-0.474512, -0.732426, -0.488253,
		23.628788, 39.942810, 17.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466942, 40.012177, 17.872549>,  <23.960945, 40.455505, 18.054996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466942, 40.012177, 17.872549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.167141, 39.940979, 17.617500>,  <23.987261, 39.898262, 17.464470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.167141, 39.940979, 17.617500>,  <24.466942, 40.012177, 17.872549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167141, 39.940979, 17.617500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661231, -0.247716, -0.708104,
		-0.031912, -0.952342, 0.303358,
		-0.749504, -0.177993, -0.637623,
		23.942289, 39.887581, 17.426214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036133, 39.552307, 18.014708>,  <24.466942, 40.012177, 17.872549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036133, 39.552307, 18.014708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.715199, 39.314308, 17.995819>,  <24.522638, 39.171509, 17.984486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.715199, 39.314308, 17.995819>,  <25.036133, 39.552307, 18.014708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715199, 39.314308, 17.995819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391778, 0.465310, 0.793723,
		-0.450293, 0.655334, -0.606444,
		-0.802338, -0.594999, -0.047220,
		24.474497, 39.135807, 17.981653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.493372, 33.128597, 26.941826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836615, 32.938942, 26.862988>,  <26.042561, 32.825150, 26.815685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836615, 32.938942, 26.862988>,  <25.493372, 33.128597, 26.941826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836615, 32.938942, 26.862988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206637, 0.670269, -0.712769,
		0.470056, 0.570905, 0.673137,
		0.858107, -0.474137, -0.197094,
		26.094048, 32.796700, 26.803860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995453, 33.668983, 26.813847>,  <25.493372, 33.128597, 26.941826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995453, 33.668983, 26.813847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154837, 33.358559, 26.618317>,  <26.250467, 33.172302, 26.500999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154837, 33.358559, 26.618317>,  <25.995453, 33.668983, 26.813847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154837, 33.358559, 26.618317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037998, 0.546473, -0.836614,
		0.916398, 0.314784, 0.247238,
		0.398461, -0.776066, -0.488826,
		26.274376, 33.125740, 26.471668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353561, 33.952595, 26.309671>,  <25.995453, 33.668983, 26.813847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353561, 33.952595, 26.309671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358152, 33.585411, 26.151066>,  <26.360907, 33.365101, 26.055902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358152, 33.585411, 26.151066>,  <26.353561, 33.952595, 26.309671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358152, 33.585411, 26.151066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215325, 0.389505, -0.895500,
		0.976475, -0.075101, 0.202130,
		0.011478, -0.917957, -0.396513,
		26.361595, 33.310024, 26.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026525, 33.776703, 25.949423>,  <26.353561, 33.952595, 26.309671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026525, 33.776703, 25.949423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764395, 33.521420, 25.787811>,  <26.607117, 33.368252, 25.690845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764395, 33.521420, 25.787811>,  <27.026525, 33.776703, 25.949423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764395, 33.521420, 25.787811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348402, 0.219198, -0.911355,
		0.670194, -0.738001, 0.078706,
		-0.655329, -0.638206, -0.404027,
		26.567797, 33.329956, 25.666603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402945, 33.319347, 25.471554>,  <27.026525, 33.776703, 25.949423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402945, 33.319347, 25.471554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021557, 33.273342, 25.360081>,  <26.792725, 33.245739, 25.293196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021557, 33.273342, 25.360081>,  <27.402945, 33.319347, 25.471554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021557, 33.273342, 25.360081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243659, 0.250411, -0.936976,
		0.177546, -0.961284, -0.210737,
		-0.953472, -0.115008, -0.278685,
		26.735516, 33.238838, 25.276476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447004, 33.068878, 24.891722>,  <27.402945, 33.319347, 25.471554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447004, 33.068878, 24.891722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077587, 33.217548, 24.853939>,  <26.855936, 33.306751, 24.831268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077587, 33.217548, 24.853939>,  <27.447004, 33.068878, 24.891722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077587, 33.217548, 24.853939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215986, 0.300590, -0.928975,
		-0.316889, -0.878350, -0.357886,
		-0.923543, 0.371681, -0.094458,
		26.800524, 33.329052, 24.825602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279581, 32.911930, 24.186615>,  <27.447004, 33.068878, 24.891722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279581, 32.911930, 24.186615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074238, 33.238174, 24.293373>,  <26.951031, 33.433922, 24.357428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074238, 33.238174, 24.293373>,  <27.279581, 32.911930, 24.186615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074238, 33.238174, 24.293373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184337, 0.408548, -0.893929,
		-0.838142, -0.409708, -0.360080,
		-0.513360, 0.815615, 0.266897,
		26.920229, 33.482861, 24.373442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865904, 32.976955, 23.647242>,  <27.279581, 32.911930, 24.186615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865904, 32.976955, 23.647242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886612, 33.327171, 23.839390>,  <26.899036, 33.537300, 23.954679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886612, 33.327171, 23.839390>,  <26.865904, 32.976955, 23.647242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886612, 33.327171, 23.839390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204800, 0.461486, -0.863184,
		-0.977434, 0.143069, -0.155418,
		0.051772, 0.875535, 0.480373,
		26.902143, 33.589832, 23.983501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629328, 33.468758, 23.153734>,  <26.865904, 32.976955, 23.647242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629328, 33.468758, 23.153734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815535, 33.699780, 23.421982>,  <26.927259, 33.838390, 23.582930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815535, 33.699780, 23.421982>,  <26.629328, 33.468758, 23.153734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815535, 33.699780, 23.421982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259156, 0.635561, -0.727255,
		-0.846245, 0.512345, 0.146190,
		0.465518, 0.577550, 0.670618,
		26.955191, 33.873043, 23.623167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436270, 34.168331, 22.904129>,  <26.629328, 33.468758, 23.153734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436270, 34.168331, 22.904129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753374, 34.191681, 23.146820>,  <26.943638, 34.205692, 23.292435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753374, 34.191681, 23.146820>,  <26.436270, 34.168331, 22.904129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753374, 34.191681, 23.146820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391767, 0.713765, -0.580567,
		-0.466954, 0.697948, 0.542975,
		0.792762, 0.058378, 0.606729,
		26.991203, 34.209194, 23.328838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561998, 34.913670, 23.045053>,  <26.436270, 34.168331, 22.904129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561998, 34.913670, 23.045053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918047, 34.753185, 23.131500>,  <27.131676, 34.656895, 23.183369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918047, 34.753185, 23.131500>,  <26.561998, 34.913670, 23.045053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918047, 34.753185, 23.131500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454712, 0.750417, -0.479699,
		0.030284, 0.525263, 0.850401,
		0.890123, -0.401215, 0.216118,
		27.185083, 34.632820, 23.196335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886866, 35.391438, 23.401390>,  <26.561998, 34.913670, 23.045053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886866, 35.391438, 23.401390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175512, 35.144955, 23.275177>,  <27.348700, 34.997066, 23.199450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175512, 35.144955, 23.275177>,  <26.886866, 35.391438, 23.401390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175512, 35.144955, 23.275177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430681, 0.756429, -0.492269,
		0.542018, 0.219335, 0.811239,
		0.721616, -0.616204, -0.315534,
		27.391996, 34.960094, 23.180517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569483, 35.663303, 23.558853>,  <26.886866, 35.391438, 23.401390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569483, 35.663303, 23.558853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575783, 35.441868, 23.225796>,  <27.579563, 35.309006, 23.025961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575783, 35.441868, 23.225796>,  <27.569483, 35.663303, 23.558853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575783, 35.441868, 23.225796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472068, 0.738209, -0.481871,
		0.881422, -0.385475, 0.272956,
		0.015749, -0.553586, -0.832644,
		27.580507, 35.275791, 22.976002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320488, 35.621037, 23.178085>,  <27.569483, 35.663303, 23.558853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320488, 35.621037, 23.178085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012362, 35.560566, 22.930290>,  <27.827486, 35.524284, 22.781614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012362, 35.560566, 22.930290>,  <28.320488, 35.621037, 23.178085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012362, 35.560566, 22.930290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336137, 0.729287, -0.595947,
		0.541874, -0.667299, -0.510965,
		-0.770315, -0.151174, -0.619485,
		27.781267, 35.515213, 22.744444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149481, 36.246586, 22.976645>,  <28.320488, 35.621037, 23.178085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149481, 36.246586, 22.976645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826120, 36.404175, 23.151585>,  <27.632103, 36.498726, 23.256548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826120, 36.404175, 23.151585>,  <28.149481, 36.246586, 22.976645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826120, 36.404175, 23.151585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558733, 0.279799, 0.780724,
		0.185212, 0.875500, -0.446314,
		-0.808402, 0.393970, 0.437349,
		27.583599, 36.522366, 23.282789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355177, 36.826881, 23.342613>,  <28.149481, 36.246586, 22.976645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355177, 36.826881, 23.342613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994904, 36.772713, 23.507744>,  <27.778740, 36.740211, 23.606823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994904, 36.772713, 23.507744>,  <28.355177, 36.826881, 23.342613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994904, 36.772713, 23.507744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364228, 0.282662, 0.887378,
		-0.236861, 0.949612, -0.205264,
		-0.900686, -0.135423, 0.412827,
		27.724697, 36.732086, 23.631592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267515, 37.370781, 23.798025>,  <28.355177, 36.826881, 23.342613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267515, 37.370781, 23.798025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026882, 37.074787, 23.918373>,  <27.882502, 36.897190, 23.990582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026882, 37.074787, 23.918373>,  <28.267515, 37.370781, 23.798025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026882, 37.074787, 23.918373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386309, 0.060169, 0.920405,
		-0.699188, 0.669928, 0.249665,
		-0.601583, -0.739984, 0.300869,
		27.846407, 36.852791, 24.008635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099070, 37.426880, 24.488266>,  <28.267515, 37.370781, 23.798025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099070, 37.426880, 24.488266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010405, 37.038158, 24.456108>,  <27.957207, 36.804924, 24.436813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010405, 37.038158, 24.456108>,  <28.099070, 37.426880, 24.488266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010405, 37.038158, 24.456108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235210, -0.133296, 0.962761,
		-0.946331, 0.194497, 0.258124,
		-0.221661, -0.971804, -0.080395,
		27.943907, 36.746616, 24.431990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705942, 37.301823, 25.103682>,  <28.099070, 37.426880, 24.488266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705942, 37.301823, 25.103682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868788, 36.959957, 24.974804>,  <27.966496, 36.754837, 24.897478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868788, 36.959957, 24.974804>,  <27.705942, 37.301823, 25.103682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868788, 36.959957, 24.974804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459649, -0.113121, 0.880867,
		-0.789290, -0.506711, 0.346792,
		0.407116, -0.854662, -0.322195,
		27.990923, 36.703560, 24.878145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498093, 36.836990, 25.532251>,  <27.705942, 37.301823, 25.103682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498093, 36.836990, 25.532251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810278, 36.638664, 25.379913>,  <27.997589, 36.519669, 25.288509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810278, 36.638664, 25.379913>,  <27.498093, 36.836990, 25.532251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810278, 36.638664, 25.379913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207204, -0.369600, 0.905794,
		-0.589870, -0.785850, -0.185723,
		0.780462, -0.495818, -0.380847,
		28.044416, 36.489918, 25.265659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459517, 36.240719, 25.892038>,  <27.498093, 36.836990, 25.532251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459517, 36.240719, 25.892038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823988, 36.241196, 25.727234>,  <28.042671, 36.241482, 25.628351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823988, 36.241196, 25.727234>,  <27.459517, 36.240719, 25.892038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823988, 36.241196, 25.727234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346386, -0.543685, 0.764476,
		-0.223090, -0.839289, -0.495808,
		0.911179, 0.001194, -0.412009,
		28.097342, 36.241554, 25.603632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630793, 35.561920, 25.866707>,  <27.459517, 36.240719, 25.892038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630793, 35.561920, 25.866707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965971, 35.779705, 25.851654>,  <28.167078, 35.910374, 25.842623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965971, 35.779705, 25.851654>,  <27.630793, 35.561920, 25.866707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965971, 35.779705, 25.851654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408401, -0.579820, 0.704994,
		0.362021, -0.606114, -0.708214,
		0.837944, 0.544458, -0.037630,
		28.217354, 35.943043, 25.840364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166548, 35.070835, 26.167130>,  <27.630793, 35.561920, 25.866707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166548, 35.070835, 26.167130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331320, 35.434368, 26.140793>,  <28.430183, 35.652489, 26.124990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331320, 35.434368, 26.140793>,  <28.166548, 35.070835, 26.167130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331320, 35.434368, 26.140793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553118, -0.191971, 0.810683,
		0.724137, -0.370363, -0.581771,
		0.411930, 0.908834, -0.065841,
		28.454899, 35.707020, 26.121040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884645, 35.046654, 25.901638>,  <28.166548, 35.070835, 26.167130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884645, 35.046654, 25.901638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812792, 35.343746, 26.159657>,  <28.769680, 35.521999, 26.314468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812792, 35.343746, 26.159657>,  <28.884645, 35.046654, 25.901638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812792, 35.343746, 26.159657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604010, -0.434286, 0.668257,
		0.776469, 0.509656, -0.370604,
		-0.179633, 0.742729, 0.645047,
		28.758902, 35.566566, 26.353170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318232, 34.993969, 26.418098>,  <28.884645, 35.046654, 25.901638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318232, 34.993969, 26.418098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150335, 35.308208, 26.599934>,  <29.049599, 35.496754, 26.709034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150335, 35.308208, 26.599934>,  <29.318232, 34.993969, 26.418098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150335, 35.308208, 26.599934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480844, -0.232319, 0.845469,
		0.769811, 0.573461, -0.280239,
		-0.419739, 0.785602, 0.454587,
		29.024414, 35.543888, 26.736309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865282, 35.215172, 26.842569>,  <29.318232, 34.993969, 26.418098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865282, 35.215172, 26.842569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525650, 35.344151, 27.009945>,  <29.321871, 35.421539, 27.110371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525650, 35.344151, 27.009945>,  <29.865282, 35.215172, 26.842569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525650, 35.344151, 27.009945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345484, -0.260275, 0.901608,
		0.399631, 0.910101, 0.109593,
		-0.849079, 0.322448, 0.418440,
		29.270926, 35.440884, 27.135477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128025, 35.508636, 27.417665>,  <29.865282, 35.215172, 26.842569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128025, 35.508636, 27.417665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743330, 35.418449, 27.479923>,  <29.512512, 35.364338, 27.517279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743330, 35.418449, 27.479923>,  <30.128025, 35.508636, 27.417665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743330, 35.418449, 27.479923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208792, -0.235339, 0.949221,
		-0.177392, 0.945399, 0.273410,
		-0.961737, -0.225471, 0.155645,
		29.454809, 35.350807, 27.526617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977705, 35.854656, 28.041035>,  <30.128025, 35.508636, 27.417665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977705, 35.854656, 28.041035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692066, 35.579262, 27.990356>,  <29.520683, 35.414024, 27.959949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692066, 35.579262, 27.990356>,  <29.977705, 35.854656, 28.041035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692066, 35.579262, 27.990356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027540, -0.208472, 0.977641,
		-0.699505, 0.694641, 0.167830,
		-0.714097, -0.688486, -0.126696,
		29.477837, 35.372715, 27.952347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339746, 36.528004, 28.139421>,  <29.977705, 35.854656, 28.041035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339746, 36.528004, 28.139421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683050, 36.372849, 28.273842>,  <30.889032, 36.279755, 28.354494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683050, 36.372849, 28.273842>,  <30.339746, 36.528004, 28.139421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683050, 36.372849, 28.273842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412395, 0.131496, -0.901465,
		0.305481, 0.912277, 0.272822,
		0.858261, -0.387890, 0.336049,
		30.940529, 36.256481, 28.374657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964327, 37.046066, 28.053661>,  <30.339746, 36.528004, 28.139421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964327, 37.046066, 28.053661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172384, 36.704433, 28.054295>,  <31.297218, 36.499454, 28.054674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172384, 36.704433, 28.054295>,  <30.964327, 37.046066, 28.053661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172384, 36.704433, 28.054295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410745, 0.248521, -0.877226,
		0.748827, 0.456933, 0.480074,
		0.520142, -0.854079, 0.001584,
		31.328426, 36.448212, 28.054770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601137, 37.257298, 27.786825>,  <30.964327, 37.046066, 28.053661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601137, 37.257298, 27.786825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544018, 36.863785, 27.743404>,  <31.509747, 36.627678, 27.717352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544018, 36.863785, 27.743404>,  <31.601137, 37.257298, 27.786825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544018, 36.863785, 27.743404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374937, 0.047734, -0.925820,
		0.915986, -0.172908, 0.362039,
		-0.142800, -0.983781, -0.108553,
		31.501179, 36.568649, 27.710838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272430, 36.996021, 27.490814>,  <31.601137, 37.257298, 27.786825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272430, 36.996021, 27.490814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022507, 36.695114, 27.407181>,  <31.872553, 36.514572, 27.357000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022507, 36.695114, 27.407181>,  <32.272430, 36.996021, 27.490814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022507, 36.695114, 27.407181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410896, -0.089094, -0.907319,
		0.663915, -0.652809, 0.364769,
		-0.624805, -0.752265, -0.209086,
		31.835066, 36.469437, 27.344456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739876, 36.457920, 27.279589>,  <32.272430, 36.996021, 27.490814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739876, 36.457920, 27.279589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385132, 36.409519, 27.101223>,  <32.172287, 36.380478, 26.994204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385132, 36.409519, 27.101223>,  <32.739876, 36.457920, 27.279589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385132, 36.409519, 27.101223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450888, -0.015902, -0.892439,
		0.100896, -0.992525, 0.068661,
		-0.886860, -0.121002, -0.445914,
		32.119076, 36.373219, 26.967449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784328, 35.837879, 26.808203>,  <32.739876, 36.457920, 27.279589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784328, 35.837879, 26.808203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480671, 36.059238, 26.671120>,  <32.298477, 36.192055, 26.588869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480671, 36.059238, 26.671120>,  <32.784328, 35.837879, 26.808203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480671, 36.059238, 26.671120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424087, 0.021073, -0.905376,
		-0.493814, -0.832648, -0.250687,
		-0.759143, 0.553401, -0.342709,
		32.252930, 36.225258, 26.568308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676498, 35.588615, 26.176271>,  <32.784328, 35.837879, 26.808203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676498, 35.588615, 26.176271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485653, 35.939453, 26.154102>,  <32.371147, 36.149956, 26.140800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485653, 35.939453, 26.154102>,  <32.676498, 35.588615, 26.176271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485653, 35.939453, 26.154102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486406, 0.211012, -0.847870,
		-0.731967, -0.431485, -0.527300,
		-0.477109, 0.877095, -0.055423,
		32.342522, 36.202583, 26.137476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434235, 35.676933, 25.507832>,  <32.676498, 35.588615, 26.176271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434235, 35.676933, 25.507832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415638, 36.055790, 25.634804>,  <32.404480, 36.283104, 25.710987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415638, 36.055790, 25.634804>,  <32.434235, 35.676933, 25.507832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415638, 36.055790, 25.634804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289803, 0.316896, -0.903101,
		-0.955956, 0.050005, -0.289218,
		-0.046493, 0.947141, 0.317431,
		32.401691, 36.339931, 25.730032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278286, 36.046379, 24.886909>,  <32.434235, 35.676933, 25.507832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278286, 36.046379, 24.886909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423176, 36.325916, 25.133617>,  <32.510109, 36.493637, 25.281643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423176, 36.325916, 25.133617>,  <32.278286, 36.046379, 24.886909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423176, 36.325916, 25.133617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543094, 0.379538, -0.748999,
		-0.757522, 0.606274, -0.242058,
		0.362229, 0.698844, 0.616772,
		32.531845, 36.535568, 25.318649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200703, 36.663025, 24.457029>,  <32.278286, 36.046379, 24.886909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200703, 36.663025, 24.457029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483719, 36.758076, 24.723240>,  <32.653526, 36.815105, 24.882967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483719, 36.758076, 24.723240>,  <32.200703, 36.663025, 24.457029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483719, 36.758076, 24.723240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593592, 0.311186, -0.742167,
		-0.383459, 0.920162, 0.079124,
		0.707536, 0.237623, 0.665528,
		32.695980, 36.829361, 24.922899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348888, 37.378365, 24.404236>,  <32.200703, 36.663025, 24.457029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348888, 37.378365, 24.404236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668064, 37.193359, 24.558830>,  <32.859570, 37.082355, 24.651587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668064, 37.193359, 24.558830>,  <32.348888, 37.378365, 24.404236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668064, 37.193359, 24.558830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545109, 0.280148, -0.790173,
		0.257191, 0.841189, 0.475661,
		0.797941, -0.462512, 0.386488,
		32.907448, 37.054607, 24.674776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881882, 37.852760, 24.495447>,  <32.348888, 37.378365, 24.404236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881882, 37.852760, 24.495447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007507, 37.478668, 24.430088>,  <33.082882, 37.254211, 24.390873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007507, 37.478668, 24.430088>,  <32.881882, 37.852760, 24.495447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007507, 37.478668, 24.430088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600891, 0.329060, -0.728457,
		0.735045, 0.130601, 0.665321,
		0.314068, -0.935234, -0.163397,
		33.101727, 37.198097, 24.381069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.307009, 36.151207, 32.075600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.529095, 35.830059, 31.988758>,  <30.662346, 35.637371, 31.936653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.529095, 35.830059, 31.988758>,  <30.307009, 36.151207, 32.075600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529095, 35.830059, 31.988758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059483, 0.298695, -0.952493,
		0.829577, 0.515925, 0.213597,
		0.555216, -0.802871, -0.217102,
		30.695660, 35.589199, 31.923628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893881, 36.423512, 31.774500>,  <30.307009, 36.151207, 32.075600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893881, 36.423512, 31.774500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.867525, 36.043926, 31.651123>,  <30.851711, 35.816177, 31.577097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.867525, 36.043926, 31.651123>,  <30.893881, 36.423512, 31.774500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867525, 36.043926, 31.651123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202695, 0.289938, -0.935335,
		0.977023, -0.124147, 0.173246,
		-0.065888, -0.948959, -0.308440,
		30.847759, 35.759239, 31.558592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548355, 36.223160, 31.448885>,  <30.893881, 36.423512, 31.774500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548355, 36.223160, 31.448885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.260849, 35.987488, 31.301243>,  <31.088345, 35.846085, 31.212658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.260849, 35.987488, 31.301243>,  <31.548355, 36.223160, 31.448885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260849, 35.987488, 31.301243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345039, 0.158612, -0.925089,
		0.603592, -0.792278, 0.089286,
		-0.718766, -0.589184, -0.369103,
		31.045219, 35.810734, 31.190512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862402, 35.945698, 30.851465>,  <31.548355, 36.223160, 31.448885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862402, 35.945698, 30.851465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.477058, 35.846928, 30.809582>,  <31.245852, 35.787666, 30.784452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.477058, 35.846928, 30.809582>,  <31.862402, 35.945698, 30.851465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477058, 35.846928, 30.809582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110271, -0.008774, -0.993863,
		0.244493, -0.968994, 0.035681,
		-0.963360, -0.246927, -0.104707,
		31.188049, 35.772850, 30.778170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926655, 35.454056, 30.335630>,  <31.862402, 35.945698, 30.851465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926655, 35.454056, 30.335630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.539293, 35.553799, 30.337135>,  <31.306877, 35.613644, 30.338037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.539293, 35.553799, 30.337135>,  <31.926655, 35.454056, 30.335630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539293, 35.553799, 30.337135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028099, -0.094113, -0.995165,
		-0.247804, -0.963826, 0.098146,
		-0.968403, 0.249363, 0.003761,
		31.248772, 35.628609, 30.338264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536489, 34.894886, 29.911964>,  <31.926655, 35.454056, 30.335630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536489, 34.894886, 29.911964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300669, 35.217445, 29.930523>,  <31.159176, 35.410980, 29.941658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300669, 35.217445, 29.930523>,  <31.536489, 34.894886, 29.911964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300669, 35.217445, 29.930523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116987, -0.028410, -0.992727,
		-0.799214, -0.590692, 0.111087,
		-0.589552, 0.806397, 0.046398,
		31.123804, 35.459366, 29.944443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869524, 34.783226, 29.470905>,  <31.536489, 34.894886, 29.911964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869524, 34.783226, 29.470905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.923523, 35.176609, 29.519207>,  <30.955923, 35.412640, 29.548187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.923523, 35.176609, 29.519207>,  <30.869524, 34.783226, 29.470905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923523, 35.176609, 29.519207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130109, 0.138410, -0.981791,
		-0.982266, 0.116829, 0.146642,
		0.134998, 0.983460, 0.120755,
		30.964022, 35.471645, 29.555433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385832, 35.099163, 29.057705>,  <30.869524, 34.783226, 29.470905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385832, 35.099163, 29.057705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.668301, 35.376694, 29.114174>,  <30.837782, 35.543213, 29.148054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.668301, 35.376694, 29.114174>,  <30.385832, 35.099163, 29.057705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668301, 35.376694, 29.114174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133844, 0.326599, -0.935638,
		-0.695272, 0.641829, 0.323500,
		0.706174, 0.693822, 0.141170,
		30.880154, 35.584839, 29.156525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065632, 35.763035, 28.948343>,  <30.385832, 35.099163, 29.057705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065632, 35.763035, 28.948343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.454472, 35.832355, 28.885109>,  <30.687775, 35.873947, 28.847168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.454472, 35.832355, 28.885109>,  <30.065632, 35.763035, 28.948343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454472, 35.832355, 28.885109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212488, 0.365093, -0.906397,
		-0.099361, 0.914699, 0.391731,
		0.972099, 0.173298, -0.158087,
		30.746101, 35.884346, 28.837683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339169, 35.750732, 28.804134>,  <30.065632, 35.763035, 28.948343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339169, 35.750732, 28.804134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.293045, 35.430721, 28.568623>,  <29.265371, 35.238716, 28.427315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.293045, 35.430721, 28.568623>,  <29.339169, 35.750732, 28.804134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293045, 35.430721, 28.568623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173881, -0.567325, 0.804927,
		-0.977993, 0.195191, -0.073692,
		-0.115307, -0.800027, -0.588780,
		29.258453, 35.190712, 28.391989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734283, 35.447292, 29.017962>,  <29.339169, 35.750732, 28.804134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734283, 35.447292, 29.017962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.946890, 35.145927, 28.863113>,  <29.074453, 34.965111, 28.770205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.946890, 35.145927, 28.863113>,  <28.734283, 35.447292, 29.017962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946890, 35.145927, 28.863113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072735, -0.495933, 0.865309,
		-0.843918, -0.431770, -0.318397,
		0.531518, -0.753409, -0.387122,
		29.106346, 34.919907, 28.746977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307058, 34.874943, 29.183451>,  <28.734283, 35.447292, 29.017962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307058, 34.874943, 29.183451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.657681, 34.691875, 29.123867>,  <28.868053, 34.582035, 29.088118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.657681, 34.691875, 29.123867>,  <28.307058, 34.874943, 29.183451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657681, 34.691875, 29.123867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216508, -0.651360, 0.727224,
		-0.429853, -0.605202, -0.670043,
		0.876556, -0.457668, -0.148958,
		28.920647, 34.554573, 29.079180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203085, 34.129517, 29.052063>,  <28.307058, 34.874943, 29.183451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203085, 34.129517, 29.052063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.579851, 34.165272, 29.181557>,  <28.805912, 34.186726, 29.259253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.579851, 34.165272, 29.181557>,  <28.203085, 34.129517, 29.052063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579851, 34.165272, 29.181557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109534, -0.829468, 0.547709,
		0.317484, -0.551356, -0.771499,
		0.941916, 0.089383, 0.323735,
		28.862427, 34.192085, 29.278677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513960, 33.477146, 29.055113>,  <28.203085, 34.129517, 29.052063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513960, 33.477146, 29.055113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.766327, 33.668217, 29.299660>,  <28.917747, 33.782860, 29.446388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.766327, 33.668217, 29.299660>,  <28.513960, 33.477146, 29.055113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766327, 33.668217, 29.299660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105699, -0.833566, 0.542213,
		0.768618, -0.277470, -0.576400,
		0.630915, 0.477680, 0.611366,
		28.955601, 33.811520, 29.483068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883457, 32.917747, 29.256136>,  <28.513960, 33.477146, 29.055113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883457, 32.917747, 29.256136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.957829, 33.206257, 29.523029>,  <29.002451, 33.379360, 29.683165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.957829, 33.206257, 29.523029>,  <28.883457, 32.917747, 29.256136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957829, 33.206257, 29.523029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112538, -0.690238, 0.714777,
		0.976097, -0.057810, -0.209506,
		0.185930, 0.721269, 0.667234,
		29.013607, 33.422638, 29.723200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459778, 32.618298, 29.767750>,  <28.883457, 32.917747, 29.256136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459778, 32.618298, 29.767750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.286694, 32.926552, 29.954887>,  <29.182842, 33.111504, 30.067171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.286694, 32.926552, 29.954887>,  <29.459778, 32.618298, 29.767750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286694, 32.926552, 29.954887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112933, -0.468522, 0.876204,
		0.894431, 0.431979, 0.115705,
		-0.432712, 0.770637, 0.467845,
		29.156879, 33.157742, 30.095242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724159, 32.550369, 30.378990>,  <29.459778, 32.618298, 29.767750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724159, 32.550369, 30.378990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.433947, 32.811993, 30.464600>,  <29.259819, 32.968967, 30.515965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.433947, 32.811993, 30.464600>,  <29.724159, 32.550369, 30.378990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433947, 32.811993, 30.464600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075252, -0.384531, 0.920039,
		0.684063, 0.651412, 0.328209,
		-0.725531, 0.654063, 0.214024,
		29.216288, 33.008213, 30.528807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935013, 32.828312, 31.009069>,  <29.724159, 32.550369, 30.378990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935013, 32.828312, 31.009069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.541319, 32.870415, 30.952221>,  <29.305101, 32.895676, 30.918112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.541319, 32.870415, 30.952221>,  <29.935013, 32.828312, 31.009069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541319, 32.870415, 30.952221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174455, -0.445852, 0.877942,
		0.029044, 0.888896, 0.457187,
		-0.984237, 0.105257, -0.142123,
		29.246048, 32.901993, 30.909584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723761, 33.118099, 31.604815>,  <29.935013, 32.828312, 31.009069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723761, 33.118099, 31.604815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.383797, 32.959465, 31.466038>,  <29.179817, 32.864285, 31.382772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.383797, 32.959465, 31.466038>,  <29.723761, 33.118099, 31.604815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383797, 32.959465, 31.466038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106103, -0.516133, 0.849911,
		-0.516133, 0.759160, 0.396588,
		-0.849911, -0.396588, -0.346942,
		29.128824, 32.840488, 31.361956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229866, 33.223961, 32.156479>,  <29.723761, 33.118099, 31.604815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229866, 33.223961, 32.156479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.065348, 32.930790, 31.939716>,  <28.966637, 32.754887, 31.809660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.065348, 32.930790, 31.939716>,  <29.229866, 33.223961, 32.156479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065348, 32.930790, 31.939716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101929, -0.553806, 0.826383,
		-0.905784, 0.395124, 0.153073,
		-0.411297, -0.732923, -0.541903,
		28.941959, 32.710915, 31.777145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544538, 33.065327, 32.426704>,  <29.229866, 33.223961, 32.156479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544538, 33.065327, 32.426704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.656908, 32.742592, 32.218822>,  <28.724329, 32.548950, 32.094093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.656908, 32.742592, 32.218822>,  <28.544538, 33.065327, 32.426704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656908, 32.742592, 32.218822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332304, -0.589792, 0.736016,
		-0.900364, -0.034063, -0.433802,
		0.280924, -0.806836, -0.519708,
		28.741186, 32.500542, 32.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031223, 32.648582, 32.543179>,  <28.544538, 33.065327, 32.426704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031223, 32.648582, 32.543179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.334787, 32.407074, 32.445591>,  <28.516926, 32.262169, 32.387039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.334787, 32.407074, 32.445591>,  <28.031223, 32.648582, 32.543179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334787, 32.407074, 32.445591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069739, -0.447849, 0.891385,
		-0.647452, -0.659466, -0.381982,
		0.758908, -0.603768, -0.243971,
		28.562460, 32.225945, 32.372398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844234, 32.036369, 32.692158>,  <28.031223, 32.648582, 32.543179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844234, 32.036369, 32.692158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.242907, 32.010605, 32.672222>,  <28.482109, 31.995146, 32.660263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.242907, 32.010605, 32.672222>,  <27.844234, 32.036369, 32.692158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242907, 32.010605, 32.672222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030652, -0.270250, 0.962302,
		-0.075454, -0.960633, -0.267378,
		0.996678, -0.064414, -0.049837,
		28.541910, 31.991282, 32.657272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.727448, 29.901371, 31.695957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433998, 30.155254, 31.793064>,  <32.257927, 30.307585, 31.851328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433998, 30.155254, 31.793064>,  <32.727448, 29.901371, 31.695957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433998, 30.155254, 31.793064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057025, 0.413488, -0.908722,
		-0.677158, -0.652817, -0.339539,
		-0.733625, 0.634711, 0.242770,
		32.213909, 30.345667, 31.865894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065311, 29.833878, 31.226803>,  <32.727448, 29.901371, 31.695957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065311, 29.833878, 31.226803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.045242, 30.207951, 31.367043>,  <32.033199, 30.432394, 31.451185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.045242, 30.207951, 31.367043>,  <32.065311, 29.833878, 31.226803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045242, 30.207951, 31.367043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017588, 0.350159, -0.936525,
		-0.998586, -0.053157, -0.001122,
		-0.050175, 0.935181, 0.350598,
		32.030190, 30.488504, 31.472221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518755, 30.163975, 30.882570>,  <32.065311, 29.833878, 31.226803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518755, 30.163975, 30.882570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733244, 30.472740, 31.019169>,  <31.861937, 30.657999, 31.101128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733244, 30.472740, 31.019169>,  <31.518755, 30.163975, 30.882570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733244, 30.472740, 31.019169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057678, 0.437143, -0.897541,
		-0.842105, 0.461583, 0.278928,
		0.536221, 0.771911, 0.341497,
		31.894110, 30.704313, 31.121618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230263, 30.815498, 30.636225>,  <31.518755, 30.163975, 30.882570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230263, 30.815498, 30.636225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608810, 30.905159, 30.729298>,  <31.835939, 30.958956, 30.785141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608810, 30.905159, 30.729298>,  <31.230263, 30.815498, 30.636225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608810, 30.905159, 30.729298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105734, 0.465653, -0.878628,
		-0.305297, 0.856109, 0.416979,
		0.946369, 0.224154, 0.232682,
		31.892721, 30.972404, 30.799103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323494, 31.522133, 30.403870>,  <31.230263, 30.815498, 30.636225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323494, 31.522133, 30.403870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690380, 31.363445, 30.418461>,  <31.910511, 31.268232, 30.427216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690380, 31.363445, 30.418461>,  <31.323494, 31.522133, 30.403870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690380, 31.363445, 30.418461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282487, 0.583066, -0.761732,
		0.280924, 0.708976, 0.646865,
		0.917215, -0.396720, 0.036480,
		31.965544, 31.244429, 30.429405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737730, 32.053158, 30.361580>,  <31.323494, 31.522133, 30.403870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737730, 32.053158, 30.361580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966314, 31.748352, 30.239754>,  <32.103466, 31.565468, 30.166658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966314, 31.748352, 30.239754>,  <31.737730, 32.053158, 30.361580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966314, 31.748352, 30.239754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228639, 0.504285, -0.832719,
		0.788134, 0.406232, 0.462407,
		0.571462, -0.762019, -0.304564,
		32.137753, 31.519747, 30.148384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325947, 32.369061, 30.091742>,  <31.737730, 32.053158, 30.361580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325947, 32.369061, 30.091742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.342712, 32.002575, 29.932346>,  <32.352772, 31.782682, 29.836708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.342712, 32.002575, 29.932346>,  <32.325947, 32.369061, 30.091742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342712, 32.002575, 29.932346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203594, 0.398303, -0.894374,
		0.978158, -0.043644, 0.203230,
		0.041913, -0.916215, -0.398489,
		32.355286, 31.727711, 29.812799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796104, 32.613190, 29.558044>,  <32.325947, 32.369061, 30.091742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796104, 32.613190, 29.558044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648987, 32.253094, 29.464836>,  <32.560715, 32.037037, 29.408911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648987, 32.253094, 29.464836>,  <32.796104, 32.613190, 29.558044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648987, 32.253094, 29.464836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077599, 0.220000, -0.972408,
		0.926662, -0.375732, -0.011059,
		-0.367798, -0.900236, -0.233022,
		32.538647, 31.983023, 29.394930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249092, 32.271446, 29.038458>,  <32.796104, 32.613190, 29.558044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249092, 32.271446, 29.038458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.891720, 32.094090, 29.009632>,  <32.677296, 31.987675, 28.992336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.891720, 32.094090, 29.009632>,  <33.249092, 32.271446, 29.038458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891720, 32.094090, 29.009632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054022, 0.053212, -0.997121,
		0.445951, -0.894747, -0.023588,
		-0.893426, -0.443392, -0.072066,
		32.623692, 31.961071, 28.988012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395252, 31.916536, 28.469372>,  <33.249092, 32.271446, 29.038458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395252, 31.916536, 28.469372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996964, 31.906185, 28.504864>,  <32.757992, 31.899975, 28.526159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996964, 31.906185, 28.504864>,  <33.395252, 31.916536, 28.469372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996964, 31.906185, 28.504864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084397, -0.136779, -0.987000,
		0.037677, -0.990264, 0.134009,
		-0.995720, -0.025878, 0.088729,
		32.698246, 31.898422, 28.531483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256432, 31.402746, 28.032278>,  <33.395252, 31.916536, 28.469372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256432, 31.402746, 28.032278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918438, 31.611958, 28.076900>,  <32.715641, 31.737484, 28.103674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918438, 31.611958, 28.076900>,  <33.256432, 31.402746, 28.032278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918438, 31.611958, 28.076900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122029, 0.014531, -0.992420,
		-0.520685, -0.852191, 0.051546,
		-0.844983, 0.523029, 0.111558,
		32.664944, 31.768866, 28.110369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644119, 30.987473, 27.795769>,  <33.256432, 31.402746, 28.032278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644119, 30.987473, 27.795769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561760, 31.378860, 27.790108>,  <32.512344, 31.613693, 27.786711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561760, 31.378860, 27.790108>,  <32.644119, 30.987473, 27.795769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561760, 31.378860, 27.790108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332995, -0.083658, -0.939210,
		-0.920174, -0.188669, 0.343051,
		-0.205899, 0.978471, -0.014154,
		32.499989, 31.672401, 27.785862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004791, 31.042431, 27.573847>,  <32.644119, 30.987473, 27.795769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004791, 31.042431, 27.573847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146439, 31.408543, 27.497047>,  <32.231426, 31.628210, 27.450968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146439, 31.408543, 27.497047>,  <32.004791, 31.042431, 27.573847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146439, 31.408543, 27.497047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516503, 0.020261, -0.856046,
		-0.779631, 0.402309, 0.479919,
		0.354119, 0.915280, -0.191998,
		32.252674, 31.683126, 27.439447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513863, 31.383532, 27.243248>,  <32.004791, 31.042431, 27.573847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513863, 31.383532, 27.243248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839094, 31.596741, 27.149616>,  <32.034233, 31.724667, 27.093437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839094, 31.596741, 27.149616>,  <31.513863, 31.383532, 27.243248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839094, 31.596741, 27.149616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314146, 0.063202, -0.947268,
		-0.490120, 0.843738, 0.218835,
		0.813077, 0.533021, -0.234080,
		32.083015, 31.756647, 27.079391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896383, 31.258537, 26.823973>,  <31.513863, 31.383532, 27.243248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896383, 31.258537, 26.823973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552679, 31.128750, 26.665787>,  <30.346457, 31.050877, 26.570875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552679, 31.128750, 26.665787>,  <30.896383, 31.258537, 26.823973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552679, 31.128750, 26.665787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275755, -0.357335, 0.892340,
		-0.430850, 0.875803, 0.217570,
		-0.859259, -0.324469, -0.395465,
		30.294901, 31.031408, 26.547148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242855, 31.569450, 27.084961>,  <30.896383, 31.258537, 26.823973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242855, 31.569450, 27.084961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.150637, 31.201614, 26.957714>,  <30.095306, 30.980913, 26.881365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.150637, 31.201614, 26.957714>,  <30.242855, 31.569450, 27.084961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150637, 31.201614, 26.957714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381073, -0.215488, 0.899082,
		-0.895340, 0.328505, -0.300752,
		-0.230545, -0.919592, -0.318119,
		30.081472, 30.925737, 26.862278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553890, 31.472908, 27.282530>,  <30.242855, 31.569450, 27.084961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553890, 31.472908, 27.282530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.704807, 31.107822, 27.219788>,  <29.795357, 30.888771, 27.182142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.704807, 31.107822, 27.219788>,  <29.553890, 31.472908, 27.282530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704807, 31.107822, 27.219788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341211, -0.294461, 0.892675,
		-0.860945, -0.283278, -0.422526,
		0.377292, -0.912714, -0.156857,
		29.817995, 30.834009, 27.172731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994331, 31.076679, 27.468109>,  <29.553890, 31.472908, 27.282530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994331, 31.076679, 27.468109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.318481, 30.844868, 27.502605>,  <29.512972, 30.705782, 27.523302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.318481, 30.844868, 27.502605>,  <28.994331, 31.076679, 27.468109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318481, 30.844868, 27.502605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356477, -0.370867, 0.857544,
		-0.464989, -0.725675, -0.507131,
		0.810376, -0.579529, 0.086237,
		29.561594, 30.671009, 27.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811890, 30.512037, 27.980572>,  <28.994331, 31.076679, 27.468109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811890, 30.512037, 27.980572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.204710, 30.444267, 27.947422>,  <29.440403, 30.403605, 27.927532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.204710, 30.444267, 27.947422>,  <28.811890, 30.512037, 27.980572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204710, 30.444267, 27.947422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022965, -0.543539, 0.839070,
		-0.187206, -0.822107, -0.537675,
		0.982052, -0.169427, -0.082875,
		29.499325, 30.393438, 27.922560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919321, 29.770676, 28.200899>,  <28.811890, 30.512037, 27.980572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919321, 29.770676, 28.200899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.270144, 29.957809, 28.244541>,  <29.480637, 30.070089, 28.270727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.270144, 29.957809, 28.244541>,  <28.919321, 29.770676, 28.200899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270144, 29.957809, 28.244541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134529, -0.457225, 0.879117,
		0.461168, -0.756357, -0.463949,
		0.877055, 0.467835, 0.109106,
		29.533260, 30.098160, 28.277273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424364, 29.233198, 28.372318>,  <28.919321, 29.770676, 28.200899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424364, 29.233198, 28.372318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.518583, 29.596973, 28.509396>,  <29.575115, 29.815239, 28.591642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.518583, 29.596973, 28.509396>,  <29.424364, 29.233198, 28.372318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518583, 29.596973, 28.509396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008310, -0.350717, 0.936445,
		0.971827, -0.223427, -0.075054,
		0.235549, 0.909438, 0.342692,
		29.589249, 29.869804, 28.612204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822479, 29.102064, 28.973179>,  <29.424364, 29.233198, 28.372318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822479, 29.102064, 28.973179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.727226, 29.487587, 29.021130>,  <29.670074, 29.718901, 29.049900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.727226, 29.487587, 29.021130>,  <29.822479, 29.102064, 28.973179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727226, 29.487587, 29.021130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145697, -0.157482, 0.976715,
		0.960243, 0.215121, 0.177925,
		-0.238131, 0.963806, 0.119879,
		29.655787, 29.776730, 29.057093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313396, 29.313581, 29.471691>,  <29.822479, 29.102064, 28.973179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313396, 29.313581, 29.471691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995024, 29.555721, 29.474445>,  <29.804001, 29.701006, 29.476099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995024, 29.555721, 29.474445>,  <30.313396, 29.313581, 29.471691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995024, 29.555721, 29.474445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109538, -0.155194, 0.981792,
		0.595397, 0.780683, 0.189832,
		-0.795930, 0.605350, 0.006888,
		29.756245, 29.737326, 29.476511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347935, 29.791019, 30.069622>,  <30.313396, 29.313581, 29.471691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347935, 29.791019, 30.069622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.968731, 29.859982, 29.962624>,  <29.741209, 29.901358, 29.898424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.968731, 29.859982, 29.962624>,  <30.347935, 29.791019, 30.069622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968731, 29.859982, 29.962624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267584, 0.023176, 0.963256,
		0.172268, 0.984754, 0.024161,
		-0.948010, 0.172403, -0.267496,
		29.684328, 29.911703, 29.882374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098463, 30.316864, 30.589638>,  <30.347935, 29.791019, 30.069622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098463, 30.316864, 30.589638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.801937, 30.115707, 30.411850>,  <29.624022, 29.995014, 30.305178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.801937, 30.115707, 30.411850>,  <30.098463, 30.316864, 30.589638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801937, 30.115707, 30.411850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372153, -0.243111, 0.895767,
		-0.558527, 0.829458, -0.006930,
		-0.741316, -0.502889, -0.444469,
		29.579542, 29.964840, 30.278509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497959, 30.537580, 30.945976>,  <30.098463, 30.316864, 30.589638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497959, 30.537580, 30.945976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391933, 30.180393, 30.800457>,  <29.328318, 29.966082, 30.713144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391933, 30.180393, 30.800457>,  <29.497959, 30.537580, 30.945976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391933, 30.180393, 30.800457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328131, -0.271241, 0.904853,
		-0.906681, 0.359219, -0.221114,
		-0.265066, -0.892967, -0.363800,
		29.312414, 29.912502, 30.691317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865366, 30.365658, 31.296896>,  <29.497959, 30.537580, 30.945976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865366, 30.365658, 31.296896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.996750, 30.008381, 31.174046>,  <29.075581, 29.794016, 31.100336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.996750, 30.008381, 31.174046>,  <28.865366, 30.365658, 31.296896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996750, 30.008381, 31.174046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324381, -0.412062, 0.851459,
		-0.887069, -0.180044, -0.425079,
		0.328459, -0.893190, -0.307125,
		29.095287, 29.740423, 31.081907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276024, 29.911907, 31.460142>,  <28.865366, 30.365658, 31.296896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276024, 29.911907, 31.460142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601168, 29.683750, 31.412964>,  <28.796255, 29.546856, 31.384657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601168, 29.683750, 31.412964>,  <28.276024, 29.911907, 31.460142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601168, 29.683750, 31.412964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140202, -0.388153, 0.910868,
		-0.565332, -0.723873, -0.395484,
		0.812861, -0.570391, -0.117947,
		28.845026, 29.512632, 31.377581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475370, 29.673298, 31.534679>,  <28.276024, 29.911907, 31.460142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475370, 29.673298, 31.534679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.241533, 29.981926, 31.635025>,  <27.101231, 30.167103, 31.695232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.241533, 29.981926, 31.635025>,  <27.475370, 29.673298, 31.534679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241533, 29.981926, 31.635025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088785, 0.246508, -0.965065,
		-0.806455, -0.586443, -0.075603,
		-0.584592, 0.771569, 0.250865,
		27.066156, 30.213396, 31.710285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927240, 29.689867, 31.003834>,  <27.475370, 29.673298, 31.534679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927240, 29.689867, 31.003834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.957201, 30.046547, 31.182388>,  <26.975178, 30.260555, 31.289522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.957201, 30.046547, 31.182388>,  <26.927240, 29.689867, 31.003834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957201, 30.046547, 31.182388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038590, 0.449902, -0.892244,
		-0.996444, 0.049605, 0.068109,
		0.074903, 0.891699, 0.446388,
		26.979671, 30.314056, 31.316305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339542, 30.159294, 30.830359>,  <26.927240, 29.689867, 31.003834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339542, 30.159294, 30.830359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.611244, 30.427769, 30.949100>,  <26.774265, 30.588854, 31.020346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.611244, 30.427769, 30.949100>,  <26.339542, 30.159294, 30.830359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611244, 30.427769, 30.949100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231810, 0.579998, -0.780940,
		-0.696331, 0.461643, 0.549553,
		0.679255, 0.671185, 0.296857,
		26.815022, 30.629124, 31.038158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972702, 30.924589, 30.866203>,  <26.339542, 30.159294, 30.830359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972702, 30.924589, 30.866203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.369944, 30.943737, 30.823391>,  <26.608288, 30.955227, 30.797705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.369944, 30.943737, 30.823391>,  <25.972702, 30.924589, 30.866203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369944, 30.943737, 30.823391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111406, 0.669826, -0.734113,
		0.036548, 0.740973, 0.670539,
		0.993103, 0.047871, -0.107029,
		26.667875, 30.958099, 30.791283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125460, 31.693069, 30.864214>,  <25.972702, 30.924589, 30.866203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125460, 31.693069, 30.864214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.448809, 31.515060, 30.710075>,  <26.642818, 31.408255, 30.617592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.448809, 31.515060, 30.710075>,  <26.125460, 31.693069, 30.864214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448809, 31.515060, 30.710075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037167, 0.614712, -0.787876,
		0.587500, 0.651217, 0.480375,
		0.808370, -0.445023, -0.385347,
		26.691320, 31.381554, 30.594471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616594, 32.254673, 30.658134>,  <26.125460, 31.693069, 30.864214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616594, 32.254673, 30.658134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.700684, 31.931915, 30.437328>,  <26.751137, 31.738260, 30.304844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.700684, 31.931915, 30.437328>,  <26.616594, 32.254673, 30.658134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700684, 31.931915, 30.437328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045364, 0.555976, -0.829960,
		0.976600, 0.199519, 0.080276,
		0.210224, -0.806897, -0.552017,
		26.763750, 31.689846, 30.271723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630396, 32.492878, 30.048464>,  <26.616594, 32.254673, 30.658134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630396, 32.492878, 30.048464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.701029, 32.120354, 29.921043>,  <26.743408, 31.896839, 29.844591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.701029, 32.120354, 29.921043>,  <26.630396, 32.492878, 30.048464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701029, 32.120354, 29.921043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076735, 0.335679, -0.938846,
		0.981290, 0.141340, 0.130739,
		0.176583, -0.931312, -0.318553,
		26.754004, 31.840960, 29.825478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274128, 32.477623, 29.677275>,  <26.630396, 32.492878, 30.048464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274128, 32.477623, 29.677275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.021448, 32.184704, 29.575535>,  <26.869841, 32.008953, 29.514492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.021448, 32.184704, 29.575535>,  <27.274128, 32.477623, 29.677275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021448, 32.184704, 29.575535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003682, 0.325261, -0.945617,
		0.775206, -0.598280, -0.202770,
		-0.631697, -0.732302, -0.254348,
		26.831940, 31.965014, 29.499231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547512, 32.155357, 29.063822>,  <27.274128, 32.477623, 29.677275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547512, 32.155357, 29.063822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.156786, 32.069996, 29.057041>,  <26.922350, 32.018780, 29.052973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.156786, 32.069996, 29.057041>,  <27.547512, 32.155357, 29.063822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156786, 32.069996, 29.057041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005708, 0.105109, -0.994444,
		0.214002, -0.971293, -0.103890,
		-0.976817, -0.213406, -0.016950,
		26.863741, 32.005974, 29.051956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531212, 31.720465, 28.390835>,  <27.547512, 32.155357, 29.063822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531212, 31.720465, 28.390835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.158342, 31.827076, 28.488827>,  <26.934620, 31.891043, 28.547621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.158342, 31.827076, 28.488827>,  <27.531212, 31.720465, 28.390835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158342, 31.827076, 28.488827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232511, 0.077883, -0.969471,
		-0.277471, -0.960675, -0.010630,
		-0.932174, 0.266529, 0.244978,
		26.878691, 31.907034, 28.562321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117434, 31.378420, 27.892427>,  <27.531212, 31.720465, 28.390835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117434, 31.378420, 27.892427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.860504, 31.644463, 28.044773>,  <26.706347, 31.804089, 28.136181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.860504, 31.644463, 28.044773>,  <27.117434, 31.378420, 27.892427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860504, 31.644463, 28.044773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305599, 0.233468, -0.923094,
		-0.702875, -0.709314, 0.053294,
		-0.642321, 0.665106, 0.380865,
		26.667809, 31.843994, 28.159033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441334, 31.342451, 27.525213>,  <27.117434, 31.378420, 27.892427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441334, 31.342451, 27.525213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.446426, 31.716526, 27.666782>,  <26.449482, 31.940971, 27.751724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.446426, 31.716526, 27.666782>,  <26.441334, 31.342451, 27.525213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446426, 31.716526, 27.666782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195980, 0.349422, -0.916240,
		-0.980525, -0.057696, 0.187728,
		0.012733, 0.935187, 0.353925,
		26.450247, 31.997082, 27.772961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767738, 31.599861, 27.387413>,  <26.441334, 31.342451, 27.525213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767738, 31.599861, 27.387413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.036074, 31.894100, 27.425087>,  <26.197075, 32.070644, 27.447691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.036074, 31.894100, 27.425087>,  <25.767738, 31.599861, 27.387413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036074, 31.894100, 27.425087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359510, 0.433655, -0.826254,
		-0.648636, 0.520422, 0.555367,
		0.670838, 0.735598, 0.094187,
		26.237326, 32.114780, 27.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353182, 32.201027, 27.057016>,  <25.767738, 31.599861, 27.387413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353182, 32.201027, 27.057016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.739136, 32.306095, 27.057751>,  <25.970709, 32.369137, 27.058191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.739136, 32.306095, 27.057751>,  <25.353182, 32.201027, 27.057016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739136, 32.306095, 27.057751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140781, 0.523020, -0.840613,
		-0.221762, 0.810836, 0.541633,
		0.964885, 0.262667, 0.001835,
		26.028601, 32.384895, 27.058302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.659702, 37.325977, 15.535954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.969036, 37.494011, 15.725894>,  <43.154636, 37.594830, 15.839858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.969036, 37.494011, 15.725894>,  <42.659702, 37.325977, 15.535954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969036, 37.494011, 15.725894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257345, -0.476512, 0.840660,
		0.579419, -0.772313, -0.260398,
		0.773335, 0.420082, 0.474851,
		43.201038, 37.620037, 15.868349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037136, 36.772079, 15.851816>,  <42.659702, 37.325977, 15.535954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037136, 36.772079, 15.851816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.096760, 37.119751, 16.040413>,  <43.132534, 37.328354, 16.153572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.096760, 37.119751, 16.040413>,  <43.037136, 36.772079, 15.851816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096760, 37.119751, 16.040413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376788, -0.390920, 0.839769,
		0.914227, -0.302831, 0.269225,
		0.149062, 0.869181, 0.471493,
		43.141479, 37.380505, 16.181860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319141, 36.597469, 16.537680>,  <43.037136, 36.772079, 15.851816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319141, 36.597469, 16.537680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.183323, 36.973495, 16.550282>,  <43.101833, 37.199112, 16.557842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.183323, 36.973495, 16.550282>,  <43.319141, 36.597469, 16.537680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183323, 36.973495, 16.550282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488958, -0.205024, 0.847871,
		0.803512, 0.272482, 0.529266,
		-0.339542, 0.940063, 0.031507,
		43.081459, 37.255516, 16.559734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479183, 36.839039, 17.220358>,  <43.319141, 36.597469, 16.537680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479183, 36.839039, 17.220358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.186787, 37.089901, 17.112778>,  <43.011349, 37.240417, 17.048229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.186787, 37.089901, 17.112778>,  <43.479183, 36.839039, 17.220358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186787, 37.089901, 17.112778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501812, -0.226948, 0.834673,
		0.462431, 0.745098, 0.480610,
		-0.730987, 0.627155, -0.268951,
		42.967491, 37.278046, 17.032093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243160, 37.255379, 17.772873>,  <43.479183, 36.839039, 17.220358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243160, 37.255379, 17.772873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.925453, 37.314507, 17.537148>,  <42.734829, 37.349983, 17.395712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.925453, 37.314507, 17.537148>,  <43.243160, 37.255379, 17.772873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925453, 37.314507, 17.537148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599907, -0.037258, 0.799202,
		0.096183, 0.988312, 0.118272,
		-0.794268, 0.147822, -0.589311,
		42.687172, 37.358852, 17.360353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881840, 37.713303, 18.203672>,  <43.243160, 37.255379, 17.772873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881840, 37.713303, 18.203672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.623032, 37.575439, 17.931622>,  <42.467747, 37.492722, 17.768391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.623032, 37.575439, 17.931622>,  <42.881840, 37.713303, 18.203672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623032, 37.575439, 17.931622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703965, -0.072647, 0.706510,
		-0.292913, 0.935914, -0.195622,
		-0.647021, -0.344657, -0.680129,
		42.428925, 37.472042, 17.727583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338909, 37.992920, 18.309219>,  <42.881840, 37.713303, 18.203672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338909, 37.992920, 18.309219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212391, 37.665806, 18.116894>,  <42.136478, 37.469536, 18.001499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212391, 37.665806, 18.116894>,  <42.338909, 37.992920, 18.309219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212391, 37.665806, 18.116894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811326, -0.029476, 0.583850,
		-0.491638, 0.574766, -0.654169,
		-0.316295, -0.817787, -0.480814,
		42.117504, 37.420471, 17.972651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667835, 38.185493, 18.226496>,  <42.338909, 37.992920, 18.309219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667835, 38.185493, 18.226496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.688614, 37.787235, 18.195526>,  <41.701080, 37.548279, 18.176945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.688614, 37.787235, 18.195526>,  <41.667835, 38.185493, 18.226496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688614, 37.787235, 18.195526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898815, -0.080398, 0.430891,
		-0.435239, 0.047206, -0.899076,
		0.051943, -0.995644, -0.077422,
		41.704197, 37.488541, 18.172300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918804, 37.820572, 18.128666>,  <41.667835, 38.185493, 18.226496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918804, 37.820572, 18.128666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.140728, 37.503998, 18.231289>,  <41.273884, 37.314053, 18.292862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.140728, 37.503998, 18.231289>,  <40.918804, 37.820572, 18.128666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140728, 37.503998, 18.231289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762676, -0.360593, 0.536934,
		-0.332430, -0.493572, -0.803665,
		0.554812, -0.791429, 0.256564,
		41.307171, 37.266567, 18.308256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423904, 37.285343, 18.113123>,  <40.918804, 37.820572, 18.128666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423904, 37.285343, 18.113123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.733067, 37.160946, 18.334354>,  <40.918564, 37.086308, 18.467093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.733067, 37.160946, 18.334354>,  <40.423904, 37.285343, 18.113123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733067, 37.160946, 18.334354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630541, -0.473878, 0.614700,
		0.070925, -0.823846, -0.562358,
		0.772908, -0.310993, 0.553079,
		40.964939, 37.067650, 18.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273079, 36.584854, 18.304134>,  <40.423904, 37.285343, 18.113123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273079, 36.584854, 18.304134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.570606, 36.646450, 18.564293>,  <40.749123, 36.683407, 18.720388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.570606, 36.646450, 18.564293>,  <40.273079, 36.584854, 18.304134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570606, 36.646450, 18.564293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476519, -0.560171, 0.677598,
		0.468677, -0.813938, -0.343288,
		0.743822, 0.153992, 0.650396,
		40.793755, 36.692646, 18.759411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418156, 35.949097, 18.550602>,  <40.273079, 36.584854, 18.304134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418156, 35.949097, 18.550602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546799, 36.219067, 18.816246>,  <40.623985, 36.381050, 18.975632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546799, 36.219067, 18.816246>,  <40.418156, 35.949097, 18.550602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546799, 36.219067, 18.816246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406942, -0.534772, 0.740552,
		0.854965, -0.508423, 0.102668,
		0.321609, 0.674925, 0.664111,
		40.643280, 36.421543, 19.015480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711681, 35.482700, 19.021914>,  <40.418156, 35.949097, 18.550602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711681, 35.482700, 19.021914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.664604, 35.830505, 19.213787>,  <40.636360, 36.039188, 19.328911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.664604, 35.830505, 19.213787>,  <40.711681, 35.482700, 19.021914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664604, 35.830505, 19.213787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236881, -0.493676, 0.836763,
		0.964384, -0.015148, 0.264072,
		-0.117690, 0.869514, 0.479682,
		40.629295, 36.091358, 19.357691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077682, 35.408333, 19.671375>,  <40.711681, 35.482700, 19.021914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077682, 35.408333, 19.671375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804249, 35.696823, 19.716183>,  <40.640186, 35.869915, 19.743067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804249, 35.696823, 19.716183>,  <41.077682, 35.408333, 19.671375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804249, 35.696823, 19.716183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249738, -0.375341, 0.892608,
		0.685813, 0.582201, 0.436695,
		-0.683587, 0.721222, 0.112016,
		40.599174, 35.913189, 19.749788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189659, 35.566452, 20.409866>,  <41.077682, 35.408333, 19.671375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189659, 35.566452, 20.409866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.825142, 35.658916, 20.273567>,  <40.606430, 35.714397, 20.191788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.825142, 35.658916, 20.273567>,  <41.189659, 35.566452, 20.409866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825142, 35.658916, 20.273567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409797, -0.428497, 0.805268,
		0.040140, 0.873473, 0.485216,
		-0.911293, 0.231163, -0.340747,
		40.551754, 35.728264, 20.171343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857037, 35.811619, 20.943073>,  <41.189659, 35.566452, 20.409866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857037, 35.811619, 20.943073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568245, 35.715260, 20.683624>,  <40.394970, 35.657444, 20.527954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568245, 35.715260, 20.683624>,  <40.857037, 35.811619, 20.943073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568245, 35.715260, 20.683624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346287, -0.685778, 0.640152,
		-0.599023, 0.686787, 0.411698,
		-0.721981, -0.240900, -0.648622,
		40.351650, 35.642990, 20.489038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333969, 35.638969, 21.383766>,  <40.857037, 35.811619, 20.943073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333969, 35.638969, 21.383766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191055, 35.497105, 21.038151>,  <40.105309, 35.411983, 20.830782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191055, 35.497105, 21.038151>,  <40.333969, 35.638969, 21.383766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191055, 35.497105, 21.038151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372357, -0.794314, 0.480016,
		-0.856563, 0.493231, 0.151731,
		-0.357281, -0.354666, -0.864038,
		40.083870, 35.390705, 20.778940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730350, 35.435478, 21.555731>,  <40.333969, 35.638969, 21.383766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730350, 35.435478, 21.555731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846264, 35.235706, 21.229149>,  <39.915813, 35.115845, 21.033199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846264, 35.235706, 21.229149>,  <39.730350, 35.435478, 21.555731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846264, 35.235706, 21.229149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389445, -0.840773, 0.376078,
		-0.874276, 0.208983, -0.438140,
		0.289782, -0.499427, -0.816455,
		39.933201, 35.085876, 20.984213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166454, 34.953388, 21.365410>,  <39.730350, 35.435478, 21.555731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166454, 34.953388, 21.365410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502766, 34.822769, 21.192688>,  <39.704552, 34.744396, 21.089054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502766, 34.822769, 21.192688>,  <39.166454, 34.953388, 21.365410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502766, 34.822769, 21.192688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194770, -0.926653, 0.321527,
		-0.505128, -0.186230, -0.842712,
		0.840780, -0.326547, -0.431806,
		39.755001, 34.724804, 21.063147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873703, 34.384960, 21.076902>,  <39.166454, 34.953388, 21.365410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873703, 34.384960, 21.076902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271034, 34.339092, 21.072010>,  <39.509434, 34.311573, 21.069075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271034, 34.339092, 21.072010>,  <38.873703, 34.384960, 21.076902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271034, 34.339092, 21.072010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097706, -0.893207, 0.438902,
		-0.061250, -0.434779, -0.898452,
		0.993329, -0.114667, -0.012229,
		39.569035, 34.304691, 21.068342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064693, 33.812984, 20.694654>,  <38.873703, 34.384960, 21.076902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064693, 33.812984, 20.694654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319172, 33.880997, 20.995678>,  <39.471859, 33.921806, 21.176292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319172, 33.880997, 20.995678>,  <39.064693, 33.812984, 20.694654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319172, 33.880997, 20.995678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230400, -0.889034, 0.395644,
		0.736322, -0.425097, -0.526425,
		0.636197, 0.170033, 0.752557,
		39.510033, 33.932007, 21.221445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423557, 33.739391, 20.601374>,  <39.064693, 33.812984, 20.694654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423557, 33.739391, 20.601374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.182896, 33.567249, 20.332211>,  <38.038498, 33.463963, 20.170713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.182896, 33.567249, 20.332211>,  <38.423557, 33.739391, 20.601374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182896, 33.567249, 20.332211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756608, -0.037015, -0.652821,
		0.256038, -0.901900, 0.347881,
		-0.601656, -0.430356, -0.672907,
		38.002399, 33.438141, 20.130339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864220, 33.143848, 20.307800>,  <38.423557, 33.739391, 20.601374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864220, 33.143848, 20.307800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.563282, 33.256706, 20.069683>,  <38.382721, 33.324421, 19.926813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.563282, 33.256706, 20.069683>,  <38.864220, 33.143848, 20.307800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563282, 33.256706, 20.069683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573302, -0.164718, -0.802616,
		-0.324507, -0.945127, -0.037828,
		-0.752343, 0.282142, -0.595295,
		38.337578, 33.341351, 19.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858730, 32.622704, 19.726927>,  <38.864220, 33.143848, 20.307800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858730, 32.622704, 19.726927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667961, 32.945465, 19.587532>,  <38.553497, 33.139122, 19.503895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667961, 32.945465, 19.587532>,  <38.858730, 32.622704, 19.726927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667961, 32.945465, 19.587532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563667, -0.023429, -0.825670,
		-0.674404, -0.590213, -0.443653,
		-0.476927, 0.806907, -0.348485,
		38.524883, 33.187538, 19.482986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584705, 32.488941, 18.954515>,  <38.858730, 32.622704, 19.726927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584705, 32.488941, 18.954515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570156, 32.888470, 18.967319>,  <38.561428, 33.128189, 18.975002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570156, 32.888470, 18.967319>,  <38.584705, 32.488941, 18.954515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570156, 32.888470, 18.967319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422217, 0.044388, -0.905407,
		-0.905765, -0.019414, -0.423336,
		-0.036369, 0.998826, 0.032008,
		38.559246, 33.188118, 18.976921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593395, 32.655628, 18.252529>,  <38.584705, 32.488941, 18.954515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593395, 32.655628, 18.252529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675610, 32.997097, 18.443943>,  <38.724937, 33.201977, 18.558792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675610, 32.997097, 18.443943>,  <38.593395, 32.655628, 18.252529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675610, 32.997097, 18.443943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611659, 0.269650, -0.743749,
		-0.763956, 0.445568, -0.466734,
		0.205536, 0.853673, 0.478537,
		38.737270, 33.253201, 18.587503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585182, 33.155457, 17.681459>,  <38.593395, 32.655628, 18.252529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585182, 33.155457, 17.681459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786469, 33.346180, 17.969746>,  <38.907238, 33.460613, 18.142717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786469, 33.346180, 17.969746>,  <38.585182, 33.155457, 17.681459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786469, 33.346180, 17.969746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594881, 0.413803, -0.689118,
		-0.626811, 0.775513, -0.075413,
		0.503214, 0.476808, 0.720715,
		38.937431, 33.489223, 18.185961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494751, 33.953228, 17.661518>,  <38.585182, 33.155457, 17.681459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494751, 33.953228, 17.661518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843731, 33.849480, 17.827198>,  <39.053120, 33.787231, 17.926605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843731, 33.849480, 17.827198>,  <38.494751, 33.953228, 17.661518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843731, 33.849480, 17.827198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488581, 0.482245, -0.727137,
		-0.011145, 0.836759, 0.547458,
		0.872447, -0.259374, 0.414199,
		39.105465, 33.771667, 17.951458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825325, 34.547321, 17.714483>,  <38.494751, 33.953228, 17.661518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825325, 34.547321, 17.714483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123440, 34.285995, 17.767731>,  <39.302311, 34.129200, 17.799679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123440, 34.285995, 17.767731>,  <38.825325, 34.547321, 17.714483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123440, 34.285995, 17.767731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593173, 0.558541, -0.579808,
		0.304446, 0.511088, 0.803805,
		0.745291, -0.653316, 0.133118,
		39.347027, 34.090000, 17.807667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487915, 34.910633, 17.961327>,  <38.825325, 34.547321, 17.714483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487915, 34.910633, 17.961327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597797, 34.562229, 17.798412>,  <39.663727, 34.353188, 17.700663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597797, 34.562229, 17.798412>,  <39.487915, 34.910633, 17.961327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597797, 34.562229, 17.798412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707524, 0.469940, -0.527794,
		0.651114, -0.143180, 0.745352,
		0.274701, -0.871009, -0.407288,
		39.680206, 34.300926, 17.676226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281273, 34.835331, 18.030670>,  <39.487915, 34.910633, 17.961327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281273, 34.835331, 18.030670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118542, 34.621506, 17.734364>,  <40.020901, 34.493210, 17.556580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118542, 34.621506, 17.734364>,  <40.281273, 34.835331, 18.030670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118542, 34.621506, 17.734364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698990, 0.339917, -0.629182,
		0.588134, -0.773760, 0.235362,
		-0.406832, -0.534558, -0.740767,
		39.996490, 34.461140, 17.512133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820393, 34.723080, 17.661474>,  <40.281273, 34.835331, 18.030670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820393, 34.723080, 17.661474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541061, 34.653980, 17.383629>,  <40.373463, 34.612518, 17.216921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541061, 34.653980, 17.383629>,  <40.820393, 34.723080, 17.661474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541061, 34.653980, 17.383629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551096, 0.489497, -0.675786,
		0.456752, -0.854722, -0.246631,
		-0.698334, -0.172749, -0.694612,
		40.331562, 34.602154, 17.175245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260658, 34.570206, 17.096624>,  <40.820393, 34.723080, 17.661474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260658, 34.570206, 17.096624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911526, 34.598839, 16.903526>,  <40.702045, 34.616020, 16.787668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911526, 34.598839, 16.903526>,  <41.260658, 34.570206, 17.096624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911526, 34.598839, 16.903526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471579, 0.378340, -0.796537,
		0.125619, -0.922894, -0.363986,
		-0.872830, 0.071588, -0.482745,
		40.649677, 34.620316, 16.758703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381359, 34.198273, 16.429771>,  <41.260658, 34.570206, 17.096624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381359, 34.198273, 16.429771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110184, 34.484436, 16.362129>,  <40.947479, 34.656132, 16.321545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110184, 34.484436, 16.362129>,  <41.381359, 34.198273, 16.429771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110184, 34.484436, 16.362129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491663, 0.270246, -0.827789,
		-0.546504, -0.644332, -0.534949,
		-0.677938, 0.715404, -0.169104,
		40.906803, 34.699059, 16.311398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306366, 34.192097, 15.692607>,  <41.381359, 34.198273, 16.429771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306366, 34.192097, 15.692607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.127792, 34.542900, 15.763648>,  <41.020649, 34.753384, 15.806273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.127792, 34.542900, 15.763648>,  <41.306366, 34.192097, 15.692607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127792, 34.542900, 15.763648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378371, 0.364881, -0.850704,
		-0.810882, -0.312586, -0.494733,
		-0.446437, 0.877013, 0.177602,
		40.993862, 34.806004, 15.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857666, 34.373173, 15.070183>,  <41.306366, 34.192097, 15.692607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857666, 34.373173, 15.070183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.996357, 34.686672, 15.276294>,  <41.079571, 34.874771, 15.399961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.996357, 34.686672, 15.276294>,  <40.857666, 34.373173, 15.070183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996357, 34.686672, 15.276294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311947, 0.421729, -0.851372,
		-0.884571, 0.455937, -0.098262,
		0.346732, 0.783752, 0.515277,
		41.100376, 34.921799, 15.430877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720558, 34.957817, 14.628837>,  <40.857666, 34.373173, 15.070183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720558, 34.957817, 14.628837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961662, 35.115368, 14.906409>,  <41.106323, 35.209900, 15.072953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961662, 35.115368, 14.906409>,  <40.720558, 34.957817, 14.628837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961662, 35.115368, 14.906409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256228, 0.728070, -0.635816,
		-0.755663, 0.561049, 0.337930,
		0.602760, 0.393876, 0.693932,
		41.142490, 35.233532, 15.114589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544174, 35.618912, 14.454177>,  <40.720558, 34.957817, 14.628837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544174, 35.618912, 14.454177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.882729, 35.606922, 14.666867>,  <41.085861, 35.599728, 14.794481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.882729, 35.606922, 14.666867>,  <40.544174, 35.618912, 14.454177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882729, 35.606922, 14.666867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376171, 0.740406, -0.557041,
		-0.376995, 0.671491, 0.637945,
		0.846386, -0.029974, 0.531725,
		41.136646, 35.597931, 14.826385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731289, 36.343292, 14.718580>,  <40.544174, 35.618912, 14.454177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731289, 36.343292, 14.718580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066792, 36.125629, 14.710868>,  <41.268093, 35.995033, 14.706241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066792, 36.125629, 14.710868>,  <40.731289, 36.343292, 14.718580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066792, 36.125629, 14.710868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470246, 0.741776, -0.478160,
		0.274497, 0.391995, 0.878061,
		0.838761, -0.544158, -0.019281,
		41.318420, 35.962383, 14.705084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271217, 36.812954, 14.926462>,  <40.731289, 36.343292, 14.718580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271217, 36.812954, 14.926462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.463955, 36.537865, 14.709258>,  <41.579597, 36.372810, 14.578936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.463955, 36.537865, 14.709258>,  <41.271217, 36.812954, 14.926462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463955, 36.537865, 14.709258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577204, 0.715360, -0.393822,
		0.659289, -0.123667, 0.741650,
		0.481844, -0.687726, -0.543010,
		41.608509, 36.331547, 14.546355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890411, 36.990665, 14.923606>,  <41.271217, 36.812954, 14.926462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890411, 36.990665, 14.923606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.948853, 36.739231, 14.618049>,  <41.983917, 36.588371, 14.434714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.948853, 36.739231, 14.618049>,  <41.890411, 36.990665, 14.923606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948853, 36.739231, 14.618049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556862, 0.690480, -0.461673,
		0.817654, -0.357931, 0.450918,
		0.146102, -0.628588, -0.763892,
		41.992683, 36.550655, 14.388881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558422, 36.977856, 14.778521>,  <41.890411, 36.990665, 14.923606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558422, 36.977856, 14.778521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.406368, 36.856739, 14.428935>,  <42.315136, 36.784069, 14.219184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.406368, 36.856739, 14.428935>,  <42.558422, 36.977856, 14.778521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406368, 36.856739, 14.428935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645483, 0.589910, -0.485136,
		0.662458, -0.748545, -0.028795,
		-0.380133, -0.302796, -0.873964,
		42.292328, 36.765900, 14.166746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.170906, 31.061886, 32.927780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.425867, 31.369469, 32.947475>,  <28.578844, 31.554018, 32.959293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.425867, 31.369469, 32.947475>,  <28.170906, 31.061886, 32.927780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425867, 31.369469, 32.947475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425312, -0.404399, 0.809674,
		0.642517, -0.495144, -0.584811,
		0.637402, 0.768956, 0.049242,
		28.617088, 31.600155, 32.962250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948139, 30.789129, 33.014141>,  <28.170906, 31.061886, 32.927780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948139, 30.789129, 33.014141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.933313, 31.158611, 33.166664>,  <28.924417, 31.380301, 33.258179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.933313, 31.158611, 33.166664>,  <28.948139, 30.789129, 33.014141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933313, 31.158611, 33.166664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387750, -0.338381, 0.857408,
		0.921019, 0.179631, -0.345625,
		-0.037064, 0.923705, 0.381307,
		28.922194, 31.435722, 33.281055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574089, 30.829319, 33.356598>,  <28.948139, 30.789129, 33.014141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574089, 30.829319, 33.356598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.342155, 31.120041, 33.503868>,  <29.202995, 31.294474, 33.592228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.342155, 31.120041, 33.503868>,  <29.574089, 30.829319, 33.356598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342155, 31.120041, 33.503868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372002, -0.165865, 0.913293,
		0.724851, 0.666518, -0.174199,
		-0.579832, 0.726803, 0.368173,
		29.168205, 31.338081, 33.614319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899986, 30.948235, 33.887348>,  <29.574089, 30.829319, 33.356598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899986, 30.948235, 33.887348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561199, 31.138630, 33.982071>,  <29.357927, 31.252867, 34.038906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561199, 31.138630, 33.982071>,  <29.899986, 30.948235, 33.887348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561199, 31.138630, 33.982071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256812, -0.023716, 0.966171,
		0.465503, 0.879131, -0.102152,
		-0.846968, 0.475989, 0.236811,
		29.307108, 31.281427, 34.053116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159466, 31.394253, 34.394245>,  <29.899986, 30.948235, 33.887348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159466, 31.394253, 34.394245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761063, 31.363964, 34.413166>,  <29.522020, 31.345791, 34.424519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761063, 31.363964, 34.413166>,  <30.159466, 31.394253, 34.394245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761063, 31.363964, 34.413166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045672, 0.023065, 0.998690,
		-0.076715, 0.996862, -0.019515,
		-0.996006, -0.075724, 0.047298,
		29.462261, 31.341248, 34.427357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976011, 31.733707, 35.028976>,  <30.159466, 31.394253, 34.394245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976011, 31.733707, 35.028976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659286, 31.500862, 34.955021>,  <29.469252, 31.361156, 34.910648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659286, 31.500862, 34.955021>,  <29.976011, 31.733707, 35.028976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659286, 31.500862, 34.955021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066987, -0.218116, 0.973621,
		-0.607082, 0.783308, 0.133713,
		-0.791811, -0.582111, -0.184886,
		29.421743, 31.326229, 34.899555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441507, 31.933939, 35.541313>,  <29.976011, 31.733707, 35.028976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441507, 31.933939, 35.541313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.327246, 31.569656, 35.421974>,  <29.258688, 31.351088, 35.350368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.327246, 31.569656, 35.421974>,  <29.441507, 31.933939, 35.541313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327246, 31.569656, 35.421974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239932, -0.233445, 0.942304,
		-0.927811, 0.340758, -0.151822,
		-0.285656, -0.910707, -0.298351,
		29.241549, 31.296444, 35.332470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887222, 31.860458, 35.886864>,  <29.441507, 31.933939, 35.541313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887222, 31.860458, 35.886864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.047407, 31.508461, 35.784695>,  <29.143518, 31.297262, 35.723392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.047407, 31.508461, 35.784695>,  <28.887222, 31.860458, 35.886864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047407, 31.508461, 35.784695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313274, -0.393441, 0.864328,
		-0.861098, -0.266113, -0.433238,
		0.400463, -0.879993, -0.255425,
		29.167545, 31.244463, 35.708069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342585, 31.396851, 36.075260>,  <28.887222, 31.860458, 35.886864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342585, 31.396851, 36.075260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.687998, 31.197578, 36.043957>,  <28.895247, 31.078014, 36.025177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.687998, 31.197578, 36.043957>,  <28.342585, 31.396851, 36.075260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687998, 31.197578, 36.043957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195270, -0.473401, 0.858930,
		-0.464953, -0.726433, -0.506077,
		0.863532, -0.498184, -0.078259,
		28.947058, 31.048124, 36.020481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182840, 30.685509, 36.257244>,  <28.342585, 31.396851, 36.075260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182840, 30.685509, 36.257244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.576086, 30.719154, 36.322247>,  <28.812035, 30.739342, 36.361248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.576086, 30.719154, 36.322247>,  <28.182840, 30.685509, 36.257244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576086, 30.719154, 36.322247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109565, -0.440672, 0.890956,
		0.146553, -0.893718, -0.424016,
		0.983117, 0.084115, 0.162502,
		28.871021, 30.744389, 36.370998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333429, 30.024834, 36.473225>,  <28.182840, 30.685509, 36.257244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333429, 30.024834, 36.473225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.618374, 30.264168, 36.619942>,  <28.789341, 30.407768, 36.707973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.618374, 30.264168, 36.619942>,  <28.333429, 30.024834, 36.473225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618374, 30.264168, 36.619942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050414, -0.477660, 0.877097,
		0.700001, -0.643301, -0.310102,
		0.712360, 0.598335, 0.366794,
		28.832083, 30.443668, 36.729980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683893, 29.617956, 36.849495>,  <28.333429, 30.024834, 36.473225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683893, 29.617956, 36.849495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.827372, 29.965889, 36.984982>,  <28.913460, 30.174648, 37.066273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.827372, 29.965889, 36.984982>,  <28.683893, 29.617956, 36.849495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827372, 29.965889, 36.984982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014177, -0.357743, 0.933713,
		0.933346, -0.339722, -0.115990,
		0.358697, 0.869833, 0.338714,
		28.934980, 30.226839, 37.086597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254913, 29.139990, 37.320721>,  <28.683893, 29.617956, 36.849495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254913, 29.139990, 37.320721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.110493, 29.248608, 37.677574>,  <28.023840, 29.313778, 37.891685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.110493, 29.248608, 37.677574>,  <28.254913, 29.139990, 37.320721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110493, 29.248608, 37.677574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931106, -0.051815, -0.361050,
		-0.051815, -0.961030, 0.271545,
		0.361050, -0.271545, -0.892136,
		28.002178, 29.330070, 37.945213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490152, 28.876631, 37.323082>,  <28.254913, 29.139990, 37.320721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490152, 28.876631, 37.323082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.482050, 29.131260, 37.631462>,  <27.477188, 29.284037, 37.816490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.482050, 29.131260, 37.631462>,  <27.490152, 28.876631, 37.323082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482050, 29.131260, 37.631462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989094, 0.099760, -0.108357,
		-0.145887, -0.764737, 0.627610,
		-0.020254, 0.636574, 0.770950,
		27.475973, 29.322231, 37.862747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006556, 28.536539, 36.774567>,  <27.490152, 28.876631, 37.323082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006556, 28.536539, 36.774567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.887415, 28.162109, 36.699684>,  <26.815929, 27.937450, 36.654755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.887415, 28.162109, 36.699684>,  <27.006556, 28.536539, 36.774567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887415, 28.162109, 36.699684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077755, 0.219246, -0.972567,
		0.951440, -0.275126, -0.138087,
		-0.297853, -0.936076, -0.187207,
		26.798059, 27.881287, 36.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347422, 28.401627, 36.161705>,  <27.006556, 28.536539, 36.774567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347422, 28.401627, 36.161705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.042702, 28.145096, 36.198273>,  <26.859869, 27.991177, 36.220215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.042702, 28.145096, 36.198273>,  <27.347422, 28.401627, 36.161705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042702, 28.145096, 36.198273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190398, 0.086767, -0.977865,
		0.619200, -0.762345, -0.188207,
		-0.761800, -0.641328, 0.091423,
		26.814161, 27.952698, 36.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539345, 27.804571, 35.743771>,  <27.347422, 28.401627, 36.161705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539345, 27.804571, 35.743771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.140392, 27.808651, 35.772423>,  <26.901022, 27.811100, 35.789612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.140392, 27.808651, 35.772423>,  <27.539345, 27.804571, 35.743771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140392, 27.808651, 35.772423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067585, 0.221924, -0.972719,
		-0.025819, -0.975011, -0.220653,
		-0.997380, 0.010202, 0.071626,
		26.841179, 27.811712, 35.793911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287767, 27.530058, 35.158417>,  <27.539345, 27.804571, 35.743771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287767, 27.530058, 35.158417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.960581, 27.726643, 35.278011>,  <26.764269, 27.844593, 35.349770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.960581, 27.726643, 35.278011>,  <27.287767, 27.530058, 35.158417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960581, 27.726643, 35.278011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203281, 0.239273, -0.949434,
		-0.538152, -0.837384, -0.095812,
		-0.817967, 0.491463, 0.298990,
		26.715191, 27.874081, 35.367710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725817, 27.326880, 34.664692>,  <27.287767, 27.530058, 35.158417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725817, 27.326880, 34.664692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.590170, 27.657265, 34.844818>,  <26.508781, 27.855495, 34.952892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.590170, 27.657265, 34.844818>,  <26.725817, 27.326880, 34.664692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590170, 27.657265, 34.844818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245292, 0.384489, -0.889944,
		-0.908202, -0.412255, 0.072214,
		-0.339119, 0.825962, 0.450317,
		26.488434, 27.905054, 34.979912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187147, 27.545074, 34.258442>,  <26.725817, 27.326880, 34.664692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187147, 27.545074, 34.258442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.315771, 27.886982, 34.421398>,  <26.392946, 28.092127, 34.519173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.315771, 27.886982, 34.421398>,  <26.187147, 27.545074, 34.258442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315771, 27.886982, 34.421398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167531, 0.474811, -0.863995,
		-0.931950, 0.209577, 0.295882,
		0.321562, 0.854770, 0.407390,
		26.412239, 28.143414, 34.543613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857841, 28.043457, 33.924988>,  <26.187147, 27.545074, 34.258442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857841, 28.043457, 33.924988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.113066, 28.280151, 34.122055>,  <26.266201, 28.422169, 34.240295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.113066, 28.280151, 34.122055>,  <25.857841, 28.043457, 33.924988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113066, 28.280151, 34.122055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050916, 0.606021, -0.793817,
		-0.768299, 0.531590, 0.356550,
		0.638063, 0.591735, 0.492672,
		26.304485, 28.457672, 34.269855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642591, 28.753153, 33.901695>,  <25.857841, 28.043457, 33.924988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642591, 28.753153, 33.901695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.031689, 28.807465, 33.976883>,  <26.265148, 28.840052, 34.021996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.031689, 28.807465, 33.976883>,  <25.642591, 28.753153, 33.901695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031689, 28.807465, 33.976883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023271, 0.749380, -0.661731,
		-0.230710, 0.648070, 0.725795,
		0.972744, 0.135778, 0.187970,
		26.323511, 28.848198, 34.033276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724264, 29.510239, 34.118893>,  <25.642591, 28.753153, 33.901695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724264, 29.510239, 34.118893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.072721, 29.347725, 34.008587>,  <26.281796, 29.250217, 33.942406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.072721, 29.347725, 34.008587>,  <25.724264, 29.510239, 34.118893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072721, 29.347725, 34.008587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105744, 0.703645, -0.702639,
		0.479508, 0.582939, 0.655937,
		0.871143, -0.406283, -0.275761,
		26.334064, 29.225840, 33.925858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163876, 30.126034, 34.058533>,  <25.724264, 29.510239, 34.118893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163876, 30.126034, 34.058533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.316572, 29.845226, 33.818050>,  <26.408190, 29.676741, 33.673763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.316572, 29.845226, 33.818050>,  <26.163876, 30.126034, 34.058533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316572, 29.845226, 33.818050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212465, 0.699693, -0.682121,
		0.899519, 0.132658, 0.416255,
		0.381739, -0.702020, -0.601202,
		26.431093, 29.634621, 33.637691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763000, 30.404448, 33.907684>,  <26.163876, 30.126034, 34.058533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763000, 30.404448, 33.907684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.732332, 30.137970, 33.610954>,  <26.713930, 29.978085, 33.432915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.732332, 30.137970, 33.610954>,  <26.763000, 30.404448, 33.907684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732332, 30.137970, 33.610954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342838, 0.681036, -0.647034,
		0.936260, -0.303936, 0.176180,
		-0.076672, -0.666193, -0.741828,
		26.709332, 29.938112, 33.388405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387390, 30.460592, 33.549423>,  <26.763000, 30.404448, 33.907684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387390, 30.460592, 33.549423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.159601, 30.251156, 33.295948>,  <27.022928, 30.125494, 33.143864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.159601, 30.251156, 33.295948>,  <27.387390, 30.460592, 33.549423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159601, 30.251156, 33.295948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391696, 0.504903, -0.769186,
		0.722687, -0.686241, -0.082440,
		-0.569472, -0.523589, -0.633685,
		26.988760, 30.094080, 33.105843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795872, 30.249199, 32.947262>,  <27.387390, 30.460592, 33.549423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795872, 30.249199, 32.947262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.429090, 30.217663, 32.790810>,  <27.209023, 30.198742, 32.696938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.429090, 30.217663, 32.790810>,  <27.795872, 30.249199, 32.947262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429090, 30.217663, 32.790810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340993, 0.354162, -0.870800,
		0.207175, -0.931855, -0.297866,
		-0.916953, -0.078838, -0.391129,
		27.154005, 30.194012, 32.673470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815964, 29.884163, 32.330578>,  <27.795872, 30.249199, 32.947262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815964, 29.884163, 32.330578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.461168, 30.066776, 32.302792>,  <27.248291, 30.176344, 32.286121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.461168, 30.066776, 32.302792>,  <27.815964, 29.884163, 32.330578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461168, 30.066776, 32.302792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320976, 0.501357, -0.803502,
		-0.332000, -0.734994, -0.591236,
		-0.886990, 0.456535, -0.069465,
		27.195072, 30.203737, 32.281952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045019, 29.208944, 31.859600>,  <27.815964, 29.884163, 32.330578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045019, 29.208944, 31.859600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.444221, 29.205853, 31.834534>,  <28.683743, 29.203999, 31.819494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.444221, 29.205853, 31.834534>,  <28.045019, 29.208944, 31.859600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444221, 29.205853, 31.834534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046891, -0.573971, 0.817532,
		-0.042287, -0.818839, -0.572464,
		0.998004, -0.007728, -0.062667,
		28.743624, 29.203535, 31.815733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187582, 28.571009, 31.972616>,  <28.045019, 29.208944, 31.859600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187582, 28.571009, 31.972616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.520250, 28.778526, 32.051788>,  <28.719852, 28.903036, 32.099293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.520250, 28.778526, 32.051788>,  <28.187582, 28.571009, 31.972616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520250, 28.778526, 32.051788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161216, -0.566708, 0.807992,
		0.531349, -0.640075, -0.554953,
		0.831672, 0.518793, 0.197929,
		28.769753, 28.934164, 32.111168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729658, 28.118256, 32.058002>,  <28.187582, 28.571009, 31.972616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729658, 28.118256, 32.058002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.814798, 28.454388, 32.257416>,  <28.865883, 28.656067, 32.377064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.814798, 28.454388, 32.257416>,  <28.729658, 28.118256, 32.058002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814798, 28.454388, 32.257416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230768, -0.539029, 0.810058,
		0.949443, -0.057374, -0.308653,
		0.212849, 0.840331, 0.498537,
		28.878653, 28.706488, 32.406979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286793, 27.871744, 32.478844>,  <28.729658, 28.118256, 32.058002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286793, 27.871744, 32.478844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.213564, 28.230736, 32.639351>,  <29.169626, 28.446131, 32.735657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.213564, 28.230736, 32.639351>,  <29.286793, 27.871744, 32.478844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213564, 28.230736, 32.639351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182304, -0.370097, 0.910930,
		0.966048, 0.239920, -0.095858,
		-0.183073, 0.897478, 0.401270,
		29.158642, 28.499979, 32.759731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854485, 28.056459, 32.898445>,  <29.286793, 27.871744, 32.478844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854485, 28.056459, 32.898445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.537664, 28.243320, 33.055634>,  <29.347572, 28.355436, 33.149948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.537664, 28.243320, 33.055634>,  <29.854485, 28.056459, 32.898445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537664, 28.243320, 33.055634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248230, -0.341648, 0.906454,
		0.557710, 0.815503, 0.154641,
		-0.792049, 0.467152, 0.392973,
		29.300049, 28.383467, 33.173527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116053, 28.327633, 33.410954>,  <29.854485, 28.056459, 32.898445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116053, 28.327633, 33.410954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728699, 28.334965, 33.510471>,  <29.496286, 28.339363, 33.570183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728699, 28.334965, 33.510471>,  <30.116053, 28.327633, 33.410954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728699, 28.334965, 33.510471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239878, -0.205476, 0.948809,
		0.068511, 0.978491, 0.194582,
		-0.968382, 0.018328, 0.248796,
		29.438185, 28.340464, 33.585110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078300, 28.699522, 34.025166>,  <30.116053, 28.327633, 33.410954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078300, 28.699522, 34.025166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.732235, 28.499138, 34.015911>,  <29.524595, 28.378908, 34.010361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.732235, 28.499138, 34.015911>,  <30.078300, 28.699522, 34.025166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732235, 28.499138, 34.015911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185197, -0.362025, 0.913586,
		-0.466044, 0.786116, 0.405986,
		-0.865162, -0.500959, -0.023134,
		29.472687, 28.348850, 34.008972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444450, 29.283701, 34.259140>,  <30.078300, 28.699522, 34.025166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444450, 29.283701, 34.259140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.822615, 29.345127, 34.374115>,  <31.049513, 29.381983, 34.443100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.822615, 29.345127, 34.374115>,  <30.444450, 29.283701, 34.259140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822615, 29.345127, 34.374115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135892, 0.615906, -0.776011,
		-0.296202, 0.772708, 0.561415,
		0.945409, 0.153564, 0.287438,
		31.106237, 29.391197, 34.460346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575924, 30.067629, 34.200928>,  <30.444450, 29.283701, 34.259140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575924, 30.067629, 34.200928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943060, 29.908859, 34.199219>,  <31.163342, 29.813597, 34.198193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943060, 29.908859, 34.199219>,  <30.575924, 30.067629, 34.200928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943060, 29.908859, 34.199219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194402, 0.458862, -0.866980,
		0.346085, 0.794919, 0.498325,
		0.917842, -0.396924, -0.004272,
		31.218412, 29.789782, 34.197937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047157, 30.679569, 34.055229>,  <30.575924, 30.067629, 34.200928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047157, 30.679569, 34.055229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257488, 30.355816, 33.950615>,  <31.383688, 30.161564, 33.887844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257488, 30.355816, 33.950615>,  <31.047157, 30.679569, 34.055229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257488, 30.355816, 33.950615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338207, 0.481076, -0.808815,
		0.780461, 0.336845, 0.526703,
		0.525830, -0.809383, -0.261537,
		31.415237, 30.113001, 33.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764357, 30.880678, 33.858414>,  <31.047157, 30.679569, 34.055229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764357, 30.880678, 33.858414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682459, 30.540848, 33.663971>,  <31.633320, 30.336950, 33.547306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682459, 30.540848, 33.663971>,  <31.764357, 30.880678, 33.858414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682459, 30.540848, 33.663971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326196, 0.409019, -0.852232,
		0.922864, -0.333054, 0.193384,
		-0.204742, -0.849575, -0.486110,
		31.621037, 30.285975, 33.518139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281342, 30.838316, 33.515865>,  <31.764357, 30.880678, 33.858414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281342, 30.838316, 33.515865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058567, 30.569378, 33.320820>,  <31.924902, 30.408014, 33.203793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058567, 30.569378, 33.320820>,  <32.281342, 30.838316, 33.515865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058567, 30.569378, 33.320820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456715, 0.242445, -0.855939,
		0.693707, -0.699409, 0.172043,
		-0.556940, -0.672346, -0.487616,
		31.891485, 30.367674, 33.174534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733616, 30.630606, 32.896259>,  <32.281342, 30.838316, 33.515865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733616, 30.630606, 32.896259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364960, 30.520493, 32.786865>,  <32.143764, 30.454424, 32.721230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364960, 30.520493, 32.786865>,  <32.733616, 30.630606, 32.896259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364960, 30.520493, 32.786865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231542, 0.175427, -0.956877,
		0.311390, -0.945222, -0.097941,
		-0.921642, -0.275285, -0.273484,
		32.088467, 30.437908, 32.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813725, 30.173409, 32.397919>,  <32.733616, 30.630606, 32.896259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813725, 30.173409, 32.397919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429729, 30.270218, 32.341557>,  <32.199333, 30.328304, 32.307739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429729, 30.270218, 32.341557>,  <32.813725, 30.173409, 32.397919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429729, 30.270218, 32.341557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166258, 0.087630, -0.982181,
		-0.225365, -0.966305, -0.124362,
		-0.959984, 0.242025, -0.140907,
		32.141735, 30.342825, 32.299286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.960154, 33.130604, 38.027035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.676550, 32.848526, 38.028034>,  <30.506388, 32.679279, 38.028633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.676550, 32.848526, 38.028034>,  <30.960154, 33.130604, 38.027035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676550, 32.848526, 38.028034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300109, 0.298527, -0.905989,
		0.638153, -0.643105, -0.423294,
		-0.709011, -0.705194, 0.002496,
		30.463846, 32.636967, 38.028782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065300, 32.594372, 37.548954>,  <30.960154, 33.130604, 38.027035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065300, 32.594372, 37.548954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.672945, 32.659348, 37.591801>,  <30.437532, 32.698334, 37.617508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.672945, 32.659348, 37.591801>,  <31.065300, 32.594372, 37.548954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672945, 32.659348, 37.591801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056013, 0.291503, -0.954929,
		-0.186344, -0.942677, -0.276833,
		-0.980887, 0.162439, 0.107122,
		30.378679, 32.708080, 37.623936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787592, 32.280010, 37.033749>,  <31.065300, 32.594372, 37.548954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787592, 32.280010, 37.033749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.514833, 32.544670, 37.158478>,  <30.351177, 32.703468, 37.233315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.514833, 32.544670, 37.158478>,  <30.787592, 32.280010, 37.033749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514833, 32.544670, 37.158478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184802, 0.256630, -0.948678,
		-0.707718, -0.704525, -0.052720,
		-0.681897, 0.661653, 0.311820,
		30.310265, 32.743168, 37.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163185, 32.083481, 36.743141>,  <30.787592, 32.280010, 37.033749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163185, 32.083481, 36.743141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.177027, 32.478149, 36.806747>,  <30.185331, 32.714951, 36.844910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.177027, 32.478149, 36.806747>,  <30.163185, 32.083481, 36.743141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177027, 32.478149, 36.806747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091116, 0.161558, -0.982648,
		-0.995239, 0.019514, 0.095491,
		0.034603, 0.986670, 0.159011,
		30.187407, 32.774151, 36.854450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778439, 32.367218, 36.232800>,  <30.163185, 32.083481, 36.743141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778439, 32.367218, 36.232800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946539, 32.698967, 36.380058>,  <30.047400, 32.898018, 36.468414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946539, 32.698967, 36.380058>,  <29.778439, 32.367218, 36.232800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946539, 32.698967, 36.380058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021207, 0.414577, -0.909767,
		-0.907161, 0.374521, 0.191814,
		0.420249, 0.829373, 0.368146,
		30.072613, 32.947781, 36.490501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383039, 32.868282, 35.925900>,  <29.778439, 32.367218, 36.232800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383039, 32.868282, 35.925900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.718760, 33.044323, 36.053577>,  <29.920191, 33.149948, 36.130184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.718760, 33.044323, 36.053577>,  <29.383039, 32.868282, 35.925900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718760, 33.044323, 36.053577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023964, 0.616483, -0.787004,
		-0.543141, 0.652883, 0.527960,
		0.839299, 0.440106, 0.319191,
		29.970549, 33.176353, 36.149334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276035, 33.510098, 35.885311>,  <29.383039, 32.868282, 35.925900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276035, 33.510098, 35.885311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676022, 33.506813, 35.885181>,  <29.916014, 33.504841, 35.885105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676022, 33.506813, 35.885181>,  <29.276035, 33.510098, 35.885311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676022, 33.506813, 35.885181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003858, 0.503785, -0.863821,
		0.007260, 0.863790, 0.503799,
		0.999966, -0.008215, -0.000325,
		29.976011, 33.504349, 35.885082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456463, 34.197464, 35.571247>,  <29.276035, 33.510098, 35.885311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456463, 34.197464, 35.571247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.791353, 33.980938, 35.540169>,  <29.992287, 33.851025, 35.521523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.791353, 33.980938, 35.540169>,  <29.456463, 34.197464, 35.571247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791353, 33.980938, 35.540169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181691, 0.409347, -0.894105,
		0.515792, 0.734451, 0.441067,
		0.837226, -0.541310, -0.077695,
		30.042521, 33.818546, 35.516861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003723, 34.622532, 35.338505>,  <29.456463, 34.197464, 35.571247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003723, 34.622532, 35.338505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.126112, 34.253590, 35.244152>,  <30.199545, 34.032223, 35.187538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.126112, 34.253590, 35.244152>,  <30.003723, 34.622532, 35.338505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126112, 34.253590, 35.244152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299537, 0.328448, -0.895767,
		0.903692, 0.203423, 0.376776,
		0.305971, -0.922356, -0.235883,
		30.217903, 33.976883, 35.173386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706095, 34.771187, 35.017242>,  <30.003723, 34.622532, 35.338505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706095, 34.771187, 35.017242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.555622, 34.416012, 34.911373>,  <30.465338, 34.202908, 34.847851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.555622, 34.416012, 34.911373>,  <30.706095, 34.771187, 35.017242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555622, 34.416012, 34.911373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311970, 0.147593, -0.938558,
		0.872446, -0.435640, 0.221488,
		-0.376183, -0.887938, -0.264673,
		30.442768, 34.149632, 34.831970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166458, 34.453468, 34.639523>,  <30.706095, 34.771187, 35.017242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166458, 34.453468, 34.639523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846464, 34.251575, 34.509743>,  <30.654469, 34.130440, 34.431873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846464, 34.251575, 34.509743>,  <31.166458, 34.453468, 34.639523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846464, 34.251575, 34.509743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256471, 0.201205, -0.945378,
		0.542446, -0.839499, -0.031511,
		-0.799984, -0.504735, -0.324450,
		30.606468, 34.100155, 34.412407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343584, 34.004314, 34.153191>,  <31.166458, 34.453468, 34.639523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343584, 34.004314, 34.153191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.950060, 34.030571, 34.086487>,  <30.713945, 34.046326, 34.046467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.950060, 34.030571, 34.086487>,  <31.343584, 34.004314, 34.153191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950060, 34.030571, 34.086487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176218, 0.184982, -0.966814,
		-0.032616, -0.980547, -0.193554,
		-0.983811, 0.065641, -0.166757,
		30.654917, 34.050262, 34.036461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676819, 33.315147, 33.819534>,  <31.343584, 34.004314, 34.153191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676819, 33.315147, 33.819534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.071774, 33.251823, 33.820354>,  <32.308746, 33.213829, 33.820847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.071774, 33.251823, 33.820354>,  <31.676819, 33.315147, 33.819534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071774, 33.251823, 33.820354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089531, -0.547669, 0.831891,
		-0.130574, -0.821582, -0.554935,
		0.987388, -0.158308, 0.002046,
		32.367989, 33.204330, 33.820969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740551, 32.706951, 33.935047>,  <31.676819, 33.315147, 33.819534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740551, 32.706951, 33.935047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.105541, 32.831722, 34.040951>,  <32.324535, 32.906586, 34.104492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.105541, 32.831722, 34.040951>,  <31.740551, 32.706951, 33.935047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105541, 32.831722, 34.040951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017410, -0.616921, 0.786833,
		0.408765, -0.722574, -0.557494,
		0.912474, 0.311924, 0.264755,
		32.379284, 32.925301, 34.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970539, 32.073479, 34.086617>,  <31.740551, 32.706951, 33.935047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970539, 32.073479, 34.086617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205921, 32.345802, 34.261074>,  <32.347149, 32.509197, 34.365749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205921, 32.345802, 34.261074>,  <31.970539, 32.073479, 34.086617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205921, 32.345802, 34.261074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055754, -0.503973, 0.861918,
		0.806606, -0.531516, -0.258608,
		0.588455, 0.680810, 0.436141,
		32.382458, 32.550045, 34.391918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510788, 31.646891, 34.344154>,  <31.970539, 32.073479, 34.086617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510788, 31.646891, 34.344154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.522823, 32.001522, 34.528793>,  <32.530045, 32.214302, 34.639576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.522823, 32.001522, 34.528793>,  <32.510788, 31.646891, 34.344154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522823, 32.001522, 34.528793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145424, -0.460774, 0.875522,
		0.988912, 0.040782, -0.142795,
		0.030091, 0.886580, 0.461596,
		32.531849, 32.267494, 34.667271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073273, 31.670406, 34.714420>,  <32.510788, 31.646891, 34.344154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073273, 31.670406, 34.714420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876663, 31.960297, 34.907574>,  <32.758698, 32.134232, 35.023468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876663, 31.960297, 34.907574>,  <33.073273, 31.670406, 34.714420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876663, 31.960297, 34.907574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196201, -0.448081, 0.872197,
		0.848475, 0.523448, 0.078050,
		-0.491523, 0.724724, 0.482887,
		32.729206, 32.177715, 35.052441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436485, 31.736649, 35.376904>,  <33.073273, 31.670406, 34.714420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436485, 31.736649, 35.376904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102772, 31.944363, 35.451008>,  <32.902546, 32.068993, 35.495468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102772, 31.944363, 35.451008>,  <33.436485, 31.736649, 35.376904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102772, 31.944363, 35.451008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020900, -0.305987, 0.951806,
		0.550945, 0.797945, 0.244426,
		-0.834280, 0.519284, 0.185259,
		32.852489, 32.100147, 35.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534157, 32.115196, 36.058239>,  <33.436485, 31.736649, 35.376904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534157, 32.115196, 36.058239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144180, 32.060848, 35.987770>,  <32.910194, 32.028240, 35.945488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144180, 32.060848, 35.987770>,  <33.534157, 32.115196, 36.058239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144180, 32.060848, 35.987770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099706, -0.441048, 0.891928,
		-0.198882, 0.887140, 0.416448,
		-0.974938, -0.135866, -0.176170,
		32.851700, 32.020088, 35.934917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319241, 32.526337, 36.546310>,  <33.534157, 32.115196, 36.058239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319241, 32.526337, 36.546310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.010006, 32.286594, 36.463253>,  <32.824467, 32.142750, 36.413418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.010006, 32.286594, 36.463253>,  <33.319241, 32.526337, 36.546310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010006, 32.286594, 36.463253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023985, -0.299496, 0.953796,
		-0.633846, 0.742347, 0.217161,
		-0.773087, -0.599351, -0.207640,
		32.778080, 32.106789, 36.400963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986546, 32.465168, 37.160156>,  <33.319241, 32.526337, 36.546310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986546, 32.465168, 37.160156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840103, 32.158020, 36.949883>,  <32.752235, 31.973732, 36.823719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840103, 32.158020, 36.949883>,  <32.986546, 32.465168, 37.160156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840103, 32.158020, 36.949883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184186, -0.493935, 0.849767,
		-0.912162, 0.407932, 0.039405,
		-0.366110, -0.767867, -0.525684,
		32.730270, 31.927660, 36.792179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324158, 32.236195, 37.491199>,  <32.986546, 32.465168, 37.160156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324158, 32.236195, 37.491199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.431797, 31.920486, 37.270424>,  <32.496380, 31.731060, 37.137959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.431797, 31.920486, 37.270424>,  <32.324158, 32.236195, 37.491199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431797, 31.920486, 37.270424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105901, -0.593850, 0.797576,
		-0.957274, -0.156172, -0.243386,
		0.269094, -0.789274, -0.551938,
		32.512524, 31.683704, 37.104843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742340, 31.738758, 37.520416>,  <32.324158, 32.236195, 37.491199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742340, 31.738758, 37.520416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.087688, 31.569218, 37.410915>,  <32.294899, 31.467493, 37.345215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.087688, 31.569218, 37.410915>,  <31.742340, 31.738758, 37.520416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087688, 31.569218, 37.410915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118540, -0.697750, 0.706465,
		-0.490450, -0.577490, -0.652659,
		0.863370, -0.423852, -0.273756,
		32.346699, 31.442062, 37.328789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589731, 30.995806, 37.320312>,  <31.742340, 31.738758, 37.520416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589731, 30.995806, 37.320312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.972700, 31.045738, 37.424435>,  <32.202480, 31.075697, 37.486908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.972700, 31.045738, 37.424435>,  <31.589731, 30.995806, 37.320312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972700, 31.045738, 37.424435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091029, -0.725145, 0.682553,
		0.273963, -0.677187, -0.682907,
		0.957423, 0.124829, 0.260306,
		32.259926, 31.083187, 37.502525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888901, 30.349726, 37.307213>,  <31.589731, 30.995806, 37.320312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888901, 30.349726, 37.307213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.122799, 30.564461, 37.550484>,  <32.263138, 30.693302, 37.696445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.122799, 30.564461, 37.550484>,  <31.888901, 30.349726, 37.307213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122799, 30.564461, 37.550484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184848, -0.641811, 0.744251,
		0.789876, -0.547618, -0.276063,
		0.584746, 0.536836, 0.608178,
		32.298222, 30.725512, 37.732937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274281, 29.870964, 37.770432>,  <31.888901, 30.349726, 37.307213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274281, 29.870964, 37.770432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.320370, 30.226997, 37.946831>,  <32.348022, 30.440617, 38.052670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.320370, 30.226997, 37.946831>,  <32.274281, 29.870964, 37.770432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320370, 30.226997, 37.946831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251683, -0.403310, 0.879771,
		0.960927, -0.212358, 0.177550,
		0.115219, 0.890081, 0.440998,
		32.354935, 30.494022, 38.079132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085964, 29.231493, 37.396843>,  <32.274281, 29.870964, 37.770432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085964, 29.231493, 37.396843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.030132, 28.875362, 37.223480>,  <31.996634, 28.661684, 37.119465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.030132, 28.875362, 37.223480>,  <32.085964, 29.231493, 37.396843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030132, 28.875362, 37.223480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280049, 0.455313, -0.845141,
		0.949784, 0.003410, -0.312887,
		-0.139580, -0.890325, -0.433404,
		31.988258, 28.608265, 37.093460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378719, 29.271780, 36.738277>,  <32.085964, 29.231493, 37.396843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378719, 29.271780, 36.738277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115627, 28.970490, 36.735733>,  <31.957773, 28.789715, 36.734207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115627, 28.970490, 36.735733>,  <32.378719, 29.271780, 36.738277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115627, 28.970490, 36.735733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268685, 0.242489, -0.932206,
		0.703706, -0.611429, -0.361874,
		-0.657728, -0.753228, -0.006359,
		31.918308, 28.744520, 36.733826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547302, 28.835583, 36.197735>,  <32.378719, 29.271780, 36.738277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547302, 28.835583, 36.197735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.157372, 28.788799, 36.273670>,  <31.923414, 28.760729, 36.319233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.157372, 28.788799, 36.273670>,  <32.547302, 28.835583, 36.197735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157372, 28.788799, 36.273670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195603, 0.039822, -0.979874,
		0.107053, -0.992337, -0.061698,
		-0.974823, -0.116967, 0.189841,
		31.864925, 28.753712, 36.330624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280148, 28.476801, 35.560062>,  <32.547302, 28.835583, 36.197735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280148, 28.476801, 35.560062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945730, 28.597263, 35.743511>,  <31.745079, 28.669540, 35.853580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945730, 28.597263, 35.743511>,  <32.280148, 28.476801, 35.560062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945730, 28.597263, 35.743511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337783, 0.376176, -0.862783,
		-0.432355, -0.876240, -0.212775,
		-0.836045, 0.301156, 0.458621,
		31.694916, 28.687611, 35.881096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841097, 28.088907, 35.249626>,  <32.280148, 28.476801, 35.560062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841097, 28.088907, 35.249626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.659689, 28.409351, 35.405853>,  <31.550844, 28.601618, 35.499588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.659689, 28.409351, 35.405853>,  <31.841097, 28.088907, 35.249626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659689, 28.409351, 35.405853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281851, 0.286818, -0.915585,
		-0.845507, -0.525316, 0.095717,
		-0.453518, 0.801111, 0.390567,
		31.523634, 28.649685, 35.523022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164347, 28.165281, 34.882618>,  <31.841097, 28.088907, 35.249626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164347, 28.165281, 34.882618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254288, 28.523193, 35.036919>,  <31.308252, 28.737942, 35.129501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254288, 28.523193, 35.036919>,  <31.164347, 28.165281, 34.882618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254288, 28.523193, 35.036919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291981, 0.439572, -0.849425,
		-0.929618, 0.078361, 0.360098,
		0.224851, 0.894782, 0.385754,
		31.321743, 28.791628, 35.152645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671984, 28.563255, 34.638012>,  <31.164347, 28.165281, 34.882618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671984, 28.563255, 34.638012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954872, 28.826645, 34.740967>,  <31.124605, 28.984678, 34.802742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954872, 28.826645, 34.740967>,  <30.671984, 28.563255, 34.638012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954872, 28.826645, 34.740967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271512, 0.589107, -0.761074,
		-0.652778, 0.468363, 0.595413,
		0.707221, 0.658475, 0.257390,
		31.167038, 29.024187, 34.818184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909790, 28.641407, 34.726669>,  <30.671984, 28.563255, 34.638012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909790, 28.641407, 34.726669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.621269, 28.401691, 34.587772>,  <29.448156, 28.257862, 34.504436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.621269, 28.401691, 34.587772>,  <29.909790, 28.641407, 34.726669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621269, 28.401691, 34.587772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113979, -0.391803, 0.912962,
		-0.683177, 0.698100, 0.214303,
		-0.721303, -0.599289, -0.347240,
		29.404879, 28.221905, 34.483601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260748, 28.702242, 35.101780>,  <29.909790, 28.641407, 34.726669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260748, 28.702242, 35.101780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.261179, 28.329506, 34.956635>,  <29.261436, 28.105864, 34.869545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.261179, 28.329506, 34.956635>,  <29.260748, 28.702242, 35.101780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261179, 28.329506, 34.956635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064993, -0.362165, 0.929846,
		-0.997885, 0.022583, -0.060953,
		0.001077, -0.931841, -0.362866,
		29.261501, 28.049953, 34.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637199, 28.346155, 35.317619>,  <29.260748, 28.702242, 35.101780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637199, 28.346155, 35.317619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.924404, 28.078545, 35.240822>,  <29.096727, 27.917978, 35.194744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.924404, 28.078545, 35.240822>,  <28.637199, 28.346155, 35.317619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924404, 28.078545, 35.240822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119249, -0.390009, 0.913057,
		-0.685738, -0.632691, -0.359813,
		0.718013, -0.669025, -0.191996,
		29.139809, 27.877836, 35.183224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473629, 27.747919, 35.751392>,  <28.637199, 28.346155, 35.317619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473629, 27.747919, 35.751392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852676, 27.675354, 35.646236>,  <29.080105, 27.631815, 35.583141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852676, 27.675354, 35.646236>,  <28.473629, 27.747919, 35.751392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852676, 27.675354, 35.646236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111471, -0.583472, 0.804447,
		-0.299323, -0.791613, -0.532687,
		0.947618, -0.181410, -0.262888,
		29.136961, 27.620932, 35.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561800, 27.046392, 35.752331>,  <28.473629, 27.747919, 35.751392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561800, 27.046392, 35.752331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.952126, 27.133274, 35.762207>,  <29.186321, 27.185404, 35.768135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.952126, 27.133274, 35.762207>,  <28.561800, 27.046392, 35.752331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952126, 27.133274, 35.762207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102708, -0.555259, 0.825311,
		0.192973, -0.802813, -0.564138,
		0.975814, 0.217204, 0.024695,
		29.244869, 27.198435, 35.769615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896568, 26.416655, 35.679821>,  <28.561800, 27.046392, 35.752331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896568, 26.416655, 35.679821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.113194, 26.687721, 35.878811>,  <29.243170, 26.850361, 35.998203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.113194, 26.687721, 35.878811>,  <28.896568, 26.416655, 35.679821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113194, 26.687721, 35.878811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057788, -0.620373, 0.782176,
		0.838670, -0.394852, -0.375133,
		0.541565, 0.677665, 0.497470,
		29.275663, 26.891022, 36.028053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351908, 26.036732, 35.982521>,  <28.896568, 26.416655, 35.679821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351908, 26.036732, 35.982521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.385666, 26.371433, 36.198936>,  <29.405920, 26.572254, 36.328785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.385666, 26.371433, 36.198936>,  <29.351908, 26.036732, 35.982521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385666, 26.371433, 36.198936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025345, -0.544602, 0.838312,
		0.996110, -0.057035, -0.067169,
		0.084393, 0.836753, 0.541037,
		29.410984, 26.622459, 36.361248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895567, 25.883673, 36.546974>,  <29.351908, 26.036732, 35.982521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895567, 25.883673, 36.546974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706207, 26.218815, 36.655704>,  <29.592592, 26.419901, 36.720943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706207, 26.218815, 36.655704>,  <29.895567, 25.883673, 36.546974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706207, 26.218815, 36.655704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127151, -0.370362, 0.920144,
		0.871623, 0.401032, 0.281863,
		-0.473399, 0.837858, 0.271824,
		29.564188, 26.470173, 36.737251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207382, 26.182291, 37.179665>,  <29.895567, 25.883673, 36.546974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207382, 26.182291, 37.179665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.814560, 26.253502, 37.154778>,  <29.578867, 26.296228, 37.139847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.814560, 26.253502, 37.154778>,  <30.207382, 26.182291, 37.179665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814560, 26.253502, 37.154778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126115, -0.374688, 0.918534,
		0.140214, 0.909898, 0.390417,
		-0.982057, 0.178028, -0.062216,
		29.519943, 26.306910, 37.136112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.965330, 33.148895, 21.868902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602133, 33.187096, 22.032085>,  <29.384214, 33.210018, 22.129995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602133, 33.187096, 22.032085>,  <29.965330, 33.148895, 21.868902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602133, 33.187096, 22.032085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341748, -0.394502, 0.852981,
		0.242404, 0.913918, 0.325567,
		-0.907992, 0.095504, 0.407959,
		29.329735, 33.215748, 22.154472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070866, 33.399082, 22.540413>,  <29.965330, 33.148895, 21.868902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070866, 33.399082, 22.540413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695570, 33.261810, 22.558006>,  <29.470392, 33.179447, 22.568563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695570, 33.261810, 22.558006>,  <30.070866, 33.399082, 22.540413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695570, 33.261810, 22.558006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199250, -0.432003, 0.879587,
		-0.282857, 0.834026, 0.473701,
		-0.938238, -0.343182, 0.043985,
		29.414099, 33.158855, 22.571201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775532, 33.638615, 23.154682>,  <30.070866, 33.399082, 22.540413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775532, 33.638615, 23.154682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571848, 33.304821, 23.070457>,  <29.449638, 33.104546, 23.019922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571848, 33.304821, 23.070457>,  <29.775532, 33.638615, 23.154682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571848, 33.304821, 23.070457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246018, -0.375585, 0.893539,
		-0.824731, 0.403197, 0.396550,
		-0.509210, -0.834487, -0.210563,
		29.419085, 33.054474, 23.007288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392981, 33.552628, 23.670755>,  <29.775532, 33.638615, 23.154682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392981, 33.552628, 23.670755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383244, 33.188030, 23.506516>,  <29.377401, 32.969273, 23.407972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383244, 33.188030, 23.506516>,  <29.392981, 33.552628, 23.670755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383244, 33.188030, 23.506516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198567, -0.406946, 0.891609,
		-0.979785, -0.059827, 0.190898,
		-0.024343, -0.911491, -0.410599,
		29.375940, 32.914581, 23.383335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147738, 33.137520, 24.157722>,  <29.392981, 33.552628, 23.670755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147738, 33.137520, 24.157722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314585, 32.866974, 23.914890>,  <29.414694, 32.704647, 23.769192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314585, 32.866974, 23.914890>,  <29.147738, 33.137520, 24.157722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314585, 32.866974, 23.914890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255463, -0.553781, 0.792506,
		-0.872210, -0.485656, -0.058207,
		0.417119, -0.676362, -0.607080,
		29.439720, 32.664066, 23.732765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925640, 32.419186, 24.316399>,  <29.147738, 33.137520, 24.157722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925640, 32.419186, 24.316399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257551, 32.373417, 24.097904>,  <29.456697, 32.345955, 23.966808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257551, 32.373417, 24.097904>,  <28.925640, 32.419186, 24.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257551, 32.373417, 24.097904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365995, -0.627338, 0.687382,
		-0.421323, -0.770296, -0.478676,
		0.829780, -0.114417, -0.546236,
		29.506485, 32.339092, 23.934032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885427, 31.796394, 24.277584>,  <28.925640, 32.419186, 24.316399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885427, 31.796394, 24.277584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272491, 31.886948, 24.233070>,  <29.504730, 31.941280, 24.206362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272491, 31.886948, 24.233070>,  <28.885427, 31.796394, 24.277584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272491, 31.886948, 24.233070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235988, -0.656550, 0.716416,
		0.089122, -0.719509, -0.688741,
		0.967661, 0.226383, -0.111283,
		29.562790, 31.954863, 24.199686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334215, 31.174318, 24.198811>,  <28.885427, 31.796394, 24.277584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334215, 31.174318, 24.198811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579784, 31.461296, 24.330490>,  <29.727125, 31.633482, 24.409498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579784, 31.461296, 24.330490>,  <29.334215, 31.174318, 24.198811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579784, 31.461296, 24.330490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359576, -0.625439, 0.692482,
		0.702712, -0.306757, -0.641947,
		0.613922, 0.717444, 0.329201,
		29.763962, 31.676529, 24.429251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816092, 30.781061, 24.479382>,  <29.334215, 31.174318, 24.198811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816092, 30.781061, 24.479382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875950, 31.132061, 24.661633>,  <29.911865, 31.342661, 24.770983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875950, 31.132061, 24.661633>,  <29.816092, 30.781061, 24.479382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875950, 31.132061, 24.661633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326984, -0.478810, 0.814753,
		0.933106, 0.027057, -0.358582,
		0.149647, 0.877502, 0.455627,
		29.920845, 31.395311, 24.798321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472946, 30.710003, 24.852283>,  <29.816092, 30.781061, 24.479382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472946, 30.710003, 24.852283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290833, 31.016232, 25.034103>,  <30.181564, 31.199968, 25.143196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290833, 31.016232, 25.034103>,  <30.472946, 30.710003, 24.852283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290833, 31.016232, 25.034103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331755, -0.327895, 0.884547,
		0.826229, 0.553520, -0.104697,
		-0.455285, 0.765572, 0.454549,
		30.154247, 31.245903, 25.170467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962999, 30.855171, 25.439791>,  <30.472946, 30.710003, 24.852283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962999, 30.855171, 25.439791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614313, 31.030350, 25.527714>,  <30.405102, 31.135456, 25.580467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614313, 31.030350, 25.527714>,  <30.962999, 30.855171, 25.439791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614313, 31.030350, 25.527714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091493, -0.295222, 0.951038,
		0.481394, 0.849146, 0.217282,
		-0.871716, 0.437944, 0.219809,
		30.352798, 31.161734, 25.593657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092512, 31.224596, 26.096706>,  <30.962999, 30.855171, 25.439791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092512, 31.224596, 26.096706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696310, 31.169701, 26.100040>,  <30.458590, 31.136763, 26.102041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696310, 31.169701, 26.100040>,  <31.092512, 31.224596, 26.096706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696310, 31.169701, 26.100040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074938, -0.488058, 0.869588,
		-0.115274, 0.861954, 0.493707,
		-0.990503, -0.137239, 0.008333,
		30.399158, 31.128529, 26.102541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366777, 31.800476, 26.497778>,  <31.092512, 31.224596, 26.096706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366777, 31.800476, 26.497778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762060, 31.848263, 26.536087>,  <31.999229, 31.876934, 26.559072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762060, 31.848263, 26.536087>,  <31.366777, 31.800476, 26.497778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762060, 31.848263, 26.536087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046152, 0.364003, -0.930254,
		-0.145995, 0.923705, 0.354197,
		0.988208, 0.119465, 0.095773,
		32.058521, 31.884102, 26.564819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407343, 32.410175, 26.087925>,  <31.366777, 31.800476, 26.497778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407343, 32.410175, 26.087925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775499, 32.258850, 26.127441>,  <31.996393, 32.168056, 26.151152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775499, 32.258850, 26.127441>,  <31.407343, 32.410175, 26.087925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775499, 32.258850, 26.127441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261322, 0.407236, -0.875140,
		0.290842, 0.831288, 0.473678,
		0.920392, -0.378309, 0.098792,
		32.051617, 32.145359, 26.157080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908745, 32.915062, 25.909349>,  <31.407343, 32.410175, 26.087925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908745, 32.915062, 25.909349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146202, 32.597725, 25.855389>,  <32.288677, 32.407322, 25.823011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146202, 32.597725, 25.855389>,  <31.908745, 32.915062, 25.909349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146202, 32.597725, 25.855389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389764, 0.430118, -0.814299,
		0.704041, 0.430821, 0.564552,
		0.593641, -0.793342, -0.134902,
		32.324295, 32.359722, 25.814919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549648, 33.257252, 25.689072>,  <31.908745, 32.915062, 25.909349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549648, 33.257252, 25.689072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571850, 32.871895, 25.584156>,  <32.585171, 32.640682, 25.521208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571850, 32.871895, 25.584156>,  <32.549648, 33.257252, 25.689072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571850, 32.871895, 25.584156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511623, 0.253028, -0.821108,
		0.857415, -0.088613, 0.506938,
		0.055508, -0.963392, -0.262287,
		32.588501, 32.582878, 25.505470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264156, 33.121681, 25.676266>,  <32.549648, 33.257252, 25.689072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264156, 33.121681, 25.676266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060558, 32.877281, 25.433743>,  <32.938400, 32.730640, 25.288229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060558, 32.877281, 25.433743>,  <33.264156, 33.121681, 25.676266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060558, 32.877281, 25.433743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526049, 0.336731, -0.780951,
		0.681321, -0.716447, 0.150020,
		-0.508994, -0.610996, -0.606308,
		32.907860, 32.693981, 25.251850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791088, 32.610729, 25.391493>,  <33.264156, 33.121681, 25.676266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791088, 32.610729, 25.391493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475544, 32.611362, 25.145664>,  <33.286217, 32.611744, 24.998167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475544, 32.611362, 25.145664>,  <33.791088, 32.610729, 25.391493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475544, 32.611362, 25.145664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597763, 0.234258, -0.766683,
		0.142756, -0.972173, -0.185742,
		-0.788860, 0.001581, -0.614571,
		33.238888, 32.611835, 24.961292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953236, 32.080830, 24.943502>,  <33.791088, 32.610729, 25.391493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953236, 32.080830, 24.943502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697247, 32.310326, 24.739048>,  <33.543655, 32.448025, 24.616375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697247, 32.310326, 24.739048>,  <33.953236, 32.080830, 24.943502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697247, 32.310326, 24.739048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671663, 0.094573, -0.734796,
		-0.373242, -0.813558, -0.445885,
		-0.639968, 0.573741, -0.511138,
		33.505257, 32.482449, 24.585707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958561, 31.866550, 24.193502>,  <33.953236, 32.080830, 24.943502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958561, 31.866550, 24.193502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770233, 32.214600, 24.135246>,  <33.657234, 32.423428, 24.100292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770233, 32.214600, 24.135246>,  <33.958561, 31.866550, 24.193502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770233, 32.214600, 24.135246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594708, 0.191088, -0.780902,
		-0.651651, -0.454281, -0.607437,
		-0.470823, 0.870123, -0.145642,
		33.628986, 32.475636, 24.091553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894726, 31.880190, 23.525002>,  <33.958561, 31.866550, 24.193502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894726, 31.880190, 23.525002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880634, 32.267277, 23.624828>,  <33.872177, 32.499527, 23.684725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880634, 32.267277, 23.624828>,  <33.894726, 31.880190, 23.525002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880634, 32.267277, 23.624828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570920, 0.224451, -0.789729,
		-0.820249, 0.114659, -0.560396,
		-0.035232, 0.967716, 0.249567,
		33.870064, 32.557590, 23.699697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686138, 32.263046, 22.866619>,  <33.894726, 31.880190, 23.525002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686138, 32.263046, 22.866619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867599, 32.517036, 23.116741>,  <33.976475, 32.669430, 23.266815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867599, 32.517036, 23.116741>,  <33.686138, 32.263046, 22.866619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867599, 32.517036, 23.116741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530455, 0.371429, -0.762010,
		-0.716114, 0.677382, -0.168328,
		0.453650, 0.634976, 0.625306,
		34.003693, 32.707531, 23.304333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610359, 32.938744, 22.501072>,  <33.686138, 32.263046, 22.866619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610359, 32.938744, 22.501072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901035, 32.950333, 22.775612>,  <34.075443, 32.957287, 22.940336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901035, 32.950333, 22.775612>,  <33.610359, 32.938744, 22.501072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901035, 32.950333, 22.775612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616091, 0.414480, -0.669804,
		-0.303887, 0.909597, 0.283348,
		0.726694, 0.028977, 0.686350,
		34.119045, 32.959026, 22.981518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801849, 33.602867, 22.574041>,  <33.610359, 32.938744, 22.501072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801849, 33.602867, 22.574041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122429, 33.405792, 22.709656>,  <34.314777, 33.287548, 22.791025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122429, 33.405792, 22.709656>,  <33.801849, 33.602867, 22.574041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122429, 33.405792, 22.709656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586590, 0.537044, -0.606214,
		0.116594, 0.684724, 0.719415,
		0.801447, -0.492683, 0.339036,
		34.362862, 33.257988, 22.811367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323730, 34.104797, 22.684292>,  <33.801849, 33.602867, 22.574041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323730, 34.104797, 22.684292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516823, 33.756031, 22.651459>,  <34.632679, 33.546772, 22.631760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516823, 33.756031, 22.651459>,  <34.323730, 34.104797, 22.684292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516823, 33.756031, 22.651459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630652, 0.411121, -0.658223,
		0.607658, 0.265980, 0.748335,
		0.482731, -0.871914, -0.082080,
		34.661640, 33.494457, 22.626835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994690, 34.317387, 22.788374>,  <34.323730, 34.104797, 22.684292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994690, 34.317387, 22.788374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975716, 33.964718, 22.600582>,  <34.964329, 33.753117, 22.487907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975716, 33.964718, 22.600582>,  <34.994690, 34.317387, 22.788374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975716, 33.964718, 22.600582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495104, 0.387456, -0.777657,
		0.867538, -0.269334, 0.418136,
		-0.047440, -0.881667, -0.469481,
		34.961483, 33.700218, 22.459738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749073, 34.307381, 23.482813>,  <34.994690, 34.317387, 22.788374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749073, 34.307381, 23.482813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020248, 34.601128, 23.469540>,  <35.182953, 34.777378, 23.461576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020248, 34.601128, 23.469540>,  <34.749073, 34.307381, 23.482813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020248, 34.601128, 23.469540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062039, -0.012177, 0.997999,
		0.732497, -0.678639, -0.053815,
		0.677937, 0.734371, -0.033182,
		35.223629, 34.821438, 23.459585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408005, 34.161705, 23.817114>,  <34.749073, 34.307381, 23.482813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408005, 34.161705, 23.817114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319706, 34.550198, 23.852844>,  <35.266727, 34.783295, 23.874283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319706, 34.550198, 23.852844>,  <35.408005, 34.161705, 23.817114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319706, 34.550198, 23.852844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266870, -0.027943, 0.963327,
		0.938111, 0.236486, -0.253024,
		-0.220743, 0.971233, 0.089324,
		35.253483, 34.841568, 23.879642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871952, 34.392010, 24.352791>,  <35.408005, 34.161705, 23.817114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871952, 34.392010, 24.352791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551655, 34.630276, 24.327511>,  <35.359474, 34.773235, 24.312342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551655, 34.630276, 24.327511>,  <35.871952, 34.392010, 24.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551655, 34.630276, 24.327511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130174, -0.070056, 0.989013,
		0.584690, 0.800175, 0.133636,
		-0.800745, 0.595662, -0.063201,
		35.311432, 34.808975, 24.308550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911823, 34.941525, 24.866156>,  <35.871952, 34.392010, 24.352791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911823, 34.941525, 24.866156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522858, 34.922756, 24.774750>,  <35.289478, 34.911495, 24.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522858, 34.922756, 24.774750>,  <35.911823, 34.941525, 24.866156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522858, 34.922756, 24.774750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225983, -0.053640, 0.972653,
		-0.057893, 0.997458, 0.041557,
		-0.972409, -0.046919, -0.228513,
		35.231136, 34.908680, 24.706196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484879, 35.356102, 25.400394>,  <35.911823, 34.941525, 24.866156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484879, 35.356102, 25.400394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201729, 35.130318, 25.230549>,  <35.031837, 34.994846, 25.128641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201729, 35.130318, 25.230549>,  <35.484879, 35.356102, 25.400394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201729, 35.130318, 25.230549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464824, -0.080366, 0.881748,
		-0.531838, 0.821538, -0.205487,
		-0.707875, -0.564462, -0.424612,
		34.989365, 34.960979, 25.103165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901344, 35.579941, 25.745686>,  <35.484879, 35.356102, 25.400394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901344, 35.579941, 25.745686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761906, 35.244644, 25.577957>,  <34.678242, 35.043465, 25.477320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761906, 35.244644, 25.577957>,  <34.901344, 35.579941, 25.745686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761906, 35.244644, 25.577957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671053, -0.089125, 0.736033,
		-0.654348, 0.537960, -0.531438,
		-0.348592, -0.838245, -0.419319,
		34.657330, 34.993172, 25.452162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184612, 35.555058, 25.728016>,  <34.901344, 35.579941, 25.745686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184612, 35.555058, 25.728016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267658, 35.166206, 25.684444>,  <34.317486, 34.932896, 25.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267658, 35.166206, 25.684444>,  <34.184612, 35.555058, 25.728016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267658, 35.166206, 25.684444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554183, -0.208651, 0.805820,
		-0.806087, -0.106937, -0.582056,
		0.207619, -0.972126, -0.108928,
		34.329945, 34.874569, 25.651766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503780, 35.214378, 25.719479>,  <34.184612, 35.555058, 25.728016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503780, 35.214378, 25.719479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768616, 34.926357, 25.802586>,  <33.927517, 34.753544, 25.852449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768616, 34.926357, 25.802586>,  <33.503780, 35.214378, 25.719479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768616, 34.926357, 25.802586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559406, -0.290358, 0.776375,
		-0.498702, -0.630255, -0.595042,
		0.662089, -0.720050, 0.207766,
		33.967243, 34.710342, 25.864916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132717, 34.705521, 26.144094>,  <33.503780, 35.214378, 25.719479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132717, 34.705521, 26.144094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493542, 34.548866, 26.216648>,  <33.710037, 34.454872, 26.260180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493542, 34.548866, 26.216648>,  <33.132717, 34.705521, 26.144094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493542, 34.548866, 26.216648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342819, -0.394841, 0.852394,
		-0.262210, -0.831097, -0.490433,
		0.902065, -0.391636, 0.181385,
		33.764160, 34.431374, 26.271063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985291, 34.082241, 26.345518>,  <33.132717, 34.705521, 26.144094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985291, 34.082241, 26.345518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349995, 34.175323, 26.480888>,  <33.568817, 34.231174, 26.562111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349995, 34.175323, 26.480888>,  <32.985291, 34.082241, 26.345518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349995, 34.175323, 26.480888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289733, -0.219598, 0.931575,
		0.291103, -0.947430, -0.132799,
		0.911764, 0.232708, 0.338428,
		33.623524, 34.245136, 26.582417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203903, 33.520676, 26.762478>,  <32.985291, 34.082241, 26.345518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203903, 33.520676, 26.762478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450203, 33.814091, 26.877563>,  <33.597984, 33.990139, 26.946615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450203, 33.814091, 26.877563>,  <33.203903, 33.520676, 26.762478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450203, 33.814091, 26.877563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181900, -0.222948, 0.957709,
		0.766657, -0.642046, -0.003851,
		0.615752, 0.733533, 0.287713,
		33.634930, 34.034149, 26.963877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638878, 33.198944, 27.322012>,  <33.203903, 33.520676, 26.762478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638878, 33.198944, 27.322012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628754, 33.598114, 27.345715>,  <33.622677, 33.837616, 27.359936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628754, 33.598114, 27.345715>,  <33.638878, 33.198944, 27.322012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628754, 33.598114, 27.345715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165908, -0.062649, 0.984149,
		0.985816, 0.015080, 0.167149,
		-0.025313, 0.997922, 0.059258,
		33.621159, 33.897491, 27.363493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174267, 33.481697, 27.778320>,  <33.638878, 33.198944, 27.322012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174267, 33.481697, 27.778320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898758, 33.771519, 27.768456>,  <33.733452, 33.945412, 27.762537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898758, 33.771519, 27.768456>,  <34.174267, 33.481697, 27.778320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898758, 33.771519, 27.768456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029539, 0.062039, 0.997636,
		0.724375, 0.686416, -0.064134,
		-0.688772, 0.724558, -0.024664,
		33.692127, 33.988888, 27.761057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399090, 34.005981, 28.237602>,  <34.174267, 33.481697, 27.778320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399090, 34.005981, 28.237602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005810, 34.067711, 28.198627>,  <33.769840, 34.104748, 28.175243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005810, 34.067711, 28.198627>,  <34.399090, 34.005981, 28.237602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005810, 34.067711, 28.198627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065174, 0.201794, 0.977257,
		0.170477, 0.967193, -0.188346,
		-0.983204, 0.154325, -0.097437,
		33.710850, 34.114010, 28.169395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316044, 34.467392, 28.755407>,  <34.399090, 34.005981, 28.237602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316044, 34.467392, 28.755407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938931, 34.360111, 28.676174>,  <33.712662, 34.295742, 28.628633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938931, 34.360111, 28.676174>,  <34.316044, 34.467392, 28.755407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938931, 34.360111, 28.676174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180670, -0.088384, 0.979564,
		-0.280225, 0.959301, 0.034872,
		-0.942779, -0.268198, -0.198084,
		33.656097, 34.279652, 28.616749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958073, 34.939251, 29.086401>,  <34.316044, 34.467392, 28.755407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958073, 34.939251, 29.086401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736530, 34.610256, 29.034618>,  <33.603603, 34.412861, 29.003550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736530, 34.610256, 29.034618>,  <33.958073, 34.939251, 29.086401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736530, 34.610256, 29.034618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192260, -0.024944, 0.981027,
		-0.810110, 0.568238, -0.144315,
		-0.553857, -0.822486, -0.129457,
		33.570374, 34.363510, 28.995781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426704, 35.006775, 29.506645>,  <33.958073, 34.939251, 29.086401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426704, 35.006775, 29.506645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378681, 34.616135, 29.435265>,  <33.349865, 34.381752, 29.392437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378681, 34.616135, 29.435265>,  <33.426704, 35.006775, 29.506645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378681, 34.616135, 29.435265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200119, -0.152255, 0.967870,
		-0.972388, 0.151916, -0.177155,
		-0.120062, -0.976596, -0.178452,
		33.342663, 34.323154, 29.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740597, 34.787437, 29.933710>,  <33.426704, 35.006775, 29.506645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740597, 34.787437, 29.933710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918766, 34.438663, 29.852390>,  <33.025665, 34.229401, 29.803598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918766, 34.438663, 29.852390>,  <32.740597, 34.787437, 29.933710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918766, 34.438663, 29.852390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319475, -0.366907, 0.873679,
		-0.836383, -0.324206, -0.441990,
		0.445421, -0.871935, -0.203299,
		33.052391, 34.177082, 29.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265041, 34.202446, 30.128599>,  <32.740597, 34.787437, 29.933710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265041, 34.202446, 30.128599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634369, 34.049057, 30.120247>,  <32.855965, 33.957024, 30.115236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634369, 34.049057, 30.120247>,  <32.265041, 34.202446, 30.128599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634369, 34.049057, 30.120247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177218, -0.473678, 0.862684,
		-0.340703, -0.792830, -0.505313,
		0.923317, -0.383470, -0.020880,
		32.911366, 33.934017, 30.113983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192265, 33.556599, 30.384508>,  <32.265041, 34.202446, 30.128599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192265, 33.556599, 30.384508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582157, 33.637398, 30.422665>,  <32.816093, 33.685879, 30.445559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582157, 33.637398, 30.422665>,  <32.192265, 33.556599, 30.384508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582157, 33.637398, 30.422665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000083, -0.426682, 0.904401,
		0.223390, -0.881555, -0.415883,
		0.974729, 0.201999, 0.095390,
		32.874577, 33.697998, 30.451283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470318, 32.923588, 30.666887>,  <32.192265, 33.556599, 30.384508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470318, 32.923588, 30.666887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723064, 33.226845, 30.731339>,  <32.874714, 33.408798, 30.770010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723064, 33.226845, 30.731339>,  <32.470318, 32.923588, 30.666887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723064, 33.226845, 30.731339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071754, -0.149778, 0.986113,
		0.771746, -0.634657, -0.040241,
		0.631870, 0.758141, 0.161129,
		32.912624, 33.454288, 30.779676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034225, 32.672619, 31.022158>,  <32.470318, 32.923588, 30.666887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034225, 32.672619, 31.022158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993542, 33.062199, 31.103222>,  <32.969131, 33.295948, 31.151861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993542, 33.062199, 31.103222>,  <33.034225, 32.672619, 31.022158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993542, 33.062199, 31.103222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173764, -0.217980, 0.960360,
		0.979521, 0.062465, 0.191409,
		-0.101713, 0.973952, 0.202662,
		32.963028, 33.354385, 31.164021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302914, 32.777477, 31.634436>,  <33.034225, 32.672619, 31.022158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302914, 32.777477, 31.634436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061897, 33.094353, 31.595692>,  <32.917290, 33.284477, 31.572445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061897, 33.094353, 31.595692>,  <33.302914, 32.777477, 31.634436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061897, 33.094353, 31.595692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233532, -0.058952, 0.970560,
		0.763159, 0.607419, 0.220523,
		-0.602537, 0.792191, -0.096862,
		32.881138, 33.332008, 31.566633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758629, 33.315681, 31.923000>,  <33.302914, 32.777477, 31.634436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758629, 33.315681, 31.923000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369102, 33.405895, 31.934460>,  <33.135387, 33.460022, 31.941336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369102, 33.405895, 31.934460>,  <33.758629, 33.315681, 31.923000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369102, 33.405895, 31.934460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058081, 0.124969, 0.990459,
		0.219802, 0.966187, -0.134796,
		-0.973814, 0.225534, 0.028649,
		33.076958, 33.473557, 31.943054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781982, 33.855991, 32.497883>,  <33.758629, 33.315681, 31.923000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781982, 33.855991, 32.497883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403709, 33.750179, 32.422295>,  <33.176746, 33.686691, 32.376942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403709, 33.750179, 32.422295>,  <33.781982, 33.855991, 32.497883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403709, 33.750179, 32.422295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204532, 0.032319, 0.978326,
		-0.252693, 0.963835, -0.084670,
		-0.945681, -0.264534, -0.188968,
		33.120007, 33.670818, 32.365604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284325, 34.346024, 32.940552>,  <33.781982, 33.855991, 32.497883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284325, 34.346024, 32.940552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106537, 33.997189, 32.858658>,  <32.999866, 33.787888, 32.809521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106537, 33.997189, 32.858658>,  <33.284325, 34.346024, 32.940552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106537, 33.997189, 32.858658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293587, -0.074117, 0.953055,
		-0.846320, 0.483708, -0.223091,
		-0.444466, -0.872085, -0.204737,
		32.973198, 33.735561, 32.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622894, 34.377270, 33.295486>,  <33.284325, 34.346024, 32.940552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622894, 34.377270, 33.295486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656864, 33.987122, 33.214054>,  <32.677246, 33.753033, 33.165195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656864, 33.987122, 33.214054>,  <32.622894, 34.377270, 33.295486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656864, 33.987122, 33.214054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319651, -0.220191, 0.921596,
		-0.943722, -0.013191, -0.330477,
		0.084925, -0.975367, -0.203583,
		32.682343, 33.694511, 33.152981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014652, 33.988045, 33.538357>,  <32.622894, 34.377270, 33.295486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014652, 33.988045, 33.538357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288990, 33.698597, 33.507393>,  <32.453594, 33.524929, 33.488815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288990, 33.698597, 33.507393>,  <32.014652, 33.988045, 33.538357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288990, 33.698597, 33.507393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245154, -0.329887, 0.911632,
		-0.685210, -0.606262, -0.403650,
		0.685847, -0.723616, -0.077414,
		32.494743, 33.481514, 33.484169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322861, 33.822899, 33.425987>,  <32.014652, 33.988045, 33.538357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322861, 33.822899, 33.425987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970379, 33.997158, 33.499409>,  <30.758890, 34.101715, 33.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970379, 33.997158, 33.499409>,  <31.322861, 33.822899, 33.425987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970379, 33.997158, 33.499409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023489, 0.347445, -0.937406,
		-0.472154, -0.830356, -0.295937,
		-0.881203, 0.435649, 0.183552,
		30.706018, 34.127853, 33.554474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012184, 33.603806, 32.870323>,  <31.322861, 33.822899, 33.425987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012184, 33.603806, 32.870323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827034, 33.931648, 33.005379>,  <30.715944, 34.128353, 33.086411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827034, 33.931648, 33.005379>,  <31.012184, 33.603806, 32.870323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827034, 33.931648, 33.005379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035022, 0.363690, -0.930862,
		-0.885732, -0.442696, -0.139639,
		-0.462874, 0.819603, 0.337635,
		30.688171, 34.177528, 33.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437798, 33.637306, 32.396679>,  <31.012184, 33.603806, 32.870323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437798, 33.637306, 32.396679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477032, 33.995396, 32.570557>,  <30.500572, 34.210247, 32.674881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477032, 33.995396, 32.570557>,  <30.437798, 33.637306, 32.396679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477032, 33.995396, 32.570557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054296, 0.440962, -0.895882,
		-0.993696, 0.064272, 0.091859,
		0.098087, 0.895222, 0.434692,
		30.506458, 34.263962, 32.700966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802996, 34.092495, 32.221596>,  <30.437798, 33.637306, 32.396679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802996, 34.092495, 32.221596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106842, 34.335789, 32.313713>,  <30.289150, 34.481766, 32.368984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106842, 34.335789, 32.313713>,  <29.802996, 34.092495, 32.221596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106842, 34.335789, 32.313713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062516, 0.420737, -0.905026,
		-0.647360, 0.673075, 0.357623,
		0.759616, 0.608235, 0.230290,
		30.334726, 34.518261, 32.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602055, 34.722107, 32.045868>,  <29.802996, 34.092495, 32.221596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602055, 34.722107, 32.045868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001987, 34.728806, 32.042854>,  <30.241947, 34.732826, 32.041046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001987, 34.728806, 32.042854>,  <29.602055, 34.722107, 32.045868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001987, 34.728806, 32.042854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015690, 0.566095, -0.824191,
		-0.009539, 0.824170, 0.566263,
		0.999831, 0.016747, -0.007531,
		30.301937, 34.733829, 32.040596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
