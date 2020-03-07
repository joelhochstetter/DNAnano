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
	<36.461044, 52.474514, 49.683929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518818, 52.833790, 49.517849>,  <36.553482, 53.049355, 49.418201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518818, 52.833790, 49.517849>,  <36.461044, 52.474514, 49.683929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518818, 52.833790, 49.517849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616485, 0.246538, 0.747774,
		0.774006, -0.363973, -0.518111,
		0.144435, 0.898188, -0.415206,
		36.562149, 53.103245, 49.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242332, 52.659317, 49.526150>,  <36.461044, 52.474514, 49.683929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242332, 52.659317, 49.526150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037880, 52.995064, 49.600132>,  <36.915211, 53.196510, 49.644520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037880, 52.995064, 49.600132>,  <37.242332, 52.659317, 49.526150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037880, 52.995064, 49.600132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770141, 0.351715, 0.532147,
		0.381615, 0.414437, -0.826203,
		-0.511129, 0.839368, 0.184955,
		36.884541, 53.246876, 49.655617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584934, 53.293129, 49.295761>,  <37.242332, 52.659317, 49.526150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584934, 53.293129, 49.295761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357700, 53.317196, 49.624065>,  <37.221359, 53.331635, 49.821049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357700, 53.317196, 49.624065>,  <37.584934, 53.293129, 49.295761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357700, 53.317196, 49.624065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821818, 0.094173, 0.561913,
		-0.043486, 0.993736, -0.102943,
		-0.568088, 0.060165, 0.820765,
		37.187275, 53.335247, 49.870296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750046, 53.926708, 49.640430>,  <37.584934, 53.293129, 49.295761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750046, 53.926708, 49.640430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633945, 53.648888, 49.903748>,  <37.564285, 53.482197, 50.061737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633945, 53.648888, 49.903748>,  <37.750046, 53.926708, 49.640430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633945, 53.648888, 49.903748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815185, 0.180852, 0.550241,
		-0.501223, 0.696344, 0.513692,
		-0.290255, -0.694548, 0.658297,
		37.546867, 53.440525, 50.101238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767128, 54.185600, 50.293964>,  <37.750046, 53.926708, 49.640430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767128, 54.185600, 50.293964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804165, 53.788414, 50.323471>,  <37.826389, 53.550102, 50.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804165, 53.788414, 50.323471>,  <37.767128, 54.185600, 50.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804165, 53.788414, 50.323471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865249, 0.116900, 0.487522,
		-0.492717, 0.018682, 0.869989,
		0.092594, -0.992968, 0.073763,
		37.831944, 53.490524, 50.345600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984264, 54.023796, 50.904343>,  <37.767128, 54.185600, 50.293964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984264, 54.023796, 50.904343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067940, 53.691357, 50.698227>,  <38.118145, 53.491894, 50.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067940, 53.691357, 50.698227>,  <37.984264, 54.023796, 50.904343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067940, 53.691357, 50.698227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832692, -0.124883, 0.539471,
		-0.512703, -0.541925, 0.665923,
		0.209190, -0.831097, -0.515284,
		38.130695, 53.442028, 50.543640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128899, 53.511013, 51.421757>,  <37.984264, 54.023796, 50.904343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128899, 53.511013, 51.421757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300842, 53.382118, 51.084381>,  <38.404007, 53.304779, 50.881958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300842, 53.382118, 51.084381>,  <38.128899, 53.511013, 51.421757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300842, 53.382118, 51.084381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845937, -0.182801, 0.500973,
		-0.315615, -0.928840, 0.194018,
		0.429857, -0.322241, -0.843435,
		38.429798, 53.285446, 50.831352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372288, 52.891445, 51.514965>,  <38.128899, 53.511013, 51.421757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372288, 52.891445, 51.514965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597374, 53.044792, 51.222012>,  <38.732426, 53.136799, 51.046238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597374, 53.044792, 51.222012>,  <38.372288, 52.891445, 51.514965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597374, 53.044792, 51.222012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824267, -0.327474, 0.461892,
		-0.062763, -0.863592, -0.500270,
		0.562711, 0.383366, -0.732384,
		38.766186, 53.159801, 51.002296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875469, 52.280537, 51.386299>,  <38.372288, 52.891445, 51.514965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875469, 52.280537, 51.386299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996693, 52.652626, 51.303505>,  <39.069427, 52.875877, 51.253830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996693, 52.652626, 51.303505>,  <38.875469, 52.280537, 51.386299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996693, 52.652626, 51.303505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865108, -0.177457, 0.469145,
		0.399677, -0.321245, -0.858522,
		0.303061, 0.930221, -0.206986,
		39.087612, 52.931694, 51.241409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608299, 52.390175, 51.063217>,  <38.875469, 52.280537, 51.386299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608299, 52.390175, 51.063217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493156, 52.697361, 51.292080>,  <39.424068, 52.881672, 51.429398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493156, 52.697361, 51.292080>,  <39.608299, 52.390175, 51.063217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493156, 52.697361, 51.292080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844259, -0.078521, 0.530152,
		0.452064, 0.635661, -0.625758,
		-0.287861, 0.767965, 0.572159,
		39.406799, 52.927750, 51.463726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132874, 52.894554, 51.161266>,  <39.608299, 52.390175, 51.063217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132874, 52.894554, 51.161266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880127, 52.952423, 51.465851>,  <39.728481, 52.987144, 51.648602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880127, 52.952423, 51.465851>,  <40.132874, 52.894554, 51.161266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880127, 52.952423, 51.465851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763288, -0.054580, 0.643749,
		0.134691, 0.987974, -0.075937,
		-0.631863, 0.144669, 0.761459,
		39.690567, 52.995823, 51.694290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785862, 53.167618, 50.962105>,  <40.132874, 52.894554, 51.161266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785862, 53.167618, 50.962105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963585, 52.981705, 51.268456>,  <41.070217, 52.870155, 51.452267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963585, 52.981705, 51.268456>,  <40.785862, 53.167618, 50.962105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963585, 52.981705, 51.268456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038724, 0.844130, 0.534738,
		-0.895039, -0.267244, 0.357051,
		0.444303, -0.464785, 0.765879,
		41.096874, 52.842270, 51.498219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450020, 53.406239, 51.548485>,  <40.785862, 53.167618, 50.962105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450020, 53.406239, 51.548485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815315, 53.313774, 51.682686>,  <41.034492, 53.258293, 51.763206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815315, 53.313774, 51.682686>,  <40.450020, 53.406239, 51.548485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815315, 53.313774, 51.682686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027986, 0.857106, 0.514379,
		-0.406465, -0.460361, 0.789211,
		0.913237, -0.231164, 0.335500,
		41.089287, 53.244427, 51.783337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676319, 53.744774, 52.164600>,  <40.450020, 53.406239, 51.548485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676319, 53.744774, 52.164600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624470, 53.764118, 52.560753>,  <40.593361, 53.775726, 52.798447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624470, 53.764118, 52.560753>,  <40.676319, 53.744774, 52.164600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624470, 53.764118, 52.560753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989267, -0.061642, 0.132483,
		0.067456, 0.996926, -0.039850,
		-0.129619, 0.048360, 0.990384,
		40.585583, 53.778625, 52.857868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153973, 54.245056, 52.533783>,  <40.676319, 53.744774, 52.164600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153973, 54.245056, 52.533783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091167, 53.989380, 52.834923>,  <41.053486, 53.835976, 53.015606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091167, 53.989380, 52.834923>,  <41.153973, 54.245056, 52.533783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091167, 53.989380, 52.834923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984919, -0.045244, 0.166995,
		-0.072679, 0.767719, 0.636652,
		-0.157010, -0.639188, 0.752853,
		41.044064, 53.797623, 53.060780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485146, 53.587429, 52.927338>,  <41.153973, 54.245056, 52.533783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485146, 53.587429, 52.927338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419029, 53.866432, 53.206238>,  <41.379360, 54.033833, 53.373577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419029, 53.866432, 53.206238>,  <41.485146, 53.587429, 52.927338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419029, 53.866432, 53.206238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902866, -0.177482, 0.391579,
		0.396879, 0.694249, -0.600421,
		-0.165290, 0.697509, 0.697252,
		41.369442, 54.075684, 53.415413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044979, 54.066124, 52.852516>,  <41.485146, 53.587429, 52.927338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044979, 54.066124, 52.852516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876404, 54.025826, 53.213013>,  <41.775257, 54.001648, 53.429310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876404, 54.025826, 53.213013>,  <42.044979, 54.066124, 52.852516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876404, 54.025826, 53.213013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899960, -0.168787, 0.401974,
		0.111620, 0.980490, 0.161803,
		-0.421442, -0.100747, 0.901241,
		41.749969, 53.995602, 53.483387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291622, 54.578762, 53.393562>,  <42.044979, 54.066124, 52.852516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291622, 54.578762, 53.393562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177601, 54.223442, 53.537594>,  <42.109188, 54.010250, 53.624012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177601, 54.223442, 53.537594>,  <42.291622, 54.578762, 53.393562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177601, 54.223442, 53.537594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946609, -0.201882, 0.251347,
		-0.150579, 0.412504, 0.898425,
		-0.285058, -0.888304, 0.360080,
		42.092083, 53.956951, 53.645618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735771, 54.426601, 54.026302>,  <42.291622, 54.578762, 53.393562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735771, 54.426601, 54.026302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631901, 54.091076, 53.834900>,  <42.569580, 53.889763, 53.720058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631901, 54.091076, 53.834900>,  <42.735771, 54.426601, 54.026302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631901, 54.091076, 53.834900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939059, -0.334908, 0.077484,
		-0.225248, -0.429221, 0.874661,
		-0.259674, -0.838812, -0.478502,
		42.553997, 53.839432, 53.691349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022167, 53.955688, 54.380413>,  <42.735771, 54.426601, 54.026302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022167, 53.955688, 54.380413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984257, 53.808979, 54.010223>,  <42.961510, 53.720955, 53.788109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984257, 53.808979, 54.010223>,  <43.022167, 53.955688, 54.380413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984257, 53.808979, 54.010223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879480, -0.466405, 0.094774,
		-0.466405, -0.804951, 0.366769,
		-0.094774, -0.366769, -0.925472,
		42.955826, 53.698948, 53.732582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012295, 53.193504, 54.318638>,  <43.022167, 53.955688, 54.380413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012295, 53.193504, 54.318638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187744, 53.315567, 53.980530>,  <43.293015, 53.388805, 53.777664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187744, 53.315567, 53.980530>,  <43.012295, 53.193504, 54.318638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187744, 53.315567, 53.980530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875124, -0.358933, 0.324539,
		-0.204363, -0.882071, -0.424484,
		0.438627, 0.305152, -0.845274,
		43.319332, 53.407112, 53.726948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089642, 52.427261, 54.536251>,  <43.012295, 53.193504, 54.318638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089642, 52.427261, 54.536251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341328, 52.510384, 54.835823>,  <43.492340, 52.560257, 55.015568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341328, 52.510384, 54.835823>,  <43.089642, 52.427261, 54.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341328, 52.510384, 54.835823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606052, 0.472102, -0.640173,
		-0.486606, 0.856700, 0.171112,
		0.629218, 0.207810, 0.748932,
		43.530094, 52.572727, 55.060501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729485, 52.052250, 54.441284>,  <43.089642, 52.427261, 54.536251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729485, 52.052250, 54.441284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955708, 51.968178, 54.122292>,  <44.091442, 51.917732, 53.930897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955708, 51.968178, 54.122292>,  <43.729485, 52.052250, 54.441284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955708, 51.968178, 54.122292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808113, 0.334255, 0.485002,
		0.164620, -0.918747, 0.358893,
		0.565556, -0.210185, -0.797477,
		44.125374, 51.905121, 53.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350693, 51.551434, 54.638096>,  <43.729485, 52.052250, 54.441284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350693, 51.551434, 54.638096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382622, 51.794796, 54.322254>,  <44.401779, 51.940811, 54.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382622, 51.794796, 54.322254>,  <44.350693, 51.551434, 54.638096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382622, 51.794796, 54.322254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860491, 0.357797, 0.362680,
		0.503174, -0.708398, -0.494963,
		0.079825, 0.608403, -0.789604,
		44.406570, 51.977318, 54.085373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987446, 51.380737, 54.484573>,  <44.350693, 51.551434, 54.638096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987446, 51.380737, 54.484573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965282, 51.750576, 54.333820>,  <44.951984, 51.972481, 54.243366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965282, 51.750576, 54.333820>,  <44.987446, 51.380737, 54.484573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965282, 51.750576, 54.333820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740608, 0.291218, 0.605551,
		0.669649, -0.245572, -0.700903,
		-0.055409, 0.924601, -0.376886,
		44.948658, 52.027958, 54.220753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571159, 51.644913, 54.169109>,  <44.987446, 51.380737, 54.484573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571159, 51.644913, 54.169109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384220, 51.970085, 54.308094>,  <45.272057, 52.165188, 54.391483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384220, 51.970085, 54.308094>,  <45.571159, 51.644913, 54.169109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384220, 51.970085, 54.308094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812335, 0.239792, 0.531613,
		0.348846, 0.530703, -0.772438,
		-0.467353, 0.812929, 0.347458,
		45.244015, 52.213963, 54.412331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926498, 52.357265, 54.110783>,  <45.571159, 51.644913, 54.169109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926498, 52.357265, 54.110783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678509, 52.372276, 54.424271>,  <45.529713, 52.381283, 54.612362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678509, 52.372276, 54.424271>,  <45.926498, 52.357265, 54.110783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678509, 52.372276, 54.424271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781178, 0.122965, 0.612079,
		-0.073398, 0.991701, -0.105554,
		-0.619979, 0.037531, 0.783720,
		45.492516, 52.383537, 54.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892658, 52.996555, 54.611076>,  <45.926498, 52.357265, 54.110783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892658, 52.996555, 54.611076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873493, 52.630798, 54.771873>,  <45.861996, 52.411346, 54.868351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873493, 52.630798, 54.771873>,  <45.892658, 52.996555, 54.611076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873493, 52.630798, 54.771873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815314, 0.196693, 0.544587,
		-0.577034, 0.353841, 0.736090,
		-0.047914, -0.914389, 0.401990,
		45.859119, 52.356480, 54.892471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255436, 53.198032, 55.301041>,  <45.892658, 52.996555, 54.611076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255436, 53.198032, 55.301041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214958, 52.802513, 55.257164>,  <46.190674, 52.565201, 55.230839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214958, 52.802513, 55.257164>,  <46.255436, 53.198032, 55.301041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214958, 52.802513, 55.257164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859174, -0.142443, 0.491458,
		-0.501579, -0.044510, 0.863966,
		-0.101191, -0.988802, -0.109688,
		46.184601, 52.505871, 55.224258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109356, 52.851227, 55.928570>,  <46.255436, 53.198032, 55.301041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109356, 52.851227, 55.928570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342514, 52.642296, 55.679604>,  <46.482410, 52.516937, 55.530224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342514, 52.642296, 55.679604>,  <46.109356, 52.851227, 55.928570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.342514, 52.642296, 55.679604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713052, -0.038465, 0.700055,
		-0.389598, -0.851878, 0.350025,
		0.582898, -0.522327, -0.622419,
		46.517384, 52.485600, 55.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409126, 52.151974, 56.154163>,  <46.109356, 52.851227, 55.928570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409126, 52.151974, 56.154163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659863, 52.311039, 55.886154>,  <46.810303, 52.406479, 55.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659863, 52.311039, 55.886154>,  <46.409126, 52.151974, 56.154163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659863, 52.311039, 55.886154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759461, -0.119764, 0.639434,
		0.174037, -0.909680, -0.377085,
		0.626841, 0.397667, -0.670023,
		46.847916, 52.430340, 55.685146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.151836, 52.042763, 56.331722>,  <46.409126, 52.151974, 56.154163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.151836, 52.042763, 56.331722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226475, 52.260227, 56.004402>,  <47.271255, 52.390705, 55.808010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226475, 52.260227, 56.004402>,  <47.151836, 52.042763, 56.331722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226475, 52.260227, 56.004402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973471, 0.009965, 0.228594,
		0.132432, -0.839246, -0.527378,
		0.186592, 0.543661, -0.818301,
		47.282452, 52.423325, 55.758911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696724, 51.766479, 55.796871>,  <47.151836, 52.042763, 56.331722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696724, 51.766479, 55.796871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664856, 52.164974, 55.783257>,  <47.645733, 52.404072, 55.775085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664856, 52.164974, 55.783257>,  <47.696724, 51.766479, 55.796871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664856, 52.164974, 55.783257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980814, 0.084444, 0.175705,
		0.177919, -0.019389, -0.983854,
		-0.079673, 0.996239, -0.034041,
		47.640953, 52.463844, 55.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.194035, 52.092304, 55.340878>,  <47.696724, 51.766479, 55.796871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.194035, 52.092304, 55.340878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.094727, 52.328827, 55.647789>,  <48.035141, 52.470741, 55.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.094727, 52.328827, 55.647789>,  <48.194035, 52.092304, 55.340878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.094727, 52.328827, 55.647789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966853, 0.102489, 0.233860,
		0.059645, 0.799908, -0.597152,
		-0.248268, 0.591307, 0.767281,
		48.020245, 52.506218, 55.877972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.657574, 52.628738, 55.409882>,  <48.194035, 52.092304, 55.340878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.657574, 52.628738, 55.409882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.486809, 52.534485, 55.759102>,  <48.384350, 52.477932, 55.968636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.486809, 52.534485, 55.759102>,  <48.657574, 52.628738, 55.409882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.486809, 52.534485, 55.759102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900559, -0.198434, 0.386805,
		0.082100, 0.951368, 0.296914,
		-0.426912, -0.235632, 0.873055,
		48.358734, 52.463795, 56.021019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.238438, 52.401417, 55.874889>,  <48.657574, 52.628738, 55.409882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.238438, 52.401417, 55.874889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.934975, 52.417549, 56.134987>,  <48.752895, 52.427227, 56.291046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.934975, 52.417549, 56.134987>,  <49.238438, 52.401417, 55.874889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.934975, 52.417549, 56.134987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636178, -0.169258, 0.752748,
		0.140417, 0.984746, 0.102751,
		-0.758657, 0.040330, 0.650241,
		48.707378, 52.429649, 56.330059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.081837, 53.119358, 56.246193>,  <49.238438, 52.401417, 55.874889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.081837, 53.119358, 56.246193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.006042, 52.772858, 56.431107>,  <48.960567, 52.564957, 56.542053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.006042, 52.772858, 56.431107>,  <49.081837, 53.119358, 56.246193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.006042, 52.772858, 56.431107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759088, 0.169394, 0.628563,
		-0.622802, 0.470013, 0.625465,
		-0.189483, -0.866252, 0.462280,
		48.949196, 52.512981, 56.569790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.314590, 53.211365, 56.972477>,  <49.081837, 53.119358, 56.246193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.314590, 53.211365, 56.972477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.284599, 52.812683, 56.960114>,  <49.266605, 52.573475, 56.952694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.284599, 52.812683, 56.960114>,  <49.314590, 53.211365, 56.972477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.284599, 52.812683, 56.960114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916031, -0.081094, 0.392823,
		-0.394036, 0.001137, 0.919094,
		-0.074980, -0.996706, -0.030912,
		49.262104, 52.513672, 56.950840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.236309, 52.931934, 57.688011>,  <49.314590, 53.211365, 56.972477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.236309, 52.931934, 57.688011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.397297, 52.672668, 57.429428>,  <49.493889, 52.517109, 57.274277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.397297, 52.672668, 57.429428>,  <49.236309, 52.931934, 57.688011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.397297, 52.672668, 57.429428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822622, -0.053760, 0.566042,
		-0.401640, -0.759604, 0.511554,
		0.402466, -0.648161, -0.646459,
		49.518036, 52.478222, 57.235489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.458065, 52.284458, 57.949444>,  <49.236309, 52.931934, 57.688011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.458065, 52.284458, 57.949444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.694790, 52.397411, 57.647446>,  <49.836826, 52.465183, 57.466248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.694790, 52.397411, 57.647446>,  <49.458065, 52.284458, 57.949444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.694790, 52.397411, 57.647446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780014, 0.035608, 0.624748,
		0.203302, -0.958640, -0.199189,
		0.591816, 0.282383, -0.754992,
		49.872334, 52.482128, 57.420948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.076351, 52.181698, 58.394009>,  <49.458065, 52.284458, 57.949444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.076351, 52.181698, 58.394009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.167740, 52.358154, 58.046860>,  <50.222572, 52.464027, 57.838570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.167740, 52.358154, 58.046860>,  <50.076351, 52.181698, 58.394009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.167740, 52.358154, 58.046860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942358, 0.123641, 0.310925,
		0.244464, -0.888882, -0.387461,
		0.228469, 0.441137, -0.867871,
		50.236282, 52.490494, 57.786499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.730003, 51.877766, 57.968521>,  <50.076351, 52.181698, 58.394009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.730003, 51.877766, 57.968521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.664478, 52.272346, 57.964897>,  <50.625164, 52.509094, 57.962723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.664478, 52.272346, 57.964897>,  <50.730003, 51.877766, 57.968521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.664478, 52.272346, 57.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892866, 0.152167, 0.423836,
		0.419472, 0.061337, -0.905694,
		-0.163813, 0.986450, -0.009064,
		50.615334, 52.568283, 57.962177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.380810, 52.114090, 57.641953>,  <50.730003, 51.877766, 57.968521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.380810, 52.114090, 57.641953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.198151, 52.389881, 57.866844>,  <51.088554, 52.555355, 58.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.198151, 52.389881, 57.866844>,  <51.380810, 52.114090, 57.641953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.198151, 52.389881, 57.866844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888880, 0.379857, 0.256127,
		-0.036973, 0.616711, -0.786321,
		-0.456646, 0.689475, 0.562227,
		51.061157, 52.596725, 58.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.512638, 52.804535, 57.366978>,  <51.380810, 52.114090, 57.641953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.512638, 52.804535, 57.366978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.415310, 52.813141, 57.754860>,  <51.356915, 52.818306, 57.987591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.415310, 52.813141, 57.754860>,  <51.512638, 52.804535, 57.366978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.415310, 52.813141, 57.754860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910300, 0.350244, 0.220642,
		-0.334887, 0.936411, -0.104806,
		-0.243319, 0.021515, 0.969708,
		51.342316, 52.819595, 58.045773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.496155, 53.523438, 57.700775>,  <51.512638, 52.804535, 57.366978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.496155, 53.523438, 57.700775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.597244, 53.231628, 57.954994>,  <51.657898, 53.056541, 58.107525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.597244, 53.231628, 57.954994>,  <51.496155, 53.523438, 57.700775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.597244, 53.231628, 57.954994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840899, 0.490511, 0.228665,
		-0.478562, 0.476648, 0.737418,
		0.252719, -0.729525, 0.635552,
		51.673061, 53.012772, 58.145660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.912304, 53.799847, 58.277035>,  <51.496155, 53.523438, 57.700775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.912304, 53.799847, 58.277035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.982193, 53.406494, 58.296753>,  <52.024124, 53.170483, 58.308586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.982193, 53.406494, 58.296753>,  <51.912304, 53.799847, 58.277035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.982193, 53.406494, 58.296753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980535, 0.178332, 0.082155,
		-0.089581, 0.033986, 0.995400,
		0.174720, -0.983383, 0.049300,
		52.034611, 53.111481, 58.311543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.320896, 53.565758, 58.892632>,  <51.912304, 53.799847, 58.277035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.320896, 53.565758, 58.892632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.389961, 53.316769, 58.587288>,  <52.431400, 53.167374, 58.404083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.389961, 53.316769, 58.587288>,  <52.320896, 53.565758, 58.892632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.389961, 53.316769, 58.587288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972373, 0.231322, 0.031307,
		0.157092, -0.747672, 0.645220,
		0.172661, -0.622476, -0.763355,
		52.441761, 53.130024, 58.358280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.934578, 53.602238, 58.858574>,  <52.320896, 53.565758, 58.892632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.934578, 53.602238, 58.858574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.885998, 53.380230, 58.529404>,  <52.856850, 53.247025, 58.331902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.885998, 53.380230, 58.529404>,  <52.934578, 53.602238, 58.858574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.885998, 53.380230, 58.529404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964036, 0.131500, -0.230961,
		0.236403, -0.821377, 0.519089,
		-0.121446, -0.555020, -0.822924,
		52.849564, 53.213722, 58.282528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.473618, 53.139496, 58.804226>,  <52.934578, 53.602238, 58.858574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.473618, 53.139496, 58.804226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.314037, 53.245193, 58.452995>,  <53.218288, 53.308613, 58.242256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.314037, 53.245193, 58.452995>,  <53.473618, 53.139496, 58.804226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.314037, 53.245193, 58.452995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908503, 0.243746, -0.339425,
		0.124336, -0.933147, -0.337308,
		-0.398951, 0.264243, -0.878074,
		53.194351, 53.324467, 58.189571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.887844, 52.789715, 58.242519>,  <53.473618, 53.139496, 58.804226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.887844, 52.789715, 58.242519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.734486, 53.150890, 58.164848>,  <53.642471, 53.367596, 58.118248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.734486, 53.150890, 58.164848>,  <53.887844, 52.789715, 58.242519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.734486, 53.150890, 58.164848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890559, 0.305701, -0.336825,
		-0.244774, -0.302061, -0.921328,
		-0.383392, 0.902943, -0.194176,
		53.619469, 53.421772, 58.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.881882, 52.983467, 57.512157>,  <53.887844, 52.789715, 58.242519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.881882, 52.983467, 57.512157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.896080, 53.338203, 57.696442>,  <53.904598, 53.551044, 57.807014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.896080, 53.338203, 57.696442>,  <53.881882, 52.983467, 57.512157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.896080, 53.338203, 57.696442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815771, 0.240585, -0.525963,
		-0.577285, 0.394506, -0.714918,
		0.035497, 0.886839, 0.460712,
		53.906731, 53.604256, 57.834656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.614998, 53.266563, 57.432083>,  <53.881882, 52.983467, 57.512157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.614998, 53.266563, 57.432083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.423454, 53.576843, 57.596512>,  <54.308529, 53.763012, 57.695171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.423454, 53.576843, 57.596512>,  <54.614998, 53.266563, 57.432083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.423454, 53.576843, 57.596512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818419, 0.563869, -0.110647,
		-0.317621, 0.283446, -0.904862,
		-0.478861, 0.775700, 0.411074,
		54.279797, 53.809555, 57.719833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.709949, 53.892384, 57.029728>,  <54.614998, 53.266563, 57.432083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.709949, 53.892384, 57.029728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.633133, 53.963753, 57.415741>,  <54.587044, 54.006573, 57.647350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.633133, 53.963753, 57.415741>,  <54.709949, 53.892384, 57.029728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.633133, 53.963753, 57.415741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846288, 0.528002, 0.070789,
		-0.496909, 0.830289, -0.252393,
		-0.192039, 0.178421, 0.965032,
		54.575520, 54.017281, 57.705250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.673553, 54.638134, 57.184708>,  <54.709949, 53.892384, 57.029728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.673553, 54.638134, 57.184708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.865250, 54.387112, 57.430145>,  <54.980267, 54.236500, 57.577408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.865250, 54.387112, 57.430145>,  <54.673553, 54.638134, 57.184708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.865250, 54.387112, 57.430145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787094, 0.616628, 0.015910,
		-0.388345, 0.475333, 0.789460,
		0.479241, -0.627557, 0.613596,
		55.009022, 54.198845, 57.614223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.848843, 54.887459, 57.859852>,  <54.673553, 54.638134, 57.184708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.848843, 54.887459, 57.859852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.121635, 54.605755, 57.780945>,  <55.285313, 54.436733, 57.733601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.121635, 54.605755, 57.780945>,  <54.848843, 54.887459, 57.859852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.121635, 54.605755, 57.780945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706012, 0.704347, -0.073776,
		0.190901, -0.088958, 0.977570,
		0.681986, -0.704260, -0.197265,
		55.326233, 54.394478, 57.721764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.427017, 55.072380, 58.263096>,  <54.848843, 54.887459, 57.859852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.427017, 55.072380, 58.263096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.568962, 54.817318, 57.989609>,  <55.654129, 54.664280, 57.825516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.568962, 54.817318, 57.989609>,  <55.427017, 55.072380, 58.263096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.568962, 54.817318, 57.989609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830134, 0.551305, -0.083304,
		0.430055, -0.538014, 0.724978,
		0.354865, -0.637655, -0.683716,
		55.675423, 54.626022, 57.784492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.072960, 54.798225, 58.459332>,  <55.427017, 55.072380, 58.263096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.072960, 54.798225, 58.459332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.054428, 54.781448, 58.060112>,  <56.043308, 54.771381, 57.820580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.054428, 54.781448, 58.060112>,  <56.072960, 54.798225, 58.459332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.054428, 54.781448, 58.060112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761430, 0.645231, -0.062465,
		0.646589, -0.762836, 0.002043,
		-0.046332, -0.041945, -0.998045,
		56.040527, 54.768864, 57.760700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.781898, 54.616528, 58.115643>,  <56.072960, 54.798225, 58.459332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.781898, 54.616528, 58.115643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.559753, 54.834869, 57.864685>,  <56.426468, 54.965874, 57.714111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.559753, 54.834869, 57.864685>,  <56.781898, 54.616528, 58.115643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.559753, 54.834869, 57.864685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751642, 0.652273, -0.097849,
		0.355818, -0.525915, -0.772533,
		-0.555362, 0.545852, -0.627390,
		56.393147, 54.998627, 57.676468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.252968, 54.864975, 57.453434>,  <56.781898, 54.616528, 58.115643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.252968, 54.864975, 57.453434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.968140, 55.127594, 57.552948>,  <56.797241, 55.285168, 57.612656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.968140, 55.127594, 57.552948>,  <57.252968, 54.864975, 57.453434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.968140, 55.127594, 57.552948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638280, 0.752954, -0.160182,
		-0.292491, 0.044733, -0.955221,
		-0.712072, 0.656551, 0.248785,
		56.754517, 55.324558, 57.627583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.026588, 55.326374, 56.852989>,  <57.252968, 54.864975, 57.453434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.026588, 55.326374, 56.852989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.984360, 55.502754, 57.209511>,  <56.959023, 55.608582, 57.423424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.984360, 55.502754, 57.209511>,  <57.026588, 55.326374, 56.852989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.984360, 55.502754, 57.209511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332980, 0.860244, -0.386141,
		-0.937006, 0.256021, -0.237643,
		-0.105571, 0.440947, 0.891303,
		56.952690, 55.635036, 57.476902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.451534, 56.008450, 56.945393>,  <57.026588, 55.326374, 56.852989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.451534, 56.008450, 56.945393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.809875, 55.975906, 57.120125>,  <57.024879, 55.956379, 57.224964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.809875, 55.975906, 57.120125>,  <56.451534, 56.008450, 56.945393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.809875, 55.975906, 57.120125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295981, 0.842507, -0.450086,
		-0.331416, 0.532506, 0.778846,
		0.895857, -0.081358, 0.436832,
		57.078632, 55.951500, 57.251175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.719112, 56.566757, 57.516304>,  <56.451534, 56.008450, 56.945393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.719112, 56.566757, 57.516304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.013283, 56.431122, 57.281639>,  <57.189785, 56.349743, 57.140839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.013283, 56.431122, 57.281639>,  <56.719112, 56.566757, 57.516304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.013283, 56.431122, 57.281639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087034, 0.905884, -0.414487,
		0.671996, 0.253763, 0.695719,
		0.735423, -0.339085, -0.586664,
		57.233910, 56.329395, 57.105640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.425625, 56.775856, 57.647198>,  <56.719112, 56.566757, 57.516304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.425625, 56.775856, 57.647198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.359390, 56.716820, 57.257164>,  <57.319649, 56.681396, 57.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.359390, 56.716820, 57.257164>,  <57.425625, 56.775856, 57.647198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.359390, 56.716820, 57.257164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180112, 0.976634, -0.117242,
		0.969608, 0.156211, -0.188302,
		-0.165587, -0.147594, -0.975088,
		57.309715, 56.672543, 56.964638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.022640, 56.635746, 57.183266>,  <57.425625, 56.775856, 57.647198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.022640, 56.635746, 57.183266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.404930, 56.531956, 57.127747>,  <58.634304, 56.469681, 57.094437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.404930, 56.531956, 57.127747>,  <58.022640, 56.635746, 57.183266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.404930, 56.531956, 57.127747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278532, 0.645530, 0.711134,
		-0.094926, -0.718306, 0.689220,
		0.955724, -0.259475, -0.138793,
		58.691647, 56.454113, 57.086109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.371273, 56.641602, 57.876579>,  <58.022640, 56.635746, 57.183266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.371273, 56.641602, 57.876579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.615616, 56.723068, 57.570541>,  <58.762222, 56.771950, 57.386917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.615616, 56.723068, 57.570541>,  <58.371273, 56.641602, 57.876579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.615616, 56.723068, 57.570541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321467, 0.819303, 0.474764,
		0.723539, -0.535967, 0.435007,
		0.610861, 0.203670, -0.765093,
		58.798874, 56.784168, 57.341015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.778744, 57.228741, 57.610577>,  <58.371273, 56.641602, 57.876579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.778744, 57.228741, 57.610577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.540321, 57.408432, 57.344368>,  <58.397266, 57.516247, 57.184643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.540321, 57.408432, 57.344368>,  <58.778744, 57.228741, 57.610577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.540321, 57.408432, 57.344368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160658, 0.745365, 0.647009,
		0.786706, 0.492574, -0.372107,
		-0.596055, 0.449224, -0.665519,
		58.361504, 57.543198, 57.144711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.992783, 57.611458, 57.029594>,  <58.778744, 57.228741, 57.610577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.992783, 57.611458, 57.029594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.192810, 57.333824, 57.236740>,  <59.312824, 57.167244, 57.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.192810, 57.333824, 57.236740>,  <58.992783, 57.611458, 57.029594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.192810, 57.333824, 57.236740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858790, 0.474408, -0.193435,
		-0.111417, 0.541463, 0.833309,
		0.500066, -0.694086, 0.517860,
		59.342831, 57.125599, 57.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.254185, 57.856548, 57.556309>,  <58.992783, 57.611458, 57.029594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.254185, 57.856548, 57.556309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.483391, 57.546936, 57.448578>,  <59.620914, 57.361168, 57.383938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.483391, 57.546936, 57.448578>,  <59.254185, 57.856548, 57.556309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.483391, 57.546936, 57.448578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817554, 0.562777, 0.122013,
		0.057132, -0.290108, 0.955287,
		0.573011, -0.774028, -0.269332,
		59.655293, 57.314728, 57.367779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.763805, 57.573166, 58.145317>,  <59.254185, 57.856548, 57.556309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.763805, 57.573166, 58.145317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.898285, 57.529812, 57.771103>,  <59.978973, 57.503799, 57.546574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.898285, 57.529812, 57.771103>,  <59.763805, 57.573166, 58.145317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.898285, 57.529812, 57.771103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764436, 0.611620, 0.203859,
		0.550096, -0.783693, 0.288480,
		0.336203, -0.108382, -0.935533,
		59.999146, 57.497299, 57.490444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.475616, 57.395409, 58.223827>,  <59.763805, 57.573166, 58.145317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.475616, 57.395409, 58.223827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.405731, 57.555462, 57.863968>,  <60.363800, 57.651493, 57.648052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.405731, 57.555462, 57.863968>,  <60.475616, 57.395409, 58.223827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.405731, 57.555462, 57.863968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689693, 0.701828, 0.178213,
		0.702708, -0.589345, -0.398591,
		-0.174714, 0.400137, -0.899647,
		60.353317, 57.675503, 57.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.074440, 57.442642, 57.964993>,  <60.475616, 57.395409, 58.223827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.074440, 57.442642, 57.964993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.841652, 57.720695, 57.796181>,  <60.701981, 57.887527, 57.694893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.841652, 57.720695, 57.796181>,  <61.074440, 57.442642, 57.964993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.841652, 57.720695, 57.796181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491930, 0.714172, 0.497959,
		0.647550, 0.082185, -0.757579,
		-0.581966, 0.695129, -0.422032,
		60.667061, 57.929234, 57.669571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.488579, 58.067291, 57.724541>,  <61.074440, 57.442642, 57.964993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.488579, 58.067291, 57.724541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.134285, 58.163120, 57.883575>,  <60.921707, 58.220615, 57.978996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.134285, 58.163120, 57.883575>,  <61.488579, 58.067291, 57.724541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.134285, 58.163120, 57.883575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423238, 0.768564, 0.479769,
		-0.190637, 0.593224, -0.782140,
		-0.885735, 0.239570, 0.397592,
		60.868565, 58.234993, 58.002853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.288548, 57.859913, 57.668201>,  <61.488579, 58.067291, 57.724541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.288548, 57.859913, 57.668201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.082741, 57.717892, 57.355995>,  <61.959255, 57.632679, 57.168671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.082741, 57.717892, 57.355995>,  <62.288548, 57.859913, 57.668201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.082741, 57.717892, 57.355995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796682, 0.534578, 0.282000,
		0.317120, 0.766917, -0.557918,
		-0.514521, -0.355056, -0.780515,
		61.928383, 57.611374, 57.121841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.864380, 57.435719, 57.738117>,  <62.288548, 57.859913, 57.668201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.864380, 57.435719, 57.738117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.773788, 57.286961, 57.378029>,  <62.719433, 57.197704, 57.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.773788, 57.286961, 57.378029>,  <62.864380, 57.435719, 57.738117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.773788, 57.286961, 57.378029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226616, 0.878756, -0.420038,
		0.947288, -0.299133, -0.114739,
		-0.226475, -0.371896, -0.900224,
		62.705845, 57.175392, 57.107964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.436565, 57.271111, 57.321980>,  <62.864380, 57.435719, 57.738117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.436565, 57.271111, 57.321980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.110306, 57.391479, 57.124329>,  <62.914551, 57.463699, 57.005737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.110306, 57.391479, 57.124329>,  <63.436565, 57.271111, 57.321980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.110306, 57.391479, 57.124329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453638, 0.862727, -0.223417,
		0.359069, -0.406386, -0.840190,
		-0.815648, 0.300920, -0.494131,
		62.865612, 57.481754, 56.976089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.658958, 57.614616, 56.765694>,  <63.436565, 57.271111, 57.321980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.658958, 57.614616, 56.765694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.287964, 57.760967, 56.796410>,  <63.065369, 57.848778, 56.814838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.287964, 57.760967, 56.796410>,  <63.658958, 57.614616, 56.765694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.287964, 57.760967, 56.796410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314303, 0.874348, -0.369769,
		-0.202435, -0.318820, -0.925945,
		-0.927488, 0.365882, 0.076792,
		63.009716, 57.870731, 56.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.693905, 57.932407, 56.045944>,  <63.658958, 57.614616, 56.765694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.693905, 57.932407, 56.045944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.463722, 57.634605, 56.181328>,  <63.325611, 57.455925, 56.262558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.463722, 57.634605, 56.181328>,  <63.693905, 57.932407, 56.045944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.463722, 57.634605, 56.181328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436794, -0.070096, -0.896827,
		0.691419, -0.663924, -0.284859,
		-0.575457, -0.744508, 0.338463,
		63.291084, 57.411255, 56.282867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.249969, 58.295837, 56.408375>,  <63.693905, 57.932407, 56.045944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.249969, 58.295837, 56.408375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.244972, 58.678528, 56.524666>,  <64.241974, 58.908142, 56.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.244972, 58.678528, 56.524666>,  <64.249969, 58.295837, 56.408375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.244972, 58.678528, 56.524666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970385, -0.058541, 0.234361,
		0.241239, 0.285046, -0.927660,
		-0.012498, 0.956724, 0.290727,
		64.241226, 58.965546, 56.611885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.747612, 58.689781, 55.987740>,  <64.249969, 58.295837, 56.408375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.747612, 58.689781, 55.987740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.695114, 58.849129, 56.350853>,  <64.663612, 58.944736, 56.568722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.695114, 58.849129, 56.350853>,  <64.747612, 58.689781, 55.987740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.695114, 58.849129, 56.350853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979904, -0.086607, 0.179685,
		0.150202, 0.913126, -0.379000,
		-0.131251, 0.398372, 0.907784,
		64.655739, 58.968639, 56.623188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.177368, 59.231426, 56.120964>,  <64.747612, 58.689781, 55.987740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.177368, 59.231426, 56.120964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.082977, 59.041622, 56.460175>,  <65.026344, 58.927738, 56.663700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.082977, 59.041622, 56.460175>,  <65.177368, 59.231426, 56.120964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.082977, 59.041622, 56.460175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971758, -0.115312, 0.205885,
		0.000093, 0.872663, 0.488323,
		-0.235978, -0.474513, 0.848028,
		65.012184, 58.899269, 56.714584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.757805, 59.422367, 56.406696>,  <65.177368, 59.231426, 56.120964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.757805, 59.422367, 56.406696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.594864, 59.127411, 56.622223>,  <65.497101, 58.950436, 56.751541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.594864, 59.127411, 56.622223>,  <65.757805, 59.422367, 56.406696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.594864, 59.127411, 56.622223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910713, -0.283817, 0.300082,
		-0.068351, 0.612946, 0.787163,
		-0.407344, -0.737391, 0.538819,
		65.472664, 58.906193, 56.783867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.011124, 59.480076, 57.003399>,  <65.757805, 59.422367, 56.406696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.011124, 59.480076, 57.003399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.939445, 59.101143, 56.897232>,  <65.896439, 58.873783, 56.833530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.939445, 59.101143, 56.897232>,  <66.011124, 59.480076, 57.003399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.939445, 59.101143, 56.897232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906450, -0.263849, 0.329747,
		-0.382410, -0.181498, 0.905992,
		-0.179196, -0.947334, -0.265417,
		65.885689, 58.816944, 56.817608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.097984, 58.937496, 57.519974>,  <66.011124, 59.480076, 57.003399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.097984, 58.937496, 57.519974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.193413, 58.800247, 57.156578>,  <66.250671, 58.717896, 56.938541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.193413, 58.800247, 57.156578>,  <66.097984, 58.937496, 57.519974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.193413, 58.800247, 57.156578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925597, -0.202749, 0.319631,
		-0.293868, -0.917147, 0.269228,
		0.238563, -0.343126, -0.908489,
		66.264984, 58.697308, 56.884033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.202072, 58.188583, 57.552868>,  <66.097984, 58.937496, 57.519974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.202072, 58.188583, 57.552868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.429787, 58.426605, 57.325951>,  <66.566414, 58.569420, 57.189800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.429787, 58.426605, 57.325951>,  <66.202072, 58.188583, 57.552868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.429787, 58.426605, 57.325951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783924, -0.184978, 0.592660,
		0.247729, -0.782108, -0.571784,
		0.569291, 0.595054, -0.567290,
		66.600571, 58.605122, 57.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.926018, 57.911263, 57.686741>,  <66.202072, 58.188583, 57.552868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.926018, 57.911263, 57.686741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.972946, 58.272484, 57.521461>,  <67.001099, 58.489216, 57.422295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.972946, 58.272484, 57.521461>,  <66.926018, 57.911263, 57.686741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.972946, 58.272484, 57.521461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854594, 0.120142, 0.505208,
		0.505873, -0.412380, -0.757651,
		0.117312, 0.903055, -0.413194,
		67.008141, 58.543400, 57.397503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.673691, 57.904331, 57.377789>,  <66.926018, 57.911263, 57.686741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.673691, 57.904331, 57.377789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.538811, 58.277718, 57.426689>,  <67.457886, 58.501751, 57.456032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.538811, 58.277718, 57.426689>,  <67.673691, 57.904331, 57.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.538811, 58.277718, 57.426689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845941, 0.243435, 0.474471,
		0.413141, 0.263408, -0.871740,
		-0.337191, 0.933464, 0.122254,
		67.437653, 58.557758, 57.463364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.116882, 58.439404, 57.033802>,  <67.673691, 57.904331, 57.377789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.116882, 58.439404, 57.033802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.933754, 58.530643, 57.377518>,  <67.823875, 58.585388, 57.583748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.933754, 58.530643, 57.377518>,  <68.116882, 58.439404, 57.033802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.933754, 58.530643, 57.377518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887069, 0.181670, 0.424388,
		-0.059304, 0.956539, -0.285511,
		-0.457812, 0.228100, 0.859290,
		67.796410, 58.599075, 57.635303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.303406, 59.176678, 57.264217>,  <68.116882, 58.439404, 57.033802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.303406, 59.176678, 57.264217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.251869, 58.884384, 57.532379>,  <68.220947, 58.709007, 57.693275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.251869, 58.884384, 57.532379>,  <68.303406, 59.176678, 57.264217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.251869, 58.884384, 57.532379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942690, 0.119583, 0.311503,
		-0.307793, 0.672112, 0.673446,
		-0.128832, -0.730730, 0.670400,
		68.213219, 58.665165, 57.733498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.392929, 59.387531, 57.942318>,  <68.303406, 59.176678, 57.264217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.392929, 59.387531, 57.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.455292, 58.992477, 57.935745>,  <68.492706, 58.755444, 57.931801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.455292, 58.992477, 57.935745>,  <68.392929, 59.387531, 57.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.455292, 58.992477, 57.935745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896652, 0.134519, 0.421805,
		-0.414379, -0.080496, 0.906538,
		0.155900, -0.987636, -0.016435,
		68.502060, 58.696186, 57.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.476265, 59.018440, 58.687828>,  <68.392929, 59.387531, 57.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.476265, 59.018440, 58.687828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.667023, 58.813477, 58.402168>,  <68.781479, 58.690498, 58.230774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.667023, 58.813477, 58.402168>,  <68.476265, 59.018440, 58.687828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.667023, 58.813477, 58.402168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801023, -0.081121, 0.593112,
		-0.361847, -0.854903, 0.371763,
		0.476895, -0.512406, -0.714150,
		68.810089, 58.659756, 58.187923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.692352, 58.312370, 58.849491>,  <68.476265, 59.018440, 58.687828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.692352, 58.312370, 58.849491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.948753, 58.450901, 58.575508>,  <69.102592, 58.534019, 58.411118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.948753, 58.450901, 58.575508>,  <68.692352, 58.312370, 58.849491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.948753, 58.450901, 58.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760327, -0.164528, 0.628358,
		0.104920, -0.923575, -0.368783,
		0.641011, 0.346323, -0.684957,
		69.141060, 58.554798, 58.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.139038, 57.852360, 58.802597>,  <68.692352, 58.312370, 58.849491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.139038, 57.852360, 58.802597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.306793, 58.205132, 58.716522>,  <69.407448, 58.416794, 58.664879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.306793, 58.205132, 58.716522>,  <69.139038, 57.852360, 58.802597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.306793, 58.205132, 58.716522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621048, -0.105854, 0.776592,
		0.662123, -0.459339, -0.592116,
		0.419396, 0.881931, -0.215183,
		69.432610, 58.469711, 58.651966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.844139, 57.672249, 58.749649>,  <69.139038, 57.852360, 58.802597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.844139, 57.672249, 58.749649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.801697, 58.052166, 58.867386>,  <69.776230, 58.280117, 58.938026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.801697, 58.052166, 58.867386>,  <69.844139, 57.672249, 58.749649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.801697, 58.052166, 58.867386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737410, -0.123422, 0.664074,
		0.667060, 0.287507, -0.687292,
		-0.106099, 0.949793, 0.294340,
		69.769867, 58.337105, 58.955688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.543884, 58.121490, 58.599365>,  <69.844139, 57.672249, 58.749649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.543884, 58.121490, 58.599365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.353905, 58.268566, 58.919174>,  <70.239922, 58.356812, 59.111057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.353905, 58.268566, 58.919174>,  <70.543884, 58.121490, 58.599365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.353905, 58.268566, 58.919174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786047, -0.231242, 0.573286,
		0.395676, 0.900738, -0.179197,
		-0.474943, 0.367693, 0.799519,
		70.211418, 58.378876, 59.159031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.095749, 57.648994, 58.351269>,  <70.543884, 58.121490, 58.599365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.095749, 57.648994, 58.351269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.219116, 57.634060, 58.731476>,  <71.293137, 57.625099, 58.959602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.219116, 57.634060, 58.731476>,  <71.095749, 57.648994, 58.351269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.219116, 57.634060, 58.731476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950271, 0.057491, -0.306072,
		-0.043218, 0.997648, 0.053213,
		0.308411, -0.037338, 0.950520,
		71.311638, 57.622860, 59.016632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.486404, 58.180355, 58.570507>,  <71.095749, 57.648994, 58.351269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.486404, 58.180355, 58.570507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.617607, 57.842201, 58.739143>,  <71.696327, 57.639309, 58.840324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.617607, 57.842201, 58.739143>,  <71.486404, 58.180355, 58.570507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.617607, 57.842201, 58.739143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943939, 0.310947, -0.110864,
		-0.037370, 0.434318, 0.899984,
		0.327998, -0.845387, 0.421590,
		71.716003, 57.588585, 58.865620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.847672, 58.439060, 59.261230>,  <71.486404, 58.180355, 58.570507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.847672, 58.439060, 59.261230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.964096, 58.095627, 59.092415>,  <72.033951, 57.889568, 58.991127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.964096, 58.095627, 59.092415>,  <71.847672, 58.439060, 59.261230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.964096, 58.095627, 59.092415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953617, 0.295772, 0.055979,
		0.076764, -0.418753, 0.904850,
		0.291070, -0.858583, -0.422035,
		72.051414, 57.838051, 58.965805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.597702, 58.498363, 59.235474>,  <71.847672, 58.439060, 59.261230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.597702, 58.498363, 59.235474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.517494, 58.145195, 59.065659>,  <72.469368, 57.933292, 58.963768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.517494, 58.145195, 59.065659>,  <72.597702, 58.498363, 59.235474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.517494, 58.145195, 59.065659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976457, -0.144959, -0.159749,
		0.079506, -0.446580, 0.891204,
		-0.200529, -0.882923, -0.424541,
		72.457336, 57.880318, 58.938297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.419998, 58.088779, 59.888123>,  <72.597702, 58.498363, 59.235474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.419998, 58.088779, 59.888123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.756310, 58.261536, 60.018692>,  <72.958099, 58.365189, 60.097034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.756310, 58.261536, 60.018692>,  <72.419998, 58.088779, 59.888123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.756310, 58.261536, 60.018692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300188, -0.873707, 0.382783,
		0.450518, -0.223850, -0.864248,
		0.840786, 0.431888, 0.326424,
		73.008545, 58.391102, 60.116619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.114456, 57.833199, 59.669365>,  <72.419998, 58.088779, 59.888123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.114456, 57.833199, 59.669365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.136993, 57.986195, 60.038261>,  <73.150520, 58.077991, 60.259598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.136993, 57.986195, 60.038261>,  <73.114456, 57.833199, 59.669365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.136993, 57.986195, 60.038261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247304, -0.900270, 0.358266,
		0.967298, 0.207887, -0.145319,
		0.056348, 0.382488, 0.922241,
		73.153900, 58.100941, 60.314934>
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
