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
	<35.943497, 53.022770, 49.684639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211082, 52.817879, 49.469193>,  <36.371635, 52.694942, 49.339924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211082, 52.817879, 49.469193>,  <35.943497, 53.022770, 49.684639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211082, 52.817879, 49.469193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743257, -0.453789, -0.491573,
		0.007384, 0.729173, -0.684289,
		0.668965, -0.512233, -0.538613,
		36.411774, 52.664207, 49.307610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730606, 53.036789, 49.035656>,  <35.943497, 53.022770, 49.684639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730606, 53.036789, 49.035656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945202, 52.720284, 49.153019>,  <36.073959, 52.530380, 49.223438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945202, 52.720284, 49.153019>,  <35.730606, 53.036789, 49.035656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945202, 52.720284, 49.153019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770216, -0.601183, -0.212948,
		0.344890, -0.111745, -0.931968,
		0.536487, -0.791260, 0.293410,
		36.106148, 52.482906, 49.241043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419674, 52.797180, 48.756195>,  <35.730606, 53.036789, 49.035656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419674, 52.797180, 48.756195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508915, 52.862770, 49.140556>,  <36.562462, 52.902122, 49.371174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508915, 52.862770, 49.140556>,  <36.419674, 52.797180, 48.756195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508915, 52.862770, 49.140556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541546, -0.840485, 0.017689,
		0.810525, 0.516427, -0.276318,
		0.223106, 0.163976, 0.960903,
		36.575848, 52.911964, 49.428829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060501, 52.792419, 48.755482>,  <36.419674, 52.797180, 48.756195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060501, 52.792419, 48.755482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962456, 52.671757, 49.124031>,  <36.903629, 52.599361, 49.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962456, 52.671757, 49.124031>,  <37.060501, 52.792419, 48.755482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962456, 52.671757, 49.124031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887207, -0.452954, 0.087728,
		0.390876, 0.838950, 0.378654,
		-0.245113, -0.301653, 0.921371,
		36.888924, 52.581261, 49.400444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484844, 53.093658, 49.360928>,  <37.060501, 52.792419, 48.755482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484844, 53.093658, 49.360928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367737, 52.714611, 49.412018>,  <37.297474, 52.487183, 49.442673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367737, 52.714611, 49.412018>,  <37.484844, 53.093658, 49.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367737, 52.714611, 49.412018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943945, -0.265128, 0.196658,
		-0.152493, 0.178138, 0.972118,
		-0.292768, -0.947615, 0.127723,
		37.279907, 52.430328, 49.450336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108410, 52.636372, 49.593365>,  <37.484844, 53.093658, 49.360928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108410, 52.636372, 49.593365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850464, 52.331047, 49.608887>,  <37.695694, 52.147854, 49.618202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850464, 52.331047, 49.608887>,  <38.108410, 52.636372, 49.593365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850464, 52.331047, 49.608887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732255, -0.602488, 0.317507,
		-0.218973, 0.233168, 0.947461,
		-0.644867, -0.763309, 0.038809,
		37.657005, 52.102055, 49.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103962, 52.346745, 50.251015>,  <38.108410, 52.636372, 49.593365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103962, 52.346745, 50.251015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037212, 52.066078, 49.973938>,  <37.997162, 51.897678, 49.807693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037212, 52.066078, 49.973938>,  <38.103962, 52.346745, 50.251015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037212, 52.066078, 49.973938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705158, -0.575963, 0.413544,
		-0.689133, -0.419444, 0.590900,
		-0.166877, -0.701665, -0.692689,
		37.987148, 51.855579, 49.766132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787201, 52.657963, 50.293076>,  <38.103962, 52.346745, 50.251015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787201, 52.657963, 50.293076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156494, 52.504280, 50.294861>,  <39.378071, 52.412071, 50.295933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156494, 52.504280, 50.294861>,  <38.787201, 52.657963, 50.293076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156494, 52.504280, 50.294861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384156, 0.922760, -0.030647,
		0.007660, 0.030008, 0.999521,
		0.923237, -0.384206, 0.004460,
		39.433464, 52.389019, 50.296200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040195, 53.073898, 50.813911>,  <38.787201, 52.657963, 50.293076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040195, 53.073898, 50.813911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307289, 52.905815, 50.568130>,  <39.467545, 52.804966, 50.420662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307289, 52.905815, 50.568130>,  <39.040195, 53.073898, 50.813911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307289, 52.905815, 50.568130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591588, 0.800577, 0.095390,
		0.451833, -0.427198, 0.783166,
		0.667735, -0.420211, -0.614453,
		39.507610, 52.779751, 50.383793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713932, 53.056591, 51.140461>,  <39.040195, 53.073898, 50.813911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713932, 53.056591, 51.140461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769627, 53.027336, 50.745438>,  <39.803043, 53.009781, 50.508423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769627, 53.027336, 50.745438>,  <39.713932, 53.056591, 51.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769627, 53.027336, 50.745438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756201, 0.651733, 0.058352,
		0.639354, -0.754914, 0.146055,
		0.139239, -0.073139, -0.987554,
		39.811398, 53.005394, 50.449173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446136, 52.747662, 50.914272>,  <39.713932, 53.056591, 51.140461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446136, 52.747662, 50.914272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253193, 53.006588, 50.678200>,  <40.137428, 53.161945, 50.536556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253193, 53.006588, 50.678200>,  <40.446136, 52.747662, 50.914272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253193, 53.006588, 50.678200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793513, 0.608269, 0.018614,
		0.371037, -0.459336, -0.807057,
		-0.482358, 0.647317, -0.590179,
		40.108486, 53.200783, 50.501144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824322, 53.407444, 50.777836>,  <40.446136, 52.747662, 50.914272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824322, 53.407444, 50.777836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803703, 53.058922, 50.582626>,  <40.791332, 52.849808, 50.465500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803703, 53.058922, 50.582626>,  <40.824322, 53.407444, 50.777836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803703, 53.058922, 50.582626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112267, 0.490633, -0.864104,
		0.992340, 0.010245, -0.123111,
		-0.051549, -0.871306, -0.488024,
		40.788239, 52.797531, 50.436218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390556, 53.335796, 50.260246>,  <40.824322, 53.407444, 50.777836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390556, 53.335796, 50.260246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021332, 53.202152, 50.184006>,  <40.799797, 53.121967, 50.138264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021332, 53.202152, 50.184006>,  <41.390556, 53.335796, 50.260246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021332, 53.202152, 50.184006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076966, 0.645916, -0.759519,
		0.376872, -0.686414, -0.621935,
		-0.923062, -0.334109, -0.190597,
		40.744411, 53.101921, 50.126827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191723, 53.437752, 50.371979>,  <41.390556, 53.335796, 50.260246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191723, 53.437752, 50.371979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911346, 53.432079, 50.657211>,  <41.743122, 53.428677, 50.828350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911346, 53.432079, 50.657211>,  <42.191723, 53.437752, 50.371979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911346, 53.432079, 50.657211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318974, -0.888010, -0.331201,
		0.637921, -0.459606, 0.617916,
		-0.700937, -0.014181, 0.713082,
		41.701065, 53.427826, 50.871136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214058, 52.864082, 50.839409>,  <42.191723, 53.437752, 50.371979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214058, 52.864082, 50.839409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835285, 52.985943, 50.880402>,  <41.608021, 53.059059, 50.904999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835285, 52.985943, 50.880402>,  <42.214058, 52.864082, 50.839409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835285, 52.985943, 50.880402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319684, -0.925814, -0.201672,
		0.033443, -0.223733, 0.974077,
		-0.946934, 0.304652, 0.102485,
		41.551205, 53.077339, 50.911148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539547, 53.128521, 51.415741>,  <42.214058, 52.864082, 50.839409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539547, 53.128521, 51.415741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790764, 53.437462, 51.377739>,  <42.941494, 53.622826, 51.354939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790764, 53.437462, 51.377739>,  <42.539547, 53.128521, 51.415741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790764, 53.437462, 51.377739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769964, -0.634460, -0.067939,
		-0.112750, -0.030482, -0.993156,
		0.628047, 0.772354, -0.095006,
		42.979179, 53.669167, 51.349236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961288, 53.302254, 50.755310>,  <42.539547, 53.128521, 51.415741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961288, 53.302254, 50.755310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150780, 53.392982, 51.095695>,  <43.264477, 53.447418, 51.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150780, 53.392982, 51.095695>,  <42.961288, 53.302254, 50.755310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150780, 53.392982, 51.095695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717725, -0.659380, -0.223806,
		0.510341, 0.716779, -0.475163,
		0.473732, 0.226819, 0.850959,
		43.292900, 53.461029, 51.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656555, 53.524849, 50.669258>,  <42.961288, 53.302254, 50.755310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656555, 53.524849, 50.669258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649952, 53.346325, 51.027149>,  <43.645988, 53.239208, 51.241882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649952, 53.346325, 51.027149>,  <43.656555, 53.524849, 50.669258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649952, 53.346325, 51.027149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675104, -0.665049, -0.319288,
		0.737538, 0.598761, 0.312286,
		-0.016509, -0.446313, 0.894725,
		43.645000, 53.212433, 51.295567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330189, 53.541073, 51.016670>,  <43.656555, 53.524849, 50.669258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330189, 53.541073, 51.016670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106495, 53.217674, 51.089989>,  <43.972279, 53.023636, 51.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106495, 53.217674, 51.089989>,  <44.330189, 53.541073, 51.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106495, 53.217674, 51.089989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760077, -0.588310, -0.275998,
		0.330975, -0.015030, 0.943520,
		-0.559230, -0.808496, 0.183292,
		43.938725, 52.975124, 51.144978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518406, 53.102215, 51.550163>,  <44.330189, 53.541073, 51.016670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518406, 53.102215, 51.550163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359673, 52.841003, 51.292149>,  <44.264431, 52.684277, 51.137341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359673, 52.841003, 51.292149>,  <44.518406, 53.102215, 51.550163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359673, 52.841003, 51.292149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876391, -0.478476, -0.054768,
		-0.272871, -0.587040, 0.762185,
		-0.396838, -0.653027, -0.645039,
		44.240620, 52.645096, 51.098637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555550, 52.437389, 51.810925>,  <44.518406, 53.102215, 51.550163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555550, 52.437389, 51.810925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568340, 52.454639, 51.411503>,  <44.576015, 52.464989, 51.171848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568340, 52.454639, 51.411503>,  <44.555550, 52.437389, 51.810925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568340, 52.454639, 51.411503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824157, -0.566358, 0.001931,
		-0.565458, -0.823030, -0.053651,
		0.031975, 0.043125, -0.998558,
		44.577934, 52.467579, 51.111935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379341, 51.754829, 51.570923>,  <44.555550, 52.437389, 51.810925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379341, 51.754829, 51.570923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631374, 51.968796, 51.345764>,  <44.782597, 52.097176, 51.210667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631374, 51.968796, 51.345764>,  <44.379341, 51.754829, 51.570923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631374, 51.968796, 51.345764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758949, -0.577571, 0.300680,
		-0.164277, -0.616667, -0.769893,
		0.630087, 0.534914, -0.562900,
		44.820400, 52.129269, 51.176895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064831, 51.686756, 51.654949>,  <44.379341, 51.754829, 51.570923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064831, 51.686756, 51.654949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202450, 51.457344, 51.952324>,  <45.285019, 51.319698, 52.130749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202450, 51.457344, 51.952324>,  <45.064831, 51.686756, 51.654949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202450, 51.457344, 51.952324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245064, -0.709481, -0.660742,
		0.906409, 0.409514, -0.103541,
		0.344043, -0.573529, 0.743437,
		45.305664, 51.285286, 52.175354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673882, 51.393673, 51.479050>,  <45.064831, 51.686756, 51.654949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673882, 51.393673, 51.479050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504627, 51.145004, 51.742710>,  <45.403076, 50.995804, 51.900906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504627, 51.145004, 51.742710>,  <45.673882, 51.393673, 51.479050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504627, 51.145004, 51.742710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026863, -0.718560, -0.694946,
		0.905670, -0.311760, 0.287345,
		-0.423131, -0.621672, 0.659153,
		45.377689, 50.958504, 51.940456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387470, 50.700634, 51.523411>,  <45.673882, 51.393673, 51.479050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387470, 50.700634, 51.523411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521313, 50.610077, 51.157505>,  <45.601616, 50.555744, 50.937962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521313, 50.610077, 51.157505>,  <45.387470, 50.700634, 51.523411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521313, 50.610077, 51.157505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924832, -0.107457, 0.364882,
		-0.180903, -0.968091, 0.173417,
		0.334604, -0.226390, -0.914761,
		45.621693, 50.542160, 50.883076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662380, 50.034958, 51.573151>,  <45.387470, 50.700634, 51.523411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662380, 50.034958, 51.573151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830372, 50.279743, 51.305084>,  <45.931168, 50.426617, 51.144245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830372, 50.279743, 51.305084>,  <45.662380, 50.034958, 51.573151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830372, 50.279743, 51.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904599, -0.222928, 0.363323,
		0.072943, -0.758815, -0.647209,
		0.419976, 0.611966, -0.670162,
		45.956364, 50.463333, 51.104034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328411, 49.651371, 51.449928>,  <45.662380, 50.034958, 51.573151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328411, 49.651371, 51.449928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339336, 50.037151, 51.344788>,  <46.345890, 50.268620, 51.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339336, 50.037151, 51.344788>,  <46.328411, 49.651371, 51.449928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339336, 50.037151, 51.344788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888951, 0.096830, 0.447649,
		0.457187, -0.245888, -0.854704,
		0.027310, 0.964450, -0.262852,
		46.347530, 50.326485, 51.265930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.952633, 49.818043, 51.069897>,  <46.328411, 49.651371, 51.449928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.952633, 49.818043, 51.069897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835285, 50.142712, 51.271935>,  <46.764877, 50.337513, 51.393158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835285, 50.142712, 51.271935>,  <46.952633, 49.818043, 51.069897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835285, 50.142712, 51.271935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929637, 0.118991, 0.348736,
		0.222957, 0.571867, -0.789467,
		-0.293370, 0.811671, 0.505099,
		46.747272, 50.386211, 51.423466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.407364, 50.309513, 50.961815>,  <46.952633, 49.818043, 51.069897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.407364, 50.309513, 50.961815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251331, 50.395844, 51.319866>,  <47.157711, 50.447643, 51.534698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251331, 50.395844, 51.319866>,  <47.407364, 50.309513, 50.961815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251331, 50.395844, 51.319866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920042, 0.052464, 0.388292,
		0.036842, 0.975021, -0.219036,
		-0.390085, 0.215828, 0.895127,
		47.134304, 50.460590, 51.588406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820271, 50.858482, 51.301922>,  <47.407364, 50.309513, 50.961815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820271, 50.858482, 51.301922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624653, 50.590931, 51.525864>,  <47.507282, 50.430401, 51.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624653, 50.590931, 51.525864>,  <47.820271, 50.858482, 51.301922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624653, 50.590931, 51.525864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837985, -0.182120, 0.514406,
		-0.242115, 0.720716, 0.649576,
		-0.489042, -0.668880, 0.559855,
		47.477940, 50.390266, 51.693821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.783726, 51.035175, 52.044769>,  <47.820271, 50.858482, 51.301922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.783726, 51.035175, 52.044769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827778, 50.659019, 51.916054>,  <47.854210, 50.433327, 51.838825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827778, 50.659019, 51.916054>,  <47.783726, 51.035175, 52.044769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827778, 50.659019, 51.916054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979565, 0.047878, 0.195347,
		-0.168295, -0.336724, 0.926441,
		0.110134, -0.940385, -0.321786,
		47.860817, 50.376904, 51.819519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969944, 50.551983, 52.475864>,  <47.783726, 51.035175, 52.044769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969944, 50.551983, 52.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.098236, 50.419994, 52.120731>,  <48.175213, 50.340801, 51.907650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.098236, 50.419994, 52.120731>,  <47.969944, 50.551983, 52.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.098236, 50.419994, 52.120731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947046, 0.126928, 0.294946,
		0.015367, -0.935419, 0.353208,
		0.320730, -0.329972, -0.887835,
		48.194454, 50.321003, 51.854382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.350903, 49.961819, 52.584545>,  <47.969944, 50.551983, 52.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.350903, 49.961819, 52.584545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.504025, 50.179764, 52.286129>,  <48.595898, 50.310532, 52.107079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.504025, 50.179764, 52.286129>,  <48.350903, 49.961819, 52.584545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.504025, 50.179764, 52.286129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884820, 0.015944, 0.465659,
		0.265616, -0.838373, -0.476003,
		0.382807, 0.544863, -0.746045,
		48.618866, 50.343224, 52.062317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.030937, 50.009911, 52.682228>,  <48.350903, 49.961819, 52.584545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.030937, 50.009911, 52.682228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.051338, 50.209480, 52.336170>,  <49.063580, 50.329224, 52.128536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.051338, 50.209480, 52.336170>,  <49.030937, 50.009911, 52.682228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.051338, 50.209480, 52.336170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998699, -0.025111, 0.044393,
		0.000424, -0.866282, -0.499554,
		0.051001, 0.498923, -0.865144,
		49.066639, 50.359158, 52.076626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.279358, 49.562042, 52.198017>,  <49.030937, 50.009911, 52.682228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.279358, 49.562042, 52.198017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.367229, 49.947197, 52.135300>,  <49.419952, 50.178291, 52.097668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.367229, 49.947197, 52.135300>,  <49.279358, 49.562042, 52.198017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.367229, 49.947197, 52.135300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962388, -0.187560, 0.196546,
		0.159843, -0.194076, -0.967876,
		0.219680, 0.962889, -0.156797,
		49.433132, 50.236065, 52.088261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.884277, 49.697876, 51.792290>,  <49.279358, 49.562042, 52.198017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.884277, 49.697876, 51.792290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.835400, 50.037457, 51.997948>,  <49.806072, 50.241207, 52.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.835400, 50.037457, 51.997948>,  <49.884277, 49.697876, 51.792290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.835400, 50.037457, 51.997948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958997, -0.032483, 0.281549,
		0.255723, 0.527465, -0.810177,
		-0.122190, 0.848956, 0.514144,
		49.798744, 50.292145, 52.152191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.319485, 50.253971, 51.521935>,  <49.884277, 49.697876, 51.792290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.319485, 50.253971, 51.521935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.223911, 50.315842, 51.905388>,  <50.166565, 50.352966, 52.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.223911, 50.315842, 51.905388>,  <50.319485, 50.253971, 51.521935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.223911, 50.315842, 51.905388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968187, -0.037614, 0.247385,
		0.074324, 0.987248, -0.140773,
		-0.238936, 0.154681, 0.958636,
		50.152229, 50.362247, 52.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.408676, 50.906670, 51.813869>,  <50.319485, 50.253971, 51.521935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.408676, 50.906670, 51.813869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.444817, 50.611561, 52.081459>,  <50.466499, 50.434494, 52.242012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.444817, 50.611561, 52.081459>,  <50.408676, 50.906670, 51.813869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.444817, 50.611561, 52.081459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960451, 0.242194, 0.137391,
		-0.263385, 0.630105, 0.730477,
		0.090347, -0.737774, 0.668975,
		50.471920, 50.390228, 52.282150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.831543, 51.097706, 52.451469>,  <50.408676, 50.906670, 51.813869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.831543, 51.097706, 52.451469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.840115, 50.697815, 52.447716>,  <50.845257, 50.457882, 52.445461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.840115, 50.697815, 52.447716>,  <50.831543, 51.097706, 52.451469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.840115, 50.697815, 52.447716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908738, 0.015566, 0.417076,
		-0.416816, -0.017470, 0.908823,
		0.021433, -0.999726, -0.009388,
		50.846546, 50.397896, 52.444901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.399075, 50.914715, 52.878918>,  <50.831543, 51.097706, 52.451469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.399075, 50.914715, 52.878918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.357246, 50.547821, 52.725170>,  <51.332150, 50.327682, 52.632923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.357246, 50.547821, 52.725170>,  <51.399075, 50.914715, 52.878918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.357246, 50.547821, 52.725170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965193, -0.186762, 0.183092,
		-0.239724, -0.351844, 0.904842,
		-0.104570, -0.917238, -0.384368,
		51.325874, 50.272648, 52.609859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.689209, 50.388569, 53.363743>,  <51.399075, 50.914715, 52.878918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.689209, 50.388569, 53.363743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.703587, 50.265369, 52.983459>,  <51.712212, 50.191452, 52.755291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.703587, 50.265369, 52.983459>,  <51.689209, 50.388569, 53.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.703587, 50.265369, 52.983459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969662, -0.219425, 0.107744,
		-0.241794, -0.925738, 0.290765,
		0.035942, -0.307996, -0.950709,
		51.714371, 50.172970, 52.698246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.936501, 49.600563, 53.134403>,  <51.689209, 50.388569, 53.363743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.936501, 49.600563, 53.134403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.036209, 49.890503, 52.877514>,  <52.096035, 50.064468, 52.723381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.036209, 49.890503, 52.877514>,  <51.936501, 49.600563, 53.134403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.036209, 49.890503, 52.877514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968318, -0.176325, 0.176833,
		0.014937, -0.665958, -0.745840,
		0.249273, 0.724852, -0.642225,
		52.110992, 50.107960, 52.684845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.453449, 49.367126, 52.724239>,  <51.936501, 49.600563, 53.134403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.453449, 49.367126, 52.724239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.504341, 49.755802, 52.803879>,  <52.534874, 49.989006, 52.851662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.504341, 49.755802, 52.803879>,  <52.453449, 49.367126, 52.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.504341, 49.755802, 52.803879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927987, -0.187484, 0.322009,
		0.350219, 0.143788, -0.925566,
		0.127227, 0.971687, 0.199094,
		52.542511, 50.047310, 52.863605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.149609, 49.476353, 52.551369>,  <52.453449, 49.367126, 52.724239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.149609, 49.476353, 52.551369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.060482, 49.787262, 52.786724>,  <53.007004, 49.973808, 52.927937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.060482, 49.787262, 52.786724>,  <53.149609, 49.476353, 52.551369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.060482, 49.787262, 52.786724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866019, -0.119308, 0.485568,
		0.447617, 0.617749, -0.646549,
		-0.222821, 0.777272, 0.588387,
		52.993637, 50.020443, 52.963242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.924530, 49.520397, 52.263699>,  <53.149609, 49.476353, 52.551369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.924530, 49.520397, 52.263699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.125450, 49.290108, 52.521767>,  <54.246002, 49.151936, 52.676605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.125450, 49.290108, 52.521767>,  <53.924530, 49.520397, 52.263699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.125450, 49.290108, 52.521767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838691, 0.505976, -0.201457,
		-0.210456, 0.642288, 0.737004,
		0.502300, -0.575721, 0.645167,
		54.276138, 49.117390, 52.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.144142, 49.970001, 52.881924>,  <53.924530, 49.520397, 52.263699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.144142, 49.970001, 52.881924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.349602, 49.653381, 52.749496>,  <54.472878, 49.463409, 52.670040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.349602, 49.653381, 52.749496>,  <54.144142, 49.970001, 52.881924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.349602, 49.653381, 52.749496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818929, 0.567407, -0.086049,
		0.255962, -0.226922, 0.939675,
		0.513652, -0.791552, -0.331068,
		54.503696, 49.415916, 52.650177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.763828, 50.021919, 53.105782>,  <54.144142, 49.970001, 52.881924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.763828, 50.021919, 53.105782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.822952, 49.737221, 52.831097>,  <54.858425, 49.566402, 52.666286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.822952, 49.737221, 52.831097>,  <54.763828, 50.021919, 53.105782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.822952, 49.737221, 52.831097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969910, 0.240134, -0.040125,
		0.193461, -0.660115, 0.725825,
		0.147808, -0.711747, -0.686708,
		54.867294, 49.523697, 52.625084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.302391, 49.505180, 53.311852>,  <54.763828, 50.021919, 53.105782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.302391, 49.505180, 53.311852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.306915, 49.590984, 52.921188>,  <55.309628, 49.642467, 52.686790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.306915, 49.590984, 52.921188>,  <55.302391, 49.505180, 53.311852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.306915, 49.590984, 52.921188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999913, -0.008999, 0.009602,
		-0.006729, -0.976681, -0.214592,
		0.011309, 0.214509, -0.976657,
		55.310307, 49.655338, 52.628193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.647549, 48.965973, 53.125023>,  <55.302391, 49.505180, 53.311852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.647549, 48.965973, 53.125023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.736862, 49.280186, 52.894169>,  <55.790451, 49.468716, 52.755657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.736862, 49.280186, 52.894169>,  <55.647549, 48.965973, 53.125023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.736862, 49.280186, 52.894169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974744, -0.177456, 0.135586,
		0.004092, -0.592829, -0.805318,
		0.223288, 0.785534, -0.577130,
		55.803848, 49.515846, 52.721031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.152740, 48.755352, 52.588257>,  <55.647549, 48.965973, 53.125023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.152740, 48.755352, 52.588257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.182411, 49.153152, 52.617809>,  <56.200214, 49.391834, 52.635540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.182411, 49.153152, 52.617809>,  <56.152740, 48.755352, 52.588257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.182411, 49.153152, 52.617809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985429, -0.061729, -0.158491,
		-0.153060, 0.084565, -0.984592,
		0.074181, 0.994504, 0.073885,
		56.204666, 49.451504, 52.639977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.476307, 48.950470, 51.881432>,  <56.152740, 48.755352, 52.588257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.476307, 48.950470, 51.881432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.561638, 49.160568, 52.210945>,  <56.612835, 49.286625, 52.408653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.561638, 49.160568, 52.210945>,  <56.476307, 48.950470, 51.881432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.561638, 49.160568, 52.210945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962484, -0.257703, -0.084934,
		0.167679, 0.810993, -0.560512,
		0.213327, 0.525242, 0.823779,
		56.625637, 49.318142, 52.458080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.006004, 49.506542, 51.810482>,  <56.476307, 48.950470, 51.881432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.006004, 49.506542, 51.810482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.027245, 49.349274, 52.177654>,  <57.039989, 49.254913, 52.397957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.027245, 49.349274, 52.177654>,  <57.006004, 49.506542, 51.810482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.027245, 49.349274, 52.177654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969040, -0.201675, -0.142437,
		0.241125, 0.897077, 0.370286,
		0.053100, -0.393167, 0.917933,
		57.043175, 49.231323, 52.453033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.491348, 49.831127, 52.224987>,  <57.006004, 49.506542, 51.810482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.491348, 49.831127, 52.224987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.446625, 49.454491, 52.352047>,  <57.419792, 49.228508, 52.428284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.446625, 49.454491, 52.352047>,  <57.491348, 49.831127, 52.224987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.446625, 49.454491, 52.352047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945405, -0.199256, -0.257887,
		0.306118, 0.271472, 0.912466,
		-0.111805, -0.941594, 0.317647,
		57.413082, 49.172012, 52.447342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.133438, 49.678947, 52.515579>,  <57.491348, 49.831127, 52.224987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.133438, 49.678947, 52.515579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.930206, 49.367012, 52.369320>,  <57.808266, 49.179852, 52.281563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.930206, 49.367012, 52.369320>,  <58.133438, 49.678947, 52.515579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.930206, 49.367012, 52.369320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816600, -0.301147, -0.492418,
		0.273892, -0.548781, 0.789825,
		-0.508083, -0.779840, -0.365653,
		57.777782, 49.133060, 52.259624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.115227, 50.366165, 52.794106>,  <58.133438, 49.678947, 52.515579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.115227, 50.366165, 52.794106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.064339, 50.696732, 53.013504>,  <58.033806, 50.895073, 53.145145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.064339, 50.696732, 53.013504>,  <58.115227, 50.366165, 52.794106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.064339, 50.696732, 53.013504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899432, -0.137000, 0.415033,
		0.418134, 0.546139, -0.725876,
		-0.127221, 0.826416, 0.548499,
		58.026173, 50.944656, 53.178055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.751274, 50.296787, 53.187794>,  <58.115227, 50.366165, 52.794106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.751274, 50.296787, 53.187794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.583611, 50.650345, 53.270775>,  <58.483013, 50.862480, 53.320564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.583611, 50.650345, 53.270775>,  <58.751274, 50.296787, 53.187794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.583611, 50.650345, 53.270775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815768, 0.266353, 0.513399,
		0.398535, 0.384428, -0.832697,
		-0.419156, 0.883895, 0.207453,
		58.457863, 50.915512, 53.333012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.914421, 50.024078, 53.832058>,  <58.751274, 50.296787, 53.187794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.914421, 50.024078, 53.832058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.913406, 50.314651, 54.106949>,  <58.912800, 50.488995, 54.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.913406, 50.314651, 54.106949>,  <58.914421, 50.024078, 53.832058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.913406, 50.314651, 54.106949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633199, -0.530743, 0.563356,
		0.773985, 0.436581, -0.458633,
		-0.002534, 0.726435, 0.687230,
		58.912647, 50.532581, 54.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.543198, 50.382309, 53.894859>,  <58.914421, 50.024078, 53.832058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.543198, 50.382309, 53.894859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.352234, 50.391403, 54.246216>,  <59.237656, 50.396858, 54.457027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.352234, 50.391403, 54.246216>,  <59.543198, 50.382309, 53.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.352234, 50.391403, 54.246216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752332, -0.505888, 0.421989,
		0.453958, 0.862300, 0.224413,
		-0.477409, 0.022732, 0.878387,
		59.209011, 50.398224, 54.509731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.875622, 50.801834, 54.448044>,  <59.543198, 50.382309, 53.894859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.875622, 50.801834, 54.448044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.693726, 50.458599, 54.543453>,  <59.584587, 50.252659, 54.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.693726, 50.458599, 54.543453>,  <59.875622, 50.801834, 54.448044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.693726, 50.458599, 54.543453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863431, -0.359074, 0.354335,
		-0.218406, 0.367074, 0.904188,
		-0.454738, -0.858092, 0.238519,
		59.557304, 50.201172, 54.615009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.931160, 50.745235, 55.231331>,  <59.875622, 50.801834, 54.448044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.931160, 50.745235, 55.231331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.912109, 50.415806, 55.005249>,  <59.900681, 50.218147, 54.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.912109, 50.415806, 55.005249>,  <59.931160, 50.745235, 55.231331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.912109, 50.415806, 55.005249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922621, -0.253097, 0.291054,
		-0.382756, -0.507609, 0.771901,
		-0.047624, -0.823575, -0.565205,
		59.897823, 50.168732, 54.835686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.614990, 50.651352, 54.920025>,  <59.931160, 50.745235, 55.231331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.614990, 50.651352, 54.920025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.973473, 50.495991, 55.005768>,  <61.188564, 50.402775, 55.057213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.973473, 50.495991, 55.005768>,  <60.614990, 50.651352, 54.920025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.973473, 50.495991, 55.005768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241363, 0.832310, 0.499003,
		-0.372225, -0.395474, 0.839671,
		0.896210, -0.388407, 0.214354,
		61.242336, 50.379467, 55.070072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.574039, 50.512997, 55.638760>,  <60.614990, 50.651352, 54.920025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.574039, 50.512997, 55.638760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.958870, 50.574528, 55.548645>,  <61.189766, 50.611446, 55.494576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.958870, 50.574528, 55.548645>,  <60.574039, 50.512997, 55.638760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.958870, 50.574528, 55.548645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047622, 0.718447, 0.693950,
		0.268603, -0.678359, 0.683873,
		0.962073, 0.153830, -0.225282,
		61.247490, 50.620678, 55.481060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.212460, 51.076057, 56.072262>,  <60.574039, 50.512997, 55.638760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.212460, 51.076057, 56.072262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.973183, 51.133141, 55.756844>,  <59.829617, 51.167393, 55.567593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.973183, 51.133141, 55.756844>,  <60.212460, 51.076057, 56.072262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.973183, 51.133141, 55.756844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027944, 0.987131, 0.157455,
		0.800864, 0.072153, -0.594483,
		-0.598194, 0.142712, -0.788541,
		59.793724, 51.175953, 55.520283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.229313, 51.672630, 56.500496>,  <60.212460, 51.076057, 56.072262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.229313, 51.672630, 56.500496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.931084, 51.651871, 56.234734>,  <59.752148, 51.639416, 56.075275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.931084, 51.651871, 56.234734>,  <60.229313, 51.672630, 56.500496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.931084, 51.651871, 56.234734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662765, 0.046643, -0.747374,
		0.069780, -0.997562, -0.000377,
		-0.745570, -0.051902, -0.664404,
		59.707413, 51.636303, 56.035412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.891460, 51.794449, 56.505798>,  <60.229313, 51.672630, 56.500496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.891460, 51.794449, 56.505798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.994698, 51.655914, 56.145035>,  <61.056641, 51.572792, 55.928577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.994698, 51.655914, 56.145035>,  <60.891460, 51.794449, 56.505798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.994698, 51.655914, 56.145035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807505, 0.589843, 0.004574,
		0.530399, -0.729475, 0.431907,
		0.258094, -0.346341, -0.901907,
		61.072124, 51.552013, 55.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.657654, 51.447407, 56.478733>,  <60.891460, 51.794449, 56.505798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.657654, 51.447407, 56.478733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.517151, 51.620632, 56.146690>,  <61.432850, 51.724567, 55.947464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.517151, 51.620632, 56.146690>,  <61.657654, 51.447407, 56.478733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.517151, 51.620632, 56.146690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771115, 0.636669, 0.005848,
		0.531036, -0.638053, -0.557575,
		-0.351259, 0.433060, -0.830106,
		61.411774, 51.750549, 55.897659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.128601, 51.831116, 56.824211>,  <61.657654, 51.447407, 56.478733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.128601, 51.831116, 56.824211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.246086, 51.473846, 56.960434>,  <62.316578, 51.259483, 57.042168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.246086, 51.473846, 56.960434>,  <62.128601, 51.831116, 56.824211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.246086, 51.473846, 56.960434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566356, -0.124402, -0.814718,
		0.770049, 0.432167, 0.469315,
		0.293711, -0.893172, 0.340556,
		62.334198, 51.205894, 57.062599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.626274, 51.738781, 56.443779>,  <62.128601, 51.831116, 56.824211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.626274, 51.738781, 56.443779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.577347, 51.379997, 56.613724>,  <62.547989, 51.164726, 56.715691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.577347, 51.379997, 56.613724>,  <62.626274, 51.738781, 56.443779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.577347, 51.379997, 56.613724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582115, -0.411550, -0.701262,
		0.803853, 0.161540, 0.572473,
		-0.122320, -0.896957, 0.424861,
		62.540649, 51.110909, 56.741180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.280666, 51.351238, 56.546352>,  <62.626274, 51.738781, 56.443779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.280666, 51.351238, 56.546352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.961380, 51.133049, 56.444130>,  <62.769810, 51.002136, 56.382797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.961380, 51.133049, 56.444130>,  <63.280666, 51.351238, 56.546352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.961380, 51.133049, 56.444130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510025, -0.386280, -0.768545,
		0.320507, -0.743804, 0.586541,
		-0.798216, -0.545475, -0.255553,
		62.721916, 50.969406, 56.367462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.272484, 51.441029, 55.837349>,  <63.280666, 51.351238, 56.546352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.272484, 51.441029, 55.837349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.337158, 51.510780, 55.448822>,  <63.375961, 51.552631, 55.215706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.337158, 51.510780, 55.448822>,  <63.272484, 51.441029, 55.837349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.337158, 51.510780, 55.448822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060678, 0.980645, 0.186153,
		0.984974, -0.089036, 0.147980,
		0.161690, 0.174377, -0.971313,
		63.385662, 51.563095, 55.157429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.664143, 52.031075, 55.929195>,  <63.272484, 51.441029, 55.837349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.664143, 52.031075, 55.929195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.923103, 52.236599, 56.154358>,  <64.078484, 52.359913, 56.289455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.923103, 52.236599, 56.154358>,  <63.664143, 52.031075, 55.929195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.923103, 52.236599, 56.154358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271908, -0.534262, 0.800394,
		0.711991, -0.671238, -0.206175,
		0.647406, 0.513813, 0.562905,
		64.117325, 52.390743, 56.323231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.112961, 51.501186, 56.264442>,  <63.664143, 52.031075, 55.929195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.112961, 51.501186, 56.264442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.139061, 51.834579, 56.483917>,  <64.154716, 52.034615, 56.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.139061, 51.834579, 56.483917>,  <64.112961, 51.501186, 56.264442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.139061, 51.834579, 56.483917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025900, -0.548258, 0.835908,
		0.997533, -0.068748, -0.014183,
		0.065243, 0.833479, 0.548686,
		64.158630, 52.084621, 56.648521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.658974, 51.464890, 56.762852>,  <64.112961, 51.501186, 56.264442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.658974, 51.464890, 56.762852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.365211, 51.685669, 56.920837>,  <64.188957, 51.818134, 57.015629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.365211, 51.685669, 56.920837>,  <64.658974, 51.464890, 56.762852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.365211, 51.685669, 56.920837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124630, -0.681717, 0.720923,
		0.667167, 0.480227, 0.569448,
		-0.734409, 0.551946, 0.394968,
		64.144890, 51.851254, 57.039330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.919144, 52.142361, 57.050343>,  <64.658974, 51.464890, 56.762852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.919144, 52.142361, 57.050343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.847473, 52.381493, 57.362877>,  <64.804474, 52.524971, 57.550400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.847473, 52.381493, 57.362877>,  <64.919144, 52.142361, 57.050343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.847473, 52.381493, 57.362877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960712, 0.277432, 0.008030,
		-0.211968, 0.752081, -0.624054,
		-0.179172, 0.597834, 0.781340,
		64.793724, 52.560844, 57.597279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.177483, 52.831951, 56.908089>,  <64.919144, 52.142361, 57.050343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.177483, 52.831951, 56.908089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.167137, 52.770916, 57.303268>,  <65.160927, 52.734295, 57.540375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.167137, 52.770916, 57.303268>,  <65.177483, 52.831951, 56.908089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.167137, 52.770916, 57.303268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919755, 0.383548, 0.083321,
		-0.391641, 0.910828, 0.130425,
		-0.025867, -0.152591, 0.987951,
		65.159378, 52.725140, 57.599655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.264816, 53.522701, 57.244499>,  <65.177483, 52.831951, 56.908089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.264816, 53.522701, 57.244499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.391548, 53.214951, 57.466377>,  <65.467590, 53.030300, 57.599503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.391548, 53.214951, 57.466377>,  <65.264816, 53.522701, 57.244499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.391548, 53.214951, 57.466377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859522, 0.480177, 0.175077,
		-0.401050, 0.421300, 0.813428,
		0.316829, -0.769374, 0.554692,
		65.486595, 52.984138, 57.632786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.434296, 53.542553, 58.005394>,  <65.264816, 53.522701, 57.244499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.434296, 53.542553, 58.005394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.666222, 53.291805, 57.797218>,  <65.805374, 53.141357, 57.672314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.666222, 53.291805, 57.797218>,  <65.434296, 53.542553, 58.005394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.666222, 53.291805, 57.797218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807871, 0.525165, 0.267482,
		0.105639, -0.575534, 0.810926,
		0.579814, -0.626867, -0.520435,
		65.840164, 53.103745, 57.641087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.005974, 53.243149, 58.394115>,  <65.434296, 53.542553, 58.005394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.005974, 53.243149, 58.394115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.117157, 53.234379, 58.009979>,  <66.183868, 53.229118, 57.779495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.117157, 53.234379, 58.009979>,  <66.005974, 53.243149, 58.394115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.117157, 53.234379, 58.009979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782264, 0.585382, 0.213052,
		0.557497, -0.810461, 0.179861,
		0.277958, -0.021923, -0.960343,
		66.200546, 53.227802, 57.721878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.687813, 53.049393, 58.329926>,  <66.005974, 53.243149, 58.394115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.687813, 53.049393, 58.329926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.622131, 53.241051, 57.985031>,  <66.582718, 53.356045, 57.778095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.622131, 53.241051, 57.985031>,  <66.687813, 53.049393, 58.329926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.622131, 53.241051, 57.985031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804260, 0.571141, 0.164212,
		0.571141, -0.666497, -0.479145,
		-0.164212, 0.479145, -0.862238,
		66.572868, 53.384792, 57.726360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.319366, 53.249493, 57.903046>,  <66.687813, 53.049393, 58.329926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.319366, 53.249493, 57.903046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.040024, 53.510040, 57.784363>,  <66.872421, 53.666367, 57.713154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.040024, 53.510040, 57.784363>,  <67.319366, 53.249493, 57.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.040024, 53.510040, 57.784363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564430, 0.756068, 0.331330,
		0.440144, 0.063916, -0.895649,
		-0.698349, 0.651365, -0.296703,
		66.830521, 53.705448, 57.695351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.618263, 53.694595, 57.531300>,  <67.319366, 53.249493, 57.903046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.618263, 53.694595, 57.531300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.291077, 53.890038, 57.652748>,  <67.094765, 54.007301, 57.725616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.291077, 53.890038, 57.652748>,  <67.618263, 53.694595, 57.531300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.291077, 53.890038, 57.652748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551598, 0.815997, 0.172885,
		-0.163284, 0.308893, -0.936976,
		-0.817972, 0.488604, 0.303624,
		67.045685, 54.036617, 57.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.618263, 54.330921, 57.150135>,  <67.618263, 53.694595, 57.531300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.618263, 54.330921, 57.150135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.449135, 54.312210, 57.512138>,  <67.347656, 54.300983, 57.729340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.449135, 54.312210, 57.512138>,  <67.618263, 54.330921, 57.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.449135, 54.312210, 57.512138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679850, 0.643946, 0.350910,
		-0.599190, 0.763639, -0.240471,
		-0.422819, -0.046777, 0.905006,
		67.322289, 54.298176, 57.783642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.458122, 55.096069, 57.443592>,  <67.618263, 54.330921, 57.150135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.458122, 55.096069, 57.443592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.485809, 54.840237, 57.749832>,  <67.502419, 54.686737, 57.933575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.485809, 54.840237, 57.749832>,  <67.458122, 55.096069, 57.443592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.485809, 54.840237, 57.749832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766199, 0.525551, 0.369778,
		-0.638865, 0.561010, 0.526421,
		0.069212, -0.639581, 0.765601,
		67.506577, 54.648361, 57.979511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.788437, 55.692345, 57.189621>,  <67.458122, 55.096069, 57.443592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.788437, 55.692345, 57.189621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.064232, 55.969913, 57.272644>,  <68.229706, 56.136456, 57.322460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.064232, 55.969913, 57.272644>,  <67.788437, 55.692345, 57.189621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.064232, 55.969913, 57.272644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164708, 0.429274, -0.888029,
		-0.705326, 0.578094, 0.410272,
		0.689483, 0.693925, 0.207561,
		68.271080, 56.178089, 57.334911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.996399, 55.730225, 57.788616>,  <67.788437, 55.692345, 57.189621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.996399, 55.730225, 57.788616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.925133, 55.500557, 58.108261>,  <67.882378, 55.362755, 58.300049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.925133, 55.500557, 58.108261>,  <67.996399, 55.730225, 57.788616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.925133, 55.500557, 58.108261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013319, 0.813442, 0.581494,
		-0.983912, 0.092954, -0.152569,
		-0.178158, -0.574171, 0.799117,
		67.871689, 55.328304, 58.347996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.327515, 55.839993, 58.121399>,  <67.996399, 55.730225, 57.788616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.327515, 55.839993, 58.121399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.624161, 55.731247, 58.366707>,  <67.802147, 55.666000, 58.513893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.624161, 55.731247, 58.366707>,  <67.327515, 55.839993, 58.121399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.624161, 55.731247, 58.366707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169629, 0.808492, 0.563531,
		-0.649031, -0.521949, 0.553469,
		0.741610, -0.271864, 0.613274,
		67.846642, 55.649689, 58.550690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.128654, 56.062038, 58.775314>,  <67.327515, 55.839993, 58.121399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.128654, 56.062038, 58.775314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.523514, 55.998325, 58.780457>,  <67.760429, 55.960098, 58.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.523514, 55.998325, 58.780457>,  <67.128654, 56.062038, 58.775314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.523514, 55.998325, 58.780457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095185, 0.650724, 0.753325,
		-0.128357, -0.742420, 0.657523,
		0.987150, -0.159281, 0.012858,
		67.819656, 55.950542, 58.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.324356, 55.576115, 59.452541>,  <67.128654, 56.062038, 58.775314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.324356, 55.576115, 59.452541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.542374, 55.896446, 59.353256>,  <67.673180, 56.088646, 59.293686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.542374, 55.896446, 59.353256>,  <67.324356, 55.576115, 59.452541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.542374, 55.896446, 59.353256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155680, 0.387574, 0.908598,
		0.823832, -0.456576, 0.335915,
		0.545036, 0.800828, -0.248216,
		67.705887, 56.136696, 59.278793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.642883, 55.710709, 60.027817>,  <67.324356, 55.576115, 59.452541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.642883, 55.710709, 60.027817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.630646, 56.045425, 59.809151>,  <67.623306, 56.246258, 59.677952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.630646, 56.045425, 59.809151>,  <67.642883, 55.710709, 60.027817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.630646, 56.045425, 59.809151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337775, 0.506088, 0.793588,
		0.940729, 0.208929, 0.267164,
		-0.030595, 0.836793, -0.546663,
		67.621468, 56.296463, 59.645153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.372078, 55.644932, 60.458824>,  <67.642883, 55.710709, 60.027817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.372078, 55.644932, 60.458824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.683357, 55.638489, 60.709946>,  <68.870125, 55.634624, 60.860619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.683357, 55.638489, 60.709946>,  <68.372078, 55.644932, 60.458824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.683357, 55.638489, 60.709946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408192, 0.772678, -0.486157,
		-0.477263, 0.634594, 0.607874,
		0.778203, -0.016105, 0.627806,
		68.916817, 55.633656, 60.898289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.562546, 56.340927, 60.579163>,  <68.372078, 55.644932, 60.458824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.562546, 56.340927, 60.579163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.870598, 56.105461, 60.677444>,  <69.055428, 55.964184, 60.736412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.870598, 56.105461, 60.677444>,  <68.562546, 56.340927, 60.579163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.870598, 56.105461, 60.677444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625917, 0.623127, -0.468979,
		0.122966, 0.514967, 0.848345,
		0.770135, -0.588661, 0.245703,
		69.101639, 55.928864, 60.751156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.047852, 56.620358, 61.095245>,  <68.562546, 56.340927, 60.579163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.047852, 56.620358, 61.095245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.204155, 56.392975, 60.805649>,  <69.297935, 56.256546, 60.631889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.204155, 56.392975, 60.805649>,  <69.047852, 56.620358, 61.095245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.204155, 56.392975, 60.805649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487538, 0.794960, -0.361033,
		0.780777, -0.211897, 0.587782,
		0.390761, -0.568453, -0.723994,
		69.321381, 56.222439, 60.588451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.754265, 56.644623, 61.128716>,  <69.047852, 56.620358, 61.095245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.754265, 56.644623, 61.128716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.705795, 56.541428, 60.745308>,  <69.676712, 56.479511, 60.515263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.705795, 56.541428, 60.745308>,  <69.754265, 56.644623, 61.128716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.705795, 56.541428, 60.745308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606827, 0.744928, -0.277208,
		0.785544, -0.615245, 0.066291,
		-0.121169, -0.257986, -0.958521,
		69.669441, 56.464031, 60.457752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.345322, 56.771946, 60.739681>,  <69.754265, 56.644623, 61.128716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.345322, 56.771946, 60.739681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.073761, 56.764206, 60.446091>,  <69.910828, 56.759563, 60.269936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.073761, 56.764206, 60.446091>,  <70.345322, 56.771946, 60.739681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.073761, 56.764206, 60.446091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503366, 0.715488, -0.484457,
		0.534526, -0.698357, -0.476004,
		-0.678899, -0.019351, -0.733977,
		69.870094, 56.758400, 60.225899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.723587, 56.608425, 60.204273>,  <70.345322, 56.771946, 60.739681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.723587, 56.608425, 60.204273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.396271, 56.807182, 60.088692>,  <70.199883, 56.926437, 60.019344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.396271, 56.807182, 60.088692>,  <70.723587, 56.608425, 60.204273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.396271, 56.807182, 60.088692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574684, 0.717297, -0.393983,
		0.011500, -0.488452, -0.872514,
		-0.818294, 0.496890, -0.288955,
		70.150780, 56.956249, 60.002007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.305901, 56.349422, 60.374973>,  <70.723587, 56.608425, 60.204273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.305901, 56.349422, 60.374973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.544662, 56.578224, 60.149933>,  <71.687920, 56.715504, 60.014908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.544662, 56.578224, 60.149933>,  <71.305901, 56.349422, 60.374973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.544662, 56.578224, 60.149933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512069, 0.811435, 0.281707,
		0.617652, 0.119939, 0.777252,
		0.596902, 0.572004, -0.562601,
		71.723732, 56.749825, 59.981152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.990044, 56.356716, 60.631981>,  <71.305901, 56.349422, 60.374973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.990044, 56.356716, 60.631981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.873802, 56.720726, 60.513718>,  <71.804054, 56.939133, 60.442760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.873802, 56.720726, 60.513718>,  <71.990044, 56.356716, 60.631981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.873802, 56.720726, 60.513718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871902, 0.379121, 0.309926,
		0.394129, -0.167719, -0.903622,
		-0.290602, 0.910021, -0.295657,
		71.786621, 56.993732, 60.425022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.536064, 56.575378, 60.292160>,  <71.990044, 56.356716, 60.631981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.536064, 56.575378, 60.292160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.312675, 56.874210, 60.436371>,  <72.178642, 57.053509, 60.522896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.312675, 56.874210, 60.436371>,  <72.536064, 56.575378, 60.292160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.312675, 56.874210, 60.436371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783373, 0.332052, 0.525422,
		0.272817, 0.575862, -0.770684,
		-0.558478, 0.747077, 0.360525,
		72.145134, 57.098335, 60.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.941360, 57.192547, 60.363754>,  <72.536064, 56.575378, 60.292160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.941360, 57.192547, 60.363754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675148, 57.333294, 60.627045>,  <72.515419, 57.417744, 60.785019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675148, 57.333294, 60.627045>,  <72.941360, 57.192547, 60.363754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.675148, 57.333294, 60.627045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743421, 0.390828, 0.542752,
		-0.066275, 0.850555, -0.521694,
		-0.665533, 0.351867, 0.658222,
		72.475487, 57.438854, 60.824512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.135201, 57.922905, 60.574730>,  <72.941360, 57.192547, 60.363754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.135201, 57.922905, 60.574730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.895905, 57.791714, 60.867180>,  <72.752327, 57.712997, 61.042652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.895905, 57.791714, 60.867180>,  <73.135201, 57.922905, 60.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.895905, 57.791714, 60.867180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571515, 0.464912, 0.676186,
		-0.561685, 0.822367, -0.090681,
		-0.598231, -0.327978, 0.731129,
		72.716438, 57.693321, 61.086517>
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
