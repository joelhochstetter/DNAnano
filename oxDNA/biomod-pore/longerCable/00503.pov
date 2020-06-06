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
	<23.860422, 34.994843, 34.761120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188559, 35.040752, 34.985214>,  <24.385441, 35.068298, 35.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188559, 35.040752, 34.985214>,  <23.860422, 34.994843, 34.761120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188559, 35.040752, 34.985214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381325, -0.839857, -0.386304,
		0.426182, 0.530534, -0.732737,
		0.820342, 0.114775, 0.560238,
		24.434662, 35.075184, 35.153286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495941, 35.045002, 34.408878>,  <23.860422, 34.994843, 34.761120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495941, 35.045002, 34.408878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581539, 34.890633, 34.767826>,  <24.632898, 34.798012, 34.983196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581539, 34.890633, 34.767826>,  <24.495941, 35.045002, 34.408878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.581539, 34.890633, 34.767826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456498, -0.772656, -0.441149,
		0.863606, 0.504052, 0.010826,
		0.213997, -0.385920, 0.897369,
		24.645739, 34.774857, 35.037037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157509, 34.924160, 34.038193>,  <24.495941, 35.045002, 34.408878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157509, 34.924160, 34.038193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414995, 34.653347, 34.180885>,  <25.569487, 34.490860, 34.266502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414995, 34.653347, 34.180885>,  <25.157509, 34.924160, 34.038193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414995, 34.653347, 34.180885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703815, 0.706789, 0.071372,
		-0.300458, 0.205132, 0.931475,
		0.643716, -0.677030, 0.356735,
		25.608110, 34.450237, 34.287907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559113, 35.182339, 34.692112>,  <25.157509, 34.924160, 34.038193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559113, 35.182339, 34.692112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756639, 34.917660, 34.466438>,  <25.875156, 34.758854, 34.331036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756639, 34.917660, 34.466438>,  <25.559113, 35.182339, 34.692112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756639, 34.917660, 34.466438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700270, 0.687262, -0.193116,
		0.515525, -0.299717, 0.802747,
		0.493818, -0.661696, -0.564184,
		25.904785, 34.719151, 34.297184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248667, 35.358276, 34.714355>,  <25.559113, 35.182339, 34.692112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248667, 35.358276, 34.714355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246006, 35.128716, 34.386795>,  <26.244410, 34.990978, 34.190258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246006, 35.128716, 34.386795>,  <26.248667, 35.358276, 34.714355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246006, 35.128716, 34.386795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751174, 0.537687, -0.382923,
		0.660070, -0.617684, 0.427520,
		-0.006654, -0.573898, -0.818900,
		26.244009, 34.956547, 34.141125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942757, 35.157867, 34.553085>,  <26.248667, 35.358276, 34.714355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942757, 35.157867, 34.553085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716265, 35.205151, 34.226795>,  <26.580370, 35.233521, 34.031021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716265, 35.205151, 34.226795>,  <26.942757, 35.157867, 34.553085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716265, 35.205151, 34.226795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589222, 0.750089, -0.300306,
		0.576369, -0.650687, -0.494373,
		-0.566230, 0.118209, -0.815727,
		26.546396, 35.240612, 33.982079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315104, 35.692741, 34.197422>,  <26.942757, 35.157867, 34.553085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315104, 35.692741, 34.197422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974710, 35.670372, 33.988537>,  <26.770475, 35.656952, 33.863205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974710, 35.670372, 33.988537>,  <27.315104, 35.692741, 34.197422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974710, 35.670372, 33.988537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238196, 0.845079, -0.478649,
		0.468075, -0.531710, -0.705826,
		-0.850981, -0.055919, -0.522211,
		26.719416, 35.653595, 33.831875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398977, 35.518337, 33.498531>,  <27.315104, 35.692741, 34.197422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398977, 35.518337, 33.498531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101608, 35.769436, 33.590843>,  <26.923187, 35.920094, 33.646233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101608, 35.769436, 33.590843>,  <27.398977, 35.518337, 33.498531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101608, 35.769436, 33.590843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514125, 0.757071, -0.403136,
		-0.427786, -0.181049, -0.885562,
		-0.743421, 0.627746, 0.230783,
		26.878582, 35.957760, 33.660080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166353, 36.017731, 32.918674>,  <27.398977, 35.518337, 33.498531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166353, 36.017731, 32.918674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032112, 36.225861, 33.232780>,  <26.951567, 36.350739, 33.421242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032112, 36.225861, 33.232780>,  <27.166353, 36.017731, 32.918674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032112, 36.225861, 33.232780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610554, 0.754955, -0.239302,
		-0.717352, 0.399134, -0.571050,
		-0.335604, 0.520321, 0.785262,
		26.931431, 36.381958, 33.468357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302433, 36.625916, 32.652630>,  <27.166353, 36.017731, 32.918674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302433, 36.625916, 32.652630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215681, 36.722542, 33.030964>,  <27.163630, 36.780518, 33.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215681, 36.722542, 33.030964>,  <27.302433, 36.625916, 32.652630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215681, 36.722542, 33.030964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538047, 0.838026, -0.090653,
		-0.814536, 0.489245, -0.311723,
		-0.216880, 0.241562, 0.945839,
		27.150618, 36.795010, 33.314716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057505, 37.274632, 32.667503>,  <27.302433, 36.625916, 32.652630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057505, 37.274632, 32.667503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188128, 37.209766, 33.039967>,  <27.266500, 37.170845, 33.263447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188128, 37.209766, 33.039967>,  <27.057505, 37.274632, 32.667503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188128, 37.209766, 33.039967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440736, 0.897635, 0.001764,
		-0.836130, 0.409820, 0.364600,
		0.326555, -0.162167, 0.931163,
		27.286095, 37.161118, 33.319317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950020, 37.957817, 33.044548>,  <27.057505, 37.274632, 32.667503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950020, 37.957817, 33.044548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240515, 37.738117, 33.209911>,  <27.414812, 37.606297, 33.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240515, 37.738117, 33.209911>,  <26.950020, 37.957817, 33.044548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240515, 37.738117, 33.209911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529172, 0.830521, 0.173816,
		-0.438811, 0.092531, 0.893802,
		0.726238, -0.549247, 0.413407,
		27.458385, 37.573341, 33.333935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005409, 38.063541, 33.766903>,  <26.950020, 37.957817, 33.044548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005409, 38.063541, 33.766903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348776, 37.985138, 33.577293>,  <27.554796, 37.938095, 33.463528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348776, 37.985138, 33.577293>,  <27.005409, 38.063541, 33.766903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348776, 37.985138, 33.577293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423080, 0.793073, 0.438221,
		0.290041, -0.576727, 0.763716,
		0.858417, -0.196010, -0.474026,
		27.606300, 37.926334, 33.435085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665199, 37.957584, 34.236027>,  <27.005409, 38.063541, 33.766903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665199, 37.957584, 34.236027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734440, 38.103065, 33.869911>,  <27.775984, 38.190353, 33.650242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734440, 38.103065, 33.869911>,  <27.665199, 37.957584, 34.236027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734440, 38.103065, 33.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306663, 0.863222, 0.401006,
		0.935945, -0.350101, 0.037892,
		0.173102, 0.363699, -0.915291,
		27.786371, 38.212173, 33.595325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478874, 37.987713, 33.961452>,  <27.665199, 37.957584, 34.236027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478874, 37.987713, 33.961452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204039, 38.266117, 33.878052>,  <28.039137, 38.433159, 33.828011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204039, 38.266117, 33.878052>,  <28.478874, 37.987713, 33.961452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204039, 38.266117, 33.878052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443556, 0.629098, 0.638353,
		0.575472, 0.346122, -0.740967,
		-0.687088, 0.696015, -0.208504,
		27.997911, 38.474922, 33.815502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287001, 37.200081, 34.084320>,  <28.478874, 37.987713, 33.961452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287001, 37.200081, 34.084320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944435, 37.338978, 33.931492>,  <27.738895, 37.422318, 33.839794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944435, 37.338978, 33.931492>,  <28.287001, 37.200081, 34.084320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944435, 37.338978, 33.931492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400509, -0.913824, 0.067224,
		-0.325799, 0.210593, 0.921686,
		-0.856416, 0.347242, -0.382068,
		27.687510, 37.443150, 33.816872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663977, 37.020134, 34.530972>,  <28.287001, 37.200081, 34.084320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663977, 37.020134, 34.530972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533339, 37.082661, 34.158112>,  <27.454956, 37.120174, 33.934395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533339, 37.082661, 34.158112>,  <27.663977, 37.020134, 34.530972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533339, 37.082661, 34.158112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644651, -0.758074, 0.098742,
		-0.691203, 0.633159, 0.348351,
		-0.326595, 0.156314, -0.932149,
		27.435360, 37.129555, 33.878468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015841, 37.196392, 34.536022>,  <27.663977, 37.020134, 34.530972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015841, 37.196392, 34.536022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052408, 37.058716, 34.162247>,  <27.074348, 36.976109, 33.937981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052408, 37.058716, 34.162247>,  <27.015841, 37.196392, 34.536022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052408, 37.058716, 34.162247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869588, -0.484842, 0.093512,
		-0.485240, 0.804025, -0.343635,
		0.091422, -0.344197, -0.934436,
		27.079834, 36.955460, 33.881916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396410, 37.012901, 34.400623>,  <27.015841, 37.196392, 34.536022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396410, 37.012901, 34.400623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546532, 36.826508, 34.080124>,  <26.636604, 36.714672, 33.887825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546532, 36.826508, 34.080124>,  <26.396410, 37.012901, 34.400623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546532, 36.826508, 34.080124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656993, -0.743517, 0.124673,
		-0.653839, 0.479625, -0.585196,
		0.375307, -0.465985, -0.801250,
		26.659124, 36.686710, 33.839748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878447, 36.971989, 33.945988>,  <26.396410, 37.012901, 34.400623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878447, 36.971989, 33.945988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145922, 36.681175, 33.883652>,  <26.306406, 36.506687, 33.846252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145922, 36.681175, 33.883652>,  <25.878447, 36.971989, 33.945988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145922, 36.681175, 33.883652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730363, -0.681533, 0.045633,
		-0.139384, 0.083302, -0.986728,
		0.668686, -0.727030, -0.155836,
		26.346527, 36.463066, 33.836903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659964, 36.270901, 34.046112>,  <25.878447, 36.971989, 33.945988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659964, 36.270901, 34.046112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997789, 36.145439, 33.872524>,  <26.200485, 36.070164, 33.768372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997789, 36.145439, 33.872524>,  <25.659964, 36.270901, 34.046112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997789, 36.145439, 33.872524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375380, -0.924785, -0.062144,
		-0.381839, 0.215389, -0.898780,
		0.844564, -0.313655, -0.433972,
		26.251158, 36.051342, 33.742332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495062, 35.900852, 33.470234>,  <25.659964, 36.270901, 34.046112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495062, 35.900852, 33.470234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869797, 35.784554, 33.548008>,  <26.094637, 35.714775, 33.594673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869797, 35.784554, 33.548008>,  <25.495062, 35.900852, 33.470234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869797, 35.784554, 33.548008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282798, -0.956761, -0.068077,
		0.205817, 0.008793, -0.978551,
		0.936838, -0.290744, 0.194431,
		26.150848, 35.697330, 33.606339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665796, 35.389683, 33.023258>,  <25.495062, 35.900852, 33.470234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665796, 35.389683, 33.023258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939917, 35.360130, 33.313061>,  <26.104389, 35.342400, 33.486942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939917, 35.360130, 33.313061>,  <25.665796, 35.389683, 33.023258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939917, 35.360130, 33.313061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205978, -0.973883, 0.095523,
		0.698524, -0.214694, -0.682621,
		0.685301, -0.073880, 0.724503,
		26.145508, 35.337967, 33.530411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648294, 34.672211, 33.109512>,  <25.665796, 35.389683, 33.023258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648294, 34.672211, 33.109512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882458, 34.776894, 33.416447>,  <26.022957, 34.839703, 33.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882458, 34.776894, 33.416447>,  <25.648294, 34.672211, 33.109512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882458, 34.776894, 33.416447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220336, -0.859483, 0.461238,
		0.780223, -0.439084, -0.445485,
		0.585409, 0.261712, 0.767335,
		26.058081, 34.855408, 33.646648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092321, 34.909260, 32.496731>,  <25.648294, 34.672211, 33.109512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092321, 34.909260, 32.496731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087122, 35.045742, 32.120770>,  <26.084003, 35.127632, 31.895193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087122, 35.045742, 32.120770>,  <26.092321, 34.909260, 32.496731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087122, 35.045742, 32.120770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790601, -0.579004, -0.199258,
		-0.612193, 0.740496, 0.277281,
		-0.012997, 0.341203, -0.939900,
		26.083223, 35.148102, 31.838800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364725, 34.274029, 32.188450>,  <26.092321, 34.909260, 32.496731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364725, 34.274029, 32.188450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000378, 34.251129, 32.024967>,  <25.781769, 34.237389, 31.926878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000378, 34.251129, 32.024967>,  <26.364725, 34.274029, 32.188450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000378, 34.251129, 32.024967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407229, -0.285364, -0.867601,
		-0.066961, -0.956708, 0.283243,
		-0.910868, -0.057249, -0.408707,
		25.727118, 34.233955, 31.902355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050194, 33.516270, 32.115017>,  <26.364725, 34.274029, 32.188450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050194, 33.516270, 32.115017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977865, 33.814137, 31.858025>,  <25.934467, 33.992855, 31.703831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977865, 33.814137, 31.858025>,  <26.050194, 33.516270, 32.115017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977865, 33.814137, 31.858025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640645, -0.406470, -0.651426,
		-0.746242, -0.529392, -0.403567,
		-0.180822, 0.744665, -0.642478,
		25.923618, 34.037537, 31.665281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867504, 33.321281, 31.475536>,  <26.050194, 33.516270, 32.115017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867504, 33.321281, 31.475536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041254, 33.672688, 31.396017>,  <26.145504, 33.883533, 31.348307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041254, 33.672688, 31.396017>,  <25.867504, 33.321281, 31.475536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041254, 33.672688, 31.396017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463947, -0.407397, -0.786627,
		-0.772056, 0.249461, -0.584550,
		0.434376, 0.878520, -0.198796,
		26.171566, 33.936245, 31.336378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719202, 33.692890, 30.795860>,  <25.867504, 33.321281, 31.475536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719202, 33.692890, 30.795860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093761, 33.796776, 30.890266>,  <26.318497, 33.859108, 30.946909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093761, 33.796776, 30.890266>,  <25.719202, 33.692890, 30.795860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093761, 33.796776, 30.890266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319895, -0.355170, -0.878363,
		-0.144301, 0.897999, -0.415663,
		0.936400, 0.259717, 0.236013,
		26.374681, 33.874691, 30.961071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937439, 34.118931, 30.339127>,  <25.719202, 33.692890, 30.795860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937439, 34.118931, 30.339127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261629, 33.911797, 30.448654>,  <26.456142, 33.787518, 30.514370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261629, 33.911797, 30.448654>,  <25.937439, 34.118931, 30.339127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261629, 33.911797, 30.448654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154422, -0.262037, -0.952623,
		0.565051, 0.814362, -0.132410,
		0.810476, -0.517834, 0.273820,
		26.504772, 33.756447, 30.530800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488892, 34.230038, 29.855402>,  <25.937439, 34.118931, 30.339127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488892, 34.230038, 29.855402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536448, 33.876041, 30.035473>,  <26.564981, 33.663643, 30.143515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536448, 33.876041, 30.035473>,  <26.488892, 34.230038, 29.855402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536448, 33.876041, 30.035473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125866, -0.436302, -0.890954,
		0.984898, 0.162585, 0.059519,
		0.118888, -0.884990, 0.450177,
		26.572113, 33.610546, 30.170527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121836, 34.029125, 29.763353>,  <26.488892, 34.230038, 29.855402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121836, 34.029125, 29.763353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910097, 33.692917, 29.809523>,  <26.783054, 33.491192, 29.837223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910097, 33.692917, 29.809523>,  <27.121836, 34.029125, 29.763353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910097, 33.692917, 29.809523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208424, -0.260710, -0.942650,
		0.822406, -0.474933, 0.313190,
		-0.529348, -0.840517, 0.115422,
		26.751293, 33.440762, 29.844149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504524, 33.447353, 29.628565>,  <27.121836, 34.029125, 29.763353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504524, 33.447353, 29.628565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138390, 33.297535, 29.569407>,  <26.918709, 33.207642, 29.533911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138390, 33.297535, 29.569407>,  <27.504524, 33.447353, 29.628565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138390, 33.297535, 29.569407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302079, -0.395795, -0.867234,
		0.266285, -0.838486, 0.475429,
		-0.915336, -0.374549, -0.147895,
		26.863789, 33.185169, 29.525038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712524, 32.851238, 29.276524>,  <27.504524, 33.447353, 29.628565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712524, 32.851238, 29.276524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318876, 32.876663, 29.210226>,  <27.082687, 32.891918, 29.170448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318876, 32.876663, 29.210226>,  <27.712524, 32.851238, 29.276524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318876, 32.876663, 29.210226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107138, -0.531785, -0.840075,
		-0.141533, -0.844491, 0.516530,
		-0.984119, 0.063558, -0.165743,
		27.023640, 32.895729, 29.160503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387701, 32.161186, 29.357250>,  <27.712524, 32.851238, 29.276524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387701, 32.161186, 29.357250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141357, 32.362186, 29.114529>,  <26.993551, 32.482788, 28.968895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141357, 32.362186, 29.114529>,  <27.387701, 32.161186, 29.357250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141357, 32.362186, 29.114529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121120, -0.700652, -0.703148,
		-0.778492, -0.506535, 0.370638,
		-0.615857, 0.502503, -0.606804,
		26.956600, 32.512936, 28.932487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820896, 31.826731, 29.016714>,  <27.387701, 32.161186, 29.357250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820896, 31.826731, 29.016714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639040, 32.171482, 28.926851>,  <26.529926, 32.378334, 28.872934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639040, 32.171482, 28.926851>,  <26.820896, 31.826731, 29.016714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639040, 32.171482, 28.926851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030341, -0.267072, -0.963199,
		-0.890158, -0.431093, 0.147571,
		-0.454641, 0.861877, -0.224656,
		26.502647, 32.430046, 28.859455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168716, 31.615326, 28.744257>,  <26.820896, 31.826731, 29.016714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168716, 31.615326, 28.744257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329977, 31.955496, 28.609056>,  <26.426735, 32.159599, 28.527937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329977, 31.955496, 28.609056>,  <26.168716, 31.615326, 28.744257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329977, 31.955496, 28.609056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005712, -0.367001, -0.930203,
		-0.915114, 0.376946, -0.143100,
		0.403154, 0.850425, -0.338001,
		26.450924, 32.210625, 28.507656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711527, 31.752226, 28.221193>,  <26.168716, 31.615326, 28.744257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711527, 31.752226, 28.221193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059803, 31.945883, 28.186533>,  <26.268768, 32.062077, 28.165737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059803, 31.945883, 28.186533>,  <25.711527, 31.752226, 28.221193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059803, 31.945883, 28.186533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078065, -0.309980, -0.947533,
		-0.485598, 0.818242, -0.307691,
		0.870689, 0.484140, -0.086649,
		26.321011, 32.091125, 28.160538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724375, 32.296783, 27.679960>,  <25.711527, 31.752226, 28.221193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724375, 32.296783, 27.679960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097416, 32.153160, 27.694542>,  <26.321241, 32.066986, 27.703291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097416, 32.153160, 27.694542>,  <25.724375, 32.296783, 27.679960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097416, 32.153160, 27.694542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029190, -0.175715, -0.984008,
		0.359722, 0.916625, -0.174353,
		0.932603, -0.359059, 0.036453,
		26.377197, 32.045441, 27.705479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652245, 31.906725, 27.069126>,  <25.724375, 32.296783, 27.679960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652245, 31.906725, 27.069126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972845, 31.892475, 26.830353>,  <26.165205, 31.883924, 26.687088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972845, 31.892475, 26.830353>,  <25.652245, 31.906725, 27.069126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972845, 31.892475, 26.830353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583971, 0.261550, 0.768485,
		0.128751, -0.964532, 0.230436,
		0.801499, -0.035625, -0.596934,
		26.213295, 31.881788, 26.651272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226770, 31.444134, 27.264757>,  <25.652245, 31.906725, 27.069126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226770, 31.444134, 27.264757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371130, 31.755983, 27.060038>,  <26.457747, 31.943092, 26.937206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371130, 31.755983, 27.060038>,  <26.226770, 31.444134, 27.264757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371130, 31.755983, 27.060038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474125, 0.319196, 0.820561,
		0.803093, -0.538797, -0.254441,
		0.360899, 0.779623, -0.511801,
		26.479399, 31.989870, 26.906498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949364, 31.501574, 27.456320>,  <26.226770, 31.444134, 27.264757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949364, 31.501574, 27.456320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766207, 31.844347, 27.361660>,  <26.656313, 32.050011, 27.304865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766207, 31.844347, 27.361660>,  <26.949364, 31.501574, 27.456320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766207, 31.844347, 27.361660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345286, 0.416720, 0.840906,
		0.819215, 0.303333, -0.486699,
		-0.457891, 0.856933, -0.236647,
		26.628839, 32.101425, 27.290667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365877, 32.211800, 27.569574>,  <26.949364, 31.501574, 27.456320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365877, 32.211800, 27.569574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975853, 32.296463, 27.596289>,  <26.741838, 32.347260, 27.612318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975853, 32.296463, 27.596289>,  <27.365877, 32.211800, 27.569574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975853, 32.296463, 27.596289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132646, 0.314483, 0.939950,
		0.177945, 0.925365, -0.334715,
		-0.975059, 0.211658, 0.066785,
		26.683334, 32.359959, 27.616323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285603, 32.879074, 27.836678>,  <27.365877, 32.211800, 27.569574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285603, 32.879074, 27.836678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959986, 32.663765, 27.923944>,  <26.764616, 32.534580, 27.976305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959986, 32.663765, 27.923944>,  <27.285603, 32.879074, 27.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959986, 32.663765, 27.923944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005271, 0.368762, 0.929509,
		-0.580783, 0.757809, -0.297350,
		-0.814042, -0.538275, 0.218165,
		26.715773, 32.502281, 27.989393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813969, 33.399601, 28.171608>,  <27.285603, 32.879074, 27.836678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813969, 33.399601, 28.171608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691753, 33.024994, 28.240396>,  <26.618425, 32.800228, 28.281670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691753, 33.024994, 28.240396>,  <26.813969, 33.399601, 28.171608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691753, 33.024994, 28.240396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300917, 0.266323, 0.915708,
		-0.903380, 0.228033, -0.363187,
		-0.305537, -0.936522, 0.171971,
		26.600092, 32.744038, 28.291988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072380, 33.401146, 28.375784>,  <26.813969, 33.399601, 28.171608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072380, 33.401146, 28.375784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293148, 33.104259, 28.527840>,  <26.425610, 32.926128, 28.619074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293148, 33.104259, 28.527840>,  <26.072380, 33.401146, 28.375784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293148, 33.104259, 28.527840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278320, 0.265764, 0.922988,
		-0.786081, -0.615215, -0.059892,
		0.551919, -0.742212, 0.380139,
		26.458723, 32.881596, 28.641882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785555, 33.054077, 28.929668>,  <26.072380, 33.401146, 28.375784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785555, 33.054077, 28.929668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174397, 32.985565, 28.993765>,  <26.407701, 32.944458, 29.032223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174397, 32.985565, 28.993765>,  <25.785555, 33.054077, 28.929668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174397, 32.985565, 28.993765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134727, 0.151469, 0.979237,
		-0.192000, -0.973508, 0.124167,
		0.972104, -0.171285, 0.160240,
		26.466028, 32.934181, 29.041838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697016, 32.671635, 29.431625>,  <25.785555, 33.054077, 28.929668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697016, 32.671635, 29.431625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064066, 32.828960, 29.454496>,  <26.284296, 32.923355, 29.468220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064066, 32.828960, 29.454496>,  <25.697016, 32.671635, 29.431625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064066, 32.828960, 29.454496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121684, 0.141064, 0.982494,
		0.378359, -0.908520, 0.177304,
		0.917626, 0.393311, 0.057180,
		26.339354, 32.946953, 29.471651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101580, 32.312035, 29.971951>,  <25.697016, 32.671635, 29.431625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101580, 32.312035, 29.971951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282864, 32.666523, 29.933540>,  <26.391634, 32.879215, 29.910494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282864, 32.666523, 29.933540>,  <26.101580, 32.312035, 29.971951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282864, 32.666523, 29.933540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021800, 0.096672, 0.995077,
		0.891137, -0.453073, 0.024494,
		0.453210, 0.886216, -0.096025,
		26.418827, 32.932388, 29.904734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703516, 32.355011, 30.399513>,  <26.101580, 32.312035, 29.971951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703516, 32.355011, 30.399513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567450, 32.722843, 30.320862>,  <26.485809, 32.943542, 30.273670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567450, 32.722843, 30.320862>,  <26.703516, 32.355011, 30.399513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567450, 32.722843, 30.320862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063947, 0.231235, 0.970794,
		0.938189, 0.317657, -0.137462,
		-0.340165, 0.919579, -0.196629,
		26.465401, 32.998718, 30.261873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182125, 32.804573, 30.750572>,  <26.703516, 32.355011, 30.399513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182125, 32.804573, 30.750572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845785, 33.017208, 30.709803>,  <26.643982, 33.144791, 30.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845785, 33.017208, 30.709803>,  <27.182125, 32.804573, 30.750572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845785, 33.017208, 30.709803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219641, 0.507204, 0.833368,
		0.494704, 0.678349, -0.543240,
		-0.840848, 0.531589, -0.101922,
		26.593531, 33.176685, 30.679226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354929, 33.492664, 30.649565>,  <27.182125, 32.804573, 30.750572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354929, 33.492664, 30.649565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996319, 33.438709, 30.818346>,  <26.781153, 33.406338, 30.919615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996319, 33.438709, 30.818346>,  <27.354929, 33.492664, 30.649565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996319, 33.438709, 30.818346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315663, 0.473758, 0.822138,
		-0.310799, 0.870264, -0.382158,
		-0.896527, -0.134887, 0.421954,
		26.727360, 33.398243, 30.944933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007927, 33.277611, 30.193806>,  <27.354929, 33.492664, 30.649565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007927, 33.277611, 30.193806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196045, 32.993221, 30.402933>,  <28.308916, 32.822586, 30.528410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196045, 32.993221, 30.402933>,  <28.007927, 33.277611, 30.193806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196045, 32.993221, 30.402933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746976, 0.005223, -0.664831,
		0.469947, 0.703198, 0.533537,
		0.470294, -0.710975, 0.522817,
		28.337133, 32.779930, 30.559778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314854, 33.549850, 29.477272>,  <28.007927, 33.277611, 30.193806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314854, 33.549850, 29.477272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693804, 33.558247, 29.605045>,  <28.921175, 33.563286, 29.681709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693804, 33.558247, 29.605045>,  <28.314854, 33.549850, 29.477272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693804, 33.558247, 29.605045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229864, -0.739097, -0.633165,
		0.222801, 0.673272, -0.705028,
		0.947377, 0.020991, 0.319432,
		28.978016, 33.564545, 29.700874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669329, 33.419243, 28.951635>,  <28.314854, 33.549850, 29.477272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669329, 33.419243, 28.951635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940962, 33.357933, 29.238789>,  <29.103941, 33.321148, 29.411079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940962, 33.357933, 29.238789>,  <28.669329, 33.419243, 28.951635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940962, 33.357933, 29.238789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426449, -0.713629, -0.555765,
		0.597485, 0.683550, -0.419251,
		0.679083, -0.153272, 0.717882,
		29.144686, 33.311951, 29.454153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188459, 32.836491, 28.869413>,  <28.669329, 33.419243, 28.951635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188459, 32.836491, 28.869413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295200, 33.221790, 28.857191>,  <29.359245, 33.452972, 28.849857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295200, 33.221790, 28.857191>,  <29.188459, 32.836491, 28.869413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295200, 33.221790, 28.857191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948882, -0.268155, -0.166482,
		-0.168558, 0.015431, -0.985571,
		0.266854, 0.963252, -0.030558,
		29.375257, 33.510765, 28.848024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413162, 33.038483, 28.224827>,  <29.188459, 32.836491, 28.869413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413162, 33.038483, 28.224827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552118, 33.195141, 28.565634>,  <29.635492, 33.289135, 28.770119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552118, 33.195141, 28.565634>,  <29.413162, 33.038483, 28.224827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552118, 33.195141, 28.565634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857047, -0.501306, -0.119008,
		0.380513, 0.771562, -0.509806,
		0.347391, 0.391644, 0.852018,
		29.656336, 33.312634, 28.821239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097775, 33.433037, 28.015406>,  <29.413162, 33.038483, 28.224827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097775, 33.433037, 28.015406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068022, 33.263977, 28.376699>,  <30.050171, 33.162540, 28.593475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068022, 33.263977, 28.376699>,  <30.097775, 33.433037, 28.015406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068022, 33.263977, 28.376699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906866, -0.405417, -0.115027,
		0.414803, 0.810557, 0.413443,
		-0.074381, -0.422651, 0.903235,
		30.045708, 33.137180, 28.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574318, 33.180939, 27.553917>,  <30.097775, 33.433037, 28.015406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574318, 33.180939, 27.553917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505106, 32.970303, 27.220987>,  <30.463579, 32.843922, 27.021229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505106, 32.970303, 27.220987>,  <30.574318, 33.180939, 27.553917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505106, 32.970303, 27.220987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082047, -0.849841, 0.520613,
		-0.981493, 0.021792, 0.190253,
		-0.173030, -0.526588, -0.832326,
		30.453197, 32.812325, 26.971291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160091, 32.766754, 27.734077>,  <30.574318, 33.180939, 27.553917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160091, 32.766754, 27.734077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367275, 32.591137, 27.440422>,  <30.491585, 32.485767, 27.264229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367275, 32.591137, 27.440422>,  <30.160091, 32.766754, 27.734077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367275, 32.591137, 27.440422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013806, -0.853835, 0.520362,
		-0.855331, -0.279630, -0.436137,
		0.517898, -0.439060, -0.734172,
		30.522663, 32.459423, 27.220181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787405, 32.271191, 27.350641>,  <30.160091, 32.766754, 27.734077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787405, 32.271191, 27.350641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176413, 32.178062, 27.350693>,  <30.409817, 32.122185, 27.350723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176413, 32.178062, 27.350693>,  <29.787405, 32.271191, 27.350641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176413, 32.178062, 27.350693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205802, -0.859417, 0.468026,
		-0.108854, -0.455191, -0.883715,
		0.972521, -0.232817, 0.000128,
		30.468168, 32.108219, 27.350731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900587, 31.594412, 27.181736>,  <29.787405, 32.271191, 27.350641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900587, 31.594412, 27.181736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209023, 31.696451, 27.415092>,  <30.394085, 31.757675, 27.555107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209023, 31.696451, 27.415092>,  <29.900587, 31.594412, 27.181736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209023, 31.696451, 27.415092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077913, -0.871549, 0.484079,
		0.631942, -0.418722, -0.652167,
		0.771090, 0.255098, 0.583391,
		30.440350, 31.772980, 27.590111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069693, 31.009321, 27.527596>,  <29.900587, 31.594412, 27.181736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069693, 31.009321, 27.527596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339520, 31.227060, 27.727053>,  <30.501415, 31.357704, 27.846727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339520, 31.227060, 27.727053>,  <30.069693, 31.009321, 27.527596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339520, 31.227060, 27.727053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139232, -0.757165, 0.638213,
		0.724966, -0.361089, -0.586548,
		0.674566, 0.544349, 0.498644,
		30.541889, 31.390366, 27.876646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819744, 30.885015, 27.799141>,  <30.069693, 31.009321, 27.527596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819744, 30.885015, 27.799141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187376, 30.765242, 27.901613>,  <31.407955, 30.693378, 27.963097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187376, 30.765242, 27.901613>,  <30.819744, 30.885015, 27.799141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187376, 30.765242, 27.901613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370823, 0.437205, -0.819355,
		0.133338, 0.848052, 0.512864,
		0.919082, -0.299433, 0.256181,
		31.463100, 30.675411, 27.978468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218763, 31.516542, 27.822815>,  <30.819744, 30.885015, 27.799141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218763, 31.516542, 27.822815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430468, 31.188547, 27.735634>,  <31.557489, 30.991751, 27.683325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430468, 31.188547, 27.735634>,  <31.218763, 31.516542, 27.822815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430468, 31.188547, 27.735634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113032, 0.322735, -0.939716,
		0.840897, 0.472718, 0.263496,
		0.529259, -0.819988, -0.217955,
		31.589245, 30.942551, 27.670248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845381, 31.650387, 27.459167>,  <31.218763, 31.516542, 27.822815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845381, 31.650387, 27.459167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770113, 31.271696, 27.354631>,  <31.724953, 31.044481, 27.291910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770113, 31.271696, 27.354631>,  <31.845381, 31.650387, 27.459167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770113, 31.271696, 27.354631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151560, 0.234916, -0.960127,
		0.970372, -0.220273, 0.099283,
		-0.188167, -0.946728, -0.261341,
		31.713663, 30.987679, 27.276230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352665, 31.328747, 27.172781>,  <31.845381, 31.650387, 27.459167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352665, 31.328747, 27.172781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007637, 31.183224, 27.032146>,  <31.800619, 31.095909, 26.947765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007637, 31.183224, 27.032146>,  <32.352665, 31.328747, 27.172781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007637, 31.183224, 27.032146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204842, 0.384293, -0.900199,
		0.462614, -0.848506, -0.256956,
		-0.862571, -0.363809, -0.351589,
		31.748865, 31.074081, 26.926670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448185, 31.188398, 26.567442>,  <32.352665, 31.328747, 27.172781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448185, 31.188398, 26.567442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048592, 31.203241, 26.557140>,  <31.808836, 31.212147, 26.550959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048592, 31.203241, 26.557140>,  <32.448185, 31.188398, 26.567442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048592, 31.203241, 26.557140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036094, 0.312988, -0.949071,
		-0.027160, -0.949032, -0.314008,
		-0.998979, 0.037111, -0.025753,
		31.748898, 31.214375, 26.549414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054943, 30.785965, 25.953791>,  <32.448185, 31.188398, 26.567442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054943, 30.785965, 25.953791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884768, 31.122103, 26.088146>,  <31.782661, 31.323786, 26.168760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884768, 31.122103, 26.088146>,  <32.054943, 30.785965, 25.953791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884768, 31.122103, 26.088146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112327, 0.417320, -0.901791,
		-0.897988, -0.345930, -0.271938,
		-0.425442, 0.840343, 0.335891,
		31.757135, 31.374207, 26.188913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452579, 30.945332, 25.519638>,  <32.054943, 30.785965, 25.953791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452579, 30.945332, 25.519638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579523, 31.280134, 25.697943>,  <31.655689, 31.481016, 25.804926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579523, 31.280134, 25.697943>,  <31.452579, 30.945332, 25.519638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579523, 31.280134, 25.697943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026534, 0.477715, -0.878114,
		-0.947934, 0.266850, 0.173817,
		0.317360, 0.837006, 0.445762,
		31.674730, 31.531237, 25.831671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984819, 31.408258, 25.309616>,  <31.452579, 30.945332, 25.519638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984819, 31.408258, 25.309616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291273, 31.653233, 25.387552>,  <31.475145, 31.800217, 25.434315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291273, 31.653233, 25.387552>,  <30.984819, 31.408258, 25.309616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291273, 31.653233, 25.387552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117944, 0.432003, -0.894127,
		-0.631765, 0.662041, 0.403206,
		0.766135, 0.612434, 0.194840,
		31.521114, 31.836962, 25.446005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804632, 32.011032, 25.071074>,  <30.984819, 31.408258, 25.309616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804632, 32.011032, 25.071074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201633, 32.053528, 25.095232>,  <31.439835, 32.079025, 25.109726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201633, 32.053528, 25.095232>,  <30.804632, 32.011032, 25.071074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201633, 32.053528, 25.095232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026127, 0.298316, -0.954110,
		-0.119378, 0.948537, 0.293305,
		0.992505, 0.106237, 0.060394,
		31.499386, 32.085400, 25.113350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015772, 32.663845, 24.929571>,  <30.804632, 32.011032, 25.071074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015772, 32.663845, 24.929571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339725, 32.446262, 24.841753>,  <31.534098, 32.315712, 24.789062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339725, 32.446262, 24.841753>,  <31.015772, 32.663845, 24.929571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339725, 32.446262, 24.841753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077455, 0.470162, -0.879175,
		0.581455, 0.695024, 0.422909,
		0.809883, -0.543957, -0.219545,
		31.582691, 32.283077, 24.775888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522341, 33.150589, 24.673878>,  <31.015772, 32.663845, 24.929571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522341, 33.150589, 24.673878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668961, 32.809952, 24.523981>,  <31.756931, 32.605568, 24.434044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668961, 32.809952, 24.523981>,  <31.522341, 33.150589, 24.673878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668961, 32.809952, 24.523981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471103, 0.517204, -0.714536,
		0.802312, 0.085371, 0.590769,
		0.366548, -0.851594, -0.374741,
		31.778925, 32.554474, 24.411558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217873, 33.324341, 24.492556>,  <31.522341, 33.150589, 24.673878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217873, 33.324341, 24.492556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166977, 32.974117, 24.306133>,  <32.136440, 32.763985, 24.194281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166977, 32.974117, 24.306133>,  <32.217873, 33.324341, 24.492556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166977, 32.974117, 24.306133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462701, 0.363219, -0.808689,
		0.877335, -0.318545, 0.358905,
		-0.127243, -0.875557, -0.466056,
		32.128803, 32.711449, 24.166317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861576, 33.236473, 24.116385>,  <32.217873, 33.324341, 24.492556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861576, 33.236473, 24.116385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581654, 33.003426, 23.951063>,  <32.413700, 32.863598, 23.851870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581654, 33.003426, 23.951063>,  <32.861576, 33.236473, 24.116385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581654, 33.003426, 23.951063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284312, 0.303608, -0.909389,
		0.655311, -0.753907, -0.046822,
		-0.699811, -0.582620, -0.413303,
		32.371712, 32.828640, 23.827072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171246, 32.861671, 23.491959>,  <32.861576, 33.236473, 24.116385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171246, 32.861671, 23.491959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777580, 32.830929, 23.428068>,  <32.541382, 32.812485, 23.389734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777580, 32.830929, 23.428068>,  <33.171246, 32.861671, 23.491959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777580, 32.830929, 23.428068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124499, 0.341709, -0.931523,
		0.126171, -0.936658, -0.326730,
		-0.984165, -0.076854, -0.159727,
		32.482330, 32.807873, 23.380150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076790, 32.464622, 22.827969>,  <33.171246, 32.861671, 23.491959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076790, 32.464622, 22.827969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737717, 32.669662, 22.882631>,  <32.534271, 32.792686, 22.915428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737717, 32.669662, 22.882631>,  <33.076790, 32.464622, 22.827969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737717, 32.669662, 22.882631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039762, 0.318263, -0.947168,
		-0.529010, -0.797465, -0.290168,
		-0.847683, 0.512599, 0.136655,
		32.483410, 32.823441, 22.923628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783669, 32.334114, 22.181871>,  <33.076790, 32.464622, 22.827969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783669, 32.334114, 22.181871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625591, 32.660389, 22.350855>,  <32.530743, 32.856155, 22.452244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625591, 32.660389, 22.350855>,  <32.783669, 32.334114, 22.181871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625591, 32.660389, 22.350855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044270, 0.442448, -0.895701,
		-0.917530, -0.372679, -0.138743,
		-0.395196, 0.815690, 0.422458,
		32.507034, 32.905094, 22.477592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332420, 32.510201, 21.663340>,  <32.783669, 32.334114, 22.181871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332420, 32.510201, 21.663340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366673, 32.829159, 21.902279>,  <32.387226, 33.020535, 22.045643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366673, 32.829159, 21.902279>,  <32.332420, 32.510201, 21.663340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366673, 32.829159, 21.902279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379141, 0.580525, -0.720585,
		-0.921368, -0.164774, 0.352037,
		0.085633, 0.797396, 0.597350,
		32.392361, 33.068378, 22.081484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807018, 32.941616, 21.408003>,  <32.332420, 32.510201, 21.663340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807018, 32.941616, 21.408003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033550, 33.192764, 21.621563>,  <32.169468, 33.343452, 21.749699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033550, 33.192764, 21.621563>,  <31.807018, 32.941616, 21.408003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033550, 33.192764, 21.621563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190481, 0.729971, -0.656399,
		-0.801866, 0.270039, 0.533001,
		0.566328, 0.627871, 0.533901,
		32.203449, 33.381126, 21.781733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356464, 33.603119, 21.444494>,  <31.807018, 32.941616, 21.408003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356464, 33.603119, 21.444494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743824, 33.669395, 21.519060>,  <31.976240, 33.709160, 21.563799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743824, 33.669395, 21.519060>,  <31.356464, 33.603119, 21.444494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743824, 33.669395, 21.519060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027967, 0.814859, -0.578983,
		-0.247833, 0.555474, 0.793743,
		0.968399, 0.165690, 0.186414,
		32.034344, 33.719101, 21.574984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384035, 34.266678, 21.530491>,  <31.356464, 33.603119, 21.444494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384035, 34.266678, 21.530491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757641, 34.181240, 21.415955>,  <31.981804, 34.129978, 21.347233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757641, 34.181240, 21.415955>,  <31.384035, 34.266678, 21.530491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757641, 34.181240, 21.415955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028661, 0.754166, -0.656058,
		0.356081, 0.620975, 0.698281,
		0.934015, -0.213597, -0.286342,
		32.037846, 34.117161, 21.330051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775293, 34.902050, 21.645880>,  <31.384035, 34.266678, 21.530491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775293, 34.902050, 21.645880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980665, 34.695885, 21.371437>,  <32.103889, 34.572186, 21.206772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980665, 34.695885, 21.371437>,  <31.775293, 34.902050, 21.645880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980665, 34.695885, 21.371437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002387, 0.800388, -0.599477,
		0.858128, 0.306152, 0.412174,
		0.513431, -0.515412, -0.686104,
		32.134693, 34.541260, 21.165606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332920, 35.313755, 21.471905>,  <31.775293, 34.902050, 21.645880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332920, 35.313755, 21.471905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344112, 35.051964, 21.169678>,  <32.350826, 34.894890, 20.988342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344112, 35.051964, 21.169678>,  <32.332920, 35.313755, 21.471905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344112, 35.051964, 21.169678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049918, 0.754005, -0.654969,
		0.998361, 0.056043, -0.011571,
		0.027982, -0.654473, -0.755567,
		32.352509, 34.855621, 20.943008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907253, 35.469383, 21.036018>,  <32.332920, 35.313755, 21.471905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907253, 35.469383, 21.036018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648594, 35.266941, 20.807737>,  <32.493397, 35.145477, 20.670769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648594, 35.266941, 20.807737>,  <32.907253, 35.469383, 21.036018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648594, 35.266941, 20.807737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204937, 0.605402, -0.769083,
		0.734743, -0.614284, -0.287762,
		-0.646648, -0.506105, -0.570705,
		32.454597, 35.115108, 20.636526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084068, 35.754429, 20.371609>,  <32.907253, 35.469383, 21.036018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084068, 35.754429, 20.371609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764183, 35.526943, 20.294638>,  <32.572250, 35.390453, 20.248455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764183, 35.526943, 20.294638>,  <33.084068, 35.754429, 20.371609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764183, 35.526943, 20.294638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194516, 0.548646, -0.813112,
		0.568008, -0.612820, -0.549380,
		-0.799707, -0.568717, -0.192432,
		32.524269, 35.356331, 20.236910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141918, 35.293739, 19.755804>,  <33.084068, 35.754429, 20.371609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141918, 35.293739, 19.755804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764645, 35.410034, 19.820154>,  <32.538280, 35.479809, 19.858765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764645, 35.410034, 19.820154>,  <33.141918, 35.293739, 19.755804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764645, 35.410034, 19.820154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048623, 0.599713, -0.798736,
		-0.328699, -0.745531, -0.579775,
		-0.943182, 0.290734, 0.160876,
		32.481689, 35.497253, 19.868418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901657, 35.374485, 19.053694>,  <33.141918, 35.293739, 19.755804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901657, 35.374485, 19.053694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603451, 35.527866, 19.271748>,  <32.424526, 35.619896, 19.402580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603451, 35.527866, 19.271748>,  <32.901657, 35.374485, 19.053694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603451, 35.527866, 19.271748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284386, 0.556708, -0.780514,
		-0.602769, -0.736914, -0.305986,
		-0.745516, 0.383451, 0.545135,
		32.379795, 35.642902, 19.435287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390156, 35.419704, 18.610651>,  <32.901657, 35.374485, 19.053694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390156, 35.419704, 18.610651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278912, 35.680229, 18.893055>,  <32.212166, 35.836544, 19.062496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278912, 35.680229, 18.893055>,  <32.390156, 35.419704, 18.610651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278912, 35.680229, 18.893055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441468, 0.566108, -0.696152,
		-0.853089, -0.505286, 0.130094,
		-0.278109, 0.651313, 0.706008,
		32.195480, 35.875622, 19.104856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627550, 35.572960, 18.555767>,  <32.390156, 35.419704, 18.610651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627550, 35.572960, 18.555767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800900, 35.882790, 18.740036>,  <31.904909, 36.068687, 18.850597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800900, 35.882790, 18.740036>,  <31.627550, 35.572960, 18.555767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800900, 35.882790, 18.740036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510526, 0.632242, -0.582781,
		-0.742665, 0.017375, 0.669437,
		0.433372, 0.774576, 0.460674,
		31.930910, 36.115162, 18.878239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074554, 35.997425, 18.693842>,  <31.627550, 35.572960, 18.555767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074554, 35.997425, 18.693842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397858, 36.232174, 18.713060>,  <31.591839, 36.373024, 18.724590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397858, 36.232174, 18.713060>,  <31.074554, 35.997425, 18.693842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397858, 36.232174, 18.713060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455863, 0.675296, -0.579797,
		-0.372709, 0.446722, 0.813344,
		0.808256, 0.586868, 0.048045,
		31.640335, 36.408234, 18.727474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828579, 36.585796, 18.775402>,  <31.074554, 35.997425, 18.693842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828579, 36.585796, 18.775402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199381, 36.681900, 18.660208>,  <31.421864, 36.739563, 18.591091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199381, 36.681900, 18.660208>,  <30.828579, 36.585796, 18.775402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199381, 36.681900, 18.660208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374399, 0.637814, -0.673067,
		0.021973, 0.731759, 0.681209,
		0.927007, 0.240255, -0.287985,
		31.477484, 36.753975, 18.573812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789158, 37.331291, 18.723532>,  <30.828579, 36.585796, 18.775402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789158, 37.331291, 18.723532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127705, 37.268425, 18.519979>,  <31.330833, 37.230705, 18.397848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127705, 37.268425, 18.519979>,  <30.789158, 37.331291, 18.723532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127705, 37.268425, 18.519979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266472, 0.702326, -0.660099,
		0.461143, 0.694289, 0.552547,
		0.846368, -0.157162, -0.508882,
		31.381615, 37.221275, 18.367315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283936, 37.981701, 18.594217>,  <30.789158, 37.331291, 18.723532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283936, 37.981701, 18.594217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311533, 37.708992, 18.302898>,  <31.328091, 37.545364, 18.128107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311533, 37.708992, 18.302898>,  <31.283936, 37.981701, 18.594217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311533, 37.708992, 18.302898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167639, 0.711735, -0.682151,
		0.983431, 0.169155, -0.065187,
		0.068993, -0.681777, -0.728300,
		31.332232, 37.504459, 18.084408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657049, 38.328335, 18.097345>,  <31.283936, 37.981701, 18.594217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657049, 38.328335, 18.097345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498524, 38.025326, 17.889851>,  <31.403408, 37.843521, 17.765354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498524, 38.025326, 17.889851>,  <31.657049, 38.328335, 18.097345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498524, 38.025326, 17.889851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136214, 0.607262, -0.782738,
		0.907954, -0.239552, -0.343852,
		-0.396315, -0.757527, -0.518736,
		31.379629, 37.798069, 17.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987347, 38.160931, 17.414150>,  <31.657049, 38.328335, 18.097345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987347, 38.160931, 17.414150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607309, 38.040466, 17.381605>,  <31.379286, 37.968185, 17.362078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607309, 38.040466, 17.381605>,  <31.987347, 38.160931, 17.414150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607309, 38.040466, 17.381605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113508, 0.576668, -0.809055,
		0.290577, -0.759444, -0.582074,
		-0.950095, -0.301163, -0.081363,
		31.322281, 37.950119, 17.357197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842264, 38.261623, 16.712427>,  <31.987347, 38.160931, 17.414150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842264, 38.261623, 16.712427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477739, 38.221275, 16.872095>,  <31.259026, 38.197067, 16.967896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477739, 38.221275, 16.872095>,  <31.842264, 38.261623, 16.712427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477739, 38.221275, 16.872095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313110, 0.799349, -0.512839,
		-0.267348, -0.592340, -0.760038,
		-0.911311, -0.100869, 0.399172,
		31.204346, 38.191013, 16.991846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419794, 38.263023, 16.131680>,  <31.842264, 38.261623, 16.712427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419794, 38.263023, 16.131680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165684, 38.350021, 16.428089>,  <31.013218, 38.402222, 16.605934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165684, 38.350021, 16.428089>,  <31.419794, 38.263023, 16.131680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165684, 38.350021, 16.428089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251856, 0.848717, -0.465024,
		-0.730063, -0.482050, -0.484392,
		-0.635277, 0.217500, 0.741024,
		30.975101, 38.415272, 16.650396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739222, 38.313011, 15.822651>,  <31.419794, 38.263023, 16.131680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739222, 38.313011, 15.822651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710302, 38.522396, 16.162243>,  <30.692951, 38.648026, 16.365997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710302, 38.522396, 16.162243>,  <30.739222, 38.313011, 15.822651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710302, 38.522396, 16.162243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233615, 0.818640, -0.524645,
		-0.969638, -0.236264, 0.063103,
		-0.072296, 0.523458, 0.848979,
		30.688614, 38.679432, 16.416937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220280, 38.869801, 15.702744>,  <30.739222, 38.313011, 15.822651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220280, 38.869801, 15.702744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413975, 38.991695, 16.030806>,  <30.530191, 39.064831, 16.227642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413975, 38.991695, 16.030806>,  <30.220280, 38.869801, 15.702744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413975, 38.991695, 16.030806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065037, 0.947330, -0.313587,
		-0.872515, 0.098511, 0.478552,
		0.484239, 0.304733, 0.820153,
		30.559246, 39.083115, 16.276852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805590, 39.453564, 15.973301>,  <30.220280, 38.869801, 15.702744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805590, 39.453564, 15.973301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183096, 39.462223, 16.105265>,  <30.409599, 39.467419, 16.184443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183096, 39.462223, 16.105265>,  <29.805590, 39.453564, 15.973301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183096, 39.462223, 16.105265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092030, 0.941212, -0.325038,
		-0.317552, 0.337121, 0.886290,
		0.943764, 0.021651, 0.329909,
		30.466225, 39.468719, 16.204237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878174, 40.033367, 16.281965>,  <29.805590, 39.453564, 15.973301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878174, 40.033367, 16.281965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268976, 39.967236, 16.228109>,  <30.503458, 39.927555, 16.195795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268976, 39.967236, 16.228109>,  <29.878174, 40.033367, 16.281965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268976, 39.967236, 16.228109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156824, 0.985028, -0.071601,
		0.144463, 0.048839, 0.988304,
		0.977004, -0.165333, -0.134641,
		30.562077, 39.917637, 16.187717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230488, 40.486759, 16.912224>,  <29.878174, 40.033367, 16.281965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230488, 40.486759, 16.912224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477501, 40.414013, 16.606133>,  <30.625710, 40.370365, 16.422478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477501, 40.414013, 16.606133>,  <30.230488, 40.486759, 16.912224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477501, 40.414013, 16.606133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196792, 0.977683, -0.073544,
		0.761528, -0.105175, 0.639542,
		0.617534, -0.181862, -0.765230,
		30.662762, 40.359455, 16.376564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898266, 40.830189, 17.090073>,  <30.230488, 40.486759, 16.912224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898266, 40.830189, 17.090073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893330, 40.790318, 16.692095>,  <30.890368, 40.766396, 16.453308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893330, 40.790318, 16.692095>,  <30.898266, 40.830189, 17.090073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893330, 40.790318, 16.692095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293853, 0.950722, -0.098891,
		0.955771, -0.293587, 0.017560,
		-0.012339, -0.099677, -0.994943,
		30.889627, 40.760414, 16.393612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290709, 41.382210, 16.892677>,  <30.898266, 40.830189, 17.090073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290709, 41.382210, 16.892677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127626, 41.281609, 16.541559>,  <31.029778, 41.221249, 16.330889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127626, 41.281609, 16.541559>,  <31.290709, 41.382210, 16.892677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127626, 41.281609, 16.541559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024126, 0.958018, -0.285690,
		0.912794, -0.137655, -0.384523,
		-0.407707, -0.251500, -0.877795,
		31.005314, 41.206158, 16.278221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724977, 41.797329, 16.366009>,  <31.290709, 41.382210, 16.892677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724977, 41.797329, 16.366009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370588, 41.671024, 16.230156>,  <31.157955, 41.595242, 16.148643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370588, 41.671024, 16.230156>,  <31.724977, 41.797329, 16.366009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370588, 41.671024, 16.230156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121655, 0.864983, -0.486831,
		0.447497, -0.390000, -0.804765,
		-0.885972, -0.315759, -0.339632,
		31.104797, 41.576298, 16.128267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709244, 41.855366, 15.684929>,  <31.724977, 41.797329, 16.366009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709244, 41.855366, 15.684929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326817, 41.878109, 15.799958>,  <31.097361, 41.891754, 15.868976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326817, 41.878109, 15.799958>,  <31.709244, 41.855366, 15.684929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326817, 41.878109, 15.799958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071419, 0.906271, -0.416619,
		-0.284307, -0.418855, -0.862398,
		-0.956069, 0.056856, 0.287574,
		31.039995, 41.895164, 15.886230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390930, 41.982548, 15.054426>,  <31.709244, 41.855366, 15.684929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390930, 41.982548, 15.054426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133387, 42.092827, 15.339926>,  <30.978861, 42.158993, 15.511226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133387, 42.092827, 15.339926>,  <31.390930, 41.982548, 15.054426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133387, 42.092827, 15.339926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201836, 0.838592, -0.505989,
		-0.738043, -0.469846, -0.484290,
		-0.643859, 0.275695, 0.713749,
		30.940229, 42.175537, 15.554050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860987, 42.341618, 14.675407>,  <31.390930, 41.982548, 15.054426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860987, 42.341618, 14.675407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841631, 42.455345, 15.058411>,  <30.830017, 42.523582, 15.288213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841631, 42.455345, 15.058411>,  <30.860987, 42.341618, 14.675407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841631, 42.455345, 15.058411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053808, 0.956498, -0.286735,
		-0.997378, -0.065397, -0.030986,
		-0.048389, 0.284315, 0.957509,
		30.827114, 42.540638, 15.345663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199730, 42.695297, 14.837396>,  <30.860987, 42.341618, 14.675407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199730, 42.695297, 14.837396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485102, 42.845390, 15.074112>,  <30.656324, 42.935448, 15.216142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485102, 42.845390, 15.074112>,  <30.199730, 42.695297, 14.837396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485102, 42.845390, 15.074112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228356, 0.922936, -0.309908,
		-0.662473, 0.085958, 0.744137,
		0.713430, 0.375234, 0.591791,
		30.699131, 42.957962, 15.251649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040785, 43.384983, 15.078913>,  <30.199730, 42.695297, 14.837396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040785, 43.384983, 15.078913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440628, 43.388126, 15.089664>,  <30.680534, 43.390015, 15.096114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440628, 43.388126, 15.089664>,  <30.040785, 43.384983, 15.078913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440628, 43.388126, 15.089664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004541, 0.992595, -0.121385,
		-0.027633, 0.121215, 0.992242,
		0.999608, 0.007860, 0.026878,
		30.740511, 43.390484, 15.097727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393055, 43.910416, 15.623961>,  <30.040785, 43.384983, 15.078913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393055, 43.910416, 15.623961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626406, 43.824539, 15.310637>,  <30.766417, 43.773014, 15.122642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626406, 43.824539, 15.310637>,  <30.393055, 43.910416, 15.623961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626406, 43.824539, 15.310637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126977, 0.976682, -0.173117,
		0.802213, 0.001530, 0.597035,
		0.583378, -0.214686, -0.783313,
		30.801418, 43.760132, 15.075643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851927, 44.125935, 16.069973>,  <30.393055, 43.910416, 15.623961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851927, 44.125935, 16.069973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806568, 44.415817, 16.341841>,  <29.779352, 44.589745, 16.504961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806568, 44.415817, 16.341841>,  <29.851927, 44.125935, 16.069973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806568, 44.415817, 16.341841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157483, 0.662321, -0.732482,
		-0.980989, -0.190098, 0.039022,
		-0.113399, 0.724702, 0.679667,
		29.772549, 44.633228, 16.545740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166548, 44.525845, 15.920217>,  <29.851927, 44.125935, 16.069973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166548, 44.525845, 15.920217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418112, 44.776081, 16.104872>,  <29.569050, 44.926224, 16.215666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418112, 44.776081, 16.104872>,  <29.166548, 44.525845, 15.920217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418112, 44.776081, 16.104872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050919, 0.625632, -0.778455,
		-0.775808, 0.466073, 0.425321,
		0.628911, 0.625588, 0.461638,
		29.606785, 44.963757, 16.243362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908249, 45.154148, 15.874505>,  <29.166548, 44.525845, 15.920217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908249, 45.154148, 15.874505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300787, 45.188866, 15.943125>,  <29.536310, 45.209698, 15.984297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300787, 45.188866, 15.943125>,  <28.908249, 45.154148, 15.874505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300787, 45.188866, 15.943125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002735, 0.885896, -0.463875,
		-0.192238, 0.455690, 0.869132,
		0.981345, 0.086797, 0.171549,
		29.595190, 45.214905, 15.994590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108290, 45.724148, 16.284357>,  <28.908249, 45.154148, 15.874505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108290, 45.724148, 16.284357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413979, 45.664528, 16.033360>,  <29.597391, 45.628754, 15.882761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413979, 45.664528, 16.033360>,  <29.108290, 45.724148, 16.284357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413979, 45.664528, 16.033360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028874, 0.979859, -0.197590,
		0.644306, 0.132885, 0.753135,
		0.764223, -0.149054, -0.627492,
		29.643246, 45.619812, 15.845112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742624, 46.108326, 16.446239>,  <29.108290, 45.724148, 16.284357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742624, 46.108326, 16.446239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700039, 46.092503, 16.048828>,  <29.674488, 46.083008, 15.810381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700039, 46.092503, 16.048828>,  <29.742624, 46.108326, 16.446239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700039, 46.092503, 16.048828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001679, 0.999200, -0.039961,
		0.994315, -0.005923, -0.106310,
		-0.106462, -0.039555, -0.993530,
		29.668100, 46.080635, 15.750770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199537, 45.794418, 17.002922>,  <29.742624, 46.108326, 16.446239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199537, 45.794418, 17.002922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028240, 45.525291, 16.761618>,  <29.925461, 45.363815, 16.616835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028240, 45.525291, 16.761618>,  <30.199537, 45.794418, 17.002922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028240, 45.525291, 16.761618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053999, -0.685432, 0.726132,
		-0.902048, 0.278386, 0.329864,
		-0.428245, -0.672818, -0.603260,
		29.899767, 45.323444, 16.580639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754688, 45.525272, 17.442366>,  <30.199537, 45.794418, 17.002922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754688, 45.525272, 17.442366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759993, 45.256458, 17.146204>,  <29.763176, 45.095169, 16.968508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759993, 45.256458, 17.146204>,  <29.754688, 45.525272, 17.442366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759993, 45.256458, 17.146204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003014, -0.740493, 0.672057,
		-0.999908, -0.006681, -0.011845,
		0.013261, -0.672031, -0.740404,
		29.763971, 45.054848, 16.924082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119820, 45.162052, 17.422148>,  <29.754688, 45.525272, 17.442366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119820, 45.162052, 17.422148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387575, 44.906456, 17.270563>,  <29.548229, 44.753098, 17.179613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387575, 44.906456, 17.270563>,  <29.119820, 45.162052, 17.422148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387575, 44.906456, 17.270563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278494, -0.688736, 0.669390,
		-0.688736, -0.342545, -0.638988,
		-0.669390, 0.638988, 0.378960,
		29.588392, 44.714760, 17.156876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865002, 44.503265, 17.571608>,  <29.119820, 45.162052, 17.422148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865002, 44.503265, 17.571608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235809, 44.403954, 17.459185>,  <29.458294, 44.344368, 17.391731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235809, 44.403954, 17.459185>,  <28.865002, 44.503265, 17.571608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235809, 44.403954, 17.459185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051573, -0.826739, 0.560217,
		-0.371449, -0.504838, -0.779208,
		0.927020, -0.248278, -0.281055,
		29.513916, 44.329472, 17.374868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855341, 43.806061, 17.397655>,  <28.865002, 44.503265, 17.571608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855341, 43.806061, 17.397655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230320, 43.909939, 17.490389>,  <29.455307, 43.972263, 17.546030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230320, 43.909939, 17.490389>,  <28.855341, 43.806061, 17.397655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230320, 43.909939, 17.490389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043558, -0.748230, 0.662009,
		0.345385, -0.610501, -0.712739,
		0.937449, 0.259693, 0.231835,
		29.511555, 43.987846, 17.559940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289106, 43.158775, 17.318052>,  <28.855341, 43.806061, 17.397655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289106, 43.158775, 17.318052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462254, 43.405041, 17.581442>,  <29.566141, 43.552799, 17.739475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462254, 43.405041, 17.581442>,  <29.289106, 43.158775, 17.318052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462254, 43.405041, 17.581442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080268, -0.753878, 0.652093,
		0.897877, -0.229415, -0.375747,
		0.432868, 0.615659, 0.658475,
		29.592113, 43.589737, 17.778984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812975, 42.754169, 17.555143>,  <29.289106, 43.158775, 17.318052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812975, 42.754169, 17.555143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777367, 43.054058, 17.817440>,  <29.756002, 43.233990, 17.974817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777367, 43.054058, 17.817440>,  <29.812975, 42.754169, 17.555143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777367, 43.054058, 17.817440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285656, -0.611480, 0.737898,
		0.954189, 0.253004, -0.159728,
		-0.089020, 0.749721, 0.655739,
		29.750660, 43.278973, 18.014162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463196, 42.805458, 17.896587>,  <29.812975, 42.754169, 17.555143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463196, 42.805458, 17.896587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193518, 42.972946, 18.139942>,  <30.031712, 43.073441, 18.285955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193518, 42.972946, 18.139942>,  <30.463196, 42.805458, 17.896587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193518, 42.972946, 18.139942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284599, -0.612843, 0.737175,
		0.681516, 0.670146, 0.294009,
		-0.674196, 0.418722, 0.608385,
		29.991259, 43.098564, 18.322458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909863, 43.034428, 18.471338>,  <30.463196, 42.805458, 17.896587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909863, 43.034428, 18.471338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529762, 43.019211, 18.595001>,  <30.301702, 43.010078, 18.669199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529762, 43.019211, 18.595001>,  <30.909863, 43.034428, 18.471338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529762, 43.019211, 18.595001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275077, -0.568170, 0.775574,
		0.146149, 0.822031, 0.550368,
		-0.950249, -0.038044, 0.309159,
		30.244688, 43.007797, 18.687750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958984, 43.367973, 19.128448>,  <30.909863, 43.034428, 18.471338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958984, 43.367973, 19.128448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637558, 43.130157, 19.117151>,  <30.444702, 42.987469, 19.110373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637558, 43.130157, 19.117151>,  <30.958984, 43.367973, 19.128448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637558, 43.130157, 19.117151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287766, -0.429598, 0.855942,
		-0.521027, 0.679680, 0.516300,
		-0.803568, -0.594543, -0.028244,
		30.396488, 42.951794, 19.108679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750011, 43.332718, 19.838581>,  <30.958984, 43.367973, 19.128448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750011, 43.332718, 19.838581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569796, 43.022755, 19.661251>,  <30.461666, 42.836777, 19.554853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569796, 43.022755, 19.661251>,  <30.750011, 43.332718, 19.838581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569796, 43.022755, 19.661251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131319, -0.548703, 0.825639,
		-0.883046, 0.313766, 0.348972,
		-0.450539, -0.774904, -0.443327,
		30.434633, 42.790283, 19.528254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348534, 42.999844, 20.395590>,  <30.750011, 43.332718, 19.838581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348534, 42.999844, 20.395590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370861, 42.714458, 20.116203>,  <30.384258, 42.543228, 19.948570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370861, 42.714458, 20.116203>,  <30.348534, 42.999844, 20.395590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370861, 42.714458, 20.116203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223817, -0.672813, 0.705144,
		-0.973031, -0.195690, 0.122128,
		0.055820, -0.713462, -0.698467,
		30.387608, 42.500420, 19.906664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862764, 42.437229, 20.584621>,  <30.348534, 42.999844, 20.395590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862764, 42.437229, 20.584621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138973, 42.272511, 20.346766>,  <30.304699, 42.173679, 20.204052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138973, 42.272511, 20.346766>,  <29.862764, 42.437229, 20.584621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138973, 42.272511, 20.346766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058192, -0.787817, 0.613154,
		-0.720965, -0.458001, -0.520043,
		0.690524, -0.411801, -0.594641,
		30.346130, 42.148972, 20.168373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741652, 41.819443, 20.619875>,  <29.862764, 42.437229, 20.584621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741652, 41.819443, 20.619875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121960, 41.819294, 20.495918>,  <30.350145, 41.819206, 20.421543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121960, 41.819294, 20.495918>,  <29.741652, 41.819443, 20.619875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121960, 41.819294, 20.495918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196243, -0.773227, 0.603000,
		-0.239840, -0.634129, -0.735090,
		0.950771, -0.000367, -0.309894,
		30.407190, 41.819183, 20.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877937, 41.227959, 20.410080>,  <29.741652, 41.819443, 20.619875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877937, 41.227959, 20.410080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247124, 41.359715, 20.489714>,  <30.468636, 41.438766, 20.537495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247124, 41.359715, 20.489714>,  <29.877937, 41.227959, 20.410080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247124, 41.359715, 20.489714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147314, -0.780213, 0.607920,
		0.355570, -0.531762, -0.768634,
		0.922967, 0.329389, 0.199084,
		30.524014, 41.458530, 20.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454287, 40.755890, 20.183620>,  <29.877937, 41.227959, 20.410080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454287, 40.755890, 20.183620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589201, 40.970158, 20.493277>,  <30.670149, 41.098721, 20.679070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589201, 40.970158, 20.493277>,  <30.454287, 40.755890, 20.183620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589201, 40.970158, 20.493277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297797, -0.840809, 0.452058,
		0.893060, 0.078064, -0.443114,
		0.337284, 0.535673, 0.774140,
		30.690386, 41.130859, 20.725519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110809, 40.411823, 20.416681>,  <30.454287, 40.755890, 20.183620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110809, 40.411823, 20.416681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950508, 40.626560, 20.713652>,  <30.854328, 40.755402, 20.891834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950508, 40.626560, 20.713652>,  <31.110809, 40.411823, 20.416681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950508, 40.626560, 20.713652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130429, -0.768659, 0.626220,
		0.906855, 0.347792, 0.238021,
		-0.400751, 0.536847, 0.742425,
		30.830282, 40.787613, 20.936378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549591, 40.221054, 20.890476>,  <31.110809, 40.411823, 20.416681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549591, 40.221054, 20.890476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226234, 40.371723, 21.071415>,  <31.032221, 40.462124, 21.179979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226234, 40.371723, 21.071415>,  <31.549591, 40.221054, 20.890476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226234, 40.371723, 21.071415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062784, -0.708900, 0.702509,
		0.585288, 0.596302, 0.549420,
		-0.808391, 0.376676, 0.452349,
		30.983717, 40.484726, 21.207119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725517, 40.208824, 21.433264>,  <31.549591, 40.221054, 20.890476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725517, 40.208824, 21.433264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332289, 40.241249, 21.498991>,  <31.096352, 40.260704, 21.538427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332289, 40.241249, 21.498991>,  <31.725517, 40.208824, 21.433264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332289, 40.241249, 21.498991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059687, -0.706211, 0.705482,
		0.173233, 0.703346, 0.689416,
		-0.983070, 0.081064, 0.164319,
		31.037367, 40.265568, 21.548286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610010, 40.172882, 22.245100>,  <31.725517, 40.208824, 21.433264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610010, 40.172882, 22.245100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257328, 40.089600, 22.075750>,  <31.045719, 40.039631, 21.974140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257328, 40.089600, 22.075750>,  <31.610010, 40.172882, 22.245100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257328, 40.089600, 22.075750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173995, -0.690614, 0.701981,
		-0.438545, 0.692605, 0.572692,
		-0.881705, -0.208205, -0.423376,
		30.992817, 40.027138, 21.948738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083380, 40.191448, 22.793369>,  <31.610010, 40.172882, 22.245100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083380, 40.191448, 22.793369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965883, 39.960117, 22.488935>,  <30.895386, 39.821320, 22.306274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965883, 39.960117, 22.488935>,  <31.083380, 40.191448, 22.793369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965883, 39.960117, 22.488935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362943, -0.669106, 0.648513,
		-0.884302, 0.466725, -0.013358,
		-0.293739, -0.578330, -0.761086,
		30.877762, 39.786617, 22.260611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438822, 39.771786, 23.038357>,  <31.083380, 40.191448, 22.793369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438822, 39.771786, 23.038357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538828, 39.581188, 22.701204>,  <30.598831, 39.466831, 22.498913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538828, 39.581188, 22.701204>,  <30.438822, 39.771786, 23.038357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538828, 39.581188, 22.701204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278770, -0.869089, 0.408621,
		-0.927243, 0.132807, -0.350119,
		0.250017, -0.476494, -0.842879,
		30.613832, 39.438240, 22.448341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920225, 39.353134, 22.716890>,  <30.438822, 39.771786, 23.038357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920225, 39.353134, 22.716890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248579, 39.182922, 22.564535>,  <30.445591, 39.080795, 22.473122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248579, 39.182922, 22.564535>,  <29.920225, 39.353134, 22.716890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248579, 39.182922, 22.564535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294115, -0.886696, 0.356744,
		-0.489535, -0.180821, -0.853030,
		0.820885, -0.425527, -0.380886,
		30.494844, 39.055264, 22.450270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760641, 38.617413, 22.602232>,  <29.920225, 39.353134, 22.716890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760641, 38.617413, 22.602232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159657, 38.593182, 22.588089>,  <30.399065, 38.578644, 22.579603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159657, 38.593182, 22.588089>,  <29.760641, 38.617413, 22.602232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159657, 38.593182, 22.588089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049690, -0.966092, 0.253373,
		-0.049507, -0.250992, -0.966722,
		0.997537, -0.060580, -0.035356,
		30.458918, 38.575008, 22.577482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921118, 37.974251, 22.166460>,  <29.760641, 38.617413, 22.602232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921118, 37.974251, 22.166460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265543, 38.049934, 22.355255>,  <30.472198, 38.095345, 22.468533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265543, 38.049934, 22.355255>,  <29.921118, 37.974251, 22.166460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265543, 38.049934, 22.355255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075197, -0.965370, 0.249812,
		0.502909, -0.179612, -0.845472,
		0.861062, 0.189209, 0.471987,
		30.523861, 38.106697, 22.496851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335987, 37.443836, 21.921526>,  <29.921118, 37.974251, 22.166460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335987, 37.443836, 21.921526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474241, 37.563763, 22.277199>,  <30.557194, 37.635719, 22.490602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474241, 37.563763, 22.277199>,  <30.335987, 37.443836, 21.921526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474241, 37.563763, 22.277199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141764, -0.953390, 0.266365,
		0.927598, 0.033989, -0.372030,
		0.345637, 0.299820, 0.889181,
		30.577932, 37.653709, 22.543953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673531, 36.871124, 22.164494>,  <30.335987, 37.443836, 21.921526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673531, 36.871124, 22.164494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633024, 37.064354, 22.512375>,  <30.608721, 37.180290, 22.721104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633024, 37.064354, 22.512375>,  <30.673531, 36.871124, 22.164494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633024, 37.064354, 22.512375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036976, -0.875422, 0.481943,
		0.994172, 0.016646, 0.106512,
		-0.101265, 0.483073, 0.869704,
		30.602644, 37.209274, 22.773287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262089, 36.749634, 22.565306>,  <30.673531, 36.871124, 22.164494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262089, 36.749634, 22.565306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982977, 36.866627, 22.826857>,  <30.815510, 36.936825, 22.983788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982977, 36.866627, 22.826857>,  <31.262089, 36.749634, 22.565306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982977, 36.866627, 22.826857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018017, -0.905383, 0.424213,
		0.716088, 0.307787, 0.626486,
		-0.697777, 0.292486, 0.653880,
		30.773643, 36.954372, 23.023020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517166, 36.527241, 23.229700>,  <31.262089, 36.749634, 22.565306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517166, 36.527241, 23.229700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127708, 36.606960, 23.274054>,  <30.894033, 36.654793, 23.300665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127708, 36.606960, 23.274054>,  <31.517166, 36.527241, 23.229700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127708, 36.606960, 23.274054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108665, -0.832835, 0.542749,
		0.200517, 0.516396, 0.832543,
		-0.973645, 0.199298, 0.110883,
		30.835615, 36.666748, 23.307318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372978, 36.436047, 23.869793>,  <31.517166, 36.527241, 23.229700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372978, 36.436047, 23.869793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011934, 36.378796, 23.707407>,  <30.795307, 36.344444, 23.609976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011934, 36.378796, 23.707407>,  <31.372978, 36.436047, 23.869793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011934, 36.378796, 23.707407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164963, -0.756089, 0.633337,
		-0.397593, 0.638627, 0.658844,
		-0.902611, -0.143125, -0.405966,
		30.741152, 36.335857, 23.585617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997725, 36.443581, 24.450884>,  <31.372978, 36.436047, 23.869793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997725, 36.443581, 24.450884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785753, 36.265171, 24.162374>,  <30.658569, 36.158123, 23.989269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785753, 36.265171, 24.162374>,  <30.997725, 36.443581, 24.450884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785753, 36.265171, 24.162374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143745, -0.790965, 0.594737,
		-0.835770, 0.418848, 0.355042,
		-0.529930, -0.446027, -0.721272,
		30.626774, 36.131363, 23.945993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332224, 36.339355, 24.734436>,  <30.997725, 36.443581, 24.450884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332224, 36.339355, 24.734436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354202, 36.075665, 24.434462>,  <30.367390, 35.917450, 24.254477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354202, 36.075665, 24.434462>,  <30.332224, 36.339355, 24.734436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354202, 36.075665, 24.434462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113926, -0.750304, 0.651203,
		-0.991969, 0.049657, -0.116328,
		0.054945, -0.659226, -0.749935,
		30.370686, 35.877895, 24.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642466, 35.971573, 24.768215>,  <30.332224, 36.339355, 24.734436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642466, 35.971573, 24.768215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920349, 35.739399, 24.598288>,  <30.087080, 35.600094, 24.496330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920349, 35.739399, 24.598288>,  <29.642466, 35.971573, 24.768215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920349, 35.739399, 24.598288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319344, -0.778101, 0.540906,
		-0.644512, -0.240110, -0.725914,
		0.694711, -0.580437, -0.424818,
		30.128761, 35.565269, 24.470842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283810, 35.291973, 24.815968>,  <29.642466, 35.971573, 24.768215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283810, 35.291973, 24.815968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664358, 35.217770, 24.717600>,  <29.892687, 35.173248, 24.658579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664358, 35.217770, 24.717600>,  <29.283810, 35.291973, 24.815968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664358, 35.217770, 24.717600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022129, -0.837426, 0.546103,
		-0.307246, -0.514106, -0.800809,
		0.951373, -0.185509, -0.245919,
		29.949770, 35.162117, 24.643824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244637, 34.638466, 24.641642>,  <29.283810, 35.291973, 24.815968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244637, 34.638466, 24.641642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623960, 34.710770, 24.745975>,  <29.851555, 34.754150, 24.808577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623960, 34.710770, 24.745975>,  <29.244637, 34.638466, 24.641642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623960, 34.710770, 24.745975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001866, -0.818740, 0.574162,
		0.317338, -0.544970, -0.776082,
		0.948310, 0.180756, 0.260834,
		29.908453, 34.764996, 24.824226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501886, 33.937500, 24.593729>,  <29.244637, 34.638466, 24.641642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501886, 33.937500, 24.593729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754745, 34.151730, 24.817709>,  <29.906462, 34.280270, 24.952097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754745, 34.151730, 24.817709>,  <29.501886, 33.937500, 24.593729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754745, 34.151730, 24.817709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017625, -0.732412, 0.680633,
		0.774646, -0.420392, -0.472433,
		0.632149, 0.535576, 0.559951,
		29.944389, 34.312401, 24.985695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124483, 33.512947, 24.635872>,  <29.501886, 33.937500, 24.593729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124483, 33.512947, 24.635872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163944, 33.770733, 24.939169>,  <30.187620, 33.925404, 25.121147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163944, 33.770733, 24.939169>,  <30.124483, 33.512947, 24.635872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163944, 33.770733, 24.939169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140349, -0.763356, 0.630547,
		0.985175, 0.044215, -0.165755,
		0.098651, 0.644463, 0.758245,
		30.193539, 33.964073, 25.166643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731045, 33.376511, 24.909525>,  <30.124483, 33.512947, 24.635872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731045, 33.376511, 24.909525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529181, 33.568638, 25.196470>,  <30.408062, 33.683914, 25.368637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529181, 33.568638, 25.196470>,  <30.731045, 33.376511, 24.909525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529181, 33.568638, 25.196470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209547, -0.737941, 0.641509,
		0.837499, 0.474067, 0.271763,
		-0.504663, 0.480316, 0.717364,
		30.377781, 33.712734, 25.411680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147036, 33.391708, 25.481453>,  <30.731045, 33.376511, 24.909525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147036, 33.391708, 25.481453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780981, 33.457027, 25.628891>,  <30.561348, 33.496220, 25.717354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780981, 33.457027, 25.628891>,  <31.147036, 33.391708, 25.481453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780981, 33.457027, 25.628891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177496, -0.657703, 0.732067,
		0.361971, 0.735364, 0.572902,
		-0.915135, 0.163299, 0.368594,
		30.506441, 33.506016, 25.739470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304440, 33.533474, 26.205172>,  <31.147036, 33.391708, 25.481453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304440, 33.533474, 26.205172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926025, 33.411762, 26.160574>,  <30.698977, 33.338734, 26.133816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926025, 33.411762, 26.160574>,  <31.304440, 33.533474, 26.205172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926025, 33.411762, 26.160574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129069, -0.669369, 0.731632,
		-0.297250, 0.677760, 0.672520,
		-0.946036, -0.304279, -0.111492,
		30.642214, 33.320477, 26.127127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016541, 33.506531, 26.934330>,  <31.304440, 33.533474, 26.205172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016541, 33.506531, 26.934330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770916, 33.274231, 26.720541>,  <30.623541, 33.134853, 26.592268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770916, 33.274231, 26.720541>,  <31.016541, 33.506531, 26.934330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770916, 33.274231, 26.720541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068539, -0.635387, 0.769146,
		-0.786275, 0.508936, 0.350364,
		-0.614063, -0.580747, -0.534471,
		30.586697, 33.100006, 26.560200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668797, 34.016434, 27.151329>,  <31.016541, 33.506531, 26.934330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668797, 34.016434, 27.151329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064465, 34.049656, 27.102930>,  <32.301865, 34.069588, 27.073891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064465, 34.049656, 27.102930>,  <31.668797, 34.016434, 27.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064465, 34.049656, 27.102930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102174, 0.981564, -0.161532,
		0.105351, 0.172145, 0.979422,
		0.989172, 0.083054, -0.120997,
		32.361217, 34.074574, 27.066631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833836, 34.636154, 27.371443>,  <31.668797, 34.016434, 27.151329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833836, 34.636154, 27.371443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180813, 34.571728, 27.183146>,  <32.389000, 34.533070, 27.070168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180813, 34.571728, 27.183146>,  <31.833836, 34.636154, 27.371443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180813, 34.571728, 27.183146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047669, 0.968702, -0.243608,
		0.495249, 0.188876, 0.847971,
		0.867442, -0.161068, -0.470745,
		32.441044, 34.523407, 27.041922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186131, 35.131618, 27.603251>,  <31.833836, 34.636154, 27.371443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186131, 35.131618, 27.603251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387554, 35.010540, 27.279572>,  <32.508408, 34.937893, 27.085365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387554, 35.010540, 27.279572>,  <32.186131, 35.131618, 27.603251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387554, 35.010540, 27.279572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036371, 0.943210, -0.330199,
		0.863193, 0.136844, 0.485975,
		0.503562, -0.302701, -0.809196,
		32.538624, 34.919731, 27.036814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843037, 35.512482, 27.598400>,  <32.186131, 35.131618, 27.603251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843037, 35.512482, 27.598400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779530, 35.380985, 27.226009>,  <32.741425, 35.302086, 27.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779530, 35.380985, 27.226009>,  <32.843037, 35.512482, 27.598400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779530, 35.380985, 27.226009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191860, 0.914691, -0.355713,
		0.968495, -0.235092, -0.082148,
		-0.158765, -0.328745, -0.930978,
		32.731899, 35.282360, 26.946716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355400, 35.947918, 27.256601>,  <32.843037, 35.512482, 27.598400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355400, 35.947918, 27.256601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098358, 35.795490, 26.990715>,  <32.944134, 35.704033, 26.831182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098358, 35.795490, 26.990715>,  <33.355400, 35.947918, 27.256601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098358, 35.795490, 26.990715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184201, 0.765270, -0.616791,
		0.743730, -0.518792, -0.421570,
		-0.642601, -0.381072, -0.664716,
		32.905579, 35.681168, 26.791300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711582, 35.803730, 26.572603>,  <33.355400, 35.947918, 27.256601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711582, 35.803730, 26.572603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328388, 35.864628, 26.475376>,  <33.098473, 35.901165, 26.417040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328388, 35.864628, 26.475376>,  <33.711582, 35.803730, 26.572603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328388, 35.864628, 26.475376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278900, 0.692136, -0.665705,
		0.066888, -0.705529, -0.705518,
		-0.957988, 0.152242, -0.243068,
		33.040993, 35.910301, 26.402456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731461, 35.988377, 25.817255>,  <33.711582, 35.803730, 26.572603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731461, 35.988377, 25.817255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362480, 36.062786, 25.952599>,  <33.141094, 36.107430, 26.033804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362480, 36.062786, 25.952599>,  <33.731461, 35.988377, 25.817255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362480, 36.062786, 25.952599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147728, 0.639603, -0.754377,
		-0.356744, -0.745858, -0.562520,
		-0.922448, 0.186019, 0.338358,
		33.085747, 36.118591, 26.054106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298378, 36.026356, 25.222103>,  <33.731461, 35.988377, 25.817255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298378, 36.026356, 25.222103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123413, 36.264557, 25.491636>,  <33.018433, 36.407478, 25.653357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123413, 36.264557, 25.491636>,  <33.298378, 36.026356, 25.222103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123413, 36.264557, 25.491636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089566, 0.716743, -0.691562,
		-0.894788, -0.362852, -0.260177,
		-0.437415, 0.595498, 0.673832,
		32.992188, 36.443207, 25.693787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702782, 36.469723, 24.873138>,  <33.298378, 36.026356, 25.222103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702782, 36.469723, 24.873138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753841, 36.662601, 25.219824>,  <32.784477, 36.778328, 25.427835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753841, 36.662601, 25.219824>,  <32.702782, 36.469723, 24.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753841, 36.662601, 25.219824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037884, 0.870852, -0.490083,
		-0.991095, 0.095393, 0.092897,
		0.127650, 0.482200, 0.866711,
		32.792137, 36.807262, 25.479837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298622, 37.072056, 24.810747>,  <32.702782, 36.469723, 24.873138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298622, 37.072056, 24.810747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568230, 37.135681, 25.099300>,  <32.729996, 37.173855, 25.272432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568230, 37.135681, 25.099300>,  <32.298622, 37.072056, 24.810747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568230, 37.135681, 25.099300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255734, 0.865916, -0.429870,
		-0.693034, 0.474224, 0.542968,
		0.674020, 0.159060, 0.721385,
		32.770435, 37.183399, 25.315716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224552, 37.808430, 24.938717>,  <32.298622, 37.072056, 24.810747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224552, 37.808430, 24.938717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588612, 37.709347, 25.071550>,  <32.807045, 37.649899, 25.151251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588612, 37.709347, 25.071550>,  <32.224552, 37.808430, 24.938717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588612, 37.709347, 25.071550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366357, 0.855490, -0.365949,
		-0.193444, 0.454727, 0.869369,
		0.910144, -0.247709, 0.332082,
		32.861656, 37.635033, 25.171175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558903, 38.309708, 25.365063>,  <32.224552, 37.808430, 24.938717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558903, 38.309708, 25.365063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862877, 38.111931, 25.196289>,  <33.045261, 37.993267, 25.095024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862877, 38.111931, 25.196289>,  <32.558903, 38.309708, 25.365063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862877, 38.111931, 25.196289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464144, 0.867218, -0.180285,
		0.455051, -0.058834, 0.888519,
		0.759933, -0.494440, -0.421937,
		33.090858, 37.963600, 25.069708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184559, 38.428486, 25.747488>,  <32.558903, 38.309708, 25.365063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184559, 38.428486, 25.747488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285805, 38.325573, 25.374449>,  <33.346554, 38.263824, 25.150625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285805, 38.325573, 25.374449>,  <33.184559, 38.428486, 25.747488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285805, 38.325573, 25.374449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305844, 0.935829, -0.175165,
		0.917818, -0.240892, 0.315565,
		0.253119, -0.257284, -0.932596,
		33.361740, 38.248386, 25.094669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574684, 39.005680, 25.515636>,  <33.184559, 38.428486, 25.747488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574684, 39.005680, 25.515636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523323, 38.806641, 25.172497>,  <33.492508, 38.687218, 24.966612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523323, 38.806641, 25.172497>,  <33.574684, 39.005680, 25.515636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523323, 38.806641, 25.172497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194105, 0.835671, -0.513787,
		0.972542, -0.232482, -0.010713,
		-0.128398, -0.497599, -0.857851,
		33.484802, 38.657360, 24.915142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145660, 39.094795, 25.178448>,  <33.574684, 39.005680, 25.515636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145660, 39.094795, 25.178448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862972, 39.003651, 24.910532>,  <33.693359, 38.948963, 24.749783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862972, 39.003651, 24.910532>,  <34.145660, 39.094795, 25.178448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862972, 39.003651, 24.910532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202805, 0.841736, -0.500351,
		0.677798, -0.489447, -0.548664,
		-0.706725, -0.227865, -0.669789,
		33.650955, 38.935291, 24.709595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270348, 39.521091, 24.600607>,  <34.145660, 39.094795, 25.178448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270348, 39.521091, 24.600607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903057, 39.405308, 24.492476>,  <33.682682, 39.335838, 24.427597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903057, 39.405308, 24.492476>,  <34.270348, 39.521091, 24.600607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903057, 39.405308, 24.492476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075531, 0.797999, -0.597907,
		0.388790, -0.528595, -0.754606,
		-0.918225, -0.289456, -0.270329,
		33.627590, 39.318470, 24.411377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170921, 39.677170, 23.902428>,  <34.270348, 39.521091, 24.600607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170921, 39.677170, 23.902428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798679, 39.634594, 24.042511>,  <33.575333, 39.609047, 24.126562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798679, 39.634594, 24.042511>,  <34.170921, 39.677170, 23.902428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798679, 39.634594, 24.042511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291904, 0.793077, -0.534622,
		-0.220836, -0.599749, -0.769112,
		-0.930604, -0.106443, 0.350209,
		33.519497, 39.602661, 24.147573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872414, 39.713871, 23.320295>,  <34.170921, 39.677170, 23.902428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872414, 39.713871, 23.320295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575951, 39.778820, 23.580853>,  <33.398071, 39.817791, 23.737186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575951, 39.778820, 23.580853>,  <33.872414, 39.713871, 23.320295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575951, 39.778820, 23.580853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355610, 0.728036, -0.586094,
		-0.569404, -0.666032, -0.481850,
		-0.741162, 0.162374, 0.651394,
		33.353603, 39.827534, 23.776270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324013, 39.844769, 22.914537>,  <33.872414, 39.713871, 23.320295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324013, 39.844769, 22.914537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158947, 39.985619, 23.250565>,  <33.059906, 40.070129, 23.452181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158947, 39.985619, 23.250565>,  <33.324013, 39.844769, 22.914537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158947, 39.985619, 23.250565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547706, 0.640989, -0.537727,
		-0.727822, -0.682013, -0.071654,
		-0.412666, 0.352124, 0.840069,
		33.035149, 40.091255, 23.502584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707024, 39.994244, 22.679832>,  <33.324013, 39.844769, 22.914537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707024, 39.994244, 22.679832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757076, 40.205288, 23.015919>,  <32.787106, 40.331917, 23.217571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757076, 40.205288, 23.015919>,  <32.707024, 39.994244, 22.679832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757076, 40.205288, 23.015919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269735, 0.833066, -0.482954,
		-0.954770, -0.166204, 0.246557,
		0.125129, 0.527614, 0.840218,
		32.794617, 40.363571, 23.267984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108818, 40.312710, 22.800703>,  <32.707024, 39.994244, 22.679832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108818, 40.312710, 22.800703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375698, 40.529968, 23.004601>,  <32.535828, 40.660324, 23.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375698, 40.529968, 23.004601>,  <32.108818, 40.312710, 22.800703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375698, 40.529968, 23.004601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428436, 0.839629, -0.333865,
		-0.609330, 0.004364, 0.792904,
		0.667203, 0.543143, 0.509742,
		32.575859, 40.692909, 23.157522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765392, 40.891293, 23.136131>,  <32.108818, 40.312710, 22.800703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765392, 40.891293, 23.136131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144222, 41.009205, 23.085291>,  <32.371521, 41.079952, 23.054787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144222, 41.009205, 23.085291>,  <31.765392, 40.891293, 23.136131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144222, 41.009205, 23.085291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320773, 0.853532, -0.410593,
		-0.012552, 0.429632, 0.902917,
		0.947073, 0.294785, -0.127101,
		32.428345, 41.097641, 23.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724712, 41.575047, 23.048883>,  <31.765392, 40.891293, 23.136131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724712, 41.575047, 23.048883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100456, 41.534477, 22.917847>,  <32.325901, 41.510136, 22.839226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100456, 41.534477, 22.917847>,  <31.724712, 41.575047, 23.048883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100456, 41.534477, 22.917847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115695, 0.805532, -0.581148,
		0.322827, 0.583808, 0.744951,
		0.939360, -0.101423, -0.327591,
		32.382263, 41.504051, 22.819569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026920, 42.333763, 22.804934>,  <31.724712, 41.575047, 23.048883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026920, 42.333763, 22.804934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245457, 42.046795, 22.632042>,  <32.376579, 41.874615, 22.528307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245457, 42.046795, 22.632042>,  <32.026920, 42.333763, 22.804934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245457, 42.046795, 22.632042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060745, 0.548638, -0.833850,
		0.835357, 0.429311, 0.343323,
		0.546342, -0.717418, -0.432230,
		32.409359, 41.831570, 22.502373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569382, 42.748924, 22.481306>,  <32.026920, 42.333763, 22.804934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569382, 42.748924, 22.481306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543758, 42.393742, 22.299131>,  <32.528385, 42.180630, 22.189827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543758, 42.393742, 22.299131>,  <32.569382, 42.748924, 22.481306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543758, 42.393742, 22.299131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013659, 0.457113, -0.889304,
		0.997853, -0.050748, -0.041411,
		-0.064059, -0.887960, -0.455438,
		32.524540, 42.127354, 22.162500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131615, 42.788174, 22.016653>,  <32.569382, 42.748924, 22.481306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131615, 42.788174, 22.016653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873623, 42.511829, 21.885986>,  <32.718826, 42.346024, 21.807587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873623, 42.511829, 21.885986>,  <33.131615, 42.788174, 22.016653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873623, 42.511829, 21.885986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057846, 0.382102, -0.922308,
		0.762007, -0.613766, -0.206485,
		-0.644980, -0.690860, -0.326669,
		32.680130, 42.304573, 21.787985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393417, 42.554790, 21.416632>,  <33.131615, 42.788174, 22.016653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393417, 42.554790, 21.416632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009567, 42.443943, 21.397379>,  <32.779255, 42.377434, 21.385828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009567, 42.443943, 21.397379>,  <33.393417, 42.554790, 21.416632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009567, 42.443943, 21.397379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067148, 0.391887, -0.917559,
		0.273135, -0.877285, -0.394675,
		-0.959629, -0.277119, -0.048130,
		32.721680, 42.360806, 21.382940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309902, 42.191746, 20.753435>,  <33.393417, 42.554790, 21.416632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309902, 42.191746, 20.753435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962791, 42.346176, 20.878599>,  <32.754524, 42.438835, 20.953697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962791, 42.346176, 20.878599>,  <33.309902, 42.191746, 20.753435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962791, 42.346176, 20.878599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076313, 0.518658, -0.851570,
		-0.491063, -0.762850, -0.420615,
		-0.867775, 0.386076, 0.312909,
		32.702457, 42.461998, 20.972471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817848, 42.028908, 20.307966>,  <33.309902, 42.191746, 20.753435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817848, 42.028908, 20.307966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690121, 42.357014, 20.497786>,  <32.613483, 42.553879, 20.611677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690121, 42.357014, 20.497786>,  <32.817848, 42.028908, 20.307966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690121, 42.357014, 20.497786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104253, 0.467318, -0.877921,
		-0.941895, -0.329809, -0.063707,
		-0.319318, 0.820268, 0.474548,
		32.594326, 42.603096, 20.640150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394001, 42.299343, 19.720510>,  <32.817848, 42.028908, 20.307966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394001, 42.299343, 19.720510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387383, 42.579468, 20.005968>,  <32.383411, 42.747543, 20.177242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387383, 42.579468, 20.005968>,  <32.394001, 42.299343, 19.720510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387383, 42.579468, 20.005968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359728, 0.661780, -0.657756,
		-0.932911, -0.267603, 0.240970,
		-0.016548, 0.700311, 0.713646,
		32.382420, 42.789562, 20.220062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857105, 42.727566, 19.515289>,  <32.394001, 42.299343, 19.720510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857105, 42.727566, 19.515289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079792, 42.958031, 19.754656>,  <32.213406, 43.096310, 19.898275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079792, 42.958031, 19.754656>,  <31.857105, 42.727566, 19.515289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079792, 42.958031, 19.754656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137829, 0.774455, -0.617432,
		-0.819188, 0.261257, 0.510565,
		0.556718, 0.576163, 0.598416,
		32.246807, 43.130878, 19.934181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526480, 43.424969, 19.673794>,  <31.857105, 42.727566, 19.515289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526480, 43.424969, 19.673794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923035, 43.460762, 19.712053>,  <32.160969, 43.482239, 19.735008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923035, 43.460762, 19.712053>,  <31.526480, 43.424969, 19.673794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923035, 43.460762, 19.712053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011006, 0.670763, -0.741590,
		-0.130516, 0.736254, 0.664000,
		0.991385, 0.089481, 0.095649,
		32.220451, 43.487606, 19.740747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651028, 44.155632, 19.497473>,  <31.526480, 43.424969, 19.673794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651028, 44.155632, 19.497473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006245, 43.971745, 19.494816>,  <32.219376, 43.861412, 19.493221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006245, 43.971745, 19.494816>,  <31.651028, 44.155632, 19.497473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006245, 43.971745, 19.494816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350980, 0.687184, -0.636075,
		0.296978, 0.562529, 0.771599,
		0.888041, -0.459716, -0.006643,
		32.272655, 43.833828, 19.492823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138245, 44.703091, 19.570690>,  <31.651028, 44.155632, 19.497473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138245, 44.703091, 19.570690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344151, 44.405769, 19.399801>,  <32.467693, 44.227375, 19.297268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344151, 44.405769, 19.399801>,  <32.138245, 44.703091, 19.570690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344151, 44.405769, 19.399801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288117, 0.619318, -0.730366,
		0.807468, 0.252878, 0.532962,
		0.514766, -0.743303, -0.427220,
		32.498581, 44.182777, 19.271635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701099, 45.051167, 19.240591>,  <32.138245, 44.703091, 19.570690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701099, 45.051167, 19.240591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725922, 44.701328, 19.048248>,  <32.740814, 44.491425, 18.932842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725922, 44.701328, 19.048248>,  <32.701099, 45.051167, 19.240591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725922, 44.701328, 19.048248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177703, 0.483771, -0.856964,
		0.982126, -0.032270, 0.185440,
		0.062056, -0.874600, -0.480858,
		32.744537, 44.438950, 18.903992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315022, 45.128418, 18.853884>,  <32.701099, 45.051167, 19.240591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315022, 45.128418, 18.853884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123802, 44.832119, 18.665089>,  <33.009071, 44.654339, 18.551811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123802, 44.832119, 18.665089>,  <33.315022, 45.128418, 18.853884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123802, 44.832119, 18.665089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245637, 0.403174, -0.881540,
		0.843287, -0.537354, -0.010782,
		-0.478046, -0.740743, -0.471986,
		32.980389, 44.609898, 18.523493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679081, 44.911003, 18.221601>,  <33.315022, 45.128418, 18.853884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679081, 44.911003, 18.221601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299160, 44.798088, 18.167664>,  <33.071205, 44.730339, 18.135302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299160, 44.798088, 18.167664>,  <33.679081, 44.911003, 18.221601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299160, 44.798088, 18.167664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035133, 0.332049, -0.942608,
		0.310857, -0.900033, -0.305465,
		-0.949807, -0.282284, -0.134841,
		33.014217, 44.713402, 18.127211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690086, 44.730190, 17.480391>,  <33.679081, 44.911003, 18.221601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690086, 44.730190, 17.480391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301411, 44.768620, 17.566732>,  <33.068207, 44.791676, 17.618538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301411, 44.768620, 17.566732>,  <33.690086, 44.730190, 17.480391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301411, 44.768620, 17.566732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146563, 0.471480, -0.869613,
		-0.185318, -0.876628, -0.444051,
		-0.971688, 0.096074, 0.215855,
		33.009903, 44.797443, 17.631489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354877, 44.202644, 17.504122>,  <33.690086, 44.730190, 17.480391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354877, 44.202644, 17.504122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544300, 43.991772, 17.221895>,  <34.657955, 43.865250, 17.052559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544300, 43.991772, 17.221895>,  <34.354877, 44.202644, 17.504122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544300, 43.991772, 17.221895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522730, -0.476514, 0.706886,
		-0.708868, -0.703572, 0.049916,
		0.473560, -0.527181, -0.705565,
		34.686367, 43.833618, 17.010225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294144, 43.452263, 17.636030>,  <34.354877, 44.202644, 17.504122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294144, 43.452263, 17.636030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626984, 43.548775, 17.436274>,  <34.826687, 43.606682, 17.316420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626984, 43.548775, 17.436274>,  <34.294144, 43.452263, 17.636030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626984, 43.548775, 17.436274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543048, -0.537413, 0.645202,
		-0.112707, -0.808067, -0.578208,
		0.832103, 0.241276, -0.499390,
		34.876614, 43.621159, 17.286457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527672, 42.921558, 17.269392>,  <34.294144, 43.452263, 17.636030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527672, 42.921558, 17.269392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846478, 43.148880, 17.351173>,  <35.037762, 43.285275, 17.400242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846478, 43.148880, 17.351173>,  <34.527672, 42.921558, 17.269392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846478, 43.148880, 17.351173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399586, -0.750014, 0.527077,
		0.452884, -0.338389, -0.824857,
		0.797011, 0.568306, 0.204454,
		35.085583, 43.319370, 17.412510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154186, 42.549553, 17.064377>,  <34.527672, 42.921558, 17.269392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154186, 42.549553, 17.064377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260864, 42.828850, 17.330109>,  <35.324871, 42.996426, 17.489548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260864, 42.828850, 17.330109>,  <35.154186, 42.549553, 17.064377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260864, 42.828850, 17.330109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388756, -0.708669, 0.588775,
		0.881897, 0.101240, -0.460443,
		0.266695, 0.698240, 0.664331,
		35.340874, 43.038322, 17.529408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795567, 42.315945, 17.213619>,  <35.154186, 42.549553, 17.064377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795567, 42.315945, 17.213619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695580, 42.562706, 17.512133>,  <35.635586, 42.710762, 17.691240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695580, 42.562706, 17.512133>,  <35.795567, 42.315945, 17.213619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695580, 42.562706, 17.512133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299723, -0.683596, 0.665479,
		0.920696, 0.390028, -0.014023,
		-0.249970, 0.616907, 0.746285,
		35.620590, 42.747780, 17.736017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375374, 42.355595, 17.714928>,  <35.795567, 42.315945, 17.213619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375374, 42.355595, 17.714928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047424, 42.447311, 17.924778>,  <35.850655, 42.502342, 18.050688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047424, 42.447311, 17.924778>,  <36.375374, 42.355595, 17.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047424, 42.447311, 17.924778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174543, -0.772594, 0.610437,
		0.545289, 0.592052, 0.593410,
		-0.819875, 0.229289, 0.524625,
		35.801460, 42.516098, 18.082165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651649, 42.192272, 18.473696>,  <36.375374, 42.355595, 17.714928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651649, 42.192272, 18.473696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254784, 42.240906, 18.462135>,  <36.016666, 42.270084, 18.455198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254784, 42.240906, 18.462135>,  <36.651649, 42.192272, 18.473696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254784, 42.240906, 18.462135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094896, -0.582493, 0.807277,
		0.081313, 0.803692, 0.589464,
		-0.992161, 0.121581, -0.028903,
		35.957134, 42.277378, 18.453465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498920, 42.437847, 19.178343>,  <36.651649, 42.192272, 18.473696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498920, 42.437847, 19.178343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134781, 42.319565, 19.062532>,  <35.916298, 42.248596, 18.993046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134781, 42.319565, 19.062532>,  <36.498920, 42.437847, 19.178343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134781, 42.319565, 19.062532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076977, -0.566409, 0.820522,
		-0.406621, 0.769248, 0.492867,
		-0.910348, -0.295702, -0.289528,
		35.861675, 42.230854, 18.975674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110458, 42.387093, 19.837416>,  <36.498920, 42.437847, 19.178343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110458, 42.387093, 19.837416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940514, 42.166359, 19.550369>,  <35.838547, 42.033920, 19.378141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940514, 42.166359, 19.550369>,  <36.110458, 42.387093, 19.837416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940514, 42.166359, 19.550369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207605, -0.712197, 0.670578,
		-0.881129, 0.433886, 0.188025,
		-0.424866, -0.551831, -0.717615,
		35.813053, 42.000809, 19.335085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415070, 42.234688, 20.115200>,  <36.110458, 42.387093, 19.837416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415070, 42.234688, 20.115200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542633, 41.969559, 19.844213>,  <35.619171, 41.810482, 19.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542633, 41.969559, 19.844213>,  <35.415070, 42.234688, 20.115200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542633, 41.969559, 19.844213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091918, -0.733050, 0.673935,
		-0.943318, -0.152651, -0.294700,
		0.318907, -0.662824, -0.677468,
		35.638306, 41.770710, 19.640972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963627, 41.740707, 20.130930>,  <35.415070, 42.234688, 20.115200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963627, 41.740707, 20.130930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292473, 41.576550, 19.973091>,  <35.489780, 41.478054, 19.878387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292473, 41.576550, 19.973091>,  <34.963627, 41.740707, 20.130930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292473, 41.576550, 19.973091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019920, -0.713412, 0.700462,
		-0.568975, -0.567999, -0.594681,
		0.822114, -0.410391, -0.394598,
		35.539108, 41.453430, 19.854712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805889, 41.052849, 20.258558>,  <34.963627, 41.740707, 20.130930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805889, 41.052849, 20.258558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197575, 41.060978, 20.177843>,  <35.432587, 41.065857, 20.129414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197575, 41.060978, 20.177843>,  <34.805889, 41.052849, 20.258558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197575, 41.060978, 20.177843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160847, -0.683857, 0.711666,
		-0.123530, -0.729333, -0.672914,
		0.979218, 0.020324, -0.201788,
		35.491341, 41.067074, 20.117306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033817, 40.352699, 20.156359>,  <34.805889, 41.052849, 20.258558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033817, 40.352699, 20.156359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355919, 40.564041, 20.264002>,  <35.549179, 40.690845, 20.328587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355919, 40.564041, 20.264002>,  <35.033817, 40.352699, 20.156359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355919, 40.564041, 20.264002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127100, -0.597115, 0.792022,
		0.579153, -0.603572, -0.547980,
		0.805250, 0.528350, 0.269107,
		35.597492, 40.722546, 20.344734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425701, 39.882164, 20.354626>,  <35.033817, 40.352699, 20.156359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425701, 39.882164, 20.354626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609642, 40.210384, 20.490412>,  <35.720005, 40.407318, 20.571884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609642, 40.210384, 20.490412>,  <35.425701, 39.882164, 20.354626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609642, 40.210384, 20.490412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249016, -0.486102, 0.837673,
		0.852368, -0.300670, -0.427863,
		0.459848, 0.820550, 0.339467,
		35.747597, 40.456551, 20.592251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138248, 39.641575, 20.565020>,  <35.425701, 39.882164, 20.354626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138248, 39.641575, 20.565020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043941, 39.980968, 20.754538>,  <35.987358, 40.184605, 20.868248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043941, 39.980968, 20.754538>,  <36.138248, 39.641575, 20.565020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043941, 39.980968, 20.754538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119067, -0.458645, 0.880607,
		0.964488, 0.264030, 0.007106,
		-0.235766, 0.848489, 0.473795,
		35.973213, 40.235516, 20.896675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637981, 39.806122, 21.024025>,  <36.138248, 39.641575, 20.565020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637981, 39.806122, 21.024025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321693, 40.009212, 21.160830>,  <36.131920, 40.131069, 21.242912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321693, 40.009212, 21.160830>,  <36.637981, 39.806122, 21.024025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321693, 40.009212, 21.160830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123947, -0.414329, 0.901648,
		0.599498, 0.755343, 0.264687,
		-0.790721, 0.507729, 0.342011,
		36.084476, 40.161530, 21.263433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872486, 39.990406, 21.738434>,  <36.637981, 39.806122, 21.024025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872486, 39.990406, 21.738434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477009, 40.045086, 21.713764>,  <36.239723, 40.077892, 21.698961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477009, 40.045086, 21.713764>,  <36.872486, 39.990406, 21.738434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477009, 40.045086, 21.713764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123495, -0.508798, 0.851982,
		0.085086, 0.849963, 0.519926,
		-0.988691, 0.136700, -0.061675,
		36.180401, 40.086098, 21.695261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667118, 40.126373, 22.399015>,  <36.872486, 39.990406, 21.738434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667118, 40.126373, 22.399015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334599, 39.998905, 22.216858>,  <36.135086, 39.922424, 22.107563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334599, 39.998905, 22.216858>,  <36.667118, 40.126373, 22.399015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334599, 39.998905, 22.216858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223171, -0.559006, 0.798566,
		-0.509048, 0.765481, 0.393585,
		-0.831303, -0.318671, -0.455394,
		36.085209, 39.903305, 22.080240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183048, 40.213554, 22.950829>,  <36.667118, 40.126373, 22.399015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183048, 40.213554, 22.950829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063866, 39.950138, 22.674410>,  <35.992355, 39.792088, 22.508558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063866, 39.950138, 22.674410>,  <36.183048, 40.213554, 22.950829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063866, 39.950138, 22.674410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313559, -0.616241, 0.722446,
		-0.901612, 0.431940, -0.022880,
		-0.297954, -0.658540, -0.691049,
		35.974480, 39.752575, 22.467094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588909, 39.987144, 23.211933>,  <36.183048, 40.213554, 22.950829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588909, 39.987144, 23.211933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668297, 39.718544, 22.926359>,  <35.715931, 39.557384, 22.755014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668297, 39.718544, 22.926359>,  <35.588909, 39.987144, 23.211933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668297, 39.718544, 22.926359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397680, -0.720940, 0.567536,
		-0.895802, 0.171278, -0.410125,
		0.198469, -0.671498, -0.713933,
		35.727837, 39.517094, 22.712179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012592, 39.596134, 23.212900>,  <35.588909, 39.987144, 23.211933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012592, 39.596134, 23.212900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308910, 39.377705, 23.056427>,  <35.486702, 39.246647, 22.962543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308910, 39.377705, 23.056427>,  <35.012592, 39.596134, 23.212900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308910, 39.377705, 23.056427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277981, -0.779359, 0.561539,
		-0.611518, -0.307242, -0.729142,
		0.740792, -0.546079, -0.391185,
		35.531147, 39.213882, 22.939072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755707, 38.931904, 22.802744>,  <35.012592, 39.596134, 23.212900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755707, 38.931904, 22.802744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121243, 38.871704, 22.953604>,  <35.340565, 38.835583, 23.044121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121243, 38.871704, 22.953604>,  <34.755707, 38.931904, 22.802744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121243, 38.871704, 22.953604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316632, -0.845602, 0.429769,
		0.254239, -0.512159, -0.820400,
		0.913842, -0.150501, 0.377151,
		35.395393, 38.826553, 23.066750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822010, 38.154736, 22.796360>,  <34.755707, 38.931904, 22.802744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822010, 38.154736, 22.796360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122673, 38.286156, 23.025118>,  <35.303070, 38.365009, 23.162373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122673, 38.286156, 23.025118>,  <34.822010, 38.154736, 22.796360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122673, 38.286156, 23.025118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047104, -0.838142, 0.543415,
		0.657869, -0.435401, -0.614520,
		0.751658, 0.328549, 0.571896,
		35.348171, 38.384720, 23.196688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200359, 37.573265, 22.894466>,  <34.822010, 38.154736, 22.796360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200359, 37.573265, 22.894466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346107, 37.808174, 23.183561>,  <35.433556, 37.949120, 23.357019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346107, 37.808174, 23.183561>,  <35.200359, 37.573265, 22.894466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346107, 37.808174, 23.183561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004001, -0.775097, 0.631829,
		0.931246, -0.233111, -0.280072,
		0.364369, 0.587268, 0.722739,
		35.455418, 37.984356, 23.400383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596573, 37.097034, 23.227285>,  <35.200359, 37.573265, 22.894466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596573, 37.097034, 23.227285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543259, 37.399914, 23.483061>,  <35.511269, 37.581642, 23.636526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543259, 37.399914, 23.483061>,  <35.596573, 37.097034, 23.227285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543259, 37.399914, 23.483061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157823, -0.620746, 0.767962,
		0.978431, 0.203275, -0.036768,
		-0.133284, 0.757201, 0.639439,
		35.503273, 37.627075, 23.674892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158253, 37.042728, 23.748013>,  <35.596573, 37.097034, 23.227285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158253, 37.042728, 23.748013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866703, 37.255970, 23.919846>,  <35.691772, 37.383915, 24.022945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866703, 37.255970, 23.919846>,  <36.158253, 37.042728, 23.748013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866703, 37.255970, 23.919846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050256, -0.584100, 0.810124,
		0.682802, 0.612067, 0.398944,
		-0.728873, 0.533105, 0.429585,
		35.648041, 37.415901, 24.048721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434597, 37.096001, 24.408060>,  <36.158253, 37.042728, 23.748013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434597, 37.096001, 24.408060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038223, 37.148724, 24.397612>,  <35.800400, 37.180359, 24.391342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038223, 37.148724, 24.397612>,  <36.434597, 37.096001, 24.408060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038223, 37.148724, 24.397612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109961, -0.683716, 0.721416,
		0.077231, 0.717745, 0.692009,
		-0.990931, 0.131810, -0.026120,
		35.740944, 37.188267, 24.389776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301437, 37.328434, 25.085773>,  <36.434597, 37.096001, 24.408060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301437, 37.328434, 25.085773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983067, 37.141232, 24.932171>,  <35.792042, 37.028908, 24.840010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983067, 37.141232, 24.932171>,  <36.301437, 37.328434, 25.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983067, 37.141232, 24.932171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010449, -0.623600, 0.781674,
		-0.605297, 0.626171, 0.491453,
		-0.795931, -0.468009, -0.384006,
		35.744286, 37.000828, 24.816969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878716, 37.229679, 25.635706>,  <36.301437, 37.328434, 25.085773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878716, 37.229679, 25.635706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708038, 36.972744, 25.381042>,  <35.605633, 36.818581, 25.228245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708038, 36.972744, 25.381042>,  <35.878716, 37.229679, 25.635706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708038, 36.972744, 25.381042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096823, -0.667471, 0.738314,
		-0.899201, 0.376674, 0.222609,
		-0.426688, -0.642339, -0.636661,
		35.580032, 36.780041, 25.190044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248005, 36.989964, 25.882736>,  <35.878716, 37.229679, 25.635706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248005, 36.989964, 25.882736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365200, 36.702888, 25.630043>,  <35.435516, 36.530643, 25.478428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365200, 36.702888, 25.630043>,  <35.248005, 36.989964, 25.882736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365200, 36.702888, 25.630043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182107, -0.690519, 0.700014,
		-0.938614, -0.090050, -0.333007,
		0.292984, -0.717687, -0.631733,
		35.453094, 36.487583, 25.440523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747749, 36.447163, 25.986872>,  <35.248005, 36.989964, 25.882736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747749, 36.447163, 25.986872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055229, 36.252048, 25.821379>,  <35.239716, 36.134979, 25.722082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055229, 36.252048, 25.821379>,  <34.747749, 36.447163, 25.986872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055229, 36.252048, 25.821379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087916, -0.721286, 0.687036,
		-0.633540, -0.491750, -0.597335,
		0.768699, -0.487779, -0.413730,
		35.285839, 36.105713, 25.697260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637909, 35.797508, 26.176472>,  <34.747749, 36.447163, 25.986872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637909, 35.797508, 26.176472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010323, 35.757797, 26.036009>,  <35.233772, 35.733971, 25.951731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010323, 35.757797, 26.036009>,  <34.637909, 35.797508, 26.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010323, 35.757797, 26.036009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049893, -0.918611, 0.392001,
		-0.361495, -0.382488, -0.850308,
		0.931038, -0.099282, -0.351157,
		35.289635, 35.728012, 25.930662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637432, 35.095417, 25.951805>,  <34.637909, 35.797508, 26.176472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637432, 35.095417, 25.951805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013767, 35.206871, 26.028936>,  <35.239571, 35.273743, 26.075214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013767, 35.206871, 26.028936>,  <34.637432, 35.095417, 25.951805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013767, 35.206871, 26.028936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127339, -0.818083, 0.560825,
		0.314014, -0.503092, -0.805167,
		0.940840, 0.278636, 0.192826,
		35.296021, 35.290462, 26.086784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043072, 34.465450, 25.900230>,  <34.637432, 35.095417, 25.951805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043072, 34.465450, 25.900230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269352, 34.720581, 26.109289>,  <35.405121, 34.873661, 26.234724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269352, 34.720581, 26.109289>,  <35.043072, 34.465450, 25.900230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269352, 34.720581, 26.109289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331404, -0.756224, 0.564178,
		0.755085, -0.145950, -0.639176,
		0.565702, 0.637827, 0.522645,
		35.439064, 34.911930, 26.266083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467613, 34.004768, 26.148170>,  <35.043072, 34.465450, 25.900230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467613, 34.004768, 26.148170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525517, 34.325401, 26.380209>,  <35.560261, 34.517780, 26.519432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525517, 34.325401, 26.380209>,  <35.467613, 34.004768, 26.148170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525517, 34.325401, 26.380209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346150, -0.590251, 0.729235,
		0.926944, 0.095236, -0.362913,
		0.144761, 0.801582, 0.580095,
		35.568943, 34.565876, 26.554237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066456, 33.886303, 26.609159>,  <35.467613, 34.004768, 26.148170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066456, 33.886303, 26.609159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880383, 34.180008, 26.806932>,  <35.768738, 34.356232, 26.925596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880383, 34.180008, 26.806932>,  <36.066456, 33.886303, 26.609159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880383, 34.180008, 26.806932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299360, -0.395149, 0.868470,
		0.833058, 0.552014, -0.035990,
		-0.465186, 0.734260, 0.494433,
		35.740826, 34.400288, 26.955263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575211, 34.161278, 27.062450>,  <36.066456, 33.886303, 26.609159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575211, 34.161278, 27.062450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203125, 34.241882, 27.185150>,  <35.979874, 34.290245, 27.258770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203125, 34.241882, 27.185150>,  <36.575211, 34.161278, 27.062450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203125, 34.241882, 27.185150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235119, -0.314582, 0.919650,
		0.281818, 0.927594, 0.245250,
		-0.930214, 0.201511, 0.306750,
		35.924061, 34.302334, 27.277176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655743, 34.573170, 27.704174>,  <36.575211, 34.161278, 27.062450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655743, 34.573170, 27.704174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290192, 34.416420, 27.746624>,  <36.070862, 34.322369, 27.772095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290192, 34.416420, 27.746624>,  <36.655743, 34.573170, 27.704174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290192, 34.416420, 27.746624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261312, -0.367699, 0.892476,
		-0.310717, 0.843346, 0.438433,
		-0.913877, -0.391876, 0.106126,
		36.016029, 34.298859, 27.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404308, 34.872421, 28.282406>,  <36.655743, 34.573170, 27.704174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404308, 34.872421, 28.282406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180256, 34.545753, 28.226820>,  <36.045826, 34.349754, 28.193468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180256, 34.545753, 28.226820>,  <36.404308, 34.872421, 28.282406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180256, 34.545753, 28.226820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160939, -0.271832, 0.948792,
		-0.812623, 0.509079, 0.283694,
		-0.560127, -0.816667, -0.138966,
		36.012218, 34.300755, 28.185129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967274, 34.759312, 28.868355>,  <36.404308, 34.872421, 28.282406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967274, 34.759312, 28.868355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006203, 34.397770, 28.701704>,  <36.029560, 34.180843, 28.601713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006203, 34.397770, 28.701704>,  <35.967274, 34.759312, 28.868355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006203, 34.397770, 28.701704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351231, -0.360487, 0.864110,
		-0.931217, -0.230431, 0.282376,
		0.097325, -0.903853, -0.416626,
		36.035400, 34.126614, 28.576715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794170, 34.199421, 29.419092>,  <35.967274, 34.759312, 28.868355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794170, 34.199421, 29.419092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024212, 34.018326, 29.146538>,  <36.162235, 33.909668, 28.983006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024212, 34.018326, 29.146538>,  <35.794170, 34.199421, 29.419092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024212, 34.018326, 29.146538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474108, -0.494327, 0.728603,
		-0.666692, -0.742072, -0.069643,
		0.575103, -0.452735, -0.681387,
		36.196743, 33.882504, 28.942122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908192, 33.473969, 29.576601>,  <35.794170, 34.199421, 29.419092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908192, 33.473969, 29.576601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221310, 33.604668, 29.364765>,  <36.409180, 33.683086, 29.237663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221310, 33.604668, 29.364765>,  <35.908192, 33.473969, 29.576601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221310, 33.604668, 29.364765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618352, -0.313005, 0.720881,
		0.069778, -0.891777, -0.447062,
		0.782797, 0.326743, -0.529591,
		36.456150, 33.702690, 29.205887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473892, 32.925377, 29.546343>,  <35.908192, 33.473969, 29.576601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473892, 32.925377, 29.546343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657215, 33.280792, 29.537897>,  <36.767208, 33.494041, 29.532829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657215, 33.280792, 29.537897>,  <36.473892, 32.925377, 29.546343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657215, 33.280792, 29.537897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690272, -0.340880, 0.638220,
		0.559888, -0.307077, -0.769564,
		0.458312, 0.888541, -0.021112,
		36.794708, 33.547356, 29.531563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250992, 32.928833, 29.387808>,  <36.473892, 32.925377, 29.546343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250992, 32.928833, 29.387808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125992, 33.198772, 29.655216>,  <37.050991, 33.360737, 29.815660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125992, 33.198772, 29.655216>,  <37.250992, 32.928833, 29.387808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125992, 33.198772, 29.655216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660437, -0.351484, 0.663537,
		0.682763, 0.648871, -0.335858,
		-0.312501, 0.674852, 0.668519,
		37.032242, 33.401230, 29.855772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838421, 33.470551, 29.676817>,  <37.250992, 32.928833, 29.387808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838421, 33.470551, 29.676817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546093, 33.397900, 29.940004>,  <37.370697, 33.354309, 30.097916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546093, 33.397900, 29.940004>,  <37.838421, 33.470551, 29.676817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546093, 33.397900, 29.940004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677074, -0.315025, 0.665079,
		0.086481, 0.931542, 0.353200,
		-0.730816, -0.181626, 0.657967,
		37.326847, 33.343410, 30.137394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928223, 33.741409, 30.404968>,  <37.838421, 33.470551, 29.676817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928223, 33.741409, 30.404968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695496, 33.417912, 30.439409>,  <37.555859, 33.223812, 30.460073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695496, 33.417912, 30.439409>,  <37.928223, 33.741409, 30.404968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695496, 33.417912, 30.439409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608640, -0.362733, 0.705678,
		-0.539482, 0.462985, 0.703281,
		-0.581821, -0.808746, 0.086103,
		37.520950, 33.175289, 30.465240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685349, 33.870193, 31.106121>,  <37.928223, 33.741409, 30.404968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685349, 33.870193, 31.106121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461739, 34.196617, 31.164831>,  <37.327572, 34.392471, 31.200058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461739, 34.196617, 31.164831>,  <37.685349, 33.870193, 31.106121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461739, 34.196617, 31.164831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369152, 0.403462, -0.837225,
		-0.742442, -0.413846, -0.526794,
		-0.559023, 0.816058, 0.146775,
		37.294033, 34.441433, 31.208864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327217, 34.101368, 30.548588>,  <37.685349, 33.870193, 31.106121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327217, 34.101368, 30.548588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406368, 34.437908, 30.749773>,  <37.453857, 34.639832, 30.870483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406368, 34.437908, 30.749773>,  <37.327217, 34.101368, 30.548588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406368, 34.437908, 30.749773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514362, 0.347668, -0.783938,
		-0.834432, 0.413825, -0.363966,
		0.197874, 0.841353, 0.502962,
		37.465729, 34.690315, 30.900661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165230, 34.713467, 30.148952>,  <37.327217, 34.101368, 30.548588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165230, 34.713467, 30.148952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464367, 34.791088, 30.402905>,  <37.643848, 34.837662, 30.555275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464367, 34.791088, 30.402905>,  <37.165230, 34.713467, 30.148952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464367, 34.791088, 30.402905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525686, 0.410957, -0.744828,
		-0.405442, 0.890763, 0.205323,
		0.747844, 0.194049, 0.634881,
		37.688721, 34.849304, 30.593369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254536, 35.461651, 30.234293>,  <37.165230, 34.713467, 30.148952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254536, 35.461651, 30.234293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593960, 35.258018, 30.291954>,  <37.797615, 35.135838, 30.326551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593960, 35.258018, 30.291954>,  <37.254536, 35.461651, 30.234293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593960, 35.258018, 30.291954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480326, 0.626938, -0.613380,
		0.221886, 0.589730, 0.776521,
		0.848559, -0.509084, 0.144154,
		37.848526, 35.105293, 30.335199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872742, 35.868240, 30.379236>,  <37.254536, 35.461651, 30.234293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872742, 35.868240, 30.379236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954147, 35.528332, 30.184727>,  <38.002991, 35.324387, 30.068020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954147, 35.528332, 30.184727>,  <37.872742, 35.868240, 30.379236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954147, 35.528332, 30.184727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529355, 0.513321, -0.675489,
		0.823628, -0.119938, 0.554302,
		0.203518, -0.849774, -0.486275,
		38.015202, 35.273399, 30.038843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642529, 35.792957, 30.490540>,  <37.872742, 35.868240, 30.379236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642529, 35.792957, 30.490540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465664, 35.643444, 30.164404>,  <38.359547, 35.553738, 29.968721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465664, 35.643444, 30.164404>,  <38.642529, 35.792957, 30.490540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465664, 35.643444, 30.164404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684932, 0.446203, -0.575996,
		0.579104, -0.813136, 0.058722,
		-0.442161, -0.373782, -0.815341,
		38.333015, 35.531311, 29.919802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165897, 35.409180, 29.987963>,  <38.642529, 35.792957, 30.490540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165897, 35.409180, 29.987963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849888, 35.564445, 29.798145>,  <38.660282, 35.657604, 29.684256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849888, 35.564445, 29.798145>,  <39.165897, 35.409180, 29.987963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849888, 35.564445, 29.798145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612127, 0.542551, -0.575274,
		0.034161, -0.744959, -0.666235,
		-0.790022, 0.388168, -0.474543,
		38.612881, 35.680897, 29.655783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396870, 35.077225, 29.476418>,  <39.165897, 35.409180, 29.987963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396870, 35.077225, 29.476418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427429, 34.733170, 29.678141>,  <39.445766, 34.526737, 29.799175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427429, 34.733170, 29.678141>,  <39.396870, 35.077225, 29.476418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427429, 34.733170, 29.678141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509740, -0.400999, -0.761160,
		0.856929, 0.315219, 0.407811,
		0.076400, -0.860138, 0.504308,
		39.450348, 34.475128, 29.829433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074154, 34.810738, 29.317263>,  <39.396870, 35.077225, 29.476418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074154, 34.810738, 29.317263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896778, 34.487350, 29.472050>,  <39.790352, 34.293320, 29.564922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896778, 34.487350, 29.472050>,  <40.074154, 34.810738, 29.317263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896778, 34.487350, 29.472050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516173, -0.583303, -0.627154,
		0.732753, -0.078362, 0.675968,
		-0.443439, -0.808466, 0.386969,
		39.763744, 34.244812, 29.588140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537376, 34.305447, 29.512535>,  <40.074154, 34.810738, 29.317263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537376, 34.305447, 29.512535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207161, 34.083317, 29.472328>,  <40.009033, 33.950039, 29.448204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207161, 34.083317, 29.472328>,  <40.537376, 34.305447, 29.512535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207161, 34.083317, 29.472328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517339, -0.673512, -0.527960,
		0.225490, -0.487852, 0.843300,
		-0.825539, -0.555322, -0.100515,
		39.959499, 33.916721, 29.442173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785473, 33.660221, 29.511492>,  <40.537376, 34.305447, 29.512535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785473, 33.660221, 29.511492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418674, 33.590900, 29.367781>,  <40.198593, 33.549309, 29.281553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418674, 33.590900, 29.367781>,  <40.785473, 33.660221, 29.511492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418674, 33.590900, 29.367781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344520, -0.798048, -0.494394,
		-0.201043, -0.577137, 0.791515,
		-0.917000, -0.173298, -0.359277,
		40.143574, 33.538910, 29.259998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764004, 33.034290, 29.544655>,  <40.785473, 33.660221, 29.511492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764004, 33.034290, 29.544655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481773, 33.133789, 29.279240>,  <40.312435, 33.193489, 29.119991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481773, 33.133789, 29.279240>,  <40.764004, 33.034290, 29.544655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481773, 33.133789, 29.279240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267613, -0.773491, -0.574539,
		-0.656155, -0.582955, 0.479192,
		-0.705581, 0.248749, -0.663536,
		40.270100, 33.208412, 29.080179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440659, 32.461426, 29.433216>,  <40.764004, 33.034290, 29.544655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440659, 32.461426, 29.433216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336277, 32.664894, 29.105032>,  <40.273647, 32.786976, 28.908121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336277, 32.664894, 29.105032>,  <40.440659, 32.461426, 29.433216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336277, 32.664894, 29.105032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133561, -0.822713, -0.552543,
		-0.956066, -0.253771, 0.146755,
		-0.260957, 0.508668, -0.820462,
		40.257992, 32.817493, 28.858892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963005, 32.096348, 29.057554>,  <40.440659, 32.461426, 29.433216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963005, 32.096348, 29.057554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177814, 32.322430, 28.807066>,  <40.306702, 32.458076, 28.656773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177814, 32.322430, 28.807066>,  <39.963005, 32.096348, 29.057554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177814, 32.322430, 28.807066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121309, -0.786375, -0.605721,
		-0.834798, 0.249322, -0.490868,
		0.537026, 0.565201, -0.626219,
		40.338921, 32.491989, 28.619200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778786, 31.883398, 28.376074>,  <39.963005, 32.096348, 29.057554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778786, 31.883398, 28.376074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146202, 32.041214, 28.366091>,  <40.366653, 32.135902, 28.360102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146202, 32.041214, 28.366091>,  <39.778786, 31.883398, 28.376074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146202, 32.041214, 28.366091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322378, -0.784089, -0.530355,
		-0.228814, 0.479107, -0.847408,
		0.918540, 0.394539, -0.024957,
		40.421764, 32.159576, 28.358604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525707, 31.216507, 27.970753>,  <39.778786, 31.883398, 28.376074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525707, 31.216507, 27.970753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774464, 31.307518, 27.671024>,  <39.923717, 31.362123, 27.491188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774464, 31.307518, 27.671024>,  <39.525707, 31.216507, 27.970753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774464, 31.307518, 27.671024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353607, 0.772168, 0.527938,
		0.698720, -0.593286, 0.399751,
		0.621893, 0.227526, -0.749320,
		39.961033, 31.375776, 27.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252197, 31.378086, 28.256973>,  <39.525707, 31.216507, 27.970753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252197, 31.378086, 28.256973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160065, 31.572046, 27.919497>,  <40.104786, 31.688423, 27.717010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160065, 31.572046, 27.919497>,  <40.252197, 31.378086, 28.256973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160065, 31.572046, 27.919497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308561, 0.858658, 0.409264,
		0.922895, -0.166062, -0.347402,
		-0.230336, 0.484902, -0.843691,
		40.090965, 31.717518, 27.666389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831303, 31.792139, 28.028568>,  <40.252197, 31.378086, 28.256973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831303, 31.792139, 28.028568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470997, 31.937849, 27.933968>,  <40.254814, 32.025276, 27.877207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470997, 31.937849, 27.933968>,  <40.831303, 31.792139, 28.028568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470997, 31.937849, 27.933968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235293, 0.867003, 0.439253,
		0.365054, 0.340016, -0.866675,
		-0.900762, 0.364274, -0.236500,
		40.200768, 32.047131, 27.863018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961487, 32.464535, 27.971691>,  <40.831303, 31.792139, 28.028568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961487, 32.464535, 27.971691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569927, 32.411987, 28.034290>,  <40.334991, 32.380459, 28.071850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569927, 32.411987, 28.034290>,  <40.961487, 32.464535, 27.971691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569927, 32.411987, 28.034290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023409, 0.832975, 0.552816,
		-0.202983, 0.537489, -0.818476,
		-0.978902, -0.131372, 0.156498,
		40.276257, 32.372574, 28.081240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478752, 33.095970, 27.655157>,  <40.961487, 32.464535, 27.971691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478752, 33.095970, 27.655157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315426, 32.927425, 27.979065>,  <40.217430, 32.826298, 28.173410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315426, 32.927425, 27.979065>,  <40.478752, 33.095970, 27.655157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315426, 32.927425, 27.979065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018705, 0.883042, 0.468920,
		-0.912647, 0.206616, -0.352682,
		-0.408319, -0.421362, 0.809771,
		40.192928, 32.801018, 28.221996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863014, 33.457485, 27.785820>,  <40.478752, 33.095970, 27.655157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863014, 33.457485, 27.785820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989124, 33.261539, 28.110937>,  <40.064789, 33.143970, 28.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989124, 33.261539, 28.110937>,  <39.863014, 33.457485, 27.785820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989124, 33.261539, 28.110937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197783, 0.803749, 0.561132,
		-0.928161, -0.337668, 0.156516,
		0.315276, -0.489865, 0.812793,
		40.083706, 33.114578, 28.354774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296635, 33.470268, 28.267097>,  <39.863014, 33.457485, 27.785820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296635, 33.470268, 28.267097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627140, 33.413643, 28.485178>,  <39.825443, 33.379669, 28.616026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627140, 33.413643, 28.485178>,  <39.296635, 33.470268, 28.267097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627140, 33.413643, 28.485178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349659, 0.629937, 0.693482,
		-0.441613, -0.763636, 0.470997,
		0.826267, -0.141562, 0.545201,
		39.875019, 33.371174, 28.648739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946117, 33.781796, 28.842890>,  <39.296635, 33.470268, 28.267097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946117, 33.781796, 28.842890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312523, 33.678120, 28.965353>,  <39.532368, 33.615913, 29.038832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312523, 33.678120, 28.965353>,  <38.946117, 33.781796, 28.842890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312523, 33.678120, 28.965353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187099, 0.399054, 0.897636,
		-0.354835, -0.879531, 0.317045,
		0.916016, -0.259194, 0.306158,
		39.587326, 33.600361, 29.057199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838631, 33.397007, 29.406021>,  <38.946117, 33.781796, 28.842890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838631, 33.397007, 29.406021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215542, 33.530407, 29.417908>,  <39.441689, 33.610447, 29.425039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215542, 33.530407, 29.417908>,  <38.838631, 33.397007, 29.406021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215542, 33.530407, 29.417908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161182, 0.374034, 0.913301,
		0.293468, -0.865378, 0.406200,
		0.942283, 0.333497, 0.029717,
		39.498226, 33.630455, 29.426823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201099, 33.133896, 30.020559>,  <38.838631, 33.397007, 29.406021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201099, 33.133896, 30.020559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356045, 33.481926, 29.898632>,  <39.449013, 33.690746, 29.825476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356045, 33.481926, 29.898632>,  <39.201099, 33.133896, 30.020559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356045, 33.481926, 29.898632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249748, 0.417303, 0.873776,
		0.887453, -0.262344, 0.378949,
		0.387366, 0.870077, -0.304817,
		39.472256, 33.742950, 29.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623165, 33.398365, 30.541229>,  <39.201099, 33.133896, 30.020559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623165, 33.398365, 30.541229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561623, 33.723133, 30.315979>,  <39.524696, 33.917995, 30.180828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561623, 33.723133, 30.315979>,  <39.623165, 33.398365, 30.541229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561623, 33.723133, 30.315979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174361, 0.538658, 0.824285,
		0.972587, 0.225010, 0.058690,
		-0.153858, 0.811922, -0.563125,
		39.515465, 33.966709, 30.147041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307892, 33.752346, 31.153116>,  <39.623165, 33.398365, 30.541229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307892, 33.752346, 31.153116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479343, 33.810680, 31.509771>,  <39.582214, 33.845680, 31.723764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479343, 33.810680, 31.509771>,  <39.307892, 33.752346, 31.153116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479343, 33.810680, 31.509771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811914, -0.495089, -0.309325,
		0.396329, 0.856516, -0.330612,
		0.428624, 0.145834, 0.891635,
		39.607929, 33.854431, 31.777262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983284, 33.957912, 31.046764>,  <39.307892, 33.752346, 31.153116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983284, 33.957912, 31.046764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966221, 33.754917, 31.391005>,  <39.955982, 33.633121, 31.597549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966221, 33.754917, 31.391005>,  <39.983284, 33.957912, 31.046764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966221, 33.754917, 31.391005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594261, -0.705333, -0.386470,
		0.803140, 0.494935, 0.331672,
		-0.042661, -0.507489, 0.860601,
		39.953423, 33.602669, 31.649185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240398, 33.225033, 31.219667>,  <39.983284, 33.957912, 31.046764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240398, 33.225033, 31.219667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578617, 33.401741, 31.339592>,  <40.781548, 33.507767, 31.411547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578617, 33.401741, 31.339592>,  <40.240398, 33.225033, 31.219667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578617, 33.401741, 31.339592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274452, -0.841325, 0.465669,
		0.457959, -0.311461, -0.832626,
		0.845546, 0.441774, 0.299812,
		40.832279, 33.534271, 31.429535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924126, 32.845181, 31.057367>,  <40.240398, 33.225033, 31.219667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924126, 32.845181, 31.057367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917572, 33.064896, 31.391556>,  <40.913639, 33.196724, 31.592068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917572, 33.064896, 31.391556>,  <40.924126, 32.845181, 31.057367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917572, 33.064896, 31.391556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096081, -0.830851, 0.548139,
		0.995239, 0.089253, -0.039164,
		-0.016384, 0.549292, 0.835470,
		40.912659, 33.229683, 31.642197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561604, 32.798840, 31.578629>,  <40.924126, 32.845181, 31.057367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561604, 32.798840, 31.578629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188114, 32.842976, 31.714857>,  <40.964020, 32.869457, 31.796595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188114, 32.842976, 31.714857>,  <41.561604, 32.798840, 31.578629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188114, 32.842976, 31.714857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059370, -0.890414, 0.451262,
		0.353042, 0.441573, 0.824848,
		-0.933722, 0.110343, 0.340570,
		40.907997, 32.876080, 31.817028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622719, 32.551327, 32.278576>,  <41.561604, 32.798840, 31.578629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622719, 32.551327, 32.278576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234268, 32.463455, 32.241352>,  <41.001198, 32.410732, 32.219017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234268, 32.463455, 32.241352>,  <41.622719, 32.551327, 32.278576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234268, 32.463455, 32.241352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129258, -0.812328, 0.568696,
		-0.200525, 0.540245, 0.817266,
		-0.971124, -0.219676, -0.093061,
		40.942932, 32.397552, 32.213432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255253, 32.335304, 32.871735>,  <41.622719, 32.551327, 32.278576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255253, 32.335304, 32.871735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012230, 32.111668, 32.646065>,  <40.866417, 31.977486, 32.510662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012230, 32.111668, 32.646065>,  <41.255253, 32.335304, 32.871735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012230, 32.111668, 32.646065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095474, -0.653742, 0.750670,
		-0.788517, 0.509939, 0.343807,
		-0.607557, -0.559091, -0.564173,
		40.829964, 31.943941, 32.476814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907570, 32.655506, 33.100895>,  <41.255253, 32.335304, 32.871735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907570, 32.655506, 33.100895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032711, 32.534695, 32.740696>,  <42.107796, 32.462208, 32.524574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032711, 32.534695, 32.740696>,  <41.907570, 32.655506, 33.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032711, 32.534695, 32.740696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710459, 0.703655, 0.010822,
		0.630373, -0.643154, 0.434722,
		0.312854, -0.302030, -0.900500,
		42.126568, 32.444084, 32.470547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534447, 32.477505, 33.182343>,  <41.907570, 32.655506, 33.100895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534447, 32.477505, 33.182343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450073, 32.601631, 32.811569>,  <42.399448, 32.676105, 32.589104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450073, 32.601631, 32.811569>,  <42.534447, 32.477505, 33.182343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450073, 32.601631, 32.811569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716856, 0.693785, 0.069136,
		0.664550, -0.649898, -0.368791,
		-0.210930, 0.310314, -0.926938,
		42.386795, 32.694725, 32.533489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105511, 32.356556, 32.779594>,  <42.534447, 32.477505, 33.182343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105511, 32.356556, 32.779594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876076, 32.670013, 32.684177>,  <42.738415, 32.858086, 32.626926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876076, 32.670013, 32.684177>,  <43.105511, 32.356556, 32.779594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876076, 32.670013, 32.684177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746325, 0.619978, 0.242126,
		0.337632, -0.039151, -0.940464,
		-0.573588, 0.783641, -0.238544,
		42.703999, 32.905106, 32.612614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575401, 32.760818, 32.451908>,  <43.105511, 32.356556, 32.779594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575401, 32.760818, 32.451908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276894, 32.981461, 32.600941>,  <43.097790, 33.113846, 32.690361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276894, 32.981461, 32.600941>,  <43.575401, 32.760818, 32.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276894, 32.981461, 32.600941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664081, 0.578572, 0.473552,
		0.045649, 0.600820, -0.798080,
		-0.746266, 0.551607, 0.372582,
		43.053013, 33.146942, 32.712715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967762, 33.416943, 32.422783>,  <43.575401, 32.760818, 32.451908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967762, 33.416943, 32.422783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614208, 33.554779, 32.296288>,  <43.402077, 33.637482, 32.220390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614208, 33.554779, 32.296288>,  <43.967762, 33.416943, 32.422783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614208, 33.554779, 32.296288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051445, 0.743671, 0.666564,
		0.464869, 0.572896, -0.675046,
		-0.883884, 0.344593, -0.316237,
		43.349045, 33.658157, 32.201416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969669, 33.822052, 33.034573>,  <43.967762, 33.416943, 32.422783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969669, 33.822052, 33.034573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753967, 34.151714, 33.103821>,  <43.624546, 34.349510, 33.145370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753967, 34.151714, 33.103821>,  <43.969669, 33.822052, 33.034573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753967, 34.151714, 33.103821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834105, -0.494373, -0.244671,
		-0.116059, -0.276343, 0.954026,
		-0.539258, 0.824154, 0.173122,
		43.592190, 34.398960, 33.155758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378231, 33.621140, 33.499123>,  <43.969669, 33.822052, 33.034573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378231, 33.621140, 33.499123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290020, 33.935890, 33.268578>,  <43.237091, 34.124741, 33.130253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290020, 33.935890, 33.268578>,  <43.378231, 33.621140, 33.499123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290020, 33.935890, 33.268578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748905, -0.515184, -0.416805,
		-0.624906, 0.339721, 0.702910,
		-0.220530, 0.786877, -0.576361,
		43.223862, 34.171955, 33.095669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959293, 33.885113, 34.089409>,  <43.378231, 33.621140, 33.499123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959293, 33.885113, 34.089409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007450, 33.576344, 34.339096>,  <43.036343, 33.391083, 34.488907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007450, 33.576344, 34.339096>,  <42.959293, 33.885113, 34.089409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007450, 33.576344, 34.339096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583578, -0.453638, -0.673535,
		0.803083, 0.445365, 0.395863,
		0.120390, -0.771921, 0.624215,
		43.043568, 33.344769, 34.526360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654541, 33.715481, 34.257530>,  <42.959293, 33.885113, 34.089409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654541, 33.715481, 34.257530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428333, 33.385666, 34.264744>,  <43.292610, 33.187775, 34.269073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428333, 33.385666, 34.264744>,  <43.654541, 33.715481, 34.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428333, 33.385666, 34.264744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514733, -0.369952, -0.773424,
		0.644392, -0.428099, 0.633632,
		-0.565516, -0.824540, 0.018037,
		43.258678, 33.138306, 34.270153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071026, 33.076557, 34.357853>,  <43.654541, 33.715481, 34.257530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071026, 33.076557, 34.357853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752663, 33.029896, 34.120228>,  <43.561646, 33.001900, 33.977654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752663, 33.029896, 34.120228>,  <44.071026, 33.076557, 34.357853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752663, 33.029896, 34.120228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602620, -0.246781, -0.758912,
		-0.058075, -0.962024, 0.266713,
		-0.795912, -0.116653, -0.594067,
		43.513889, 32.994900, 33.942009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470299, 32.899696, 33.766998>,  <44.071026, 33.076557, 34.357853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470299, 32.899696, 33.766998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813107, 32.835323, 33.962803>,  <45.018791, 32.796700, 34.080284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813107, 32.835323, 33.962803>,  <44.470299, 32.899696, 33.766998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813107, 32.835323, 33.962803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270730, -0.948923, 0.162017,
		0.438434, -0.271377, -0.856814,
		0.857018, -0.160932, 0.489510,
		45.070213, 32.787045, 34.109657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807079, 32.376038, 33.558464>,  <44.470299, 32.899696, 33.766998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807079, 32.376038, 33.558464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949371, 32.383480, 33.932224>,  <45.034748, 32.387947, 34.156483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949371, 32.383480, 33.932224>,  <44.807079, 32.376038, 33.558464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949371, 32.383480, 33.932224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429111, -0.884934, 0.180988,
		0.830253, -0.465346, -0.306812,
		0.355730, 0.018610, 0.934403,
		45.056091, 32.389065, 34.212543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164642, 31.649700, 33.700390>,  <44.807079, 32.376038, 33.558464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164642, 31.649700, 33.700390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982563, 31.850342, 33.994652>,  <44.873314, 31.970726, 34.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982563, 31.850342, 33.994652>,  <45.164642, 31.649700, 33.700390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982563, 31.850342, 33.994652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494822, -0.829394, 0.259340,
		0.740231, -0.245965, 0.625746,
		-0.455202, 0.501604, 0.735652,
		44.846001, 32.000824, 34.215347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268303, 31.383335, 34.395634>,  <45.164642, 31.649700, 33.700390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268303, 31.383335, 34.395634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907810, 31.551384, 34.438129>,  <44.691517, 31.652214, 34.463627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907810, 31.551384, 34.438129>,  <45.268303, 31.383335, 34.395634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907810, 31.551384, 34.438129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391442, -0.894411, 0.216338,
		0.185906, 0.153385, 0.970521,
		-0.901228, 0.420122, 0.106236,
		44.637444, 31.677420, 34.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813992, 30.749744, 34.217262>,  <45.268303, 31.383335, 34.395634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813992, 30.749744, 34.217262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974655, 30.566687, 33.899967>,  <45.071053, 30.456852, 33.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974655, 30.566687, 33.899967>,  <44.813992, 30.749744, 34.217262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974655, 30.566687, 33.899967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714133, 0.698776, -0.041545,
		0.573310, -0.549792, 0.607490,
		0.401658, -0.457647, -0.793240,
		45.095154, 30.429392, 33.661995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472935, 30.425602, 34.314632>,  <44.813992, 30.749744, 34.217262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472935, 30.425602, 34.314632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440216, 30.550137, 33.935925>,  <45.420586, 30.624857, 33.708698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440216, 30.550137, 33.935925>,  <45.472935, 30.425602, 34.314632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440216, 30.550137, 33.935925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751465, 0.643278, 0.146608,
		0.654683, -0.699474, -0.286579,
		-0.081801, 0.311336, -0.946773,
		45.415676, 30.643538, 33.651894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164131, 30.330601, 33.910145>,  <45.472935, 30.425602, 34.314632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164131, 30.330601, 33.910145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923618, 30.637844, 33.822090>,  <45.779308, 30.822191, 33.769257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923618, 30.637844, 33.822090>,  <46.164131, 30.330601, 33.910145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923618, 30.637844, 33.822090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752532, 0.636993, 0.167137,
		0.268607, -0.065166, -0.961043,
		-0.601286, 0.768110, -0.220140,
		45.743233, 30.868277, 33.756046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399868, 30.761778, 33.346497>,  <46.164131, 30.330601, 33.910145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399868, 30.761778, 33.346497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202755, 30.943361, 33.643436>,  <46.084488, 31.052311, 33.821602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202755, 30.943361, 33.643436>,  <46.399868, 30.761778, 33.346497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202755, 30.943361, 33.643436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781861, 0.605441, 0.148779,
		-0.381909, 0.653730, -0.653286,
		-0.492787, 0.453958, 0.742349,
		46.054920, 31.079548, 33.866142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304249, 31.617928, 33.242836>,  <46.399868, 30.761778, 33.346497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304249, 31.617928, 33.242836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346977, 31.469297, 33.611732>,  <46.372616, 31.380119, 33.833069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346977, 31.469297, 33.611732>,  <46.304249, 31.617928, 33.242836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346977, 31.469297, 33.611732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734572, 0.654589, 0.178653,
		-0.670069, 0.658365, 0.342874,
		0.106823, -0.371576, 0.922236,
		46.379025, 31.357824, 33.888405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362953, 32.279530, 33.637283>,  <46.304249, 31.617928, 33.242836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362953, 32.279530, 33.637283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522179, 31.976954, 33.844875>,  <46.617714, 31.795408, 33.969433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522179, 31.976954, 33.844875>,  <46.362953, 32.279530, 33.637283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522179, 31.976954, 33.844875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705432, 0.614068, 0.353959,
		-0.586440, 0.225209, 0.778055,
		0.398064, -0.756440, 0.518984,
		46.641598, 31.750021, 34.000572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255600, 32.488102, 34.414394>,  <46.362953, 32.279530, 33.637283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255600, 32.488102, 34.414394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564056, 32.265476, 34.290730>,  <46.749130, 32.131901, 34.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564056, 32.265476, 34.290730>,  <46.255600, 32.488102, 34.414394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564056, 32.265476, 34.290730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618203, 0.770667, 0.154590,
		0.152222, -0.310335, 0.938361,
		0.771138, -0.556566, -0.309162,
		46.795399, 32.098507, 34.197979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684914, 32.249874, 34.920288>,  <46.255600, 32.488102, 34.414394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684914, 32.249874, 34.920288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895874, 32.577682, 35.009937>,  <47.022449, 32.774368, 35.063728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895874, 32.577682, 35.009937>,  <46.684914, 32.249874, 34.920288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895874, 32.577682, 35.009937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817591, 0.561287, -0.128459,
		-0.231074, -0.115495, 0.966057,
		0.527399, 0.819523, 0.224126,
		47.054092, 32.823540, 35.077175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385353, 32.585007, 35.546108>,  <46.684914, 32.249874, 34.920288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385353, 32.585007, 35.546108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564991, 32.836662, 35.292336>,  <46.672771, 32.987656, 35.140072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564991, 32.836662, 35.292336>,  <46.385353, 32.585007, 35.546108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564991, 32.836662, 35.292336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851463, 0.516551, -0.090476,
		0.270793, 0.580825, 0.767667,
		0.449090, 0.629140, -0.634430,
		46.699718, 33.025406, 35.102005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443905, 33.280781, 35.807808>,  <46.385353, 32.585007, 35.546108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443905, 33.280781, 35.807808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388081, 33.257664, 35.412399>,  <46.354588, 33.243793, 35.175152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388081, 33.257664, 35.412399>,  <46.443905, 33.280781, 35.807808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388081, 33.257664, 35.412399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773649, 0.629462, 0.072423,
		0.618053, 0.774879, -0.132561,
		-0.139561, -0.057795, -0.988525,
		46.346210, 33.240326, 35.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231411, 33.900562, 35.684479>,  <46.443905, 33.280781, 35.807808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231411, 33.900562, 35.684479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094856, 33.671741, 35.386162>,  <46.012924, 33.534451, 35.207172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094856, 33.671741, 35.386162>,  <46.231411, 33.900562, 35.684479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094856, 33.671741, 35.386162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884904, 0.463098, 0.049854,
		0.316857, 0.676975, -0.664309,
		-0.341390, -0.572053, -0.745793,
		45.992439, 33.500126, 35.162422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699680, 34.074318, 35.082088>,  <46.231411, 33.900562, 35.684479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699680, 34.074318, 35.082088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971474, 34.158825, 34.801041>,  <47.134548, 34.209530, 34.632412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971474, 34.158825, 34.801041>,  <46.699680, 34.074318, 35.082088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971474, 34.158825, 34.801041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095620, 0.974976, 0.200696,
		0.727437, -0.069185, 0.682678,
		0.679480, 0.211271, -0.702618,
		47.175316, 34.222206, 34.590256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315731, 34.437000, 35.372353>,  <46.699680, 34.074318, 35.082088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315731, 34.437000, 35.372353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212231, 34.523155, 34.995701>,  <47.150131, 34.574848, 34.769711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212231, 34.523155, 34.995701>,  <47.315731, 34.437000, 35.372353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212231, 34.523155, 34.995701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143328, 0.972593, 0.183083,
		0.955252, -0.087589, -0.282527,
		-0.258748, 0.215384, -0.941626,
		47.134605, 34.587769, 34.713215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.835129, 34.890347, 35.063438>,  <47.315731, 34.437000, 35.372353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.835129, 34.890347, 35.063438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466343, 34.928436, 34.913280>,  <47.245071, 34.951290, 34.823185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466343, 34.928436, 34.913280>,  <47.835129, 34.890347, 35.063438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466343, 34.928436, 34.913280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031218, 0.984421, 0.173032,
		0.386020, 0.147810, -0.910572,
		-0.921962, 0.095220, -0.375392,
		47.189754, 34.957001, 34.800663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.576508, 36.914349, 19.875671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185776, 36.880329, 19.797112>,  <34.951336, 36.859917, 19.749975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185776, 36.880329, 19.797112>,  <35.576508, 36.914349, 19.875671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185776, 36.880329, 19.797112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067546, -0.748250, 0.659969,
		-0.203084, 0.657942, 0.725168,
		-0.976829, -0.085047, -0.196400,
		34.892727, 36.854816, 19.738192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301559, 36.787849, 20.580545>,  <35.576508, 36.914349, 19.875671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301559, 36.787849, 20.580545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004383, 36.685665, 20.333067>,  <34.826077, 36.624355, 20.184580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004383, 36.685665, 20.333067>,  <35.301559, 36.787849, 20.580545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004383, 36.685665, 20.333067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282894, -0.717868, 0.636110,
		-0.606640, 0.647617, 0.461066,
		-0.742940, -0.255457, -0.618694,
		34.781502, 36.609028, 20.147459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702507, 36.631783, 21.005239>,  <35.301559, 36.787849, 20.580545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702507, 36.631783, 21.005239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641430, 36.427277, 20.666941>,  <34.604782, 36.304573, 20.463961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641430, 36.427277, 20.666941>,  <34.702507, 36.631783, 21.005239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641430, 36.427277, 20.666941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278789, -0.798742, 0.533186,
		-0.948136, 0.317198, -0.020574,
		-0.152693, -0.511268, -0.845748,
		34.595623, 36.273895, 20.413216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162895, 36.214630, 21.157736>,  <34.702507, 36.631783, 21.005239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162895, 36.214630, 21.157736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.361790, 36.047424, 20.853626>,  <34.481125, 35.947102, 20.671160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.361790, 36.047424, 20.853626>,  <34.162895, 36.214630, 21.157736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361790, 36.047424, 20.853626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087101, -0.895905, 0.435624,
		-0.863234, -0.150386, -0.481883,
		0.497233, -0.418018, -0.760277,
		34.510960, 35.922020, 20.625544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804390, 35.658051, 20.996611>,  <34.162895, 36.214630, 21.157736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804390, 35.658051, 20.996611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.169189, 35.582230, 20.851101>,  <34.388069, 35.536739, 20.763794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.169189, 35.582230, 20.851101>,  <33.804390, 35.658051, 20.996611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169189, 35.582230, 20.851101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050190, -0.828603, 0.557582,
		-0.407116, -0.526770, -0.746170,
		0.911996, -0.189550, -0.363776,
		34.442787, 35.525364, 20.741968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726151, 35.005634, 20.676661>,  <33.804390, 35.658051, 20.996611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726151, 35.005634, 20.676661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112144, 35.066105, 20.762407>,  <34.343742, 35.102386, 20.813856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112144, 35.066105, 20.762407>,  <33.726151, 35.005634, 20.676661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112144, 35.066105, 20.762407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031253, -0.877670, 0.478246,
		0.260442, -0.454800, -0.851662,
		0.964984, 0.151173, 0.214368,
		34.401638, 35.111458, 20.826717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958389, 34.429119, 20.634998>,  <33.726151, 35.005634, 20.676661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958389, 34.429119, 20.634998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264843, 34.585037, 20.839388>,  <34.448715, 34.678589, 20.962021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264843, 34.585037, 20.839388>,  <33.958389, 34.429119, 20.634998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264843, 34.585037, 20.839388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127679, -0.871537, 0.473414,
		0.629868, -0.297459, -0.717485,
		0.766136, 0.389796, 0.510974,
		34.494682, 34.701977, 20.992680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463161, 33.909462, 20.513239>,  <33.958389, 34.429119, 20.634998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463161, 33.909462, 20.513239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496319, 34.102676, 20.861906>,  <34.516212, 34.218605, 21.071106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496319, 34.102676, 20.861906>,  <34.463161, 33.909462, 20.513239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496319, 34.102676, 20.861906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139306, -0.871707, 0.469809,
		0.986774, 0.082483, -0.139551,
		0.082896, 0.483036, 0.871668,
		34.521187, 34.247585, 21.123405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862156, 33.524014, 20.925638>,  <34.463161, 33.909462, 20.513239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862156, 33.524014, 20.925638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.737026, 33.777523, 21.208614>,  <34.661949, 33.929626, 21.378401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.737026, 33.777523, 21.208614>,  <34.862156, 33.524014, 20.925638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737026, 33.777523, 21.208614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125221, -0.710804, 0.692155,
		0.941520, 0.305111, 0.142997,
		-0.312827, 0.633771, 0.707442,
		34.643177, 33.967655, 21.420847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383442, 33.382725, 21.434811>,  <34.862156, 33.524014, 20.925638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383442, 33.382725, 21.434811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.090736, 33.566669, 21.636028>,  <34.915115, 33.677036, 21.756760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.090736, 33.566669, 21.636028>,  <35.383442, 33.382725, 21.434811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090736, 33.566669, 21.636028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035815, -0.711111, 0.702167,
		0.680620, 0.531835, 0.503893,
		-0.731761, 0.459862, 0.503044,
		34.871208, 33.704628, 21.786942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587631, 33.678303, 22.128889>,  <35.383442, 33.382725, 21.434811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587631, 33.678303, 22.128889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193710, 33.663860, 22.196844>,  <34.957359, 33.655193, 22.237617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193710, 33.663860, 22.196844>,  <35.587631, 33.678303, 22.128889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193710, 33.663860, 22.196844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170858, -0.377027, 0.910307,
		0.031183, 0.925498, 0.377466,
		-0.984802, -0.036107, 0.169886,
		34.898270, 33.653027, 22.247810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522995, 33.824150, 22.889698>,  <35.587631, 33.678303, 22.128889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522995, 33.824150, 22.889698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170559, 33.673901, 22.774744>,  <34.959099, 33.583752, 22.705772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170559, 33.673901, 22.774744>,  <35.522995, 33.824150, 22.889698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170559, 33.673901, 22.774744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065461, -0.504940, 0.860669,
		-0.468399, 0.777138, 0.420308,
		-0.881089, -0.375623, -0.287385,
		34.906231, 33.561214, 22.688528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015156, 34.004169, 23.389280>,  <35.522995, 33.824150, 22.889698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015156, 34.004169, 23.389280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912571, 33.667999, 23.198320>,  <34.851021, 33.466297, 23.083744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912571, 33.667999, 23.198320>,  <35.015156, 34.004169, 23.389280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912571, 33.667999, 23.198320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007796, -0.495705, 0.868456,
		-0.966522, 0.219008, 0.133684,
		-0.256466, -0.840424, -0.477402,
		34.835632, 33.415871, 23.055099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449886, 33.677975, 23.764030>,  <35.015156, 34.004169, 23.389280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449886, 33.677975, 23.764030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589794, 33.380245, 23.536469>,  <34.673737, 33.201607, 23.399931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589794, 33.380245, 23.536469>,  <34.449886, 33.677975, 23.764030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589794, 33.380245, 23.536469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054569, -0.622415, 0.780783,
		-0.935246, -0.242048, -0.258317,
		0.349767, -0.744320, -0.568903,
		34.694725, 33.156948, 23.365797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177197, 33.125450, 24.064718>,  <34.449886, 33.677975, 23.764030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177197, 33.125450, 24.064718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468670, 32.965687, 23.842190>,  <34.643555, 32.869827, 23.708673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468670, 32.965687, 23.842190>,  <34.177197, 33.125450, 24.064718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468670, 32.965687, 23.842190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133028, -0.714303, 0.687077,
		-0.671801, -0.574671, -0.467373,
		0.728689, -0.399405, -0.556317,
		34.687275, 32.845863, 23.675293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012753, 32.376755, 24.092049>,  <34.177197, 33.125450, 24.064718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012753, 32.376755, 24.092049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402225, 32.406830, 24.005995>,  <34.635910, 32.424877, 23.954363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402225, 32.406830, 24.005995>,  <34.012753, 32.376755, 24.092049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402225, 32.406830, 24.005995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204825, -0.702615, 0.681454,
		-0.099916, -0.707586, -0.699527,
		0.973686, 0.075193, -0.215134,
		34.694332, 32.429386, 23.941454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302414, 31.736120, 24.138594>,  <34.012753, 32.376755, 24.092049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302414, 31.736120, 24.138594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616871, 31.973349, 24.208155>,  <34.805546, 32.115685, 24.249891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616871, 31.973349, 24.208155>,  <34.302414, 31.736120, 24.138594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616871, 31.973349, 24.208155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319299, -0.630656, 0.707334,
		0.529171, -0.500541, -0.685155,
		0.786146, 0.593070, 0.173903,
		34.852715, 32.151268, 24.260326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852539, 31.335085, 24.257238>,  <34.302414, 31.736120, 24.138594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852539, 31.335085, 24.257238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927788, 31.687321, 24.431215>,  <34.972935, 31.898663, 24.535603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927788, 31.687321, 24.431215>,  <34.852539, 31.335085, 24.257238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927788, 31.687321, 24.431215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277692, -0.472469, 0.836457,
		0.942071, -0.036573, -0.333413,
		0.188119, 0.880588, 0.434944,
		34.984222, 31.951498, 24.561699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384659, 31.122599, 24.701822>,  <34.852539, 31.335085, 24.257238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384659, 31.122599, 24.701822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282085, 31.483261, 24.841110>,  <35.220539, 31.699659, 24.924683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282085, 31.483261, 24.841110>,  <35.384659, 31.122599, 24.701822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282085, 31.483261, 24.841110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213038, -0.298683, 0.930271,
		0.942791, 0.312739, -0.115494,
		-0.256436, 0.901656, 0.348221,
		35.205154, 31.753757, 24.945576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774273, 31.037085, 25.236610>,  <35.384659, 31.122599, 24.701822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774273, 31.037085, 25.236610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536507, 31.348410, 25.317499>,  <35.393845, 31.535206, 25.366032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536507, 31.348410, 25.317499>,  <35.774273, 31.037085, 25.236610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536507, 31.348410, 25.317499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149297, -0.140288, 0.978790,
		0.790175, 0.612003, -0.032810,
		-0.594419, 0.778314, 0.202222,
		35.358181, 31.581903, 25.378166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215614, 31.635010, 25.534233>,  <35.774273, 31.037085, 25.236610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215614, 31.635010, 25.534233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.835728, 31.597923, 25.653858>,  <35.607796, 31.575672, 25.725634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.835728, 31.597923, 25.653858>,  <36.215614, 31.635010, 25.534233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835728, 31.597923, 25.653858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313072, -0.294945, 0.902770,
		0.004508, 0.951006, 0.309141,
		-0.949719, -0.092714, 0.299063,
		35.550812, 31.570108, 25.743576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068787, 32.139542, 26.119572>,  <36.215614, 31.635010, 25.534233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068787, 32.139542, 26.119572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307297, 32.312973, 26.389820>,  <36.450405, 32.417030, 26.551970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307297, 32.312973, 26.389820>,  <36.068787, 32.139542, 26.119572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307297, 32.312973, 26.389820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292180, 0.666672, -0.685697,
		-0.747718, 0.606270, 0.270841,
		0.596279, 0.433574, 0.675622,
		36.486179, 32.443047, 26.592506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004681, 32.905476, 26.026541>,  <36.068787, 32.139542, 26.119572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004681, 32.905476, 26.026541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355335, 32.866901, 26.215096>,  <36.565727, 32.843758, 26.328228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355335, 32.866901, 26.215096>,  <36.004681, 32.905476, 26.026541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355335, 32.866901, 26.215096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424434, 0.616448, -0.663211,
		-0.226629, 0.781468, 0.581332,
		0.876639, -0.096434, 0.471387,
		36.618328, 32.837971, 26.356512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273258, 33.535446, 26.003586>,  <36.004681, 32.905476, 26.026541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273258, 33.535446, 26.003586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580860, 33.291660, 26.080713>,  <36.765423, 33.145386, 26.126989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580860, 33.291660, 26.080713>,  <36.273258, 33.535446, 26.003586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580860, 33.291660, 26.080713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565621, 0.508203, -0.649464,
		0.297836, 0.608504, 0.735539,
		0.769004, -0.609469, 0.192821,
		36.811562, 33.108818, 26.138559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851807, 33.921711, 26.255161>,  <36.273258, 33.535446, 26.003586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851807, 33.921711, 26.255161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989799, 33.579727, 26.100227>,  <37.072594, 33.374535, 26.007267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989799, 33.579727, 26.100227>,  <36.851807, 33.921711, 26.255161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989799, 33.579727, 26.100227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589218, 0.518486, -0.619672,
		0.730625, -0.014451, 0.682626,
		0.344977, -0.854964, -0.387334,
		37.093292, 33.323238, 25.984028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425152, 34.151428, 25.991224>,  <36.851807, 33.921711, 26.255161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425152, 34.151428, 25.991224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402943, 33.806873, 25.789265>,  <37.389618, 33.600140, 25.668089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402943, 33.806873, 25.789265>,  <37.425152, 34.151428, 25.991224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402943, 33.806873, 25.789265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513966, 0.408879, -0.754094,
		0.856012, -0.301373, 0.420022,
		-0.055525, -0.861390, -0.504900,
		37.386284, 33.548458, 25.637794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137562, 34.049397, 25.725229>,  <37.425152, 34.151428, 25.991224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137562, 34.049397, 25.725229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893353, 33.837708, 25.489540>,  <37.746826, 33.710693, 25.348127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893353, 33.837708, 25.489540>,  <38.137562, 34.049397, 25.725229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893353, 33.837708, 25.489540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469721, 0.357046, -0.807391,
		0.637672, -0.769699, 0.030605,
		-0.610521, -0.529227, -0.589222,
		37.710197, 33.678940, 25.312773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526638, 33.870281, 25.129961>,  <38.137562, 34.049397, 25.725229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526638, 33.870281, 25.129961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166447, 33.812527, 24.965868>,  <37.950333, 33.777874, 24.867413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166447, 33.812527, 24.965868>,  <38.526638, 33.870281, 25.129961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166447, 33.812527, 24.965868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289841, 0.504016, -0.813610,
		0.324234, -0.851541, -0.412008,
		-0.900480, -0.144383, -0.410231,
		37.896301, 33.769211, 24.842798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576832, 33.545483, 24.467716>,  <38.526638, 33.870281, 25.129961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576832, 33.545483, 24.467716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240490, 33.761658, 24.455736>,  <38.038685, 33.891361, 24.448549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240490, 33.761658, 24.455736>,  <38.576832, 33.545483, 24.467716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240490, 33.761658, 24.455736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379024, 0.548414, -0.745375,
		-0.386401, -0.638102, -0.665973,
		-0.840854, 0.540433, -0.029949,
		37.988235, 33.923786, 24.446751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327496, 33.531319, 23.662527>,  <38.576832, 33.545483, 24.467716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327496, 33.531319, 23.662527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088512, 33.807941, 23.824907>,  <37.945122, 33.973915, 23.922335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088512, 33.807941, 23.824907>,  <38.327496, 33.531319, 23.662527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088512, 33.807941, 23.824907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120220, 0.577757, -0.807307,
		-0.792839, -0.433527, -0.428323,
		-0.597456, 0.691557, 0.405949,
		37.909275, 34.015408, 23.946692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929733, 33.640297, 23.114529>,  <38.327496, 33.531319, 23.662527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929733, 33.640297, 23.114529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902611, 33.959934, 23.353477>,  <37.886337, 34.151718, 23.496847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902611, 33.959934, 23.353477>,  <37.929733, 33.640297, 23.114529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902611, 33.959934, 23.353477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027551, 0.600023, -0.799508,
		-0.997318, -0.037750, -0.062698,
		-0.067802, 0.799092, 0.597374,
		37.882271, 34.199661, 23.532690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371525, 34.124798, 22.843328>,  <37.929733, 33.640297, 23.114529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371525, 34.124798, 22.843328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603024, 34.336254, 23.091713>,  <37.741920, 34.463127, 23.240744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603024, 34.336254, 23.091713>,  <37.371525, 34.124798, 22.843328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603024, 34.336254, 23.091713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025231, 0.749468, -0.661560,
		-0.815120, 0.398541, 0.420411,
		0.578743, 0.528643, 0.620962,
		37.776646, 34.494846, 23.278002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077908, 34.737896, 22.794233>,  <37.371525, 34.124798, 22.843328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077908, 34.737896, 22.794233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437130, 34.828075, 22.945322>,  <37.652664, 34.882183, 23.035975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437130, 34.828075, 22.945322>,  <37.077908, 34.737896, 22.794233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437130, 34.828075, 22.945322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025887, 0.830105, -0.557006,
		-0.439124, 0.510000, 0.739643,
		0.898054, 0.225447, 0.377721,
		37.706547, 34.895710, 23.058638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054962, 35.405811, 23.135241>,  <37.077908, 34.737896, 22.794233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054962, 35.405811, 23.135241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430061, 35.339775, 23.013006>,  <37.655121, 35.300152, 22.939667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430061, 35.339775, 23.013006>,  <37.054962, 35.405811, 23.135241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430061, 35.339775, 23.013006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040975, 0.821088, -0.569328,
		0.344902, 0.546406, 0.763206,
		0.937744, -0.165090, -0.305584,
		37.711384, 35.290249, 22.921331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321846, 35.984493, 23.133522>,  <37.054962, 35.405811, 23.135241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321846, 35.984493, 23.133522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548073, 35.787624, 22.868826>,  <37.683807, 35.669502, 22.710009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548073, 35.787624, 22.868826>,  <37.321846, 35.984493, 23.133522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548073, 35.787624, 22.868826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115963, 0.746966, -0.654671,
		0.816511, 0.446996, 0.365383,
		0.565564, -0.492175, -0.661741,
		37.717743, 35.639973, 22.670303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876118, 36.473614, 22.865314>,  <37.321846, 35.984493, 23.133522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876118, 36.473614, 22.865314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854225, 36.197739, 22.576500>,  <37.841091, 36.032215, 22.403212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854225, 36.197739, 22.576500>,  <37.876118, 36.473614, 22.865314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854225, 36.197739, 22.576500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026331, 0.723868, -0.689436,
		0.998154, -0.018719, -0.057775,
		-0.054728, -0.689685, -0.722039,
		37.837807, 35.990833, 22.359888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171169, 36.889282, 22.360075>,  <37.876118, 36.473614, 22.865314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171169, 36.889282, 22.360075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978653, 36.596394, 22.167326>,  <37.863144, 36.420658, 22.051676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978653, 36.596394, 22.167326>,  <38.171169, 36.889282, 22.360075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978653, 36.596394, 22.167326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178701, 0.620152, -0.763857,
		0.858150, -0.281528, -0.429325,
		-0.481294, -0.732225, -0.481874,
		37.834263, 36.376728, 22.022764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476788, 36.988338, 21.725296>,  <38.171169, 36.889282, 22.360075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476788, 36.988338, 21.725296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156460, 36.750584, 21.695930>,  <37.964264, 36.607929, 21.678310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156460, 36.750584, 21.695930>,  <38.476788, 36.988338, 21.725296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156460, 36.750584, 21.695930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266861, 0.463881, -0.844748,
		0.536167, -0.656898, -0.530104,
		-0.800818, -0.594390, -0.073417,
		37.916214, 36.572266, 21.673906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572311, 36.828129, 21.101210>,  <38.476788, 36.988338, 21.725296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572311, 36.828129, 21.101210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198269, 36.734539, 21.207668>,  <37.973843, 36.678387, 21.271544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198269, 36.734539, 21.207668>,  <38.572311, 36.828129, 21.101210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198269, 36.734539, 21.207668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346715, 0.448798, -0.823632,
		0.073263, -0.862459, -0.500796,
		-0.935105, -0.233976, 0.266147,
		37.917736, 36.664345, 21.287512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315254, 36.441753, 20.553732>,  <38.572311, 36.828129, 21.101210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315254, 36.441753, 20.553732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015099, 36.613888, 20.754423>,  <37.835007, 36.717167, 20.874838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015099, 36.613888, 20.754423>,  <38.315254, 36.441753, 20.553732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015099, 36.613888, 20.754423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345811, 0.391298, -0.852819,
		-0.563324, -0.813447, -0.144810,
		-0.750388, 0.430336, 0.501727,
		37.789982, 36.742989, 20.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.423412, 36.425320, 20.121094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405712, 36.696068, 20.415001>,  <37.395092, 36.858517, 20.591345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405712, 36.696068, 20.415001>,  <37.423412, 36.425320, 20.121094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405712, 36.696068, 20.415001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524732, 0.610117, -0.593644,
		-0.850117, -0.411825, 0.328179,
		-0.044250, 0.676873, 0.734769,
		37.392437, 36.899128, 20.635431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684753, 36.725224, 19.996292>,  <37.423412, 36.425320, 20.121094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684753, 36.725224, 19.996292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864899, 36.981564, 20.244961>,  <36.972988, 37.135368, 20.394163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864899, 36.981564, 20.244961>,  <36.684753, 36.725224, 19.996292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864899, 36.981564, 20.244961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378448, 0.767659, -0.517182,
		-0.808671, -0.002350, 0.588257,
		0.450365, 0.640854, 0.621673,
		37.000008, 37.173820, 20.431463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201797, 37.201946, 20.287374>,  <36.684753, 36.725224, 19.996292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201797, 37.201946, 20.287374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567486, 37.363907, 20.293730>,  <36.786900, 37.461082, 20.297543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567486, 37.363907, 20.293730>,  <36.201797, 37.201946, 20.287374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567486, 37.363907, 20.293730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362075, 0.833881, -0.416586,
		-0.181923, 0.375100, 0.908958,
		0.914224, 0.404898, 0.015888,
		36.841755, 37.485374, 20.298496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154095, 37.871086, 20.520956>,  <36.201797, 37.201946, 20.287374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154095, 37.871086, 20.520956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501144, 37.856281, 20.322620>,  <36.709373, 37.847401, 20.203619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501144, 37.856281, 20.322620>,  <36.154095, 37.871086, 20.520956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501144, 37.856281, 20.322620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324223, 0.713945, -0.620614,
		0.376970, 0.699223, 0.607438,
		0.867625, -0.037008, -0.495840,
		36.761433, 37.845181, 20.173868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356205, 38.502731, 20.355219>,  <36.154095, 37.871086, 20.520956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356205, 38.502731, 20.355219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599903, 38.323898, 20.093245>,  <36.746120, 38.216599, 19.936060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599903, 38.323898, 20.093245>,  <36.356205, 38.502731, 20.355219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599903, 38.323898, 20.093245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253015, 0.673148, -0.694878,
		0.751534, 0.589060, 0.296994,
		0.609245, -0.447081, -0.654934,
		36.782677, 38.189774, 19.896765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815598, 39.094193, 19.964693>,  <36.356205, 38.502731, 20.355219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815598, 39.094193, 19.964693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835625, 38.765568, 19.737524>,  <36.847641, 38.568394, 19.601223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835625, 38.765568, 19.737524>,  <36.815598, 39.094193, 19.964693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835625, 38.765568, 19.737524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183656, 0.551365, -0.813798,
		0.981715, 0.145048, -0.123278,
		0.050068, -0.821558, -0.567922,
		36.850647, 38.519100, 19.567148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184635, 39.242607, 19.346186>,  <36.815598, 39.094193, 19.964693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184635, 39.242607, 19.346186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996342, 38.900787, 19.258398>,  <36.883366, 38.695698, 19.205727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996342, 38.900787, 19.258398>,  <37.184635, 39.242607, 19.346186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996342, 38.900787, 19.258398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183278, 0.338036, -0.923115,
		0.863031, -0.394314, -0.315743,
		-0.470729, -0.854546, -0.219467,
		36.855122, 38.644424, 19.192558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509617, 38.953224, 18.751755>,  <37.184635, 39.242607, 19.346186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509617, 38.953224, 18.751755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133980, 38.816799, 18.768665>,  <36.908600, 38.734943, 18.778811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133980, 38.816799, 18.768665>,  <37.509617, 38.953224, 18.751755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133980, 38.816799, 18.768665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214450, 0.485421, -0.847572,
		0.268552, -0.805013, -0.528994,
		-0.939091, -0.341060, 0.042274,
		36.852253, 38.714481, 18.781347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349140, 38.581745, 18.106703>,  <37.509617, 38.953224, 18.751755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349140, 38.581745, 18.106703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003304, 38.702194, 18.267603>,  <36.795803, 38.774464, 18.364143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003304, 38.702194, 18.267603>,  <37.349140, 38.581745, 18.106703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003304, 38.702194, 18.267603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288467, 0.358017, -0.888037,
		-0.411423, -0.883826, -0.222673,
		-0.864591, 0.301125, 0.402251,
		36.743927, 38.792530, 18.388279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882935, 38.406597, 17.592365>,  <37.349140, 38.581745, 18.106703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882935, 38.406597, 17.592365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692005, 38.671215, 17.823715>,  <36.577446, 38.829987, 17.962524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692005, 38.671215, 17.823715>,  <36.882935, 38.406597, 17.592365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692005, 38.671215, 17.823715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243240, 0.533003, -0.810396,
		-0.844390, -0.527506, -0.093501,
		-0.477325, 0.661547, 0.578373,
		36.548809, 38.869678, 17.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327984, 38.596935, 17.200558>,  <36.882935, 38.406597, 17.592365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327984, 38.596935, 17.200558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.321545, 38.891418, 17.471186>,  <36.317680, 39.068108, 17.633562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.321545, 38.891418, 17.471186>,  <36.327984, 38.596935, 17.200558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321545, 38.891418, 17.471186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178864, 0.663622, -0.726370,
		-0.983742, -0.132704, 0.121001,
		-0.016093, 0.736203, 0.676569,
		36.316715, 39.112278, 17.674156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678406, 38.971790, 17.200495>,  <36.327984, 38.596935, 17.200558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678406, 38.971790, 17.200495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949997, 39.231209, 17.338123>,  <36.112949, 39.386860, 17.420700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949997, 39.231209, 17.338123>,  <35.678406, 38.971790, 17.200495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949997, 39.231209, 17.338123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360098, 0.702605, -0.613739,
		-0.639783, 0.292813, 0.710590,
		0.678975, 0.648542, 0.344073,
		36.153690, 39.425770, 17.441345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275467, 39.606895, 17.239185>,  <35.678406, 38.971790, 17.200495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275467, 39.606895, 17.239185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661770, 39.706738, 17.267513>,  <35.893551, 39.766644, 17.284510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661770, 39.706738, 17.267513>,  <35.275467, 39.606895, 17.239185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661770, 39.706738, 17.267513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165155, 0.801911, -0.574162,
		-0.200105, 0.542804, 0.815673,
		0.965755, 0.249605, 0.070819,
		35.951496, 39.781620, 17.288759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266842, 40.365936, 17.443693>,  <35.275467, 39.606895, 17.239185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266842, 40.365936, 17.443693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630466, 40.269367, 17.307858>,  <35.848640, 40.211426, 17.226357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630466, 40.269367, 17.307858>,  <35.266842, 40.365936, 17.443693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630466, 40.269367, 17.307858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013952, 0.832206, -0.554290,
		0.416425, 0.499147, 0.759896,
		0.909063, -0.241422, -0.339588,
		35.903187, 40.196941, 17.205980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587688, 41.009403, 17.476202>,  <35.266842, 40.365936, 17.443693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587688, 41.009403, 17.476202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.818378, 40.797203, 17.227699>,  <35.956795, 40.669884, 17.078598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.818378, 40.797203, 17.227699>,  <35.587688, 41.009403, 17.476202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818378, 40.797203, 17.227699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040049, 0.777915, -0.627092,
		0.815954, 0.336782, 0.469891,
		0.576728, -0.530497, -0.621255,
		35.991398, 40.638054, 17.041323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132622, 41.497990, 17.292158>,  <35.587688, 41.009403, 17.476202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132622, 41.497990, 17.292158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139164, 41.209122, 17.015547>,  <36.143089, 41.035801, 16.849581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139164, 41.209122, 17.015547>,  <36.132622, 41.497990, 17.292158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139164, 41.209122, 17.015547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118057, 0.688177, -0.715874,
		0.992872, -0.069931, 0.096512,
		0.016356, -0.722165, -0.691527,
		36.144070, 40.992474, 16.808088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689671, 41.705017, 16.914913>,  <36.132622, 41.497990, 17.292158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689671, 41.705017, 16.914913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518341, 41.439838, 16.669300>,  <36.415543, 41.280731, 16.521933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518341, 41.439838, 16.669300>,  <36.689671, 41.705017, 16.914913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518341, 41.439838, 16.669300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004550, 0.677932, -0.735111,
		0.903615, -0.317658, -0.287356,
		-0.428321, -0.662949, -0.614035,
		36.389843, 41.240955, 16.485090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065483, 41.736927, 16.286667>,  <36.689671, 41.705017, 16.914913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065483, 41.736927, 16.286667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716671, 41.561665, 16.199419>,  <36.507381, 41.456505, 16.147070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716671, 41.561665, 16.199419>,  <37.065483, 41.736927, 16.286667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716671, 41.561665, 16.199419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075085, 0.560123, -0.825000,
		0.483653, -0.703050, -0.521345,
		-0.872033, -0.438159, -0.218117,
		36.455063, 41.430218, 16.133984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134029, 41.549236, 15.641829>,  <37.065483, 41.736927, 16.286667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134029, 41.549236, 15.641829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739670, 41.562408, 15.707452>,  <36.503052, 41.570312, 15.746825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739670, 41.562408, 15.707452>,  <37.134029, 41.549236, 15.641829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739670, 41.562408, 15.707452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132400, 0.445981, -0.885196,
		-0.102319, -0.894436, -0.435333,
		-0.985901, 0.032934, 0.164055,
		36.443901, 41.572289, 15.756668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847843, 41.433701, 14.980967>,  <37.134029, 41.549236, 15.641829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847843, 41.433701, 14.980967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538048, 41.590904, 15.179243>,  <36.352169, 41.685226, 15.298209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538048, 41.590904, 15.179243>,  <36.847843, 41.433701, 14.980967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538048, 41.590904, 15.179243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278957, 0.491102, -0.825228,
		-0.567759, -0.777406, -0.270720,
		-0.774489, 0.393011, 0.495690,
		36.305702, 41.708809, 15.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302303, 41.390289, 14.539147>,  <36.847843, 41.433701, 14.980967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302303, 41.390289, 14.539147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203976, 41.676388, 14.800831>,  <36.144978, 41.848049, 14.957841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203976, 41.676388, 14.800831>,  <36.302303, 41.390289, 14.539147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203976, 41.676388, 14.800831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271696, 0.597020, -0.754817,
		-0.930458, -0.363298, 0.047569,
		-0.245824, 0.715250, 0.654208,
		36.130230, 41.890965, 14.997093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655354, 41.672787, 14.346248>,  <36.302303, 41.390289, 14.539147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655354, 41.672787, 14.346248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853725, 41.950867, 14.554384>,  <35.972748, 42.117714, 14.679266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853725, 41.950867, 14.554384>,  <35.655354, 41.672787, 14.346248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853725, 41.950867, 14.554384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219057, 0.679998, -0.699726,
		-0.840279, 0.233029, 0.489518,
		0.495928, 0.695198, 0.520342,
		36.002502, 42.159428, 14.710486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127151, 42.169712, 14.461874>,  <35.655354, 41.672787, 14.346248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127151, 42.169712, 14.461874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508404, 42.287601, 14.434494>,  <35.737156, 42.358334, 14.418066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508404, 42.287601, 14.434494>,  <35.127151, 42.169712, 14.461874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508404, 42.287601, 14.434494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223730, 0.534204, -0.815212,
		-0.203697, 0.792315, 0.575103,
		0.953128, 0.294724, -0.068449,
		35.794342, 42.376019, 14.413960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891979, 42.248779, 13.745519>,  <35.127151, 42.169712, 14.461874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891979, 42.248779, 13.745519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584904, 42.015926, 13.638353>,  <34.400658, 41.876213, 13.574054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584904, 42.015926, 13.638353>,  <34.891979, 42.248779, 13.745519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584904, 42.015926, 13.638353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060664, -0.482217, 0.873949,
		-0.637946, 0.654668, 0.405506,
		-0.767688, -0.582131, -0.267914,
		34.354599, 41.841286, 13.557980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782459, 41.623119, 14.126406>,  <34.891979, 42.248779, 13.745519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782459, 41.623119, 14.126406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.420429, 41.578991, 13.962133>,  <34.203209, 41.552513, 13.863569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.420429, 41.578991, 13.962133>,  <34.782459, 41.623119, 14.126406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420429, 41.578991, 13.962133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269445, -0.598368, 0.754557,
		-0.328984, 0.793590, 0.511845,
		-0.905080, -0.110323, -0.410682,
		34.148907, 41.545895, 13.838929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281540, 41.854801, 14.586622>,  <34.782459, 41.623119, 14.126406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281540, 41.854801, 14.586622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128880, 41.583641, 14.335293>,  <34.037285, 41.420944, 14.184495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128880, 41.583641, 14.335293>,  <34.281540, 41.854801, 14.586622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128880, 41.583641, 14.335293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424433, -0.475342, 0.770653,
		-0.821098, 0.560800, -0.106311,
		-0.381649, -0.677904, -0.628324,
		34.014385, 41.380268, 14.146795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602577, 41.813545, 14.656102>,  <34.281540, 41.854801, 14.586622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602577, 41.813545, 14.656102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701870, 41.452911, 14.514380>,  <33.761448, 41.236530, 14.429347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701870, 41.452911, 14.514380>,  <33.602577, 41.813545, 14.656102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701870, 41.452911, 14.514380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561090, -0.431971, 0.706101,
		-0.789657, 0.023519, -0.613098,
		0.248234, -0.901581, -0.354305,
		33.776340, 41.182438, 14.408089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971756, 41.465881, 14.700671>,  <33.602577, 41.813545, 14.656102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971756, 41.465881, 14.700671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256340, 41.187305, 14.663136>,  <33.427090, 41.020161, 14.640615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256340, 41.187305, 14.663136>,  <32.971756, 41.465881, 14.700671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256340, 41.187305, 14.663136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461627, -0.563852, 0.684815,
		-0.529841, -0.443898, -0.722650,
		0.711456, -0.696438, -0.093836,
		33.469776, 40.978374, 14.634986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641754, 40.817924, 14.589314>,  <32.971756, 41.465881, 14.700671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641754, 40.817924, 14.589314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007870, 40.731682, 14.725407>,  <33.227539, 40.679935, 14.807062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007870, 40.731682, 14.725407>,  <32.641754, 40.817924, 14.589314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007870, 40.731682, 14.725407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395998, -0.636141, 0.662201,
		0.073662, -0.740838, -0.667633,
		0.915292, -0.215603, 0.340230,
		33.282455, 40.667000, 14.827476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621475, 40.048637, 14.698145>,  <32.641754, 40.817924, 14.589314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621475, 40.048637, 14.698145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952793, 40.152359, 14.896814>,  <33.151585, 40.214592, 15.016016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952793, 40.152359, 14.896814>,  <32.621475, 40.048637, 14.698145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952793, 40.152359, 14.896814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254310, -0.615896, 0.745654,
		0.499249, -0.743932, -0.444202,
		0.828298, 0.259302, 0.496675,
		33.201283, 40.230148, 15.045816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868385, 39.457943, 14.818559>,  <32.621475, 40.048637, 14.698145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868385, 39.457943, 14.818559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068932, 39.706467, 15.059428>,  <33.189259, 39.855579, 15.203950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068932, 39.706467, 15.059428>,  <32.868385, 39.457943, 14.818559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068932, 39.706467, 15.059428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133265, -0.632209, 0.763251,
		0.854913, -0.462915, -0.234168,
		0.501363, 0.621307, 0.602173,
		33.219341, 39.892860, 15.240080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431953, 39.013817, 15.255160>,  <32.868385, 39.457943, 14.818559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431953, 39.013817, 15.255160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.360405, 39.359173, 15.443867>,  <33.317474, 39.566387, 15.557091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.360405, 39.359173, 15.443867>,  <33.431953, 39.013817, 15.255160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360405, 39.359173, 15.443867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015985, -0.476886, 0.878820,
		0.983742, 0.164741, 0.071502,
		-0.178876, 0.863389, 0.471766,
		33.306744, 39.618191, 15.585397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997005, 39.094242, 15.703240>,  <33.431953, 39.013817, 15.255160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997005, 39.094242, 15.703240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730911, 39.366135, 15.826804>,  <33.571255, 39.529270, 15.900943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730911, 39.366135, 15.826804>,  <33.997005, 39.094242, 15.703240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730911, 39.366135, 15.826804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183791, -0.251926, 0.950134,
		0.723655, 0.688842, 0.042664,
		-0.665240, 0.679728, 0.308910,
		33.531338, 39.570053, 15.919477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289646, 39.513481, 16.199612>,  <33.997005, 39.094242, 15.703240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289646, 39.513481, 16.199612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897694, 39.545586, 16.272711>,  <33.662521, 39.564850, 16.316570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897694, 39.545586, 16.272711>,  <34.289646, 39.513481, 16.199612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897694, 39.545586, 16.272711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161676, -0.217737, 0.962523,
		0.117049, 0.972701, 0.200379,
		-0.979878, 0.080266, 0.182748,
		33.603729, 39.569664, 16.327536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228790, 39.930408, 16.679935>,  <34.289646, 39.513481, 16.199612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228790, 39.930408, 16.679935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901287, 39.701267, 16.695292>,  <33.704784, 39.563782, 16.704506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901287, 39.701267, 16.695292>,  <34.228790, 39.930408, 16.679935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901287, 39.701267, 16.695292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253934, -0.301348, 0.919079,
		-0.514924, 0.762256, 0.392198,
		-0.818762, -0.572849, 0.038392,
		33.655659, 39.529411, 16.706808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888290, 40.042427, 17.252638>,  <34.228790, 39.930408, 16.679935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888290, 40.042427, 17.252638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.768623, 39.670444, 17.167147>,  <33.696823, 39.447254, 17.115852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.768623, 39.670444, 17.167147>,  <33.888290, 40.042427, 17.252638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768623, 39.670444, 17.167147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333549, -0.311773, 0.889687,
		-0.894005, 0.194875, 0.403458,
		-0.299165, -0.929958, -0.213726,
		33.678875, 39.391457, 17.103029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695320, 39.808475, 17.965126>,  <33.888290, 40.042427, 17.252638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695320, 39.808475, 17.965126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712353, 39.491688, 17.721495>,  <33.722572, 39.301617, 17.575315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712353, 39.491688, 17.721495>,  <33.695320, 39.808475, 17.965126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712353, 39.491688, 17.721495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207352, -0.589352, 0.780813,
		-0.977339, -0.159545, 0.139117,
		0.042586, -0.791966, -0.609079,
		33.725128, 39.254097, 17.538771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518017, 39.259167, 18.358488>,  <33.695320, 39.808475, 17.965126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518017, 39.259167, 18.358488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707573, 39.079025, 18.055805>,  <33.821308, 38.970940, 17.874195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707573, 39.079025, 18.055805>,  <33.518017, 39.259167, 18.358488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707573, 39.079025, 18.055805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302100, -0.724027, 0.620097,
		-0.827143, -0.522458, -0.207055,
		0.473888, -0.450358, -0.756708,
		33.849739, 38.943916, 17.828793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262264, 38.540310, 18.375853>,  <33.518017, 39.259167, 18.358488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262264, 38.540310, 18.375853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595333, 38.543079, 18.154362>,  <33.795174, 38.544739, 18.021467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595333, 38.543079, 18.154362>,  <33.262264, 38.540310, 18.375853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595333, 38.543079, 18.154362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233729, -0.910885, 0.340086,
		-0.502028, -0.412601, -0.760084,
		0.832670, 0.006921, -0.553727,
		33.845135, 38.545155, 17.988243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424999, 37.754955, 18.281120>,  <33.262264, 38.540310, 18.375853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424999, 37.754955, 18.281120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781010, 37.935974, 18.258982>,  <33.994614, 38.044586, 18.245699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781010, 37.935974, 18.258982>,  <33.424999, 37.754955, 18.281120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781010, 37.935974, 18.258982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410893, -0.743596, 0.527477,
		0.197550, -0.492208, -0.847765,
		0.890023, 0.452543, -0.055347,
		34.048016, 38.071735, 18.242378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880123, 37.247204, 18.123991>,  <33.424999, 37.754955, 18.281120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880123, 37.247204, 18.123991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097942, 37.544582, 18.279303>,  <34.228634, 37.723011, 18.372490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097942, 37.544582, 18.279303>,  <33.880123, 37.247204, 18.123991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097942, 37.544582, 18.279303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505261, -0.660280, 0.555645,
		0.669464, -0.106392, -0.735186,
		0.544545, 0.743445, 0.388278,
		34.261307, 37.767616, 18.395786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569241, 37.083820, 18.121532>,  <33.880123, 37.247204, 18.123991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569241, 37.083820, 18.121532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532612, 37.329823, 18.434809>,  <34.510635, 37.477425, 18.622774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532612, 37.329823, 18.434809>,  <34.569241, 37.083820, 18.121532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532612, 37.329823, 18.434809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312325, -0.729072, 0.609022,
		0.945552, 0.300379, -0.125317,
		-0.091572, 0.615001, 0.783191,
		34.505138, 37.514324, 18.669765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240654, 37.091370, 18.591818>,  <34.569241, 37.083820, 18.121532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240654, 37.091370, 18.591818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973919, 37.236202, 18.852348>,  <34.813877, 37.323101, 19.008667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973919, 37.236202, 18.852348>,  <35.240654, 37.091370, 18.591818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973919, 37.236202, 18.852348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250839, -0.713958, 0.653715,
		0.701720, 0.599298, 0.385267,
		-0.666835, 0.362085, 0.651326,
		34.773869, 37.344830, 19.047747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502369, 36.830418, 19.153137>,  <35.240654, 37.091370, 18.591818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502369, 36.830418, 19.153137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148712, 36.972694, 19.274319>,  <34.936520, 37.058060, 19.347027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148712, 36.972694, 19.274319>,  <35.502369, 36.830418, 19.153137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148712, 36.972694, 19.274319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011142, -0.664280, 0.747400,
		0.467088, 0.657432, 0.591280,
		-0.884141, 0.355690, 0.302952,
		34.883469, 37.079403, 19.365204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.870052, 34.925232, 22.765680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514160, 35.083714, 22.856377>,  <38.300625, 35.178802, 22.910795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514160, 35.083714, 22.856377>,  <38.870052, 34.925232, 22.765680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514160, 35.083714, 22.856377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117652, -0.678942, 0.724704,
		0.441072, 0.618111, 0.650687,
		-0.889726, 0.396201, 0.226741,
		38.247242, 35.202576, 22.924398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960968, 34.973476, 23.431696>,  <38.870052, 34.925232, 22.765680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960968, 34.973476, 23.431696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570271, 34.970234, 23.345995>,  <38.335854, 34.968288, 23.294575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570271, 34.970234, 23.345995>,  <38.960968, 34.973476, 23.431696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570271, 34.970234, 23.345995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142700, -0.721216, 0.677852,
		-0.160019, 0.692662, 0.703287,
		-0.976745, -0.008110, -0.214251,
		38.277248, 34.967800, 23.281719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608303, 35.232136, 23.995371>,  <38.960968, 34.973476, 23.431696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608303, 35.232136, 23.995371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346687, 35.013004, 23.786713>,  <38.189716, 34.881527, 23.661518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346687, 35.013004, 23.786713>,  <38.608303, 35.232136, 23.995371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346687, 35.013004, 23.786713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058361, -0.650989, 0.756840,
		-0.754205, 0.525447, 0.393801,
		-0.654040, -0.547830, -0.521645,
		38.150475, 34.848656, 23.630219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935268, 35.220428, 24.359735>,  <38.608303, 35.232136, 23.995371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935268, 35.220428, 24.359735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905006, 34.922997, 24.093992>,  <37.886848, 34.744537, 23.934547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905006, 34.922997, 24.093992>,  <37.935268, 35.220428, 24.359735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905006, 34.922997, 24.093992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403843, -0.586327, 0.702234,
		-0.911695, 0.321425, -0.255928,
		-0.075658, -0.743577, -0.664356,
		37.882309, 34.699924, 23.894686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248516, 34.997959, 24.345856>,  <37.935268, 35.220428, 24.359735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248516, 34.997959, 24.345856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495937, 34.700176, 24.245319>,  <37.644390, 34.521507, 24.184998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495937, 34.700176, 24.245319>,  <37.248516, 34.997959, 24.345856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495937, 34.700176, 24.245319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488947, -0.615082, 0.618551,
		-0.615082, -0.259713, -0.744462,
		-0.618551, 0.744462, 0.251340,
		37.681503, 34.476837, 24.169918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836334, 34.390343, 24.439079>,  <37.248516, 34.997959, 24.345856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836334, 34.390343, 24.439079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205441, 34.238239, 24.414095>,  <37.426907, 34.146976, 24.399105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205441, 34.238239, 24.414095>,  <36.836334, 34.390343, 24.439079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205441, 34.238239, 24.414095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254962, -0.723999, 0.640952,
		-0.288945, -0.575527, -0.765036,
		0.922770, -0.380255, -0.062458,
		37.482273, 34.124165, 24.395357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696144, 33.675735, 24.422691>,  <36.836334, 34.390343, 24.439079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696144, 33.675735, 24.422691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069096, 33.708519, 24.563519>,  <37.292866, 33.728191, 24.648014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069096, 33.708519, 24.563519>,  <36.696144, 33.675735, 24.422691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069096, 33.708519, 24.563519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158123, -0.783356, 0.601124,
		0.325062, -0.616146, -0.717425,
		0.932380, 0.081961, 0.352066,
		37.348808, 33.733109, 24.669138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037281, 32.948883, 24.500038>,  <36.696144, 33.675735, 24.422691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037281, 32.948883, 24.500038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.214962, 33.193733, 24.761721>,  <37.321571, 33.340645, 24.918730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.214962, 33.193733, 24.761721>,  <37.037281, 32.948883, 24.500038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214962, 33.193733, 24.761721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172140, -0.658282, 0.732825,
		0.879236, -0.438135, -0.187036,
		0.444198, 0.612130, 0.654206,
		37.348221, 33.377373, 24.957983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306755, 32.433304, 24.923569>,  <37.037281, 32.948883, 24.500038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306755, 32.433304, 24.923569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.317657, 32.783058, 25.117353>,  <37.324200, 32.992912, 25.233624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.317657, 32.783058, 25.117353>,  <37.306755, 32.433304, 24.923569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317657, 32.783058, 25.117353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240729, -0.464635, 0.852152,
		0.970210, -0.139851, 0.197826,
		0.027257, 0.874389, 0.484460,
		37.325836, 33.045376, 25.262691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616367, 32.183010, 25.556570>,  <37.306755, 32.433304, 24.923569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616367, 32.183010, 25.556570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476727, 32.537170, 25.679338>,  <37.392944, 32.749664, 25.752998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476727, 32.537170, 25.679338>,  <37.616367, 32.183010, 25.556570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476727, 32.537170, 25.679338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267574, -0.408072, 0.872858,
		0.898073, 0.222590, 0.379367,
		-0.349099, 0.885399, 0.306919,
		37.371998, 32.802792, 25.771414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911568, 32.387840, 26.318489>,  <37.616367, 32.183010, 25.556570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911568, 32.387840, 26.318489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560795, 32.570591, 26.258812>,  <37.350330, 32.680241, 26.223005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560795, 32.570591, 26.258812>,  <37.911568, 32.387840, 26.318489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560795, 32.570591, 26.258812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362725, -0.425465, 0.829102,
		0.315321, 0.781180, 0.538824,
		-0.876928, 0.456878, -0.149195,
		37.297718, 32.707653, 26.214054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730408, 32.669216, 26.984457>,  <37.911568, 32.387840, 26.318489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730408, 32.669216, 26.984457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.379139, 32.730190, 26.803095>,  <37.168377, 32.766773, 26.694277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.379139, 32.730190, 26.803095>,  <37.730408, 32.669216, 26.984457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379139, 32.730190, 26.803095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472650, -0.422328, 0.773460,
		-0.073587, 0.893534, 0.442924,
		-0.878172, 0.152431, -0.453407,
		37.115688, 32.775921, 26.667072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279533, 33.149715, 27.421982>,  <37.730408, 32.669216, 26.984457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279533, 33.149715, 27.421982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076462, 32.913128, 27.171404>,  <36.954620, 32.771175, 27.021057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076462, 32.913128, 27.171404>,  <37.279533, 33.149715, 27.421982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076462, 32.913128, 27.171404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387447, -0.492704, 0.779184,
		-0.769512, 0.638288, 0.020973,
		-0.507677, -0.591465, -0.626445,
		36.924160, 32.735687, 26.983471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498241, 32.940895, 27.608025>,  <37.279533, 33.149715, 27.421982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498241, 32.940895, 27.608025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.764252, 32.648571, 27.669558>,  <36.923859, 32.473179, 27.706478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.764252, 32.648571, 27.669558>,  <36.498241, 32.940895, 27.608025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764252, 32.648571, 27.669558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205064, 0.376754, 0.903330,
		-0.718116, -0.569191, 0.400413,
		0.665024, -0.730806, 0.153832,
		36.963760, 32.429329, 27.715708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926033, 33.184338, 28.067137>,  <36.498241, 32.940895, 27.608025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926033, 33.184338, 28.067137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.842865, 33.513298, 28.278959>,  <35.792965, 33.710674, 28.406054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.842865, 33.513298, 28.278959>,  <35.926033, 33.184338, 28.067137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842865, 33.513298, 28.278959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005782, 0.542412, -0.840093,
		-0.978128, -0.171614, -0.117536,
		-0.207924, 0.822398, 0.529556,
		35.780487, 33.760017, 28.437826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174744, 33.375443, 27.975883>,  <35.926033, 33.184338, 28.067137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174744, 33.375443, 27.975883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.408676, 33.692730, 28.043747>,  <35.549034, 33.883102, 28.084465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.408676, 33.692730, 28.043747>,  <35.174744, 33.375443, 27.975883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408676, 33.692730, 28.043747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336532, 0.427571, -0.839005,
		-0.738053, 0.433578, 0.516998,
		0.584828, 0.793217, 0.169657,
		35.584126, 33.930695, 28.094645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760345, 33.909626, 27.792139>,  <35.174744, 33.375443, 27.975883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760345, 33.909626, 27.792139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.137753, 34.042145, 27.790962>,  <35.364197, 34.121655, 27.790257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.137753, 34.042145, 27.790962>,  <34.760345, 33.909626, 27.792139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137753, 34.042145, 27.790962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218712, 0.616169, -0.756638,
		-0.248859, 0.714548, 0.653827,
		0.943522, 0.331296, -0.002941,
		35.420811, 34.141533, 27.790079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768291, 34.663170, 27.801247>,  <34.760345, 33.909626, 27.792139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768291, 34.663170, 27.801247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.120434, 34.565102, 27.638832>,  <35.331718, 34.506260, 27.541384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.120434, 34.565102, 27.638832>,  <34.768291, 34.663170, 27.801247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120434, 34.565102, 27.638832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169572, 0.636785, -0.752164,
		0.442966, 0.731024, 0.519024,
		0.880356, -0.245171, -0.406035,
		35.384541, 34.491550, 27.517021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991661, 35.239719, 27.620983>,  <34.768291, 34.663170, 27.801247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991661, 35.239719, 27.620983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.222427, 34.990173, 27.410093>,  <35.360886, 34.840446, 27.283560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.222427, 34.990173, 27.410093>,  <34.991661, 35.239719, 27.620983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222427, 34.990173, 27.410093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003257, 0.643708, -0.765264,
		0.816800, 0.443207, 0.369331,
		0.576912, -0.623865, -0.527224,
		35.395500, 34.803013, 27.251926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411396, 35.562351, 27.345720>,  <34.991661, 35.239719, 27.620983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411396, 35.562351, 27.345720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.497101, 35.264118, 27.093307>,  <35.548523, 35.085178, 26.941860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.497101, 35.264118, 27.093307>,  <35.411396, 35.562351, 27.345720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497101, 35.264118, 27.093307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071534, 0.656277, -0.751121,
		0.974154, 0.115794, 0.193948,
		0.214259, -0.745582, -0.631032,
		35.561378, 35.040443, 26.903997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137024, 35.730141, 27.038836>,  <35.411396, 35.562351, 27.345720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137024, 35.730141, 27.038836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936691, 35.490475, 26.788984>,  <35.816490, 35.346676, 26.639074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936691, 35.490475, 26.788984>,  <36.137024, 35.730141, 27.038836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936691, 35.490475, 26.788984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159761, 0.645268, -0.747065,
		0.850670, -0.473948, -0.227449,
		-0.500836, -0.599169, -0.624629,
		35.786442, 35.310722, 26.601595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515244, 35.632187, 26.332714>,  <36.137024, 35.730141, 27.038836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515244, 35.632187, 26.332714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132526, 35.547340, 26.253170>,  <35.902897, 35.496433, 26.205444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132526, 35.547340, 26.253170>,  <36.515244, 35.632187, 26.332714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132526, 35.547340, 26.253170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050398, 0.552597, -0.831924,
		0.286354, -0.806005, -0.518033,
		-0.956797, -0.212116, -0.198859,
		35.845486, 35.483704, 26.193512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546005, 35.596294, 25.640923>,  <36.515244, 35.632187, 26.332714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546005, 35.596294, 25.640923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.159771, 35.635933, 25.737104>,  <35.928028, 35.659714, 25.794813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.159771, 35.635933, 25.737104>,  <36.546005, 35.596294, 25.640923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159771, 35.635933, 25.737104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126133, 0.630110, -0.766193,
		-0.227437, -0.770157, -0.595928,
		-0.965590, 0.099095, 0.240453,
		35.870094, 35.665661, 25.809240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204403, 35.510014, 24.996109>,  <36.546005, 35.596294, 25.640923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204403, 35.510014, 24.996109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.920849, 35.687126, 25.215719>,  <35.750717, 35.793396, 25.347485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.920849, 35.687126, 25.215719>,  <36.204403, 35.510014, 24.996109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920849, 35.687126, 25.215719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161424, 0.655889, -0.737395,
		-0.686608, -0.611351, -0.393471,
		-0.708880, 0.442786, 0.549026,
		35.708183, 35.819962, 25.380426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746162, 35.584267, 24.540989>,  <36.204403, 35.510014, 24.996109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746162, 35.584267, 24.540989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658035, 35.849751, 24.826910>,  <35.605160, 36.009041, 24.998463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658035, 35.849751, 24.826910>,  <35.746162, 35.584267, 24.540989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658035, 35.849751, 24.826910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323450, 0.641639, -0.695471,
		-0.920239, -0.384429, 0.073312,
		-0.220319, 0.663712, 0.714804,
		35.591938, 36.048862, 25.041351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095467, 35.955509, 24.279346>,  <35.746162, 35.584267, 24.540989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095467, 35.955509, 24.279346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.261250, 36.193878, 24.554478>,  <35.360718, 36.336899, 24.719557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.261250, 36.193878, 24.554478>,  <35.095467, 35.955509, 24.279346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261250, 36.193878, 24.554478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273019, 0.802401, -0.530672,
		-0.868152, 0.032149, 0.495255,
		0.414454, 0.595918, 0.687829,
		35.385586, 36.372654, 24.760826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595684, 36.528877, 24.428589>,  <35.095467, 35.955509, 24.279346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595684, 36.528877, 24.428589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.956379, 36.676617, 24.518431>,  <35.172798, 36.765259, 24.572336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.956379, 36.676617, 24.518431>,  <34.595684, 36.528877, 24.428589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956379, 36.676617, 24.518431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214696, 0.833633, -0.508882,
		-0.375190, 0.410659, 0.831019,
		0.901742, 0.369344, 0.224604,
		35.226902, 36.787418, 24.585812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481651, 37.300682, 24.588640>,  <34.595684, 36.528877, 24.428589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481651, 37.300682, 24.588640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.871727, 37.272125, 24.504818>,  <35.105770, 37.254990, 24.454525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.871727, 37.272125, 24.504818>,  <34.481651, 37.300682, 24.588640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871727, 37.272125, 24.504818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050180, 0.850660, -0.523317,
		0.215621, 0.520847, 0.825970,
		0.975187, -0.071391, -0.209556,
		35.164284, 37.250710, 24.441952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943272, 37.132725, 24.911711>,  <34.481651, 37.300682, 24.588640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943272, 37.132725, 24.911711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725475, 37.452744, 25.012470>,  <33.594799, 37.644756, 25.072926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725475, 37.452744, 25.012470>,  <33.943272, 37.132725, 24.911711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725475, 37.452744, 25.012470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407951, -0.515005, 0.753887,
		0.732877, 0.307720, 0.606795,
		-0.544489, 0.800049, 0.251901,
		33.562130, 37.692757, 25.088041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089359, 37.383755, 25.643562>,  <33.943272, 37.132725, 24.911711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089359, 37.383755, 25.643562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.722084, 37.442585, 25.496426>,  <33.501720, 37.477882, 25.408144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.722084, 37.442585, 25.496426>,  <34.089359, 37.383755, 25.643562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722084, 37.442585, 25.496426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372807, -0.634848, 0.676745,
		-0.133994, 0.758511, 0.637736,
		-0.918184, 0.147073, -0.367844,
		33.446629, 37.486706, 25.386072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656620, 37.501392, 26.239693>,  <34.089359, 37.383755, 25.643562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656620, 37.501392, 26.239693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.399246, 37.390793, 25.954165>,  <33.244823, 37.324432, 25.782846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.399246, 37.390793, 25.954165>,  <33.656620, 37.501392, 26.239693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399246, 37.390793, 25.954165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345377, -0.727329, 0.593049,
		-0.683160, 0.628126, 0.372492,
		-0.643434, -0.276497, -0.713822,
		33.206215, 37.307842, 25.740017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923874, 37.443554, 26.594954>,  <33.656620, 37.501392, 26.239693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923874, 37.443554, 26.594954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874599, 37.249691, 26.248560>,  <32.845036, 37.133373, 26.040724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874599, 37.249691, 26.248560>,  <32.923874, 37.443554, 26.594954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874599, 37.249691, 26.248560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285857, -0.818314, 0.498647,
		-0.950321, 0.308975, -0.037737,
		-0.123189, -0.484662, -0.865984,
		32.837643, 37.104294, 25.988766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333729, 37.060863, 26.628668>,  <32.923874, 37.443554, 26.594954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333729, 37.060863, 26.628668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.542622, 36.869972, 26.345959>,  <32.667957, 36.755436, 26.176332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.542622, 36.869972, 26.345959>,  <32.333729, 37.060863, 26.628668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542622, 36.869972, 26.345959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138957, -0.865304, 0.481602,
		-0.841405, -0.153298, -0.518206,
		0.522234, -0.477231, -0.706769,
		32.699291, 36.726803, 26.133926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960979, 36.522087, 26.486908>,  <32.333729, 37.060863, 26.628668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960979, 36.522087, 26.486908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.302471, 36.385433, 26.329716>,  <32.507366, 36.303440, 26.235401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.302471, 36.385433, 26.329716>,  <31.960979, 36.522087, 26.486908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302471, 36.385433, 26.329716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163229, -0.892229, 0.421050,
		-0.494474, -0.295316, -0.817486,
		0.853728, -0.341636, -0.392980,
		32.558590, 36.282944, 26.211821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862301, 36.014812, 26.040113>,  <31.960979, 36.522087, 26.486908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862301, 36.014812, 26.040113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.238686, 35.950695, 26.159374>,  <32.464516, 35.912224, 26.230930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.238686, 35.950695, 26.159374>,  <31.862301, 36.014812, 26.040113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238686, 35.950695, 26.159374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282236, -0.857800, 0.429559,
		0.186898, -0.488348, -0.852399,
		0.940963, -0.160294, 0.298151,
		32.520973, 35.902607, 26.248819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073483, 35.396286, 25.817986>,  <31.862301, 36.014812, 26.040113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073483, 35.396286, 25.817986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.310894, 35.461811, 26.133171>,  <32.453342, 35.501125, 26.322283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.310894, 35.461811, 26.133171>,  <32.073483, 35.396286, 25.817986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310894, 35.461811, 26.133171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177119, -0.928478, 0.326432,
		0.785081, -0.333311, -0.522066,
		0.593530, 0.163808, 0.787965,
		32.488953, 35.510952, 26.369560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512470, 34.842285, 25.711409>,  <32.073483, 35.396286, 25.817986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512470, 34.842285, 25.711409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.590374, 34.976284, 26.080156>,  <32.637115, 35.056683, 26.301405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.590374, 34.976284, 26.080156>,  <32.512470, 34.842285, 25.711409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590374, 34.976284, 26.080156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205229, -0.932981, 0.295680,
		0.959140, 0.131608, -0.250460,
		0.194761, 0.335001, 0.921869,
		32.648804, 35.076786, 26.356716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131237, 34.501438, 25.931549>,  <32.512470, 34.842285, 25.711409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131237, 34.501438, 25.931549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.967869, 34.637081, 26.270535>,  <32.869846, 34.718468, 26.473927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.967869, 34.637081, 26.270535>,  <33.131237, 34.501438, 25.931549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967869, 34.637081, 26.270535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195074, -0.874552, 0.443964,
		0.891706, 0.346642, 0.291033,
		-0.408420, 0.339112, 0.847464,
		32.845345, 34.738815, 26.524775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555969, 34.307972, 26.444153>,  <33.131237, 34.501438, 25.931549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555969, 34.307972, 26.444153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.211342, 34.381279, 26.633514>,  <33.004566, 34.425262, 26.747131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.211342, 34.381279, 26.633514>,  <33.555969, 34.307972, 26.444153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211342, 34.381279, 26.633514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045971, -0.900558, 0.432299,
		0.505557, 0.394218, 0.767466,
		-0.861568, 0.183271, 0.473406,
		32.952873, 34.436260, 26.775536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699955, 34.157356, 27.100164>,  <33.555969, 34.307972, 26.444153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699955, 34.157356, 27.100164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.300755, 34.149990, 27.075977>,  <33.061234, 34.145573, 27.061464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.300755, 34.149990, 27.075977>,  <33.699955, 34.157356, 27.100164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300755, 34.149990, 27.075977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011560, -0.887326, 0.460998,
		-0.062143, 0.460775, 0.885339,
		-0.998000, -0.018413, -0.060467,
		33.001354, 34.144466, 27.057837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.449387, 41.448681, 23.699476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182732, 41.210613, 23.519976>,  <33.022739, 41.067772, 23.412275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182732, 41.210613, 23.519976>,  <33.449387, 41.448681, 23.699476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182732, 41.210613, 23.519976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142379, -0.692627, 0.707104,
		-0.731661, 0.407487, 0.546468,
		-0.666634, -0.595165, -0.448751,
		32.982742, 41.032063, 23.385351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072289, 41.244091, 24.237514>,  <33.449387, 41.448681, 23.699476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072289, 41.244091, 24.237514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987335, 40.972828, 23.956091>,  <32.936363, 40.810070, 23.787237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987335, 40.972828, 23.956091>,  <33.072289, 41.244091, 24.237514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987335, 40.972828, 23.956091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128790, -0.733129, 0.667783,
		-0.968662, 0.051216, 0.243045,
		-0.212384, -0.678158, -0.703559,
		32.923618, 40.769379, 23.745024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617668, 40.703659, 24.560633>,  <33.072289, 41.244091, 24.237514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617668, 40.703659, 24.560633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755268, 40.498802, 24.245831>,  <32.837830, 40.375889, 24.056950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755268, 40.498802, 24.245831>,  <32.617668, 40.703659, 24.560633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755268, 40.498802, 24.245831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259225, -0.753783, 0.603832,
		-0.902478, -0.411729, -0.126540,
		0.343999, -0.512143, -0.787003,
		32.858467, 40.345158, 24.009729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394634, 40.083561, 24.696384>,  <32.617668, 40.703659, 24.560633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394634, 40.083561, 24.696384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675373, 40.012482, 24.420462>,  <32.843815, 39.969833, 24.254908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675373, 40.012482, 24.420462>,  <32.394634, 40.083561, 24.696384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675373, 40.012482, 24.420462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185949, -0.889103, 0.418234,
		-0.687628, -0.421805, -0.590972,
		0.701848, -0.177699, -0.689806,
		32.885929, 39.959171, 24.213520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325554, 39.448570, 24.664360>,  <32.394634, 40.083561, 24.696384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325554, 39.448570, 24.664360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672298, 39.482983, 24.467936>,  <32.880344, 39.503632, 24.350080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672298, 39.482983, 24.467936>,  <32.325554, 39.448570, 24.664360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672298, 39.482983, 24.467936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292936, -0.884922, 0.362080,
		-0.403401, -0.457725, -0.792310,
		0.866866, 0.086033, -0.491063,
		32.932358, 39.508793, 24.320616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438732, 38.885460, 24.186531>,  <32.325554, 39.448570, 24.664360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438732, 38.885460, 24.186531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809429, 39.017021, 24.259159>,  <33.031849, 39.095959, 24.302736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809429, 39.017021, 24.259159>,  <32.438732, 38.885460, 24.186531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809429, 39.017021, 24.259159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263566, -0.913585, 0.309670,
		0.267731, -0.239129, -0.933347,
		0.926743, 0.328907, 0.181569,
		33.087452, 39.115692, 24.313629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850269, 38.485863, 23.808075>,  <32.438732, 38.885460, 24.186531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850269, 38.485863, 23.808075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101181, 38.644684, 24.076067>,  <33.251728, 38.739975, 24.236862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101181, 38.644684, 24.076067>,  <32.850269, 38.485863, 23.808075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101181, 38.644684, 24.076067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237080, -0.916801, 0.321354,
		0.741832, -0.042740, -0.669223,
		0.627279, 0.397050, 0.669979,
		33.289364, 38.763798, 24.277061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425964, 38.005772, 23.710060>,  <32.850269, 38.485863, 23.808075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425964, 38.005772, 23.710060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424049, 38.206127, 24.056259>,  <33.422901, 38.326340, 24.263979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424049, 38.206127, 24.056259>,  <33.425964, 38.005772, 23.710060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424049, 38.206127, 24.056259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204100, -0.846798, 0.491198,
		0.978938, 0.179002, -0.098175,
		-0.004791, 0.500890, 0.865498,
		33.422611, 38.356396, 24.315908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024181, 37.750721, 24.029757>,  <33.425964, 38.005772, 23.710060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024181, 37.750721, 24.029757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811249, 37.910217, 24.328455>,  <33.683491, 38.005913, 24.507675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811249, 37.910217, 24.328455>,  <34.024181, 37.750721, 24.029757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811249, 37.910217, 24.328455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133002, -0.831772, 0.538949,
		0.836023, 0.386218, 0.389745,
		-0.532331, 0.398737, 0.746748,
		33.651550, 38.029839, 24.552479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624813, 38.048122, 24.439495>,  <34.024181, 37.750721, 24.029757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624813, 38.048122, 24.439495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960991, 37.853283, 24.344509>,  <35.162697, 37.736378, 24.287518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960991, 37.853283, 24.344509>,  <34.624813, 38.048122, 24.439495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960991, 37.853283, 24.344509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260292, 0.747211, -0.611492,
		0.475298, 0.452112, 0.754776,
		0.840440, -0.487103, -0.237467,
		35.213123, 37.707153, 24.273270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240471, 38.495529, 24.570267>,  <34.624813, 38.048122, 24.439495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240471, 38.495529, 24.570267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330551, 38.226112, 24.288664>,  <35.384598, 38.064461, 24.119701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330551, 38.226112, 24.288664>,  <35.240471, 38.495529, 24.570267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330551, 38.226112, 24.288664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314468, 0.734145, -0.601782,
		0.922169, -0.085866, 0.377137,
		0.225200, -0.673542, -0.704007,
		35.398109, 38.024052, 24.077461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883598, 38.729370, 24.383665>,  <35.240471, 38.495529, 24.570267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883598, 38.729370, 24.383665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739384, 38.497726, 24.091188>,  <35.652855, 38.358742, 23.915703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739384, 38.497726, 24.091188>,  <35.883598, 38.729370, 24.383665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739384, 38.497726, 24.091188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321860, 0.658525, -0.680259,
		0.875452, -0.480603, -0.051033,
		-0.360540, -0.579109, -0.731193,
		35.631222, 38.323994, 23.871830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455982, 38.706478, 23.879114>,  <35.883598, 38.729370, 24.383665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455982, 38.706478, 23.879114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120136, 38.602573, 23.688295>,  <35.918629, 38.540230, 23.573803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120136, 38.602573, 23.688295>,  <36.455982, 38.706478, 23.879114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120136, 38.602573, 23.688295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265939, 0.569206, -0.777998,
		0.473632, -0.780083, -0.408832,
		-0.839613, -0.259761, -0.477049,
		35.868252, 38.524643, 23.545181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592903, 38.407497, 23.189701>,  <36.455982, 38.706478, 23.879114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592903, 38.407497, 23.189701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214546, 38.535168, 23.166355>,  <35.987530, 38.611771, 23.152348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214546, 38.535168, 23.166355>,  <36.592903, 38.407497, 23.189701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214546, 38.535168, 23.166355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272837, 0.685035, -0.675490,
		-0.175621, -0.654867, -0.735055,
		-0.945895, 0.319180, -0.058366,
		35.930779, 38.630920, 23.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494839, 38.476028, 22.486034>,  <36.592903, 38.407497, 23.189701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494839, 38.476028, 22.486034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202179, 38.706135, 22.632328>,  <36.026585, 38.844200, 22.720104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202179, 38.706135, 22.632328>,  <36.494839, 38.476028, 22.486034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202179, 38.706135, 22.632328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056484, 0.585833, -0.808461,
		-0.679339, -0.570850, -0.461116,
		-0.731647, 0.575265, 0.365735,
		35.982685, 38.878716, 22.742048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991577, 38.523602, 21.917870>,  <36.494839, 38.476028, 22.486034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991577, 38.523602, 21.917870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910416, 38.826466, 22.166237>,  <35.861717, 39.008183, 22.315258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910416, 38.826466, 22.166237>,  <35.991577, 38.523602, 21.917870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910416, 38.826466, 22.166237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049862, 0.641276, -0.765688,
		-0.977928, -0.124403, -0.167872,
		-0.202906, 0.757158, 0.620919,
		35.849545, 39.053612, 22.352512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464642, 38.876766, 21.640669>,  <35.991577, 38.523602, 21.917870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464642, 38.876766, 21.640669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649227, 39.146084, 21.871746>,  <35.759979, 39.307674, 22.010393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649227, 39.146084, 21.871746>,  <35.464642, 38.876766, 21.640669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649227, 39.146084, 21.871746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115511, 0.691229, -0.713344,
		-0.879605, 0.262455, 0.396752,
		0.461467, 0.673290, 0.577692,
		35.787666, 39.348072, 22.045053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070175, 39.453136, 21.458998>,  <35.464642, 38.876766, 21.640669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070175, 39.453136, 21.458998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393444, 39.589169, 21.651333>,  <35.587406, 39.670788, 21.766735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393444, 39.589169, 21.651333>,  <35.070175, 39.453136, 21.458998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393444, 39.589169, 21.651333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055675, 0.768664, -0.637225,
		-0.586313, 0.541756, 0.602277,
		0.808169, 0.340082, 0.480840,
		35.635895, 39.691193, 21.795586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900856, 40.105595, 21.668779>,  <35.070175, 39.453136, 21.458998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900856, 40.105595, 21.668779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300190, 40.082863, 21.664654>,  <35.539791, 40.069221, 21.662178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300190, 40.082863, 21.664654>,  <34.900856, 40.105595, 21.668779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300190, 40.082863, 21.664654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032687, 0.703124, -0.710315,
		0.047620, 0.708792, 0.703808,
		0.998331, -0.056831, -0.010315,
		35.599689, 40.065815, 21.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096218, 40.886230, 21.618555>,  <34.900856, 40.105595, 21.668779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096218, 40.886230, 21.618555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411316, 40.657333, 21.527346>,  <35.600376, 40.519993, 21.472620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411316, 40.657333, 21.527346>,  <35.096218, 40.886230, 21.618555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411316, 40.657333, 21.527346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272116, 0.655354, -0.704602,
		0.552641, 0.492997, 0.671968,
		0.787744, -0.572246, -0.228023,
		35.647640, 40.485661, 21.458939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690399, 41.364716, 21.507208>,  <35.096218, 40.886230, 21.618555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690399, 41.364716, 21.507208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766243, 41.013298, 21.331841>,  <35.811749, 40.802448, 21.226620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766243, 41.013298, 21.331841>,  <35.690399, 41.364716, 21.507208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766243, 41.013298, 21.331841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235365, 0.474169, -0.848391,
		0.953232, 0.057677, 0.296686,
		0.189612, -0.878543, -0.438418,
		35.823128, 40.749737, 21.200315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321964, 41.525433, 21.121660>,  <35.690399, 41.364716, 21.507208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321964, 41.525433, 21.121660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145679, 41.193470, 20.984823>,  <36.039909, 40.994293, 20.902721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145679, 41.193470, 20.984823>,  <36.321964, 41.525433, 21.121660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145679, 41.193470, 20.984823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173404, 0.295208, -0.939565,
		0.880739, -0.473400, 0.013807,
		-0.440714, -0.829906, -0.342090,
		36.013466, 40.944500, 20.882196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639374, 41.449013, 20.503162>,  <36.321964, 41.525433, 21.121660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639374, 41.449013, 20.503162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341888, 41.185886, 20.455545>,  <36.163399, 41.028011, 20.426975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341888, 41.185886, 20.455545>,  <36.639374, 41.449013, 20.503162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341888, 41.185886, 20.455545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101127, 0.286730, -0.952659,
		0.660804, -0.696468, -0.279768,
		-0.743714, -0.657813, -0.119040,
		36.118774, 40.988541, 20.419834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.647211, 36.565880, 17.300558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.570358, 36.882633, 17.532423>,  <31.524246, 37.072685, 17.671541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.570358, 36.882633, 17.532423>,  <31.647211, 36.565880, 17.300558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570358, 36.882633, 17.532423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559677, -0.396777, 0.727551,
		0.806131, 0.464210, -0.366964,
		-0.192133, 0.791882, 0.579661,
		31.512718, 37.120197, 17.706322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346840, 36.823586, 17.585619>,  <31.647211, 36.565880, 17.300558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346840, 36.823586, 17.585619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.050964, 36.953655, 17.821285>,  <31.873438, 37.031696, 17.962685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.050964, 36.953655, 17.821285>,  <32.346840, 36.823586, 17.585619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050964, 36.953655, 17.821285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430580, -0.444132, 0.785715,
		0.517163, 0.834870, 0.188507,
		-0.739692, 0.325175, 0.589167,
		31.829058, 37.051208, 17.998035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627747, 37.140823, 18.117167>,  <32.346840, 36.823586, 17.585619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627747, 37.140823, 18.117167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279308, 37.024639, 18.275574>,  <32.070248, 36.954929, 18.370619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279308, 37.024639, 18.275574>,  <32.627747, 37.140823, 18.117167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279308, 37.024639, 18.275574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486271, -0.397075, 0.778378,
		-0.068838, 0.870612, 0.487131,
		-0.871092, -0.290459, 0.396020,
		32.017982, 36.937500, 18.394381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620605, 37.350529, 18.791557>,  <32.627747, 37.140823, 18.117167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620605, 37.350529, 18.791557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367130, 37.041996, 18.767912>,  <32.215046, 36.856876, 18.753725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367130, 37.041996, 18.767912>,  <32.620605, 37.350529, 18.791557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367130, 37.041996, 18.767912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395914, -0.389010, 0.831819,
		-0.664602, 0.503707, 0.551890,
		-0.633684, -0.771330, -0.059112,
		32.177025, 36.810596, 18.750177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373005, 37.160030, 19.486879>,  <32.620605, 37.350529, 18.791557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373005, 37.160030, 19.486879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.262569, 36.827343, 19.294205>,  <32.196308, 36.627731, 19.178600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.262569, 36.827343, 19.294205>,  <32.373005, 37.160030, 19.486879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262569, 36.827343, 19.294205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129752, -0.528830, 0.838751,
		-0.952333, 0.169074, 0.253922,
		-0.276092, -0.831717, -0.481684,
		32.179741, 36.577827, 19.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736816, 36.792206, 19.896425>,  <32.373005, 37.160030, 19.486879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736816, 36.792206, 19.896425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885145, 36.507557, 19.657734>,  <31.974142, 36.336769, 19.514519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885145, 36.507557, 19.657734>,  <31.736816, 36.792206, 19.896425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885145, 36.507557, 19.657734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095931, -0.609750, 0.786767,
		-0.923736, -0.348995, -0.157841,
		0.370821, -0.711623, -0.596728,
		31.996391, 36.294071, 19.478716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364189, 36.188854, 20.019897>,  <31.736816, 36.792206, 19.896425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364189, 36.188854, 20.019897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.687082, 36.010670, 19.865011>,  <31.880817, 35.903759, 19.772079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.687082, 36.010670, 19.865011>,  <31.364189, 36.188854, 20.019897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687082, 36.010670, 19.865011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041975, -0.611055, 0.790475,
		-0.588737, -0.654352, -0.474566,
		0.807234, -0.445462, -0.387217,
		31.929253, 35.877029, 19.748846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177246, 35.456291, 20.048073>,  <31.364189, 36.188854, 20.019897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177246, 35.456291, 20.048073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.572428, 35.477703, 19.989996>,  <31.809536, 35.490551, 19.955151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.572428, 35.477703, 19.989996>,  <31.177246, 35.456291, 20.048073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572428, 35.477703, 19.989996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144436, -0.655735, 0.741047,
		-0.055536, -0.753091, -0.655568,
		0.987954, 0.053533, -0.145190,
		31.868814, 35.493763, 19.946440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351780, 34.769688, 19.929066>,  <31.177246, 35.456291, 20.048073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351780, 34.769688, 19.929066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.704109, 34.925156, 20.037209>,  <31.915506, 35.018436, 20.102095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.704109, 34.925156, 20.037209>,  <31.351780, 34.769688, 19.929066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704109, 34.925156, 20.037209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120846, -0.736683, 0.665353,
		0.457768, -0.553385, -0.695855,
		0.880821, 0.388668, 0.270355,
		31.968355, 35.041756, 20.118315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775497, 34.231102, 19.963654>,  <31.351780, 34.769688, 19.929066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775497, 34.231102, 19.963654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981098, 34.517551, 20.152533>,  <32.104458, 34.689419, 20.265860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981098, 34.517551, 20.152533>,  <31.775497, 34.231102, 19.963654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981098, 34.517551, 20.152533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372394, -0.682194, 0.629233,
		0.772738, -0.147584, -0.617329,
		0.514003, 0.716121, 0.472198,
		32.135300, 34.732388, 20.294191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392448, 33.935108, 20.033073>,  <31.775497, 34.231102, 19.963654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392448, 33.935108, 20.033073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395824, 34.241528, 20.290165>,  <32.397850, 34.425377, 20.444420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395824, 34.241528, 20.290165>,  <32.392448, 33.935108, 20.033073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395824, 34.241528, 20.290165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268916, -0.620814, 0.736393,
		0.963126, 0.166624, -0.211243,
		0.008442, 0.766046, 0.642730,
		32.398357, 34.471340, 20.482985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028461, 33.929920, 20.356125>,  <32.392448, 33.935108, 20.033073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028461, 33.929920, 20.356125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.765076, 34.115765, 20.592960>,  <32.607044, 34.227272, 20.735062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.765076, 34.115765, 20.592960>,  <33.028461, 33.929920, 20.356125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765076, 34.115765, 20.592960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097216, -0.727610, 0.679067,
		0.746310, 0.504699, 0.433935,
		-0.658461, 0.464609, 0.592088,
		32.567539, 34.255146, 20.770586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266991, 33.905907, 20.989401>,  <33.028461, 33.929920, 20.356125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266991, 33.905907, 20.989401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.888321, 33.975471, 21.097893>,  <32.661121, 34.017212, 21.162987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.888321, 33.975471, 21.097893>,  <33.266991, 33.905907, 20.989401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888321, 33.975471, 21.097893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106878, -0.624640, 0.773565,
		0.303955, 0.761301, 0.572741,
		-0.946672, 0.173916, 0.271228,
		32.604321, 34.027645, 21.179262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388664, 33.974239, 21.645615>,  <33.266991, 33.905907, 20.989401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388664, 33.974239, 21.645615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991653, 33.926117, 21.637388>,  <32.753448, 33.897243, 21.632452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991653, 33.926117, 21.637388>,  <33.388664, 33.974239, 21.645615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991653, 33.926117, 21.637388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067741, -0.683141, 0.727138,
		-0.101531, 0.720308, 0.686183,
		-0.992523, -0.120310, -0.020566,
		32.693897, 33.890022, 21.631218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807152, 34.303692, 22.235245>,  <33.388664, 33.974239, 21.645615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807152, 34.303692, 22.235245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.143803, 34.126217, 22.112085>,  <34.345795, 34.019733, 22.038191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.143803, 34.126217, 22.112085>,  <33.807152, 34.303692, 22.235245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143803, 34.126217, 22.112085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157424, 0.746921, -0.646009,
		0.516598, 0.495231, 0.698479,
		0.841632, -0.443684, -0.307896,
		34.396294, 33.993111, 22.019716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359772, 34.747856, 22.457790>,  <33.807152, 34.303692, 22.235245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359772, 34.747856, 22.457790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.416779, 34.523357, 22.131676>,  <34.450981, 34.388657, 21.936007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.416779, 34.523357, 22.131676>,  <34.359772, 34.747856, 22.457790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416779, 34.523357, 22.131676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564729, 0.722575, -0.398707,
		0.812877, -0.403592, 0.419933,
		0.142518, -0.561248, -0.815285,
		34.459534, 34.354984, 21.887091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025665, 34.915581, 22.193424>,  <34.359772, 34.747856, 22.457790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025665, 34.915581, 22.193424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.874115, 34.735210, 21.870161>,  <34.783184, 34.626987, 21.676203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.874115, 34.735210, 21.870161>,  <35.025665, 34.915581, 22.193424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874115, 34.735210, 21.870161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255328, 0.788435, -0.559624,
		0.889527, -0.418375, -0.183588,
		-0.378880, -0.450925, -0.808156,
		34.760452, 34.599934, 21.627714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327545, 35.263611, 21.737131>,  <35.025665, 34.915581, 22.193424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327545, 35.263611, 21.737131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105530, 35.056858, 21.476437>,  <34.972321, 34.932808, 21.320021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105530, 35.056858, 21.476437>,  <35.327545, 35.263611, 21.737131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105530, 35.056858, 21.476437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226793, 0.659786, -0.716412,
		0.800308, -0.545448, -0.248984,
		-0.555042, -0.516883, -0.651736,
		34.939018, 34.901794, 21.280916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663189, 35.309254, 21.035477>,  <35.327545, 35.263611, 21.737131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663189, 35.309254, 21.035477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277325, 35.234104, 20.961573>,  <35.045807, 35.189014, 20.917231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277325, 35.234104, 20.961573>,  <35.663189, 35.309254, 21.035477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277325, 35.234104, 20.961573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046098, 0.570043, -0.820321,
		0.259437, -0.799847, -0.541237,
		-0.964659, -0.187872, -0.184761,
		34.987926, 35.177742, 20.906143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582935, 35.214729, 20.267653>,  <35.663189, 35.309254, 21.035477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582935, 35.214729, 20.267653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222641, 35.304558, 20.416374>,  <35.006462, 35.358456, 20.505608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222641, 35.304558, 20.416374>,  <35.582935, 35.214729, 20.267653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222641, 35.304558, 20.416374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050119, 0.796524, -0.602527,
		-0.431459, -0.561354, -0.706205,
		-0.900739, 0.224572, 0.371802,
		34.952419, 35.371929, 20.527914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183071, 35.407272, 19.673964>,  <35.582935, 35.214729, 20.267653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183071, 35.407272, 19.673964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.980247, 35.561157, 19.982479>,  <34.858555, 35.653488, 20.167589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.980247, 35.561157, 19.982479>,  <35.183071, 35.407272, 19.673964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980247, 35.561157, 19.982479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119793, 0.854717, -0.505083,
		-0.853546, -0.348502, -0.387306,
		-0.507059, 0.384715, 0.771288,
		34.828129, 35.676571, 20.213865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434998, 35.521469, 19.374096>,  <35.183071, 35.407272, 19.673964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434998, 35.521469, 19.374096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484116, 35.755932, 19.694431>,  <34.513588, 35.896610, 19.886633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484116, 35.755932, 19.694431>,  <34.434998, 35.521469, 19.374096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484116, 35.755932, 19.694431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094653, 0.810184, -0.578484,
		-0.987908, -0.004764, 0.154972,
		0.122799, 0.586157, 0.800838,
		34.520954, 35.931778, 19.934683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881355, 36.153072, 19.357851>,  <34.434998, 35.521469, 19.374096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881355, 36.153072, 19.357851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.172291, 36.283737, 19.599268>,  <34.346851, 36.362137, 19.744118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.172291, 36.283737, 19.599268>,  <33.881355, 36.153072, 19.357851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172291, 36.283737, 19.599268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090087, 0.917283, -0.387913,
		-0.680337, 0.227774, 0.696606,
		0.727341, 0.326667, 0.603543,
		34.390491, 36.381737, 19.780331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636681, 36.821320, 19.421732>,  <33.881355, 36.153072, 19.357851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636681, 36.821320, 19.421732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025047, 36.823959, 19.517464>,  <34.258068, 36.825542, 19.574902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025047, 36.823959, 19.517464>,  <33.636681, 36.821320, 19.421732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025047, 36.823959, 19.517464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076731, 0.938321, -0.337144,
		-0.226790, 0.345702, 0.910525,
		0.970916, 0.006595, 0.239328,
		34.316322, 36.825939, 19.589262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768505, 37.294361, 19.919592>,  <33.636681, 36.821320, 19.421732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768505, 37.294361, 19.919592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118637, 37.225586, 19.738819>,  <34.328716, 37.184322, 19.630356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118637, 37.225586, 19.738819>,  <33.768505, 37.294361, 19.919592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118637, 37.225586, 19.738819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057188, 0.891276, -0.449841,
		0.480140, 0.419603, 0.770324,
		0.875326, -0.171933, -0.451934,
		34.381233, 37.174007, 19.603239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915428, 38.007843, 19.743208>,  <33.768505, 37.294361, 19.919592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915428, 38.007843, 19.743208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.179073, 37.793114, 19.532537>,  <34.337261, 37.664276, 19.406136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.179073, 37.793114, 19.532537>,  <33.915428, 38.007843, 19.743208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179073, 37.793114, 19.532537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169247, 0.788248, -0.591626,
		0.732748, 0.300813, 0.610403,
		0.659118, -0.536822, -0.526675,
		34.376808, 37.632069, 19.374535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460056, 38.377426, 19.627121>,  <33.915428, 38.007843, 19.743208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460056, 38.377426, 19.627121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.459919, 38.121349, 19.319836>,  <34.459839, 37.967701, 19.135466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.459919, 38.121349, 19.319836>,  <34.460056, 38.377426, 19.627121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459919, 38.121349, 19.319836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062400, 0.766701, -0.638965,
		0.998051, -0.048155, 0.039687,
		-0.000341, -0.640196, -0.768211,
		34.459816, 37.929291, 19.089373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016762, 38.553730, 19.165543>,  <34.460056, 38.377426, 19.627121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016762, 38.553730, 19.165543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752819, 38.332817, 18.961748>,  <34.594456, 38.200268, 18.839472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752819, 38.332817, 18.961748>,  <35.016762, 38.553730, 19.165543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752819, 38.332817, 18.961748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063530, 0.716635, -0.694548,
		0.748711, -0.425927, -0.507956,
		-0.659846, -0.552286, -0.509494,
		34.554863, 38.167133, 18.808901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649738, 38.277176, 18.979362>,  <35.016762, 38.553730, 19.165543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649738, 38.277176, 18.979362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023888, 38.398441, 18.906519>,  <36.248379, 38.471199, 18.862812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023888, 38.398441, 18.906519>,  <35.649738, 38.277176, 18.979362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023888, 38.398441, 18.906519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345895, -0.676964, 0.649674,
		0.073674, -0.670681, -0.738078,
		0.935376, 0.303162, -0.182111,
		36.304501, 38.489391, 18.851885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082165, 37.607372, 18.897337>,  <35.649738, 38.277176, 18.979362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082165, 37.607372, 18.897337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308586, 37.920883, 18.999527>,  <36.444439, 38.108990, 19.060841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308586, 37.920883, 18.999527>,  <36.082165, 37.607372, 18.897337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308586, 37.920883, 18.999527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416490, -0.539349, 0.731874,
		0.711419, -0.307878, -0.631739,
		0.566055, 0.783782, 0.255475,
		36.478401, 38.156017, 19.076170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763950, 37.385296, 18.920141>,  <36.082165, 37.607372, 18.897337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763950, 37.385296, 18.920141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792976, 37.734344, 19.113335>,  <36.810390, 37.943771, 19.229252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792976, 37.734344, 19.113335>,  <36.763950, 37.385296, 18.920141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792976, 37.734344, 19.113335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566627, -0.434587, 0.700049,
		0.820773, 0.222877, -0.525982,
		0.072561, 0.872617, 0.482985,
		36.814743, 37.996128, 19.258230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488258, 37.550854, 19.060608>,  <36.763950, 37.385296, 18.920141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488258, 37.550854, 19.060608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271412, 37.750622, 19.330925>,  <37.141304, 37.870483, 19.493114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271412, 37.750622, 19.330925>,  <37.488258, 37.550854, 19.060608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271412, 37.750622, 19.330925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465962, -0.490593, 0.736341,
		0.699280, 0.714075, 0.033248,
		-0.542114, 0.499416, 0.675793,
		37.108776, 37.900448, 19.533663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904648, 37.806664, 19.558819>,  <37.488258, 37.550854, 19.060608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904648, 37.806664, 19.558819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552216, 37.812206, 19.747923>,  <37.340755, 37.815533, 19.861385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552216, 37.812206, 19.747923>,  <37.904648, 37.806664, 19.558819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552216, 37.812206, 19.747923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383139, -0.565149, 0.730624,
		0.277304, 0.824873, 0.492634,
		-0.881083, 0.013857, 0.472759,
		37.287891, 37.816364, 19.889751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939346, 38.072510, 20.235279>,  <37.904648, 37.806664, 19.558819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939346, 38.072510, 20.235279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598278, 37.865566, 20.264370>,  <37.393635, 37.741402, 20.281824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598278, 37.865566, 20.264370>,  <37.939346, 38.072510, 20.235279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598278, 37.865566, 20.264370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261254, -0.301692, 0.916912,
		-0.452428, 0.800829, 0.392406,
		-0.852675, -0.517354, 0.072725,
		37.342476, 37.710361, 20.286188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699966, 38.074337, 21.042799>,  <37.939346, 38.072510, 20.235279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699966, 38.074337, 21.042799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486092, 37.788673, 20.862095>,  <37.357765, 37.617275, 20.753674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486092, 37.788673, 20.862095>,  <37.699966, 38.074337, 21.042799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486092, 37.788673, 20.862095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182126, -0.619421, 0.763641,
		-0.825188, 0.326035, 0.461265,
		-0.534691, -0.714156, -0.451759,
		37.325684, 37.574425, 20.726566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288208, 37.762012, 21.580027>,  <37.699966, 38.074337, 21.042799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288208, 37.762012, 21.580027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334480, 37.502701, 21.279001>,  <37.362244, 37.347115, 21.098385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334480, 37.502701, 21.279001>,  <37.288208, 37.762012, 21.580027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334480, 37.502701, 21.279001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195968, -0.727865, 0.657122,
		-0.973763, -0.223493, 0.042844,
		0.115678, -0.648278, -0.752565,
		37.369183, 37.308216, 21.053232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850368, 37.209709, 21.731651>,  <37.288208, 37.762012, 21.580027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850368, 37.209709, 21.731651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095768, 37.051647, 21.458166>,  <37.243008, 36.956810, 21.294075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095768, 37.051647, 21.458166>,  <36.850368, 37.209709, 21.731651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095768, 37.051647, 21.458166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146309, -0.793931, 0.590142,
		-0.776024, -0.462085, -0.429261,
		0.613499, -0.395160, -0.683716,
		37.279819, 36.933102, 21.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615906, 36.556797, 21.609392>,  <36.850368, 37.209709, 21.731651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615906, 36.556797, 21.609392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003193, 36.566700, 21.509842>,  <37.235565, 36.572643, 21.450111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003193, 36.566700, 21.509842>,  <36.615906, 36.556797, 21.609392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003193, 36.566700, 21.509842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189371, -0.722584, 0.664840,
		-0.163375, -0.690840, -0.704307,
		0.968219, 0.024757, -0.248877,
		37.293659, 36.574127, 21.435179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814243, 35.892689, 21.627392>,  <36.615906, 36.556797, 21.609392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814243, 35.892689, 21.627392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174492, 36.066360, 21.619755>,  <37.390640, 36.170563, 21.615173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174492, 36.066360, 21.619755>,  <36.814243, 35.892689, 21.627392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174492, 36.066360, 21.619755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353116, -0.705448, 0.614534,
		0.253352, -0.560204, -0.788660,
		0.900623, 0.434181, -0.019091,
		37.444679, 36.196613, 21.614027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295967, 35.377708, 21.437065>,  <36.814243, 35.892689, 21.627392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295967, 35.377708, 21.437065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511139, 35.674316, 21.597452>,  <37.640244, 35.852283, 21.693684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511139, 35.674316, 21.597452>,  <37.295967, 35.377708, 21.437065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511139, 35.674316, 21.597452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451243, -0.655054, 0.606040,
		0.712048, -0.145073, -0.686980,
		0.537929, 0.741524, 0.400967,
		37.672516, 35.896774, 21.717743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892483, 35.121269, 21.434114>,  <37.295967, 35.377708, 21.437065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892483, 35.121269, 21.434114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852810, 35.385540, 21.731752>,  <37.829006, 35.544102, 21.910336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852810, 35.385540, 21.731752>,  <37.892483, 35.121269, 21.434114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852810, 35.385540, 21.731752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339916, -0.680302, 0.649343,
		0.935211, 0.317334, -0.157098,
		-0.099185, 0.660673, 0.744093,
		37.823055, 35.583740, 21.954981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520176, 35.065746, 21.801880>,  <37.892483, 35.121269, 21.434114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520176, 35.065746, 21.801880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265839, 35.232208, 22.061884>,  <38.113235, 35.332085, 22.217886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265839, 35.232208, 22.061884>,  <38.520176, 35.065746, 21.801880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265839, 35.232208, 22.061884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281155, -0.659428, 0.697214,
		0.718786, 0.626073, 0.302289,
		-0.635845, 0.416157, 0.650011,
		38.075085, 35.357056, 22.256887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.757282, 41.028038, 19.800695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364441, 41.039787, 19.875118>,  <36.128738, 41.046837, 19.919773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364441, 41.039787, 19.875118>,  <36.757282, 41.028038, 19.800695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364441, 41.039787, 19.875118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146646, 0.500707, -0.853105,
		-0.118219, -0.865118, -0.487437,
		-0.982100, 0.029373, 0.186059,
		36.069813, 41.048599, 19.930937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465443, 40.829437, 19.190018>,  <36.757282, 41.028038, 19.800695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465443, 40.829437, 19.190018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181507, 41.008095, 19.407877>,  <36.011147, 41.115288, 19.538593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181507, 41.008095, 19.407877>,  <36.465443, 40.829437, 19.190018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181507, 41.008095, 19.407877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116318, 0.688300, -0.716040,
		-0.694693, -0.571626, -0.436630,
		-0.709839, 0.446640, 0.544648,
		35.968555, 41.142086, 19.571272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020954, 40.903378, 18.727976>,  <36.465443, 40.829437, 19.190018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020954, 40.903378, 18.727976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898666, 41.169533, 19.000387>,  <35.825294, 41.329224, 19.163834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898666, 41.169533, 19.000387>,  <36.020954, 40.903378, 18.727976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898666, 41.169533, 19.000387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226597, 0.643876, -0.730806,
		-0.924764, -0.377741, -0.046072,
		-0.305720, 0.665384, 0.681028,
		35.806950, 41.369148, 19.204695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322483, 41.216499, 18.478275>,  <36.020954, 40.903378, 18.727976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322483, 41.216499, 18.478275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.482571, 41.463825, 18.748835>,  <35.578625, 41.612221, 18.911169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.482571, 41.463825, 18.748835>,  <35.322483, 41.216499, 18.478275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482571, 41.463825, 18.748835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202821, 0.779547, -0.592596,
		-0.893692, 0.099983, 0.437399,
		0.400223, 0.618312, 0.676396,
		35.602638, 41.649319, 18.951754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790314, 41.661236, 18.559853>,  <35.322483, 41.216499, 18.478275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790314, 41.661236, 18.559853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127182, 41.840031, 18.680481>,  <35.329304, 41.947308, 18.752859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127182, 41.840031, 18.680481>,  <34.790314, 41.661236, 18.559853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127182, 41.840031, 18.680481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224397, 0.799098, -0.557753,
		-0.490292, 0.402053, 0.773283,
		0.842175, 0.446985, 0.301572,
		35.379833, 41.974125, 18.770952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665810, 42.319092, 18.538130>,  <34.790314, 41.661236, 18.559853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665810, 42.319092, 18.538130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065777, 42.321152, 18.533476>,  <35.305756, 42.322388, 18.530684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065777, 42.321152, 18.533476>,  <34.665810, 42.319092, 18.538130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065777, 42.321152, 18.533476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010369, 0.859702, -0.510691,
		0.007373, 0.510770, 0.859686,
		0.999919, 0.005149, -0.011635,
		35.365753, 42.322697, 18.529985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945835, 42.951294, 18.906834>,  <34.665810, 42.319092, 18.538130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945835, 42.951294, 18.906834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.202141, 42.816967, 18.630674>,  <35.355923, 42.736370, 18.464979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.202141, 42.816967, 18.630674>,  <34.945835, 42.951294, 18.906834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202141, 42.816967, 18.630674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111228, 0.849170, -0.516274,
		0.759637, 0.407602, 0.506766,
		0.640765, -0.335814, -0.690398,
		35.394371, 42.716221, 18.423555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281418, 43.578239, 18.665220>,  <34.945835, 42.951294, 18.906834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281418, 43.578239, 18.665220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412346, 43.327908, 18.382040>,  <35.490902, 43.177708, 18.212132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412346, 43.327908, 18.382040>,  <35.281418, 43.578239, 18.665220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412346, 43.327908, 18.382040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082227, 0.765245, -0.638466,
		0.941329, 0.150769, 0.301940,
		0.327319, -0.625834, -0.707951,
		35.510540, 43.140156, 18.169655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849194, 43.873299, 18.359028>,  <35.281418, 43.578239, 18.665220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849194, 43.873299, 18.359028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.716228, 43.608437, 18.090385>,  <35.636448, 43.449520, 17.929201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.716228, 43.608437, 18.090385>,  <35.849194, 43.873299, 18.359028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716228, 43.608437, 18.090385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098271, 0.732541, -0.673592,
		0.937999, -0.157913, -0.308579,
		-0.332415, -0.662154, -0.671604,
		35.616505, 43.409790, 17.888905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093254, 44.079826, 17.699881>,  <35.849194, 43.873299, 18.359028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093254, 44.079826, 17.699881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787991, 43.848351, 17.584846>,  <35.604832, 43.709465, 17.515827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787991, 43.848351, 17.584846>,  <36.093254, 44.079826, 17.699881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787991, 43.848351, 17.584846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230301, 0.659376, -0.715671,
		0.603773, -0.479944, -0.636484,
		-0.763164, -0.578686, -0.287582,
		35.559040, 43.674744, 17.498571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993713, 44.172813, 16.913778>,  <36.093254, 44.079826, 17.699881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993713, 44.172813, 16.913778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638317, 44.027241, 17.025591>,  <35.425079, 43.939896, 17.092678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638317, 44.027241, 17.025591>,  <35.993713, 44.172813, 16.913778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638317, 44.027241, 17.025591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443437, 0.524104, -0.727103,
		0.118115, -0.769978, -0.627043,
		-0.888489, -0.363935, 0.279532,
		35.371769, 43.918060, 17.109451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645615, 43.948387, 16.365763>,  <35.993713, 44.172813, 16.913778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645615, 43.948387, 16.365763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.362274, 44.079826, 16.615646>,  <35.192268, 44.158691, 16.765577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.362274, 44.079826, 16.615646>,  <35.645615, 43.948387, 16.365763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362274, 44.079826, 16.615646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376247, 0.573046, -0.728050,
		-0.597226, -0.750758, -0.282281,
		-0.708349, 0.328603, 0.624709,
		35.149769, 44.178406, 16.803059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915440, 44.327049, 15.768223>,  <35.645615, 43.948387, 16.365763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915440, 44.327049, 15.768223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148285, 44.162308, 16.048658>,  <36.287991, 44.063465, 16.216919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148285, 44.162308, 16.048658>,  <35.915440, 44.327049, 15.768223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148285, 44.162308, 16.048658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526817, -0.847813, -0.060630,
		0.619363, -0.334052, -0.710492,
		0.582111, -0.411852, 0.701088,
		36.322918, 44.038754, 16.258986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119789, 43.651844, 15.507016>,  <35.915440, 44.327049, 15.768223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119789, 43.651844, 15.507016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112892, 43.663971, 15.906773>,  <36.108753, 43.671246, 16.146627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112892, 43.663971, 15.906773>,  <36.119789, 43.651844, 15.507016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112892, 43.663971, 15.906773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494261, -0.869130, 0.017838,
		0.869142, -0.493653, 0.029967,
		-0.017239, 0.030315, 0.999392,
		36.107719, 43.673065, 16.206591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515663, 43.023396, 15.561567>,  <36.119789, 43.651844, 15.507016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515663, 43.023396, 15.561567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304558, 42.798321, 15.307058>,  <36.177895, 42.663277, 15.154353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304558, 42.798321, 15.307058>,  <36.515663, 43.023396, 15.561567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304558, 42.798321, 15.307058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111354, -0.696794, 0.708575,
		-0.842058, 0.444814, 0.305087,
		-0.527767, -0.562689, -0.636273,
		36.146229, 42.629513, 15.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892422, 42.822456, 15.860007>,  <36.515663, 43.023396, 15.561567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892422, 42.822456, 15.860007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977421, 42.539871, 15.589970>,  <36.028419, 42.370319, 15.427947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977421, 42.539871, 15.589970>,  <35.892422, 42.822456, 15.860007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977421, 42.539871, 15.589970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049381, -0.697754, 0.714633,
		-0.975912, -0.118523, -0.183160,
		0.212501, -0.706464, -0.675094,
		36.041172, 42.327930, 15.387442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371914, 42.303108, 16.052025>,  <35.892422, 42.822456, 15.860007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371914, 42.303108, 16.052025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655346, 42.130314, 15.828850>,  <35.825405, 42.026638, 15.694944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655346, 42.130314, 15.828850>,  <35.371914, 42.303108, 16.052025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655346, 42.130314, 15.828850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011030, -0.797383, 0.603373,
		-0.705540, -0.421386, -0.569778,
		0.708585, -0.431988, -0.557937,
		35.867920, 42.000717, 15.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125286, 41.622559, 15.837840>,  <35.371914, 42.303108, 16.052025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125286, 41.622559, 15.837840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.525120, 41.633167, 15.842315>,  <35.765018, 41.639534, 15.844999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.525120, 41.633167, 15.842315>,  <35.125286, 41.622559, 15.837840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525120, 41.633167, 15.842315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014275, -0.794219, 0.607464,
		0.024995, -0.607052, -0.794269,
		0.999586, 0.026522, 0.011186,
		35.824997, 41.641125, 15.845671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324417, 40.970146, 15.719435>,  <35.125286, 41.622559, 15.837840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324417, 40.970146, 15.719435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.668999, 41.112129, 15.864710>,  <35.875748, 41.197319, 15.951875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.668999, 41.112129, 15.864710>,  <35.324417, 40.970146, 15.719435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668999, 41.112129, 15.864710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180065, -0.882191, 0.435104,
		0.474844, -0.309424, -0.823881,
		0.861452, 0.354959, 0.363187,
		35.927433, 41.218616, 15.973666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774708, 40.440708, 15.653329>,  <35.324417, 40.970146, 15.719435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774708, 40.440708, 15.653329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961205, 40.675995, 15.917637>,  <36.073101, 40.817165, 16.076221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961205, 40.675995, 15.917637>,  <35.774708, 40.440708, 15.653329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961205, 40.675995, 15.917637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083795, -0.772929, 0.628935,
		0.880680, -0.237867, -0.409662,
		0.466242, 0.588218, 0.660771,
		36.101078, 40.852459, 16.115868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249561, 40.066864, 15.878659>,  <35.774708, 40.440708, 15.653329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249561, 40.066864, 15.878659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228104, 40.349644, 16.160749>,  <36.215229, 40.519314, 16.330004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228104, 40.349644, 16.160749>,  <36.249561, 40.066864, 15.878659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228104, 40.349644, 16.160749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159417, -0.691120, 0.704939,
		0.985753, 0.150244, -0.075622,
		-0.053648, 0.706951, 0.705225,
		36.212009, 40.561729, 16.372316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761436, 39.874878, 16.298141>,  <36.249561, 40.066864, 15.878659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761436, 39.874878, 16.298141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535000, 40.110027, 16.529293>,  <36.399139, 40.251118, 16.667984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535000, 40.110027, 16.529293>,  <36.761436, 39.874878, 16.298141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535000, 40.110027, 16.529293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042497, -0.679276, 0.732652,
		0.823245, 0.439307, 0.359550,
		-0.566093, 0.587872, 0.577880,
		36.365173, 40.286388, 16.702658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098587, 40.195320, 16.810692>,  <36.761436, 39.874878, 16.298141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098587, 40.195320, 16.810692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715908, 40.181087, 16.926249>,  <36.486301, 40.172546, 16.995583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715908, 40.181087, 16.926249>,  <37.098587, 40.195320, 16.810692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715908, 40.181087, 16.926249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252203, -0.596842, 0.761691,
		0.145321, 0.801570, 0.579972,
		-0.956700, -0.035581, 0.288892,
		36.428898, 40.170414, 17.012917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200615, 40.184547, 17.469757>,  <37.098587, 40.195320, 16.810692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200615, 40.184547, 17.469757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828178, 40.055031, 17.402559>,  <36.604717, 39.977322, 17.362242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828178, 40.055031, 17.402559>,  <37.200615, 40.184547, 17.469757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828178, 40.055031, 17.402559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020815, -0.506946, 0.861727,
		-0.364183, 0.798852, 0.478754,
		-0.931095, -0.323791, -0.167993,
		36.548851, 39.957893, 17.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815430, 40.384659, 17.970013>,  <37.200615, 40.184547, 17.469757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815430, 40.384659, 17.970013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.625488, 40.065228, 17.822071>,  <36.511524, 39.873569, 17.733307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.625488, 40.065228, 17.822071>,  <36.815430, 40.384659, 17.970013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625488, 40.065228, 17.822071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022247, -0.409231, 0.912159,
		-0.879784, 0.441370, 0.176559,
		-0.474853, -0.798575, -0.369854,
		36.483032, 39.825653, 17.711115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442944, 40.113525, 18.501505>,  <36.815430, 40.384659, 17.970013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442944, 40.113525, 18.501505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414413, 39.802071, 18.252142>,  <36.397297, 39.615196, 18.102524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414413, 39.802071, 18.252142>,  <36.442944, 40.113525, 18.501505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414413, 39.802071, 18.252142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084176, -0.618071, 0.781603,
		-0.993895, 0.108222, -0.021460,
		-0.071323, -0.778638, -0.623407,
		36.393017, 39.568478, 18.065121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974678, 39.708569, 18.780058>,  <36.442944, 40.113525, 18.501505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974678, 39.708569, 18.780058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145504, 39.440968, 18.536732>,  <36.248001, 39.280407, 18.390736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145504, 39.440968, 18.536732>,  <35.974678, 39.708569, 18.780058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145504, 39.440968, 18.536732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008191, -0.675587, 0.737235,
		-0.904184, -0.309864, -0.293998,
		0.427064, -0.669004, -0.608317,
		36.273624, 39.240265, 18.354237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539757, 39.068253, 18.715063>,  <35.974678, 39.708569, 18.780058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539757, 39.068253, 18.715063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921848, 38.986599, 18.629391>,  <36.151104, 38.937607, 18.577988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921848, 38.986599, 18.629391>,  <35.539757, 39.068253, 18.715063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921848, 38.986599, 18.629391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044467, -0.616617, 0.786006,
		-0.292518, -0.760338, -0.579931,
		0.955226, -0.204133, -0.214181,
		36.208416, 38.925358, 18.565136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204418, 38.644440, 18.154341>,  <35.539757, 39.068253, 18.715063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204418, 38.644440, 18.154341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841526, 38.478844, 18.184143>,  <34.623791, 38.379486, 18.202024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841526, 38.478844, 18.184143>,  <35.204418, 38.644440, 18.154341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841526, 38.478844, 18.184143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315497, 0.552545, -0.771463,
		0.278213, -0.723397, -0.631897,
		-0.907226, -0.413993, 0.074505,
		34.569359, 38.354645, 18.206495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020054, 38.561279, 17.492374>,  <35.204418, 38.644440, 18.154341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020054, 38.561279, 17.492374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665001, 38.555935, 17.676517>,  <34.451969, 38.552727, 17.787004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665001, 38.555935, 17.676517>,  <35.020054, 38.561279, 17.492374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665001, 38.555935, 17.676517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402036, 0.510098, -0.760373,
		-0.224671, -0.860013, -0.458150,
		-0.887632, -0.013359, 0.460360,
		34.398712, 38.551926, 17.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473812, 38.324474, 16.917992>,  <35.020054, 38.561279, 17.492374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473812, 38.324474, 16.917992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263210, 38.512943, 17.201059>,  <34.136848, 38.626026, 17.370899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263210, 38.512943, 17.201059>,  <34.473812, 38.324474, 16.917992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263210, 38.512943, 17.201059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509947, 0.490999, -0.706310,
		-0.680258, -0.732746, -0.018238,
		-0.526501, 0.471173, 0.707667,
		34.105259, 38.654297, 17.413359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782436, 38.285999, 16.667467>,  <34.473812, 38.324474, 16.917992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782436, 38.285999, 16.667467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.754993, 38.568413, 16.949408>,  <33.738525, 38.737862, 17.118572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.754993, 38.568413, 16.949408>,  <33.782436, 38.285999, 16.667467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754993, 38.568413, 16.949408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547666, 0.563884, -0.618140,
		-0.833879, -0.428432, 0.347982,
		-0.068609, 0.706032, 0.704849,
		33.734409, 38.780224, 17.160862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108303, 38.289658, 16.884100>,  <33.782436, 38.285999, 16.667467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108303, 38.289658, 16.884100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281734, 38.646191, 16.937080>,  <33.385792, 38.860111, 16.968868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281734, 38.646191, 16.937080>,  <33.108303, 38.289658, 16.884100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281734, 38.646191, 16.937080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558886, 0.381291, -0.736386,
		-0.706865, 0.245255, 0.663470,
		0.433578, 0.891329, 0.132452,
		33.411808, 38.913589, 16.976816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615215, 38.813480, 16.720657>,  <33.108303, 38.289658, 16.884100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615215, 38.813480, 16.720657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950985, 39.027458, 16.682312>,  <33.152447, 39.155846, 16.659306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950985, 39.027458, 16.682312>,  <32.615215, 38.813480, 16.720657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950985, 39.027458, 16.682312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456283, 0.597889, -0.659041,
		-0.295238, 0.596959, 0.745973,
		0.839429, 0.534948, -0.095863,
		33.202812, 39.187943, 16.653553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340878, 39.500095, 16.586418>,  <32.615215, 38.813480, 16.720657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340878, 39.500095, 16.586418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730263, 39.523689, 16.497976>,  <32.963894, 39.537846, 16.444910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730263, 39.523689, 16.497976>,  <32.340878, 39.500095, 16.586418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730263, 39.523689, 16.497976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211446, 0.601308, -0.770532,
		0.087507, 0.796838, 0.597823,
		0.973464, 0.058981, -0.221107,
		33.022301, 39.541382, 16.431644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579113, 39.544907, 16.741144>,  <32.340878, 39.500095, 16.586418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579113, 39.544907, 16.741144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.211500, 39.533096, 16.583916>,  <30.990932, 39.526009, 16.489578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.211500, 39.533096, 16.583916>,  <31.579113, 39.544907, 16.741144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211500, 39.533096, 16.583916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251918, -0.722970, 0.643313,
		-0.303174, 0.690248, 0.656996,
		-0.919034, -0.029527, -0.393072,
		30.935791, 39.524239, 16.465994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098944, 39.649296, 17.297649>,  <31.579113, 39.544907, 16.741144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098944, 39.649296, 17.297649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917263, 39.463562, 16.993519>,  <30.808254, 39.352123, 16.811041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917263, 39.463562, 16.993519>,  <31.098944, 39.649296, 17.297649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917263, 39.463562, 16.993519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111691, -0.817025, 0.565682,
		-0.883871, 0.341854, 0.319230,
		-0.454199, -0.464335, -0.760326,
		30.781004, 39.324261, 16.765421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560759, 39.270378, 17.568096>,  <31.098944, 39.649296, 17.297649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560759, 39.270378, 17.568096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599987, 39.100853, 17.207928>,  <30.623524, 38.999138, 16.991827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599987, 39.100853, 17.207928>,  <30.560759, 39.270378, 17.568096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599987, 39.100853, 17.207928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004579, -0.904967, 0.425457,
		-0.995169, -0.037603, -0.090693,
		0.098073, -0.423817, -0.900422,
		30.629410, 38.973709, 16.937801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221560, 38.672325, 17.631517>,  <30.560759, 39.270378, 17.568096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221560, 38.672325, 17.631517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463194, 38.606133, 17.319698>,  <30.608175, 38.566418, 17.132607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463194, 38.606133, 17.319698>,  <30.221560, 38.672325, 17.631517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463194, 38.606133, 17.319698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177174, -0.925832, 0.333834,
		-0.776974, -0.339780, -0.529963,
		0.604086, -0.165484, -0.779548,
		30.644419, 38.556488, 17.085835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974287, 38.078899, 17.374491>,  <30.221560, 38.672325, 17.631517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974287, 38.078899, 17.374491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.359890, 38.130692, 17.281603>,  <30.591251, 38.161766, 17.225870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.359890, 38.130692, 17.281603>,  <29.974287, 38.078899, 17.374491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359890, 38.130692, 17.281603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229090, -0.847776, 0.478325,
		-0.134940, -0.514308, -0.846923,
		0.964007, 0.129476, -0.232222,
		30.649092, 38.169533, 17.211937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117273, 37.348465, 17.232038>,  <29.974287, 38.078899, 17.374491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117273, 37.348465, 17.232038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.458593, 37.548183, 17.292149>,  <30.663385, 37.668015, 17.328215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.458593, 37.548183, 17.292149>,  <30.117273, 37.348465, 17.232038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458593, 37.548183, 17.292149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331714, -0.742179, 0.582353,
		0.402296, -0.447074, -0.798926,
		0.853301, 0.499293, 0.150275,
		30.714584, 37.697971, 17.337231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680717, 36.918961, 17.123230>,  <30.117273, 37.348465, 17.232038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680717, 36.918961, 17.123230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891483, 37.194355, 17.322567>,  <31.017942, 37.359592, 17.442169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891483, 37.194355, 17.322567>,  <30.680717, 36.918961, 17.123230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891483, 37.194355, 17.322567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498339, -0.725246, 0.475055,
		0.688491, -0.001969, -0.725242,
		0.526914, 0.688487, 0.498344,
		31.049557, 37.400902, 17.472071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.732889, 45.091160, 17.896542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.107338, 44.971310, 17.822891>,  <32.332008, 44.899399, 17.778702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.107338, 44.971310, 17.822891>,  <31.732889, 45.091160, 17.896542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107338, 44.971310, 17.822891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129312, -0.780144, 0.612090,
		-0.327045, -0.549180, -0.769053,
		0.936120, -0.299628, -0.184127,
		32.388172, 44.881420, 17.767653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728258, 44.357712, 17.827545>,  <31.732889, 45.091160, 17.896542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728258, 44.357712, 17.827545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.098591, 44.465626, 17.933414>,  <32.320789, 44.530373, 17.996937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.098591, 44.465626, 17.933414>,  <31.728258, 44.357712, 17.827545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098591, 44.465626, 17.933414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037219, -0.761997, 0.646510,
		0.376098, -0.588709, -0.715522,
		0.925832, 0.269782, 0.264674,
		32.376339, 44.546562, 18.012817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154667, 43.830330, 17.946762>,  <31.728258, 44.357712, 17.827545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154667, 43.830330, 17.946762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408371, 44.067894, 18.144743>,  <32.560593, 44.210434, 18.263531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408371, 44.067894, 18.144743>,  <32.154667, 43.830330, 17.946762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408371, 44.067894, 18.144743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159180, -0.726807, 0.668141,
		0.756552, -0.344991, -0.555526,
		0.634263, 0.593912, 0.494952,
		32.598652, 44.246067, 18.293228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688313, 43.396339, 18.198652>,  <32.154667, 43.830330, 17.946762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688313, 43.396339, 18.198652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.712517, 43.728226, 18.420610>,  <32.727039, 43.927357, 18.553785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.712517, 43.728226, 18.420610>,  <32.688313, 43.396339, 18.198652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712517, 43.728226, 18.420610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070789, -0.558080, 0.826762,
		0.995654, -0.010745, -0.092503,
		0.060508, 0.829718, 0.554894,
		32.730671, 43.977142, 18.587078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994797, 43.124828, 18.785252>,  <32.688313, 43.396339, 18.198652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994797, 43.124828, 18.785252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.887405, 43.477585, 18.940266>,  <32.822971, 43.689240, 19.033274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.887405, 43.477585, 18.940266>,  <32.994797, 43.124828, 18.785252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887405, 43.477585, 18.940266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003408, -0.403174, 0.915117,
		0.963280, 0.244366, 0.111248,
		-0.268475, 0.881893, 0.387537,
		32.806862, 43.742153, 19.056526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359249, 43.160103, 19.337389>,  <32.994797, 43.124828, 18.785252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359249, 43.160103, 19.337389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024303, 43.370941, 19.395340>,  <32.823334, 43.497444, 19.430111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024303, 43.370941, 19.395340>,  <33.359249, 43.160103, 19.337389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024303, 43.370941, 19.395340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073493, -0.371181, 0.925648,
		0.541680, 0.764458, 0.349552,
		-0.837366, 0.527094, 0.144878,
		32.773094, 43.529068, 19.438803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467487, 43.653393, 20.006418>,  <33.359249, 43.160103, 19.337389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467487, 43.653393, 20.006418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.075436, 43.605442, 19.943207>,  <32.840202, 43.576672, 19.905281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.075436, 43.605442, 19.943207>,  <33.467487, 43.653393, 20.006418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075436, 43.605442, 19.943207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088189, -0.450264, 0.888530,
		-0.177664, 0.884812, 0.430747,
		-0.980132, -0.119873, -0.158027,
		32.781395, 43.569481, 19.895800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174629, 43.843361, 20.643559>,  <33.467487, 43.653393, 20.006418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174629, 43.843361, 20.643559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.899307, 43.638977, 20.437588>,  <32.734112, 43.516346, 20.314005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.899307, 43.638977, 20.437588>,  <33.174629, 43.843361, 20.643559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899307, 43.638977, 20.437588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046303, -0.677441, 0.734118,
		-0.723939, 0.529141, 0.442630,
		-0.688308, -0.510962, -0.514927,
		32.692814, 43.485687, 20.283110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428833, 43.809006, 21.029747>,  <33.174629, 43.843361, 20.643559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428833, 43.809006, 21.029747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.419228, 43.493114, 20.784552>,  <32.413464, 43.303581, 20.637434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.419228, 43.493114, 20.784552>,  <32.428833, 43.809006, 21.029747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419228, 43.493114, 20.784552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225486, -0.593087, 0.772919,
		-0.973950, 0.156781, -0.163830,
		-0.024014, -0.789726, -0.612989,
		32.412025, 43.256195, 20.600655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842342, 43.508183, 21.186680>,  <32.428833, 43.809006, 21.029747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842342, 43.508183, 21.186680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088890, 43.242321, 21.017767>,  <32.236820, 43.082806, 20.916420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088890, 43.242321, 21.017767>,  <31.842342, 43.508183, 21.186680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088890, 43.242321, 21.017767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145698, -0.623259, 0.768323,
		-0.773860, -0.412046, -0.480998,
		0.616370, -0.664655, -0.422281,
		32.273800, 43.042923, 20.891083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528313, 42.893463, 21.341368>,  <31.842342, 43.508183, 21.186680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528313, 42.893463, 21.341368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898598, 42.776791, 21.245058>,  <32.120770, 42.706787, 21.187271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898598, 42.776791, 21.245058>,  <31.528313, 42.893463, 21.341368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898598, 42.776791, 21.245058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000275, -0.637117, 0.770767,
		-0.378223, -0.713444, -0.589868,
		0.925714, -0.291684, -0.240776,
		32.176311, 42.689285, 21.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464544, 42.155663, 21.323641>,  <31.528313, 42.893463, 21.341368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464544, 42.155663, 21.323641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.854130, 42.246025, 21.331242>,  <32.087883, 42.300243, 21.335802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.854130, 42.246025, 21.331242>,  <31.464544, 42.155663, 21.323641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854130, 42.246025, 21.331242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140511, -0.667323, 0.731393,
		0.177906, -0.709681, -0.681691,
		0.973964, 0.225904, 0.019003,
		32.146320, 42.313797, 21.336943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580153, 42.086559, 20.514400>,  <31.464544, 42.155663, 21.323641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580153, 42.086559, 20.514400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315144, 41.794479, 20.447620>,  <31.156137, 41.619232, 20.407553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315144, 41.794479, 20.447620>,  <31.580153, 42.086559, 20.514400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315144, 41.794479, 20.447620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594461, 0.648174, -0.475906,
		0.455718, -0.216054, -0.863506,
		-0.662523, -0.730199, -0.166949,
		31.116386, 41.575420, 20.397535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547148, 41.931976, 19.809057>,  <31.580153, 42.086559, 20.514400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547148, 41.931976, 19.809057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198967, 41.877010, 19.998131>,  <30.990059, 41.844032, 20.111574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198967, 41.877010, 19.998131>,  <31.547148, 41.931976, 19.809057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198967, 41.877010, 19.998131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471156, 0.510676, -0.719181,
		-0.142562, -0.848721, -0.509263,
		-0.870453, -0.137414, 0.472684,
		30.937832, 41.835785, 20.139936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145287, 41.665707, 19.295858>,  <31.547148, 41.931976, 19.809057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145287, 41.665707, 19.295858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882723, 41.791550, 19.570129>,  <30.725185, 41.867054, 19.734692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882723, 41.791550, 19.570129>,  <31.145287, 41.665707, 19.295858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882723, 41.791550, 19.570129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457978, 0.556072, -0.693570,
		-0.599488, -0.769289, -0.220926,
		-0.656407, 0.314608, 0.685676,
		30.685801, 41.885933, 19.775833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446737, 41.562557, 19.049856>,  <31.145287, 41.665707, 19.295858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446737, 41.562557, 19.049856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443739, 41.853588, 19.324251>,  <30.441940, 42.028206, 19.488888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443739, 41.853588, 19.324251>,  <30.446737, 41.562557, 19.049856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443739, 41.853588, 19.324251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346348, 0.641654, -0.684341,
		-0.938076, -0.242721, 0.247184,
		-0.007498, 0.727576, 0.685987,
		30.441490, 42.071861, 19.530046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727427, 41.766762, 19.122810>,  <30.446737, 41.562557, 19.049856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727427, 41.766762, 19.122810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944832, 42.083466, 19.234322>,  <30.075275, 42.273487, 19.301228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944832, 42.083466, 19.234322>,  <29.727427, 41.766762, 19.122810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944832, 42.083466, 19.234322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497654, 0.571391, -0.652574,
		-0.675971, 0.215947, 0.704578,
		0.543511, 0.791757, 0.278777,
		30.107885, 42.320992, 19.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214241, 42.387897, 19.199656>,  <29.727427, 41.766762, 19.122810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214241, 42.387897, 19.199656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569614, 42.566864, 19.158649>,  <29.782839, 42.674244, 19.134047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569614, 42.566864, 19.158649>,  <29.214241, 42.387897, 19.199656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569614, 42.566864, 19.158649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423172, 0.711863, -0.560514,
		-0.177805, 0.541360, 0.821775,
		0.888432, 0.447415, -0.102516,
		29.836143, 42.701088, 19.127895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050159, 43.018383, 19.235554>,  <29.214241, 42.387897, 19.199656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050159, 43.018383, 19.235554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405279, 43.024994, 19.051579>,  <29.618351, 43.028961, 18.941193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405279, 43.024994, 19.051579>,  <29.050159, 43.018383, 19.235554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405279, 43.024994, 19.051579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340913, 0.694969, -0.633085,
		0.309182, 0.718850, 0.622625,
		0.887798, 0.016523, -0.459937,
		29.671619, 43.029949, 18.913597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204563, 43.769390, 19.121920>,  <29.050159, 43.018383, 19.235554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204563, 43.769390, 19.121920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440842, 43.561371, 18.875141>,  <29.582609, 43.436558, 18.727074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440842, 43.561371, 18.875141>,  <29.204563, 43.769390, 19.121920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440842, 43.561371, 18.875141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185571, 0.656544, -0.731104,
		0.785264, 0.546349, 0.291313,
		0.590698, -0.520050, -0.616947,
		29.618052, 43.405357, 18.690058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701796, 44.168915, 18.967333>,  <29.204563, 43.769390, 19.121920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701796, 44.168915, 18.967333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732477, 43.896393, 18.676144>,  <29.750887, 43.732880, 18.501431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732477, 43.896393, 18.676144>,  <29.701796, 44.168915, 18.967333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732477, 43.896393, 18.676144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042470, 0.727230, -0.685079,
		0.996149, 0.083467, 0.026847,
		0.076706, -0.681300, -0.727974,
		29.755489, 43.692001, 18.457752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295044, 44.362873, 18.551914>,  <29.701796, 44.168915, 18.967333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295044, 44.362873, 18.551914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078678, 44.129513, 18.309574>,  <29.948858, 43.989498, 18.164169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078678, 44.129513, 18.309574>,  <30.295044, 44.362873, 18.551914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078678, 44.129513, 18.309574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173375, 0.627515, -0.759056,
		0.823015, -0.515623, -0.238284,
		-0.540914, -0.583402, -0.605850,
		29.916403, 43.954491, 18.127819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699572, 44.354763, 17.895369>,  <30.295044, 44.362873, 18.551914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699572, 44.354763, 17.895369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.349047, 44.200768, 17.779531>,  <30.138731, 44.108372, 17.710030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.349047, 44.200768, 17.779531>,  <30.699572, 44.354763, 17.895369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349047, 44.200768, 17.779531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050640, 0.524185, -0.850097,
		0.479072, -0.759616, -0.439855,
		-0.876314, -0.384984, -0.289590,
		30.086153, 44.085270, 17.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754766, 44.135128, 17.113592>,  <30.699572, 44.354763, 17.895369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754766, 44.135128, 17.113592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362175, 44.165966, 17.183739>,  <30.126619, 44.184467, 17.225826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362175, 44.165966, 17.183739>,  <30.754766, 44.135128, 17.113592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362175, 44.165966, 17.183739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121560, 0.456869, -0.881189,
		-0.148051, -0.886187, -0.439037,
		-0.981481, 0.077092, 0.175364,
		30.067730, 44.189095, 17.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387178, 43.906277, 16.530649>,  <30.754766, 44.135128, 17.113592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387178, 43.906277, 16.530649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142582, 44.158638, 16.721663>,  <29.995823, 44.310055, 16.836269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142582, 44.158638, 16.721663>,  <30.387178, 43.906277, 16.530649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142582, 44.158638, 16.721663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001829, 0.602386, -0.798203,
		-0.791248, -0.488969, -0.367201,
		-0.611493, 0.630905, 0.477531,
		29.959133, 44.347908, 16.864922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526382, 43.098209, 16.495602>,  <30.387178, 43.906277, 16.530649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526382, 43.098209, 16.495602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601042, 42.914036, 16.148462>,  <30.645838, 42.803532, 15.940179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601042, 42.914036, 16.148462>,  <30.526382, 43.098209, 16.495602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601042, 42.914036, 16.148462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157329, -0.857962, 0.489027,
		-0.969747, -0.227815, -0.087698,
		0.186649, -0.460435, -0.867848,
		30.657036, 42.775906, 15.888107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048441, 42.533745, 16.483204>,  <30.526382, 43.098209, 16.495602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048441, 42.533745, 16.483204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307352, 42.431812, 16.195845>,  <30.462698, 42.370655, 16.023430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307352, 42.431812, 16.195845>,  <30.048441, 42.533745, 16.483204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307352, 42.431812, 16.195845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127871, -0.892809, 0.431904,
		-0.751453, -0.371424, -0.545310,
		0.647277, -0.254826, -0.718398,
		30.501535, 42.355366, 15.980325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777529, 41.844788, 16.107698>,  <30.048441, 42.533745, 16.483204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777529, 41.844788, 16.107698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173077, 41.874020, 16.055851>,  <30.410404, 41.891560, 16.024742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173077, 41.874020, 16.055851>,  <29.777529, 41.844788, 16.107698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173077, 41.874020, 16.055851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113815, -0.932596, 0.342508,
		-0.095850, -0.353447, -0.930531,
		0.988868, 0.073079, -0.129617,
		30.469736, 41.895943, 16.016966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861290, 41.300102, 15.640054>,  <29.777529, 41.844788, 16.107698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861290, 41.300102, 15.640054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202679, 41.387161, 15.829461>,  <30.407511, 41.439396, 15.943106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202679, 41.387161, 15.829461>,  <29.861290, 41.300102, 15.640054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202679, 41.387161, 15.829461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254009, -0.967110, -0.013310,
		0.455048, 0.131637, -0.880683,
		0.853470, 0.217645, 0.473519,
		30.458719, 41.452454, 15.971517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284109, 40.934612, 15.237357>,  <29.861290, 41.300102, 15.640054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284109, 40.934612, 15.237357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.512747, 40.991261, 15.560646>,  <30.649929, 41.025249, 15.754620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.512747, 40.991261, 15.560646>,  <30.284109, 40.934612, 15.237357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512747, 40.991261, 15.560646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212829, -0.976871, 0.020649,
		0.792454, 0.160210, -0.588514,
		0.571594, 0.141616, 0.808223,
		30.684225, 41.033745, 15.803113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982107, 40.609127, 15.082950>,  <30.284109, 40.934612, 15.237357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982107, 40.609127, 15.082950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.942793, 40.640873, 15.479745>,  <30.919205, 40.659920, 15.717822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.942793, 40.640873, 15.479745>,  <30.982107, 40.609127, 15.082950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942793, 40.640873, 15.479745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236974, -0.966274, 0.100789,
		0.966531, 0.244982, 0.076165,
		-0.098288, 0.079367, 0.991988,
		30.913307, 40.664684, 15.777342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484108, 40.122677, 15.428204>,  <30.982107, 40.609127, 15.082950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484108, 40.122677, 15.428204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220036, 40.208824, 15.716030>,  <31.061592, 40.260513, 15.888726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220036, 40.208824, 15.716030>,  <31.484108, 40.122677, 15.428204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220036, 40.208824, 15.716030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079421, -0.932622, 0.352006,
		0.746894, 0.289537, 0.598596,
		-0.660183, 0.215370, 0.719565,
		31.021980, 40.273434, 15.931900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823561, 39.896889, 16.136295>,  <31.484108, 40.122677, 15.428204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823561, 39.896889, 16.136295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423698, 39.886917, 16.139528>,  <31.183781, 39.880936, 16.141468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423698, 39.886917, 16.139528>,  <31.823561, 39.896889, 16.136295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423698, 39.886917, 16.139528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026205, -0.952539, 0.303288,
		0.000140, 0.303396, 0.952865,
		-0.999657, -0.024928, 0.008084,
		31.123802, 39.879440, 16.141954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452171, 40.233788, 16.425011>,  <31.823561, 39.896889, 16.136295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452171, 40.233788, 16.425011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.759544, 40.028023, 16.272757>,  <32.943970, 39.904564, 16.181404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.759544, 40.028023, 16.272757>,  <32.452171, 40.233788, 16.425011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759544, 40.028023, 16.272757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006545, 0.588463, -0.808497,
		0.639893, 0.623769, 0.448830,
		0.768436, -0.514414, -0.380636,
		32.990074, 39.873699, 16.158566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866959, 40.755661, 16.211279>,  <32.452171, 40.233788, 16.425011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866959, 40.755661, 16.211279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988743, 40.432320, 16.009735>,  <33.061813, 40.238316, 15.888808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988743, 40.432320, 16.009735>,  <32.866959, 40.755661, 16.211279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988743, 40.432320, 16.009735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335938, 0.586109, -0.737307,
		0.891319, 0.055215, 0.450002,
		0.304461, -0.808349, -0.503861,
		33.080082, 40.189816, 15.858577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565826, 40.946770, 15.979236>,  <32.866959, 40.755661, 16.211279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565826, 40.946770, 15.979236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.470779, 40.624828, 15.761706>,  <33.413754, 40.431664, 15.631188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.470779, 40.624828, 15.761706>,  <33.565826, 40.946770, 15.979236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470779, 40.624828, 15.761706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490361, 0.383892, -0.782415,
		0.838502, -0.452584, 0.303452,
		-0.237616, -0.804857, -0.543823,
		33.399494, 40.383369, 15.598559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206039, 40.692059, 15.748232>,  <33.565826, 40.946770, 15.979236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206039, 40.692059, 15.748232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.922440, 40.520737, 15.524136>,  <33.752277, 40.417942, 15.389678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.922440, 40.520737, 15.524136>,  <34.206039, 40.692059, 15.748232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922440, 40.520737, 15.524136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423846, 0.376129, -0.823943,
		0.563621, -0.821634, -0.085142,
		-0.709004, -0.428304, -0.560240,
		33.709740, 40.392246, 15.356064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493282, 40.374813, 15.158319>,  <34.206039, 40.692059, 15.748232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493282, 40.374813, 15.158319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.116844, 40.427826, 15.033882>,  <33.890984, 40.459633, 14.959220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.116844, 40.427826, 15.033882>,  <34.493282, 40.374813, 15.158319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116844, 40.427826, 15.033882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331981, 0.187221, -0.924520,
		-0.064288, -0.973336, -0.220191,
		-0.941093, 0.132535, -0.311093,
		33.834515, 40.467587, 14.940555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468426, 40.008080, 14.543818>,  <34.493282, 40.374813, 15.158319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468426, 40.008080, 14.543818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.193092, 40.296776, 14.572906>,  <34.027893, 40.469994, 14.590359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.193092, 40.296776, 14.572906>,  <34.468426, 40.008080, 14.543818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193092, 40.296776, 14.572906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313974, 0.386804, -0.867066,
		-0.653925, -0.573998, -0.492858,
		-0.688333, 0.721740, 0.072721,
		33.986591, 40.513298, 14.594722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112164, 40.052853, 13.846881>,  <34.468426, 40.008080, 14.543818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112164, 40.052853, 13.846881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.023960, 40.404434, 14.016028>,  <33.971039, 40.615383, 14.117517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.023960, 40.404434, 14.016028>,  <34.112164, 40.052853, 13.846881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023960, 40.404434, 14.016028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314833, 0.474475, -0.822042,
		-0.923176, -0.048137, -0.381351,
		-0.220512, 0.878952, 0.422869,
		33.957806, 40.668121, 14.142889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905876, 40.376835, 13.361087>,  <34.112164, 40.052853, 13.846881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905876, 40.376835, 13.361087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.946331, 40.676697, 13.622710>,  <33.970604, 40.856613, 13.779684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.946331, 40.676697, 13.622710>,  <33.905876, 40.376835, 13.361087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946331, 40.676697, 13.622710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446198, 0.553420, -0.703302,
		-0.889201, 0.362971, -0.278522,
		0.101139, 0.749652, 0.654058,
		33.976673, 40.901592, 13.818928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628769, 40.979256, 13.027146>,  <33.905876, 40.376835, 13.361087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628769, 40.979256, 13.027146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.896240, 41.061394, 13.312999>,  <34.056725, 41.110676, 13.484510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.896240, 41.061394, 13.312999>,  <33.628769, 40.979256, 13.027146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896240, 41.061394, 13.312999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603275, 0.411998, -0.682873,
		-0.434653, 0.887744, 0.151615,
		0.668682, 0.205347, 0.714631,
		34.096844, 41.122997, 13.527388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.442879, 31.203032, 26.357491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754734, 31.453428, 26.364361>,  <34.941849, 31.603666, 26.368483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754734, 31.453428, 26.364361>,  <34.442879, 31.203032, 26.357491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754734, 31.453428, 26.364361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225775, 0.306561, -0.924687,
		-0.584110, 0.717047, 0.380341,
		0.779642, 0.625990, 0.017174,
		34.988628, 31.641226, 26.369513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316124, 31.891283, 26.160566>,  <34.442879, 31.203032, 26.357491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316124, 31.891283, 26.160566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693821, 31.846693, 26.036642>,  <34.920441, 31.819939, 25.962288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693821, 31.846693, 26.036642>,  <34.316124, 31.891283, 26.160566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693821, 31.846693, 26.036642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252047, 0.360698, -0.897981,
		0.211852, 0.925997, 0.312488,
		0.944241, -0.111477, -0.309809,
		34.977093, 31.813250, 25.943699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380646, 32.477768, 25.603745>,  <34.316124, 31.891283, 26.160566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380646, 32.477768, 25.603745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691460, 32.234371, 25.539303>,  <34.877949, 32.088333, 25.500637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691460, 32.234371, 25.539303>,  <34.380646, 32.477768, 25.603745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691460, 32.234371, 25.539303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057789, 0.323824, -0.944350,
		0.626801, 0.724481, 0.286787,
		0.777033, -0.608494, -0.161106,
		34.924568, 32.051823, 25.490971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918633, 32.903900, 25.389214>,  <34.380646, 32.477768, 25.603745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918633, 32.903900, 25.389214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014893, 32.543427, 25.245016>,  <35.072651, 32.327141, 25.158499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014893, 32.543427, 25.245016>,  <34.918633, 32.903900, 25.389214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014893, 32.543427, 25.245016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082827, 0.389120, -0.917456,
		0.967071, 0.190931, 0.168285,
		0.240654, -0.901183, -0.360493,
		35.087090, 32.273071, 25.136868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477196, 33.067940, 24.975250>,  <34.918633, 32.903900, 25.389214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477196, 33.067940, 24.975250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331173, 32.714722, 24.857292>,  <35.243561, 32.502792, 24.786518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331173, 32.714722, 24.857292>,  <35.477196, 33.067940, 24.975250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331173, 32.714722, 24.857292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090624, 0.281545, -0.955259,
		0.926563, -0.375450, -0.022755,
		-0.365058, -0.883046, -0.294894,
		35.221657, 32.449806, 24.768824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888729, 32.861610, 24.365438>,  <35.477196, 33.067940, 24.975250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888729, 32.861610, 24.365438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570175, 32.623013, 24.325506>,  <35.379044, 32.479855, 24.301546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570175, 32.623013, 24.325506>,  <35.888729, 32.861610, 24.365438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570175, 32.623013, 24.325506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102722, 0.296081, -0.949623,
		0.596002, -0.746011, -0.297068,
		-0.796385, -0.596493, -0.099833,
		35.331261, 32.444065, 24.295557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914703, 32.687443, 23.657070>,  <35.888729, 32.861610, 24.365438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914703, 32.687443, 23.657070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535763, 32.592236, 23.742750>,  <35.308399, 32.535110, 23.794159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535763, 32.592236, 23.742750>,  <35.914703, 32.687443, 23.657070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535763, 32.592236, 23.742750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291766, 0.366002, -0.883694,
		0.131932, -0.899662, -0.416176,
		-0.947347, -0.238014, 0.214203,
		35.251560, 32.520832, 23.807011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734886, 32.476608, 22.995325>,  <35.914703, 32.687443, 23.657070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734886, 32.476608, 22.995325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401974, 32.569889, 23.196493>,  <35.202225, 32.625858, 23.317194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401974, 32.569889, 23.196493>,  <35.734886, 32.476608, 22.995325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401974, 32.569889, 23.196493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373291, 0.434945, -0.819437,
		-0.409834, -0.869736, -0.274945,
		-0.832280, 0.233199, 0.502920,
		35.152290, 32.639847, 23.347368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130558, 32.183323, 22.622814>,  <35.734886, 32.476608, 22.995325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130558, 32.183323, 22.622814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001923, 32.478977, 22.859545>,  <34.924740, 32.656368, 23.001583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001923, 32.478977, 22.859545>,  <35.130558, 32.183323, 22.622814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001923, 32.478977, 22.859545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276425, 0.524516, -0.805278,
		-0.905631, -0.422567, 0.035635,
		-0.321593, 0.739135, 0.591826,
		34.905445, 32.700718, 23.037092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399368, 32.377445, 22.372520>,  <35.130558, 32.183323, 22.622814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399368, 32.377445, 22.372520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527264, 32.691025, 22.585384>,  <34.604000, 32.879173, 22.713102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527264, 32.691025, 22.585384>,  <34.399368, 32.377445, 22.372520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527264, 32.691025, 22.585384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306417, 0.617015, -0.724845,
		-0.896591, 0.068699, 0.437499,
		0.319739, 0.783947, 0.532160,
		34.623184, 32.926208, 22.745033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869164, 32.827740, 22.342649>,  <34.399368, 32.377445, 22.372520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869164, 32.827740, 22.342649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182426, 33.054783, 22.444225>,  <34.370384, 33.191010, 22.505171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182426, 33.054783, 22.444225>,  <33.869164, 32.827740, 22.342649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182426, 33.054783, 22.444225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198216, 0.614950, -0.763247,
		-0.589388, 0.547407, 0.594111,
		0.783156, 0.567611, 0.253940,
		34.417374, 33.225067, 22.520407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638485, 33.493935, 22.377995>,  <33.869164, 32.827740, 22.342649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638485, 33.493935, 22.377995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033104, 33.542412, 22.334105>,  <34.269875, 33.571499, 22.307770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033104, 33.542412, 22.334105>,  <33.638485, 33.493935, 22.377995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033104, 33.542412, 22.334105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163178, 0.771303, -0.615195,
		0.010072, 0.624822, 0.780702,
		0.986545, 0.121197, -0.109726,
		34.329067, 33.578770, 22.301188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160076, 34.024330, 22.455294>,  <33.638485, 33.493935, 22.377995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160076, 34.024330, 22.455294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863113, 33.846577, 22.254749>,  <32.684937, 33.739925, 22.134422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863113, 33.846577, 22.254749>,  <33.160076, 34.024330, 22.455294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863113, 33.846577, 22.254749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119842, -0.648195, 0.751985,
		-0.659148, 0.618359, 0.427966,
		-0.742402, -0.444381, -0.501362,
		32.640392, 33.713261, 22.104342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553368, 34.109161, 22.827194>,  <33.160076, 34.024330, 22.455294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553368, 34.109161, 22.827194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532711, 33.784351, 22.594658>,  <32.520317, 33.589466, 22.455137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532711, 33.784351, 22.594658>,  <32.553368, 34.109161, 22.827194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532711, 33.784351, 22.594658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233656, -0.556134, 0.797571,
		-0.970947, 0.177019, -0.161016,
		-0.051638, -0.812021, -0.581339,
		32.517220, 33.540745, 22.420256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913727, 33.942612, 22.957455>,  <32.553368, 34.109161, 22.827194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913727, 33.942612, 22.957455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138142, 33.633110, 22.839783>,  <32.272789, 33.447411, 22.769180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138142, 33.633110, 22.839783>,  <31.913727, 33.942612, 22.957455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138142, 33.633110, 22.839783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212251, -0.477963, 0.852350,
		-0.800116, -0.415760, -0.432385,
		0.561038, -0.773754, -0.294180,
		32.306454, 33.400986, 22.751528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374058, 33.478458, 23.086975>,  <31.913727, 33.942612, 22.957455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374058, 33.478458, 23.086975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726000, 33.292999, 23.045242>,  <31.937164, 33.181725, 23.020203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726000, 33.292999, 23.045242>,  <31.374058, 33.478458, 23.086975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726000, 33.292999, 23.045242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246397, -0.632765, 0.734096,
		-0.406381, -0.620191, -0.670983,
		0.879854, -0.463651, -0.104330,
		31.989956, 33.153904, 23.013943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189365, 32.831947, 23.075218>,  <31.374058, 33.478458, 23.086975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189365, 32.831947, 23.075218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577427, 32.823452, 23.171843>,  <31.810263, 32.818356, 23.229818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577427, 32.823452, 23.171843>,  <31.189365, 32.831947, 23.075218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577427, 32.823452, 23.171843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180929, -0.726661, 0.662744,
		0.161456, -0.686668, -0.708815,
		0.970153, -0.021241, 0.241562,
		31.868473, 32.817081, 23.244310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468307, 32.134075, 23.147842>,  <31.189365, 32.831947, 23.075218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468307, 32.134075, 23.147842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745998, 32.346275, 23.342415>,  <31.912613, 32.473595, 23.459158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745998, 32.346275, 23.342415>,  <31.468307, 32.134075, 23.147842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745998, 32.346275, 23.342415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094978, -0.602398, 0.792525,
		0.713460, -0.596394, -0.367816,
		0.694229, 0.530501, 0.486431,
		31.954268, 32.505424, 23.488344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857155, 31.662663, 23.440243>,  <31.468307, 32.134075, 23.147842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857155, 31.662663, 23.440243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914583, 31.988821, 23.664568>,  <31.949039, 32.184517, 23.799164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914583, 31.988821, 23.664568>,  <31.857155, 31.662663, 23.440243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914583, 31.988821, 23.664568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014818, -0.568394, 0.822623,
		0.989529, -0.109794, -0.093686,
		0.143570, 0.815398, 0.560815,
		31.957655, 32.233440, 23.832813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250095, 31.455137, 23.970730>,  <31.857155, 31.662663, 23.440243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250095, 31.455137, 23.970730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093723, 31.796515, 24.108603>,  <31.999899, 32.001343, 24.191326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093723, 31.796515, 24.108603>,  <32.250095, 31.455137, 23.970730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093723, 31.796515, 24.108603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113444, -0.416306, 0.902120,
		0.913401, 0.313566, 0.259565,
		-0.390933, 0.853443, 0.344682,
		31.976444, 32.052547, 24.212008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632759, 31.648264, 24.619871>,  <32.250095, 31.455137, 23.970730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632759, 31.648264, 24.619871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292717, 31.855394, 24.658184>,  <32.088692, 31.979673, 24.681171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292717, 31.855394, 24.658184>,  <32.632759, 31.648264, 24.619871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292717, 31.855394, 24.658184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012480, -0.201646, 0.979379,
		0.526463, 0.831381, 0.177883,
		-0.850106, 0.517827, 0.095783,
		32.037685, 32.010742, 24.686918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787880, 32.202927, 25.155148>,  <32.632759, 31.648264, 24.619871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787880, 32.202927, 25.155148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390034, 32.165775, 25.136723>,  <32.151325, 32.143482, 25.125668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390034, 32.165775, 25.136723>,  <32.787880, 32.202927, 25.155148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390034, 32.165775, 25.136723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039071, -0.075718, 0.996363,
		-0.096031, 0.992794, 0.071681,
		-0.994611, -0.092881, -0.046061,
		32.091652, 32.137913, 25.122904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577660, 32.547062, 25.768318>,  <32.787880, 32.202927, 25.155148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577660, 32.547062, 25.768318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267361, 32.318996, 25.660141>,  <32.081181, 32.182159, 25.595234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267361, 32.318996, 25.660141>,  <32.577660, 32.547062, 25.768318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267361, 32.318996, 25.660141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131447, -0.273168, 0.952943,
		-0.617207, 0.774788, 0.136962,
		-0.775743, -0.570160, -0.270445,
		32.034637, 32.147949, 25.579008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119801, 32.628166, 26.322803>,  <32.577660, 32.547062, 25.768318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119801, 32.628166, 26.322803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020794, 32.290722, 26.132202>,  <31.961390, 32.088257, 26.017841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020794, 32.290722, 26.132202>,  <32.119801, 32.628166, 26.322803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020794, 32.290722, 26.132202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164657, -0.448027, 0.878726,
		-0.954790, 0.295958, -0.028014,
		-0.247515, -0.843612, -0.476503,
		31.946539, 32.037640, 25.989252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597841, 32.512627, 26.830603>,  <32.119801, 32.628166, 26.322803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597841, 32.512627, 26.830603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636518, 32.162029, 26.641964>,  <31.659725, 31.951670, 26.528780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636518, 32.162029, 26.641964>,  <31.597841, 32.512627, 26.830603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636518, 32.162029, 26.641964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461260, -0.459325, 0.759117,
		-0.881981, 0.144129, -0.448706,
		0.096691, -0.876497, -0.471597,
		31.665525, 31.899080, 26.500484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897015, 32.140297, 26.762629>,  <31.597841, 32.512627, 26.830603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897015, 32.140297, 26.762629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226685, 31.920815, 26.818710>,  <31.424486, 31.789125, 26.852360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226685, 31.920815, 26.818710>,  <30.897015, 32.140297, 26.762629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226685, 31.920815, 26.818710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404258, -0.396621, 0.824177,
		-0.396621, -0.735946, -0.548703,
		-0.824177, 0.548703, -0.140204,
		31.473938, 31.756203, 26.860771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758877, 31.911278, 26.127302>,  <30.897015, 32.140297, 26.762629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758877, 31.911278, 26.127302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540144, 32.066509, 26.424049>,  <30.408905, 32.159649, 26.602098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540144, 32.066509, 26.424049>,  <30.758877, 31.911278, 26.127302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540144, 32.066509, 26.424049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003377, 0.887101, -0.461563,
		-0.837236, -0.249892, -0.486405,
		-0.546831, 0.388080, 0.741869,
		30.376095, 32.182934, 26.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330633, 32.223351, 25.777718>,  <30.758877, 31.911278, 26.127302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330633, 32.223351, 25.777718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368353, 32.383144, 26.142469>,  <30.390984, 32.479019, 26.361320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368353, 32.383144, 26.142469>,  <30.330633, 32.223351, 25.777718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368353, 32.383144, 26.142469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059087, 0.916591, -0.395436,
		-0.993789, -0.016591, 0.110036,
		0.094297, 0.399482, 0.911879,
		30.396643, 32.502991, 26.416033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682076, 32.505943, 25.841515>,  <30.330633, 32.223351, 25.777718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682076, 32.505943, 25.841515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.946228, 32.695557, 26.074472>,  <30.104719, 32.809326, 26.214247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.946228, 32.695557, 26.074472>,  <29.682076, 32.505943, 25.841515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946228, 32.695557, 26.074472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180647, 0.853077, -0.489517,
		-0.728878, 0.218060, 0.648989,
		0.660382, 0.474036, 0.582397,
		30.144342, 32.837769, 26.249191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361679, 33.100143, 26.050222>,  <29.682076, 32.505943, 25.841515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361679, 33.100143, 26.050222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751781, 33.178345, 26.091511>,  <29.985844, 33.225266, 26.116283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751781, 33.178345, 26.091511>,  <29.361679, 33.100143, 26.050222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751781, 33.178345, 26.091511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122979, 0.867738, -0.481568,
		-0.183717, 0.456958, 0.870309,
		0.975256, 0.195502, 0.103222,
		30.044359, 33.236996, 26.122477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420294, 33.776093, 26.391249>,  <29.361679, 33.100143, 26.050222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420294, 33.776093, 26.391249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.758896, 33.700554, 26.192146>,  <29.962057, 33.655231, 26.072685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.758896, 33.700554, 26.192146>,  <29.420294, 33.776093, 26.391249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758896, 33.700554, 26.192146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076398, 0.882203, -0.464631,
		0.526868, 0.431341, 0.732363,
		0.846507, -0.188848, -0.497758,
		30.012848, 33.643898, 26.042818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900978, 34.370693, 26.421164>,  <29.420294, 33.776093, 26.391249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900978, 34.370693, 26.421164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.008913, 34.146622, 26.107887>,  <30.073675, 34.012180, 25.919922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.008913, 34.146622, 26.107887>,  <29.900978, 34.370693, 26.421164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008913, 34.146622, 26.107887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270604, 0.824698, -0.496635,
		0.924100, -0.077923, 0.374122,
		0.269839, -0.560179, -0.783190,
		30.089865, 33.978569, 25.872931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348505, 34.845951, 26.139341>,  <29.900978, 34.370693, 26.421164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348505, 34.845951, 26.139341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.295666, 34.572197, 25.852520>,  <30.263962, 34.407944, 25.680428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.295666, 34.572197, 25.852520>,  <30.348505, 34.845951, 26.139341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295666, 34.572197, 25.852520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175393, 0.695842, -0.696449,
		0.975596, -0.217766, 0.028117,
		-0.132098, -0.684384, -0.717055,
		30.256037, 34.366882, 25.637403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832874, 35.020451, 25.599171>,  <30.348505, 34.845951, 26.139341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832874, 35.020451, 25.599171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.557785, 34.787903, 25.425253>,  <30.392733, 34.648373, 25.320902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.557785, 34.787903, 25.425253>,  <30.832874, 35.020451, 25.599171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557785, 34.787903, 25.425253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044874, 0.631806, -0.773827,
		0.724588, -0.512665, -0.460594,
		-0.687720, -0.581375, -0.434794,
		30.351469, 34.613491, 25.294815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156923, 34.734856, 25.059704>,  <30.832874, 35.020451, 25.599171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156923, 34.734856, 25.059704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763124, 34.765224, 24.996452>,  <30.526846, 34.783447, 24.958502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763124, 34.765224, 24.996452>,  <31.156923, 34.734856, 25.059704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763124, 34.765224, 24.996452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166199, 0.692062, -0.702444,
		0.056103, -0.717834, -0.693951,
		-0.984495, 0.075925, -0.158130,
		30.467775, 34.788002, 24.949013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111135, 34.787468, 24.347794>,  <31.156923, 34.734856, 25.059704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111135, 34.787468, 24.347794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727016, 34.886997, 24.398260>,  <30.496546, 34.946716, 24.428539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727016, 34.886997, 24.398260>,  <31.111135, 34.787468, 24.347794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727016, 34.886997, 24.398260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108201, 0.749019, -0.653654,
		-0.257145, -0.614050, -0.746203,
		-0.960297, 0.248824, 0.126166,
		30.438927, 34.961643, 24.436110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821659, 34.721066, 23.707657>,  <31.111135, 34.787468, 24.347794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821659, 34.721066, 23.707657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.626604, 34.986961, 23.934046>,  <30.509571, 35.146500, 24.069880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.626604, 34.986961, 23.934046>,  <30.821659, 34.721066, 23.707657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626604, 34.986961, 23.934046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205795, 0.717526, -0.665435,
		-0.848444, -0.208018, -0.486695,
		-0.487639, 0.664744, 0.565972,
		30.480312, 35.186386, 24.103838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481205, 35.099792, 23.200563>,  <30.821659, 34.721066, 23.707657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481205, 35.099792, 23.200563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441761, 35.334461, 23.522083>,  <30.418095, 35.475262, 23.714994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441761, 35.334461, 23.522083>,  <30.481205, 35.099792, 23.200563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441761, 35.334461, 23.522083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094551, 0.798558, -0.594445,
		-0.990624, -0.134619, -0.023277,
		-0.098612, 0.586671, 0.803799,
		30.412178, 35.510464, 23.763224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932617, 35.611847, 22.950907>,  <30.481205, 35.099792, 23.200563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932617, 35.611847, 22.950907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.156376, 35.761517, 23.246761>,  <30.290632, 35.851318, 23.424274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.156376, 35.761517, 23.246761>,  <29.932617, 35.611847, 22.950907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156376, 35.761517, 23.246761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014504, 0.887760, -0.460079,
		-0.828772, 0.268096, 0.491185,
		0.559399, 0.374176, 0.739639,
		30.324196, 35.873768, 23.468653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506155, 36.208309, 23.149166>,  <29.932617, 35.611847, 22.950907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506155, 36.208309, 23.149166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880396, 36.257618, 23.281500>,  <30.104940, 36.287201, 23.360901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880396, 36.257618, 23.281500>,  <29.506155, 36.208309, 23.149166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880396, 36.257618, 23.281500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033064, 0.902354, -0.429724,
		-0.351503, 0.412990, 0.840169,
		0.935603, 0.123270, 0.330835,
		30.161077, 36.294598, 23.380751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588160, 36.843662, 23.471188>,  <29.506155, 36.208309, 23.149166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588160, 36.843662, 23.471188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.971769, 36.766293, 23.388380>,  <30.201935, 36.719872, 23.338696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.971769, 36.766293, 23.388380>,  <29.588160, 36.843662, 23.471188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971769, 36.766293, 23.388380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112929, 0.931116, -0.346799,
		0.259839, 0.309210, 0.914807,
		0.959026, -0.193420, -0.207021,
		30.259478, 36.708267, 23.326273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858171, 37.394657, 23.823133>,  <29.588160, 36.843662, 23.471188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858171, 37.394657, 23.823133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.101591, 37.251282, 23.539953>,  <30.247643, 37.165257, 23.370045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.101591, 37.251282, 23.539953>,  <29.858171, 37.394657, 23.823133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101591, 37.251282, 23.539953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113904, 0.922386, -0.369093,
		0.785299, 0.143973, 0.602144,
		0.608548, -0.358434, -0.707950,
		30.284155, 37.143753, 23.327568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408266, 37.721073, 23.939440>,  <29.858171, 37.394657, 23.823133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408266, 37.721073, 23.939440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.459845, 37.570911, 23.572300>,  <30.490791, 37.480816, 23.352016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.459845, 37.570911, 23.572300>,  <30.408266, 37.721073, 23.939440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459845, 37.570911, 23.572300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272080, 0.903449, -0.331290,
		0.953596, -0.207009, 0.218637,
		0.128948, -0.375404, -0.917848,
		30.498529, 37.458290, 23.296946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992870, 38.077477, 23.701859>,  <30.408266, 37.721073, 23.939440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992870, 38.077477, 23.701859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861994, 37.946228, 23.347393>,  <30.783468, 37.867481, 23.134714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861994, 37.946228, 23.347393>,  <30.992870, 38.077477, 23.701859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861994, 37.946228, 23.347393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407572, 0.797066, -0.445613,
		0.852544, -0.506976, -0.127061,
		-0.327191, -0.328118, -0.886163,
		30.763836, 37.847794, 23.081545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527105, 38.253075, 23.232191>,  <30.992870, 38.077477, 23.701859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527105, 38.253075, 23.232191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215820, 38.210522, 22.984621>,  <31.029049, 38.184990, 22.836079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215820, 38.210522, 22.984621>,  <31.527105, 38.253075, 23.232191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215820, 38.210522, 22.984621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147616, 0.926946, -0.344937,
		0.610403, -0.359797, -0.705658,
		-0.778214, -0.106384, -0.618922,
		30.982357, 38.178608, 22.798944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704107, 38.495502, 22.560976>,  <31.527105, 38.253075, 23.232191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704107, 38.495502, 22.560976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.305428, 38.527752, 22.557150>,  <31.066219, 38.547100, 22.554855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.305428, 38.527752, 22.557150>,  <31.704107, 38.495502, 22.560976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305428, 38.527752, 22.557150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073530, 0.846449, -0.527368,
		-0.034424, -0.526330, -0.849583,
		-0.996699, 0.080624, -0.009563,
		31.006418, 38.551941, 22.554281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481998, 38.558865, 21.843042>,  <31.704107, 38.495502, 22.560976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481998, 38.558865, 21.843042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189245, 38.724037, 22.059868>,  <31.013594, 38.823143, 22.189964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189245, 38.724037, 22.059868>,  <31.481998, 38.558865, 21.843042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189245, 38.724037, 22.059868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005516, 0.799043, -0.601249,
		-0.681410, -0.437053, -0.587082,
		-0.731881, 0.412935, 0.542065,
		30.969681, 38.847919, 22.222486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016825, 38.915321, 21.357773>,  <31.481998, 38.558865, 21.843042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016825, 38.915321, 21.357773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.859228, 39.054707, 21.697971>,  <30.764669, 39.138336, 21.902090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.859228, 39.054707, 21.697971>,  <31.016825, 38.915321, 21.357773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859228, 39.054707, 21.697971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166419, 0.883003, -0.438874,
		-0.903921, -0.314452, -0.289907,
		-0.393993, 0.348461, 0.850496,
		30.741030, 39.159245, 21.953119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293072, 39.068565, 21.296062>,  <31.016825, 38.915321, 21.357773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293072, 39.068565, 21.296062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495314, 39.284214, 21.565495>,  <30.616659, 39.413605, 21.727154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495314, 39.284214, 21.565495>,  <30.293072, 39.068565, 21.296062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495314, 39.284214, 21.565495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209284, 0.834045, -0.510459,
		-0.836996, 0.117122, 0.534528,
		0.505607, 0.539121, 0.673581,
		30.646996, 39.445950, 21.767569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891678, 39.603912, 21.561068>,  <30.293072, 39.068565, 21.296062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891678, 39.603912, 21.561068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.264755, 39.736023, 21.619036>,  <30.488602, 39.815289, 21.653816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.264755, 39.736023, 21.619036>,  <29.891678, 39.603912, 21.561068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264755, 39.736023, 21.619036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214826, 0.831479, -0.512340,
		-0.289710, 0.446724, 0.846467,
		0.932694, 0.330273, 0.144920,
		30.544563, 39.835106, 21.662512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779816, 40.316761, 21.677513>,  <29.891678, 39.603912, 21.561068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779816, 40.316761, 21.677513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.176510, 40.298565, 21.629526>,  <30.414526, 40.287647, 21.600735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.176510, 40.298565, 21.629526>,  <29.779816, 40.316761, 21.677513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176510, 40.298565, 21.629526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032347, 0.816162, -0.576917,
		0.124158, 0.576029, 0.807945,
		0.991735, -0.045494, -0.119966,
		30.474030, 40.284916, 21.593536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991447, 41.058506, 21.813770>,  <29.779816, 40.316761, 21.677513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991447, 41.058506, 21.813770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.288830, 40.881771, 21.612953>,  <30.467260, 40.775730, 21.492462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.288830, 40.881771, 21.612953>,  <29.991447, 41.058506, 21.813770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288830, 40.881771, 21.612953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093182, 0.811795, -0.576460,
		0.662259, 0.381793, 0.644707,
		0.743458, -0.441841, -0.502042,
		30.511868, 40.749218, 21.462341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448118, 41.456310, 21.948427>,  <29.991447, 41.058506, 21.813770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448118, 41.456310, 21.948427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.549610, 41.253357, 21.619020>,  <30.610506, 41.131584, 21.421377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.549610, 41.253357, 21.619020>,  <30.448118, 41.456310, 21.948427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549610, 41.253357, 21.619020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193025, 0.860813, -0.470895,
		0.947820, -0.039478, 0.316352,
		0.253730, -0.507387, -0.823516,
		30.625729, 41.101139, 21.371965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169416, 41.584782, 21.745901>,  <30.448118, 41.456310, 21.948427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169416, 41.584782, 21.745901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944193, 41.512920, 21.423239>,  <30.809059, 41.469803, 21.229641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944193, 41.512920, 21.423239>,  <31.169416, 41.584782, 21.745901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944193, 41.512920, 21.423239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065332, 0.963355, -0.260150,
		0.823831, -0.199179, -0.530688,
		-0.563058, -0.179649, -0.806655,
		30.775276, 41.459026, 21.181242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828129, 41.435211, 21.306841>,  <31.169416, 41.584782, 21.745901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828129, 41.435211, 21.306841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096867, 41.698589, 21.442530>,  <32.258110, 41.856617, 21.523943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096867, 41.698589, 21.442530>,  <31.828129, 41.435211, 21.306841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096867, 41.698589, 21.442530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222022, -0.615947, 0.755855,
		0.706633, -0.432502, -0.560010,
		0.671845, 0.658447, 0.339223,
		32.298420, 41.896122, 21.544296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491257, 41.023136, 21.479282>,  <31.828129, 41.435211, 21.306841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491257, 41.023136, 21.479282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486202, 41.361778, 21.692110>,  <32.483170, 41.564964, 21.819807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486202, 41.361778, 21.692110>,  <32.491257, 41.023136, 21.479282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486202, 41.361778, 21.692110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374314, -0.489417, 0.787629,
		0.927216, 0.209114, -0.310711,
		-0.012637, 0.846606, 0.532070,
		32.482410, 41.615761, 21.851730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179253, 41.071968, 21.825949>,  <32.491257, 41.023136, 21.479282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179253, 41.071968, 21.825949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926628, 41.299633, 22.036545>,  <32.775055, 41.436230, 22.162903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926628, 41.299633, 22.036545>,  <33.179253, 41.071968, 21.825949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926628, 41.299633, 22.036545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411478, -0.329481, 0.849781,
		0.657129, 0.753325, -0.026110,
		-0.631559, 0.569160, 0.526488,
		32.737160, 41.470383, 22.194490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601254, 41.391594, 22.314188>,  <33.179253, 41.071968, 21.825949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601254, 41.391594, 22.314188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225079, 41.398022, 22.450020>,  <32.999374, 41.401878, 22.531519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225079, 41.398022, 22.450020>,  <33.601254, 41.391594, 22.314188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225079, 41.398022, 22.450020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315149, -0.333371, 0.888564,
		0.127485, 0.942659, 0.308451,
		-0.940441, 0.016071, 0.339578,
		32.942947, 41.402843, 22.551893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601189, 41.577538, 22.974199>,  <33.601254, 41.391594, 22.314188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601189, 41.577538, 22.974199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243851, 41.399841, 23.001308>,  <33.029449, 41.293224, 23.017574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243851, 41.399841, 23.001308>,  <33.601189, 41.577538, 22.974199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243851, 41.399841, 23.001308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267793, -0.405159, 0.874147,
		-0.360874, 0.799060, 0.480910,
		-0.893341, -0.444241, 0.067771,
		32.975849, 41.266567, 23.021639>
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
