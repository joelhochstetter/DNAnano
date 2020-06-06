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
	<23.991625, 35.217262, 35.304543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279476, 35.124302, 35.042816>,  <24.452187, 35.068527, 34.885780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279476, 35.124302, 35.042816>,  <23.991625, 35.217262, 35.304543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279476, 35.124302, 35.042816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603722, 0.674922, 0.424264,
		0.343010, -0.700335, 0.625999,
		0.719628, -0.232403, -0.654312,
		24.495365, 35.054581, 34.846523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740812, 35.166279, 35.582508>,  <23.991625, 35.217262, 35.304543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740812, 35.166279, 35.582508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750961, 35.293495, 35.203411>,  <24.757051, 35.369823, 34.975952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750961, 35.293495, 35.203411>,  <24.740812, 35.166279, 35.582508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750961, 35.293495, 35.203411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512796, 0.809671, 0.285435,
		0.858135, -0.493239, -0.142544,
		0.025374, 0.318038, -0.947738,
		24.758574, 35.388908, 34.919090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505817, 35.282833, 35.433102>,  <24.740812, 35.166279, 35.582508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505817, 35.282833, 35.433102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226551, 35.491699, 35.237179>,  <25.058990, 35.617020, 35.119625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226551, 35.491699, 35.237179>,  <25.505817, 35.282833, 35.433102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226551, 35.491699, 35.237179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537814, 0.834101, 0.122603,
		0.472564, -0.177827, -0.863169,
		-0.698168, 0.522162, -0.489804,
		25.017101, 35.648350, 35.090237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836008, 35.597660, 34.827045>,  <25.505817, 35.282833, 35.433102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836008, 35.597660, 34.827045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531078, 35.775272, 35.015385>,  <25.348122, 35.881840, 35.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531078, 35.775272, 35.015385>,  <25.836008, 35.597660, 34.827045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531078, 35.775272, 35.015385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584619, 0.784547, 0.206655,
		-0.277643, 0.432805, -0.857668,
		-0.762322, 0.444033, 0.470850,
		25.302382, 35.908482, 35.156639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503658, 35.522324, 35.010250>,  <25.836008, 35.597660, 34.827045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503658, 35.522324, 35.010250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615828, 35.488422, 35.392700>,  <26.683130, 35.468082, 35.622169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615828, 35.488422, 35.392700>,  <26.503658, 35.522324, 35.010250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615828, 35.488422, 35.392700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043232, 0.996199, 0.075622,
		-0.958902, 0.020129, 0.283023,
		0.280425, -0.084749, 0.956127,
		26.699955, 35.462997, 35.679539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019449, 35.839985, 35.629368>,  <26.503658, 35.522324, 35.010250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019449, 35.839985, 35.629368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416229, 35.850395, 35.678947>,  <26.654297, 35.856640, 35.708694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416229, 35.850395, 35.678947>,  <26.019449, 35.839985, 35.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416229, 35.850395, 35.678947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009266, 0.990952, -0.133893,
		-0.126308, 0.131667, 0.983214,
		0.991948, 0.026022, 0.123945,
		26.713814, 35.858200, 35.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193945, 36.381798, 36.219078>,  <26.019449, 35.839985, 35.629368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193945, 36.381798, 36.219078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480642, 36.320396, 35.946987>,  <26.652660, 36.283554, 35.783733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480642, 36.320396, 35.946987>,  <26.193945, 36.381798, 36.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480642, 36.320396, 35.946987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035009, 0.966320, -0.254951,
		0.696455, 0.206550, 0.687231,
		0.716746, -0.153503, -0.680230,
		26.695665, 36.274345, 35.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898983, 36.851547, 36.312405>,  <26.193945, 36.381798, 36.219078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898983, 36.851547, 36.312405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854923, 36.761139, 35.925255>,  <26.828487, 36.706894, 35.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854923, 36.761139, 35.925255>,  <26.898983, 36.851547, 36.312405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854923, 36.761139, 35.925255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062791, 0.970274, -0.233723,
		0.991930, -0.086518, -0.092684,
		-0.110150, -0.226017, -0.967876,
		26.821878, 36.693333, 35.634892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329380, 37.227413, 36.031990>,  <26.898983, 36.851547, 36.312405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329380, 37.227413, 36.031990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075918, 37.165565, 35.728786>,  <26.923841, 37.128456, 35.546864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075918, 37.165565, 35.728786>,  <27.329380, 37.227413, 36.031990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075918, 37.165565, 35.728786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116122, 0.949712, -0.290797,
		0.764850, -0.272286, -0.583835,
		-0.633656, -0.154620, -0.758006,
		26.885822, 37.119179, 35.501385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483774, 37.777843, 35.627377>,  <27.329380, 37.227413, 36.031990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483774, 37.777843, 35.627377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158209, 37.631653, 35.446724>,  <26.962870, 37.543938, 35.338333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158209, 37.631653, 35.446724>,  <27.483774, 37.777843, 35.627377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158209, 37.631653, 35.446724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126355, 0.870102, -0.476400,
		0.567078, -0.330683, -0.754368,
		-0.813915, -0.365474, -0.451632,
		26.914034, 37.522011, 35.311234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599007, 37.876678, 34.858070>,  <27.483774, 37.777843, 35.627377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599007, 37.876678, 34.858070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212509, 37.849960, 34.957600>,  <26.980612, 37.833927, 35.017319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212509, 37.849960, 34.957600>,  <27.599007, 37.876678, 34.858070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212509, 37.849960, 34.957600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149436, 0.932051, -0.330077,
		-0.209869, -0.356117, -0.910569,
		-0.966242, -0.066799, 0.248825,
		26.922636, 37.829922, 35.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358101, 38.349808, 34.445885>,  <27.599007, 37.876678, 34.858070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358101, 38.349808, 34.445885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027891, 38.244331, 34.645477>,  <26.829765, 38.181046, 34.765232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027891, 38.244331, 34.645477>,  <27.358101, 38.349808, 34.445885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027891, 38.244331, 34.645477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396195, 0.900422, -0.179639,
		-0.401923, -0.345989, -0.847791,
		-0.825523, -0.263690, 0.498979,
		26.780235, 38.165226, 34.795170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633333, 38.354733, 34.111485>,  <27.358101, 38.349808, 34.445885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633333, 38.354733, 34.111485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552631, 38.397545, 34.500912>,  <26.504210, 38.423233, 34.734570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552631, 38.397545, 34.500912>,  <26.633333, 38.354733, 34.111485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552631, 38.397545, 34.500912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484480, 0.852981, -0.194171,
		-0.851219, -0.510850, -0.120240,
		-0.201755, 0.107028, 0.973570,
		26.492105, 38.429653, 34.792984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867741, 38.324047, 34.186825>,  <26.633333, 38.354733, 34.111485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867741, 38.324047, 34.186825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063705, 38.504448, 34.485241>,  <26.181284, 38.612690, 34.664291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063705, 38.504448, 34.485241>,  <25.867741, 38.324047, 34.186825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063705, 38.504448, 34.485241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678343, 0.734744, 0.001281,
		-0.547574, -0.506701, 0.665895,
		0.489912, 0.451004, 0.746044,
		26.210678, 38.639748, 34.709053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338020, 38.595772, 34.610680>,  <25.867741, 38.324047, 34.186825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338020, 38.595772, 34.610680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673931, 38.798370, 34.688892>,  <25.875479, 38.919930, 34.735821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673931, 38.798370, 34.688892>,  <25.338020, 38.595772, 34.610680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673931, 38.798370, 34.688892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519166, 0.854519, 0.016224,
		-0.158866, -0.115137, 0.980564,
		0.839779, 0.506498, 0.195529,
		25.925865, 38.950321, 34.747551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213278, 38.948223, 35.196072>,  <25.338020, 38.595772, 34.610680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213278, 38.948223, 35.196072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533514, 39.159466, 35.082829>,  <25.725657, 39.286213, 35.014881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533514, 39.159466, 35.082829>,  <25.213278, 38.948223, 35.196072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533514, 39.159466, 35.082829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467022, 0.845959, 0.257379,
		0.375424, -0.073837, 0.923907,
		0.800592, 0.528111, -0.283110,
		25.773691, 39.317898, 34.997894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290415, 39.538944, 35.671970>,  <25.213278, 38.948223, 35.196072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290415, 39.538944, 35.671970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496813, 39.623413, 35.339909>,  <25.620651, 39.674095, 35.140671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496813, 39.623413, 35.339909>,  <25.290415, 39.538944, 35.671970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496813, 39.623413, 35.339909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213636, 0.970237, 0.114018,
		0.829523, 0.118519, 0.545752,
		0.515995, 0.211173, -0.830154,
		25.651611, 39.686764, 35.090862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483595, 40.198105, 35.800274>,  <25.290415, 39.538944, 35.671970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483595, 40.198105, 35.800274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550293, 40.153370, 35.408421>,  <25.590311, 40.126530, 35.173309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550293, 40.153370, 35.408421>,  <25.483595, 40.198105, 35.800274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550293, 40.153370, 35.408421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313384, 0.936016, -0.160203,
		0.934873, 0.333715, 0.121025,
		0.166744, -0.111842, -0.979637,
		25.600317, 40.119816, 35.114529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839590, 40.855488, 35.739910>,  <25.483595, 40.198105, 35.800274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839590, 40.855488, 35.739910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778694, 40.707211, 35.373432>,  <25.742157, 40.618244, 35.153545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778694, 40.707211, 35.373432>,  <25.839590, 40.855488, 35.739910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778694, 40.707211, 35.373432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149800, 0.924943, -0.349343,
		0.976926, 0.084063, -0.196341,
		-0.152238, -0.370694, -0.916193,
		25.733023, 40.596001, 35.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164917, 41.262760, 35.230141>,  <25.839590, 40.855488, 35.739910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164917, 41.262760, 35.230141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866821, 41.098507, 35.019997>,  <25.687963, 40.999954, 34.893909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866821, 41.098507, 35.019997>,  <26.164917, 41.262760, 35.230141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866821, 41.098507, 35.019997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153587, 0.872407, -0.464023,
		0.648869, -0.265120, -0.713219,
		-0.745239, -0.410631, -0.525359,
		25.643250, 40.975319, 34.862389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372904, 41.380993, 34.587906>,  <26.164917, 41.262760, 35.230141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372904, 41.380993, 34.587906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977602, 41.321495, 34.573875>,  <25.740421, 41.285797, 34.565456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977602, 41.321495, 34.573875>,  <26.372904, 41.380993, 34.587906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977602, 41.321495, 34.573875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117292, 0.885357, -0.449873,
		0.097971, -0.440474, -0.892404,
		-0.988253, -0.148747, -0.035075,
		25.681126, 41.276871, 34.563354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133127, 41.333305, 33.874550>,  <26.372904, 41.380993, 34.587906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133127, 41.333305, 33.874550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823921, 41.453960, 34.097786>,  <25.638397, 41.526352, 34.231728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823921, 41.453960, 34.097786>,  <26.133127, 41.333305, 33.874550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823921, 41.453960, 34.097786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183416, 0.735890, -0.651785,
		-0.607294, -0.606203, -0.513529,
		-0.773015, 0.301636, 0.558089,
		25.592016, 41.544453, 34.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650433, 41.523396, 33.382504>,  <26.133127, 41.333305, 33.874550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650433, 41.523396, 33.382504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564688, 41.718540, 33.720978>,  <25.513241, 41.835629, 33.924065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564688, 41.718540, 33.720978>,  <25.650433, 41.523396, 33.382504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564688, 41.718540, 33.720978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274852, 0.801193, -0.531550,
		-0.937286, -0.346522, -0.037657,
		-0.214364, 0.487864, 0.846189,
		25.500378, 41.864899, 33.974834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017729, 41.709686, 33.189114>,  <25.650433, 41.523396, 33.382504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017729, 41.709686, 33.189114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133148, 41.944401, 33.491749>,  <25.202400, 42.085228, 33.673328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133148, 41.944401, 33.491749>,  <25.017729, 41.709686, 33.189114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133148, 41.944401, 33.491749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226179, 0.809607, -0.541646,
		-0.930367, -0.014833, 0.366330,
		0.288549, 0.586786, 0.756586,
		25.219713, 42.120438, 33.718723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355709, 42.225277, 33.311260>,  <25.017729, 41.709686, 33.189114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355709, 42.225277, 33.311260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735565, 42.337933, 33.366192>,  <24.963480, 42.405525, 33.399151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735565, 42.337933, 33.366192>,  <24.355709, 42.225277, 33.311260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735565, 42.337933, 33.366192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085498, 0.654548, -0.751170,
		-0.301449, 0.701601, 0.645666,
		0.949641, 0.281643, 0.137327,
		25.020458, 42.422424, 33.407391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337677, 42.993771, 33.517998>,  <24.355709, 42.225277, 33.311260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337677, 42.993771, 33.517998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661043, 42.862206, 33.322739>,  <24.855062, 42.783268, 33.205585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661043, 42.862206, 33.322739>,  <24.337677, 42.993771, 33.517998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661043, 42.862206, 33.322739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222158, 0.597482, -0.770494,
		0.545080, 0.731323, 0.409943,
		0.808414, -0.328909, -0.488145,
		24.903568, 42.763535, 33.176296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745625, 43.558552, 33.273170>,  <24.337677, 42.993771, 33.517998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745625, 43.558552, 33.273170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774355, 43.236496, 33.037682>,  <24.791594, 43.043262, 32.896389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774355, 43.236496, 33.037682>,  <24.745625, 43.558552, 33.273170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774355, 43.236496, 33.037682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256901, 0.555398, -0.790908,
		0.963765, 0.208051, -0.166949,
		0.071826, -0.805139, -0.588721,
		24.795902, 42.994953, 32.861065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118286, 43.799633, 32.611839>,  <24.745625, 43.558552, 33.273170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118286, 43.799633, 32.611839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837971, 43.516010, 32.580532>,  <24.669781, 43.345837, 32.561749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837971, 43.516010, 32.580532>,  <25.118286, 43.799633, 32.611839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837971, 43.516010, 32.580532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284487, 0.378401, -0.880841,
		0.654187, -0.595017, -0.466898,
		-0.700790, -0.709061, -0.078270,
		24.627733, 43.303291, 32.557053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288048, 43.395313, 31.980095>,  <25.118286, 43.799633, 32.611839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288048, 43.395313, 31.980095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906839, 43.425919, 32.097328>,  <24.678114, 43.444283, 32.167667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906839, 43.425919, 32.097328>,  <25.288048, 43.395313, 31.980095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906839, 43.425919, 32.097328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252892, 0.331596, -0.908895,
		-0.166730, -0.940313, -0.296668,
		-0.953020, 0.076515, 0.293085,
		24.620934, 43.448872, 32.185253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781485, 42.968506, 31.612827>,  <25.288048, 43.395313, 31.980095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781485, 42.968506, 31.612827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591667, 43.306892, 31.710104>,  <24.477776, 43.509926, 31.768471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591667, 43.306892, 31.710104>,  <24.781485, 42.968506, 31.612827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591667, 43.306892, 31.710104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095941, 0.224927, -0.969641,
		-0.874987, -0.483471, -0.025575,
		-0.474546, 0.845969, 0.243193,
		24.449303, 43.560684, 31.783062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806412, 43.177551, 30.933838>,  <24.781485, 42.968506, 31.612827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806412, 43.177551, 30.933838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615990, 43.458176, 31.145945>,  <24.501736, 43.626549, 31.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615990, 43.458176, 31.145945>,  <24.806412, 43.177551, 30.933838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615990, 43.458176, 31.145945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283724, 0.448206, -0.847710,
		-0.832389, -0.554006, -0.014321,
		-0.476055, 0.701562, 0.530267,
		24.473173, 43.668644, 31.305025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172974, 42.602112, 30.509201>,  <24.806412, 43.177551, 30.933838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172974, 42.602112, 30.509201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428482, 42.540600, 30.207653>,  <25.581787, 42.503693, 30.026724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428482, 42.540600, 30.207653>,  <25.172974, 42.602112, 30.509201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428482, 42.540600, 30.207653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690251, -0.318305, 0.649796,
		-0.339890, -0.935431, -0.097173,
		0.638771, -0.153786, -0.753871,
		25.620113, 42.494465, 29.981491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527346, 41.875751, 30.462597>,  <25.172974, 42.602112, 30.509201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527346, 41.875751, 30.462597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772545, 42.174908, 30.360704>,  <25.919664, 42.354401, 30.299568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772545, 42.174908, 30.360704>,  <25.527346, 41.875751, 30.462597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772545, 42.174908, 30.360704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740222, -0.430921, 0.516118,
		0.276232, -0.504937, -0.817762,
		0.612998, 0.747894, -0.254731,
		25.956444, 42.399277, 30.284285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152346, 41.673786, 30.073845>,  <25.527346, 41.875751, 30.462597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152346, 41.673786, 30.073845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221964, 42.005474, 30.286297>,  <26.263735, 42.204487, 30.413769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221964, 42.005474, 30.286297>,  <26.152346, 41.673786, 30.073845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221964, 42.005474, 30.286297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614269, -0.512983, 0.599602,
		0.769664, 0.221901, -0.598647,
		0.174044, 0.829222, 0.531131,
		26.274178, 42.254242, 30.445637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836823, 41.531261, 30.317125>,  <26.152346, 41.673786, 30.073845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836823, 41.531261, 30.317125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741940, 41.865612, 30.515131>,  <26.685011, 42.066223, 30.633934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741940, 41.865612, 30.515131>,  <26.836823, 41.531261, 30.317125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741940, 41.865612, 30.515131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664262, -0.232260, 0.710501,
		0.708865, 0.497353, -0.500150,
		-0.237206, 0.835880, 0.495013,
		26.670778, 42.116375, 30.663635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419470, 42.046619, 30.412415>,  <26.836823, 41.531261, 30.317125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419470, 42.046619, 30.412415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128445, 41.992821, 30.681505>,  <26.953829, 41.960541, 30.842958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128445, 41.992821, 30.681505>,  <27.419470, 42.046619, 30.412415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128445, 41.992821, 30.681505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674914, -0.316198, 0.666715,
		0.123042, 0.939111, 0.320830,
		-0.727565, -0.134499, 0.672725,
		26.910175, 41.952473, 30.883324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629562, 42.495361, 30.973112>,  <27.419470, 42.046619, 30.412415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629562, 42.495361, 30.973112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379089, 42.211346, 31.101952>,  <27.228806, 42.040936, 31.179255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379089, 42.211346, 31.101952>,  <27.629562, 42.495361, 30.973112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379089, 42.211346, 31.101952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722807, -0.373771, 0.581244,
		-0.292313, 0.596779, 0.747267,
		-0.626181, -0.710036, 0.322098,
		27.191235, 41.998337, 31.198582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887527, 42.380283, 31.611805>,  <27.629562, 42.495361, 30.973112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887527, 42.380283, 31.611805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638077, 42.070126, 31.572096>,  <27.488405, 41.884033, 31.548269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638077, 42.070126, 31.572096>,  <27.887527, 42.380283, 31.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638077, 42.070126, 31.572096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557422, -0.530125, 0.638943,
		-0.548059, 0.343125, 0.762821,
		-0.623628, -0.775392, -0.099274,
		27.450989, 41.837509, 31.542315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726950, 42.062527, 32.308205>,  <27.887527, 42.380283, 31.611805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726950, 42.062527, 32.308205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676979, 41.774426, 32.035259>,  <27.646996, 41.601562, 31.871490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676979, 41.774426, 32.035259>,  <27.726950, 42.062527, 32.308205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676979, 41.774426, 32.035259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630753, -0.588538, 0.505741,
		-0.765862, -0.367223, 0.527829,
		-0.124928, -0.720257, -0.682366,
		27.639502, 41.558350, 31.830549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875719, 41.501141, 32.744144>,  <27.726950, 42.062527, 32.308205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875719, 41.501141, 32.744144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864391, 41.326035, 32.384689>,  <27.857594, 41.220970, 32.169014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864391, 41.326035, 32.384689>,  <27.875719, 41.501141, 32.744144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864391, 41.326035, 32.384689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287817, -0.864501, 0.412067,
		-0.957267, -0.246974, 0.150481,
		-0.028322, -0.437769, -0.898641,
		27.855894, 41.194702, 32.115097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481550, 40.855640, 32.753159>,  <27.875719, 41.501141, 32.744144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481550, 40.855640, 32.753159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749529, 40.859406, 32.456219>,  <27.910316, 40.861664, 32.278057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749529, 40.859406, 32.456219>,  <27.481550, 40.855640, 32.753159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749529, 40.859406, 32.456219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337195, -0.894689, 0.292970,
		-0.661414, -0.446591, -0.602568,
		0.669949, 0.009409, -0.742348,
		27.950514, 40.862228, 32.233513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543787, 40.091522, 32.486660>,  <27.481550, 40.855640, 32.753159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543787, 40.091522, 32.486660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875317, 40.238708, 32.318062>,  <28.074234, 40.327019, 32.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875317, 40.238708, 32.318062>,  <27.543787, 40.091522, 32.486660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875317, 40.238708, 32.318062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425437, -0.903734, 0.047623,
		-0.363397, -0.218790, -0.905579,
		0.828822, 0.367961, -0.421496,
		28.123962, 40.349098, 32.191612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660143, 39.721619, 31.858999>,  <27.543787, 40.091522, 32.486660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660143, 39.721619, 31.858999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994953, 39.886868, 32.002510>,  <28.195839, 39.986015, 32.088615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994953, 39.886868, 32.002510>,  <27.660143, 39.721619, 31.858999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994953, 39.886868, 32.002510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288834, -0.890504, 0.351536,
		0.464720, -0.190617, -0.864697,
		0.837025, 0.413119, 0.358778,
		28.246061, 40.010803, 32.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191135, 39.310555, 31.599106>,  <27.660143, 39.721619, 31.858999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191135, 39.310555, 31.599106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364765, 39.488132, 31.912663>,  <28.468943, 39.594681, 32.100796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364765, 39.488132, 31.912663>,  <28.191135, 39.310555, 31.599106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364765, 39.488132, 31.912663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276729, -0.893783, 0.352948,
		0.857322, 0.063720, -0.510822,
		0.434074, 0.443950, 0.783893,
		28.494987, 39.621319, 32.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758404, 38.927422, 31.549913>,  <28.191135, 39.310555, 31.599106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758404, 38.927422, 31.549913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747974, 39.097481, 31.911814>,  <28.741716, 39.199516, 32.128952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747974, 39.097481, 31.911814>,  <28.758404, 38.927422, 31.549913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747974, 39.097481, 31.911814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401566, -0.824370, 0.398947,
		0.915459, 0.373720, -0.149227,
		-0.026075, 0.425144, 0.904750,
		28.740152, 39.225025, 32.183239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305069, 38.791790, 31.904091>,  <28.758404, 38.927422, 31.549913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305069, 38.791790, 31.904091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082571, 38.910175, 32.214703>,  <28.949072, 38.981205, 32.401070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082571, 38.910175, 32.214703>,  <29.305069, 38.791790, 31.904091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082571, 38.910175, 32.214703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333167, -0.776625, 0.534653,
		0.761309, 0.556112, 0.333389,
		-0.556245, 0.295962, 0.776530,
		28.915697, 38.998962, 32.447662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678795, 38.586830, 32.367306>,  <29.305069, 38.791790, 31.904091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678795, 38.586830, 32.367306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332430, 38.642220, 32.559563>,  <29.124611, 38.675453, 32.674915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332430, 38.642220, 32.559563>,  <29.678795, 38.586830, 32.367306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332430, 38.642220, 32.559563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200948, -0.783652, 0.587801,
		0.458053, 0.605569, 0.650748,
		-0.865914, 0.138477, 0.480642,
		29.072655, 38.683762, 32.703754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852537, 38.583527, 33.072514>,  <29.678795, 38.586830, 32.367306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852537, 38.583527, 33.072514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464113, 38.488548, 33.082764>,  <29.231058, 38.431561, 33.088913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464113, 38.488548, 33.082764>,  <29.852537, 38.583527, 33.072514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464113, 38.488548, 33.082764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221657, -0.856085, 0.466890,
		-0.088922, 0.459060, 0.883944,
		-0.971062, -0.237449, 0.025629,
		29.172794, 38.417313, 33.090454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588661, 38.372368, 33.806156>,  <29.852537, 38.583527, 33.072514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588661, 38.372368, 33.806156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310825, 38.196922, 33.578064>,  <29.144123, 38.091656, 33.441208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310825, 38.196922, 33.578064>,  <29.588661, 38.372368, 33.806156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310825, 38.196922, 33.578064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003459, -0.794671, 0.607031,
		-0.719399, 0.419665, 0.553487,
		-0.694589, -0.438611, -0.570234,
		29.102449, 38.065338, 33.406994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138517, 38.080257, 34.270813>,  <29.588661, 38.372368, 33.806156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138517, 38.080257, 34.270813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037985, 37.876053, 33.941883>,  <28.977665, 37.753532, 33.744526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037985, 37.876053, 33.941883>,  <29.138517, 38.080257, 34.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037985, 37.876053, 33.941883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175623, -0.811437, 0.557428,
		-0.951835, 0.284517, 0.114282,
		-0.251330, -0.510509, -0.822322,
		28.962585, 37.722900, 33.695187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486519, 37.643463, 34.484535>,  <29.138517, 38.080257, 34.270813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486519, 37.643463, 34.484535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667278, 37.518024, 34.150482>,  <28.775734, 37.442760, 33.950050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667278, 37.518024, 34.150482>,  <28.486519, 37.643463, 34.484535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667278, 37.518024, 34.150482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007852, -0.937537, 0.347797,
		-0.892034, -0.150612, -0.426134,
		0.451899, -0.313593, -0.835133,
		28.802849, 37.423946, 33.899944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105574, 37.033638, 34.315529>,  <28.486519, 37.643463, 34.484535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105574, 37.033638, 34.315529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447918, 37.030598, 34.108669>,  <28.653324, 37.028774, 33.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447918, 37.030598, 34.108669>,  <28.105574, 37.033638, 34.315529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447918, 37.030598, 34.108669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012711, -0.999281, 0.035725,
		-0.517049, -0.037149, -0.855149,
		0.855862, -0.007602, -0.517149,
		28.704676, 37.028316, 33.953526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999184, 36.461563, 33.919239>,  <28.105574, 37.033638, 34.315529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999184, 36.461563, 33.919239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391912, 36.527092, 33.957581>,  <28.627550, 36.566410, 33.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391912, 36.527092, 33.957581>,  <27.999184, 36.461563, 33.919239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391912, 36.527092, 33.957581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151859, -0.980963, 0.121039,
		0.113860, -0.104282, -0.988009,
		0.981822, 0.163820, 0.095856,
		28.686459, 36.576237, 33.986336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410339, 35.884670, 33.481995>,  <27.999184, 36.461563, 33.919239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410339, 35.884670, 33.481995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663713, 36.044636, 33.746971>,  <28.815737, 36.140614, 33.905956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663713, 36.044636, 33.746971>,  <28.410339, 35.884670, 33.481995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663713, 36.044636, 33.746971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273243, -0.916545, 0.292034,
		0.723948, -0.003976, -0.689843,
		0.633434, 0.399912, 0.662444,
		28.853743, 36.164608, 33.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959471, 35.417477, 33.414753>,  <28.410339, 35.884670, 33.481995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959471, 35.417477, 33.414753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035103, 35.624813, 33.748356>,  <29.080482, 35.749214, 33.948517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035103, 35.624813, 33.748356>,  <28.959471, 35.417477, 33.414753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035103, 35.624813, 33.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318085, -0.835863, 0.447386,
		0.929016, 0.180694, -0.322922,
		0.189078, 0.518346, 0.834007,
		29.091825, 35.780315, 33.998558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604811, 35.166931, 33.744026>,  <28.959471, 35.417477, 33.414753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604811, 35.166931, 33.744026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450638, 35.344765, 34.067455>,  <29.358135, 35.451466, 34.261513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450638, 35.344765, 34.067455>,  <29.604811, 35.166931, 33.744026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450638, 35.344765, 34.067455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357382, -0.735960, 0.575014,
		0.850718, 0.510597, 0.124776,
		-0.385430, 0.444582, 0.808573,
		29.335009, 35.478138, 34.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235939, 35.239075, 34.155762>,  <29.604811, 35.166931, 33.744026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235939, 35.239075, 34.155762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887354, 35.243431, 34.351898>,  <29.678202, 35.246044, 34.469578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887354, 35.243431, 34.351898>,  <30.235939, 35.239075, 34.155762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887354, 35.243431, 34.351898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328371, -0.729656, 0.599813,
		0.364310, 0.683728, 0.632293,
		-0.871465, 0.010892, 0.490337,
		29.625914, 35.246700, 34.499001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355301, 35.044056, 34.902409>,  <30.235939, 35.239075, 34.155762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355301, 35.044056, 34.902409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961845, 34.974945, 34.882011>,  <29.725771, 34.933479, 34.869774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961845, 34.974945, 34.882011>,  <30.355301, 35.044056, 34.902409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961845, 34.974945, 34.882011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078349, -0.665180, 0.742561,
		-0.162215, 0.726418, 0.667835,
		-0.983640, -0.172779, -0.050988,
		29.666754, 34.923111, 34.866714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768190, 35.585125, 34.546703>,  <30.355301, 35.044056, 34.902409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768190, 35.585125, 34.546703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917444, 35.900200, 34.350616>,  <31.006996, 36.089245, 34.232964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917444, 35.900200, 34.350616>,  <30.768190, 35.585125, 34.546703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917444, 35.900200, 34.350616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367691, 0.359565, 0.857622,
		0.851806, -0.500259, -0.155460,
		0.373136, 0.787689, -0.490221,
		31.029385, 36.136505, 34.203548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538219, 35.562229, 34.548840>,  <30.768190, 35.585125, 34.546703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538219, 35.562229, 34.548840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378302, 35.928871, 34.549610>,  <31.282351, 36.148857, 34.550072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378302, 35.928871, 34.549610>,  <31.538219, 35.562229, 34.548840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378302, 35.928871, 34.549610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440480, 0.190276, 0.877367,
		0.803830, 0.351616, -0.479817,
		-0.399794, 0.916603, 0.001931,
		31.258364, 36.203854, 34.550190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040104, 36.082062, 34.639149>,  <31.538219, 35.562229, 34.548840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040104, 36.082062, 34.639149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697107, 36.226887, 34.785362>,  <31.491310, 36.313782, 34.873093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697107, 36.226887, 34.785362>,  <32.040104, 36.082062, 34.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697107, 36.226887, 34.785362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447317, 0.173617, 0.877362,
		0.254200, 0.915841, -0.310833,
		-0.857490, 0.362066, 0.365538,
		31.439859, 36.335506, 34.895023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275173, 36.678577, 35.115795>,  <32.040104, 36.082062, 34.639149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275173, 36.678577, 35.115795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919611, 36.514767, 35.197899>,  <31.706274, 36.416481, 35.247162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919611, 36.514767, 35.197899>,  <32.275173, 36.678577, 35.115795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919611, 36.514767, 35.197899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261142, -0.084872, 0.961562,
		-0.376364, 0.908342, 0.182388,
		-0.888907, -0.409526, 0.205264,
		31.652939, 36.391911, 35.259480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857403, 37.101055, 35.608337>,  <32.275173, 36.678577, 35.115795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857403, 37.101055, 35.608337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766684, 36.711864, 35.625652>,  <31.712252, 36.478348, 35.636044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766684, 36.711864, 35.625652>,  <31.857403, 37.101055, 35.608337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766684, 36.711864, 35.625652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071106, 0.027788, 0.997082,
		-0.971343, 0.229213, 0.062883,
		-0.226796, -0.972980, 0.043290,
		31.698645, 36.419971, 35.638638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237404, 37.002117, 35.958473>,  <31.857403, 37.101055, 35.608337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237404, 37.002117, 35.958473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490164, 36.694798, 35.999306>,  <31.641819, 36.510406, 36.023804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490164, 36.694798, 35.999306>,  <31.237404, 37.002117, 35.958473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490164, 36.694798, 35.999306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069808, 0.074756, 0.994755,
		-0.771901, -0.635710, -0.006396,
		0.631898, -0.768299, 0.102082,
		31.679733, 36.464306, 36.029930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904690, 36.490181, 36.335094>,  <31.237404, 37.002117, 35.958473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904690, 36.490181, 36.335094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299053, 36.440804, 36.380249>,  <31.535671, 36.411179, 36.407341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299053, 36.440804, 36.380249>,  <30.904690, 36.490181, 36.335094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299053, 36.440804, 36.380249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127966, -0.121983, 0.984248,
		-0.107704, -0.984829, -0.136058,
		0.985913, -0.123418, 0.112886,
		31.594826, 36.403770, 36.414112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946066, 35.947781, 36.814075>,  <30.904690, 36.490181, 36.335094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946066, 35.947781, 36.814075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294159, 36.144718, 36.820904>,  <31.503014, 36.262882, 36.825001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294159, 36.144718, 36.820904>,  <30.946066, 35.947781, 36.814075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294159, 36.144718, 36.820904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094552, -0.200927, 0.975032,
		0.483484, -0.846890, -0.221406,
		0.870231, 0.492347, 0.017070,
		31.555229, 36.292423, 36.826023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378565, 35.507614, 37.181519>,  <30.946066, 35.947781, 36.814075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378565, 35.507614, 37.181519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569588, 35.856159, 37.226536>,  <31.684202, 36.065285, 37.253544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569588, 35.856159, 37.226536>,  <31.378565, 35.507614, 37.181519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569588, 35.856159, 37.226536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150946, -0.207556, 0.966507,
		0.865537, -0.444576, -0.230649,
		0.477558, 0.871363, 0.112540,
		31.712854, 36.117569, 37.260300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026024, 35.396534, 37.592262>,  <31.378565, 35.507614, 37.181519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026024, 35.396534, 37.592262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917110, 35.779175, 37.633762>,  <31.851761, 36.008759, 37.658661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917110, 35.779175, 37.633762>,  <32.026024, 35.396534, 37.592262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917110, 35.779175, 37.633762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094082, -0.080839, 0.992277,
		0.957605, 0.279946, -0.067988,
		-0.272288, 0.956606, 0.103750,
		31.835424, 36.066158, 37.664886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595177, 35.722782, 37.923725>,  <32.026024, 35.396534, 37.592262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595177, 35.722782, 37.923725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281521, 35.951714, 38.019688>,  <32.093327, 36.089073, 38.077267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281521, 35.951714, 38.019688>,  <32.595177, 35.722782, 37.923725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281521, 35.951714, 38.019688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305511, 0.019520, 0.951988,
		0.540171, 0.819789, -0.190160,
		-0.784142, 0.572332, 0.239911,
		32.046280, 36.123413, 38.091660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826908, 36.238342, 38.421909>,  <32.595177, 35.722782, 37.923725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826908, 36.238342, 38.421909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429024, 36.239006, 38.463005>,  <32.190292, 36.239407, 38.487663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429024, 36.239006, 38.463005>,  <32.826908, 36.238342, 38.421909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429024, 36.239006, 38.463005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102737, 0.001501, 0.994707,
		0.001501, 0.999997, -0.001663,
		-0.994707, 0.001663, 0.102735,
		32.130611, 36.239506, 38.493824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775890, 36.683487, 38.965786>,  <32.826908, 36.238342, 38.421909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775890, 36.683487, 38.965786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423229, 36.495060, 38.954556>,  <32.211632, 36.382004, 38.947819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423229, 36.495060, 38.954556>,  <32.775890, 36.683487, 38.965786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423229, 36.495060, 38.954556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026616, -0.109033, 0.993682,
		-0.471150, 0.875334, 0.108667,
		-0.881652, -0.471065, -0.028073,
		32.158733, 36.353741, 38.946133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359459, 36.897205, 39.541779>,  <32.775890, 36.683487, 38.965786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359459, 36.897205, 39.541779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224380, 36.534286, 39.441566>,  <32.143333, 36.316536, 39.381439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224380, 36.534286, 39.441566>,  <32.359459, 36.897205, 39.541779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224380, 36.534286, 39.441566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213457, -0.333049, 0.918431,
		-0.916731, 0.256676, 0.306140,
		-0.337699, -0.907301, -0.250527,
		32.123070, 36.262096, 39.366409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864143, 36.693535, 40.159496>,  <32.359459, 36.897205, 39.541779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864143, 36.693535, 40.159496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970934, 36.371735, 39.947269>,  <32.035007, 36.178654, 39.819935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970934, 36.371735, 39.947269>,  <31.864143, 36.693535, 40.159496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970934, 36.371735, 39.947269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054421, -0.537084, 0.841771,
		-0.962165, -0.253607, -0.099607,
		0.266976, -0.804502, -0.530565,
		32.051025, 36.130383, 39.788101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764788, 36.307911, 40.583710>,  <31.864143, 36.693535, 40.159496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764788, 36.307911, 40.583710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987988, 36.099808, 40.325108>,  <32.121906, 35.974945, 40.169945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987988, 36.099808, 40.325108>,  <31.764788, 36.307911, 40.583710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987988, 36.099808, 40.325108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350810, -0.558143, 0.751936,
		-0.752043, -0.646381, -0.128933,
		0.558000, -0.520257, -0.646504,
		32.155388, 35.943729, 40.131157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690083, 35.550919, 40.690472>,  <31.764788, 36.307911, 40.583710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690083, 35.550919, 40.690472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048512, 35.600273, 40.519905>,  <32.263569, 35.629887, 40.417564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048512, 35.600273, 40.519905>,  <31.690083, 35.550919, 40.690472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048512, 35.600273, 40.519905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414372, -0.577019, 0.703808,
		-0.159210, -0.807357, -0.568179,
		0.896074, 0.123384, -0.426413,
		32.317333, 35.637287, 40.391983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995729, 34.832932, 40.684479>,  <31.690083, 35.550919, 40.690472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995729, 34.832932, 40.684479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303383, 35.079556, 40.617207>,  <32.487976, 35.227531, 40.576843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303383, 35.079556, 40.617207>,  <31.995729, 34.832932, 40.684479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303383, 35.079556, 40.617207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545141, -0.495604, 0.676165,
		0.333549, -0.611741, -0.717299,
		0.769133, 0.616564, -0.168177,
		32.534122, 35.264526, 40.566753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552162, 34.359921, 40.542862>,  <31.995729, 34.832932, 40.684479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552162, 34.359921, 40.542862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705959, 34.707581, 40.667278>,  <32.798237, 34.916176, 40.741928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705959, 34.707581, 40.667278>,  <32.552162, 34.359921, 40.542862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705959, 34.707581, 40.667278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504865, -0.480070, 0.717387,
		0.772838, -0.118795, -0.623385,
		0.384490, 0.869149, 0.311041,
		32.821308, 34.968327, 40.760590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308422, 34.270370, 40.665077>,  <32.552162, 34.359921, 40.542862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308422, 34.270370, 40.665077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207844, 34.577240, 40.901119>,  <33.147495, 34.761360, 41.042744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207844, 34.577240, 40.901119>,  <33.308422, 34.270370, 40.665077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207844, 34.577240, 40.901119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577819, -0.370138, 0.727408,
		0.776466, 0.523879, -0.350215,
		-0.251446, 0.767169, 0.590107,
		33.132408, 34.807392, 41.078152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886177, 34.447601, 41.089111>,  <33.308422, 34.270370, 40.665077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886177, 34.447601, 41.089111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584435, 34.631756, 41.276299>,  <33.403389, 34.742249, 41.388611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584435, 34.631756, 41.276299>,  <33.886177, 34.447601, 41.089111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584435, 34.631756, 41.276299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334140, -0.344323, 0.877378,
		0.565060, 0.818224, 0.105911,
		-0.754359, 0.460382, 0.467965,
		33.358128, 34.769871, 41.416687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186989, 34.627460, 41.677250>,  <33.886177, 34.447601, 41.089111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186989, 34.627460, 41.677250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803226, 34.702404, 41.761578>,  <33.572971, 34.747368, 41.812172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803226, 34.702404, 41.761578>,  <34.186989, 34.627460, 41.677250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803226, 34.702404, 41.761578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152246, -0.285187, 0.946303,
		0.237416, 0.939982, 0.245086,
		-0.959403, 0.187354, 0.210816,
		33.515404, 34.758610, 41.824821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176117, 34.953136, 42.287781>,  <34.186989, 34.627460, 41.677250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176117, 34.953136, 42.287781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802479, 34.810734, 42.277084>,  <33.578297, 34.725292, 42.270664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802479, 34.810734, 42.277084>,  <34.176117, 34.953136, 42.287781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802479, 34.810734, 42.277084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067262, -0.249064, 0.966149,
		-0.350619, 0.900680, 0.256596,
		-0.934100, -0.356009, -0.026745,
		33.522247, 34.703930, 42.269062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880157, 35.180145, 42.965919>,  <34.176117, 34.953136, 42.287781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880157, 35.180145, 42.965919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645206, 34.894329, 42.813911>,  <33.504234, 34.722839, 42.722706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645206, 34.894329, 42.813911>,  <33.880157, 35.180145, 42.965919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645206, 34.894329, 42.813911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173709, -0.347304, 0.921523,
		-0.790452, 0.607294, 0.079875,
		-0.587377, -0.714545, -0.380019,
		33.468994, 34.679966, 42.699905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318798, 35.210941, 43.320461>,  <33.880157, 35.180145, 42.965919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318798, 35.210941, 43.320461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316864, 34.834530, 43.185146>,  <33.315704, 34.608685, 43.103958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316864, 34.834530, 43.185146>,  <33.318798, 35.210941, 43.320461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316864, 34.834530, 43.185146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204881, -0.330187, 0.921412,
		-0.978775, 0.073762, -0.191204,
		-0.004832, -0.941029, -0.338292,
		33.315414, 34.552219, 43.083660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806694, 34.931965, 43.648800>,  <33.318798, 35.210941, 43.320461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806694, 34.931965, 43.648800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991322, 34.598595, 43.527241>,  <33.102100, 34.398571, 43.454304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991322, 34.598595, 43.527241>,  <32.806694, 34.931965, 43.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991322, 34.598595, 43.527241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119779, -0.397986, 0.909539,
		-0.878979, -0.383417, -0.283526,
		0.461572, -0.833426, -0.303896,
		33.129791, 34.348568, 43.436073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368038, 34.413063, 43.878941>,  <32.806694, 34.931965, 43.648800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368038, 34.413063, 43.878941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726856, 34.241413, 43.836674>,  <32.942146, 34.138424, 43.811314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726856, 34.241413, 43.836674>,  <32.368038, 34.413063, 43.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726856, 34.241413, 43.836674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177897, -0.569480, 0.802524,
		-0.404561, -0.701100, -0.587188,
		0.897042, -0.429129, -0.105666,
		32.995968, 34.112675, 43.804974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213749, 33.746796, 44.019363>,  <32.368038, 34.413063, 43.878941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213749, 33.746796, 44.019363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610950, 33.758858, 44.065025>,  <32.849270, 33.766094, 44.092422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610950, 33.758858, 44.065025>,  <32.213749, 33.746796, 44.019363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610950, 33.758858, 44.065025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073669, -0.597319, 0.798613,
		0.092274, -0.801436, -0.590919,
		0.993005, 0.030159, 0.114158,
		32.908852, 33.767906, 44.099274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412487, 33.079258, 44.284546>,  <32.213749, 33.746796, 44.019363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412487, 33.079258, 44.284546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729191, 33.294250, 44.400642>,  <32.919212, 33.423244, 44.470299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729191, 33.294250, 44.400642>,  <32.412487, 33.079258, 44.284546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729191, 33.294250, 44.400642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017733, -0.495176, 0.868611,
		0.610580, -0.682581, -0.401590,
		0.791756, 0.537478, 0.290241,
		32.966717, 33.455494, 44.487713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886055, 32.707886, 44.723991>,  <32.412487, 33.079258, 44.284546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886055, 32.707886, 44.723991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034512, 33.068542, 44.812813>,  <33.123585, 33.284935, 44.866104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034512, 33.068542, 44.812813>,  <32.886055, 32.707886, 44.723991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034512, 33.068542, 44.812813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007389, -0.236256, 0.971663,
		0.928549, -0.362261, -0.081021,
		0.371137, 0.901637, 0.222052,
		33.145851, 33.339035, 44.879429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596626, 32.649216, 45.066391>,  <32.886055, 32.707886, 44.723991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596626, 32.649216, 45.066391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432087, 32.997440, 45.174397>,  <33.333363, 33.206375, 45.239201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432087, 32.997440, 45.174397>,  <33.596626, 32.649216, 45.066391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432087, 32.997440, 45.174397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170508, -0.217512, 0.961049,
		0.895386, 0.441369, -0.058964,
		-0.411352, 0.870564, 0.270014,
		33.308681, 33.258610, 45.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947655, 32.899876, 45.483257>,  <33.596626, 32.649216, 45.066391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947655, 32.899876, 45.483257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631229, 33.119747, 45.590641>,  <33.441376, 33.251671, 45.655071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631229, 33.119747, 45.590641>,  <33.947655, 32.899876, 45.483257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631229, 33.119747, 45.590641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306506, -0.023648, 0.951575,
		0.529413, 0.835038, -0.149774,
		-0.791060, 0.549683, 0.268464,
		33.393913, 33.284653, 45.671181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225334, 33.402485, 45.954979>,  <33.947655, 32.899876, 45.483257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225334, 33.402485, 45.954979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829449, 33.394680, 46.011662>,  <33.591915, 33.389996, 46.045673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829449, 33.394680, 46.011662>,  <34.225334, 33.402485, 45.954979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829449, 33.394680, 46.011662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140274, 0.061719, 0.988187,
		-0.028029, 0.997903, -0.058347,
		-0.989716, -0.019513, 0.141710,
		33.532536, 33.388824, 46.054176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139156, 33.912033, 46.457287>,  <34.225334, 33.402485, 45.954979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139156, 33.912033, 46.457287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821835, 33.668503, 46.457447>,  <33.631439, 33.522385, 46.457542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821835, 33.668503, 46.457447>,  <34.139156, 33.912033, 46.457287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821835, 33.668503, 46.457447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040823, 0.053853, 0.997714,
		-0.607452, 0.791477, -0.067576,
		-0.793307, -0.608822, 0.000403,
		33.583843, 33.485855, 46.457569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643810, 34.200977, 46.807507>,  <34.139156, 33.912033, 46.457287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643810, 34.200977, 46.807507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517242, 33.823589, 46.847000>,  <33.441303, 33.597157, 46.870697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517242, 33.823589, 46.847000>,  <33.643810, 34.200977, 46.807507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517242, 33.823589, 46.847000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042448, 0.089891, 0.995047,
		-0.947670, 0.319040, 0.011605,
		-0.316416, -0.943469, 0.098729,
		33.422318, 33.540550, 46.876617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130997, 34.191097, 47.293221>,  <33.643810, 34.200977, 46.807507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130997, 34.191097, 47.293221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229950, 33.803696, 47.304611>,  <33.289322, 33.571255, 47.311443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229950, 33.803696, 47.304611>,  <33.130997, 34.191097, 47.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229950, 33.803696, 47.304611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113986, 0.000093, 0.993482,
		-0.962190, -0.249016, -0.110372,
		0.247382, -0.968500, 0.028474,
		33.304165, 33.513145, 47.313152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696415, 33.817116, 47.640648>,  <33.130997, 34.191097, 47.293221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696415, 33.817116, 47.640648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005928, 33.565491, 47.670406>,  <33.191635, 33.414516, 47.688263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005928, 33.565491, 47.670406>,  <32.696415, 33.817116, 47.640648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005928, 33.565491, 47.670406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232155, -0.172350, 0.957288,
		-0.589373, -0.758007, -0.279402,
		0.773786, -0.629064, 0.074397,
		33.238064, 33.376770, 47.692726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485352, 33.165638, 48.010925>,  <32.696415, 33.817116, 47.640648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485352, 33.165638, 48.010925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879795, 33.195766, 48.070148>,  <33.116459, 33.213844, 48.105682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879795, 33.195766, 48.070148>,  <32.485352, 33.165638, 48.010925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879795, 33.195766, 48.070148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109740, -0.373760, 0.921011,
		0.124709, -0.924462, -0.360302,
		0.986106, 0.075319, 0.148061,
		33.175629, 33.218361, 48.114567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679085, 32.598576, 48.351662>,  <32.485352, 33.165638, 48.010925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679085, 32.598576, 48.351662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010223, 32.815025, 48.410801>,  <33.208908, 32.944893, 48.446285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010223, 32.815025, 48.410801>,  <32.679085, 32.598576, 48.351662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010223, 32.815025, 48.410801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217084, -0.552075, 0.805039,
		0.517248, -0.634352, -0.574501,
		0.827846, 0.541120, 0.147852,
		33.258575, 32.977360, 48.455158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053707, 32.118080, 48.605278>,  <32.679085, 32.598576, 48.351662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053707, 32.118080, 48.605278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237835, 32.456745, 48.712067>,  <33.348312, 32.659943, 48.776138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237835, 32.456745, 48.712067>,  <33.053707, 32.118080, 48.605278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237835, 32.456745, 48.712067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252899, -0.413326, 0.874759,
		0.850968, -0.335155, -0.404382,
		0.460321, 0.846660, 0.266967,
		33.375931, 32.710743, 48.792156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657780, 31.952518, 48.843441>,  <33.053707, 32.118080, 48.605278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657780, 31.952518, 48.843441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601162, 32.316334, 48.999752>,  <33.567192, 32.534622, 49.093540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601162, 32.316334, 48.999752>,  <33.657780, 31.952518, 48.843441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601162, 32.316334, 48.999752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267796, -0.344855, 0.899644,
		0.953022, 0.231987, -0.194759,
		-0.141542, 0.909537, 0.390780,
		33.558701, 32.589195, 49.116985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201488, 32.032154, 49.275249>,  <33.657780, 31.952518, 48.843441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201488, 32.032154, 49.275249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932312, 32.296848, 49.407463>,  <33.770805, 32.455666, 49.486794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932312, 32.296848, 49.407463>,  <34.201488, 32.032154, 49.275249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932312, 32.296848, 49.407463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098546, -0.362669, 0.926693,
		0.733099, 0.656186, 0.178845,
		-0.672945, 0.661733, 0.330537,
		33.730427, 32.495369, 49.506622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539734, 32.293964, 49.925640>,  <34.201488, 32.032154, 49.275249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539734, 32.293964, 49.925640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145924, 32.362381, 49.940945>,  <33.909637, 32.403431, 49.950127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145924, 32.362381, 49.940945>,  <34.539734, 32.293964, 49.925640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145924, 32.362381, 49.940945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032076, -0.390441, 0.920069,
		0.172307, 0.904600, 0.389884,
		-0.984521, 0.171040, 0.038260,
		33.850567, 32.413692, 49.952423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435600, 32.453499, 50.590252>,  <34.539734, 32.293964, 49.925640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435600, 32.453499, 50.590252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054928, 32.393929, 50.482822>,  <33.826527, 32.358189, 50.418365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054928, 32.393929, 50.482822>,  <34.435600, 32.453499, 50.590252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054928, 32.393929, 50.482822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179753, -0.438959, 0.880343,
		-0.248996, 0.886079, 0.390978,
		-0.951677, -0.148922, -0.268575,
		33.769424, 32.349251, 50.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078995, 32.746212, 51.110001>,  <34.435600, 32.453499, 50.590252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078995, 32.746212, 51.110001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835297, 32.489864, 50.923191>,  <33.689079, 32.336056, 50.811104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835297, 32.489864, 50.923191>,  <34.078995, 32.746212, 51.110001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835297, 32.489864, 50.923191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222372, -0.427239, 0.876366,
		-0.761163, 0.637776, 0.117783,
		-0.609247, -0.640866, -0.467022,
		33.652523, 32.297604, 50.783085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403187, 32.764820, 51.379044>,  <34.078995, 32.746212, 51.110001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403187, 32.764820, 51.379044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454216, 32.405659, 51.210526>,  <33.484833, 32.190163, 51.109413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454216, 32.405659, 51.210526>,  <33.403187, 32.764820, 51.379044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454216, 32.405659, 51.210526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260651, -0.440189, 0.859241,
		-0.956968, 0.000197, -0.290195,
		0.127571, -0.897905, -0.421299,
		33.492489, 32.136288, 51.084137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968136, 32.312119, 51.757515>,  <33.403187, 32.764820, 51.379044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968136, 32.312119, 51.757515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195362, 32.041950, 51.569427>,  <33.331699, 31.879848, 51.456573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195362, 32.041950, 51.569427>,  <32.968136, 32.312119, 51.757515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195362, 32.041950, 51.569427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249371, -0.685768, 0.683767,
		-0.784294, -0.271163, -0.557990,
		0.568064, -0.675421, -0.470224,
		33.365780, 31.839325, 51.428360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438175, 32.708500, 52.241001>,  <32.968136, 32.312119, 51.757515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438175, 32.708500, 52.241001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319912, 32.329742, 52.190434>,  <32.248955, 32.102489, 52.160095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319912, 32.329742, 52.190434>,  <32.438175, 32.708500, 52.241001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319912, 32.329742, 52.190434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948985, -0.306307, 0.074861,
		-0.109608, -0.097834, 0.989148,
		-0.295659, -0.946892, -0.126417,
		32.231213, 32.045673, 52.152508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616650, 32.260433, 52.883751>,  <32.438175, 32.708500, 52.241001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616650, 32.260433, 52.883751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595943, 32.081562, 52.526573>,  <32.583519, 31.974239, 52.312267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595943, 32.081562, 52.526573>,  <32.616650, 32.260433, 52.883751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595943, 32.081562, 52.526573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939183, -0.325763, 0.108692,
		-0.339493, -0.833013, 0.436846,
		-0.051767, -0.447178, -0.892946,
		32.580414, 31.947409, 52.258690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770081, 31.449038, 52.918659>,  <32.616650, 32.260433, 52.883751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770081, 31.449038, 52.918659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847492, 31.645472, 52.578922>,  <32.893940, 31.763332, 52.375080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847492, 31.645472, 52.578922>,  <32.770081, 31.449038, 52.918659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847492, 31.645472, 52.578922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967521, -0.239040, 0.082240,
		-0.162639, -0.837671, -0.521398,
		0.193525, 0.491088, -0.849342,
		32.905548, 31.792797, 52.324120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097240, 31.060093, 52.374714>,  <32.770081, 31.449038, 52.918659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097240, 31.060093, 52.374714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194237, 31.446198, 52.335785>,  <33.252434, 31.677860, 52.312428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194237, 31.446198, 52.335785>,  <33.097240, 31.060093, 52.374714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194237, 31.446198, 52.335785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959455, -0.223750, 0.171410,
		0.143680, -0.134938, -0.980381,
		0.242490, 0.965260, -0.097319,
		33.266983, 31.735775, 52.306591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614037, 30.547678, 52.298992>,  <33.097240, 31.060093, 52.374714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614037, 30.547678, 52.298992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644360, 30.203779, 52.096966>,  <33.662552, 29.997440, 51.975750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644360, 30.203779, 52.096966>,  <33.614037, 30.547678, 52.298992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644360, 30.203779, 52.096966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523345, 0.396842, -0.754074,
		0.848742, 0.321487, -0.419860,
		0.075807, -0.859746, -0.505065,
		33.667103, 29.945856, 51.945446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918873, 30.573881, 51.562580>,  <33.614037, 30.547678, 52.298992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918873, 30.573881, 51.562580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662308, 30.269789, 51.603828>,  <33.508369, 30.087334, 51.628578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662308, 30.269789, 51.603828>,  <33.918873, 30.573881, 51.562580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662308, 30.269789, 51.603828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584665, 0.397347, -0.707307,
		0.496744, -0.513966, -0.699345,
		-0.641415, -0.760233, 0.103118,
		33.469883, 30.041719, 51.634766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484859, 30.591789, 51.906391>,  <33.918873, 30.573881, 51.562580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484859, 30.591789, 51.906391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295338, 30.240709, 51.935101>,  <34.181625, 30.030062, 51.952328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295338, 30.240709, 51.935101>,  <34.484859, 30.591789, 51.906391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295338, 30.240709, 51.935101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387883, -0.281173, -0.877774,
		0.790605, -0.388051, 0.473666,
		-0.473804, -0.877700, 0.071778,
		34.153198, 29.977400, 51.956635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954914, 30.108837, 51.701248>,  <34.484859, 30.591789, 51.906391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954914, 30.108837, 51.701248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580105, 29.986513, 51.633762>,  <34.355217, 29.913118, 51.593273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580105, 29.986513, 51.633762>,  <34.954914, 30.108837, 51.701248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580105, 29.986513, 51.633762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218253, -0.135575, -0.966429,
		0.272672, -0.942390, 0.193782,
		-0.937025, -0.305812, -0.168712,
		34.298996, 29.894770, 51.583149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020966, 29.712439, 51.196156>,  <34.954914, 30.108837, 51.701248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020966, 29.712439, 51.196156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623451, 29.725689, 51.153660>,  <34.384941, 29.733639, 51.128162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623451, 29.725689, 51.153660>,  <35.020966, 29.712439, 51.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623451, 29.725689, 51.153660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108402, 0.072199, -0.991482,
		-0.025173, -0.996840, -0.075342,
		-0.993788, 0.033126, -0.106242,
		34.325314, 29.735626, 51.121788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774120, 29.269852, 50.669434>,  <35.020966, 29.712439, 51.196156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774120, 29.269852, 50.669434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517376, 29.574896, 50.701546>,  <34.363331, 29.757921, 50.720814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517376, 29.574896, 50.701546>,  <34.774120, 29.269852, 50.669434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517376, 29.574896, 50.701546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083220, 0.173347, -0.981338,
		-0.762294, -0.623200, -0.174728,
		-0.641859, 0.762609, 0.080279,
		34.324818, 29.803679, 50.725628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326530, 29.175079, 50.077705>,  <34.774120, 29.269852, 50.669434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326530, 29.175079, 50.077705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363338, 29.547703, 50.218407>,  <34.385422, 29.771276, 50.302826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363338, 29.547703, 50.218407>,  <34.326530, 29.175079, 50.077705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363338, 29.547703, 50.218407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006420, 0.352687, -0.935719,
		-0.995736, 0.088364, 0.026474,
		0.092021, 0.931560, 0.351750,
		34.390945, 29.827171, 50.323933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753815, 29.506117, 49.786770>,  <34.326530, 29.175079, 50.077705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753815, 29.506117, 49.786770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029984, 29.780792, 49.877796>,  <34.195683, 29.945597, 49.932411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029984, 29.780792, 49.877796>,  <33.753815, 29.506117, 49.786770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029984, 29.780792, 49.877796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041929, 0.352029, -0.935049,
		-0.722195, 0.636033, 0.271840,
		0.690417, 0.686686, 0.227565,
		34.237110, 29.986797, 49.946064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581348, 30.180180, 49.426369>,  <33.753815, 29.506117, 49.786770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581348, 30.180180, 49.426369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974117, 30.180296, 49.502087>,  <34.209778, 30.180367, 49.547520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974117, 30.180296, 49.502087>,  <33.581348, 30.180180, 49.426369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974117, 30.180296, 49.502087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184990, 0.210670, -0.959894,
		-0.040158, 0.977557, 0.206807,
		0.981920, 0.000290, 0.189298,
		34.268692, 30.180384, 49.558876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804604, 30.646278, 48.997112>,  <33.581348, 30.180180, 49.426369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804604, 30.646278, 48.997112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167221, 30.502718, 49.085991>,  <34.384792, 30.416582, 49.139317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167221, 30.502718, 49.085991>,  <33.804604, 30.646278, 48.997112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167221, 30.502718, 49.085991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258127, 0.054850, -0.964553,
		0.333992, 0.931762, 0.142366,
		0.906543, -0.358902, 0.222194,
		34.439182, 30.395048, 49.152649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226048, 31.105808, 48.660759>,  <33.804604, 30.646278, 48.997112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226048, 31.105808, 48.660759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452026, 30.783773, 48.733067>,  <34.587612, 30.590553, 48.776451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452026, 30.783773, 48.733067>,  <34.226048, 31.105808, 48.660759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452026, 30.783773, 48.733067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315471, 0.008315, -0.948899,
		0.762441, 0.593101, 0.258679,
		0.564943, -0.805085, 0.180766,
		34.621510, 30.542248, 48.787296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867649, 31.239044, 48.381939>,  <34.226048, 31.105808, 48.660759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867649, 31.239044, 48.381939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851635, 30.840256, 48.408604>,  <34.842026, 30.600983, 48.424603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851635, 30.840256, 48.408604>,  <34.867649, 31.239044, 48.381939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851635, 30.840256, 48.408604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239815, -0.074351, -0.967967,
		0.969993, -0.022765, 0.242066,
		-0.040033, -0.996972, 0.066661,
		34.839626, 30.541164, 48.428600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436916, 30.973583, 48.015999>,  <34.867649, 31.239044, 48.381939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436916, 30.973583, 48.015999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187233, 30.662067, 48.040813>,  <35.037422, 30.475157, 48.055702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187233, 30.662067, 48.040813>,  <35.436916, 30.973583, 48.015999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187233, 30.662067, 48.040813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199796, -0.235898, -0.951017,
		0.755279, -0.581237, 0.302849,
		-0.624207, -0.778792, 0.062040,
		34.999969, 30.428431, 48.059425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728355, 30.384970, 47.637859>,  <35.436916, 30.973583, 48.015999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728355, 30.384970, 47.637859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333725, 30.323540, 47.660069>,  <35.096947, 30.286682, 47.673393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333725, 30.323540, 47.660069>,  <35.728355, 30.384970, 47.637859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333725, 30.323540, 47.660069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024158, -0.198989, -0.979704,
		0.161507, -0.967894, 0.192607,
		-0.986576, -0.153576, 0.055520,
		35.037754, 30.277468, 47.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636307, 29.751976, 47.253181>,  <35.728355, 30.384970, 47.637859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636307, 29.751976, 47.253181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295559, 29.961412, 47.248009>,  <35.091110, 30.087074, 47.244904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295559, 29.961412, 47.248009>,  <35.636307, 29.751976, 47.253181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295559, 29.961412, 47.248009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105765, -0.196162, -0.974851,
		-0.512959, -0.829080, 0.222483,
		-0.851872, 0.523590, -0.012935,
		35.039997, 30.118488, 47.244129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301128, 29.357235, 46.794415>,  <35.636307, 29.751976, 47.253181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301128, 29.357235, 46.794415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105484, 29.705065, 46.821552>,  <34.988098, 29.913763, 46.837837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105484, 29.705065, 46.821552>,  <35.301128, 29.357235, 46.794415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105484, 29.705065, 46.821552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122378, 0.008599, -0.992446,
		-0.863591, -0.493724, 0.102211,
		-0.489115, 0.869576, 0.067847,
		34.958748, 29.965939, 46.841908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917561, 29.311193, 46.212963>,  <35.301128, 29.357235, 46.794415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917561, 29.311193, 46.212963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910923, 29.699587, 46.308392>,  <34.906940, 29.932623, 46.365650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910923, 29.699587, 46.308392>,  <34.917561, 29.311193, 46.212963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910923, 29.699587, 46.308392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060774, 0.239142, -0.969081,
		-0.998014, -0.001579, -0.062978,
		-0.016591, 0.970983, 0.238571,
		34.905945, 29.990881, 46.379963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527653, 29.584915, 45.654583>,  <34.917561, 29.311193, 46.212963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527653, 29.584915, 45.654583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703861, 29.905815, 45.815750>,  <34.809586, 30.098354, 45.912449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703861, 29.905815, 45.815750>,  <34.527653, 29.584915, 45.654583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703861, 29.905815, 45.815750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123875, 0.390197, -0.912360,
		-0.889156, 0.451823, 0.072511,
		0.440520, 0.802248, 0.402916,
		34.836018, 30.146490, 45.936626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178513, 30.108480, 45.298569>,  <34.527653, 29.584915, 45.654583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178513, 30.108480, 45.298569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514683, 30.276419, 45.435627>,  <34.716385, 30.377182, 45.517864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514683, 30.276419, 45.435627>,  <34.178513, 30.108480, 45.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514683, 30.276419, 45.435627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207814, 0.334263, -0.919283,
		-0.500494, 0.843799, 0.193674,
		0.840428, 0.419848, 0.342649,
		34.766811, 30.402372, 45.538422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091820, 30.779404, 45.082325>,  <34.178513, 30.108480, 45.298569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091820, 30.779404, 45.082325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481594, 30.731123, 45.158119>,  <34.715458, 30.702154, 45.203594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481594, 30.731123, 45.158119>,  <34.091820, 30.779404, 45.082325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481594, 30.731123, 45.158119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224515, 0.553526, -0.801998,
		-0.008080, 0.824039, 0.566476,
		0.974437, -0.120702, 0.189481,
		34.773926, 30.694912, 45.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360050, 31.470736, 45.122276>,  <34.091820, 30.779404, 45.082325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360050, 31.470736, 45.122276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632919, 31.204340, 45.001545>,  <34.796638, 31.044502, 44.929104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632919, 31.204340, 45.001545>,  <34.360050, 31.470736, 45.122276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632919, 31.204340, 45.001545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225705, 0.584432, -0.779421,
		0.695486, 0.463573, 0.548999,
		0.682171, -0.665988, -0.301833,
		34.837570, 31.004543, 44.910995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879520, 31.878609, 44.956005>,  <34.360050, 31.470736, 45.122276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879520, 31.878609, 44.956005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956039, 31.525286, 44.784809>,  <35.001953, 31.313292, 44.682091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956039, 31.525286, 44.784809>,  <34.879520, 31.878609, 44.956005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956039, 31.525286, 44.784809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082428, 0.448960, -0.889742,
		0.978064, 0.134931, 0.158695,
		0.191302, -0.883306, -0.427989,
		35.013432, 31.260294, 44.656414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489971, 31.943605, 44.556038>,  <34.879520, 31.878609, 44.956005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489971, 31.943605, 44.556038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286991, 31.630562, 44.411804>,  <35.165203, 31.442736, 44.325264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286991, 31.630562, 44.411804>,  <35.489971, 31.943605, 44.556038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286991, 31.630562, 44.411804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077030, 0.375584, -0.923581,
		0.858231, -0.496446, -0.130306,
		-0.507450, -0.782609, -0.360580,
		35.134758, 31.395779, 44.303631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785130, 31.792654, 43.968231>,  <35.489971, 31.943605, 44.556038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785130, 31.792654, 43.968231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426453, 31.621363, 43.923397>,  <35.211246, 31.518587, 43.896496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426453, 31.621363, 43.923397>,  <35.785130, 31.792654, 43.968231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426453, 31.621363, 43.923397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076666, 0.399623, -0.913468,
		0.435970, -0.810504, -0.391169,
		-0.896690, -0.428234, -0.112086,
		35.157444, 31.492893, 43.889771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803612, 31.630142, 43.211784>,  <35.785130, 31.792654, 43.968231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803612, 31.630142, 43.211784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433144, 31.633575, 43.362587>,  <35.210861, 31.635635, 43.453068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433144, 31.633575, 43.362587>,  <35.803612, 31.630142, 43.211784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433144, 31.633575, 43.362587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353667, 0.327155, -0.876293,
		-0.130859, -0.944932, -0.299967,
		-0.926172, 0.008582, 0.377002,
		35.155293, 31.636150, 43.475689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362568, 31.226545, 42.758118>,  <35.803612, 31.630142, 43.211784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362568, 31.226545, 42.758118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115349, 31.457010, 42.972054>,  <34.967018, 31.595289, 43.100414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115349, 31.457010, 42.972054>,  <35.362568, 31.226545, 42.758118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115349, 31.457010, 42.972054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453794, 0.294069, -0.841186,
		-0.641938, -0.762602, 0.079708,
		-0.618051, 0.576160, 0.534838,
		34.929932, 31.629858, 43.132504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672180, 30.981739, 42.640686>,  <35.362568, 31.226545, 42.758118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672180, 30.981739, 42.640686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637962, 31.365635, 42.747704>,  <34.617432, 31.595972, 42.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637962, 31.365635, 42.747704>,  <34.672180, 30.981739, 42.640686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637962, 31.365635, 42.747704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507152, 0.189191, -0.840835,
		-0.857601, -0.207612, 0.470551,
		-0.085543, 0.959742, 0.267541,
		34.612301, 31.653557, 42.827965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995567, 31.140795, 42.480614>,  <34.672180, 30.981739, 42.640686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995567, 31.140795, 42.480614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180874, 31.493975, 42.511040>,  <34.292057, 31.705883, 42.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180874, 31.493975, 42.511040>,  <33.995567, 31.140795, 42.480614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180874, 31.493975, 42.511040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432847, 0.300331, -0.849968,
		-0.773322, 0.360837, 0.521315,
		0.463267, 0.882948, 0.076065,
		34.319855, 31.758860, 42.533859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535416, 31.507179, 42.094482>,  <33.995567, 31.140795, 42.480614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535416, 31.507179, 42.094482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861729, 31.736000, 42.128548>,  <34.057518, 31.873293, 42.148987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861729, 31.736000, 42.128548>,  <33.535416, 31.507179, 42.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861729, 31.736000, 42.128548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260691, 0.495147, -0.828776,
		-0.516271, 0.653901, 0.553062,
		0.815785, 0.572051, 0.085164,
		34.106464, 31.907616, 42.154099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309536, 32.152405, 42.132057>,  <33.535416, 31.507179, 42.094482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309536, 32.152405, 42.132057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689499, 32.181618, 42.010506>,  <33.917477, 32.199146, 41.937576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689499, 32.181618, 42.010506>,  <33.309536, 32.152405, 42.132057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689499, 32.181618, 42.010506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307836, 0.386540, -0.869381,
		0.053967, 0.919376, 0.389660,
		0.949908, 0.073034, -0.303878,
		33.974472, 32.203529, 41.919342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212433, 32.630287, 41.686813>,  <33.309536, 32.152405, 42.132057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212433, 32.630287, 41.686813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588928, 32.543327, 41.583427>,  <33.814827, 32.491150, 41.521397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588928, 32.543327, 41.583427>,  <33.212433, 32.630287, 41.686813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588928, 32.543327, 41.583427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158787, 0.390591, -0.906767,
		0.298088, 0.894525, 0.333119,
		0.941239, -0.217402, -0.258469,
		33.871300, 32.478107, 41.505886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409546, 33.208759, 41.396294>,  <33.212433, 32.630287, 41.686813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409546, 33.208759, 41.396294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637550, 32.904606, 41.271782>,  <33.774353, 32.722115, 41.197075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637550, 32.904606, 41.271782>,  <33.409546, 33.208759, 41.396294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637550, 32.904606, 41.271782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024014, 0.363272, -0.931374,
		0.821283, 0.538372, 0.188811,
		0.570016, -0.760387, -0.311277,
		33.808556, 32.676491, 41.178398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895588, 33.517395, 41.046631>,  <33.409546, 33.208759, 41.396294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895588, 33.517395, 41.046631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862949, 33.144604, 40.905342>,  <33.843365, 32.920929, 40.820568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862949, 33.144604, 40.905342>,  <33.895588, 33.517395, 41.046631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862949, 33.144604, 40.905342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087443, 0.346340, -0.934025,
		0.992822, -0.107102, 0.053234,
		-0.081599, -0.931975, -0.353220,
		33.838470, 32.865009, 40.799377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433189, 33.451080, 40.528008>,  <33.895588, 33.517395, 41.046631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433189, 33.451080, 40.528008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161373, 33.164291, 40.465816>,  <33.998283, 32.992218, 40.428501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161373, 33.164291, 40.465816>,  <34.433189, 33.451080, 40.528008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161373, 33.164291, 40.465816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055497, 0.161083, -0.985379,
		0.731533, -0.678237, -0.069673,
		-0.679544, -0.716970, -0.155478,
		33.957508, 32.949200, 40.419174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696690, 33.229221, 39.886852>,  <34.433189, 33.451080, 40.528008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696690, 33.229221, 39.886852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312141, 33.123596, 39.917927>,  <34.081413, 33.060223, 39.936573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312141, 33.123596, 39.917927>,  <34.696690, 33.229221, 39.886852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312141, 33.123596, 39.917927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101563, 0.077984, -0.991768,
		0.255831, -0.961348, -0.101791,
		-0.961371, -0.264063, 0.077687,
		34.023731, 33.044376, 39.941235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500278, 32.746460, 39.315914>,  <34.696690, 33.229221, 39.886852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500278, 32.746460, 39.315914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148609, 32.876453, 39.455303>,  <33.937607, 32.954449, 39.538937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148609, 32.876453, 39.455303>,  <34.500278, 32.746460, 39.315914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148609, 32.876453, 39.455303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347452, 0.063232, -0.935563,
		-0.326081, -0.943602, 0.057326,
		-0.879175, 0.324987, 0.348475,
		33.884857, 32.973949, 39.559845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032284, 32.461357, 38.831547>,  <34.500278, 32.746460, 39.315914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032284, 32.461357, 38.831547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795376, 32.720661, 39.022953>,  <33.653233, 32.876244, 39.137798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795376, 32.720661, 39.022953>,  <34.032284, 32.461357, 38.831547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795376, 32.720661, 39.022953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397635, 0.281368, -0.873338,
		-0.700787, -0.707526, 0.091124,
		-0.592270, 0.648258, 0.478516,
		33.617695, 32.915138, 39.166508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405731, 32.311539, 38.616238>,  <34.032284, 32.461357, 38.831547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405731, 32.311539, 38.616238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407936, 32.683376, 38.763653>,  <33.409260, 32.906479, 38.852100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407936, 32.683376, 38.763653>,  <33.405731, 32.311539, 38.616238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407936, 32.683376, 38.763653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650563, 0.283219, -0.704667,
		-0.759433, -0.235869, 0.606323,
		0.005513, 0.929598, 0.368533,
		33.409592, 32.962257, 38.874214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785488, 32.602779, 38.476425>,  <33.405731, 32.311539, 38.616238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785488, 32.602779, 38.476425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943245, 32.961609, 38.556133>,  <33.037899, 33.176907, 38.603958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943245, 32.961609, 38.556133>,  <32.785488, 32.602779, 38.476425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943245, 32.961609, 38.556133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387150, 0.358872, -0.849309,
		-0.833406, 0.257816, 0.488840,
		0.394397, 0.897074, 0.199273,
		33.061565, 33.230732, 38.615913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335003, 33.105404, 38.265053>,  <32.785488, 32.602779, 38.476425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335003, 33.105404, 38.265053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676872, 33.312771, 38.276142>,  <32.881996, 33.437191, 38.282795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676872, 33.312771, 38.276142>,  <32.335003, 33.105404, 38.265053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676872, 33.312771, 38.276142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200418, 0.378731, -0.903546,
		-0.478914, 0.766685, 0.427593,
		0.854678, 0.518418, 0.027722,
		32.933277, 33.468296, 38.284458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140156, 33.858952, 38.047459>,  <32.335003, 33.105404, 38.265053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140156, 33.858952, 38.047459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528027, 33.777618, 37.993229>,  <32.760750, 33.728821, 37.960690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528027, 33.777618, 37.993229>,  <32.140156, 33.858952, 38.047459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528027, 33.777618, 37.993229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076810, 0.273080, -0.958920,
		0.231999, 0.940257, 0.249183,
		0.969679, -0.203329, -0.135575,
		32.818932, 33.716621, 37.952557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348351, 34.398590, 37.637390>,  <32.140156, 33.858952, 38.047459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348351, 34.398590, 37.637390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614933, 34.102848, 37.599064>,  <32.774883, 33.925404, 37.576069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614933, 34.102848, 37.599064>,  <32.348351, 34.398590, 37.637390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614933, 34.102848, 37.599064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036085, 0.096375, -0.994691,
		0.744668, 0.666378, 0.037550,
		0.666459, -0.739359, -0.095814,
		32.814869, 33.881039, 37.570320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940327, 34.700760, 37.226559>,  <32.348351, 34.398590, 37.637390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940327, 34.700760, 37.226559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923389, 34.301437, 37.210644>,  <32.913227, 34.061844, 37.201096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923389, 34.301437, 37.210644>,  <32.940327, 34.700760, 37.226559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923389, 34.301437, 37.210644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031112, 0.041125, -0.998669,
		0.998619, -0.041044, -0.032801,
		-0.042339, -0.998310, -0.039792,
		32.910686, 34.001945, 37.198708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378929, 34.577473, 36.816418>,  <32.940327, 34.700760, 37.226559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378929, 34.577473, 36.816418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184898, 34.228252, 36.796459>,  <33.068481, 34.018723, 36.784485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184898, 34.228252, 36.796459>,  <33.378929, 34.577473, 36.816418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184898, 34.228252, 36.796459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090960, 0.006374, -0.995834,
		0.869729, -0.487593, 0.076321,
		-0.485075, -0.873048, -0.049895,
		33.039375, 33.966339, 36.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760529, 34.185749, 36.389206>,  <33.378929, 34.577473, 36.816418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760529, 34.185749, 36.389206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391994, 34.031818, 36.367111>,  <33.170876, 33.939461, 36.353855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391994, 34.031818, 36.367111>,  <33.760529, 34.185749, 36.389206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391994, 34.031818, 36.367111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002097, 0.137171, -0.990545,
		0.388765, -0.912739, -0.125574,
		-0.921334, -0.384826, -0.055241,
		33.115593, 33.916370, 36.350540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987286, 33.808132, 35.847839>,  <33.760529, 34.185749, 36.389206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987286, 33.808132, 35.847839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117588, 33.660572, 35.499634>,  <34.195770, 33.572037, 35.290710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117588, 33.660572, 35.499634>,  <33.987286, 33.808132, 35.847839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117588, 33.660572, 35.499634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570738, -0.657317, 0.492131,
		-0.753752, -0.657150, -0.003578,
		0.325755, -0.368902, -0.870514,
		34.215313, 33.549900, 35.238480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901035, 33.034912, 35.793766>,  <33.987286, 33.808132, 35.847839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901035, 33.034912, 35.793766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228878, 33.140045, 35.590130>,  <34.425583, 33.203125, 35.467949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228878, 33.140045, 35.590130>,  <33.901035, 33.034912, 35.793766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228878, 33.140045, 35.590130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556932, -0.574013, 0.600280,
		-0.134452, -0.775519, -0.616841,
		0.819603, 0.262830, -0.509089,
		34.474758, 33.218895, 35.437405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251198, 32.381691, 35.719154>,  <33.901035, 33.034912, 35.793766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251198, 32.381691, 35.719154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532391, 32.662655, 35.674545>,  <34.701107, 32.831234, 35.647781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532391, 32.662655, 35.674545>,  <34.251198, 32.381691, 35.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532391, 32.662655, 35.674545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591490, -0.490349, 0.640076,
		0.394908, -0.515928, -0.760175,
		0.702985, 0.702407, -0.111523,
		34.743286, 32.873379, 35.641087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853867, 31.959743, 35.801132>,  <34.251198, 32.381691, 35.719154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853867, 31.959743, 35.801132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000683, 32.327244, 35.859348>,  <35.088772, 32.547745, 35.894279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000683, 32.327244, 35.859348>,  <34.853867, 31.959743, 35.801132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000683, 32.327244, 35.859348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622642, -0.358896, 0.695350,
		0.691087, -0.164598, -0.703780,
		0.367037, 0.918750, 0.145543,
		35.110794, 32.602867, 35.903011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561745, 31.832483, 35.948860>,  <34.853867, 31.959743, 35.801132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561745, 31.832483, 35.948860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467876, 32.196854, 36.084591>,  <35.411556, 32.415474, 36.166031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467876, 32.196854, 36.084591>,  <35.561745, 31.832483, 35.948860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467876, 32.196854, 36.084591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611295, -0.133122, 0.780126,
		0.755809, 0.390504, -0.525604,
		-0.234673, 0.910925, 0.339328,
		35.397476, 32.470131, 36.186390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125484, 32.050011, 36.249153>,  <35.561745, 31.832483, 35.948860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125484, 32.050011, 36.249153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869328, 32.300938, 36.426407>,  <35.715633, 32.451496, 36.532761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869328, 32.300938, 36.426407>,  <36.125484, 32.050011, 36.249153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869328, 32.300938, 36.426407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526896, -0.060969, 0.847740,
		0.558824, 0.776369, -0.291490,
		-0.640388, 0.627322, 0.443137,
		35.677212, 32.489136, 36.559349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465065, 32.404129, 36.715797>,  <36.125484, 32.050011, 36.249153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465065, 32.404129, 36.715797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093498, 32.444092, 36.858421>,  <35.870560, 32.468071, 36.943996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093498, 32.444092, 36.858421>,  <36.465065, 32.404129, 36.715797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093498, 32.444092, 36.858421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301889, -0.353285, 0.885467,
		0.214433, 0.930165, 0.298011,
		-0.928914, 0.099907, 0.356563,
		35.814823, 32.474064, 36.965389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551472, 32.684055, 37.373863>,  <36.465065, 32.404129, 36.715797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551472, 32.684055, 37.373863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170742, 32.565849, 37.406601>,  <35.942303, 32.494926, 37.426243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170742, 32.565849, 37.406601>,  <36.551472, 32.684055, 37.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170742, 32.565849, 37.406601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156427, -0.238367, 0.958494,
		-0.263743, 0.925122, 0.273111,
		-0.951825, -0.295518, 0.081847,
		35.885193, 32.477196, 37.431156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305519, 32.978252, 37.961922>,  <36.551472, 32.684055, 37.373863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305519, 32.978252, 37.961922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054363, 32.672337, 37.904179>,  <35.903667, 32.488785, 37.869534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054363, 32.672337, 37.904179>,  <36.305519, 32.978252, 37.961922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054363, 32.672337, 37.904179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181094, -0.323956, 0.928578,
		-0.756938, 0.556904, 0.341909,
		-0.627893, -0.764794, -0.144362,
		35.865997, 32.442898, 37.860870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941727, 32.870335, 38.560802>,  <36.305519, 32.978252, 37.961922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941727, 32.870335, 38.560802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880547, 32.510178, 38.397877>,  <35.843838, 32.294083, 38.300121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880547, 32.510178, 38.397877>,  <35.941727, 32.870335, 38.560802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880547, 32.510178, 38.397877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341333, -0.434931, 0.833263,
		-0.927414, -0.011578, 0.373857,
		-0.152954, -0.900390, -0.407313,
		35.834660, 32.240059, 38.275684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543591, 32.450710, 39.111633>,  <35.941727, 32.870335, 38.560802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543591, 32.450710, 39.111633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700207, 32.187996, 38.853851>,  <35.794178, 32.030365, 38.699181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700207, 32.187996, 38.853851>,  <35.543591, 32.450710, 39.111633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700207, 32.187996, 38.853851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276357, -0.584105, 0.763183,
		-0.877680, -0.476918, -0.047194,
		0.391542, -0.656788, -0.644457,
		35.817669, 31.990959, 38.660515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299248, 31.720860, 39.418587>,  <35.543591, 32.450710, 39.111633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299248, 31.720860, 39.418587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615871, 31.686316, 39.176601>,  <35.805847, 31.665588, 39.031410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615871, 31.686316, 39.176601>,  <35.299248, 31.720860, 39.418587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615871, 31.686316, 39.176601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405241, -0.666802, 0.625424,
		-0.457399, -0.740215, -0.492817,
		0.791559, -0.086359, -0.604960,
		35.853340, 31.660408, 38.995113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323151, 31.105930, 39.415283>,  <35.299248, 31.720860, 39.418587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323151, 31.105930, 39.415283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688118, 31.202003, 39.282742>,  <35.907101, 31.259647, 39.203217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688118, 31.202003, 39.282742>,  <35.323151, 31.105930, 39.415283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688118, 31.202003, 39.282742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398108, -0.708560, 0.582626,
		-0.094851, -0.663517, -0.742124,
		0.912422, 0.240183, -0.331359,
		35.961845, 31.274057, 39.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705635, 30.466034, 39.310749>,  <35.323151, 31.105930, 39.415283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705635, 30.466034, 39.310749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965832, 30.762419, 39.377491>,  <36.121948, 30.940250, 39.417538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965832, 30.762419, 39.377491>,  <35.705635, 30.466034, 39.310749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965832, 30.762419, 39.377491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524997, -0.597402, 0.606208,
		0.548857, -0.306733, -0.777606,
		0.650487, 0.740963, 0.166854,
		36.160976, 30.984707, 39.427547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353157, 30.074329, 39.432419>,  <35.705635, 30.466034, 39.310749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353157, 30.074329, 39.432419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400970, 30.453924, 39.549133>,  <36.429657, 30.681681, 39.619164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400970, 30.453924, 39.549133>,  <36.353157, 30.074329, 39.432419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400970, 30.453924, 39.549133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377100, -0.315266, 0.870864,
		0.918427, 0.005937, -0.395546,
		0.119532, 0.948985, 0.291787,
		36.436829, 30.738619, 39.636669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961353, 30.058067, 39.902977>,  <36.353157, 30.074329, 39.432419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961353, 30.058067, 39.902977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762989, 30.395966, 39.983452>,  <36.643970, 30.598705, 40.031738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762989, 30.395966, 39.983452>,  <36.961353, 30.058067, 39.902977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762989, 30.395966, 39.983452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176716, -0.128663, 0.975816,
		0.850203, 0.519470, -0.085475,
		-0.495910, 0.844747, 0.201188,
		36.614216, 30.649389, 40.043808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409176, 30.361624, 40.290867>,  <36.961353, 30.058067, 39.902977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409176, 30.361624, 40.290867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065197, 30.544783, 40.381042>,  <36.858810, 30.654678, 40.435146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065197, 30.544783, 40.381042>,  <37.409176, 30.361624, 40.290867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065197, 30.544783, 40.381042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213963, -0.077586, 0.973756,
		0.463371, 0.885613, -0.031253,
		-0.859946, 0.457897, 0.225440,
		36.807213, 30.682152, 40.448673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525093, 30.872074, 40.930767>,  <37.409176, 30.361624, 40.290867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525093, 30.872074, 40.930767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139729, 30.766769, 40.910652>,  <36.908508, 30.703587, 40.898582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139729, 30.766769, 40.910652>,  <37.525093, 30.872074, 40.930767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139729, 30.766769, 40.910652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020653, -0.114132, 0.993251,
		-0.267223, 0.957950, 0.104519,
		-0.963413, -0.263261, -0.050284,
		36.850704, 30.687792, 40.895569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216534, 31.327065, 41.427090>,  <37.525093, 30.872074, 40.930767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216534, 31.327065, 41.427090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928200, 31.051413, 41.397438>,  <36.755199, 30.886021, 41.379646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928200, 31.051413, 41.397438>,  <37.216534, 31.327065, 41.427090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928200, 31.051413, 41.397438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067195, -0.036965, 0.997055,
		-0.689841, 0.723694, -0.019660,
		-0.720836, -0.689130, -0.074128,
		36.711948, 30.844673, 41.375198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699581, 31.490629, 41.919987>,  <37.216534, 31.327065, 41.427090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699581, 31.490629, 41.919987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668839, 31.098783, 41.845749>,  <36.650391, 30.863676, 41.801208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668839, 31.098783, 41.845749>,  <36.699581, 31.490629, 41.919987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668839, 31.098783, 41.845749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103979, -0.177252, 0.978657,
		-0.991605, 0.094518, -0.088235,
		-0.076861, -0.979616, -0.185592,
		36.645779, 30.804899, 41.790070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330639, 31.256668, 42.445282>,  <36.699581, 31.490629, 41.919987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330639, 31.256668, 42.445282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439316, 30.899025, 42.302872>,  <36.504520, 30.684439, 42.217426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439316, 30.899025, 42.302872>,  <36.330639, 31.256668, 42.445282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439316, 30.899025, 42.302872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152929, -0.325126, 0.933223,
		-0.950156, -0.307996, 0.048401,
		0.271692, -0.894109, -0.356022,
		36.520824, 30.630793, 42.196064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867939, 30.727688, 42.687267>,  <36.330639, 31.256668, 42.445282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867939, 30.727688, 42.687267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221592, 30.555815, 42.613850>,  <36.433784, 30.452690, 42.569798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221592, 30.555815, 42.613850>,  <35.867939, 30.727688, 42.687267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221592, 30.555815, 42.613850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132073, -0.146989, 0.980281,
		-0.448190, -0.890936, -0.073207,
		0.884128, -0.429683, -0.183548,
		36.486832, 30.426910, 42.558784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880108, 30.102322, 42.964340>,  <35.867939, 30.727688, 42.687267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880108, 30.102322, 42.964340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263706, 30.213051, 42.940006>,  <36.493866, 30.279488, 42.925404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263706, 30.213051, 42.940006>,  <35.880108, 30.102322, 42.964340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263706, 30.213051, 42.940006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129248, -0.236095, 0.963096,
		0.252243, -0.931466, -0.262192,
		0.958993, 0.276822, -0.060837,
		36.551403, 30.296097, 42.921757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192383, 29.659300, 43.506065>,  <35.880108, 30.102322, 42.964340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192383, 29.659300, 43.506065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466839, 29.937181, 43.419716>,  <36.631512, 30.103910, 43.367905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466839, 29.937181, 43.419716>,  <36.192383, 29.659300, 43.506065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466839, 29.937181, 43.419716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363125, -0.069934, 0.929112,
		0.630361, -0.715888, -0.300249,
		0.686137, 0.694704, -0.215873,
		36.672680, 30.145594, 43.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866398, 29.354284, 43.643475>,  <36.192383, 29.659300, 43.506065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866398, 29.354284, 43.643475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899963, 29.752409, 43.662708>,  <36.920101, 29.991283, 43.674248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899963, 29.752409, 43.662708>,  <36.866398, 29.354284, 43.643475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899963, 29.752409, 43.662708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399362, -0.077804, 0.913486,
		0.912945, -0.057446, -0.404019,
		0.083910, 0.995312, 0.048089,
		36.925137, 30.051003, 43.677135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431190, 29.459581, 44.094788>,  <36.866398, 29.354284, 43.643475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431190, 29.459581, 44.094788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282745, 29.830225, 44.070549>,  <37.193680, 30.052610, 44.056004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282745, 29.830225, 44.070549>,  <37.431190, 29.459581, 44.094788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282745, 29.830225, 44.070549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371826, 0.208084, 0.904680,
		0.850895, 0.313204, -0.421759,
		-0.371111, 0.926609, -0.060600,
		37.171413, 30.108208, 44.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950584, 29.835854, 44.451027>,  <37.431190, 29.459581, 44.094788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950584, 29.835854, 44.451027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607456, 30.041418, 44.453529>,  <37.401581, 30.164757, 44.455029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607456, 30.041418, 44.453529>,  <37.950584, 29.835854, 44.451027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607456, 30.041418, 44.453529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208721, 0.337227, 0.917994,
		0.469658, 0.788780, -0.396545,
		-0.857821, 0.513911, 0.006253,
		37.350109, 30.195591, 44.455406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013931, 30.545734, 44.669460>,  <37.950584, 29.835854, 44.451027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013931, 30.545734, 44.669460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650269, 30.406845, 44.761436>,  <37.432072, 30.323511, 44.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650269, 30.406845, 44.761436>,  <38.013931, 30.545734, 44.669460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650269, 30.406845, 44.761436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107120, 0.338590, 0.934817,
		-0.402446, 0.874525, -0.270636,
		-0.909155, -0.347223, 0.229943,
		37.377522, 30.302679, 44.830418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538685, 31.139143, 44.996288>,  <38.013931, 30.545734, 44.669460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538685, 31.139143, 44.996288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377651, 30.791315, 45.110676>,  <37.281033, 30.582619, 45.179306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377651, 30.791315, 45.110676>,  <37.538685, 31.139143, 44.996288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377651, 30.791315, 45.110676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014585, 0.318453, 0.947826,
		-0.915267, 0.377409, -0.140887,
		-0.402584, -0.869569, 0.285965,
		37.256874, 30.530445, 45.196465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900536, 31.297321, 45.463009>,  <37.538685, 31.139143, 44.996288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900536, 31.297321, 45.463009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040356, 30.929592, 45.535301>,  <37.124249, 30.708956, 45.578678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040356, 30.929592, 45.535301>,  <36.900536, 31.297321, 45.463009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040356, 30.929592, 45.535301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045252, 0.209240, 0.976817,
		-0.935825, -0.333267, 0.114741,
		0.349549, -0.919322, 0.180731,
		37.145222, 30.653795, 45.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550079, 31.131607, 46.099663>,  <36.900536, 31.297321, 45.463009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550079, 31.131607, 46.099663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850979, 30.870169, 46.066349>,  <37.031517, 30.713305, 46.046360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850979, 30.870169, 46.066349>,  <36.550079, 31.131607, 46.099663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850979, 30.870169, 46.066349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156751, 0.054750, 0.986120,
		-0.639965, -0.754860, 0.143637,
		0.752246, -0.653597, -0.083287,
		37.076653, 30.674089, 46.041363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410664, 30.610161, 46.688965>,  <36.550079, 31.131607, 46.099663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410664, 30.610161, 46.688965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792107, 30.547647, 46.586033>,  <37.020973, 30.510139, 46.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792107, 30.547647, 46.586033>,  <36.410664, 30.610161, 46.688965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792107, 30.547647, 46.586033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231880, -0.163883, 0.958840,
		-0.192019, -0.974022, -0.120041,
		0.953604, -0.156281, -0.257325,
		37.078186, 30.500763, 46.508835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596039, 29.942028, 46.939053>,  <36.410664, 30.610161, 46.688965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596039, 29.942028, 46.939053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910957, 30.186722, 46.908199>,  <37.099907, 30.333538, 46.889687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910957, 30.186722, 46.908199>,  <36.596039, 29.942028, 46.939053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910957, 30.186722, 46.908199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141876, -0.058000, 0.988184,
		0.600032, -0.788934, -0.132453,
		0.787295, 0.611734, -0.077129,
		37.147144, 30.370241, 46.885059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127281, 29.661381, 47.408703>,  <36.596039, 29.942028, 46.939053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127281, 29.661381, 47.408703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255333, 30.034086, 47.340195>,  <37.332165, 30.257710, 47.299091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255333, 30.034086, 47.340195>,  <37.127281, 29.661381, 47.408703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255333, 30.034086, 47.340195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243813, 0.093660, 0.965289,
		0.915462, -0.350778, -0.197192,
		0.320133, 0.931763, -0.171267,
		37.351372, 30.313616, 47.288815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815327, 29.710653, 47.748196>,  <37.127281, 29.661381, 47.408703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815327, 29.710653, 47.748196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719448, 30.094395, 47.688614>,  <37.661922, 30.324640, 47.652863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719448, 30.094395, 47.688614>,  <37.815327, 29.710653, 47.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719448, 30.094395, 47.688614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309725, 0.220975, 0.924792,
		0.920118, 0.175531, -0.350102,
		-0.239693, 0.959353, -0.148957,
		37.647541, 30.382200, 47.643929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301769, 30.076290, 48.101521>,  <37.815327, 29.710653, 47.748196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301769, 30.076290, 48.101521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019497, 30.356611, 48.059788>,  <37.850132, 30.524803, 48.034748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019497, 30.356611, 48.059788>,  <38.301769, 30.076290, 48.101521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019497, 30.356611, 48.059788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190331, 0.329346, 0.924827,
		0.682483, 0.632778, -0.365798,
		-0.705685, 0.700802, -0.104336,
		37.807793, 30.566853, 48.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568562, 30.804073, 48.268509>,  <38.301769, 30.076290, 48.101521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568562, 30.804073, 48.268509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172680, 30.832001, 48.318485>,  <37.935150, 30.848757, 48.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172680, 30.832001, 48.318485>,  <38.568562, 30.804073, 48.268509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172680, 30.832001, 48.318485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138821, 0.255779, 0.956716,
		0.034838, 0.964211, -0.262837,
		-0.989704, 0.069818, 0.124942,
		37.875767, 30.852945, 48.355968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543846, 31.417788, 48.703079>,  <38.568562, 30.804073, 48.268509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543846, 31.417788, 48.703079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188938, 31.235100, 48.728870>,  <37.975994, 31.125488, 48.744347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188938, 31.235100, 48.728870>,  <38.543846, 31.417788, 48.703079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188938, 31.235100, 48.728870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026143, 0.089768, 0.995620,
		-0.460506, 0.885071, -0.067709,
		-0.887272, -0.456718, 0.064478,
		37.922756, 31.098083, 48.748215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050804, 31.840975, 49.187733>,  <38.543846, 31.417788, 48.703079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050804, 31.840975, 49.187733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928829, 31.461637, 49.222740>,  <37.855644, 31.234035, 49.243744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928829, 31.461637, 49.222740>,  <38.050804, 31.840975, 49.187733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928829, 31.461637, 49.222740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153966, 0.041599, 0.987200,
		-0.939845, 0.314507, 0.133327,
		-0.304935, -0.948343, 0.087520,
		37.837349, 31.177135, 49.248997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178600, 32.497952, 48.844830>,  <38.050804, 31.840975, 49.187733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178600, 32.497952, 48.844830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537144, 32.603786, 48.987114>,  <38.752270, 32.667286, 49.072487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537144, 32.603786, 48.987114>,  <38.178600, 32.497952, 48.844830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537144, 32.603786, 48.987114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309700, 0.200407, -0.929475,
		-0.317213, 0.943309, 0.097695,
		0.896360, 0.264586, 0.355714,
		38.806053, 32.683163, 49.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286850, 33.170856, 48.747986>,  <38.178600, 32.497952, 48.844830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286850, 33.170856, 48.747986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666359, 33.052399, 48.792027>,  <38.894066, 32.981323, 48.818451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666359, 33.052399, 48.792027>,  <38.286850, 33.170856, 48.747986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666359, 33.052399, 48.792027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183282, 0.232016, -0.955289,
		0.257355, 0.926536, 0.274409,
		0.948776, -0.296142, 0.110106,
		38.950993, 32.963554, 48.825058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744671, 33.651482, 48.427811>,  <38.286850, 33.170856, 48.747986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744671, 33.651482, 48.427811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986237, 33.332962, 48.441582>,  <39.131176, 33.141850, 48.449844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986237, 33.332962, 48.441582>,  <38.744671, 33.651482, 48.427811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986237, 33.332962, 48.441582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309225, 0.194270, -0.930934,
		0.734617, 0.572854, 0.363560,
		0.603918, -0.796302, 0.034427,
		39.167412, 33.094070, 48.451908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477108, 33.822643, 48.018543>,  <38.744671, 33.651482, 48.427811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477108, 33.822643, 48.018543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374615, 33.436218, 48.031647>,  <39.313118, 33.204365, 48.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374615, 33.436218, 48.031647>,  <39.477108, 33.822643, 48.018543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374615, 33.436218, 48.031647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017271, -0.038463, -0.999111,
		0.966460, -0.255443, 0.026541,
		-0.256237, -0.966059, 0.032761,
		39.297745, 33.146400, 48.041473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057484, 33.401211, 47.608994>,  <39.477108, 33.822643, 48.018543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057484, 33.401211, 47.608994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715824, 33.193378, 47.617695>,  <39.510830, 33.068680, 47.622913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715824, 33.193378, 47.617695>,  <40.057484, 33.401211, 47.608994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715824, 33.193378, 47.617695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009994, -0.058214, -0.998254,
		0.519939, -0.852436, 0.054916,
		-0.854145, -0.519580, 0.021749,
		39.459579, 33.037506, 47.624218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200058, 32.971760, 47.094090>,  <40.057484, 33.401211, 47.608994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200058, 32.971760, 47.094090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810375, 32.921864, 47.169315>,  <39.576565, 32.891926, 47.214451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810375, 32.921864, 47.169315>,  <40.200058, 32.971760, 47.094090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810375, 32.921864, 47.169315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187794, -0.014050, -0.982108,
		0.125152, -0.992090, -0.009739,
		-0.974202, -0.124742, 0.188066,
		39.518116, 32.884441, 47.225735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993061, 32.428356, 46.701801>,  <40.200058, 32.971760, 47.094090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993061, 32.428356, 46.701801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632862, 32.593773, 46.755611>,  <39.416744, 32.693024, 46.787895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632862, 32.593773, 46.755611>,  <39.993061, 32.428356, 46.701801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632862, 32.593773, 46.755611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232439, -0.196270, -0.952602,
		-0.367539, -0.889079, 0.272863,
		-0.900493, 0.413542, 0.134520,
		39.362713, 32.717834, 46.795967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521896, 31.973051, 46.480907>,  <39.993061, 32.428356, 46.701801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521896, 31.973051, 46.480907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323902, 32.318954, 46.447010>,  <39.205105, 32.526497, 46.426670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323902, 32.318954, 46.447010>,  <39.521896, 31.973051, 46.480907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323902, 32.318954, 46.447010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271422, -0.246535, -0.930349,
		-0.825419, -0.437511, 0.356746,
		-0.494989, 0.864757, -0.084745,
		39.175407, 32.578381, 46.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889477, 31.824280, 46.173824>,  <39.521896, 31.973051, 46.480907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889477, 31.824280, 46.173824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930668, 32.218681, 46.121376>,  <38.955383, 32.455322, 46.089909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930668, 32.218681, 46.121376>,  <38.889477, 31.824280, 46.173824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930668, 32.218681, 46.121376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414267, -0.077328, -0.906864,
		-0.904311, 0.147705, 0.400506,
		0.102978, 0.986004, -0.131117,
		38.961559, 32.514484, 46.082043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285999, 32.085945, 45.946075>,  <38.889477, 31.824280, 46.173824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285999, 32.085945, 45.946075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535854, 32.376324, 45.830952>,  <38.685768, 32.550552, 45.761879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535854, 32.376324, 45.830952>,  <38.285999, 32.085945, 45.946075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535854, 32.376324, 45.830952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317129, -0.100981, -0.942991,
		-0.713623, 0.680298, 0.167142,
		0.624636, 0.725946, -0.287805,
		38.723244, 32.594109, 45.744610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965748, 32.429169, 45.394402>,  <38.285999, 32.085945, 45.946075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965748, 32.429169, 45.394402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346172, 32.539291, 45.338272>,  <38.574429, 32.605366, 45.304596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346172, 32.539291, 45.338272>,  <37.965748, 32.429169, 45.394402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346172, 32.539291, 45.338272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130980, -0.052128, -0.990013,
		-0.279871, 0.959942, -0.013518,
		0.951061, 0.275305, -0.140322,
		38.631489, 32.621883, 45.296177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886192, 32.800232, 44.881111>,  <37.965748, 32.429169, 45.394402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886192, 32.800232, 44.881111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271870, 32.696003, 44.900810>,  <38.503277, 32.633465, 44.912632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271870, 32.696003, 44.900810>,  <37.886192, 32.800232, 44.881111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271870, 32.696003, 44.900810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007190, -0.159965, -0.987096,
		0.265088, 0.952110, -0.152364,
		0.964197, -0.260572, 0.049251,
		38.561131, 32.617832, 44.915585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272644, 33.205158, 44.421188>,  <37.886192, 32.800232, 44.881111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272644, 33.205158, 44.421188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485344, 32.868336, 44.457363>,  <38.612965, 32.666241, 44.479069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485344, 32.868336, 44.457363>,  <38.272644, 33.205158, 44.421188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485344, 32.868336, 44.457363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024032, -0.091743, -0.995493,
		0.846558, 0.531531, -0.028549,
		0.531754, -0.842056, 0.090439,
		38.644871, 32.615719, 44.484493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731853, 33.259491, 43.888527>,  <38.272644, 33.205158, 44.421188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731853, 33.259491, 43.888527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777012, 32.875282, 43.990234>,  <38.804108, 32.644756, 44.051258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777012, 32.875282, 43.990234>,  <38.731853, 33.259491, 43.888527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777012, 32.875282, 43.990234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096728, -0.265310, -0.959299,
		0.988887, 0.083706, -0.122862,
		0.112895, -0.960523, 0.254265,
		38.810879, 32.587124, 44.066513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214241, 33.049389, 43.500210>,  <38.731853, 33.259491, 43.888527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214241, 33.049389, 43.500210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025612, 32.708294, 43.590061>,  <38.912434, 32.503635, 43.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025612, 32.708294, 43.590061>,  <39.214241, 33.049389, 43.500210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025612, 32.708294, 43.590061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113492, -0.193918, -0.974431,
		0.874493, -0.485009, -0.005333,
		-0.471573, -0.852738, 0.224625,
		38.884140, 32.452473, 43.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534420, 32.731113, 43.065971>,  <39.214241, 33.049389, 43.500210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534420, 32.731113, 43.065971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207890, 32.518124, 43.155483>,  <39.011971, 32.390331, 43.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207890, 32.518124, 43.155483>,  <39.534420, 32.731113, 43.065971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207890, 32.518124, 43.155483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244743, -0.032055, -0.969058,
		0.523173, -0.845838, -0.104152,
		-0.816328, -0.532475, 0.223783,
		38.962990, 32.358379, 43.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577290, 32.115433, 42.739887>,  <39.534420, 32.731113, 43.065971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577290, 32.115433, 42.739887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196693, 32.217888, 42.808079>,  <38.968338, 32.279362, 42.848991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196693, 32.217888, 42.808079>,  <39.577290, 32.115433, 42.739887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196693, 32.217888, 42.808079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196525, -0.079610, -0.977262,
		-0.236748, -0.963355, 0.126087,
		-0.951487, 0.256144, 0.170475,
		38.911247, 32.294731, 42.859222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263699, 31.800167, 42.256271>,  <39.577290, 32.115433, 42.739887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263699, 31.800167, 42.256271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959633, 32.039696, 42.357117>,  <38.777195, 32.183414, 42.417625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959633, 32.039696, 42.357117>,  <39.263699, 31.800167, 42.256271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959633, 32.039696, 42.357117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348783, -0.048708, -0.935937,
		-0.548182, -0.799398, 0.245886,
		-0.760163, 0.598824, 0.252116,
		38.731583, 32.219341, 42.432751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698387, 31.523588, 42.014450>,  <39.263699, 31.800167, 42.256271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698387, 31.523588, 42.014450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614403, 31.913088, 42.049618>,  <38.564011, 32.146786, 42.070721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614403, 31.913088, 42.049618>,  <38.698387, 31.523588, 42.014450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614403, 31.913088, 42.049618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248653, 0.033787, -0.968003,
		-0.945562, -0.225107, 0.235031,
		-0.209964, 0.973748, 0.087922,
		38.551414, 32.205212, 42.075993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031658, 31.603327, 41.795429>,  <38.698387, 31.523588, 42.014450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031658, 31.603327, 41.795429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217979, 31.953896, 41.746582>,  <38.329773, 32.164238, 41.717274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217979, 31.953896, 41.746582>,  <38.031658, 31.603327, 41.795429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217979, 31.953896, 41.746582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398679, 0.084649, -0.913175,
		-0.789989, 0.474046, 0.388841,
		0.465802, 0.876422, -0.122120,
		38.357719, 32.216824, 41.709946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585167, 31.913017, 41.352947>,  <38.031658, 31.603327, 41.795429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585167, 31.913017, 41.352947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902882, 32.155994, 41.348511>,  <38.093510, 32.301781, 41.345848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902882, 32.155994, 41.348511>,  <37.585167, 31.913017, 41.352947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902882, 32.155994, 41.348511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224954, 0.277086, -0.934140,
		-0.564363, 0.744470, 0.356733,
		0.794286, 0.607443, -0.011095,
		38.141167, 32.338226, 41.345181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403393, 32.551891, 40.979713>,  <37.585167, 31.913017, 41.352947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403393, 32.551891, 40.979713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802097, 32.545574, 40.948181>,  <38.041321, 32.541782, 40.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802097, 32.545574, 40.948181>,  <37.403393, 32.551891, 40.979713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802097, 32.545574, 40.948181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070739, 0.293760, -0.953258,
		0.038214, 0.955749, 0.291692,
		0.996763, -0.015794, -0.078834,
		38.101128, 32.540836, 40.924530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600677, 33.205177, 40.695988>,  <37.403393, 32.551891, 40.979713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600677, 33.205177, 40.695988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914455, 32.965332, 40.632610>,  <38.102722, 32.821426, 40.594582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914455, 32.965332, 40.632610>,  <37.600677, 33.205177, 40.695988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914455, 32.965332, 40.632610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142900, 0.423353, -0.894624,
		0.603506, 0.679145, 0.417783,
		0.784449, -0.599612, -0.158446,
		38.149792, 32.785450, 40.585075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031162, 33.586800, 40.345741>,  <37.600677, 33.205177, 40.695988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031162, 33.586800, 40.345741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161240, 33.217178, 40.265358>,  <38.239285, 32.995407, 40.217129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161240, 33.217178, 40.265358>,  <38.031162, 33.586800, 40.345741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161240, 33.217178, 40.265358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212682, 0.278527, -0.936584,
		0.921421, 0.261831, 0.287103,
		0.325193, -0.924049, -0.200954,
		38.258797, 32.939964, 40.205070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496159, 33.740292, 39.827915>,  <38.031162, 33.586800, 40.345741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496159, 33.740292, 39.827915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425041, 33.348522, 39.789722>,  <38.382370, 33.113461, 39.766808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425041, 33.348522, 39.789722>,  <38.496159, 33.740292, 39.827915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425041, 33.348522, 39.789722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111438, 0.076361, -0.990833,
		0.977737, -0.186806, 0.095569,
		-0.177796, -0.979425, -0.095478,
		38.371704, 33.054695, 39.761078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089272, 33.464062, 39.449780>,  <38.496159, 33.740292, 39.827915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089272, 33.464062, 39.449780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818676, 33.171616, 39.414356>,  <38.656319, 32.996147, 39.393101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818676, 33.171616, 39.414356>,  <39.089272, 33.464062, 39.449780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818676, 33.171616, 39.414356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286465, -0.150450, -0.946204,
		0.678459, -0.665461, 0.311216,
		-0.676484, -0.731113, -0.088557,
		38.615730, 32.952282, 39.387791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326611, 33.024570, 38.910793>,  <39.089272, 33.464062, 39.449780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326611, 33.024570, 38.910793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941364, 32.917793, 38.924381>,  <38.710217, 32.853729, 38.932533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941364, 32.917793, 38.924381>,  <39.326611, 33.024570, 38.910793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941364, 32.917793, 38.924381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043830, 0.031067, -0.998556,
		0.265499, -0.963212, -0.041621,
		-0.963114, -0.266939, 0.033970,
		38.652431, 32.837711, 38.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280346, 32.455853, 38.403152>,  <39.326611, 33.024570, 38.910793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280346, 32.455853, 38.403152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928402, 32.639050, 38.453888>,  <38.717236, 32.748970, 38.484329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928402, 32.639050, 38.453888>,  <39.280346, 32.455853, 38.403152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928402, 32.639050, 38.453888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030023, 0.212794, -0.976636,
		-0.474284, -0.863110, -0.173479,
		-0.879860, 0.457994, 0.126839,
		38.664444, 32.776447, 38.491940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832874, 32.157913, 37.890774>,  <39.280346, 32.455853, 38.403152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832874, 32.157913, 37.890774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645741, 32.497803, 37.988018>,  <38.533463, 32.701736, 38.046364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645741, 32.497803, 37.988018>,  <38.832874, 32.157913, 37.890774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645741, 32.497803, 37.988018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051369, 0.248457, -0.967280,
		-0.882323, -0.465012, -0.072586,
		-0.467832, 0.849725, 0.243107,
		38.505390, 32.752720, 38.060951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466484, 32.151283, 37.369869>,  <38.832874, 32.157913, 37.890774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466484, 32.151283, 37.369869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437881, 32.517250, 37.528770>,  <38.420719, 32.736832, 37.624111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437881, 32.517250, 37.528770>,  <38.466484, 32.151283, 37.369869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437881, 32.517250, 37.528770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167358, 0.381618, -0.909043,
		-0.983300, -0.131482, 0.125833,
		-0.071503, 0.914921, 0.397249,
		38.416431, 32.791725, 37.647945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932755, 32.404655, 37.102695>,  <38.466484, 32.151283, 37.369869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932755, 32.404655, 37.102695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127937, 32.735523, 37.214184>,  <38.245049, 32.934044, 37.281078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127937, 32.735523, 37.214184>,  <37.932755, 32.404655, 37.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127937, 32.735523, 37.214184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163951, 0.400489, -0.901515,
		-0.857330, 0.394207, 0.331038,
		0.487960, 0.827170, 0.278721,
		38.274326, 32.983673, 37.297798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608128, 32.885296, 36.746170>,  <37.932755, 32.404655, 37.102695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608128, 32.885296, 36.746170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955780, 33.056530, 36.845249>,  <38.164371, 33.159271, 36.904697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955780, 33.056530, 36.845249>,  <37.608128, 32.885296, 36.746170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955780, 33.056530, 36.845249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092075, 0.632124, -0.769377,
		-0.485933, 0.645883, 0.588815,
		0.869132, 0.428081, 0.247701,
		38.216518, 33.184956, 36.919559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497211, 33.707462, 36.692177>,  <37.608128, 32.885296, 36.746170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497211, 33.707462, 36.692177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875614, 33.580509, 36.665840>,  <38.102657, 33.504337, 36.650040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875614, 33.580509, 36.665840>,  <37.497211, 33.707462, 36.692177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875614, 33.580509, 36.665840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164089, 0.644083, -0.747149,
		0.279541, 0.696005, 0.661388,
		0.946008, -0.317385, -0.065841,
		38.159416, 33.485294, 36.646088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846420, 34.352642, 36.518677>,  <37.497211, 33.707462, 36.692177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846420, 34.352642, 36.518677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089340, 34.045055, 36.438805>,  <38.235092, 33.860504, 36.390881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089340, 34.045055, 36.438805>,  <37.846420, 34.352642, 36.518677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089340, 34.045055, 36.438805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321861, 0.467926, -0.823074,
		0.726353, 0.435585, 0.531674,
		0.607303, -0.768967, -0.199681,
		38.271530, 33.814365, 36.378899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427925, 34.619595, 36.448254>,  <37.846420, 34.352642, 36.518677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427925, 34.619595, 36.448254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505741, 34.281853, 36.248566>,  <38.552429, 34.079208, 36.128754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505741, 34.281853, 36.248566>,  <38.427925, 34.619595, 36.448254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505741, 34.281853, 36.248566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367492, 0.534613, -0.761012,
		0.909452, -0.035411, 0.414298,
		0.194541, -0.844355, -0.499218,
		38.564102, 34.028545, 36.098801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080318, 34.627804, 36.151012>,  <38.427925, 34.619595, 36.448254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080318, 34.627804, 36.151012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908234, 34.351994, 35.917957>,  <38.804981, 34.186508, 35.778126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908234, 34.351994, 35.917957>,  <39.080318, 34.627804, 36.151012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908234, 34.351994, 35.917957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237539, 0.536206, -0.809975,
		0.870913, -0.486863, -0.066894,
		-0.430215, -0.689528, -0.582637,
		38.779167, 34.145134, 35.743168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640999, 34.335274, 35.601669>,  <39.080318, 34.627804, 36.151012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640999, 34.335274, 35.601669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282188, 34.235870, 35.455475>,  <39.066902, 34.176228, 35.367756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282188, 34.235870, 35.455475>,  <39.640999, 34.335274, 35.601669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282188, 34.235870, 35.455475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279587, 0.321401, -0.904728,
		0.342309, -0.913751, -0.218824,
		-0.897026, -0.248516, -0.365491,
		39.013081, 34.161316, 35.345829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756691, 33.976177, 35.008583>,  <39.640999, 34.335274, 35.601669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756691, 33.976177, 35.008583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377689, 34.099728, 34.975506>,  <39.150288, 34.173859, 34.955658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377689, 34.099728, 34.975506>,  <39.756691, 33.976177, 35.008583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377689, 34.099728, 34.975506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208312, 0.400080, -0.892492,
		-0.242584, -0.862863, -0.443419,
		-0.947502, 0.308874, -0.082692,
		39.093437, 34.192390, 34.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543900, 33.706726, 34.371437>,  <39.756691, 33.976177, 35.008583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543900, 33.706726, 34.371437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291389, 34.006870, 34.449871>,  <39.139885, 34.186958, 34.496933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291389, 34.006870, 34.449871>,  <39.543900, 33.706726, 34.371437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291389, 34.006870, 34.449871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232055, 0.423994, -0.875431,
		-0.740028, -0.507136, -0.441783,
		-0.631276, 0.750362, 0.196084,
		39.102005, 34.231979, 34.508698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996769, 33.744785, 33.837513>,  <39.543900, 33.706726, 34.371437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996769, 33.744785, 33.837513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039738, 34.109585, 33.995865>,  <39.065517, 34.328465, 34.090878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039738, 34.109585, 33.995865>,  <38.996769, 33.744785, 33.837513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039738, 34.109585, 33.995865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341908, 0.340011, -0.876066,
		-0.933574, 0.229461, -0.275295,
		0.107419, 0.911998, 0.395880,
		39.071964, 34.383183, 34.114628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735931, 34.321171, 33.345894>,  <38.996769, 33.744785, 33.837513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735931, 34.321171, 33.345894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043636, 34.449345, 33.567001>,  <39.228260, 34.526249, 33.699665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043636, 34.449345, 33.567001>,  <38.735931, 34.321171, 33.345894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043636, 34.449345, 33.567001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447359, 0.347572, -0.824053,
		-0.456182, 0.881201, 0.124026,
		0.769264, 0.320434, 0.552769,
		39.274414, 34.545475, 33.732834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868702, 35.105190, 33.328892>,  <38.735931, 34.321171, 33.345894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868702, 35.105190, 33.328892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215096, 34.927063, 33.419891>,  <39.422932, 34.820187, 33.474491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215096, 34.927063, 33.419891>,  <38.868702, 35.105190, 33.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215096, 34.927063, 33.419891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477285, 0.600282, -0.641764,
		0.149227, 0.664341, 0.732381,
		0.865985, -0.445323, 0.227502,
		39.474892, 34.793465, 33.488140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338253, 35.618553, 33.451283>,  <38.868702, 35.105190, 33.328892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338253, 35.618553, 33.451283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511856, 35.273964, 33.345821>,  <39.616016, 35.067211, 33.282547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511856, 35.273964, 33.345821>,  <39.338253, 35.618553, 33.451283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511856, 35.273964, 33.345821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458712, 0.463177, -0.758321,
		0.775387, 0.208174, 0.596187,
		0.434003, -0.861470, -0.263649,
		39.642056, 35.015522, 33.266727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859070, 35.988319, 33.091934>,  <39.338253, 35.618553, 33.451283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859070, 35.988319, 33.091934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931091, 36.211086, 32.767609>,  <39.974304, 36.344746, 32.573013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931091, 36.211086, 32.767609>,  <39.859070, 35.988319, 33.091934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931091, 36.211086, 32.767609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983390, 0.121092, -0.135208,
		0.022884, 0.821695, 0.569468,
		0.180058, 0.556915, -0.810817,
		39.985107, 36.378162, 32.524364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385662, 36.477772, 33.449360>,  <39.859070, 35.988319, 33.091934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385662, 36.477772, 33.449360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744087, 36.645878, 33.392151>,  <40.959141, 36.746742, 33.357826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744087, 36.645878, 33.392151>,  <40.385662, 36.477772, 33.449360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744087, 36.645878, 33.392151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371738, 0.886439, 0.275748,
		0.242671, -0.193918, 0.950530,
		0.896059, 0.420264, -0.143027,
		41.012905, 36.771957, 33.349243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707401, 36.839733, 33.967449>,  <40.385662, 36.477772, 33.449360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707401, 36.839733, 33.967449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865097, 37.010441, 33.641888>,  <40.959717, 37.112865, 33.446548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865097, 37.010441, 33.641888>,  <40.707401, 36.839733, 33.967449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865097, 37.010441, 33.641888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238022, 0.902834, 0.358101,
		0.887647, 0.052548, 0.457517,
		0.394245, 0.426767, -0.813905,
		40.983368, 37.138470, 33.397717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959328, 37.543770, 34.092312>,  <40.707401, 36.839733, 33.967449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959328, 37.543770, 34.092312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992214, 37.548328, 33.693691>,  <41.011944, 37.551064, 33.454521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992214, 37.548328, 33.693691>,  <40.959328, 37.543770, 34.092312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992214, 37.548328, 33.693691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002608, 0.999934, 0.011220,
		0.996611, 0.001677, 0.082239,
		0.082215, 0.011397, -0.996549,
		41.016880, 37.551746, 33.394726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615467, 37.374722, 34.474552>,  <40.959328, 37.543770, 34.092312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615467, 37.374722, 34.474552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980713, 37.373962, 34.637630>,  <42.199860, 37.373505, 34.735477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980713, 37.373962, 34.637630>,  <41.615467, 37.374722, 34.474552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980713, 37.373962, 34.637630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158662, -0.922819, 0.351043,
		0.375566, -0.385229, -0.842941,
		0.913114, -0.001902, 0.407700,
		42.254646, 37.373390, 34.759941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844959, 36.764091, 34.289845>,  <41.615467, 37.374722, 34.474552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844959, 36.764091, 34.289845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061478, 36.866238, 34.610291>,  <42.191391, 36.927525, 34.802559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061478, 36.866238, 34.610291>,  <41.844959, 36.764091, 34.289845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061478, 36.866238, 34.610291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215515, -0.878800, 0.425751,
		0.812742, -0.403110, -0.420658,
		0.541299, 0.255367, 0.801114,
		42.223866, 36.942848, 34.850624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410667, 36.218220, 34.420921>,  <41.844959, 36.764091, 34.289845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410667, 36.218220, 34.420921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399357, 36.400036, 34.777031>,  <42.392570, 36.509125, 34.990696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399357, 36.400036, 34.777031>,  <42.410667, 36.218220, 34.420921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399357, 36.400036, 34.777031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187518, -0.877236, 0.441921,
		0.981854, -0.154446, 0.110043,
		-0.028281, 0.454537, 0.890279,
		42.390873, 36.536396, 35.044113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900829, 35.870605, 34.862774>,  <42.410667, 36.218220, 34.420921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900829, 35.870605, 34.862774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659321, 36.068935, 35.112453>,  <42.514416, 36.187931, 35.262260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659321, 36.068935, 35.112453>,  <42.900829, 35.870605, 34.862774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659321, 36.068935, 35.112453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078279, -0.816120, 0.572556,
		0.793305, 0.296831, 0.531562,
		-0.603771, 0.495822, 0.624196,
		42.478188, 36.217682, 35.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151306, 35.729279, 35.520218>,  <42.900829, 35.870605, 34.862774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151306, 35.729279, 35.520218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775879, 35.842361, 35.599388>,  <42.550625, 35.910210, 35.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775879, 35.842361, 35.599388>,  <43.151306, 35.729279, 35.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775879, 35.842361, 35.599388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078771, -0.733879, 0.674698,
		0.335993, 0.617657, 0.711062,
		-0.938565, 0.282705, 0.197925,
		42.494308, 35.927174, 35.658764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005646, 35.699760, 36.264572>,  <43.151306, 35.729279, 35.520218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005646, 35.699760, 36.264572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644035, 35.675041, 36.095379>,  <42.427071, 35.660210, 35.993862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644035, 35.675041, 36.095379>,  <43.005646, 35.699760, 36.264572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644035, 35.675041, 36.095379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259833, -0.706284, 0.658521,
		-0.339445, 0.705226, 0.622441,
		-0.904026, -0.061801, -0.422986,
		42.372826, 35.656502, 35.968483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600777, 35.472511, 36.789238>,  <43.005646, 35.699760, 36.264572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600777, 35.472511, 36.789238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381027, 35.394741, 36.464180>,  <42.249180, 35.348080, 36.269146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381027, 35.394741, 36.464180>,  <42.600777, 35.472511, 36.789238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381027, 35.394741, 36.464180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447773, -0.752616, 0.482771,
		-0.705473, 0.629100, 0.326406,
		-0.549370, -0.194426, -0.812644,
		42.216217, 35.336414, 36.220387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799931, 35.380707, 37.095730>,  <42.600777, 35.472511, 36.789238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799931, 35.380707, 37.095730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889881, 35.218227, 36.741459>,  <41.943851, 35.120739, 36.528896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889881, 35.218227, 36.741459>,  <41.799931, 35.380707, 37.095730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889881, 35.218227, 36.741459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440390, -0.853196, 0.279489,
		-0.869189, 0.327196, -0.370748,
		0.224873, -0.406202, -0.885682,
		41.957344, 35.096367, 36.475754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248524, 35.065380, 36.946243>,  <41.799931, 35.380707, 37.095730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248524, 35.065380, 36.946243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489952, 34.871460, 36.693047>,  <41.634808, 34.755108, 36.541130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489952, 34.871460, 36.693047>,  <41.248524, 35.065380, 36.946243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489952, 34.871460, 36.693047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407290, -0.869979, 0.277942,
		-0.685431, 0.090051, -0.722548,
		0.603573, -0.484797, -0.632987,
		41.671024, 34.726021, 36.503151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901039, 34.578194, 36.516644>,  <41.248524, 35.065380, 36.946243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901039, 34.578194, 36.516644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271904, 34.428425, 36.522003>,  <41.494423, 34.338562, 36.525219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271904, 34.428425, 36.522003>,  <40.901039, 34.578194, 36.516644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271904, 34.428425, 36.522003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352257, -0.858969, 0.371600,
		-0.127628, -0.349253, -0.928296,
		0.927160, -0.374426, 0.013398,
		41.550053, 34.316097, 36.526024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800755, 33.918167, 36.320827>,  <40.901039, 34.578194, 36.516644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800755, 33.918167, 36.320827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180119, 33.903343, 36.446777>,  <41.407738, 33.894451, 36.522346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180119, 33.903343, 36.446777>,  <40.800755, 33.918167, 36.320827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180119, 33.903343, 36.446777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115597, -0.965198, 0.234585,
		0.295223, -0.258882, -0.919687,
		0.948410, -0.037058, 0.314875,
		41.464642, 33.892227, 36.541241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056553, 33.343658, 36.088169>,  <40.800755, 33.918167, 36.320827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056553, 33.343658, 36.088169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293896, 33.432186, 36.397736>,  <41.436302, 33.485302, 36.583477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293896, 33.432186, 36.397736>,  <41.056553, 33.343658, 36.088169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293896, 33.432186, 36.397736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121495, -0.925820, 0.357906,
		0.795720, -0.306392, -0.522449,
		0.593354, 0.221317, 0.773919,
		41.471901, 33.498581, 36.629910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479637, 32.775906, 36.254684>,  <41.056553, 33.343658, 36.088169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479637, 32.775906, 36.254684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480091, 32.970432, 36.604198>,  <41.480362, 33.087147, 36.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480091, 32.970432, 36.604198>,  <41.479637, 32.775906, 36.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480091, 32.970432, 36.604198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096327, -0.869771, 0.483962,
		0.995349, 0.083621, -0.047830,
		0.001132, 0.486318, 0.873781,
		41.480431, 33.116329, 36.866333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825809, 32.354576, 36.669540>,  <41.479637, 32.775906, 36.254684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825809, 32.354576, 36.669540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610748, 32.574528, 36.925217>,  <41.481712, 32.706497, 37.078621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610748, 32.574528, 36.925217>,  <41.825809, 32.354576, 36.669540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610748, 32.574528, 36.925217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075628, -0.786478, 0.612971,
		0.839765, 0.281228, 0.464441,
		-0.537657, 0.549876, 0.639188,
		41.449451, 32.739491, 37.116974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012501, 31.997017, 37.266373>,  <41.825809, 32.354576, 36.669540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012501, 31.997017, 37.266373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701618, 32.226536, 37.369682>,  <41.515087, 32.364246, 37.431667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701618, 32.226536, 37.369682>,  <42.012501, 31.997017, 37.266373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701618, 32.226536, 37.369682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140339, -0.558182, 0.817764,
		0.613397, 0.599325, 0.514349,
		-0.777206, 0.573797, 0.258279,
		41.468456, 32.398674, 37.447166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158588, 32.192230, 37.965561>,  <42.012501, 31.997017, 37.266373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158588, 32.192230, 37.965561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768684, 32.192966, 37.876270>,  <41.534740, 32.193409, 37.822697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768684, 32.192966, 37.876270>,  <42.158588, 32.192230, 37.965561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768684, 32.192966, 37.876270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166449, -0.672351, 0.721276,
		-0.148757, 0.740231, 0.655691,
		-0.974765, 0.001844, -0.223227,
		41.476254, 32.193520, 37.809303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809608, 32.191372, 38.609783>,  <42.158588, 32.192230, 37.965561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809608, 32.191372, 38.609783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538879, 32.029144, 38.364044>,  <41.376442, 31.931807, 38.216602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538879, 32.029144, 38.364044>,  <41.809608, 32.191372, 38.609783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538879, 32.029144, 38.364044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145789, -0.744166, 0.651891,
		-0.721563, 0.530781, 0.444543,
		-0.676825, -0.405571, -0.614345,
		41.335831, 31.907473, 38.179741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323456, 31.958565, 39.085503>,  <41.809608, 32.191372, 38.609783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323456, 31.958565, 39.085503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223690, 31.788359, 38.737541>,  <41.163830, 31.686235, 38.528767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223690, 31.788359, 38.737541>,  <41.323456, 31.958565, 39.085503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223690, 31.788359, 38.737541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305030, -0.818044, 0.487607,
		-0.919103, 0.386961, 0.074234,
		-0.249412, -0.425517, -0.869902,
		41.148865, 31.660704, 38.476570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575249, 31.694551, 39.160767>,  <41.323456, 31.958565, 39.085503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575249, 31.694551, 39.160767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755737, 31.466698, 38.885983>,  <40.864029, 31.329985, 38.721111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755737, 31.466698, 38.885983>,  <40.575249, 31.694551, 39.160767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755737, 31.466698, 38.885983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295801, -0.821730, 0.487096,
		-0.841964, -0.016583, -0.539279,
		0.451219, -0.569636, -0.686962,
		40.891106, 31.295807, 38.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111172, 31.168751, 39.011051>,  <40.575249, 31.694551, 39.160767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111172, 31.168751, 39.011051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484615, 31.054230, 38.924881>,  <40.708683, 30.985518, 38.873180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484615, 31.054230, 38.924881>,  <40.111172, 31.168751, 39.011051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484615, 31.054230, 38.924881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188049, -0.903319, 0.385554,
		-0.304981, -0.319447, -0.897185,
		0.933608, -0.286301, -0.215423,
		40.764698, 30.968340, 38.860252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166924, 30.596846, 38.567329>,  <40.111172, 31.168751, 39.011051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166924, 30.596846, 38.567329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497028, 30.579863, 38.792591>,  <40.695091, 30.569672, 38.927750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497028, 30.579863, 38.792591>,  <40.166924, 30.596846, 38.567329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497028, 30.579863, 38.792591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316677, -0.860443, 0.399191,
		0.467615, -0.507774, -0.723534,
		0.825259, -0.042460, 0.563157,
		40.744606, 30.567125, 38.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611874, 29.973848, 38.402428>,  <40.166924, 30.596846, 38.567329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611874, 29.973848, 38.402428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681461, 30.074537, 38.783241>,  <40.723213, 30.134951, 39.011730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681461, 30.074537, 38.783241>,  <40.611874, 29.973848, 38.402428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681461, 30.074537, 38.783241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408270, -0.861338, 0.302346,
		0.896131, -0.441286, -0.047075,
		0.173968, 0.251723, 0.952035,
		40.733650, 30.150055, 39.068851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778503, 29.520864, 38.984409>,  <40.611874, 29.973848, 38.402428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778503, 29.520864, 38.984409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482895, 29.272842, 38.879047>,  <40.305531, 29.124029, 38.815830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482895, 29.272842, 38.879047>,  <40.778503, 29.520864, 38.984409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482895, 29.272842, 38.879047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660209, -0.588773, -0.466337,
		0.134070, -0.518533, 0.844481,
		-0.739019, -0.620056, -0.263403,
		40.261189, 29.086826, 38.800026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003407, 28.890787, 38.982899>,  <40.778503, 29.520864, 38.984409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003407, 28.890787, 38.982899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685703, 28.837879, 38.745697>,  <40.495079, 28.806133, 38.603374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685703, 28.837879, 38.745697>,  <41.003407, 28.890787, 38.982899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685703, 28.837879, 38.745697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569922, -0.500452, -0.651718,
		-0.210567, -0.855600, 0.472874,
		-0.794261, -0.132271, -0.593004,
		40.447426, 28.798199, 38.567795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931904, 28.152962, 38.853188>,  <41.003407, 28.890787, 38.982899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931904, 28.152962, 38.853188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816151, 28.412802, 38.571968>,  <40.746700, 28.568707, 38.403236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816151, 28.412802, 38.571968>,  <40.931904, 28.152962, 38.853188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816151, 28.412802, 38.571968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771183, -0.276874, -0.573251,
		-0.567040, -0.708068, -0.420838,
		-0.289382, 0.649600, -0.703049,
		40.729336, 28.607681, 38.361053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882347, 27.759087, 38.089050>,  <40.931904, 28.152962, 38.853188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882347, 27.759087, 38.089050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960819, 28.151131, 38.101036>,  <41.007900, 28.386356, 38.108227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960819, 28.151131, 38.101036>,  <40.882347, 27.759087, 38.089050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960819, 28.151131, 38.101036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766039, -0.134107, -0.628649,
		-0.612126, 0.146284, -0.777112,
		0.196177, 0.980111, 0.029969,
		41.019672, 28.445164, 38.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798111, 28.230740, 37.381474>,  <40.882347, 27.759087, 38.089050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798111, 28.230740, 37.381474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088779, 28.373470, 37.616291>,  <41.263180, 28.459108, 37.757183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088779, 28.373470, 37.616291>,  <40.798111, 28.230740, 37.381474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088779, 28.373470, 37.616291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642742, -0.051439, -0.764354,
		-0.242547, 0.932752, -0.266728,
		0.726673, 0.356829, 0.587043,
		41.306782, 28.480518, 37.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060108, 28.803968, 37.026360>,  <40.798111, 28.230740, 37.381474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060108, 28.803968, 37.026360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342194, 28.640825, 37.258331>,  <41.511444, 28.542940, 37.397514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342194, 28.640825, 37.258331>,  <41.060108, 28.803968, 37.026360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342194, 28.640825, 37.258331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600048, -0.092339, -0.794617,
		0.377641, 0.908364, 0.179615,
		0.705217, -0.407857, 0.579933,
		41.553757, 28.518469, 37.432312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651302, 29.204588, 37.201336>,  <41.060108, 28.803968, 37.026360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651302, 29.204588, 37.201336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689480, 28.812006, 37.134838>,  <41.712387, 28.576458, 37.094940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689480, 28.812006, 37.134838>,  <41.651302, 29.204588, 37.201336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689480, 28.812006, 37.134838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628975, 0.188908, -0.754124,
		0.771544, -0.032587, 0.635341,
		0.095447, -0.981454, -0.166247,
		41.718113, 28.517570, 37.084965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326923, 29.057245, 37.091797>,  <41.651302, 29.204588, 37.201336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326923, 29.057245, 37.091797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080730, 28.797319, 36.913395>,  <41.933014, 28.641363, 36.806355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080730, 28.797319, 36.913395>,  <42.326923, 29.057245, 37.091797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080730, 28.797319, 36.913395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424654, 0.203312, -0.882232,
		0.663966, -0.732397, 0.150811,
		-0.615482, -0.649814, -0.446008,
		41.896084, 28.602375, 36.779594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715313, 28.610415, 36.677830>,  <42.326923, 29.057245, 37.091797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715313, 28.610415, 36.677830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348148, 28.642952, 36.522484>,  <42.127850, 28.662474, 36.429276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348148, 28.642952, 36.522484>,  <42.715313, 28.610415, 36.677830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348148, 28.642952, 36.522484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396786, 0.185496, -0.898973,
		-0.001086, -0.979273, -0.202544,
		-0.917910, 0.081343, -0.388361,
		42.072777, 28.667355, 36.405975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887936, 28.268133, 36.012196>,  <42.715313, 28.610415, 36.677830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887936, 28.268133, 36.012196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599342, 28.536785, 36.079571>,  <42.426186, 28.697975, 36.119995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599342, 28.536785, 36.079571>,  <42.887936, 28.268133, 36.012196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599342, 28.536785, 36.079571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444044, 0.635432, -0.631705,
		-0.531301, -0.380974, -0.756689,
		-0.721488, 0.671628, 0.168437,
		42.382896, 28.738274, 36.130100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933807, 28.781073, 35.386784>,  <42.887936, 28.268133, 36.012196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933807, 28.781073, 35.386784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738026, 28.967104, 35.681847>,  <42.620556, 29.078722, 35.858887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738026, 28.967104, 35.681847>,  <42.933807, 28.781073, 35.386784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738026, 28.967104, 35.681847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216985, 0.884257, -0.413529,
		-0.844603, -0.042342, -0.533715,
		-0.489451, 0.465076, 0.737659,
		42.591190, 29.106627, 35.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494175, 29.344296, 35.044807>,  <42.933807, 28.781073, 35.386784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494175, 29.344296, 35.044807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539684, 29.447796, 35.428497>,  <42.566990, 29.509895, 35.658710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539684, 29.447796, 35.428497>,  <42.494175, 29.344296, 35.044807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539684, 29.447796, 35.428497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013427, 0.965001, -0.261901,
		-0.993416, 0.042677, 0.106319,
		0.113776, 0.258749, 0.959221,
		42.573818, 29.525421, 35.716263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073742, 29.977875, 35.076214>,  <42.494175, 29.344296, 35.044807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073742, 29.977875, 35.076214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313251, 29.982754, 35.396542>,  <42.456959, 29.985680, 35.588737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313251, 29.982754, 35.396542>,  <42.073742, 29.977875, 35.076214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313251, 29.982754, 35.396542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162749, 0.977170, -0.136569,
		-0.784205, 0.212107, 0.583124,
		0.598778, 0.012195, 0.800822,
		42.492886, 29.986412, 35.636787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905571, 30.512520, 35.478836>,  <42.073742, 29.977875, 35.076214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905571, 30.512520, 35.478836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266247, 30.414158, 35.621094>,  <42.482655, 30.355141, 35.706448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266247, 30.414158, 35.621094>,  <41.905571, 30.512520, 35.478836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266247, 30.414158, 35.621094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276783, 0.960187, -0.037850,
		-0.332174, 0.132565, 0.933856,
		0.901693, -0.245903, 0.355641,
		42.536755, 30.340387, 35.727787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041775, 31.045692, 35.833553>,  <41.905571, 30.512520, 35.478836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041775, 31.045692, 35.833553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401955, 30.873857, 35.806301>,  <42.618061, 30.770756, 35.789948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401955, 30.873857, 35.806301>,  <42.041775, 31.045692, 35.833553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401955, 30.873857, 35.806301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431195, 0.902201, 0.010206,
		0.057086, -0.038569, 0.997624,
		0.900451, -0.429588, -0.068134,
		42.672089, 30.744982, 35.785862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419014, 31.270838, 36.377514>,  <42.041775, 31.045692, 35.833553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419014, 31.270838, 36.377514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648384, 31.162334, 36.068295>,  <42.786007, 31.097233, 35.882763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648384, 31.162334, 36.068295>,  <42.419014, 31.270838, 36.377514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648384, 31.162334, 36.068295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286698, 0.950372, -0.120818,
		0.767454, -0.152351, 0.622739,
		0.573427, -0.271260, -0.773045,
		42.820412, 31.080956, 35.836380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153732, 31.437487, 36.616341>,  <42.419014, 31.270838, 36.377514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153732, 31.437487, 36.616341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142372, 31.409689, 36.217468>,  <43.135555, 31.393011, 35.978146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142372, 31.409689, 36.217468>,  <43.153732, 31.437487, 36.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142372, 31.409689, 36.217468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411368, 0.908377, -0.075021,
		0.911027, -0.412338, 0.002786,
		-0.028403, -0.069492, -0.997178,
		43.133850, 31.388842, 35.918316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791088, 31.635029, 36.321938>,  <43.153732, 31.437487, 36.616341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791088, 31.635029, 36.321938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542542, 31.660521, 36.009567>,  <43.393414, 31.675816, 35.822144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542542, 31.660521, 36.009567>,  <43.791088, 31.635029, 36.321938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542542, 31.660521, 36.009567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377236, 0.897895, -0.226885,
		0.686730, -0.435572, -0.581962,
		-0.621365, 0.063728, -0.780925,
		43.356133, 31.679640, 35.775291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234932, 31.770676, 35.850136>,  <43.791088, 31.635029, 36.321938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234932, 31.770676, 35.850136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885303, 31.908815, 35.713474>,  <43.675526, 31.991699, 35.631477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885303, 31.908815, 35.713474>,  <44.234932, 31.770676, 35.850136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885303, 31.908815, 35.713474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428083, 0.880032, -0.205642,
		0.229652, -0.326004, -0.917050,
		-0.874074, 0.345347, -0.341658,
		43.623081, 32.012421, 35.610977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467712, 32.236622, 35.195995>,  <44.234932, 31.770676, 35.850136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467712, 32.236622, 35.195995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084175, 32.343407, 35.234665>,  <43.854053, 32.407478, 35.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084175, 32.343407, 35.234665>,  <44.467712, 32.236622, 35.195995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084175, 32.343407, 35.234665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239306, 0.943104, -0.230842,
		-0.152797, -0.198208, -0.968177,
		-0.958846, 0.266962, 0.096671,
		43.796520, 32.423496, 35.263664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246582, 32.536949, 34.489304>,  <44.467712, 32.236622, 35.195995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246582, 32.536949, 34.489304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013058, 32.667351, 34.786732>,  <43.872944, 32.745590, 34.965187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013058, 32.667351, 34.786732>,  <44.246582, 32.536949, 34.489304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013058, 32.667351, 34.786732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076498, 0.933858, -0.349367,
		-0.808279, -0.147083, -0.570133,
		-0.583809, 0.326000, 0.743567,
		43.837914, 32.765152, 35.009800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809181, 33.060894, 34.191135>,  <44.246582, 32.536949, 34.489304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809181, 33.060894, 34.191135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819706, 33.137581, 34.583572>,  <43.826019, 33.183594, 34.819035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819706, 33.137581, 34.583572>,  <43.809181, 33.060894, 34.191135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819706, 33.137581, 34.583572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158288, 0.968256, -0.193455,
		-0.987042, 0.160387, -0.004870,
		0.026313, 0.191719, 0.981097,
		43.827599, 33.195095, 34.877903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299240, 33.606438, 34.339882>,  <43.809181, 33.060894, 34.191135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299240, 33.606438, 34.339882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571609, 33.584652, 34.632011>,  <43.735031, 33.571583, 34.807289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571609, 33.584652, 34.632011>,  <43.299240, 33.606438, 34.339882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571609, 33.584652, 34.632011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034024, 0.993802, 0.105830,
		-0.731564, -0.096910, 0.674850,
		0.680924, -0.054460, 0.730327,
		43.775887, 33.568314, 34.851109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232845, 34.129467, 34.778423>,  <43.299240, 33.606438, 34.339882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232845, 34.129467, 34.778423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591316, 34.025791, 34.922474>,  <43.806400, 33.963585, 35.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591316, 34.025791, 34.922474>,  <43.232845, 34.129467, 34.778423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591316, 34.025791, 34.922474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247121, 0.965673, 0.080039,
		-0.368506, 0.017265, 0.929465,
		0.896178, -0.259185, 0.360123,
		43.860168, 33.948036, 35.030510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273533, 34.463657, 35.492485>,  <43.232845, 34.129467, 34.778423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273533, 34.463657, 35.492485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640003, 34.375763, 35.358418>,  <43.859886, 34.323025, 35.277977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640003, 34.375763, 35.358418>,  <43.273533, 34.463657, 35.492485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640003, 34.375763, 35.358418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291237, 0.939542, 0.180116,
		0.275328, -0.262632, 0.924781,
		0.916174, -0.219740, -0.335170,
		43.914856, 34.309841, 35.257866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789734, 34.708611, 36.031609>,  <43.273533, 34.463657, 35.492485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789734, 34.708611, 36.031609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001068, 34.704704, 35.692017>,  <44.127869, 34.702362, 35.488262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001068, 34.704704, 35.692017>,  <43.789734, 34.708611, 36.031609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001068, 34.704704, 35.692017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359498, 0.908446, 0.213275,
		0.769169, -0.417887, 0.483477,
		0.528337, -0.009765, -0.848978,
		44.159569, 34.701775, 35.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443481, 34.892578, 36.235462>,  <43.789734, 34.708611, 36.031609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443481, 34.892578, 36.235462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454784, 34.937534, 35.838158>,  <44.461567, 34.964508, 35.599773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454784, 34.937534, 35.838158>,  <44.443481, 34.892578, 36.235462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454784, 34.937534, 35.838158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293939, 0.948792, 0.115724,
		0.955406, -0.295229, -0.006225,
		0.028259, 0.112393, -0.993262,
		44.463261, 34.971252, 35.540180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175129, 35.117180, 36.022137>,  <44.443481, 34.892578, 36.235462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175129, 35.117180, 36.022137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914364, 35.228046, 35.739807>,  <44.757904, 35.294567, 35.570408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914364, 35.228046, 35.739807>,  <45.175129, 35.117180, 36.022137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914364, 35.228046, 35.739807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380333, 0.924774, 0.011869,
		0.656019, -0.260712, -0.708286,
		-0.651910, 0.277170, -0.705826,
		44.718792, 35.311199, 35.528061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637138, 35.309849, 35.461655>,  <45.175129, 35.117180, 36.022137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637138, 35.309849, 35.461655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283089, 35.479080, 35.384136>,  <45.070660, 35.580620, 35.337624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283089, 35.479080, 35.384136>,  <45.637138, 35.309849, 35.461655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283089, 35.479080, 35.384136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449938, 0.884359, -0.124361,
		0.118771, -0.197271, -0.973128,
		-0.885127, 0.423077, -0.193796,
		45.017551, 35.606003, 35.325996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667927, 35.591656, 34.871834>,  <45.637138, 35.309849, 35.461655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667927, 35.591656, 34.871834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378845, 35.797993, 35.055836>,  <45.205395, 35.921795, 35.166237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378845, 35.797993, 35.055836>,  <45.667927, 35.591656, 34.871834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378845, 35.797993, 35.055836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406906, 0.855547, -0.320103,
		-0.558679, -0.044161, -0.828207,
		-0.722707, 0.515838, 0.460006,
		45.162033, 35.952744, 35.193836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205750, 35.043556, 34.542778>,  <45.667927, 35.591656, 34.871834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205750, 35.043556, 34.542778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340984, 35.131351, 34.908844>,  <46.422123, 35.184029, 35.128483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340984, 35.131351, 34.908844>,  <46.205750, 35.043556, 34.542778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340984, 35.131351, 34.908844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915676, -0.301291, -0.266011,
		0.217344, 0.927927, -0.302843,
		0.338082, 0.219490, 0.915164,
		46.442410, 35.197197, 35.183392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873688, 35.456406, 34.479847>,  <46.205750, 35.043556, 34.542778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873688, 35.456406, 34.479847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839870, 35.220783, 34.801311>,  <46.819580, 35.079411, 34.994190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839870, 35.220783, 34.801311>,  <46.873688, 35.456406, 34.479847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839870, 35.220783, 34.801311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798932, -0.522058, -0.298602,
		0.595450, 0.616822, 0.514752,
		-0.084546, -0.589054, 0.803658,
		46.814507, 35.044067, 35.042408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354931, 35.508823, 35.051247>,  <46.873688, 35.456406, 34.479847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354931, 35.508823, 35.051247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224434, 35.133163, 35.008221>,  <47.146137, 34.907768, 34.982407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224434, 35.133163, 35.008221>,  <47.354931, 35.508823, 35.051247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224434, 35.133163, 35.008221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941334, -0.312368, -0.127733,
		0.086362, -0.142923, 0.985959,
		-0.326238, -0.939148, -0.107562,
		47.126564, 34.851418, 34.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796516, 35.115639, 35.403076>,  <47.354931, 35.508823, 35.051247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796516, 35.115639, 35.403076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638844, 34.899307, 35.105858>,  <47.544239, 34.769508, 34.927525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638844, 34.899307, 35.105858>,  <47.796516, 35.115639, 35.403076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638844, 34.899307, 35.105858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917224, -0.282204, -0.281178,
		-0.057622, -0.792379, 0.607302,
		-0.394183, -0.540830, -0.743050,
		47.520588, 34.737057, 34.882942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.912319, 36.450127, 45.363693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514133, 36.416035, 45.380581>,  <35.275223, 36.395580, 45.390713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514133, 36.416035, 45.380581>,  <35.912319, 36.450127, 45.363693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514133, 36.416035, 45.380581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044709, 0.027566, -0.998620,
		0.083954, -0.995979, -0.031251,
		-0.995466, -0.085235, 0.042215,
		35.215492, 36.390465, 45.393246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756775, 35.953667, 44.860416>,  <35.912319, 36.450127, 45.363693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756775, 35.953667, 44.860416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413074, 36.149673, 44.919182>,  <35.206856, 36.267277, 44.954441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413074, 36.149673, 44.919182>,  <35.756775, 35.953667, 44.860416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413074, 36.149673, 44.919182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143709, 0.044403, -0.988623,
		-0.490962, -0.870583, 0.032266,
		-0.859246, 0.490013, 0.146911,
		35.155300, 36.296677, 44.963257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184769, 35.657562, 44.394588>,  <35.756775, 35.953667, 44.860416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184769, 35.657562, 44.394588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051369, 36.020378, 44.497402>,  <34.971329, 36.238068, 44.559090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051369, 36.020378, 44.497402>,  <35.184769, 35.657562, 44.394588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051369, 36.020378, 44.497402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295587, 0.158288, -0.942111,
		-0.895214, -0.390167, 0.215319,
		-0.333498, 0.907036, 0.257030,
		34.951321, 36.292488, 44.574512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460567, 35.705551, 44.140198>,  <35.184769, 35.657562, 44.394588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460567, 35.705551, 44.140198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617485, 36.069206, 44.196175>,  <34.711636, 36.287399, 44.229759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617485, 36.069206, 44.196175>,  <34.460567, 35.705551, 44.140198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617485, 36.069206, 44.196175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377952, 0.298013, -0.876550,
		-0.838606, 0.290971, 0.460517,
		0.392291, 0.909134, 0.139942,
		34.735172, 36.341946, 44.238155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937733, 36.146755, 43.877029>,  <34.460567, 35.705551, 44.140198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937733, 36.146755, 43.877029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298725, 36.319027, 43.874447>,  <34.515320, 36.422390, 43.872898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298725, 36.319027, 43.874447>,  <33.937733, 36.146755, 43.877029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298725, 36.319027, 43.874447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075589, 0.143597, -0.986745,
		-0.424040, 0.891009, 0.162148,
		0.902483, 0.430676, -0.006460,
		34.569469, 36.448231, 43.872509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771046, 36.621639, 43.362873>,  <33.937733, 36.146755, 43.877029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771046, 36.621639, 43.362873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154766, 36.707726, 43.436001>,  <34.384998, 36.759377, 43.479877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154766, 36.707726, 43.436001>,  <33.771046, 36.621639, 43.362873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154766, 36.707726, 43.436001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112353, 0.303070, -0.946322,
		-0.259075, 0.928347, 0.266554,
		0.959300, 0.215220, 0.182821,
		34.442554, 36.772293, 43.490849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954960, 37.384102, 43.214188>,  <33.771046, 36.621639, 43.362873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954960, 37.384102, 43.214188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268986, 37.145386, 43.147850>,  <34.457401, 37.002155, 43.108047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268986, 37.145386, 43.147850>,  <33.954960, 37.384102, 43.214188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268986, 37.145386, 43.147850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077572, 0.170914, -0.982227,
		0.614533, 0.783980, 0.087884,
		0.785067, -0.596794, -0.165847,
		34.504505, 36.966347, 43.098095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309937, 37.738289, 42.620579>,  <33.954960, 37.384102, 43.214188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309937, 37.738289, 42.620579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467728, 37.370731, 42.622540>,  <34.562405, 37.150196, 42.623714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467728, 37.370731, 42.622540>,  <34.309937, 37.738289, 42.620579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467728, 37.370731, 42.622540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258350, 0.105787, -0.960242,
		0.881839, 0.380064, 0.279127,
		0.394481, -0.918891, 0.004902,
		34.586071, 37.095062, 42.624012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923077, 37.819370, 42.291595>,  <34.309937, 37.738289, 42.620579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923077, 37.819370, 42.291595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796486, 37.440197, 42.277325>,  <34.720531, 37.212692, 42.268764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796486, 37.440197, 42.277325>,  <34.923077, 37.819370, 42.291595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796486, 37.440197, 42.277325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207092, -0.032342, -0.977787,
		0.925719, -0.316834, 0.206544,
		-0.316476, -0.947930, -0.035675,
		34.701542, 37.155819, 42.266621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447422, 37.408028, 42.009434>,  <34.923077, 37.819370, 42.291595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447422, 37.408028, 42.009434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123611, 37.175758, 41.974838>,  <34.929325, 37.036396, 41.954079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123611, 37.175758, 41.974838>,  <35.447422, 37.408028, 42.009434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123611, 37.175758, 41.974838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275084, -0.245023, -0.929673,
		0.518645, -0.776389, 0.358088,
		-0.809528, -0.580675, -0.086492,
		34.880753, 37.001556, 41.948891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754631, 36.747303, 41.682121>,  <35.447422, 37.408028, 42.009434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754631, 36.747303, 41.682121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364193, 36.777706, 41.600670>,  <35.129932, 36.795948, 41.551800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364193, 36.777706, 41.600670>,  <35.754631, 36.747303, 41.682121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364193, 36.777706, 41.600670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186635, -0.187087, -0.964451,
		-0.111401, -0.979399, 0.168429,
		-0.976093, 0.076006, -0.203632,
		35.071365, 36.800507, 41.539581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557526, 36.126564, 41.320881>,  <35.754631, 36.747303, 41.682121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557526, 36.126564, 41.320881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284679, 36.401215, 41.220264>,  <35.120972, 36.566006, 41.159897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284679, 36.401215, 41.220264>,  <35.557526, 36.126564, 41.320881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284679, 36.401215, 41.220264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158849, -0.196638, -0.967523,
		-0.713786, -0.699916, 0.025059,
		-0.682112, 0.686623, -0.251538,
		35.080048, 36.607201, 41.144802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192272, 35.785255, 40.827312>,  <35.557526, 36.126564, 41.320881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192272, 35.785255, 40.827312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084538, 36.166431, 40.771641>,  <35.019897, 36.395138, 40.738235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084538, 36.166431, 40.771641>,  <35.192272, 35.785255, 40.827312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084538, 36.166431, 40.771641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101651, -0.115586, -0.988082,
		-0.957668, -0.280270, -0.065736,
		-0.269332, 0.952937, -0.139183,
		35.003738, 36.452312, 40.729885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766052, 35.803467, 40.184547>,  <35.192272, 35.785255, 40.827312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766052, 35.803467, 40.184547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.848312, 36.193306, 40.220032>,  <34.897667, 36.427208, 40.241322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.848312, 36.193306, 40.220032>,  <34.766052, 35.803467, 40.184547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848312, 36.193306, 40.220032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143565, 0.059620, -0.987843,
		-0.968039, 0.215881, -0.127657,
		0.205646, 0.974598, 0.088708,
		34.910007, 36.485683, 40.246643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306896, 36.228672, 39.748703>,  <34.766052, 35.803467, 40.184547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306896, 36.228672, 39.748703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627941, 36.457043, 39.817829>,  <34.820568, 36.594063, 39.859303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627941, 36.457043, 39.817829>,  <34.306896, 36.228672, 39.748703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627941, 36.457043, 39.817829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061172, 0.209404, -0.975914,
		-0.593358, 0.793850, 0.133146,
		0.802611, 0.570922, 0.172813,
		34.868725, 36.628319, 39.869675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244801, 36.795456, 39.318832>,  <34.306896, 36.228672, 39.748703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244801, 36.795456, 39.318832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630150, 36.774296, 39.423996>,  <34.861359, 36.761600, 39.487095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630150, 36.774296, 39.423996>,  <34.244801, 36.795456, 39.318832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630150, 36.774296, 39.423996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267127, 0.102431, -0.958202,
		0.023757, 0.993333, 0.112809,
		0.963369, -0.052898, 0.262912,
		34.919159, 36.758427, 39.502869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395309, 37.207153, 38.829380>,  <34.244801, 36.795456, 39.318832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395309, 37.207153, 38.829380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716442, 37.020039, 38.977238>,  <34.909122, 36.907768, 39.065952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716442, 37.020039, 38.977238>,  <34.395309, 37.207153, 38.829380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716442, 37.020039, 38.977238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378238, -0.079640, -0.922276,
		0.460871, 0.880244, 0.112999,
		0.802829, -0.467791, 0.369646,
		34.957291, 36.879700, 39.088131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981159, 37.600899, 38.714355>,  <34.395309, 37.207153, 38.829380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981159, 37.600899, 38.714355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091919, 37.217052, 38.734192>,  <35.158375, 36.986744, 38.746094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091919, 37.217052, 38.734192>,  <34.981159, 37.600899, 38.714355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091919, 37.217052, 38.734192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382251, 0.062658, -0.921932,
		0.881594, 0.274242, 0.384165,
		0.276903, -0.959617, 0.049590,
		35.174992, 36.929169, 38.749069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609104, 37.591137, 38.478207>,  <34.981159, 37.600899, 38.714355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609104, 37.591137, 38.478207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561001, 37.195419, 38.445126>,  <35.532139, 36.957989, 38.425278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561001, 37.195419, 38.445126>,  <35.609104, 37.591137, 38.478207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561001, 37.195419, 38.445126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415747, 0.025461, -0.909124,
		0.901494, -0.143716, 0.408233,
		-0.120261, -0.989291, -0.082702,
		35.524921, 36.898632, 38.420315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248569, 37.292263, 38.302536>,  <35.609104, 37.591137, 38.478207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248569, 37.292263, 38.302536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975502, 37.020897, 38.193939>,  <35.811661, 36.858078, 38.128780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975502, 37.020897, 38.193939>,  <36.248569, 37.292263, 38.302536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975502, 37.020897, 38.193939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467171, -0.119518, -0.876052,
		0.561881, -0.724889, 0.398529,
		-0.682671, -0.678419, -0.271492,
		35.770702, 36.817371, 38.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601700, 36.763687, 37.943863>,  <36.248569, 37.292263, 38.302536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601700, 36.763687, 37.943863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221371, 36.704624, 37.834957>,  <35.993172, 36.669186, 37.769615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221371, 36.704624, 37.834957>,  <36.601700, 36.763687, 37.943863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221371, 36.704624, 37.834957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281017, -0.041693, -0.958797,
		0.130226, -0.988159, 0.081138,
		-0.950826, -0.147661, -0.272260,
		35.936123, 36.660328, 37.753281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677330, 36.209358, 37.543129>,  <36.601700, 36.763687, 37.943863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677330, 36.209358, 37.543129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315628, 36.356590, 37.456551>,  <36.098606, 36.444927, 37.404606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315628, 36.356590, 37.456551>,  <36.677330, 36.209358, 37.543129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315628, 36.356590, 37.456551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172075, -0.149789, -0.973629,
		-0.390791, -0.917651, 0.072110,
		-0.904252, 0.368077, -0.216441,
		36.044353, 36.467014, 37.391617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952751, 35.633118, 37.162392>,  <36.677330, 36.209358, 37.543129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952751, 35.633118, 37.162392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283199, 35.813217, 37.026859>,  <37.481468, 35.921276, 36.945541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283199, 35.813217, 37.026859>,  <36.952751, 35.633118, 37.162392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283199, 35.813217, 37.026859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342032, 0.077192, 0.936512,
		0.447816, -0.889561, -0.090229,
		0.826121, 0.450247, -0.338826,
		37.531036, 35.948292, 36.925213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484783, 35.284321, 37.610035>,  <36.952751, 35.633118, 37.162392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484783, 35.284321, 37.610035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643082, 35.617634, 37.455620>,  <37.738060, 35.817623, 37.362972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643082, 35.617634, 37.455620>,  <37.484783, 35.284321, 37.610035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643082, 35.617634, 37.455620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377643, 0.235507, 0.895501,
		0.837119, -0.500176, -0.221483,
		0.395748, 0.833283, -0.386036,
		37.761806, 35.867619, 37.339809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206715, 35.154919, 37.634617>,  <37.484783, 35.284321, 37.610035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206715, 35.154919, 37.634617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117550, 35.544628, 37.621349>,  <38.064049, 35.778454, 37.613388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117550, 35.544628, 37.621349>,  <38.206715, 35.154919, 37.634617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117550, 35.544628, 37.621349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371321, 0.116324, 0.921189,
		0.901349, 0.193029, -0.387699,
		-0.222914, 0.974273, -0.033173,
		38.050674, 35.836910, 37.611397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870895, 35.550251, 37.789265>,  <38.206715, 35.154919, 37.634617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870895, 35.550251, 37.789265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545433, 35.769920, 37.865551>,  <38.350155, 35.901722, 37.911324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545433, 35.769920, 37.865551>,  <38.870895, 35.550251, 37.789265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545433, 35.769920, 37.865551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361251, 0.220601, 0.905998,
		0.455477, 0.806068, -0.377883,
		-0.813657, 0.549172, 0.190714,
		38.301334, 35.934673, 37.922764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163628, 35.974037, 38.250206>,  <38.870895, 35.550251, 37.789265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163628, 35.974037, 38.250206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769890, 36.026260, 38.297577>,  <38.533649, 36.057594, 38.326000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769890, 36.026260, 38.297577>,  <39.163628, 35.974037, 38.250206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769890, 36.026260, 38.297577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148820, 0.255535, 0.955277,
		0.094457, 0.957944, -0.270963,
		-0.984343, 0.130558, 0.118424,
		38.474586, 36.065426, 38.333103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127033, 36.571674, 38.642025>,  <39.163628, 35.974037, 38.250206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127033, 36.571674, 38.642025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780460, 36.377045, 38.686836>,  <38.572517, 36.260269, 38.713722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780460, 36.377045, 38.686836>,  <39.127033, 36.571674, 38.642025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780460, 36.377045, 38.686836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034048, 0.166276, 0.985491,
		-0.498140, 0.857671, -0.127499,
		-0.866428, -0.486572, 0.112030,
		38.520531, 36.231071, 38.720444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909515, 36.959541, 39.114029>,  <39.127033, 36.571674, 38.642025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909515, 36.959541, 39.114029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628582, 36.674885, 39.107094>,  <38.460022, 36.504093, 39.102932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628582, 36.674885, 39.107094>,  <38.909515, 36.959541, 39.114029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628582, 36.674885, 39.107094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202747, 0.176625, 0.963171,
		-0.682365, 0.679982, -0.268332,
		-0.702333, -0.711637, -0.017342,
		38.417881, 36.461395, 39.101891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362465, 37.325665, 39.264015>,  <38.909515, 36.959541, 39.114029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362465, 37.325665, 39.264015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342560, 36.935062, 39.347874>,  <38.330616, 36.700699, 39.398190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342560, 36.935062, 39.347874>,  <38.362465, 37.325665, 39.264015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342560, 36.935062, 39.347874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300276, 0.214828, 0.929345,
		-0.952553, -0.016703, -0.303914,
		-0.049766, -0.976509, 0.209650,
		38.327629, 36.642109, 39.410770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907139, 37.337978, 39.680733>,  <38.362465, 37.325665, 39.264015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907139, 37.337978, 39.680733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065685, 36.975735, 39.741093>,  <38.160812, 36.758389, 39.777309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065685, 36.975735, 39.741093>,  <37.907139, 37.337978, 39.680733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065685, 36.975735, 39.741093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300843, 0.027175, 0.953286,
		-0.867403, -0.423247, -0.261674,
		0.396365, -0.905607, 0.150902,
		38.184593, 36.704052, 39.786362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405586, 36.939598, 40.047302>,  <37.907139, 37.337978, 39.680733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405586, 36.939598, 40.047302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758385, 36.774017, 40.137394>,  <37.970062, 36.674667, 40.191448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758385, 36.774017, 40.137394>,  <37.405586, 36.939598, 40.047302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758385, 36.774017, 40.137394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265139, -0.040761, 0.963348,
		-0.389600, -0.909385, -0.145706,
		0.881994, -0.413953, 0.225233,
		38.022984, 36.649830, 40.204964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285469, 36.489704, 40.673134>,  <37.405586, 36.939598, 40.047302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285469, 36.489704, 40.673134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683338, 36.471306, 40.636250>,  <37.922062, 36.460266, 40.614117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683338, 36.471306, 40.636250>,  <37.285469, 36.489704, 40.673134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683338, 36.471306, 40.636250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084132, -0.154230, 0.984447,
		-0.059508, -0.986964, -0.149539,
		0.994676, -0.046001, -0.092213,
		37.981743, 36.457504, 40.608585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413765, 35.786419, 40.965126>,  <37.285469, 36.489704, 40.673134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413765, 35.786419, 40.965126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725266, 36.036087, 40.990307>,  <37.912167, 36.185886, 41.005417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725266, 36.036087, 40.990307>,  <37.413765, 35.786419, 40.965126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725266, 36.036087, 40.990307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059582, -0.173489, 0.983032,
		0.624499, -0.761785, -0.172293,
		0.778749, 0.624168, 0.062955,
		37.958889, 36.223339, 41.009193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825554, 35.443550, 41.440620>,  <37.413765, 35.786419, 40.965126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825554, 35.443550, 41.440620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976051, 35.814140, 41.444096>,  <38.066349, 36.036495, 41.446182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976051, 35.814140, 41.444096>,  <37.825554, 35.443550, 41.440620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976051, 35.814140, 41.444096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010968, -0.013832, 0.999844,
		0.926455, -0.376091, -0.015366,
		0.376245, 0.926479, 0.008690,
		38.088924, 36.092083, 41.446701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444393, 35.528282, 41.888733>,  <37.825554, 35.443550, 41.440620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444393, 35.528282, 41.888733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283733, 35.892872, 41.853191>,  <38.187340, 36.111626, 41.831867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283733, 35.892872, 41.853191>,  <38.444393, 35.528282, 41.888733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283733, 35.892872, 41.853191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069640, 0.066346, 0.995364,
		0.913144, 0.405971, 0.036828,
		-0.401645, 0.911475, -0.088856,
		38.163239, 36.166313, 41.826534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857140, 35.870659, 42.381821>,  <38.444393, 35.528282, 41.888733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857140, 35.870659, 42.381821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522694, 36.079056, 42.313145>,  <38.322025, 36.204094, 42.271938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522694, 36.079056, 42.313145>,  <38.857140, 35.870659, 42.381821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522694, 36.079056, 42.313145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128499, 0.118259, 0.984633,
		0.533288, 0.845331, -0.031932,
		-0.836117, 0.520990, -0.171690,
		38.271858, 36.235352, 42.261639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881676, 36.319656, 42.990040>,  <38.857140, 35.870659, 42.381821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881676, 36.319656, 42.990040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520458, 36.395210, 42.835728>,  <38.303726, 36.440544, 42.743141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520458, 36.395210, 42.835728>,  <38.881676, 36.319656, 42.990040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520458, 36.395210, 42.835728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387980, 0.026744, 0.921280,
		0.184334, 0.981635, 0.049133,
		-0.903046, 0.188886, -0.385784,
		38.249546, 36.451878, 42.719994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572392, 36.996185, 43.258625>,  <38.881676, 36.319656, 42.990040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572392, 36.996185, 43.258625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289764, 36.733292, 43.153698>,  <38.120190, 36.575558, 43.090744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289764, 36.733292, 43.153698>,  <38.572392, 36.996185, 43.258625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289764, 36.733292, 43.153698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267009, -0.095678, 0.958933,
		-0.655338, 0.747591, -0.107884,
		-0.706568, -0.657231, -0.262315,
		38.077793, 36.536121, 43.075005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143970, 37.227676, 43.653122>,  <38.572392, 36.996185, 43.258625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143970, 37.227676, 43.653122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989071, 36.872292, 43.554592>,  <37.896130, 36.659061, 43.495476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989071, 36.872292, 43.554592>,  <38.143970, 37.227676, 43.653122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989071, 36.872292, 43.554592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338082, -0.111716, 0.934462,
		-0.857750, 0.445151, -0.257110,
		-0.387254, -0.888459, -0.246322,
		37.872894, 36.605755, 43.480694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.299561, 37.227406, 43.972569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446171, 36.859852, 43.914181>,  <37.534138, 36.639320, 43.879147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446171, 36.859852, 43.914181>,  <37.299561, 37.227406, 43.972569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446171, 36.859852, 43.914181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391836, -0.294746, 0.871544,
		-0.843876, -0.262242, -0.468084,
		0.366522, -0.918887, -0.145974,
		37.556126, 36.584187, 43.870388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800072, 36.838993, 44.117100>,  <37.299561, 37.227406, 43.972569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800072, 36.838993, 44.117100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111824, 36.590042, 44.145981>,  <37.298874, 36.440670, 44.163311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111824, 36.590042, 44.145981>,  <36.800072, 36.838993, 44.117100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111824, 36.590042, 44.145981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372816, -0.368037, 0.851796,
		-0.503569, -0.690788, -0.518874,
		0.779375, -0.622383, 0.072205,
		37.345638, 36.403328, 44.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506683, 36.130768, 44.260429>,  <36.800072, 36.838993, 44.117100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506683, 36.130768, 44.260429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892998, 36.122501, 44.363838>,  <37.124786, 36.117542, 44.425884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892998, 36.122501, 44.363838>,  <36.506683, 36.130768, 44.260429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892998, 36.122501, 44.363838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244724, -0.402634, 0.882041,
		0.085864, -0.915128, -0.393914,
		0.965783, -0.020665, 0.258526,
		37.182732, 36.116302, 44.441395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673435, 35.424625, 44.406693>,  <36.506683, 36.130768, 44.260429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673435, 35.424625, 44.406693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939022, 35.642578, 44.611534>,  <37.098373, 35.773350, 44.734440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939022, 35.642578, 44.611534>,  <36.673435, 35.424625, 44.406693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939022, 35.642578, 44.611534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127716, -0.592155, 0.795639,
		0.736774, -0.593683, -0.323581,
		0.663967, 0.544880, 0.512107,
		37.138214, 35.806042, 44.765167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105553, 34.962303, 44.828659>,  <36.673435, 35.424625, 44.406693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105553, 34.962303, 44.828659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202740, 35.307190, 45.006447>,  <37.261051, 35.514122, 45.113121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202740, 35.307190, 45.006447>,  <37.105553, 34.962303, 44.828659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202740, 35.307190, 45.006447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129369, -0.425308, 0.895755,
		0.961369, -0.275139, 0.008208,
		0.242967, 0.862213, 0.444473,
		37.275631, 35.565853, 45.139790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543064, 34.751949, 45.336494>,  <37.105553, 34.962303, 44.828659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543064, 34.751949, 45.336494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453003, 35.128357, 45.437527>,  <37.398968, 35.354202, 45.498146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453003, 35.128357, 45.437527>,  <37.543064, 34.751949, 45.336494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453003, 35.128357, 45.437527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199828, -0.209130, 0.957253,
		0.953613, 0.265997, -0.140956,
		-0.225149, 0.941016, 0.252582,
		37.385460, 35.410660, 45.513302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159328, 35.015301, 45.795620>,  <37.543064, 34.751949, 45.336494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159328, 35.015301, 45.795620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.851498, 35.247665, 45.901672>,  <37.666798, 35.387085, 45.965305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.851498, 35.247665, 45.901672>,  <38.159328, 35.015301, 45.795620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851498, 35.247665, 45.901672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205971, -0.167185, 0.964171,
		0.604422, 0.796613, 0.009011,
		-0.769577, 0.580910, 0.265129,
		37.620625, 35.421940, 45.981213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337570, 35.434101, 46.446121>,  <38.159328, 35.015301, 45.795620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337570, 35.434101, 46.446121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937984, 35.450069, 46.454815>,  <37.698231, 35.459648, 46.460030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937984, 35.450069, 46.454815>,  <38.337570, 35.434101, 46.446121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937984, 35.450069, 46.454815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016480, -0.127479, 0.991704,
		0.042357, 0.991038, 0.126689,
		-0.998967, 0.039918, 0.021732,
		37.638294, 35.462044, 46.461334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102066, 35.980438, 46.878464>,  <38.337570, 35.434101, 46.446121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102066, 35.980438, 46.878464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772991, 35.753166, 46.870930>,  <37.575546, 35.616802, 46.866409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772991, 35.753166, 46.870930>,  <38.102066, 35.980438, 46.878464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772991, 35.753166, 46.870930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055474, -0.113207, 0.992022,
		-0.565777, 0.815082, 0.124653,
		-0.822690, -0.568178, -0.018834,
		37.526184, 35.582714, 46.865280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658840, 36.209225, 47.487549>,  <38.102066, 35.980438, 46.878464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658840, 36.209225, 47.487549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.539337, 35.845047, 47.373119>,  <37.467636, 35.626541, 47.304462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.539337, 35.845047, 47.373119>,  <37.658840, 36.209225, 47.487549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539337, 35.845047, 47.373119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046528, -0.313300, 0.948514,
		-0.953194, 0.270067, 0.135962,
		-0.298759, -0.910443, -0.286070,
		37.449711, 35.571915, 47.287300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008858, 35.979481, 47.902336>,  <37.658840, 36.209225, 47.487549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008858, 35.979481, 47.902336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206665, 35.654396, 47.779083>,  <37.325348, 35.459343, 47.705132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206665, 35.654396, 47.779083>,  <37.008858, 35.979481, 47.902336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206665, 35.654396, 47.779083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095632, -0.403240, 0.910084,
		-0.863890, -0.420586, -0.277132,
		0.494519, -0.812715, -0.308133,
		37.355022, 35.410583, 47.686642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660286, 35.465755, 48.297047>,  <37.008858, 35.979481, 47.902336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660286, 35.465755, 48.297047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011929, 35.312176, 48.184078>,  <37.222916, 35.220028, 48.116299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011929, 35.312176, 48.184078>,  <36.660286, 35.465755, 48.297047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011929, 35.312176, 48.184078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166545, -0.307735, 0.936783,
		-0.446584, -0.870566, -0.206587,
		0.879105, -0.383946, -0.282418,
		37.275661, 35.196991, 48.099354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751976, 35.030487, 48.734791>,  <36.660286, 35.465755, 48.297047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751976, 35.030487, 48.734791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131584, 34.989811, 48.615448>,  <37.359348, 34.965405, 48.543842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131584, 34.989811, 48.615448>,  <36.751976, 35.030487, 48.734791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131584, 34.989811, 48.615448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247132, -0.347510, 0.904523,
		-0.195664, -0.932146, -0.304664,
		0.949021, -0.101690, -0.298358,
		37.416290, 34.959305, 48.525940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882477, 34.346146, 48.917831>,  <36.751976, 35.030487, 48.734791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882477, 34.346146, 48.917831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223370, 34.550617, 48.873302>,  <37.427906, 34.673302, 48.846584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223370, 34.550617, 48.873302>,  <36.882477, 34.346146, 48.917831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223370, 34.550617, 48.873302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274798, -0.256332, 0.926704,
		0.445175, -0.820361, -0.358926,
		0.852235, 0.511178, -0.111321,
		37.479042, 34.703972, 48.839905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357986, 33.885830, 49.055679>,  <36.882477, 34.346146, 48.917831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357986, 33.885830, 49.055679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521164, 34.248753, 49.096439>,  <37.619068, 34.466507, 49.120895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521164, 34.248753, 49.096439>,  <37.357986, 33.885830, 49.055679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521164, 34.248753, 49.096439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287208, -0.233468, 0.928980,
		0.866659, -0.349701, -0.355826,
		0.407940, 0.907305, 0.101900,
		37.643547, 34.520943, 49.127010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991581, 33.687611, 49.208229>,  <37.357986, 33.885830, 49.055679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991581, 33.687611, 49.208229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964951, 34.075798, 49.300980>,  <37.948975, 34.308708, 49.356628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964951, 34.075798, 49.300980>,  <37.991581, 33.687611, 49.208229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964951, 34.075798, 49.300980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184728, -0.216383, 0.958673,
		0.980532, 0.106655, -0.164867,
		-0.066573, 0.970465, 0.231873,
		37.944981, 34.366940, 49.370541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600796, 33.905102, 49.295151>,  <37.991581, 33.687611, 49.208229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600796, 33.905102, 49.295151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361095, 34.151489, 49.499691>,  <38.217278, 34.299320, 49.622417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361095, 34.151489, 49.499691>,  <38.600796, 33.905102, 49.295151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361095, 34.151489, 49.499691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518953, -0.187479, 0.833990,
		0.609580, 0.765136, -0.207313,
		-0.599249, 0.615970, 0.511353,
		38.181320, 34.336281, 49.653095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922142, 34.124565, 49.915291>,  <38.600796, 33.905102, 49.295151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922142, 34.124565, 49.915291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561939, 34.255383, 50.029930>,  <38.345818, 34.333874, 50.098713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561939, 34.255383, 50.029930>,  <38.922142, 34.124565, 49.915291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561939, 34.255383, 50.029930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266288, -0.106320, 0.958012,
		0.343779, 0.939011, 0.008655,
		-0.900504, 0.327039, 0.286598,
		38.291786, 34.353493, 50.115910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944046, 34.656078, 50.552872>,  <38.922142, 34.124565, 49.915291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944046, 34.656078, 50.552872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574657, 34.503014, 50.564034>,  <38.353024, 34.411175, 50.570732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574657, 34.503014, 50.564034>,  <38.944046, 34.656078, 50.552872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574657, 34.503014, 50.564034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076708, -0.112875, 0.990644,
		-0.375932, 0.916968, 0.133589,
		-0.923467, -0.382662, 0.027905,
		38.297619, 34.388214, 50.572407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643829, 35.071018, 51.058163>,  <38.944046, 34.656078, 50.552872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643829, 35.071018, 51.058163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402721, 34.753105, 51.029915>,  <38.258057, 34.562355, 51.012966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402721, 34.753105, 51.029915>,  <38.643829, 35.071018, 51.058163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402721, 34.753105, 51.029915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189466, -0.228545, 0.954919,
		-0.775096, 0.562213, 0.288344,
		-0.602767, -0.794785, -0.070624,
		38.221889, 34.514671, 51.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202274, 35.026855, 51.665054>,  <38.643829, 35.071018, 51.058163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202274, 35.026855, 51.665054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216221, 34.653027, 51.523430>,  <38.224586, 34.428730, 51.438454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216221, 34.653027, 51.523430>,  <38.202274, 35.026855, 51.665054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216221, 34.653027, 51.523430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111213, -0.348447, 0.930707,
		-0.993185, -0.071825, 0.091788,
		0.034865, -0.934572, -0.354060,
		38.226681, 34.372654, 51.417213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779720, 34.628777, 52.089935>,  <38.202274, 35.026855, 51.665054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779720, 34.628777, 52.089935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046627, 34.386219, 51.916935>,  <38.206772, 34.240685, 51.813137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046627, 34.386219, 51.916935>,  <37.779720, 34.628777, 52.089935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046627, 34.386219, 51.916935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288242, -0.325193, 0.900648,
		-0.686787, -0.725632, -0.042202,
		0.667263, -0.606389, -0.432496,
		38.246807, 34.204304, 51.787186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711914, 34.046223, 52.468124>,  <37.779720, 34.628777, 52.089935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711914, 34.046223, 52.468124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079636, 34.056267, 52.311024>,  <38.300270, 34.062294, 52.216763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079636, 34.056267, 52.311024>,  <37.711914, 34.046223, 52.468124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079636, 34.056267, 52.311024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341970, -0.544888, 0.765607,
		-0.194776, -0.838133, -0.509505,
		0.919303, 0.025113, -0.392747,
		38.355427, 34.063801, 52.193199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971283, 34.158493, 52.578678>,  <37.711914, 34.046223, 52.468124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971283, 34.158493, 52.578678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732967, 33.987099, 52.850395>,  <36.589977, 33.884262, 53.013428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732967, 33.987099, 52.850395>,  <36.971283, 34.158493, 52.578678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732967, 33.987099, 52.850395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702284, -0.132416, -0.699474,
		0.389662, -0.893795, -0.222024,
		-0.595786, -0.428482, 0.679295,
		36.554230, 33.858555, 53.054184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759109, 33.434837, 52.361309>,  <36.971283, 34.158493, 52.578678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759109, 33.434837, 52.361309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485073, 33.642429, 52.565781>,  <36.320652, 33.766987, 52.688465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485073, 33.642429, 52.565781>,  <36.759109, 33.434837, 52.361309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485073, 33.642429, 52.565781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607066, -0.018887, -0.794427,
		-0.402640, -0.854576, 0.327996,
		-0.685093, 0.518983, 0.511179,
		36.279545, 33.798122, 52.719135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127216, 33.066730, 52.313576>,  <36.759109, 33.434837, 52.361309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127216, 33.066730, 52.313576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017429, 33.443737, 52.389812>,  <35.951557, 33.669941, 52.435555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017429, 33.443737, 52.389812>,  <36.127216, 33.066730, 52.313576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017429, 33.443737, 52.389812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591381, -0.009163, -0.806340,
		-0.758244, -0.334029, 0.559902,
		-0.274472, 0.942518, 0.190590,
		35.935089, 33.726494, 52.446991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386528, 33.118130, 52.124275>,  <36.127216, 33.066730, 52.313576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386528, 33.118130, 52.124275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517105, 33.495667, 52.144657>,  <35.595451, 33.722191, 52.156887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517105, 33.495667, 52.144657>,  <35.386528, 33.118130, 52.124275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517105, 33.495667, 52.144657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541349, 0.230881, -0.808477,
		-0.774841, 0.236333, 0.586317,
		0.326439, 0.943844, 0.050958,
		35.615036, 33.778820, 52.159946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702950, 33.581451, 52.082699>,  <35.386528, 33.118130, 52.124275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702950, 33.581451, 52.082699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037113, 33.774071, 51.976715>,  <35.237610, 33.889645, 51.913124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037113, 33.774071, 51.976715>,  <34.702950, 33.581451, 52.082699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037113, 33.774071, 51.976715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375360, 0.147715, -0.915033,
		-0.401499, 0.863879, 0.304158,
		0.835407, 0.481553, -0.264958,
		35.287735, 33.918537, 51.897228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398964, 33.962120, 51.530022>,  <34.702950, 33.581451, 52.082699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398964, 33.962120, 51.530022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787308, 34.054657, 51.505016>,  <35.020313, 34.110180, 51.490013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787308, 34.054657, 51.505016>,  <34.398964, 33.962120, 51.530022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787308, 34.054657, 51.505016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116922, 0.229579, -0.966242,
		-0.209186, 0.945395, 0.249939,
		0.970861, 0.231347, -0.062513,
		35.078568, 34.124062, 51.486263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427567, 34.568336, 51.228134>,  <34.398964, 33.962120, 51.530022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427567, 34.568336, 51.228134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801968, 34.440384, 51.169373>,  <35.026608, 34.363613, 51.134117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801968, 34.440384, 51.169373>,  <34.427567, 34.568336, 51.228134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801968, 34.440384, 51.169373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009950, 0.393123, -0.919432,
		0.351860, 0.862050, 0.364780,
		0.936000, -0.319882, -0.146902,
		35.082767, 34.344418, 51.125301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716015, 35.124680, 50.916954>,  <34.427567, 34.568336, 51.228134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716015, 35.124680, 50.916954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959705, 34.815815, 50.844730>,  <35.105919, 34.630497, 50.801395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959705, 34.815815, 50.844730>,  <34.716015, 35.124680, 50.916954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959705, 34.815815, 50.844730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180826, 0.356968, -0.916447,
		0.772102, 0.525677, 0.357103,
		0.609229, -0.772164, -0.180560,
		35.142475, 34.584167, 50.790562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281002, 35.350170, 50.579006>,  <34.716015, 35.124680, 50.916954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281002, 35.350170, 50.579006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260536, 34.961170, 50.488121>,  <35.248257, 34.727772, 50.433590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260536, 34.961170, 50.488121>,  <35.281002, 35.350170, 50.579006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260536, 34.961170, 50.488121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052536, 0.229817, -0.971815,
		0.997308, -0.037782, -0.062849,
		-0.051161, -0.972500, -0.227213,
		35.245190, 34.669418, 50.419956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670925, 35.279285, 50.032795>,  <35.281002, 35.350170, 50.579006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670925, 35.279285, 50.032795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444256, 34.952751, 49.988106>,  <35.308254, 34.756832, 49.961292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444256, 34.952751, 49.988106>,  <35.670925, 35.279285, 50.032795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444256, 34.952751, 49.988106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168780, 0.247724, -0.954016,
		0.806469, -0.521761, -0.278160,
		-0.566675, -0.816332, -0.111719,
		35.274254, 34.707851, 49.954590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023674, 34.914814, 49.447906>,  <35.670925, 35.279285, 50.032795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023674, 34.914814, 49.447906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635712, 34.824409, 49.484119>,  <35.402935, 34.770168, 49.505848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635712, 34.824409, 49.484119>,  <36.023674, 34.914814, 49.447906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635712, 34.824409, 49.484119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141747, 0.221862, -0.964720,
		0.197944, -0.948525, -0.247221,
		-0.969910, -0.226004, 0.090534,
		35.344738, 34.756607, 49.511280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900402, 34.598682, 48.820503>,  <36.023674, 34.914814, 49.447906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900402, 34.598682, 48.820503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529758, 34.651535, 48.961315>,  <35.307373, 34.683247, 49.045803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529758, 34.651535, 48.961315>,  <35.900402, 34.598682, 48.820503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529758, 34.651535, 48.961315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318134, 0.223580, -0.921305,
		-0.200446, -0.965687, -0.165135,
		-0.926613, 0.132137, 0.352033,
		35.251774, 34.691177, 49.066925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463318, 34.171772, 48.440960>,  <35.900402, 34.598682, 48.820503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463318, 34.171772, 48.440960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253044, 34.476898, 48.591568>,  <35.126881, 34.659973, 48.681931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253044, 34.476898, 48.591568>,  <35.463318, 34.171772, 48.440960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253044, 34.476898, 48.591568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209520, 0.312872, -0.926398,
		-0.824471, -0.565885, -0.004649,
		-0.525689, 0.762814, 0.376518,
		35.095337, 34.705742, 48.704525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876614, 34.124496, 48.094475>,  <35.463318, 34.171772, 48.440960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876614, 34.124496, 48.094475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911606, 34.499317, 48.229694>,  <34.932602, 34.724209, 48.310825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911606, 34.499317, 48.229694>,  <34.876614, 34.124496, 48.094475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911606, 34.499317, 48.229694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144983, 0.347712, -0.926324,
		-0.985560, 0.032020, 0.166274,
		0.087477, 0.937054, 0.338049,
		34.937847, 34.780434, 48.331108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250759, 34.482174, 47.872967>,  <34.876614, 34.124496, 48.094475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250759, 34.482174, 47.872967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497952, 34.782501, 47.966232>,  <34.646267, 34.962696, 48.022194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497952, 34.782501, 47.966232>,  <34.250759, 34.482174, 47.872967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497952, 34.782501, 47.966232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200198, 0.437086, -0.876856,
		-0.760273, 0.495205, 0.420425,
		0.617985, 0.750818, 0.233166,
		34.683346, 35.007748, 48.036182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950237, 35.022564, 47.446323>,  <34.250759, 34.482174, 47.872967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950237, 35.022564, 47.446323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315895, 35.142933, 47.554981>,  <34.535290, 35.215153, 47.620174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315895, 35.142933, 47.554981>,  <33.950237, 35.022564, 47.446323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315895, 35.142933, 47.554981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101363, 0.479119, -0.871877,
		-0.392516, 0.824555, 0.407481,
		0.914142, 0.300923, 0.271642,
		34.590137, 35.233212, 47.636475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883705, 35.703869, 47.298306>,  <33.950237, 35.022564, 47.446323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883705, 35.703869, 47.298306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267185, 35.591419, 47.281040>,  <34.497272, 35.523949, 47.270679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267185, 35.591419, 47.281040>,  <33.883705, 35.703869, 47.298306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267185, 35.591419, 47.281040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120358, 0.538501, -0.833985,
		0.257695, 0.794347, 0.550097,
		0.958701, -0.281122, -0.043163,
		34.554794, 35.507084, 47.268093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160233, 36.301460, 47.286308>,  <33.883705, 35.703869, 47.298306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160233, 36.301460, 47.286308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449718, 36.060959, 47.150818>,  <34.623409, 35.916660, 47.069523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449718, 36.060959, 47.150818>,  <34.160233, 36.301460, 47.286308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449718, 36.060959, 47.150818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079555, 0.560249, -0.824495,
		0.685497, 0.569753, 0.453294,
		0.723716, -0.601251, -0.338723,
		34.666832, 35.880585, 47.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631027, 36.783825, 46.992516>,  <34.160233, 36.301460, 47.286308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631027, 36.783825, 46.992516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722939, 36.428963, 46.832436>,  <34.778088, 36.216045, 46.736389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722939, 36.428963, 46.832436>,  <34.631027, 36.783825, 46.992516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722939, 36.428963, 46.832436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123320, 0.434426, -0.892226,
		0.965398, 0.155664, 0.209227,
		0.229781, -0.887154, -0.400197,
		34.791874, 36.162815, 46.712376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236080, 36.895710, 46.646969>,  <34.631027, 36.783825, 46.992516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236080, 36.895710, 46.646969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068703, 36.580353, 46.466591>,  <34.968277, 36.391140, 46.358364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068703, 36.580353, 46.466591>,  <35.236080, 36.895710, 46.646969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068703, 36.580353, 46.466591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279378, 0.360698, -0.889857,
		0.864207, -0.498338, 0.069327,
		-0.418443, -0.788389, -0.450942,
		34.943169, 36.343838, 46.331306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688374, 36.796665, 46.063091>,  <35.236080, 36.895710, 46.646969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688374, 36.796665, 46.063091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356857, 36.603508, 45.950008>,  <35.157948, 36.487614, 45.882160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356857, 36.603508, 45.950008>,  <35.688374, 36.796665, 46.063091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356857, 36.603508, 45.950008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223763, 0.177055, -0.958427,
		0.512874, -0.857591, -0.038687,
		-0.828788, -0.482896, -0.282704,
		35.108219, 36.458641, 45.865196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.936901, 30.540283, 38.869263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546638, 30.461393, 38.830906>,  <41.312481, 30.414061, 38.807892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546638, 30.461393, 38.830906>,  <41.936901, 30.540283, 38.869263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546638, 30.461393, 38.830906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081083, 0.730691, -0.677876,
		0.203758, -0.653601, -0.728896,
		-0.975658, -0.197223, -0.095888,
		41.253941, 30.402225, 38.802139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795128, 30.469433, 38.256142>,  <41.936901, 30.540283, 38.869263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795128, 30.469433, 38.256142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.474201, 30.630045, 38.432804>,  <41.281643, 30.726412, 38.538799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.474201, 30.630045, 38.432804>,  <41.795128, 30.469433, 38.256142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474201, 30.630045, 38.432804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089184, 0.812253, -0.576447,
		-0.590196, -0.423105, -0.687496,
		-0.802318, 0.401531, 0.441654,
		41.233505, 30.750504, 38.565300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331734, 30.575134, 37.702888>,  <41.795128, 30.469433, 38.256142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331734, 30.575134, 37.702888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188728, 30.818750, 37.986088>,  <41.102924, 30.964920, 38.156006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188728, 30.818750, 37.986088>,  <41.331734, 30.575134, 37.702888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188728, 30.818750, 37.986088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021538, 0.763275, -0.645715,
		-0.933661, -0.215601, -0.285996,
		-0.357510, 0.609039, 0.707996,
		41.081474, 31.001463, 38.198486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990067, 31.050198, 37.302711>,  <41.331734, 30.575134, 37.702888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990067, 31.050198, 37.302711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011299, 31.239954, 37.654198>,  <41.024036, 31.353807, 37.865089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.011299, 31.239954, 37.654198>,  <40.990067, 31.050198, 37.302711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011299, 31.239954, 37.654198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051643, 0.877471, -0.476841,
		-0.997254, 0.070690, 0.022076,
		0.053079, 0.474391, 0.878713,
		41.027222, 31.382271, 37.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579517, 31.611567, 37.151810>,  <40.990067, 31.050198, 37.302711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579517, 31.611567, 37.151810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749966, 31.695330, 37.503849>,  <40.852234, 31.745586, 37.715073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749966, 31.695330, 37.503849>,  <40.579517, 31.611567, 37.151810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749966, 31.695330, 37.503849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041309, 0.976331, -0.212302,
		-0.903723, 0.054110, 0.424684,
		0.426119, 0.209406, 0.880098,
		40.877800, 31.758152, 37.767879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190197, 32.228569, 37.554031>,  <40.579517, 31.611567, 37.151810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190197, 32.228569, 37.554031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575974, 32.217766, 37.659191>,  <40.807442, 32.211285, 37.722286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575974, 32.217766, 37.659191>,  <40.190197, 32.228569, 37.554031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575974, 32.217766, 37.659191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105372, 0.951577, -0.288787,
		-0.242371, 0.306221, 0.920589,
		0.964444, -0.027010, 0.262902,
		40.865307, 32.209663, 37.738060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350613, 32.882812, 37.910732>,  <40.190197, 32.228569, 37.554031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350613, 32.882812, 37.910732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684036, 32.737595, 37.744175>,  <40.884090, 32.650463, 37.644241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684036, 32.737595, 37.744175>,  <40.350613, 32.882812, 37.910732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684036, 32.737595, 37.744175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296514, 0.929990, -0.217252,
		0.466116, 0.057624, 0.882845,
		0.833556, -0.363040, -0.416397,
		40.934105, 32.628681, 37.619255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856339, 33.298546, 38.129906>,  <40.350613, 32.882812, 37.910732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856339, 33.298546, 38.129906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001163, 33.139359, 37.792732>,  <41.088058, 33.043846, 37.590427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001163, 33.139359, 37.792732>,  <40.856339, 33.298546, 38.129906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001163, 33.139359, 37.792732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481135, 0.854300, -0.196672,
		0.798387, -0.334358, 0.500783,
		0.362060, -0.397965, -0.842933,
		41.109783, 33.019970, 37.539852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500687, 33.725586, 37.995373>,  <40.856339, 33.298546, 38.129906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500687, 33.725586, 37.995373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.473602, 33.536983, 37.643669>,  <41.457352, 33.423820, 37.432648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.473602, 33.536983, 37.643669>,  <41.500687, 33.725586, 37.995373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473602, 33.536983, 37.643669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446541, 0.773762, -0.449326,
		0.892198, -0.423049, 0.158156,
		-0.067712, -0.471510, -0.879257,
		41.453289, 33.395531, 37.379890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223709, 33.813637, 37.669163>,  <41.500687, 33.725586, 37.995373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223709, 33.813637, 37.669163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980064, 33.732891, 37.362377>,  <41.833878, 33.684444, 37.178307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980064, 33.732891, 37.362377>,  <42.223709, 33.813637, 37.669163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980064, 33.732891, 37.362377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417206, 0.740883, -0.526338,
		0.674475, -0.640582, -0.367067,
		-0.609116, -0.201859, -0.766962,
		41.797329, 33.672333, 37.132290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607563, 33.979656, 37.150124>,  <42.223709, 33.813637, 37.669163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607563, 33.979656, 37.150124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256302, 33.932518, 36.964668>,  <42.045544, 33.904236, 36.853397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256302, 33.932518, 36.964668>,  <42.607563, 33.979656, 37.150124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256302, 33.932518, 36.964668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327617, 0.558077, -0.762376,
		0.348584, -0.821378, -0.451471,
		-0.878155, -0.117843, -0.463634,
		41.992855, 33.897163, 36.825577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771137, 33.907906, 36.385395>,  <42.607563, 33.979656, 37.150124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771137, 33.907906, 36.385395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.396057, 34.033321, 36.445267>,  <42.171009, 34.108570, 36.481190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.396057, 34.033321, 36.445267>,  <42.771137, 33.907906, 36.385395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396057, 34.033321, 36.445267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145814, 0.746186, -0.649572,
		-0.315357, -0.587281, -0.745420,
		-0.937704, 0.313540, 0.149681,
		42.114746, 34.127384, 36.490170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485512, 34.077484, 35.728649>,  <42.771137, 33.907906, 36.385395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485512, 34.077484, 35.728649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256981, 34.284142, 35.983730>,  <42.119862, 34.408134, 36.136780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256981, 34.284142, 35.983730>,  <42.485512, 34.077484, 35.728649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256981, 34.284142, 35.983730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098065, 0.814409, -0.571945,
		-0.814842, -0.264232, -0.515959,
		-0.571328, 0.516643, 0.637703,
		42.085583, 34.439133, 36.175041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162434, 34.535679, 35.246117>,  <42.485512, 34.077484, 35.728649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162434, 34.535679, 35.246117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093063, 34.695618, 35.606125>,  <42.051441, 34.791580, 35.822132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093063, 34.695618, 35.606125>,  <42.162434, 34.535679, 35.246117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093063, 34.695618, 35.606125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155871, 0.913499, -0.375797,
		-0.972433, 0.075114, -0.220753,
		-0.173430, 0.399847, 0.900025,
		42.041035, 34.815571, 35.876133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614449, 35.023148, 35.134426>,  <42.162434, 34.535679, 35.246117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614449, 35.023148, 35.134426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781410, 35.131802, 35.481293>,  <41.881588, 35.196995, 35.689415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781410, 35.131802, 35.481293>,  <41.614449, 35.023148, 35.134426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781410, 35.131802, 35.481293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063635, 0.960672, -0.270295,
		-0.906488, 0.057641, 0.418279,
		0.417409, 0.271637, 0.867170,
		41.906631, 35.213291, 35.741444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156418, 35.657738, 35.458977>,  <41.614449, 35.023148, 35.134426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156418, 35.657738, 35.458977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.522808, 35.659302, 35.619465>,  <41.742641, 35.660240, 35.715759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.522808, 35.659302, 35.619465>,  <41.156418, 35.657738, 35.458977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522808, 35.659302, 35.619465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098438, 0.967203, -0.234153,
		-0.388977, 0.253973, 0.885548,
		0.915973, 0.003909, 0.401220,
		41.797600, 35.660473, 35.739830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273750, 36.293793, 35.902096>,  <41.156418, 35.657738, 35.458977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273750, 36.293793, 35.902096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650429, 36.182800, 35.825970>,  <41.876434, 36.116203, 35.780293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650429, 36.182800, 35.825970>,  <41.273750, 36.293793, 35.902096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650429, 36.182800, 35.825970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210575, 0.927164, -0.309879,
		0.262439, 0.251735, 0.931534,
		0.941692, -0.277482, -0.190315,
		41.932938, 36.099556, 35.768875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726231, 36.820625, 36.115665>,  <41.273750, 36.293793, 35.902096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726231, 36.820625, 36.115665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951984, 36.622402, 35.851578>,  <42.087437, 36.503468, 35.693123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951984, 36.622402, 35.851578>,  <41.726231, 36.820625, 36.115665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951984, 36.622402, 35.851578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325259, 0.868569, -0.373892,
		0.758732, -0.003723, 0.651392,
		0.564387, -0.495555, -0.660222,
		42.121300, 36.473736, 35.653511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394543, 37.158356, 36.148048>,  <41.726231, 36.820625, 36.115665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394543, 37.158356, 36.148048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369911, 36.962700, 35.800037>,  <42.355133, 36.845306, 35.591232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369911, 36.962700, 35.800037>,  <42.394543, 37.158356, 36.148048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369911, 36.962700, 35.800037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316121, 0.817250, -0.481842,
		0.946718, -0.304706, 0.104301,
		-0.061581, -0.489140, -0.870029,
		42.351437, 36.815956, 35.539028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072784, 37.150543, 35.838211>,  <42.394543, 37.158356, 36.148048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072784, 37.150543, 35.838211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805363, 37.122307, 35.542088>,  <42.644909, 37.105366, 35.364414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805363, 37.122307, 35.542088>,  <43.072784, 37.150543, 35.838211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805363, 37.122307, 35.542088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495548, 0.699973, -0.514267,
		0.554495, -0.710672, -0.432990,
		-0.668556, -0.070591, -0.740304,
		42.604797, 37.101128, 35.319996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509819, 37.108208, 35.300491>,  <43.072784, 37.150543, 35.838211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509819, 37.108208, 35.300491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158684, 37.230381, 35.152916>,  <42.948002, 37.303684, 35.064369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158684, 37.230381, 35.152916>,  <43.509819, 37.108208, 35.300491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158684, 37.230381, 35.152916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474536, 0.659115, -0.583424,
		0.064975, -0.687224, -0.723534,
		-0.877835, 0.305435, -0.368938,
		42.895332, 37.322010, 35.042236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120354, 36.614998, 35.501476>,  <43.509819, 37.108208, 35.300491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120354, 36.614998, 35.501476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.445660, 36.420277, 35.373962>,  <44.640842, 36.303444, 35.297455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.445660, 36.420277, 35.373962>,  <44.120354, 36.614998, 35.501476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445660, 36.420277, 35.373962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581598, -0.697591, -0.418462,
		-0.018670, 0.525723, -0.850451,
		0.813262, -0.486808, -0.318783,
		44.689640, 36.274235, 35.278328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896538, 36.249672, 34.946072>,  <44.120354, 36.614998, 35.501476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896538, 36.249672, 34.946072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223286, 36.051140, 35.063637>,  <44.419334, 35.932022, 35.134174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223286, 36.051140, 35.063637>,  <43.896538, 36.249672, 34.946072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223286, 36.051140, 35.063637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445409, -0.866504, -0.225348,
		0.366524, 0.053168, -0.928888,
		0.816867, -0.496330, 0.293913,
		44.468346, 35.902241, 35.151810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965374, 35.634808, 34.576355>,  <43.896538, 36.249672, 34.946072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965374, 35.634808, 34.576355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207302, 35.527706, 34.876354>,  <44.352459, 35.463444, 35.056355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207302, 35.527706, 34.876354>,  <43.965374, 35.634808, 34.576355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207302, 35.527706, 34.876354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198561, -0.962742, -0.183579,
		0.771210, -0.037888, -0.635452,
		0.604821, -0.267754, 0.750000,
		44.388748, 35.447380, 35.101353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413536, 35.242401, 34.271946>,  <43.965374, 35.634808, 34.576355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413536, 35.242401, 34.271946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436226, 35.160824, 34.662880>,  <44.449841, 35.111877, 34.897442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436226, 35.160824, 34.662880>,  <44.413536, 35.242401, 34.271946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436226, 35.160824, 34.662880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165963, -0.967222, -0.192195,
		0.984499, -0.151300, -0.088713,
		0.056726, -0.203938, 0.977339,
		44.453243, 35.099644, 34.956081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948448, 34.641884, 34.342163>,  <44.413536, 35.242401, 34.271946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948448, 34.641884, 34.342163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701107, 34.666801, 34.655537>,  <44.552704, 34.681751, 34.843559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701107, 34.666801, 34.655537>,  <44.948448, 34.641884, 34.342163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701107, 34.666801, 34.655537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176195, -0.982467, -0.060945,
		0.765898, -0.175722, 0.618484,
		-0.618349, 0.062297, 0.783430,
		44.515602, 34.685490, 34.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182415, 34.163292, 34.837765>,  <44.948448, 34.641884, 34.342163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182415, 34.163292, 34.837765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802567, 34.220737, 34.949192>,  <44.574657, 34.255207, 35.016048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802567, 34.220737, 34.949192>,  <45.182415, 34.163292, 34.837765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802567, 34.220737, 34.949192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130162, -0.989272, 0.066317,
		0.285102, 0.026717, 0.958125,
		-0.949618, 0.143619, 0.278566,
		44.517681, 34.263824, 35.032761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071587, 33.670605, 35.323238>,  <45.182415, 34.163292, 34.837765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071587, 33.670605, 35.323238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.687553, 33.758881, 35.254501>,  <44.457134, 33.811844, 35.213261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.687553, 33.758881, 35.254501>,  <45.071587, 33.670605, 35.323238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687553, 33.758881, 35.254501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260061, -0.930486, 0.257999,
		-0.102959, 0.292391, 0.950740,
		-0.960087, 0.220687, -0.171842,
		44.399529, 33.825089, 35.202950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517578, 33.500423, 35.927193>,  <45.071587, 33.670605, 35.323238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517578, 33.500423, 35.927193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.287270, 33.530502, 35.601532>,  <44.149086, 33.548550, 35.406136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.287270, 33.530502, 35.601532>,  <44.517578, 33.500423, 35.927193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287270, 33.530502, 35.601532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396338, -0.896616, 0.197475,
		-0.715128, 0.436377, 0.546046,
		-0.575767, 0.075199, -0.814148,
		44.114540, 33.553062, 35.357288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844666, 33.261734, 36.181995>,  <44.517578, 33.500423, 35.927193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844666, 33.261734, 36.181995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822189, 33.254848, 35.782688>,  <43.808704, 33.250717, 35.543102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822189, 33.254848, 35.782688>,  <43.844666, 33.261734, 36.181995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822189, 33.254848, 35.782688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318028, -0.947463, 0.034243,
		-0.946415, 0.319402, 0.047765,
		-0.056193, -0.017217, -0.998272,
		43.805332, 33.249683, 35.483208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177826, 33.142410, 36.021282>,  <43.844666, 33.261734, 36.181995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177826, 33.142410, 36.021282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369171, 33.029636, 35.688614>,  <43.483978, 32.961971, 35.489014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369171, 33.029636, 35.688614>,  <43.177826, 33.142410, 36.021282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369171, 33.029636, 35.688614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350497, -0.929655, 0.113550,
		-0.805182, 0.237180, -0.543532,
		0.478366, -0.281934, -0.831673,
		43.512680, 32.945057, 35.439114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666969, 32.806278, 35.666706>,  <43.177826, 33.142410, 36.021282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666969, 32.806278, 35.666706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015938, 32.671173, 35.525398>,  <43.225319, 32.590111, 35.440613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015938, 32.671173, 35.525398>,  <42.666969, 32.806278, 35.666706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015938, 32.671173, 35.525398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334150, -0.939672, 0.073211,
		-0.356683, 0.054173, -0.932654,
		0.872423, -0.337760, -0.353267,
		43.277664, 32.569847, 35.419418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459496, 32.288292, 35.223228>,  <42.666969, 32.806278, 35.666706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459496, 32.288292, 35.223228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844021, 32.202129, 35.291904>,  <43.074738, 32.150433, 35.333111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844021, 32.202129, 35.291904>,  <42.459496, 32.288292, 35.223228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844021, 32.202129, 35.291904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227236, -0.972436, 0.052263,
		0.155697, -0.089255, -0.983764,
		0.961313, -0.215410, 0.171688,
		43.132416, 32.137505, 35.343410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622223, 31.844793, 34.717720>,  <42.459496, 32.288292, 35.223228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622223, 31.844793, 34.717720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856289, 31.797897, 35.038677>,  <42.996731, 31.769760, 35.231251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856289, 31.797897, 35.038677>,  <42.622223, 31.844793, 34.717720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856289, 31.797897, 35.038677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202756, -0.979218, 0.004791,
		0.785155, -0.165494, -0.596778,
		0.585168, -0.117238, 0.802393,
		43.031837, 31.762726, 35.279396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135452, 31.251677, 34.574913>,  <42.622223, 31.844793, 34.717720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135452, 31.251677, 34.574913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095993, 31.289856, 34.971127>,  <43.072315, 31.312763, 35.208855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095993, 31.289856, 34.971127>,  <43.135452, 31.251677, 34.574913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095993, 31.289856, 34.971127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004996, -0.995424, 0.095423,
		0.995109, 0.004465, 0.098677,
		-0.098652, 0.095449, 0.990534,
		43.066399, 31.318491, 35.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605511, 30.696648, 34.879509>,  <43.135452, 31.251677, 34.574913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605511, 30.696648, 34.879509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.373707, 30.819635, 35.181404>,  <43.234623, 30.893427, 35.362541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.373707, 30.819635, 35.181404>,  <43.605511, 30.696648, 34.879509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373707, 30.819635, 35.181404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052479, -0.938257, 0.341936,
		0.813271, 0.158549, 0.559868,
		-0.579514, 0.307468, 0.754737,
		43.199852, 30.911877, 35.407825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910450, 30.363785, 35.524155>,  <43.605511, 30.696648, 34.879509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910450, 30.363785, 35.524155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.533283, 30.467428, 35.607834>,  <43.306984, 30.529615, 35.658043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.533283, 30.467428, 35.607834>,  <43.910450, 30.363785, 35.524155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533283, 30.467428, 35.607834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193098, -0.937203, 0.290455,
		0.271324, 0.233479, 0.933740,
		-0.942919, 0.259111, 0.209202,
		43.250408, 30.545162, 35.670593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754597, 30.011818, 36.147594>,  <43.910450, 30.363785, 35.524155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754597, 30.011818, 36.147594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386723, 30.116302, 36.030334>,  <43.165997, 30.178993, 35.959976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386723, 30.116302, 36.030334>,  <43.754597, 30.011818, 36.147594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386723, 30.116302, 36.030334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364183, -0.846565, 0.388200,
		-0.146770, 0.463785, 0.873706,
		-0.919690, 0.261213, -0.293153,
		43.110817, 30.194666, 35.942387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235672, 30.015831, 36.779793>,  <43.754597, 30.011818, 36.147594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235672, 30.015831, 36.779793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013290, 29.982336, 36.448997>,  <42.879864, 29.962240, 36.250523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013290, 29.982336, 36.448997>,  <43.235672, 30.015831, 36.779793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013290, 29.982336, 36.448997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509496, -0.751770, 0.418636,
		-0.656757, 0.654087, 0.375285,
		-0.555952, -0.083736, -0.826986,
		42.846504, 29.957216, 36.200901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573288, 29.877823, 36.938545>,  <43.235672, 30.015831, 36.779793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573288, 29.877823, 36.938545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.571301, 29.774809, 36.552044>,  <42.570110, 29.713001, 36.320141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.571301, 29.774809, 36.552044>,  <42.573288, 29.877823, 36.938545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571301, 29.774809, 36.552044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642368, -0.739716, 0.200457,
		-0.766380, 0.621688, -0.161759,
		-0.004966, -0.257535, -0.966256,
		42.569809, 29.697548, 36.262169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832218, 29.778379, 36.739162>,  <42.573288, 29.877823, 36.938545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832218, 29.778379, 36.739162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059155, 29.585384, 36.472229>,  <42.195316, 29.469587, 36.312069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059155, 29.585384, 36.472229>,  <41.832218, 29.778379, 36.739162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059155, 29.585384, 36.472229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653083, -0.757247, -0.007732,
		-0.501604, 0.440209, -0.744721,
		0.567341, -0.482487, -0.667331,
		42.229359, 29.440638, 36.272030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444912, 29.614662, 36.233406>,  <41.832218, 29.778379, 36.739162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444912, 29.614662, 36.233406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719860, 29.327103, 36.192001>,  <41.884827, 29.154568, 36.167160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719860, 29.327103, 36.192001>,  <41.444912, 29.614662, 36.233406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719860, 29.327103, 36.192001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712051, -0.695094, 0.099132,
		-0.143216, 0.005566, -0.989676,
		0.687366, -0.718897, -0.103512,
		41.926071, 29.111433, 36.160946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.964565, 37.119816, 40.945786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671829, 36.848221, 40.969078>,  <38.496189, 36.685265, 40.983055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671829, 36.848221, 40.969078>,  <38.964565, 37.119816, 40.945786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671829, 36.848221, 40.969078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131828, -0.224890, -0.965425,
		0.668608, -0.698857, 0.254092,
		-0.731836, -0.678988, 0.058235,
		38.452278, 36.644524, 40.986549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228077, 36.569199, 40.595707>,  <38.964565, 37.119816, 40.945786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228077, 36.569199, 40.595707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834732, 36.498798, 40.613697>,  <38.598724, 36.456558, 40.624493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834732, 36.498798, 40.613697>,  <39.228077, 36.569199, 40.595707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834732, 36.498798, 40.613697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014306, -0.321868, -0.946677,
		0.181093, -0.930282, 0.319030,
		-0.983362, -0.176000, 0.044979,
		38.539722, 36.445999, 40.627190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186905, 36.066536, 40.119656>,  <39.228077, 36.569199, 40.595707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186905, 36.066536, 40.119656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815052, 36.200748, 40.180576>,  <38.591938, 36.281277, 40.217129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815052, 36.200748, 40.180576>,  <39.186905, 36.066536, 40.119656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815052, 36.200748, 40.180576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204855, -0.127042, -0.970513,
		-0.306292, -0.933422, 0.186838,
		-0.929634, 0.335535, 0.152304,
		38.536163, 36.301407, 40.226269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722668, 35.536278, 40.006401>,  <39.186905, 36.066536, 40.119656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722668, 35.536278, 40.006401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556465, 35.892109, 39.930504>,  <38.456745, 36.105606, 39.884964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556465, 35.892109, 39.930504>,  <38.722668, 35.536278, 40.006401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556465, 35.892109, 39.930504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137005, -0.267432, -0.953787,
		-0.899213, -0.370308, 0.232997,
		-0.415506, 0.889579, -0.189745,
		38.431812, 36.158981, 39.873581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157635, 35.334644, 39.718384>,  <38.722668, 35.536278, 40.006401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157635, 35.334644, 39.718384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189816, 35.719971, 39.615974>,  <38.209126, 35.951168, 39.554527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189816, 35.719971, 39.615974>,  <38.157635, 35.334644, 39.718384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189816, 35.719971, 39.615974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224683, -0.232721, -0.946234,
		-0.971105, 0.133656, 0.197717,
		0.080457, 0.963316, -0.256026,
		38.213951, 36.008965, 39.539165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825783, 35.351467, 39.189449>,  <38.157635, 35.334644, 39.718384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825783, 35.351467, 39.189449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986652, 35.715775, 39.152012>,  <38.083172, 35.934361, 39.129551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986652, 35.715775, 39.152012>,  <37.825783, 35.351467, 39.189449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986652, 35.715775, 39.152012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092372, -0.061336, -0.993834,
		-0.910893, 0.408336, 0.059462,
		0.402171, 0.910769, -0.093590,
		38.107304, 35.989006, 39.123936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319664, 35.802856, 38.827583>,  <37.825783, 35.351467, 39.189449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319664, 35.802856, 38.827583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680210, 35.973415, 38.797321>,  <37.896538, 36.075752, 38.779163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680210, 35.973415, 38.797321>,  <37.319664, 35.802856, 38.827583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680210, 35.973415, 38.797321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018321, -0.136988, -0.990403,
		-0.432671, 0.894101, -0.115665,
		0.901366, 0.426400, -0.075652,
		37.950619, 36.101334, 38.774628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201202, 36.255898, 38.380894>,  <37.319664, 35.802856, 38.827583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201202, 36.255898, 38.380894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597370, 36.202152, 38.368095>,  <37.835072, 36.169907, 38.360416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597370, 36.202152, 38.368095>,  <37.201202, 36.255898, 38.380894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597370, 36.202152, 38.368095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016536, 0.114625, -0.993271,
		0.137123, 0.984281, 0.111304,
		0.990416, -0.134360, -0.031993,
		37.894493, 36.161846, 38.358498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457973, 36.867455, 38.107685>,  <37.201202, 36.255898, 38.380894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457973, 36.867455, 38.107685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710270, 36.563190, 38.046280>,  <37.861649, 36.380634, 38.009438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710270, 36.563190, 38.046280>,  <37.457973, 36.867455, 38.107685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710270, 36.563190, 38.046280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016417, 0.184707, -0.982657,
		0.775819, 0.622323, 0.104015,
		0.630742, -0.760656, -0.153516,
		37.899494, 36.334995, 38.000225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694233, 37.093342, 37.514095>,  <37.457973, 36.867455, 38.107685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694233, 37.093342, 37.514095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825745, 36.716576, 37.541496>,  <37.904652, 36.490517, 37.557938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825745, 36.716576, 37.541496>,  <37.694233, 37.093342, 37.514095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825745, 36.716576, 37.541496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018127, -0.078817, -0.996724,
		0.944233, 0.326459, -0.042987,
		0.328778, -0.941919, 0.068504,
		37.924377, 36.433998, 37.562046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181633, 37.069595, 37.033203>,  <37.694233, 37.093342, 37.514095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181633, 37.069595, 37.033203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041386, 36.703815, 37.114044>,  <37.957237, 36.484348, 37.162548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041386, 36.703815, 37.114044>,  <38.181633, 37.069595, 37.033203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041386, 36.703815, 37.114044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174552, -0.148215, -0.973429,
		0.920109, -0.376576, -0.107653,
		-0.350615, -0.914452, 0.202106,
		37.936203, 36.429482, 37.174675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486710, 36.767635, 36.559784>,  <38.181633, 37.069595, 37.033203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486710, 36.767635, 36.559784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190166, 36.523167, 36.670681>,  <38.012241, 36.376488, 36.737221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190166, 36.523167, 36.670681>,  <38.486710, 36.767635, 36.559784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190166, 36.523167, 36.670681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225355, -0.162422, -0.960643,
		0.632146, -0.774656, -0.017318,
		-0.741355, -0.611169, 0.277247,
		37.967758, 36.339817, 36.753857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528240, 36.090069, 36.241699>,  <38.486710, 36.767635, 36.559784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528240, 36.090069, 36.241699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151638, 36.200714, 36.318691>,  <37.925674, 36.267101, 36.364887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151638, 36.200714, 36.318691>,  <38.528240, 36.090069, 36.241699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151638, 36.200714, 36.318691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244427, -0.167340, -0.955119,
		-0.231994, -0.946298, 0.225165,
		-0.941506, 0.276618, 0.192479,
		37.869186, 36.283699, 36.376434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952888, 35.636635, 35.982773>,  <38.528240, 36.090069, 36.241699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952888, 35.636635, 35.982773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858204, 36.025257, 35.985714>,  <37.801392, 36.258430, 35.987480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858204, 36.025257, 35.985714>,  <37.952888, 35.636635, 35.982773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858204, 36.025257, 35.985714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156394, -0.030629, -0.987220,
		-0.958909, -0.234841, 0.159195,
		-0.236716, 0.971551, 0.007357,
		37.787189, 36.316723, 35.987923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427624, 35.776642, 35.429802>,  <37.952888, 35.636635, 35.982773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427624, 35.776642, 35.429802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701942, 35.550171, 35.612724>,  <38.866531, 35.414288, 35.722477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701942, 35.550171, 35.612724>,  <38.427624, 35.776642, 35.429802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701942, 35.550171, 35.612724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632340, 0.774617, 0.010748,
		-0.360322, 0.281802, 0.889244,
		0.685795, -0.566177, 0.457306,
		38.907681, 35.380318, 35.749916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220772, 35.136948, 35.005791>,  <38.427624, 35.776642, 35.429802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220772, 35.136948, 35.005791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485973, 34.891712, 34.833954>,  <38.645092, 34.744572, 34.730854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485973, 34.891712, 34.833954>,  <38.220772, 35.136948, 35.005791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485973, 34.891712, 34.833954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314574, -0.748882, 0.583283,
		-0.679316, -0.251581, -0.689374,
		0.663003, -0.613093, -0.429587,
		38.684875, 34.707783, 34.705078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863232, 34.634380, 34.703548>,  <38.220772, 35.136948, 35.005791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863232, 34.634380, 34.703548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227509, 34.485058, 34.774307>,  <38.446075, 34.395466, 34.816761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227509, 34.485058, 34.774307>,  <37.863232, 34.634380, 34.703548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227509, 34.485058, 34.774307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398385, -0.680408, 0.615089,
		-0.109253, -0.630628, -0.768357,
		0.910689, -0.373302, 0.176896,
		38.500713, 34.373066, 34.827377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865612, 33.882000, 34.830231>,  <37.863232, 34.634380, 34.703548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865612, 33.882000, 34.830231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210487, 33.985493, 35.004448>,  <38.417412, 34.047588, 35.108978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210487, 33.985493, 35.004448>,  <37.865612, 33.882000, 34.830231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210487, 33.985493, 35.004448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208441, -0.602413, 0.770488,
		0.461722, -0.755088, -0.465462,
		0.862186, 0.258730, 0.435539,
		38.469143, 34.063110, 35.135109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103119, 33.290417, 35.017464>,  <37.865612, 33.882000, 34.830231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103119, 33.290417, 35.017464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283157, 33.565624, 35.245163>,  <38.391178, 33.730751, 35.381783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283157, 33.565624, 35.245163>,  <38.103119, 33.290417, 35.017464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283157, 33.565624, 35.245163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111724, -0.675848, 0.728524,
		0.885966, -0.264304, -0.381062,
		0.450092, 0.688021, 0.569249,
		38.418186, 33.772030, 35.415939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575989, 32.919827, 35.486244>,  <38.103119, 33.290417, 35.017464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575989, 32.919827, 35.486244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613705, 33.271118, 35.673786>,  <38.636333, 33.481892, 35.786312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613705, 33.271118, 35.673786>,  <38.575989, 32.919827, 35.486244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613705, 33.271118, 35.673786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019400, -0.469238, 0.882859,
		0.995356, -0.092340, -0.027207,
		0.094290, 0.878231, 0.468850,
		38.641991, 33.534588, 35.814442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133556, 32.895443, 35.987976>,  <38.575989, 32.919827, 35.486244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133556, 32.895443, 35.987976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878304, 33.174404, 36.118462>,  <38.725151, 33.341782, 36.196754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878304, 33.174404, 36.118462>,  <39.133556, 32.895443, 35.987976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878304, 33.174404, 36.118462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019416, -0.408983, 0.912336,
		0.769684, 0.588522, 0.247443,
		-0.638130, 0.697406, 0.326214,
		38.686863, 33.383625, 36.216328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436069, 33.209827, 36.663841>,  <39.133556, 32.895443, 35.987976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436069, 33.209827, 36.663841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046524, 33.300407, 36.656883>,  <38.812798, 33.354755, 36.652710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046524, 33.300407, 36.656883>,  <39.436069, 33.209827, 36.663841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046524, 33.300407, 36.656883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083204, -0.284455, 0.955072,
		0.211328, 0.931561, 0.295863,
		-0.973867, 0.226451, -0.017396,
		38.754364, 33.368343, 36.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369411, 33.759903, 37.134941>,  <39.436069, 33.209827, 36.663841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369411, 33.759903, 37.134941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025063, 33.562531, 37.085255>,  <38.818455, 33.444107, 37.055443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025063, 33.562531, 37.085255>,  <39.369411, 33.759903, 37.134941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025063, 33.562531, 37.085255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044115, -0.170829, 0.984313,
		-0.506911, 0.852844, 0.125293,
		-0.860869, -0.493432, -0.124218,
		38.766804, 33.414501, 37.047989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007923, 33.994095, 37.746140>,  <39.369411, 33.759903, 37.134941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007923, 33.994095, 37.746140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780464, 33.699146, 37.600307>,  <38.643990, 33.522175, 37.512810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780464, 33.699146, 37.600307>,  <39.007923, 33.994095, 37.746140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780464, 33.699146, 37.600307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278615, -0.244360, 0.928796,
		-0.773960, 0.629734, -0.066489,
		-0.568647, -0.737376, -0.364578,
		38.609871, 33.477932, 37.490932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410320, 34.054878, 38.136124>,  <39.007923, 33.994095, 37.746140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410320, 34.054878, 38.136124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441017, 33.687851, 37.980080>,  <38.459435, 33.467636, 37.886456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441017, 33.687851, 37.980080>,  <38.410320, 34.054878, 38.136124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441017, 33.687851, 37.980080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394678, -0.387258, 0.833223,
		-0.915609, 0.090023, -0.391862,
		0.076743, -0.917566, -0.390107,
		38.464039, 33.412582, 37.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850346, 33.781361, 38.330948>,  <38.410320, 34.054878, 38.136124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850346, 33.781361, 38.330948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079105, 33.460308, 38.263172>,  <38.216362, 33.267677, 38.222507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079105, 33.460308, 38.263172>,  <37.850346, 33.781361, 38.330948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079105, 33.460308, 38.263172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319143, -0.407978, 0.855395,
		-0.755697, -0.435125, -0.489478,
		0.571901, -0.802633, -0.169441,
		38.250675, 33.219517, 38.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448235, 33.244034, 38.672539>,  <37.850346, 33.781361, 38.330948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448235, 33.244034, 38.672539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813156, 33.090336, 38.615887>,  <38.032108, 32.998116, 38.581894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813156, 33.090336, 38.615887>,  <37.448235, 33.244034, 38.672539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813156, 33.090336, 38.615887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059557, -0.466661, 0.882429,
		-0.405165, -0.796606, -0.448620,
		0.912302, -0.384247, -0.141631,
		38.086845, 32.975060, 38.573399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446907, 32.485558, 38.736538>,  <37.448235, 33.244034, 38.672539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446907, 32.485558, 38.736538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817490, 32.602531, 38.831329>,  <38.039841, 32.672718, 38.888206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817490, 32.602531, 38.831329>,  <37.446907, 32.485558, 38.736538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817490, 32.602531, 38.831329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127309, -0.349037, 0.928421,
		0.354221, -0.890310, -0.286138,
		0.926456, 0.292439, 0.236981,
		38.095425, 32.690262, 38.902424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119610, 31.807730, 38.781750>,  <37.446907, 32.485558, 38.736538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119610, 31.807730, 38.781750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778614, 31.647640, 38.916264>,  <36.574017, 31.551586, 38.996971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778614, 31.647640, 38.916264>,  <37.119610, 31.807730, 38.781750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778614, 31.647640, 38.916264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441950, 0.208236, -0.872535,
		0.279181, -0.892447, -0.354397,
		-0.852489, -0.400221, 0.336281,
		36.522869, 31.527575, 39.017147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884541, 31.272926, 38.273788>,  <37.119610, 31.807730, 38.781750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884541, 31.272926, 38.273788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587128, 31.433165, 38.487957>,  <36.408680, 31.529306, 38.616459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587128, 31.433165, 38.487957>,  <36.884541, 31.272926, 38.273788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587128, 31.433165, 38.487957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494174, 0.210251, -0.843556,
		-0.450498, -0.891807, 0.041634,
		-0.743535, 0.400595, 0.535425,
		36.364067, 31.553343, 38.648586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361725, 31.174957, 37.820114>,  <36.884541, 31.272926, 38.273788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361725, 31.174957, 37.820114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174698, 31.419443, 38.075550>,  <36.062481, 31.566135, 38.228813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174698, 31.419443, 38.075550>,  <36.361725, 31.174957, 37.820114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174698, 31.419443, 38.075550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588205, 0.324136, -0.740912,
		-0.659848, -0.722046, 0.207966,
		-0.467563, 0.611216, 0.638592,
		36.034428, 31.602808, 38.267128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637218, 31.060431, 37.740845>,  <36.361725, 31.174957, 37.820114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637218, 31.060431, 37.740845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719227, 31.425430, 37.882439>,  <35.768433, 31.644430, 37.967396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719227, 31.425430, 37.882439>,  <35.637218, 31.060431, 37.740845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719227, 31.425430, 37.882439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452167, 0.409066, -0.792597,
		-0.868050, 0.002438, 0.496470,
		0.205021, 0.912502, 0.353987,
		35.780735, 31.699181, 37.988636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119385, 31.422991, 37.571613>,  <35.637218, 31.060431, 37.740845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119385, 31.422991, 37.571613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352829, 31.731421, 37.673470>,  <35.492897, 31.916477, 37.734585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352829, 31.731421, 37.673470>,  <35.119385, 31.422991, 37.571613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352829, 31.731421, 37.673470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386076, 0.539357, -0.748358,
		-0.714383, 0.338438, 0.612468,
		0.583612, 0.771073, 0.254644,
		35.527912, 31.962742, 37.749863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733997, 31.958534, 37.598919>,  <35.119385, 31.422991, 37.571613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733997, 31.958534, 37.598919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085167, 32.137966, 37.531960>,  <35.295868, 32.245625, 37.491783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085167, 32.137966, 37.531960>,  <34.733997, 31.958534, 37.598919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085167, 32.137966, 37.531960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410542, 0.525359, -0.745287,
		-0.246378, 0.723030, 0.645388,
		0.877925, 0.448581, -0.167397,
		35.348545, 32.272541, 37.481739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683895, 32.694633, 37.526554>,  <34.733997, 31.958534, 37.598919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683895, 32.694633, 37.526554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033482, 32.619835, 37.347126>,  <35.243233, 32.574955, 37.239468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033482, 32.619835, 37.347126>,  <34.683895, 32.694633, 37.526554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033482, 32.619835, 37.347126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381475, 0.307900, -0.871593,
		0.301096, 0.932862, 0.197761,
		0.873967, -0.186993, -0.448571,
		35.295673, 32.563736, 37.212555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876156, 33.328098, 37.208244>,  <34.683895, 32.694633, 37.526554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876156, 33.328098, 37.208244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116127, 33.074230, 37.013401>,  <35.260109, 32.921909, 36.896496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116127, 33.074230, 37.013401>,  <34.876156, 33.328098, 37.208244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116127, 33.074230, 37.013401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328006, 0.360213, -0.873304,
		0.729726, 0.683694, 0.007925,
		0.599927, -0.634673, -0.487112,
		35.296104, 32.883827, 36.867268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168098, 33.687370, 36.608410>,  <34.876156, 33.328098, 37.208244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168098, 33.687370, 36.608410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208546, 33.303379, 36.503933>,  <35.232815, 33.072983, 36.441246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208546, 33.303379, 36.503933>,  <35.168098, 33.687370, 36.608410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208546, 33.303379, 36.503933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289941, 0.222704, -0.930773,
		0.951688, 0.169844, -0.255818,
		0.101114, -0.959977, -0.261189,
		35.238880, 33.015385, 36.425575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616383, 33.762611, 36.134079>,  <35.168098, 33.687370, 36.608410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616383, 33.762611, 36.134079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437336, 33.415012, 36.049721>,  <35.329906, 33.206451, 35.999104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437336, 33.415012, 36.049721>,  <35.616383, 33.762611, 36.134079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437336, 33.415012, 36.049721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147883, 0.304535, -0.940951,
		0.881911, -0.390000, -0.264826,
		-0.447620, -0.868998, -0.210898,
		35.303051, 33.154312, 35.986450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854900, 33.442535, 35.464336>,  <35.616383, 33.762611, 36.134079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854900, 33.442535, 35.464336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485096, 33.308849, 35.537636>,  <35.263214, 33.228638, 35.581615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485096, 33.308849, 35.537636>,  <35.854900, 33.442535, 35.464336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485096, 33.308849, 35.537636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306235, 0.365050, -0.879180,
		0.226943, -0.868928, -0.439842,
		-0.924509, -0.334219, 0.183251,
		35.207745, 33.208584, 35.592609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557018, 33.469486, 34.741077>,  <35.854900, 33.442535, 35.464336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557018, 33.469486, 34.741077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231461, 33.384949, 34.957565>,  <35.036125, 33.334225, 35.087456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231461, 33.384949, 34.957565>,  <35.557018, 33.469486, 34.741077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231461, 33.384949, 34.957565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580968, 0.283759, -0.762861,
		0.007653, -0.935314, -0.353735,
		-0.813890, -0.211347, 0.541216,
		34.987293, 33.321545, 35.119930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.499603, 29.783495, 42.171795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.185448, 29.996370, 42.298248>,  <36.996956, 30.124096, 42.374123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.185448, 29.996370, 42.298248>,  <37.499603, 29.783495, 42.171795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185448, 29.996370, 42.298248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382245, -0.015260, -0.923935,
		-0.486884, -0.846488, 0.215412,
		-0.785387, 0.532189, 0.316136,
		36.949833, 30.156027, 42.393089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913746, 29.427544, 41.825378>,  <37.499603, 29.783495, 42.171795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913746, 29.427544, 41.825378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797081, 29.798136, 41.920513>,  <36.727081, 30.020491, 41.977592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797081, 29.798136, 41.920513>,  <36.913746, 29.427544, 41.825378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797081, 29.798136, 41.920513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438414, 0.091506, -0.894103,
		-0.850133, -0.365046, 0.379493,
		-0.291662, 0.926482, 0.237834,
		36.709583, 30.076080, 41.991863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402550, 29.501083, 41.511383>,  <36.913746, 29.427544, 41.825378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402550, 29.501083, 41.511383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449802, 29.886551, 41.607208>,  <36.478153, 30.117830, 41.664703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449802, 29.886551, 41.607208>,  <36.402550, 29.501083, 41.511383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449802, 29.886551, 41.607208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265232, 0.263107, -0.927592,
		-0.956920, 0.046043, 0.286678,
		0.118136, 0.963667, 0.239561,
		36.485245, 30.175652, 41.679077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906433, 29.886654, 41.173363>,  <36.402550, 29.501083, 41.511383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906433, 29.886654, 41.173363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183632, 30.165501, 41.246883>,  <36.349953, 30.332808, 41.290997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183632, 30.165501, 41.246883>,  <35.906433, 29.886654, 41.173363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183632, 30.165501, 41.246883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192217, 0.424379, -0.884848,
		-0.694842, 0.577869, 0.428092,
		0.692999, 0.697116, 0.183800,
		36.391533, 30.374636, 41.302025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547050, 30.511063, 40.905170>,  <35.906433, 29.886654, 41.173363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547050, 30.511063, 40.905170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941662, 30.576445, 40.902508>,  <36.178429, 30.615673, 40.900909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941662, 30.576445, 40.902508>,  <35.547050, 30.511063, 40.905170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941662, 30.576445, 40.902508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081926, 0.458442, -0.884940,
		-0.141596, 0.873564, 0.465658,
		0.986529, 0.163454, -0.006654,
		36.237621, 30.625481, 40.900513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633137, 31.198345, 40.693512>,  <35.547050, 30.511063, 40.905170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633137, 31.198345, 40.693512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.988750, 31.032545, 40.615730>,  <36.202118, 30.933065, 40.569061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.988750, 31.032545, 40.615730>,  <35.633137, 31.198345, 40.693512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988750, 31.032545, 40.615730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015226, 0.451249, -0.892268,
		0.457591, 0.790295, 0.407486,
		0.889032, -0.414498, -0.194454,
		36.255459, 30.908195, 40.557392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021072, 31.718746, 40.355274>,  <35.633137, 31.198345, 40.693512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021072, 31.718746, 40.355274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197262, 31.377012, 40.244926>,  <36.302975, 31.171972, 40.178719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197262, 31.377012, 40.244926>,  <36.021072, 31.718746, 40.355274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197262, 31.377012, 40.244926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172452, 0.382073, -0.907899,
		0.881049, 0.352328, 0.315623,
		0.440469, -0.854333, -0.275866,
		36.329403, 31.120712, 40.162167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657913, 31.929846, 40.091572>,  <36.021072, 31.718746, 40.355274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657913, 31.929846, 40.091572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559303, 31.572332, 39.941704>,  <36.500137, 31.357824, 39.851784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559303, 31.572332, 39.941704>,  <36.657913, 31.929846, 40.091572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559303, 31.572332, 39.941704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059676, 0.371867, -0.926366,
		0.967297, -0.250731, -0.038337,
		-0.246525, -0.893783, -0.374668,
		36.485344, 31.304197, 39.829304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979485, 31.948467, 39.470543>,  <36.657913, 31.929846, 40.091572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979485, 31.948467, 39.470543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714069, 31.650589, 39.441856>,  <36.554821, 31.471861, 39.424644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714069, 31.650589, 39.441856>,  <36.979485, 31.948467, 39.470543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714069, 31.650589, 39.441856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154288, 0.230009, -0.960880,
		0.732061, -0.626515, -0.267518,
		-0.663538, -0.744697, -0.071717,
		36.515007, 31.427179, 39.420341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698189, 32.035591, 39.257122>,  <36.979485, 31.948467, 39.470543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698189, 32.035591, 39.257122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976818, 32.321026, 39.287014>,  <38.143997, 32.492287, 39.304947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976818, 32.321026, 39.287014>,  <37.698189, 32.035591, 39.257122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976818, 32.321026, 39.287014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065318, -0.166788, 0.983827,
		0.714506, -0.680426, -0.162790,
		0.696573, 0.713584, 0.074727,
		38.185791, 32.535099, 39.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167824, 31.788607, 39.698067>,  <37.698189, 32.035591, 39.257122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167824, 31.788607, 39.698067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278130, 32.172829, 39.712456>,  <38.344311, 32.403362, 39.721088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278130, 32.172829, 39.712456>,  <38.167824, 31.788607, 39.698067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278130, 32.172829, 39.712456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104475, -0.067149, 0.992258,
		0.955532, -0.269869, -0.118871,
		0.275762, 0.960553, 0.035968,
		38.360859, 32.460995, 39.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800133, 31.768835, 40.061218>,  <38.167824, 31.788607, 39.698067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800133, 31.768835, 40.061218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.632378, 32.131790, 40.072273>,  <38.531727, 32.349564, 40.078907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.632378, 32.131790, 40.072273>,  <38.800133, 31.768835, 40.061218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632378, 32.131790, 40.072273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140215, 0.034671, 0.989514,
		0.896915, 0.418862, -0.141769,
		-0.419385, 0.907388, 0.027634,
		38.506561, 32.404007, 40.080563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200741, 32.046356, 40.462116>,  <38.800133, 31.768835, 40.061218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200741, 32.046356, 40.462116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893116, 32.299923, 40.494812>,  <38.708542, 32.452065, 40.514427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893116, 32.299923, 40.494812>,  <39.200741, 32.046356, 40.462116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893116, 32.299923, 40.494812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148511, 0.052848, 0.987498,
		0.621676, 0.771590, -0.134788,
		-0.769067, 0.633921, 0.081735,
		38.662395, 32.490101, 40.519333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484051, 32.534866, 40.902977>,  <39.200741, 32.046356, 40.462116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484051, 32.534866, 40.902977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084476, 32.552441, 40.908672>,  <38.844734, 32.562984, 40.912090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084476, 32.552441, 40.908672>,  <39.484051, 32.534866, 40.902977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084476, 32.552441, 40.908672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023508, 0.218263, 0.975607,
		0.039752, 0.974901, -0.219063,
		-0.998933, 0.043932, 0.014241,
		38.784798, 32.565620, 40.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284245, 33.105434, 41.288826>,  <39.484051, 32.534866, 40.902977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284245, 33.105434, 41.288826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955429, 32.878841, 41.311974>,  <38.758141, 32.742886, 41.325863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955429, 32.878841, 41.311974>,  <39.284245, 33.105434, 41.288826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955429, 32.878841, 41.311974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075859, -0.008232, 0.997085,
		-0.564357, 0.824031, 0.049740,
		-0.822038, -0.566485, 0.057865,
		38.708817, 32.708897, 41.329334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810478, 33.434467, 41.670910>,  <39.284245, 33.105434, 41.288826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810478, 33.434467, 41.670910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687656, 33.054256, 41.689709>,  <38.613964, 32.826130, 41.700989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687656, 33.054256, 41.689709>,  <38.810478, 33.434467, 41.670910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687656, 33.054256, 41.689709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138721, 0.093562, 0.985902,
		-0.941528, 0.296204, -0.160587,
		-0.307053, -0.950531, 0.047002,
		38.595539, 32.769096, 41.703808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273483, 33.455051, 42.188667>,  <38.810478, 33.434467, 41.670910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273483, 33.455051, 42.188667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365013, 33.066944, 42.157108>,  <38.419930, 32.834080, 42.138172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365013, 33.066944, 42.157108>,  <38.273483, 33.455051, 42.188667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365013, 33.066944, 42.157108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021775, -0.086129, 0.996046,
		-0.973225, -0.226200, -0.040836,
		0.228823, -0.970266, -0.078898,
		38.433659, 32.775864, 42.133438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678570, 32.983696, 42.620049>,  <38.273483, 33.455051, 42.188667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678570, 32.983696, 42.620049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011471, 32.764835, 42.584301>,  <38.211212, 32.633518, 42.562855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011471, 32.764835, 42.584301>,  <37.678570, 32.983696, 42.620049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011471, 32.764835, 42.584301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012947, -0.180329, 0.983521,
		-0.554246, -0.817381, -0.157163,
		0.832252, -0.547147, -0.089364,
		38.261147, 32.600693, 42.557491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635864, 32.550655, 43.185482>,  <37.678570, 32.983696, 42.620049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635864, 32.550655, 43.185482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015858, 32.471203, 43.089085>,  <38.243855, 32.423531, 43.031246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015858, 32.471203, 43.089085>,  <37.635864, 32.550655, 43.185482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015858, 32.471203, 43.089085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214031, -0.147844, 0.965574,
		-0.227426, -0.968858, -0.097935,
		0.949984, -0.198635, -0.240989,
		38.300854, 32.411613, 43.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783978, 32.012489, 43.701134>,  <37.635864, 32.550655, 43.185482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783978, 32.012489, 43.701134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145195, 32.109219, 43.559132>,  <38.361927, 32.167255, 43.473930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145195, 32.109219, 43.559132>,  <37.783978, 32.012489, 43.701134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145195, 32.109219, 43.559132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398457, -0.162926, 0.902600,
		0.160433, -0.956544, -0.243486,
		0.903047, 0.241826, -0.355003,
		38.416107, 32.181767, 43.452629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135139, 31.532900, 44.096786>,  <37.783978, 32.012489, 43.701134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135139, 31.532900, 44.096786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386284, 31.804420, 43.944462>,  <38.536972, 31.967333, 43.853069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386284, 31.804420, 43.944462>,  <38.135139, 31.532900, 44.096786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386284, 31.804420, 43.944462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305657, 0.234918, 0.922707,
		0.715796, -0.695729, -0.059985,
		0.627862, 0.678804, -0.380808,
		38.574642, 32.008060, 43.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776554, 31.323128, 44.303284>,  <38.135139, 31.532900, 44.096786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776554, 31.323128, 44.303284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759613, 31.716925, 44.235191>,  <38.749447, 31.953203, 44.194336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759613, 31.716925, 44.235191>,  <38.776554, 31.323128, 44.303284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759613, 31.716925, 44.235191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390698, 0.173140, 0.904089,
		0.919544, -0.028215, -0.391973,
		-0.042357, 0.984493, -0.170233,
		38.746906, 32.012272, 44.184120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406448, 31.568115, 44.595623>,  <38.776554, 31.323128, 44.303284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406448, 31.568115, 44.595623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167484, 31.886574, 44.557148>,  <39.024105, 32.077648, 44.534065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167484, 31.886574, 44.557148>,  <39.406448, 31.568115, 44.595623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167484, 31.886574, 44.557148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342356, 0.361659, 0.867176,
		0.725187, 0.485129, -0.488625,
		-0.597408, 0.796148, -0.096184,
		38.988262, 32.125420, 44.528294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.216457, 33.252888, 46.196068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615681, 33.264198, 46.173851>,  <32.855213, 33.270985, 46.160522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615681, 33.264198, 46.173851>,  <32.216457, 33.252888, 46.196068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615681, 33.264198, 46.173851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061867, 0.341495, -0.937845,
		-0.007552, 0.939458, 0.342581,
		0.998056, 0.028277, -0.055542,
		32.915096, 33.272682, 46.157188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382881, 34.027870, 45.929031>,  <32.216457, 33.252888, 46.196068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382881, 34.027870, 45.929031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.703648, 33.800236, 45.856300>,  <32.896107, 33.663654, 45.812660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.703648, 33.800236, 45.856300>,  <32.382881, 34.027870, 45.929031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703648, 33.800236, 45.856300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008473, 0.293492, -0.955924,
		0.597371, 0.768115, 0.230535,
		0.801920, -0.569088, -0.181832,
		32.944225, 33.629509, 45.801750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909443, 34.393555, 45.655067>,  <32.382881, 34.027870, 45.929031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909443, 34.393555, 45.655067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.002872, 34.026237, 45.527199>,  <33.058929, 33.805847, 45.450478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.002872, 34.026237, 45.527199>,  <32.909443, 34.393555, 45.655067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002872, 34.026237, 45.527199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064336, 0.342636, -0.937263,
		0.970208, 0.198356, 0.139110,
		0.233576, -0.918289, -0.319667,
		33.072945, 33.750751, 45.431297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396252, 34.540768, 45.151997>,  <32.909443, 34.393555, 45.655067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396252, 34.540768, 45.151997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302963, 34.157143, 45.087746>,  <33.246990, 33.926968, 45.049194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302963, 34.157143, 45.087746>,  <33.396252, 34.540768, 45.151997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302963, 34.157143, 45.087746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229631, 0.106194, -0.967467,
		0.944922, -0.262516, 0.195465,
		-0.233218, -0.959066, -0.160627,
		33.232998, 33.869423, 45.039558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869305, 34.372738, 44.729736>,  <33.396252, 34.540768, 45.151997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869305, 34.372738, 44.729736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608929, 34.073311, 44.679276>,  <33.452702, 33.893654, 44.648998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608929, 34.073311, 44.679276>,  <33.869305, 34.372738, 44.729736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608929, 34.073311, 44.679276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207105, -0.015246, -0.978200,
		0.730330, -0.662878, 0.164958,
		-0.650942, -0.748572, -0.126151,
		33.413647, 33.848740, 44.641430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176373, 33.922058, 44.313152>,  <33.869305, 34.372738, 44.729736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176373, 33.922058, 44.313152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789925, 33.847881, 44.241341>,  <33.558056, 33.803375, 44.198254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789925, 33.847881, 44.241341>,  <34.176373, 33.922058, 44.313152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789925, 33.847881, 44.241341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149363, 0.165585, -0.974819,
		0.210505, -0.968602, -0.132275,
		-0.966115, -0.185448, -0.179530,
		33.500092, 33.792248, 44.187481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095032, 33.451248, 43.753983>,  <34.176373, 33.922058, 44.313152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095032, 33.451248, 43.753983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757874, 33.666164, 43.765656>,  <33.555580, 33.795116, 43.772659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757874, 33.666164, 43.765656>,  <34.095032, 33.451248, 43.753983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757874, 33.666164, 43.765656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096172, 0.203790, -0.974280,
		-0.529420, -0.818405, -0.223445,
		-0.842891, 0.537293, 0.029183,
		33.505005, 33.827351, 43.774410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755821, 33.262066, 43.109886>,  <34.095032, 33.451248, 43.753983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755821, 33.262066, 43.109886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575310, 33.604343, 43.211178>,  <33.467003, 33.809711, 43.271954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575310, 33.604343, 43.211178>,  <33.755821, 33.262066, 43.109886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575310, 33.604343, 43.211178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016314, 0.291636, -0.956390,
		-0.892233, -0.427469, -0.145569,
		-0.451280, 0.855698, 0.253233,
		33.439926, 33.861053, 43.287148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214230, 33.343712, 42.611485>,  <33.755821, 33.262066, 43.109886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214230, 33.343712, 42.611485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232063, 33.717770, 42.752060>,  <33.242764, 33.942204, 42.836407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232063, 33.717770, 42.752060>,  <33.214230, 33.343712, 42.611485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232063, 33.717770, 42.752060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112150, 0.354251, -0.928401,
		-0.992691, 0.001975, 0.120669,
		0.044580, 0.935149, 0.351440,
		33.245438, 33.998314, 42.857491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807652, 33.669201, 42.115612>,  <33.214230, 33.343712, 42.611485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807652, 33.669201, 42.115612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027210, 33.953857, 42.291008>,  <33.158947, 34.124653, 42.396244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027210, 33.953857, 42.291008>,  <32.807652, 33.669201, 42.115612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027210, 33.953857, 42.291008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114725, 0.583754, -0.803784,
		-0.827977, 0.390892, 0.402067,
		0.548901, 0.711642, 0.438490,
		33.191879, 34.167351, 42.422554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374641, 34.188793, 42.172459>,  <32.807652, 33.669201, 42.115612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374641, 34.188793, 42.172459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729980, 34.368034, 42.212547>,  <32.943184, 34.475578, 42.236599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729980, 34.368034, 42.212547>,  <32.374641, 34.188793, 42.172459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729980, 34.368034, 42.212547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276005, 0.695535, -0.663365,
		-0.366965, 0.561636, 0.741554,
		0.888346, 0.448104, 0.100223,
		32.996483, 34.502464, 42.242615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356071, 34.946629, 42.318859>,  <32.374641, 34.188793, 42.172459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356071, 34.946629, 42.318859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716320, 34.892857, 42.153545>,  <32.932468, 34.860596, 42.054356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716320, 34.892857, 42.153545>,  <32.356071, 34.946629, 42.318859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716320, 34.892857, 42.153545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289475, 0.523753, -0.801178,
		0.324160, 0.841197, 0.432792,
		0.900624, -0.134427, -0.413286,
		32.986507, 34.852528, 42.029560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536961, 35.553066, 42.081989>,  <32.356071, 34.946629, 42.318859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536961, 35.553066, 42.081989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774002, 35.306862, 41.874157>,  <32.916225, 35.159138, 41.749458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774002, 35.306862, 41.874157>,  <32.536961, 35.553066, 42.081989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774002, 35.306862, 41.874157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198623, 0.513470, -0.834804,
		0.780625, 0.597905, 0.182027,
		0.592599, -0.615514, -0.519586,
		32.951782, 35.122208, 41.718281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177814, 35.861244, 41.833088>,  <32.536961, 35.553066, 42.081989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177814, 35.861244, 41.833088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073254, 35.564926, 41.585575>,  <33.010517, 35.387135, 41.437065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073254, 35.564926, 41.585575>,  <33.177814, 35.861244, 41.833088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073254, 35.564926, 41.585575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010082, 0.643135, -0.765686,
		0.965177, -0.193915, -0.175587,
		-0.261404, -0.740793, -0.618784,
		32.994831, 35.342690, 41.399940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856377, 36.293434, 41.861900>,  <33.177814, 35.861244, 41.833088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856377, 36.293434, 41.861900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196918, 36.503113, 41.870037>,  <34.401245, 36.628922, 41.874920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196918, 36.503113, 41.870037>,  <33.856377, 36.293434, 41.861900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196918, 36.503113, 41.870037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077461, 0.087259, 0.993169,
		0.518840, -0.847115, 0.114893,
		0.851355, 0.524196, 0.020345,
		34.452324, 36.660370, 41.876141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372482, 35.841251, 42.305538>,  <33.856377, 36.293434, 41.861900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372482, 35.841251, 42.305538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443943, 36.234650, 42.294136>,  <34.486820, 36.470688, 42.287292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443943, 36.234650, 42.294136>,  <34.372482, 35.841251, 42.305538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443943, 36.234650, 42.294136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192599, -0.006542, 0.981256,
		0.964877, -0.180798, -0.190589,
		0.178655, 0.983499, -0.028509,
		34.497540, 36.529697, 42.285583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009174, 35.834332, 42.565651>,  <34.372482, 35.841251, 42.305538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009174, 35.834332, 42.565651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864143, 36.205555, 42.599716>,  <34.777126, 36.428288, 42.620155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864143, 36.205555, 42.599716>,  <35.009174, 35.834332, 42.565651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864143, 36.205555, 42.599716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235759, 0.002932, 0.971807,
		0.901641, 0.372432, -0.219861,
		-0.362576, 0.928055, 0.085161,
		34.755371, 36.483971, 42.625263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492409, 36.162601, 42.808681>,  <35.009174, 35.834332, 42.565651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492409, 36.162601, 42.808681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.179932, 36.391811, 42.907780>,  <34.992447, 36.529335, 42.967239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.179932, 36.391811, 42.907780>,  <35.492409, 36.162601, 42.808681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179932, 36.391811, 42.907780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246604, -0.081333, 0.965697,
		0.573517, 0.815493, -0.077773,
		-0.781194, 0.573023, 0.247750,
		34.945572, 36.563717, 42.982105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716492, 36.470291, 43.366997>,  <35.492409, 36.162601, 42.808681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716492, 36.470291, 43.366997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323009, 36.541828, 43.374420>,  <35.086922, 36.584751, 43.378876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323009, 36.541828, 43.374420>,  <35.716492, 36.470291, 43.366997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323009, 36.541828, 43.374420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023826, 0.027356, 0.999342,
		0.178220, 0.983497, -0.031171,
		-0.983702, 0.178845, 0.018557,
		35.027901, 36.595482, 43.379986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679352, 37.051285, 43.700623>,  <35.716492, 36.470291, 43.366997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679352, 37.051285, 43.700623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325222, 36.871784, 43.749332>,  <35.112743, 36.764084, 43.778561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325222, 36.871784, 43.749332>,  <35.679352, 37.051285, 43.700623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325222, 36.871784, 43.749332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006738, 0.249486, 0.968355,
		-0.464933, 0.858125, -0.217852,
		-0.885320, -0.448752, 0.121777,
		35.059628, 36.737160, 43.785866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292358, 37.562527, 44.223843>,  <35.679352, 37.051285, 43.700623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292358, 37.562527, 44.223843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103207, 37.210083, 44.226334>,  <34.989716, 36.998619, 44.227829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103207, 37.210083, 44.226334>,  <35.292358, 37.562527, 44.223843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103207, 37.210083, 44.226334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047477, 0.032534, 0.998342,
		-0.879848, 0.471799, -0.057217,
		-0.472879, -0.881106, 0.006225,
		34.961342, 36.945751, 44.228203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633278, 37.523388, 44.711166>,  <35.292358, 37.562527, 44.223843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633278, 37.523388, 44.711166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737041, 37.140545, 44.659557>,  <34.799301, 36.910839, 44.628593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737041, 37.140545, 44.659557>,  <34.633278, 37.523388, 44.711166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737041, 37.140545, 44.659557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022914, -0.139653, 0.989936,
		-0.965496, -0.253841, -0.058158,
		0.259409, -0.957111, -0.129018,
		34.814865, 36.853413, 44.620853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182255, 37.208797, 45.137497>,  <34.633278, 37.523388, 44.711166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182255, 37.208797, 45.137497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486855, 36.960918, 45.061501>,  <34.669613, 36.812191, 45.015903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486855, 36.960918, 45.061501>,  <34.182255, 37.208797, 45.137497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486855, 36.960918, 45.061501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015327, -0.310254, 0.950530,
		-0.647989, -0.720912, -0.245755,
		0.761495, -0.619700, -0.189992,
		34.715302, 36.775009, 45.004501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963871, 36.521458, 45.309921>,  <34.182255, 37.208797, 45.137497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963871, 36.521458, 45.309921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361416, 36.482998, 45.331776>,  <34.599945, 36.459923, 45.344887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361416, 36.482998, 45.331776>,  <33.963871, 36.521458, 45.309921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361416, 36.482998, 45.331776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092023, -0.445057, 0.890762,
		-0.061326, -0.890326, -0.451174,
		0.993866, -0.096145, 0.054637,
		34.659576, 36.454155, 45.348167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046841, 35.771381, 45.562782>,  <33.963871, 36.521458, 45.309921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046841, 35.771381, 45.562782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.377590, 35.971352, 45.665810>,  <34.576042, 36.091335, 45.727627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.377590, 35.971352, 45.665810>,  <34.046841, 35.771381, 45.562782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377590, 35.971352, 45.665810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033357, -0.500795, 0.864923,
		0.561391, -0.706594, -0.430773,
		0.826878, 0.499929, 0.257572,
		34.625652, 36.121330, 45.743080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593884, 35.321724, 45.646633>,  <34.046841, 35.771381, 45.562782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593884, 35.321724, 45.646633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684944, 35.635902, 45.876846>,  <34.739582, 35.824409, 46.014977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684944, 35.635902, 45.876846>,  <34.593884, 35.321724, 45.646633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684944, 35.635902, 45.876846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196343, -0.615945, 0.762930,
		0.953742, -0.060681, -0.294439,
		0.227653, 0.785449, 0.575538,
		34.753239, 35.871536, 46.049507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972187, 34.998119, 46.151489>,  <34.593884, 35.321724, 45.646633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972187, 34.998119, 46.151489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943970, 35.363361, 46.312119>,  <34.927040, 35.582508, 46.408497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943970, 35.363361, 46.312119>,  <34.972187, 34.998119, 46.151489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943970, 35.363361, 46.312119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234643, -0.376094, 0.896379,
		0.969518, 0.157464, -0.187721,
		-0.070547, 0.913104, 0.401577,
		34.922806, 35.637291, 46.432590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630859, 35.169224, 46.496655>,  <34.972187, 34.998119, 46.151489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630859, 35.169224, 46.496655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.320000, 35.352699, 46.668999>,  <35.133484, 35.462784, 46.772408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.320000, 35.352699, 46.668999>,  <35.630859, 35.169224, 46.496655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320000, 35.352699, 46.668999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125871, -0.557521, 0.820565,
		0.616600, 0.691934, 0.375541,
		-0.777149, 0.458690, 0.430862,
		35.086853, 35.490307, 46.798256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320229, 35.338394, 46.453888>,  <35.630859, 35.169224, 46.496655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320229, 35.338394, 46.453888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716640, 35.391808, 46.456100>,  <36.954487, 35.423855, 46.457428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716640, 35.391808, 46.456100>,  <36.320229, 35.338394, 46.453888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716640, 35.391808, 46.456100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055877, 0.451554, -0.890493,
		-0.121409, 0.882195, 0.454965,
		0.991029, 0.133536, 0.005529,
		37.013950, 35.431870, 46.457760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466969, 36.025387, 46.127541>,  <36.320229, 35.338394, 46.453888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466969, 36.025387, 46.127541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822689, 35.844707, 46.098938>,  <37.036121, 35.736301, 46.081776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822689, 35.844707, 46.098938>,  <36.466969, 36.025387, 46.127541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822689, 35.844707, 46.098938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102735, 0.349673, -0.931222,
		0.445634, 0.820791, 0.357369,
		0.889301, -0.451698, -0.071502,
		37.089478, 35.709198, 46.077488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975689, 36.578472, 45.911068>,  <36.466969, 36.025387, 46.127541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975689, 36.578472, 45.911068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.116562, 36.216385, 45.815952>,  <37.201084, 35.999130, 45.758881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.116562, 36.216385, 45.815952>,  <36.975689, 36.578472, 45.911068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116562, 36.216385, 45.815952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108480, 0.291838, -0.950296,
		0.929624, 0.308879, 0.200978,
		0.352180, -0.905221, -0.237792,
		37.222218, 35.944820, 45.744614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526733, 36.754406, 45.601368>,  <36.975689, 36.578472, 45.911068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526733, 36.754406, 45.601368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454910, 36.384521, 45.467098>,  <37.411816, 36.162590, 45.386536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454910, 36.384521, 45.467098>,  <37.526733, 36.754406, 45.601368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454910, 36.384521, 45.467098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340244, 0.261782, -0.903163,
		0.923034, -0.276382, 0.267621,
		-0.179560, -0.924707, -0.335671,
		37.401043, 36.107109, 45.366398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137764, 36.497570, 45.311295>,  <37.526733, 36.754406, 45.601368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137764, 36.497570, 45.311295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844936, 36.277054, 45.151218>,  <37.669239, 36.144745, 45.055172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844936, 36.277054, 45.151218>,  <38.137764, 36.497570, 45.311295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844936, 36.277054, 45.151218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319738, 0.240671, -0.916431,
		0.601536, -0.798846, 0.000082,
		-0.732067, -0.551292, -0.400194,
		37.625317, 36.111668, 45.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454769, 35.981194, 44.800453>,  <38.137764, 36.497570, 45.311295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454769, 35.981194, 44.800453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.076046, 36.003147, 44.673626>,  <37.848812, 36.016319, 44.597530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.076046, 36.003147, 44.673626>,  <38.454769, 35.981194, 44.800453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076046, 36.003147, 44.673626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321484, 0.204059, -0.924666,
		0.013949, -0.977419, -0.210851,
		-0.946813, 0.054887, -0.317071,
		37.792004, 36.019611, 44.578506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271183, 35.479111, 44.207539>,  <38.454769, 35.981194, 44.800453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271183, 35.479111, 44.207539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989819, 35.762352, 44.182907>,  <37.820999, 35.932297, 44.168129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989819, 35.762352, 44.182907>,  <38.271183, 35.479111, 44.207539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989819, 35.762352, 44.182907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329846, 0.248461, -0.910752,
		-0.629610, -0.660947, -0.408338,
		-0.703415, 0.708107, -0.061577,
		37.778793, 35.974785, 44.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973583, 35.347679, 43.608589>,  <38.271183, 35.479111, 44.207539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973583, 35.347679, 43.608589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.867626, 35.726223, 43.682602>,  <37.804050, 35.953350, 43.727009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.867626, 35.726223, 43.682602>,  <37.973583, 35.347679, 43.608589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867626, 35.726223, 43.682602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192288, 0.239873, -0.951570,
		-0.944911, -0.216484, -0.245514,
		-0.264892, 0.946359, 0.185031,
		37.788158, 36.010132, 43.738110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448170, 35.390636, 43.145756>,  <37.973583, 35.347679, 43.608589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448170, 35.390636, 43.145756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.565845, 35.758423, 43.250084>,  <37.636452, 35.979095, 43.312679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.565845, 35.758423, 43.250084>,  <37.448170, 35.390636, 43.145756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565845, 35.758423, 43.250084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300738, 0.169974, -0.938438,
		-0.907198, 0.354518, -0.226515,
		0.294192, 0.919470, 0.260817,
		37.654102, 36.034264, 43.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050323, 35.856026, 42.703037>,  <37.448170, 35.390636, 43.145756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050323, 35.856026, 42.703037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387348, 36.040115, 42.814957>,  <37.589561, 36.150570, 42.882107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387348, 36.040115, 42.814957>,  <37.050323, 35.856026, 42.703037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387348, 36.040115, 42.814957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116308, 0.351766, -0.928834,
		-0.525897, 0.815140, 0.242856,
		0.842559, 0.460225, 0.279800,
		37.640118, 36.178185, 42.898895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013306, 36.414795, 42.297703>,  <37.050323, 35.856026, 42.703037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013306, 36.414795, 42.297703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392990, 36.442467, 42.420483>,  <37.620800, 36.459068, 42.494148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392990, 36.442467, 42.420483>,  <37.013306, 36.414795, 42.297703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392990, 36.442467, 42.420483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226498, 0.526920, -0.819179,
		-0.218405, 0.847095, 0.484488,
		0.949209, 0.069177, 0.306947,
		37.677753, 36.463219, 42.512566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316738, 37.080631, 42.162075>,  <37.013306, 36.414795, 42.297703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316738, 37.080631, 42.162075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.622288, 36.822495, 42.159721>,  <37.805618, 36.667610, 42.158310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.622288, 36.822495, 42.159721>,  <37.316738, 37.080631, 42.162075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622288, 36.822495, 42.159721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255463, 0.310734, -0.915524,
		0.592657, 0.697837, 0.402222,
		0.763870, -0.645344, -0.005887,
		37.851448, 36.628891, 42.157955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779430, 37.365376, 41.660408>,  <37.316738, 37.080631, 42.162075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779430, 37.365376, 41.660408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909740, 36.992668, 41.724518>,  <37.987926, 36.769043, 41.762981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909740, 36.992668, 41.724518>,  <37.779430, 37.365376, 41.660408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909740, 36.992668, 41.724518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477493, 0.015839, -0.878493,
		0.816010, 0.362718, 0.450071,
		0.325773, -0.931765, 0.160271,
		38.007473, 36.713139, 41.772598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462379, 37.373138, 41.468487>,  <37.779430, 37.365376, 41.660408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462379, 37.373138, 41.468487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.355740, 36.987705, 41.460194>,  <38.291756, 36.756447, 41.455215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.355740, 36.987705, 41.460194>,  <38.462379, 37.373138, 41.468487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355740, 36.987705, 41.460194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439166, -0.102298, -0.892563,
		0.857938, -0.247063, 0.450446,
		-0.266599, -0.963585, -0.020736,
		38.275761, 36.698631, 41.453972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.906660, 43.066357, 34.268383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.570112, 42.915859, 34.113186>,  <25.368183, 42.825562, 34.020069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.570112, 42.915859, 34.113186>,  <25.906660, 43.066357, 34.268383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570112, 42.915859, 34.113186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151874, -0.853561, 0.498365,
		-0.518680, 0.360384, 0.775303,
		-0.841371, -0.376241, -0.387992,
		25.317701, 42.802986, 33.996788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422750, 42.847477, 34.733742>,  <25.906660, 43.066357, 34.268383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422750, 42.847477, 34.733742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.386532, 42.633240, 34.397900>,  <25.364801, 42.504700, 34.196392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.386532, 42.633240, 34.397900>,  <25.422750, 42.847477, 34.733742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386532, 42.633240, 34.397900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226117, -0.832110, 0.506422,
		-0.969883, -0.143995, 0.196451,
		-0.090547, -0.535591, -0.839609,
		25.359367, 42.472561, 34.146015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990156, 42.327431, 35.030071>,  <25.422750, 42.847477, 34.733742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990156, 42.327431, 35.030071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.166553, 42.183174, 34.701324>,  <25.272392, 42.096619, 34.504078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.166553, 42.183174, 34.701324>,  <24.990156, 42.327431, 35.030071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166553, 42.183174, 34.701324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071317, -0.898738, 0.432647,
		-0.894667, -0.249412, -0.370628,
		0.441005, -0.360643, -0.821858,
		25.298853, 42.074982, 34.454765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527235, 41.760654, 34.924625>,  <24.990156, 42.327431, 35.030071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527235, 41.760654, 34.924625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877977, 41.710499, 34.738979>,  <25.088423, 41.680405, 34.627590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877977, 41.710499, 34.738979>,  <24.527235, 41.760654, 34.924625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877977, 41.710499, 34.738979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020112, -0.954978, 0.295996,
		-0.480331, -0.268880, -0.834857,
		0.876857, -0.125385, -0.464113,
		25.141035, 41.672882, 34.599747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373230, 41.104771, 34.601208>,  <24.527235, 41.760654, 34.924625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373230, 41.104771, 34.601208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.766516, 41.177181, 34.592087>,  <25.002487, 41.220627, 34.586613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.766516, 41.177181, 34.592087>,  <24.373230, 41.104771, 34.601208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.766516, 41.177181, 34.592087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182446, -0.974273, 0.132307,
		0.001734, -0.134246, -0.990946,
		0.983214, 0.181024, -0.022803,
		25.061480, 41.231487, 34.585247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613316, 40.586025, 34.195671>,  <24.373230, 41.104771, 34.601208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613316, 40.586025, 34.195671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.938637, 40.700172, 34.398495>,  <25.133829, 40.768661, 34.520187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.938637, 40.700172, 34.398495>,  <24.613316, 40.586025, 34.195671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938637, 40.700172, 34.398495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351101, -0.935622, -0.036589,
		0.463970, 0.207786, -0.861137,
		0.813301, 0.285370, 0.507055,
		25.182627, 40.785782, 34.550610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168011, 40.290577, 33.923363>,  <24.613316, 40.586025, 34.195671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168011, 40.290577, 33.923363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.325762, 40.361782, 34.283981>,  <25.420412, 40.404503, 34.500351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.325762, 40.361782, 34.283981>,  <25.168011, 40.290577, 33.923363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325762, 40.361782, 34.283981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429434, -0.903048, -0.009550,
		0.812436, 0.390920, -0.432585,
		0.394378, 0.178008, 0.901543,
		25.444075, 40.415184, 34.554443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856974, 40.038521, 33.800594>,  <25.168011, 40.290577, 33.923363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856974, 40.038521, 33.800594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778122, 40.063499, 34.191948>,  <25.730810, 40.078487, 34.426762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778122, 40.063499, 34.191948>,  <25.856974, 40.038521, 33.800594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778122, 40.063499, 34.191948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517542, -0.840953, 0.157949,
		0.832640, 0.537493, 0.133460,
		-0.197130, 0.062444, 0.978387,
		25.718983, 40.082233, 34.485462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422838, 40.083847, 34.090363>,  <25.856974, 40.038521, 33.800594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422838, 40.083847, 34.090363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199057, 39.958832, 34.397434>,  <26.064789, 39.883823, 34.581676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199057, 39.958832, 34.397434>,  <26.422838, 40.083847, 34.090363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199057, 39.958832, 34.397434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613636, -0.778792, 0.130129,
		0.557192, 0.543877, 0.627483,
		-0.559453, -0.312539, 0.767679,
		26.031221, 39.865070, 34.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876488, 39.826546, 34.514397>,  <26.422838, 40.083847, 34.090363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876488, 39.826546, 34.514397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.535374, 39.674816, 34.657993>,  <26.330706, 39.583778, 34.744152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.535374, 39.674816, 34.657993>,  <26.876488, 39.826546, 34.514397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535374, 39.674816, 34.657993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476142, -0.847110, 0.235995,
		0.214586, 0.372182, 0.903013,
		-0.852785, -0.379321, 0.358989,
		26.279539, 39.561020, 34.765690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066401, 39.476551, 35.170921>,  <26.876488, 39.826546, 34.514397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066401, 39.476551, 35.170921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.711199, 39.340343, 35.047310>,  <26.498077, 39.258621, 34.973141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.711199, 39.340343, 35.047310>,  <27.066401, 39.476551, 35.170921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711199, 39.340343, 35.047310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224857, -0.907766, 0.354120,
		-0.401112, 0.244971, 0.882665,
		-0.888003, -0.340515, -0.309032,
		26.444798, 39.238190, 34.954601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774744, 39.136524, 35.728775>,  <27.066401, 39.476551, 35.170921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774744, 39.136524, 35.728775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564480, 38.997944, 35.417992>,  <26.438322, 38.914795, 35.231522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564480, 38.997944, 35.417992>,  <26.774744, 39.136524, 35.728775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564480, 38.997944, 35.417992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136864, -0.935860, 0.324706,
		-0.839613, 0.064347, 0.539360,
		-0.525660, -0.346446, -0.776954,
		26.406782, 38.894009, 35.184906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377722, 38.582386, 36.050232>,  <26.774744, 39.136524, 35.728775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377722, 38.582386, 36.050232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380871, 38.551815, 35.651413>,  <26.382761, 38.533470, 35.412121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380871, 38.551815, 35.651413>,  <26.377722, 38.582386, 36.050232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380871, 38.551815, 35.651413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211255, -0.974443, 0.076368,
		-0.977399, -0.211232, 0.008475,
		0.007873, -0.076432, -0.997044,
		26.383232, 38.528885, 35.352299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884262, 38.083813, 35.745785>,  <26.377722, 38.582386, 36.050232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884262, 38.083813, 35.745785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149059, 38.109886, 35.447117>,  <26.307938, 38.125530, 35.267918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149059, 38.109886, 35.447117>,  <25.884262, 38.083813, 35.745785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149059, 38.109886, 35.447117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009208, -0.996843, -0.078862,
		-0.749453, 0.045331, -0.660504,
		0.661994, 0.065185, -0.746669,
		26.347658, 38.129440, 35.223118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632942, 37.595577, 35.344940>,  <25.884262, 38.083813, 35.745785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632942, 37.595577, 35.344940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.995899, 37.689713, 35.205650>,  <26.213673, 37.746193, 35.122078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.995899, 37.689713, 35.205650>,  <25.632942, 37.595577, 35.344940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995899, 37.689713, 35.205650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217223, -0.971891, -0.090788,
		-0.359802, 0.006737, -0.933004,
		0.907390, 0.235335, -0.348224,
		26.268116, 37.760315, 35.101185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781662, 37.125130, 34.846935>,  <25.632942, 37.595577, 35.344940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781662, 37.125130, 34.846935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136921, 37.240643, 34.989933>,  <26.350077, 37.309948, 35.075729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136921, 37.240643, 34.989933>,  <25.781662, 37.125130, 34.846935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136921, 37.240643, 34.989933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263520, -0.957331, 0.118638,
		0.376497, -0.011162, -0.926351,
		0.888148, 0.288778, 0.357491,
		26.403366, 37.327274, 35.097179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145216, 36.712200, 34.484745>,  <25.781662, 37.125130, 34.846935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145216, 36.712200, 34.484745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386890, 36.831337, 34.780380>,  <26.531895, 36.902821, 34.957760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386890, 36.831337, 34.780380>,  <26.145216, 36.712200, 34.484745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386890, 36.831337, 34.780380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207552, -0.954324, 0.214914,
		0.769336, 0.023550, -0.638410,
		0.604188, 0.297845, 0.739084,
		26.568148, 36.920689, 35.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845051, 36.366268, 34.403561>,  <26.145216, 36.712200, 34.484745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845051, 36.366268, 34.403561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.803146, 36.477795, 34.785404>,  <26.778004, 36.544712, 35.014511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.803146, 36.477795, 34.785404>,  <26.845051, 36.366268, 34.403561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803146, 36.477795, 34.785404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091175, -0.953159, 0.288401,
		0.990309, 0.117250, 0.074433,
		-0.104762, 0.278820, 0.954612,
		26.771717, 36.561440, 35.071789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493864, 36.075985, 34.692902>,  <26.845051, 36.366268, 34.403561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493864, 36.075985, 34.692902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215923, 36.114307, 34.977997>,  <27.049158, 36.137302, 35.149055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215923, 36.114307, 34.977997>,  <27.493864, 36.075985, 34.692902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215923, 36.114307, 34.977997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266800, -0.886016, 0.379201,
		0.667830, 0.453649, 0.590090,
		-0.694853, 0.095806, 0.712742,
		27.007467, 36.143047, 35.191818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917040, 35.848942, 35.214260>,  <27.493864, 36.075985, 34.692902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917040, 35.848942, 35.214260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.534769, 35.817200, 35.327667>,  <27.305407, 35.798153, 35.395714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.534769, 35.817200, 35.327667>,  <27.917040, 35.848942, 35.214260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534769, 35.817200, 35.327667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201332, -0.878781, 0.432678,
		0.214818, 0.470582, 0.855807,
		-0.955677, -0.079354, 0.283521,
		27.248066, 35.793392, 35.412724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483957, 35.338898, 35.142223>,  <27.917040, 35.848942, 35.214260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483957, 35.338898, 35.142223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847435, 35.320404, 34.976269>,  <29.065521, 35.309307, 34.876694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847435, 35.320404, 34.976269>,  <28.483957, 35.338898, 35.142223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847435, 35.320404, 34.976269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173057, 0.862707, -0.475171,
		0.379898, 0.503585, 0.775937,
		0.908696, -0.046235, -0.414890,
		29.120045, 35.306534, 34.851803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846136, 35.972733, 35.368679>,  <28.483957, 35.338898, 35.142223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846136, 35.972733, 35.368679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992113, 35.813396, 35.032074>,  <29.079699, 35.717796, 34.830112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992113, 35.813396, 35.032074>,  <28.846136, 35.972733, 35.368679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992113, 35.813396, 35.032074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036895, 0.896955, -0.440580,
		0.930299, 0.191834, 0.312640,
		0.364942, -0.398336, -0.841514,
		29.101595, 35.693897, 34.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280060, 36.401466, 35.166309>,  <28.846136, 35.972733, 35.368679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280060, 36.401466, 35.166309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244331, 36.216240, 34.813583>,  <29.222895, 36.105106, 34.601948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244331, 36.216240, 34.813583>,  <29.280060, 36.401466, 35.166309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244331, 36.216240, 34.813583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049088, 0.886323, -0.460458,
		0.994793, 0.002158, -0.101898,
		-0.089321, -0.463062, -0.881813,
		29.217535, 36.077320, 34.549038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710207, 36.712875, 34.781334>,  <29.280060, 36.401466, 35.166309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710207, 36.712875, 34.781334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466335, 36.533726, 34.519737>,  <29.320011, 36.426235, 34.362782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466335, 36.533726, 34.519737>,  <29.710207, 36.712875, 34.781334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466335, 36.533726, 34.519737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082391, 0.784793, -0.614257,
		0.788374, -0.428368, -0.441551,
		-0.609655, -0.447884, -0.654003,
		29.283430, 36.399364, 34.323540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932575, 36.968597, 34.173328>,  <29.710207, 36.712875, 34.781334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932575, 36.968597, 34.173328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568932, 36.829548, 34.081520>,  <29.350746, 36.746117, 34.026436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568932, 36.829548, 34.081520>,  <29.932575, 36.968597, 34.173328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568932, 36.829548, 34.081520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131108, 0.761769, -0.634443,
		0.395390, -0.546685, -0.738107,
		-0.909108, -0.347624, -0.229522,
		29.296200, 36.725262, 34.012665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931595, 36.991749, 33.473289>,  <29.932575, 36.968597, 34.173328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931595, 36.991749, 33.473289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553263, 36.974880, 33.602051>,  <29.326263, 36.964760, 33.679310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553263, 36.974880, 33.602051>,  <29.931595, 36.991749, 33.473289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553263, 36.974880, 33.602051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255166, 0.709609, -0.656769,
		-0.200730, -0.703332, -0.681932,
		-0.945832, -0.042173, 0.321906,
		29.269514, 36.962227, 33.698624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447344, 36.870945, 32.900547>,  <29.931595, 36.991749, 33.473289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447344, 36.870945, 32.900547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240124, 37.048988, 33.192711>,  <29.115791, 37.155815, 33.368011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240124, 37.048988, 33.192711>,  <29.447344, 36.870945, 32.900547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240124, 37.048988, 33.192711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251139, 0.737146, -0.627331,
		-0.817650, -0.508425, -0.270096,
		-0.518051, 0.445106, 0.730413,
		29.084709, 37.182522, 33.411835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784557, 37.166737, 32.564163>,  <29.447344, 36.870945, 32.900547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784557, 37.166737, 32.564163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812401, 37.329987, 32.928272>,  <28.829107, 37.427937, 33.146736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812401, 37.329987, 32.928272>,  <28.784557, 37.166737, 32.564163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812401, 37.329987, 32.928272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229898, 0.894482, -0.383469,
		-0.970722, -0.182577, 0.156090,
		0.069607, 0.408127, 0.910268,
		28.833282, 37.452423, 33.201351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180855, 37.582207, 32.597927>,  <28.784557, 37.166737, 32.564163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180855, 37.582207, 32.597927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468395, 37.723923, 32.837170>,  <28.640919, 37.808952, 32.980717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468395, 37.723923, 32.837170>,  <28.180855, 37.582207, 32.597927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468395, 37.723923, 32.837170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234347, 0.933526, -0.271313,
		-0.654474, 0.054868, 0.754091,
		0.718850, 0.354286, 0.598111,
		28.684050, 37.830208, 33.016602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921158, 38.142807, 32.987415>,  <28.180855, 37.582207, 32.597927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921158, 38.142807, 32.987415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312481, 38.221313, 33.013943>,  <28.547274, 38.268417, 33.029861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312481, 38.221313, 33.013943>,  <27.921158, 38.142807, 32.987415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312481, 38.221313, 33.013943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157158, 0.911678, -0.379662,
		-0.134976, 0.361003, 0.922745,
		0.978306, 0.196263, 0.066320,
		28.605972, 38.280193, 33.033840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901901, 38.733204, 33.280422>,  <27.921158, 38.142807, 32.987415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901901, 38.733204, 33.280422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.261078, 38.719120, 33.104942>,  <28.476583, 38.710670, 32.999653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.261078, 38.719120, 33.104942>,  <27.901901, 38.733204, 33.280422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261078, 38.719120, 33.104942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140710, 0.921510, -0.361967,
		0.417012, 0.386755, 0.822509,
		0.897943, -0.035210, -0.438701,
		28.530460, 38.708557, 32.973331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143578, 39.386372, 33.432152>,  <27.901901, 38.733204, 33.280422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143578, 39.386372, 33.432152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390139, 39.240856, 33.152809>,  <28.538074, 39.153545, 32.985203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390139, 39.240856, 33.152809>,  <28.143578, 39.386372, 33.432152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390139, 39.240856, 33.152809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091160, 0.913886, -0.395604,
		0.782137, 0.180189, 0.596484,
		0.616402, -0.363792, -0.698358,
		28.575060, 39.131718, 32.943302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645475, 39.755463, 33.478004>,  <28.143578, 39.386372, 33.432152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645475, 39.755463, 33.478004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.680729, 39.617203, 33.104317>,  <28.701881, 39.534248, 32.880104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.680729, 39.617203, 33.104317>,  <28.645475, 39.755463, 33.478004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680729, 39.617203, 33.104317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097020, 0.936386, -0.337297,
		0.991373, -0.060911, 0.116061,
		0.088133, -0.345647, -0.934216,
		28.707169, 39.513508, 32.824051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132128, 40.181705, 33.077263>,  <28.645475, 39.755463, 33.478004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132128, 40.181705, 33.077263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947872, 40.015423, 32.763577>,  <28.837318, 39.915653, 32.575363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947872, 40.015423, 32.763577>,  <29.132128, 40.181705, 33.077263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947872, 40.015423, 32.763577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027200, 0.889738, -0.455661,
		0.887166, -0.188569, -0.421163,
		-0.460648, -0.415702, -0.784216,
		28.809679, 39.890713, 32.528309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389927, 40.522316, 32.453678>,  <29.132128, 40.181705, 33.077263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389927, 40.522316, 32.453678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033653, 40.366417, 32.360062>,  <28.819889, 40.272877, 32.303890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033653, 40.366417, 32.360062>,  <29.389927, 40.522316, 32.453678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033653, 40.366417, 32.360062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192038, 0.789174, -0.583375,
		0.412071, -0.474658, -0.777752,
		-0.890685, -0.389749, -0.234043,
		28.766447, 40.249493, 32.289848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236609, 40.753742, 31.710972>,  <29.389927, 40.522316, 32.453678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236609, 40.753742, 31.710972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884182, 40.640759, 31.862730>,  <28.672726, 40.572968, 31.953785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884182, 40.640759, 31.862730>,  <29.236609, 40.753742, 31.710972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884182, 40.640759, 31.862730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456990, 0.715220, -0.528792,
		-0.121991, -0.639281, -0.759235,
		-0.881067, -0.282455, 0.379395,
		28.619862, 40.556023, 31.976549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768465, 41.052658, 31.206280>,  <29.236609, 40.753742, 31.710972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768465, 41.052658, 31.206280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523335, 40.948658, 31.504768>,  <28.376257, 40.886257, 31.683861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523335, 40.948658, 31.504768>,  <28.768465, 41.052658, 31.206280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523335, 40.948658, 31.504768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759924, 0.452860, -0.466297,
		-0.216699, -0.852831, -0.475101,
		-0.612827, -0.259995, 0.746221,
		28.339487, 40.870659, 31.728634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168600, 40.706509, 30.955215>,  <28.768465, 41.052658, 31.206280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168600, 40.706509, 30.955215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050339, 40.837143, 31.314310>,  <27.979382, 40.915524, 31.529768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050339, 40.837143, 31.314310>,  <28.168600, 40.706509, 30.955215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050339, 40.837143, 31.314310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789092, 0.446194, -0.422190,
		-0.538446, -0.833219, 0.125785,
		-0.295652, 0.326583, 0.897738,
		27.961643, 40.935116, 31.583632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353832, 40.612251, 30.949425>,  <28.168600, 40.706509, 30.955215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353832, 40.612251, 30.949425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438740, 40.888191, 31.226278>,  <27.489685, 41.053757, 31.392391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.438740, 40.888191, 31.226278>,  <27.353832, 40.612251, 30.949425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438740, 40.888191, 31.226278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724398, 0.586465, -0.362363,
		-0.655888, -0.424461, 0.624215,
		0.212271, 0.689849, 0.692134,
		27.502420, 41.095146, 31.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655708, 40.850948, 31.203936>,  <27.353832, 40.612251, 30.949425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655708, 40.850948, 31.203936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904606, 41.138733, 31.327345>,  <27.053944, 41.311405, 31.401390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904606, 41.138733, 31.327345>,  <26.655708, 40.850948, 31.203936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904606, 41.138733, 31.327345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736305, 0.671731, -0.081440,
		-0.265838, -0.176492, 0.947724,
		0.622242, 0.719464, 0.308523,
		27.091278, 41.354572, 31.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294674, 41.147514, 31.672106>,  <26.655708, 40.850948, 31.203936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294674, 41.147514, 31.672106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.563786, 41.399551, 31.517004>,  <26.725252, 41.550774, 31.423943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.563786, 41.399551, 31.517004>,  <26.294674, 41.147514, 31.672106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563786, 41.399551, 31.517004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723526, 0.669801, -0.166962,
		0.154519, 0.392880, 0.906515,
		0.672780, 0.630088, -0.387756,
		26.765619, 41.588577, 31.400677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044899, 41.830524, 31.818172>,  <26.294674, 41.147514, 31.672106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044899, 41.830524, 31.818172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.313364, 41.865005, 31.523661>,  <26.474443, 41.885696, 31.346954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.313364, 41.865005, 31.523661>,  <26.044899, 41.830524, 31.818172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313364, 41.865005, 31.523661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504031, 0.781377, -0.367970,
		0.543591, 0.618076, 0.567883,
		0.671164, 0.086206, -0.736279,
		26.514713, 41.890869, 31.302776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.803051, 32.211796, 44.847698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427986, 32.348984, 44.870186>,  <39.202946, 32.431297, 44.883678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427986, 32.348984, 44.870186>,  <39.803051, 32.211796, 44.847698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427986, 32.348984, 44.870186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174504, 0.324695, 0.929581,
		0.300567, 0.881443, -0.364304,
		-0.937661, 0.342974, 0.056223,
		39.146687, 32.451878, 44.887054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834724, 32.934437, 44.989960>,  <39.803051, 32.211796, 44.847698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834724, 32.934437, 44.989960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.470345, 32.815289, 45.104115>,  <39.251717, 32.743801, 45.172607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.470345, 32.815289, 45.104115>,  <39.834724, 32.934437, 44.989960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470345, 32.815289, 45.104115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141896, 0.423349, 0.894785,
		-0.387350, 0.855598, -0.343382,
		-0.910947, -0.297871, 0.285391,
		39.197060, 32.725925, 45.189732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488747, 33.559185, 45.325367>,  <39.834724, 32.934437, 44.989960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488747, 33.559185, 45.325367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263893, 33.258430, 45.463161>,  <39.128983, 33.077976, 45.545837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263893, 33.258430, 45.463161>,  <39.488747, 33.559185, 45.325367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263893, 33.258430, 45.463161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142014, 0.322582, 0.935827,
		-0.814764, 0.574979, -0.074554,
		-0.562131, -0.751891, 0.344484,
		39.095253, 33.032864, 45.566505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123787, 33.810684, 45.965244>,  <39.488747, 33.559185, 45.325367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123787, 33.810684, 45.965244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085144, 33.413033, 45.984699>,  <39.061958, 33.174442, 45.996372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085144, 33.413033, 45.984699>,  <39.123787, 33.810684, 45.965244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085144, 33.413033, 45.984699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030701, 0.045868, 0.998476,
		-0.994849, 0.097955, 0.026089,
		-0.096609, -0.994133, 0.048639,
		39.056160, 33.114792, 45.999290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483719, 33.671406, 46.436810>,  <39.123787, 33.810684, 45.965244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483719, 33.671406, 46.436810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701790, 33.336163, 46.444447>,  <38.832634, 33.135017, 46.449028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701790, 33.336163, 46.444447>,  <38.483719, 33.671406, 46.436810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701790, 33.336163, 46.444447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005288, 0.026211, 0.999642,
		-0.838305, -0.544880, 0.018722,
		0.545176, -0.838104, 0.019092,
		38.865341, 33.084732, 46.450172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195179, 33.207836, 46.952049>,  <38.483719, 33.671406, 46.436810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195179, 33.207836, 46.952049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571728, 33.076233, 46.922211>,  <38.797657, 32.997272, 46.904308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571728, 33.076233, 46.922211>,  <38.195179, 33.207836, 46.952049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571728, 33.076233, 46.922211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034571, -0.125886, 0.991442,
		-0.335585, -0.935898, -0.107131,
		0.941375, -0.329010, -0.074601,
		38.854141, 32.977531, 46.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238266, 32.795841, 47.484318>,  <38.195179, 33.207836, 46.952049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238266, 32.795841, 47.484318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.627838, 32.803383, 47.393887>,  <38.861580, 32.807907, 47.339626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.627838, 32.803383, 47.393887>,  <38.238266, 32.795841, 47.484318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627838, 32.803383, 47.393887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226861, -0.083816, 0.970314,
		-0.000654, -0.996303, -0.085908,
		0.973927, 0.018854, -0.226077,
		38.920017, 32.809040, 47.326065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498680, 32.135780, 47.773277>,  <38.238266, 32.795841, 47.484318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498680, 32.135780, 47.773277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794712, 32.402176, 47.735874>,  <38.972332, 32.562012, 47.713432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794712, 32.402176, 47.735874>,  <38.498680, 32.135780, 47.773277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794712, 32.402176, 47.735874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238224, -0.129586, 0.962526,
		0.628917, -0.734618, -0.254558,
		0.740077, 0.665991, -0.093505,
		39.016735, 32.601974, 47.707821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098568, 31.887205, 48.066612>,  <38.498680, 32.135780, 47.773277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098568, 31.887205, 48.066612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.160694, 32.282288, 48.073704>,  <39.197968, 32.519337, 48.077957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.160694, 32.282288, 48.073704>,  <39.098568, 31.887205, 48.066612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160694, 32.282288, 48.073704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214286, -0.051200, 0.975428,
		0.964344, -0.147697, -0.219603,
		0.155312, 0.987707, 0.017725,
		39.207287, 32.578598, 48.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836697, 32.009106, 48.392319>,  <39.098568, 31.887205, 48.066612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836697, 32.009106, 48.392319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.633617, 32.352097, 48.425709>,  <39.511768, 32.557892, 48.445744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.633617, 32.352097, 48.425709>,  <39.836697, 32.009106, 48.392319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633617, 32.352097, 48.425709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013323, -0.089070, 0.995936,
		0.861431, 0.506749, 0.033797,
		-0.507700, 0.857480, 0.083479,
		39.481308, 32.609341, 48.450752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945065, 32.206863, 49.082874>,  <39.836697, 32.009106, 48.392319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945065, 32.206863, 49.082874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650063, 32.457874, 48.983028>,  <39.473061, 32.608479, 48.923122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650063, 32.457874, 48.983028>,  <39.945065, 32.206863, 49.082874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650063, 32.457874, 48.983028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229709, 0.114480, 0.966503,
		0.635080, 0.770134, 0.059719,
		-0.737500, 0.627525, -0.249610,
		39.428814, 32.646133, 48.908146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093414, 32.783337, 49.417076>,  <39.945065, 32.206863, 49.082874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093414, 32.783337, 49.417076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.705482, 32.764046, 49.321487>,  <39.472725, 32.752472, 49.264133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.705482, 32.764046, 49.321487>,  <40.093414, 32.783337, 49.417076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705482, 32.764046, 49.321487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242509, 0.090340, 0.965934,
		-0.024997, 0.994743, -0.099310,
		-0.969827, -0.048229, -0.238976,
		39.414536, 32.749577, 49.249794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882446, 33.081787, 50.034359>,  <40.093414, 32.783337, 49.417076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882446, 33.081787, 50.034359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548916, 32.999912, 49.829292>,  <39.348797, 32.950787, 49.706253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548916, 32.999912, 49.829292>,  <39.882446, 33.081787, 50.034359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548916, 32.999912, 49.829292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515872, -0.041623, 0.855654,
		-0.196479, 0.977942, -0.070885,
		-0.833830, -0.204685, -0.512671,
		39.298767, 32.938507, 49.675491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385857, 33.540688, 50.422409>,  <39.882446, 33.081787, 50.034359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385857, 33.540688, 50.422409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203217, 33.254498, 50.210896>,  <39.093632, 33.082783, 50.083988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203217, 33.254498, 50.210896>,  <39.385857, 33.540688, 50.422409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203217, 33.254498, 50.210896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577234, -0.214036, 0.788029,
		-0.676993, 0.665047, -0.315267,
		-0.456598, -0.715473, -0.528788,
		39.066238, 33.039856, 50.052258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887856, 33.475140, 51.072212>,  <39.385857, 33.540688, 50.422409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887856, 33.475140, 51.072212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626816, 33.665165, 51.308323>,  <38.470192, 33.779179, 51.449989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626816, 33.665165, 51.308323>,  <38.887856, 33.475140, 51.072212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626816, 33.665165, 51.308323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477654, 0.346804, -0.807201,
		-0.588181, -0.808729, 0.000591,
		-0.652602, 0.475063, 0.590276,
		38.431034, 33.807682, 51.485405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230942, 33.217300, 50.900131>,  <38.887856, 33.475140, 51.072212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230942, 33.217300, 50.900131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192863, 33.582207, 51.059483>,  <38.170017, 33.801151, 51.155094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192863, 33.582207, 51.059483>,  <38.230942, 33.217300, 50.900131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192863, 33.582207, 51.059483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518908, 0.296044, -0.801930,
		-0.849513, -0.283060, 0.445202,
		-0.095195, 0.912269, 0.398375,
		38.164307, 33.855888, 51.178993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507660, 33.441719, 50.891079>,  <38.230942, 33.217300, 50.900131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507660, 33.441719, 50.891079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710430, 33.785538, 50.917023>,  <37.832092, 33.991829, 50.932590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710430, 33.785538, 50.917023>,  <37.507660, 33.441719, 50.891079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710430, 33.785538, 50.917023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515537, 0.362629, -0.776352,
		-0.690831, 0.360114, 0.626953,
		0.506927, 0.859545, 0.064863,
		37.862507, 34.043400, 50.936481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049866, 34.067513, 50.576569>,  <37.507660, 33.441719, 50.891079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049866, 34.067513, 50.576569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435398, 34.171787, 50.598759>,  <37.666718, 34.234352, 50.612072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435398, 34.171787, 50.598759>,  <37.049866, 34.067513, 50.576569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435398, 34.171787, 50.598759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042045, 0.354254, -0.934203,
		-0.263183, 0.898080, 0.352401,
		0.963829, 0.260683, 0.055474,
		37.724548, 34.249992, 50.615402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051792, 34.649796, 50.370743>,  <37.049866, 34.067513, 50.576569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051792, 34.649796, 50.370743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438118, 34.562141, 50.315338>,  <37.669914, 34.509548, 50.282097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438118, 34.562141, 50.315338>,  <37.051792, 34.649796, 50.370743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438118, 34.562141, 50.315338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021420, 0.465001, -0.885051,
		0.258353, 0.857760, 0.444410,
		0.965813, -0.219137, -0.138508,
		37.727863, 34.496399, 50.273785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425850, 35.265835, 50.302734>,  <37.051792, 34.649796, 50.370743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425850, 35.265835, 50.302734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599083, 34.969826, 50.096901>,  <37.703022, 34.792221, 49.973400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599083, 34.969826, 50.096901>,  <37.425850, 35.265835, 50.302734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599083, 34.969826, 50.096901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032054, 0.583187, -0.811705,
		0.900783, 0.335043, 0.276291,
		0.433086, -0.740026, -0.514585,
		37.729008, 34.747818, 49.942524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732243, 35.576061, 49.840141>,  <37.425850, 35.265835, 50.302734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732243, 35.576061, 49.840141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805271, 35.207436, 49.703094>,  <37.849091, 34.986259, 49.620865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805271, 35.207436, 49.703094>,  <37.732243, 35.576061, 49.840141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805271, 35.207436, 49.703094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036042, 0.341969, -0.939020,
		0.982531, 0.183790, 0.029220,
		0.182575, -0.921563, -0.342619,
		37.860043, 34.930965, 49.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174690, 35.742500, 49.298580>,  <37.732243, 35.576061, 49.840141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174690, 35.742500, 49.298580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034794, 35.372456, 49.239445>,  <37.950855, 35.150429, 49.203964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034794, 35.372456, 49.239445>,  <38.174690, 35.742500, 49.298580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034794, 35.372456, 49.239445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151106, 0.100039, -0.983442,
		0.924580, -0.366290, 0.104802,
		-0.349741, -0.925107, -0.147842,
		37.929871, 35.094925, 49.195091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674461, 35.424210, 48.766434>,  <38.174690, 35.742500, 49.298580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674461, 35.424210, 48.766434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332508, 35.216930, 48.776562>,  <38.127335, 35.092564, 48.782639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332508, 35.216930, 48.776562>,  <38.674461, 35.424210, 48.766434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332508, 35.216930, 48.776562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077503, 0.079295, -0.993834,
		0.512997, -0.851575, -0.107950,
		-0.854885, -0.518200, 0.025322,
		38.076042, 35.061470, 48.784157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685482, 35.067768, 48.211479>,  <38.674461, 35.424210, 48.766434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685482, 35.067768, 48.211479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295189, 35.036793, 48.293404>,  <38.061012, 35.018208, 48.342560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295189, 35.036793, 48.293404>,  <38.685482, 35.067768, 48.211479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295189, 35.036793, 48.293404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213586, 0.130574, -0.968159,
		0.048223, -0.988410, -0.143944,
		-0.975734, -0.077432, 0.204814,
		38.002468, 35.013561, 48.354847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402695, 34.523422, 47.749874>,  <38.685482, 35.067768, 48.211479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402695, 34.523422, 47.749874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.081486, 34.746944, 47.832722>,  <37.888760, 34.881058, 47.882431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.081486, 34.746944, 47.832722>,  <38.402695, 34.523422, 47.749874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081486, 34.746944, 47.832722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217415, 0.048895, -0.974854,
		-0.554878, -0.827858, 0.082229,
		-0.803020, 0.558803, 0.207120,
		37.840580, 34.914585, 47.894859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834545, 34.288399, 47.365143>,  <38.402695, 34.523422, 47.749874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834545, 34.288399, 47.365143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668751, 34.639912, 47.459751>,  <37.569275, 34.850819, 47.516514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668751, 34.639912, 47.459751>,  <37.834545, 34.288399, 47.365143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668751, 34.639912, 47.459751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295514, 0.115842, -0.948289,
		-0.860738, -0.462950, 0.211677,
		-0.414490, 0.878782, 0.236518,
		37.544403, 34.903545, 47.530708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097931, 34.367332, 46.981953>,  <37.834545, 34.288399, 47.365143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097931, 34.367332, 46.981953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209457, 34.737167, 47.085793>,  <37.276371, 34.959068, 47.148098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209457, 34.737167, 47.085793>,  <37.097931, 34.367332, 46.981953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209457, 34.737167, 47.085793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357162, 0.350764, -0.865679,
		-0.891458, 0.148644, 0.428027,
		0.278814, 0.924592, 0.259601,
		37.293102, 35.014545, 47.163673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489040, 34.844784, 46.984142>,  <37.097931, 34.367332, 46.981953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489040, 34.844784, 46.984142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824146, 35.046120, 46.899475>,  <37.025208, 35.166924, 46.848675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824146, 35.046120, 46.899475>,  <36.489040, 34.844784, 46.984142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824146, 35.046120, 46.899475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448710, 0.413713, -0.792149,
		-0.311153, 0.758609, 0.572448,
		0.837761, 0.503343, -0.211668,
		37.075474, 35.197121, 46.835976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804016, 35.048420, 47.251312>,  <36.489040, 34.844784, 46.984142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804016, 35.048420, 47.251312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449276, 35.229710, 47.287285>,  <35.236431, 35.338482, 47.308868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449276, 35.229710, 47.287285>,  <35.804016, 35.048420, 47.251312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449276, 35.229710, 47.287285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025323, -0.242022, 0.969940,
		0.461367, 0.857912, 0.226114,
		-0.886848, 0.453225, 0.089936,
		35.183220, 35.365677, 47.314266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854794, 35.535278, 47.790524>,  <35.804016, 35.048420, 47.251312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854794, 35.535278, 47.790524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469707, 35.433392, 47.754082>,  <35.238655, 35.372257, 47.732216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469707, 35.433392, 47.754082>,  <35.854794, 35.535278, 47.790524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469707, 35.433392, 47.754082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042902, -0.188742, 0.981089,
		-0.267098, 0.948417, 0.170776,
		-0.962714, -0.254720, -0.091102,
		35.180893, 35.356976, 47.726749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539185, 35.986069, 48.314728>,  <35.854794, 35.535278, 47.790524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539185, 35.986069, 48.314728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.269985, 35.703545, 48.226910>,  <35.108463, 35.534031, 48.174221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.269985, 35.703545, 48.226910>,  <35.539185, 35.986069, 48.314728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269985, 35.703545, 48.226910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088852, -0.217470, 0.972014,
		-0.734284, 0.673675, 0.083602,
		-0.673002, -0.706307, -0.219542,
		35.068085, 35.491653, 48.161049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995335, 35.968357, 48.877327>,  <35.539185, 35.986069, 48.314728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995335, 35.968357, 48.877327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958992, 35.608913, 48.705631>,  <34.937187, 35.393246, 48.602612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958992, 35.608913, 48.705631>,  <34.995335, 35.968357, 48.877327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958992, 35.608913, 48.705631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278797, -0.390837, 0.877222,
		-0.956043, 0.199370, -0.215021,
		-0.090854, -0.898609, -0.429241,
		34.931736, 35.339333, 48.576859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401302, 35.683453, 49.150982>,  <34.995335, 35.968357, 48.877327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401302, 35.683453, 49.150982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637142, 35.384586, 49.028271>,  <34.778648, 35.205265, 48.954643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637142, 35.384586, 49.028271>,  <34.401302, 35.683453, 49.150982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637142, 35.384586, 49.028271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080704, -0.432421, 0.898053,
		-0.803651, -0.504736, -0.315256,
		0.589603, -0.747164, -0.306781,
		34.814022, 35.160439, 48.936237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085674, 35.073830, 49.466431>,  <34.401302, 35.683453, 49.150982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085674, 35.073830, 49.466431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440926, 34.944218, 49.336056>,  <34.654076, 34.866451, 49.257832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440926, 34.944218, 49.336056>,  <34.085674, 35.073830, 49.466431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440926, 34.944218, 49.336056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092232, -0.569097, 0.817081,
		-0.450254, -0.755732, -0.475543,
		0.888124, -0.324034, -0.325941,
		34.707363, 34.847008, 49.238274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999729, 34.381783, 49.666195>,  <34.085674, 35.073830, 49.466431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999729, 34.381783, 49.666195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385765, 34.477085, 49.622669>,  <34.617386, 34.534267, 49.596554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385765, 34.477085, 49.622669>,  <33.999729, 34.381783, 49.666195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385765, 34.477085, 49.622669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201150, -0.408063, 0.890519,
		0.167768, -0.881317, -0.441741,
		0.965087, 0.238257, -0.108817,
		34.675293, 34.548561, 49.590023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037937, 33.844433, 49.106022>,  <33.999729, 34.381783, 49.666195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037937, 33.844433, 49.106022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855015, 33.501358, 49.011997>,  <33.745262, 33.295513, 48.955582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855015, 33.501358, 49.011997>,  <34.037937, 33.844433, 49.106022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855015, 33.501358, 49.011997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088880, 0.307079, -0.947525,
		0.884859, -0.412411, -0.216658,
		-0.457301, -0.857683, -0.235066,
		33.717823, 33.244053, 48.941479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415604, 33.601555, 48.563431>,  <34.037937, 33.844433, 49.106022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415604, 33.601555, 48.563431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069141, 33.403324, 48.537601>,  <33.861263, 33.284386, 48.522102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069141, 33.403324, 48.537601>,  <34.415604, 33.601555, 48.563431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069141, 33.403324, 48.537601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048253, 0.045686, -0.997790,
		0.497433, -0.867361, -0.015658,
		-0.866160, -0.495578, -0.064578,
		33.809292, 33.254650, 48.518227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496277, 33.193600, 48.049305>,  <34.415604, 33.601555, 48.563431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496277, 33.193600, 48.049305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098621, 33.160446, 48.077087>,  <33.860027, 33.140553, 48.093758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098621, 33.160446, 48.077087>,  <34.496277, 33.193600, 48.049305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098621, 33.160446, 48.077087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061991, -0.089422, -0.994063,
		0.088606, -0.992539, 0.083759,
		-0.994136, -0.082888, 0.069452,
		33.800381, 33.135582, 48.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256332, 32.708134, 47.521942>,  <34.496277, 33.193600, 48.049305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256332, 32.708134, 47.521942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912357, 32.890995, 47.612732>,  <33.705971, 33.000713, 47.667206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912357, 32.890995, 47.612732>,  <34.256332, 32.708134, 47.521942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912357, 32.890995, 47.612732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228570, 0.052680, -0.972101,
		-0.456360, -0.887824, 0.059191,
		-0.859937, 0.457158, 0.226971,
		33.654377, 33.028141, 47.680824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696632, 32.311092, 47.135880>,  <34.256332, 32.708134, 47.521942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696632, 32.311092, 47.135880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582657, 32.691860, 47.180882>,  <33.514271, 32.920322, 47.207882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582657, 32.691860, 47.180882>,  <33.696632, 32.311092, 47.135880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582657, 32.691860, 47.180882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301248, 0.022487, -0.953281,
		-0.909977, -0.305521, 0.280356,
		-0.284943, 0.951920, 0.112500,
		33.497173, 32.977436, 47.214630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023808, 32.360836, 46.903809>,  <33.696632, 32.311092, 47.135880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023808, 32.360836, 46.903809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168629, 32.733665, 46.898777>,  <33.255520, 32.957363, 46.895756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168629, 32.733665, 46.898777>,  <33.023808, 32.360836, 46.903809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168629, 32.733665, 46.898777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379231, 0.134950, -0.915408,
		-0.851529, 0.336197, 0.402330,
		0.362052, 0.932073, -0.012583,
		33.277245, 33.013287, 46.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493542, 32.722069, 46.716358>,  <33.023808, 32.360836, 46.903809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493542, 32.722069, 46.716358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817993, 32.941227, 46.634502>,  <33.012665, 33.072720, 46.585388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817993, 32.941227, 46.634502>,  <32.493542, 32.722069, 46.716358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817993, 32.941227, 46.634502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278646, 0.054390, -0.958852,
		-0.514218, 0.834779, 0.196786,
		0.811133, 0.547893, -0.204640,
		33.061333, 33.105595, 46.573109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.357075, 29.958151, 49.141571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.508331, 30.324568, 49.195045>,  <37.599087, 30.544418, 49.227131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.508331, 30.324568, 49.195045>,  <37.357075, 29.958151, 49.141571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508331, 30.324568, 49.195045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180594, 0.214625, -0.959855,
		-0.907961, 0.338820, 0.246591,
		0.378143, 0.916044, 0.133683,
		37.621773, 30.599380, 49.235149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830227, 30.366537, 48.910736>,  <37.357075, 29.958151, 49.141571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830227, 30.366537, 48.910736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.169861, 30.569891, 48.853325>,  <37.373642, 30.691904, 48.818878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.169861, 30.569891, 48.853325>,  <36.830227, 30.366537, 48.910736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169861, 30.569891, 48.853325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196411, 0.051596, -0.979163,
		-0.490385, 0.859583, 0.143661,
		0.849085, 0.508384, -0.143530,
		37.424587, 30.722406, 48.810265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639343, 30.934317, 48.462532>,  <36.830227, 30.366537, 48.910736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639343, 30.934317, 48.462532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.037022, 30.902250, 48.433846>,  <37.275631, 30.883011, 48.416634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.037022, 30.902250, 48.433846>,  <36.639343, 30.934317, 48.462532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037022, 30.902250, 48.433846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070967, 0.012156, -0.997405,
		0.080831, 0.996707, 0.006396,
		0.994198, -0.080167, -0.071716,
		37.335281, 30.878201, 48.412331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774094, 31.376638, 47.907642>,  <36.639343, 30.934317, 48.462532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774094, 31.376638, 47.907642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077568, 31.118357, 47.942196>,  <37.259651, 30.963387, 47.962929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077568, 31.118357, 47.942196>,  <36.774094, 31.376638, 47.907642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077568, 31.118357, 47.942196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133077, 0.023809, -0.990820,
		0.637722, 0.763215, 0.103992,
		0.758684, -0.645706, 0.086383,
		37.305172, 30.924644, 47.968109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376148, 31.665365, 47.570461>,  <36.774094, 31.376638, 47.907642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376148, 31.665365, 47.570461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.455662, 31.273371, 47.574688>,  <37.503368, 31.038174, 47.577225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.455662, 31.273371, 47.574688>,  <37.376148, 31.665365, 47.570461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455662, 31.273371, 47.574688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272034, 0.044812, -0.961244,
		0.941532, 0.193954, 0.275497,
		0.198783, -0.979987, 0.010571,
		37.515297, 30.979374, 47.577858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905239, 31.490898, 47.066372>,  <37.376148, 31.665365, 47.570461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905239, 31.490898, 47.066372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742870, 31.130768, 47.129169>,  <37.645451, 30.914690, 47.166847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742870, 31.130768, 47.129169>,  <37.905239, 31.490898, 47.066372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742870, 31.130768, 47.129169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172673, -0.244241, -0.954217,
		0.897449, -0.360225, 0.254603,
		-0.405918, -0.900324, 0.156993,
		37.621094, 30.860670, 47.176266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284588, 31.070669, 46.702923>,  <37.905239, 31.490898, 47.066372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284588, 31.070669, 46.702923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942245, 30.870647, 46.755760>,  <37.736839, 30.750633, 46.787464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942245, 30.870647, 46.755760>,  <38.284588, 31.070669, 46.702923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942245, 30.870647, 46.755760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006142, -0.265206, -0.964172,
		0.517173, -0.824384, 0.230050,
		-0.855859, -0.500057, 0.132094,
		37.685486, 30.720631, 46.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331646, 30.478985, 46.307274>,  <38.284588, 31.070669, 46.702923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331646, 30.478985, 46.307274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.935856, 30.482731, 46.365021>,  <37.698380, 30.484978, 46.399670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.935856, 30.482731, 46.365021>,  <38.331646, 30.478985, 46.307274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935856, 30.482731, 46.365021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137454, -0.372136, -0.917944,
		0.045128, -0.928131, 0.369508,
		-0.989480, 0.009366, 0.144369,
		37.639011, 30.485540, 46.408333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043793, 29.808231, 46.125088>,  <38.331646, 30.478985, 46.307274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043793, 29.808231, 46.125088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.750767, 30.077293, 46.083370>,  <37.574951, 30.238731, 46.058338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.750767, 30.077293, 46.083370>,  <38.043793, 29.808231, 46.125088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750767, 30.077293, 46.083370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110565, -0.268772, -0.956837,
		-0.671654, -0.689417, 0.271266,
		-0.732568, 0.672656, -0.104297,
		37.530994, 30.279091, 46.052082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551361, 29.421085, 45.795151>,  <38.043793, 29.808231, 46.125088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551361, 29.421085, 45.795151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.458897, 29.806311, 45.739910>,  <37.403419, 30.037445, 45.706764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.458897, 29.806311, 45.739910>,  <37.551361, 29.421085, 45.795151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458897, 29.806311, 45.739910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289998, -0.203700, -0.935098,
		-0.928690, -0.176109, 0.326374,
		-0.231162, 0.963064, -0.138103,
		37.389549, 30.095230, 45.698479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860905, 29.397495, 45.576649>,  <37.551361, 29.421085, 45.795151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860905, 29.397495, 45.576649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.987026, 29.754761, 45.448372>,  <37.062698, 29.969120, 45.371407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.987026, 29.754761, 45.448372>,  <36.860905, 29.397495, 45.576649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987026, 29.754761, 45.448372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519157, -0.120533, -0.846137,
		-0.794391, 0.433283, 0.425686,
		0.315307, 0.893162, -0.320693,
		37.081619, 30.022709, 45.352165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287460, 29.699028, 45.121239>,  <36.860905, 29.397495, 45.576649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287460, 29.699028, 45.121239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.624165, 29.888231, 45.017159>,  <36.826187, 30.001753, 44.954712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.624165, 29.888231, 45.017159>,  <36.287460, 29.699028, 45.121239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624165, 29.888231, 45.017159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298998, 0.007182, -0.954227,
		-0.449487, 0.881029, 0.147474,
		0.841761, 0.473007, -0.260198,
		36.876694, 30.030134, 44.939098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985825, 30.331898, 45.388725>,  <36.287460, 29.699028, 45.121239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985825, 30.331898, 45.388725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.622665, 30.491117, 45.336143>,  <35.404770, 30.586649, 45.304596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.622665, 30.491117, 45.336143>,  <35.985825, 30.331898, 45.388725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622665, 30.491117, 45.336143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232524, -0.217287, 0.948008,
		0.348793, 0.891259, 0.289831,
		-0.907896, 0.398051, -0.131451,
		35.350296, 30.610533, 45.296707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916534, 30.832535, 45.875069>,  <35.985825, 30.331898, 45.388725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916534, 30.832535, 45.875069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.548470, 30.704134, 45.785397>,  <35.327629, 30.627092, 45.731594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.548470, 30.704134, 45.785397>,  <35.916534, 30.832535, 45.875069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548470, 30.704134, 45.785397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164719, -0.202058, 0.965422,
		-0.355202, 0.925272, 0.133050,
		-0.920162, -0.321004, -0.224181,
		35.272419, 30.607832, 45.718143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490147, 31.177864, 46.362782>,  <35.916534, 30.832535, 45.875069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490147, 31.177864, 46.362782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287754, 30.857866, 46.233791>,  <35.166317, 30.665869, 46.156399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287754, 30.857866, 46.233791>,  <35.490147, 31.177864, 46.362782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287754, 30.857866, 46.233791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312143, -0.178696, 0.933078,
		-0.804081, 0.572781, -0.159295,
		-0.505984, -0.799994, -0.322476,
		35.135960, 30.617868, 46.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877945, 31.236557, 46.697483>,  <35.490147, 31.177864, 46.362782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877945, 31.236557, 46.697483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892170, 30.848343, 46.602154>,  <34.900707, 30.615416, 46.544956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892170, 30.848343, 46.602154>,  <34.877945, 31.236557, 46.697483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892170, 30.848343, 46.602154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316937, -0.237119, 0.918328,
		-0.947780, 0.042873, -0.316031,
		0.035566, -0.970534, -0.238325,
		34.902840, 30.557182, 46.530655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233025, 30.995596, 46.832310>,  <34.877945, 31.236557, 46.697483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233025, 30.995596, 46.832310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487743, 30.687803, 46.851860>,  <34.640575, 30.503128, 46.863590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487743, 30.687803, 46.851860>,  <34.233025, 30.995596, 46.832310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487743, 30.687803, 46.851860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318881, -0.205125, 0.925332,
		-0.701999, -0.604834, -0.375996,
		0.636798, -0.769480, 0.048872,
		34.678783, 30.456959, 46.866520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831673, 30.540890, 47.140949>,  <34.233025, 30.995596, 46.832310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831673, 30.540890, 47.140949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.206146, 30.407307, 47.184841>,  <34.430828, 30.327156, 47.211178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.206146, 30.407307, 47.184841>,  <33.831673, 30.540890, 47.140949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206146, 30.407307, 47.184841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189569, -0.216764, 0.957641,
		-0.296028, -0.917325, -0.266238,
		0.936179, -0.333960, 0.109728,
		34.487000, 30.307119, 47.217758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790405, 30.010157, 47.699612>,  <33.831673, 30.540890, 47.140949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790405, 30.010157, 47.699612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.180847, 30.096731, 47.691807>,  <34.415112, 30.148676, 47.687122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.180847, 30.096731, 47.691807>,  <33.790405, 30.010157, 47.699612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180847, 30.096731, 47.691807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074044, -0.246814, 0.966230,
		0.204310, -0.944584, -0.256941,
		0.976102, 0.216435, -0.019514,
		34.473679, 30.161661, 47.685951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051891, 29.543852, 48.177197>,  <33.790405, 30.010157, 47.699612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051891, 29.543852, 48.177197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352264, 29.804300, 48.133114>,  <34.532486, 29.960569, 48.106667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352264, 29.804300, 48.133114>,  <34.051891, 29.543852, 48.177197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352264, 29.804300, 48.133114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247492, -0.122765, 0.961081,
		0.612253, -0.748977, -0.253335,
		0.750928, 0.651124, -0.110203,
		34.577541, 29.999638, 48.100052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634960, 29.260218, 48.541431>,  <34.051891, 29.543852, 48.177197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634960, 29.260218, 48.541431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.683628, 29.656731, 48.521225>,  <34.712830, 29.894638, 48.509102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.683628, 29.656731, 48.521225>,  <34.634960, 29.260218, 48.541431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683628, 29.656731, 48.521225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040768, 0.045859, 0.998116,
		0.991733, -0.123503, -0.034833,
		0.121673, 0.991284, -0.050515,
		34.720131, 29.954115, 48.506069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031525, 29.324776, 49.120068>,  <34.634960, 29.260218, 48.541431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031525, 29.324776, 49.120068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914761, 29.686522, 48.995544>,  <34.844700, 29.903568, 48.920830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914761, 29.686522, 48.995544>,  <35.031525, 29.324776, 49.120068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914761, 29.686522, 48.995544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031330, 0.334348, 0.941929,
		0.955932, 0.265207, -0.125934,
		-0.291912, 0.904365, -0.311305,
		34.827187, 29.957830, 48.902153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529720, 29.818226, 49.401672>,  <35.031525, 29.324776, 49.120068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529720, 29.818226, 49.401672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186211, 30.012171, 49.335434>,  <34.980106, 30.128538, 49.295692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186211, 30.012171, 49.335434>,  <35.529720, 29.818226, 49.401672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186211, 30.012171, 49.335434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057061, 0.230685, 0.971354,
		0.509172, 0.843620, -0.170439,
		-0.858771, 0.484861, -0.165596,
		34.928577, 30.157629, 49.285755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502914, 30.504501, 49.784313>,  <35.529720, 29.818226, 49.401672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502914, 30.504501, 49.784313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125843, 30.383276, 49.728439>,  <34.899601, 30.310541, 49.694916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125843, 30.383276, 49.728439>,  <35.502914, 30.504501, 49.784313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125843, 30.383276, 49.728439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171769, 0.081796, 0.981736,
		-0.286102, 0.949453, -0.129164,
		-0.942677, -0.303063, -0.139685,
		34.843040, 30.292356, 49.686535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061230, 30.970871, 50.127510>,  <35.502914, 30.504501, 49.784313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061230, 30.970871, 50.127510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.838146, 30.645185, 50.062992>,  <34.704296, 30.449774, 50.024281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.838146, 30.645185, 50.062992>,  <35.061230, 30.970871, 50.127510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838146, 30.645185, 50.062992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287886, 0.007482, 0.957635,
		-0.778511, 0.580520, -0.238573,
		-0.557712, -0.814211, -0.161298,
		34.670834, 30.400923, 50.014603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587673, 31.103603, 50.610451>,  <35.061230, 30.970871, 50.127510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587673, 31.103603, 50.610451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.567219, 30.709732, 50.543766>,  <34.554947, 30.473410, 50.503754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.567219, 30.709732, 50.543766>,  <34.587673, 31.103603, 50.610451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567219, 30.709732, 50.543766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105993, -0.160636, 0.981306,
		-0.993051, 0.067851, -0.096154,
		-0.051136, -0.984679, -0.166711,
		34.551876, 30.414328, 50.493752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956718, 30.898878, 50.842106>,  <34.587673, 31.103603, 50.610451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956718, 30.898878, 50.842106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.758625, 31.204752, 51.007030>,  <33.639771, 31.388277, 51.105984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.758625, 31.204752, 51.007030>,  <33.956718, 30.898878, 50.842106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758625, 31.204752, 51.007030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264698, 0.319219, -0.909964,
		-0.827454, -0.559781, 0.044323,
		-0.495232, 0.764686, 0.412312,
		33.610054, 31.434158, 51.130726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220882, 30.902933, 50.670689>,  <33.956718, 30.898878, 50.842106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220882, 30.902933, 50.670689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.336353, 31.273636, 50.766842>,  <33.405636, 31.496058, 50.824535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.336353, 31.273636, 50.766842>,  <33.220882, 30.902933, 50.670689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336353, 31.273636, 50.766842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335040, 0.332981, -0.881404,
		-0.896891, 0.173903, 0.406625,
		0.288677, 0.926759, 0.240383,
		33.422955, 31.551664, 50.838959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834476, 31.482550, 50.163078>,  <33.220882, 30.902933, 50.670689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834476, 31.482550, 50.163078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.070522, 31.745544, 50.350475>,  <33.212151, 31.903341, 50.462914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.070522, 31.745544, 50.350475>,  <32.834476, 31.482550, 50.163078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070522, 31.745544, 50.350475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094132, 0.520307, -0.848776,
		-0.801815, 0.544972, 0.245149,
		0.590111, 0.657485, 0.468489,
		33.247555, 31.942789, 50.491020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532215, 32.098248, 50.081257>,  <32.834476, 31.482550, 50.163078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532215, 32.098248, 50.081257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910713, 32.183014, 50.178997>,  <33.137814, 32.233875, 50.237640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910713, 32.183014, 50.178997>,  <32.532215, 32.098248, 50.081257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910713, 32.183014, 50.178997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071027, 0.600875, -0.796181,
		-0.315550, 0.770739, 0.553524,
		0.946247, 0.211920, 0.244350,
		33.194588, 32.246590, 50.252300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639458, 32.875572, 50.140816>,  <32.532215, 32.098248, 50.081257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639458, 32.875572, 50.140816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.000637, 32.715229, 50.078846>,  <33.217346, 32.619022, 50.041664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.000637, 32.715229, 50.078846>,  <32.639458, 32.875572, 50.140816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000637, 32.715229, 50.078846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127157, 0.593555, -0.794685,
		0.410507, 0.697860, 0.586921,
		0.902948, -0.400854, -0.154920,
		33.271523, 32.594975, 50.032372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054409, 33.433182, 50.005123>,  <32.639458, 32.875572, 50.140816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054409, 33.433182, 50.005123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.266552, 33.136135, 49.841537>,  <33.393837, 32.957909, 49.743385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.266552, 33.136135, 49.841537>,  <33.054409, 33.433182, 50.005123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266552, 33.136135, 49.841537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155211, 0.559296, -0.814308,
		0.833447, 0.368396, 0.411887,
		0.530354, -0.742612, -0.408964,
		33.425659, 32.913353, 49.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746735, 33.647293, 49.806057>,  <33.054409, 33.433182, 50.005123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746735, 33.647293, 49.806057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643703, 33.332592, 49.581673>,  <33.581886, 33.143772, 49.447041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643703, 33.332592, 49.581673>,  <33.746735, 33.647293, 49.806057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643703, 33.332592, 49.581673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099017, 0.556003, -0.825261,
		0.961171, -0.268113, -0.065312,
		-0.257577, -0.786750, -0.560962,
		33.566429, 33.096565, 49.413383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425346, 33.763580, 49.765663>,  <33.746735, 33.647293, 49.806057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425346, 33.763580, 49.765663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698193, 34.050049, 49.824749>,  <34.861900, 34.221931, 49.860199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698193, 34.050049, 49.824749>,  <34.425346, 33.763580, 49.765663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698193, 34.050049, 49.824749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281965, -0.443975, 0.850519,
		0.674700, -0.538499, -0.504776,
		0.682111, 0.716174, 0.147712,
		34.902824, 34.264900, 49.869064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030285, 33.455143, 50.116932>,  <34.425346, 33.763580, 49.765663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030285, 33.455143, 50.116932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112499, 33.835865, 50.207985>,  <35.161827, 34.064301, 50.262615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112499, 33.835865, 50.207985>,  <35.030285, 33.455143, 50.116932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112499, 33.835865, 50.207985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275628, -0.279479, 0.919739,
		0.939035, -0.126294, -0.319787,
		0.205531, 0.951809, 0.227631,
		35.174160, 34.121407, 50.276276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676888, 33.476322, 50.437447>,  <35.030285, 33.455143, 50.116932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676888, 33.476322, 50.437447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500217, 33.816563, 50.551575>,  <35.394215, 34.020706, 50.620052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500217, 33.816563, 50.551575>,  <35.676888, 33.476322, 50.437447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500217, 33.816563, 50.551575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227475, -0.201464, 0.952716,
		0.867861, 0.485691, -0.104509,
		-0.441671, 0.850598, 0.285325,
		35.367718, 34.071743, 50.637173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217625, 33.879074, 50.755428>,  <35.676888, 33.476322, 50.437447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217625, 33.879074, 50.755428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.860508, 34.020290, 50.867352>,  <35.646236, 34.105019, 50.934505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.860508, 34.020290, 50.867352>,  <36.217625, 33.879074, 50.755428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860508, 34.020290, 50.867352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299534, 0.001317, 0.954085,
		0.336459, 0.935608, -0.106923,
		-0.892790, 0.353038, 0.279803,
		35.592670, 34.126202, 50.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312881, 34.302536, 51.281693>,  <36.217625, 33.879074, 50.755428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312881, 34.302536, 51.281693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920048, 34.264790, 51.346947>,  <35.684349, 34.242142, 51.386097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920048, 34.264790, 51.346947>,  <36.312881, 34.302536, 51.281693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920048, 34.264790, 51.346947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147172, 0.156658, 0.976626,
		-0.117718, 0.983134, -0.139962,
		-0.982081, -0.094368, 0.163131,
		35.625423, 34.236481, 51.395885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286064, 34.713760, 51.772152>,  <36.312881, 34.302536, 51.281693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286064, 34.713760, 51.772152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968987, 34.472355, 51.806587>,  <35.778740, 34.327511, 51.827248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968987, 34.472355, 51.806587>,  <36.286064, 34.713760, 51.772152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968987, 34.472355, 51.806587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080135, 0.036837, 0.996103,
		-0.604334, 0.796500, 0.019162,
		-0.792691, -0.603515, 0.086089,
		35.731178, 34.291302, 51.832413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910606, 35.086906, 52.270203>,  <36.286064, 34.713760, 51.772152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910606, 35.086906, 52.270203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795731, 34.704304, 52.249767>,  <35.726807, 34.474743, 52.237507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795731, 34.704304, 52.249767>,  <35.910606, 35.086906, 52.270203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795731, 34.704304, 52.249767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159385, -0.100307, 0.982107,
		-0.944521, 0.273907, 0.181260,
		-0.287188, -0.956511, -0.051086,
		35.709576, 34.417351, 52.234440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489807, 34.910316, 52.858269>,  <35.910606, 35.086906, 52.270203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489807, 34.910316, 52.858269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.610500, 34.550774, 52.731144>,  <35.682919, 34.335049, 52.654869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.610500, 34.550774, 52.731144>,  <35.489807, 34.910316, 52.858269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610500, 34.550774, 52.731144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171141, -0.276868, 0.945545,
		-0.937905, -0.339696, 0.070291,
		0.301737, -0.898861, -0.317812,
		35.701023, 34.281116, 52.635799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359444, 34.409519, 53.370361>,  <35.489807, 34.910316, 52.858269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359444, 34.409519, 53.370361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653301, 34.230564, 53.166344>,  <35.829617, 34.123192, 53.043934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653301, 34.230564, 53.166344>,  <35.359444, 34.409519, 53.370361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653301, 34.230564, 53.166344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423789, -0.284464, 0.859932,
		-0.529813, -0.847893, -0.019380,
		0.734643, -0.447390, -0.510041,
		35.873695, 34.096348, 53.013332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.879440, 37.112099, 37.144310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202438, 36.880100, 37.187290>,  <35.396236, 36.740902, 37.213078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202438, 36.880100, 37.187290>,  <34.879440, 37.112099, 37.144310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202438, 36.880100, 37.187290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247803, -0.168254, 0.954088,
		-0.535293, -0.797051, -0.279590,
		0.807499, -0.580000, 0.107446,
		35.444687, 36.706100, 37.219524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714859, 36.459816, 37.473606>,  <34.879440, 37.112099, 37.144310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714859, 36.459816, 37.473606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104000, 36.532238, 37.531269>,  <35.337482, 36.575691, 37.565868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104000, 36.532238, 37.531269>,  <34.714859, 36.459816, 37.473606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104000, 36.532238, 37.531269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081415, -0.315347, 0.945477,
		0.216644, -0.931544, -0.292045,
		0.972850, 0.181056, 0.144160,
		35.395855, 36.586555, 37.574516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966164, 35.861599, 37.805756>,  <34.714859, 36.459816, 37.473606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966164, 35.861599, 37.805756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205891, 36.169174, 37.894806>,  <35.349728, 36.353718, 37.948235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205891, 36.169174, 37.894806>,  <34.966164, 35.861599, 37.805756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205891, 36.169174, 37.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231002, -0.100147, 0.967785,
		0.766458, -0.631436, 0.117605,
		0.599317, 0.768934, 0.222622,
		35.385685, 36.399853, 37.961594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406048, 35.627636, 38.379475>,  <34.966164, 35.861599, 37.805756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406048, 35.627636, 38.379475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441841, 36.026020, 38.382210>,  <35.463318, 36.265053, 38.383850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441841, 36.026020, 38.382210>,  <35.406048, 35.627636, 38.379475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441841, 36.026020, 38.382210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247855, 0.015614, 0.968671,
		0.964655, -0.088378, 0.248252,
		0.089486, 0.995964, 0.006843,
		35.468685, 36.324810, 38.384262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826714, 35.812748, 38.925095>,  <35.406048, 35.627636, 38.379475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826714, 35.812748, 38.925095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610294, 36.145294, 38.874344>,  <35.480442, 36.344822, 38.843891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610294, 36.145294, 38.874344>,  <35.826714, 35.812748, 38.925095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610294, 36.145294, 38.874344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129830, 0.066490, 0.989304,
		0.830907, 0.551738, 0.071962,
		-0.541052, 0.831363, -0.126879,
		35.447979, 36.394703, 38.836281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092644, 36.248417, 39.436005>,  <35.826714, 35.812748, 38.925095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092644, 36.248417, 39.436005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749889, 36.425522, 39.330395>,  <35.544235, 36.531784, 39.267029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749889, 36.425522, 39.330395>,  <36.092644, 36.248417, 39.436005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749889, 36.425522, 39.330395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183009, 0.217522, 0.958745,
		0.481925, 0.869855, -0.105362,
		-0.856887, 0.442761, -0.264021,
		35.492825, 36.558350, 39.251190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177979, 36.865883, 39.706268>,  <36.092644, 36.248417, 39.436005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177979, 36.865883, 39.706268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782906, 36.824036, 39.659733>,  <35.545860, 36.798927, 39.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782906, 36.824036, 39.659733>,  <36.177979, 36.865883, 39.706268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782906, 36.824036, 39.659733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142962, 0.301281, 0.942757,
		-0.063574, 0.947779, -0.312527,
		-0.987684, -0.104615, -0.116343,
		35.486599, 36.792652, 39.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952324, 37.313641, 40.107849>,  <36.177979, 36.865883, 39.706268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952324, 37.313641, 40.107849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621540, 37.100288, 40.036690>,  <35.423069, 36.972279, 39.993996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621540, 37.100288, 40.036690>,  <35.952324, 37.313641, 40.107849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621540, 37.100288, 40.036690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315235, 0.177829, 0.932204,
		-0.465582, 0.826973, -0.315197,
		-0.826958, -0.533379, -0.177897,
		35.373451, 36.940273, 39.983322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365288, 37.705460, 40.372738>,  <35.952324, 37.313641, 40.107849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365288, 37.705460, 40.372738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232929, 37.330727, 40.327404>,  <35.153515, 37.105885, 40.300205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232929, 37.330727, 40.327404>,  <35.365288, 37.705460, 40.372738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232929, 37.330727, 40.327404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469495, 0.059259, 0.880944,
		-0.818585, 0.344711, -0.459449,
		-0.330897, -0.936836, -0.113332,
		35.133659, 37.049675, 40.293404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648460, 37.726460, 40.655151>,  <35.365288, 37.705460, 40.372738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648460, 37.726460, 40.655151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780949, 37.350121, 40.683701>,  <34.860443, 37.124317, 40.700829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780949, 37.350121, 40.683701>,  <34.648460, 37.726460, 40.655151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780949, 37.350121, 40.683701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101472, 0.039684, 0.994047,
		-0.938080, -0.336494, -0.082325,
		0.331223, -0.940849, 0.071371,
		34.880314, 37.067867, 40.705112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038177, 37.363480, 40.923298>,  <34.648460, 37.726460, 40.655151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038177, 37.363480, 40.923298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362946, 37.136650, 40.978741>,  <34.557808, 37.000553, 41.012005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362946, 37.136650, 40.978741>,  <34.038177, 37.363480, 40.923298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362946, 37.136650, 40.978741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250987, -0.124728, 0.959921,
		-0.527059, -0.814167, -0.243598,
		0.811920, -0.567075, 0.138606,
		34.606522, 36.966526, 41.020321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777855, 36.845642, 41.263069>,  <34.038177, 37.363480, 40.923298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777855, 36.845642, 41.263069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167702, 36.803291, 41.341969>,  <34.401611, 36.777882, 41.389309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167702, 36.803291, 41.341969>,  <33.777855, 36.845642, 41.263069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167702, 36.803291, 41.341969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219175, -0.271931, 0.937025,
		-0.045567, -0.956475, -0.288234,
		0.974621, -0.105871, 0.197245,
		34.460087, 36.771530, 41.401142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139149, 36.227482, 41.067955>,  <33.777855, 36.845642, 41.263069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139149, 36.227482, 41.067955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080589, 35.840317, 40.986263>,  <33.045456, 35.608017, 40.937248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080589, 35.840317, 40.986263>,  <33.139149, 36.227482, 41.067955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080589, 35.840317, 40.986263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394293, 0.246437, -0.885326,
		0.907249, -0.049082, -0.417719,
		-0.146396, -0.967915, -0.204227,
		33.036671, 35.549942, 40.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458004, 36.082390, 40.387089>,  <33.139149, 36.227482, 41.067955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458004, 36.082390, 40.387089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171734, 35.811943, 40.457146>,  <32.999969, 35.649677, 40.499180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171734, 35.811943, 40.457146>,  <33.458004, 36.082390, 40.387089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171734, 35.811943, 40.457146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424697, 0.222201, -0.877644,
		0.554472, -0.702492, -0.446168,
		-0.715677, -0.676115, 0.175142,
		32.957031, 35.609108, 40.509689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436241, 35.813560, 39.793255>,  <33.458004, 36.082390, 40.387089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436241, 35.813560, 39.793255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087200, 35.740551, 39.974476>,  <32.877777, 35.696747, 40.083206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087200, 35.740551, 39.974476>,  <33.436241, 35.813560, 39.793255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087200, 35.740551, 39.974476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480212, 0.151103, -0.864039,
		0.089249, -0.971521, -0.219502,
		-0.872600, -0.182522, 0.453050,
		32.825420, 35.685795, 40.110390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995926, 35.385834, 39.366199>,  <33.436241, 35.813560, 39.793255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995926, 35.385834, 39.366199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695904, 35.520687, 39.593800>,  <32.515888, 35.601597, 39.730358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695904, 35.520687, 39.593800>,  <32.995926, 35.385834, 39.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695904, 35.520687, 39.593800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496378, 0.281587, -0.821169,
		-0.437062, -0.898361, -0.043863,
		-0.750057, 0.337129, 0.568998,
		32.470886, 35.621826, 39.764500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232990, 34.993000, 39.153873>,  <32.995926, 35.385834, 39.366199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232990, 34.993000, 39.153873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215076, 35.345222, 39.342602>,  <32.204327, 35.556557, 39.455837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215076, 35.345222, 39.342602>,  <32.232990, 34.993000, 39.153873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215076, 35.345222, 39.342602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609421, 0.350153, -0.711336,
		-0.791581, -0.319394, 0.520948,
		-0.044785, 0.880557, 0.471820,
		32.201641, 35.609390, 39.484146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500454, 35.167984, 38.970673>,  <32.232990, 34.993000, 39.153873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500454, 35.167984, 38.970673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690861, 35.493275, 39.104576>,  <31.805105, 35.688450, 39.184917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690861, 35.493275, 39.104576>,  <31.500454, 35.167984, 38.970673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690861, 35.493275, 39.104576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398024, 0.538659, -0.742579,
		-0.784211, 0.220235, 0.580095,
		0.476016, 0.813230, 0.334763,
		31.833666, 35.737244, 39.205006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021936, 35.748394, 38.828083>,  <31.500454, 35.167984, 38.970673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021936, 35.748394, 38.828083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372034, 35.937515, 38.868877>,  <31.582092, 36.050987, 38.893353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372034, 35.937515, 38.868877>,  <31.021936, 35.748394, 38.828083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372034, 35.937515, 38.868877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151438, 0.468125, -0.870589,
		-0.459360, 0.746535, 0.481326,
		0.875246, 0.472805, 0.101984,
		31.634607, 36.079357, 38.899471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903488, 36.531189, 38.574669>,  <31.021936, 35.748394, 38.828083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903488, 36.531189, 38.574669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291801, 36.438110, 38.551239>,  <31.524790, 36.382263, 38.537182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291801, 36.438110, 38.551239>,  <30.903488, 36.531189, 38.574669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291801, 36.438110, 38.551239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032925, 0.370985, -0.928055,
		0.237684, 0.899013, 0.367808,
		0.970784, -0.232694, -0.058577,
		31.583036, 36.368301, 38.533665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180395, 37.080002, 38.342251>,  <30.903488, 36.531189, 38.574669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180395, 37.080002, 38.342251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444750, 36.791897, 38.257923>,  <31.603363, 36.619034, 38.207329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444750, 36.791897, 38.257923>,  <31.180395, 37.080002, 38.342251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444750, 36.791897, 38.257923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072968, 0.217906, -0.973238,
		0.746928, 0.658585, 0.091455,
		0.660889, -0.720266, -0.210816,
		31.643017, 36.575817, 38.194679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520237, 37.302879, 37.778614>,  <31.180395, 37.080002, 38.342251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520237, 37.302879, 37.778614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635973, 36.920219, 37.765381>,  <31.705416, 36.690624, 37.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635973, 36.920219, 37.765381>,  <31.520237, 37.302879, 37.778614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635973, 36.920219, 37.765381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038073, 0.046036, -0.998214,
		0.956468, 0.287566, 0.049743,
		0.289342, -0.956654, -0.033083,
		31.722776, 36.633224, 37.755455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243431, 37.263008, 37.343155>,  <31.520237, 37.302879, 37.778614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243431, 37.263008, 37.343155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091606, 36.893650, 37.320286>,  <32.000511, 36.672035, 37.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091606, 36.893650, 37.320286>,  <32.243431, 37.263008, 37.343155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091606, 36.893650, 37.320286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150992, -0.000859, -0.988535,
		0.912761, -0.383844, 0.139751,
		-0.379563, -0.923397, -0.057173,
		31.977737, 36.616631, 37.303135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716335, 36.800602, 37.055225>,  <32.243431, 37.263008, 37.343155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716335, 36.800602, 37.055225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375610, 36.612404, 36.963100>,  <32.171173, 36.499485, 36.907825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375610, 36.612404, 36.963100>,  <32.716335, 36.800602, 37.055225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375610, 36.612404, 36.963100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329169, -0.138743, -0.934023,
		0.407503, -0.871425, 0.273057,
		-0.851816, -0.470499, -0.230308,
		32.120064, 36.471256, 36.894009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860142, 36.239613, 36.662052>,  <32.716335, 36.800602, 37.055225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860142, 36.239613, 36.662052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470924, 36.291134, 36.585537>,  <32.237392, 36.322048, 36.539627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470924, 36.291134, 36.585537>,  <32.860142, 36.239613, 36.662052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470924, 36.291134, 36.585537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160628, -0.216609, -0.962953,
		-0.165467, -0.967724, 0.190081,
		-0.973046, 0.128804, -0.191285,
		32.179012, 36.329777, 36.528152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674564, 35.691727, 36.317383>,  <32.860142, 36.239613, 36.662052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674564, 35.691727, 36.317383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366058, 35.927345, 36.220909>,  <32.180954, 36.068714, 36.163025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366058, 35.927345, 36.220909>,  <32.674564, 35.691727, 36.317383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366058, 35.927345, 36.220909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027655, -0.347552, -0.937253,
		-0.635909, -0.729544, 0.251765,
		-0.771269, 0.589045, -0.241187,
		32.134678, 36.104057, 36.148552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241997, 35.283409, 35.888298>,  <32.674564, 35.691727, 36.317383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241997, 35.283409, 35.888298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331959, 35.142696, 36.251762>,  <32.385937, 35.058270, 36.469841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331959, 35.142696, 36.251762>,  <32.241997, 35.283409, 35.888298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331959, 35.142696, 36.251762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643115, -0.754168, -0.132795,
		0.732000, -0.554509, -0.395849,
		0.224900, -0.351783, 0.908663,
		32.399429, 35.037163, 36.524361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456383, 34.605946, 35.952885>,  <32.241997, 35.283409, 35.888298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456383, 34.605946, 35.952885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263321, 34.678589, 36.295597>,  <32.147484, 34.722176, 36.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263321, 34.678589, 36.295597>,  <32.456383, 34.605946, 35.952885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263321, 34.678589, 36.295597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603405, -0.777992, -0.175014,
		0.634784, -0.601455, 0.485079,
		-0.482651, 0.181604, 0.856778,
		32.118526, 34.733070, 36.552631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884800, 34.030804, 36.071808>,  <32.456383, 34.605946, 35.952885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884800, 34.030804, 36.071808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235989, 33.844646, 36.026955>,  <32.446701, 33.732952, 36.000042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235989, 33.844646, 36.026955>,  <31.884800, 34.030804, 36.071808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235989, 33.844646, 36.026955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138146, 0.022047, 0.990166,
		-0.458347, -0.884828, 0.083649,
		0.877972, -0.465395, -0.112130,
		32.499382, 33.705029, 35.993317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979019, 33.333221, 36.485752>,  <31.884800, 34.030804, 36.071808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979019, 33.333221, 36.485752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345394, 33.483780, 36.430058>,  <32.565220, 33.574116, 36.396641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345394, 33.483780, 36.430058>,  <31.979019, 33.333221, 36.485752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345394, 33.483780, 36.430058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239662, -0.234710, 0.942058,
		0.321905, -0.896235, -0.305187,
		0.915936, 0.376395, -0.139239,
		32.620174, 33.596699, 36.388287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453789, 32.806538, 36.767975>,  <31.979019, 33.333221, 36.485752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453789, 32.806538, 36.767975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644096, 33.158161, 36.779953>,  <32.758282, 33.369137, 36.787140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644096, 33.158161, 36.779953>,  <32.453789, 32.806538, 36.767975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644096, 33.158161, 36.779953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310593, -0.199757, 0.929316,
		0.822909, -0.432835, -0.368068,
		0.475765, 0.879063, 0.029947,
		32.786827, 33.421879, 36.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003986, 32.713474, 37.161861>,  <32.453789, 32.806538, 36.767975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003986, 32.713474, 37.161861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984287, 33.112862, 37.171917>,  <32.972466, 33.352493, 37.177952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984287, 33.112862, 37.171917>,  <33.003986, 32.713474, 37.161861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984287, 33.112862, 37.171917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374697, -0.004863, 0.927134,
		0.925838, 0.055082, -0.373884,
		-0.049250, 0.998470, 0.025141,
		32.969513, 33.412403, 37.179459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642334, 32.903996, 37.406578>,  <33.003986, 32.713474, 37.161861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642334, 32.903996, 37.406578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397949, 33.213345, 37.474243>,  <33.251316, 33.398952, 37.514843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397949, 33.213345, 37.474243>,  <33.642334, 32.903996, 37.406578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397949, 33.213345, 37.474243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489212, 0.200832, 0.848727,
		0.622408, 0.601301, -0.501044,
		-0.610966, 0.773371, 0.169165,
		33.214661, 33.445354, 37.524994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030399, 33.473988, 37.606323>,  <33.642334, 32.903996, 37.406578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030399, 33.473988, 37.606323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662216, 33.550362, 37.742741>,  <33.441307, 33.596184, 37.824589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662216, 33.550362, 37.742741>,  <34.030399, 33.473988, 37.606323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662216, 33.550362, 37.742741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380737, 0.240810, 0.892776,
		0.088333, 0.951607, -0.294350,
		-0.920454, 0.190931, 0.341041,
		33.386082, 33.607639, 37.845055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068481, 34.060318, 38.080238>,  <34.030399, 33.473988, 37.606323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068481, 34.060318, 38.080238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722240, 33.874058, 38.153889>,  <33.514496, 33.762302, 38.198078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722240, 33.874058, 38.153889>,  <34.068481, 34.060318, 38.080238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722240, 33.874058, 38.153889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143641, 0.121355, 0.982161,
		-0.479693, 0.876606, -0.038158,
		-0.865599, -0.465655, 0.184130,
		33.462563, 33.734360, 38.209129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902588, 34.182121, 38.769413>,  <34.068481, 34.060318, 38.080238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902588, 34.182121, 38.769413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638535, 33.884758, 38.726383>,  <33.480103, 33.706341, 38.700565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638535, 33.884758, 38.726383>,  <33.902588, 34.182121, 38.769413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638535, 33.884758, 38.726383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165447, -0.283601, 0.944562,
		-0.732702, 0.605738, 0.310209,
		-0.660133, -0.743406, -0.107578,
		33.440495, 33.661736, 38.694111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310577, 34.235558, 39.329300>,  <33.902588, 34.182121, 38.769413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310577, 34.235558, 39.329300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339569, 33.855469, 39.208084>,  <33.356964, 33.627415, 39.135353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339569, 33.855469, 39.208084>,  <33.310577, 34.235558, 39.329300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339569, 33.855469, 39.208084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078216, -0.297487, 0.951516,
		-0.994298, -0.092668, 0.052760,
		0.072480, -0.950218, -0.303039,
		33.361313, 33.570404, 39.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935654, 33.852348, 39.742733>,  <33.310577, 34.235558, 39.329300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935654, 33.852348, 39.742733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151859, 33.558819, 39.578129>,  <33.281582, 33.382702, 39.479366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151859, 33.558819, 39.578129>,  <32.935654, 33.852348, 39.742733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151859, 33.558819, 39.578129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197304, -0.364917, 0.909894,
		-0.817870, -0.573007, -0.052458,
		0.540518, -0.733825, -0.411511,
		33.314014, 33.338673, 39.454674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781654, 33.239315, 40.107880>,  <32.935654, 33.852348, 39.742733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781654, 33.239315, 40.107880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124710, 33.161453, 39.917480>,  <33.330544, 33.114738, 39.803242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124710, 33.161453, 39.917480>,  <32.781654, 33.239315, 40.107880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124710, 33.161453, 39.917480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272247, -0.613394, 0.741370,
		-0.436280, -0.765413, -0.473076,
		0.857637, -0.194651, -0.475994,
		33.382000, 33.103058, 39.774681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831707, 32.569855, 40.127106>,  <32.781654, 33.239315, 40.107880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831707, 32.569855, 40.127106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188908, 32.744514, 40.083500>,  <33.403229, 32.849312, 40.057335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188908, 32.744514, 40.083500>,  <32.831707, 32.569855, 40.127106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188908, 32.744514, 40.083500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308899, -0.418508, 0.854068,
		0.327306, -0.796359, -0.508610,
		0.893002, 0.436650, -0.109014,
		33.456810, 32.875511, 40.050797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194294, 31.976948, 40.129463>,  <32.831707, 32.569855, 40.127106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194294, 31.976948, 40.129463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450722, 32.274708, 40.204197>,  <33.604576, 32.453362, 40.249039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450722, 32.274708, 40.204197>,  <33.194294, 31.976948, 40.129463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450722, 32.274708, 40.204197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397557, -0.530312, 0.748811,
		0.656494, -0.405759, -0.635905,
		0.641065, 0.744398, 0.186835,
		33.643040, 32.498028, 40.260246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820885, 31.675142, 40.340923>,  <33.194294, 31.976948, 40.129463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820885, 31.675142, 40.340923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837700, 32.047119, 40.487045>,  <33.847790, 32.270306, 40.574718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837700, 32.047119, 40.487045>,  <33.820885, 31.675142, 40.340923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837700, 32.047119, 40.487045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339546, -0.357159, 0.870141,
		0.939650, 0.087461, -0.330770,
		0.042034, 0.929940, 0.365301,
		33.850311, 32.326099, 40.596634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382935, 31.548927, 40.802681>,  <33.820885, 31.675142, 40.340923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382935, 31.548927, 40.802681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207600, 31.894598, 40.901524>,  <34.102398, 32.102001, 40.960831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207600, 31.894598, 40.901524>,  <34.382935, 31.548927, 40.802681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207600, 31.894598, 40.901524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381785, -0.069876, 0.921606,
		0.813697, 0.498313, -0.299300,
		-0.438335, 0.864176, 0.247107,
		34.076099, 32.153851, 40.975655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914482, 31.919277, 41.097610>,  <34.382935, 31.548927, 40.802681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914482, 31.919277, 41.097610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587547, 32.110924, 41.225613>,  <34.391384, 32.225910, 41.302414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587547, 32.110924, 41.225613>,  <34.914482, 31.919277, 41.097610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587547, 32.110924, 41.225613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294797, -0.129441, 0.946752,
		0.495026, 0.868155, -0.035445,
		-0.817340, 0.479116, 0.320006,
		34.342346, 32.254658, 41.321613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170380, 32.398155, 41.564590>,  <34.914482, 31.919277, 41.097610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170380, 32.398155, 41.564590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794262, 32.303864, 41.662800>,  <34.568592, 32.247288, 41.721725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794262, 32.303864, 41.662800>,  <35.170380, 32.398155, 41.564590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794262, 32.303864, 41.662800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295208, -0.205736, 0.933019,
		-0.169430, 0.949791, 0.263041,
		-0.940290, -0.235733, 0.245528,
		34.512177, 32.233143, 41.736458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116249, 32.747253, 42.212921>,  <35.170380, 32.398155, 41.564590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116249, 32.747253, 42.212921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804440, 32.497032, 42.200050>,  <34.617355, 32.346901, 42.192329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804440, 32.497032, 42.200050>,  <35.116249, 32.747253, 42.212921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804440, 32.497032, 42.200050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060773, -0.126652, 0.990084,
		-0.623420, 0.769836, 0.136745,
		-0.779521, -0.625549, -0.032172,
		34.570583, 32.309368, 42.190399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817703, 32.928463, 42.743332>,  <35.116249, 32.747253, 42.212921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817703, 32.928463, 42.743332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672794, 32.561325, 42.678440>,  <34.585850, 32.341042, 42.639503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672794, 32.561325, 42.678440>,  <34.817703, 32.928463, 42.743332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672794, 32.561325, 42.678440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084935, -0.140820, 0.986385,
		-0.928196, 0.371114, -0.026942,
		-0.362268, -0.917847, -0.162229,
		34.564114, 32.285973, 42.629772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343056, 32.810242, 43.282524>,  <34.817703, 32.928463, 42.743332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343056, 32.810242, 43.282524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456387, 32.453766, 43.140820>,  <34.524387, 32.239880, 43.055798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456387, 32.453766, 43.140820>,  <34.343056, 32.810242, 43.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456387, 32.453766, 43.140820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017719, -0.364467, 0.931048,
		-0.958859, -0.270070, -0.087473,
		0.283329, -0.891194, -0.354257,
		34.541386, 32.186409, 43.034542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184883, 32.418392, 43.823349>,  <34.343056, 32.810242, 43.282524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184883, 32.418392, 43.823349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392769, 32.149853, 43.611996>,  <34.517502, 31.988729, 43.485184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392769, 32.149853, 43.611996>,  <34.184883, 32.418392, 43.823349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392769, 32.149853, 43.611996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221724, -0.491286, 0.842305,
		-0.825065, -0.554915, -0.106477,
		0.519718, -0.671347, -0.528380,
		34.548683, 31.948448, 43.453480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872704, 31.674862, 43.876854>,  <34.184883, 32.418392, 43.823349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872704, 31.674862, 43.876854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256966, 31.659880, 43.766769>,  <34.487522, 31.650890, 43.700718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256966, 31.659880, 43.766769>,  <33.872704, 31.674862, 43.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256966, 31.659880, 43.766769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178011, -0.677570, 0.713590,
		-0.213204, -0.734504, -0.644242,
		0.960654, -0.037458, -0.275210,
		34.545162, 31.648642, 43.684208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012833, 30.980026, 43.629421>,  <33.872704, 31.674862, 43.876854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012833, 30.980026, 43.629421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365036, 31.134830, 43.738914>,  <34.576359, 31.227713, 43.804611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365036, 31.134830, 43.738914>,  <34.012833, 30.980026, 43.629421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365036, 31.134830, 43.738914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095670, -0.710658, 0.697003,
		0.464282, -0.587526, -0.662763,
		0.880505, 0.387012, 0.273737,
		34.629189, 31.250935, 43.821037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472458, 30.456841, 43.771450>,  <34.012833, 30.980026, 43.629421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472458, 30.456841, 43.771450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649662, 30.761543, 43.960541>,  <34.755985, 30.944365, 44.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649662, 30.761543, 43.960541>,  <34.472458, 30.456841, 43.771450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649662, 30.761543, 43.960541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327790, -0.628413, 0.705444,
		0.834446, -0.157559, -0.528087,
		0.443006, 0.761756, 0.472730,
		34.782562, 30.990070, 44.102360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148350, 30.115328, 44.042618>,  <34.472458, 30.456841, 43.771450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148350, 30.115328, 44.042618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108521, 30.464636, 44.233398>,  <35.084621, 30.674221, 44.347866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108521, 30.464636, 44.233398>,  <35.148350, 30.115328, 44.042618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108521, 30.464636, 44.233398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367789, -0.413086, 0.833121,
		0.924562, 0.258376, -0.280047,
		-0.099575, 0.873271, 0.476952,
		35.078648, 30.726618, 44.376484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815304, 30.205223, 44.533726>,  <35.148350, 30.115328, 44.042618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815304, 30.205223, 44.533726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529392, 30.455423, 44.658840>,  <35.357845, 30.605543, 44.733910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529392, 30.455423, 44.658840>,  <35.815304, 30.205223, 44.533726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529392, 30.455423, 44.658840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157014, -0.292303, 0.943348,
		0.681495, 0.723399, 0.110719,
		-0.714780, 0.625503, 0.312786,
		35.314957, 30.643074, 44.752678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241104, 30.857960, 44.619469>,  <35.815304, 30.205223, 44.533726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241104, 30.857960, 44.619469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564800, 30.624868, 44.589653>,  <36.759018, 30.485014, 44.571762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564800, 30.624868, 44.589653>,  <36.241104, 30.857960, 44.619469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564800, 30.624868, 44.589653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107794, -0.022561, -0.993917,
		0.577504, 0.812353, -0.081072,
		0.809240, -0.582730, -0.074538,
		36.807571, 30.450050, 44.567291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759979, 31.272739, 44.092693>,  <36.241104, 30.857960, 44.619469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759979, 31.272739, 44.092693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860397, 30.887407, 44.054813>,  <36.920647, 30.656208, 44.032085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860397, 30.887407, 44.054813>,  <36.759979, 31.272739, 44.092693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860397, 30.887407, 44.054813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133805, 0.131430, -0.982254,
		0.958683, 0.233919, 0.161893,
		0.251045, -0.963332, -0.094700,
		36.935711, 30.598408, 44.026402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240936, 31.342510, 43.538864>,  <36.759979, 31.272739, 44.092693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240936, 31.342510, 43.538864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121822, 30.962683, 43.578148>,  <37.050354, 30.734787, 43.601719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121822, 30.962683, 43.578148>,  <37.240936, 31.342510, 43.538864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121822, 30.962683, 43.578148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017706, -0.097368, -0.995091,
		0.954470, -0.298058, 0.012182,
		-0.297781, -0.949569, 0.098212,
		37.032490, 30.677813, 43.607613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558308, 31.052755, 43.075851>,  <37.240936, 31.342510, 43.538864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558308, 31.052755, 43.075851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305595, 30.753019, 43.155193>,  <37.153969, 30.573177, 43.202797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305595, 30.753019, 43.155193>,  <37.558308, 31.052755, 43.075851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305595, 30.753019, 43.155193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049107, -0.216686, -0.975005,
		0.773590, -0.625730, 0.100100,
		-0.631781, -0.749339, 0.198354,
		37.116062, 30.528217, 43.214699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788994, 30.565218, 42.623295>,  <37.558308, 31.052755, 43.075851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788994, 30.565218, 42.623295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413269, 30.469046, 42.721184>,  <37.187836, 30.411343, 42.779919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413269, 30.469046, 42.721184>,  <37.788994, 30.565218, 42.623295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413269, 30.469046, 42.721184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215551, -0.141358, -0.966207,
		0.266899, -0.960318, 0.080954,
		-0.939310, -0.240430, 0.244726,
		37.131477, 30.396917, 42.794601>
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
