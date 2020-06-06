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
	<24.950758, 34.783997, 34.750099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605993, 34.969448, 34.832230>,  <24.399136, 35.080719, 34.881508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605993, 34.969448, 34.832230>,  <24.950758, 34.783997, 34.750099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605993, 34.969448, 34.832230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350550, 0.252256, 0.901932,
		0.366369, 0.849361, -0.379947,
		-0.861910, 0.463631, 0.205325,
		24.347420, 35.108536, 34.893826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103664, 35.352791, 35.084179>,  <24.950758, 34.783997, 34.750099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103664, 35.352791, 35.084179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718508, 35.310562, 35.183533>,  <24.487413, 35.285225, 35.243145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718508, 35.310562, 35.183533>,  <25.103664, 35.352791, 35.084179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718508, 35.310562, 35.183533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210365, 0.282992, 0.935768,
		-0.169083, 0.953294, -0.250282,
		-0.962890, -0.105572, 0.248388,
		24.429640, 35.278889, 35.258049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869043, 35.963604, 35.536671>,  <25.103664, 35.352791, 35.084179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869043, 35.963604, 35.536671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646196, 35.635986, 35.591492>,  <24.512489, 35.439415, 35.624386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646196, 35.635986, 35.591492>,  <24.869043, 35.963604, 35.536671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646196, 35.635986, 35.591492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172920, 0.047006, 0.983814,
		-0.812232, 0.571798, 0.115442,
		-0.557116, -0.819047, 0.137055,
		24.479061, 35.390274, 35.632607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457060, 36.124985, 36.042271>,  <24.869043, 35.963604, 35.536671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457060, 36.124985, 36.042271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461729, 35.725258, 36.028271>,  <24.464531, 35.485420, 36.019871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461729, 35.725258, 36.028271>,  <24.457060, 36.124985, 36.042271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461729, 35.725258, 36.028271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229270, -0.031398, 0.972856,
		-0.973293, -0.019383, 0.228748,
		0.011674, -0.999319, -0.035004,
		24.465231, 35.425461, 36.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.058319, 35.825729, 36.594189>,  <24.457060, 36.124985, 36.042271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.058319, 35.825729, 36.594189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352139, 35.567074, 36.511929>,  <24.528431, 35.411880, 36.462574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352139, 35.567074, 36.511929>,  <24.058319, 35.825729, 36.594189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352139, 35.567074, 36.511929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295511, 0.032029, 0.954802,
		-0.610827, -0.762121, 0.214617,
		0.734550, -0.646641, -0.205651,
		24.572504, 35.373081, 36.450233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062401, 35.227364, 37.032528>,  <24.058319, 35.825729, 36.594189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062401, 35.227364, 37.032528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440203, 35.333755, 36.955414>,  <24.666883, 35.397591, 36.909145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440203, 35.333755, 36.955414>,  <24.062401, 35.227364, 37.032528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440203, 35.333755, 36.955414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163785, 0.127431, 0.978231,
		0.284762, -0.955517, 0.076794,
		0.944502, 0.265985, -0.192787,
		24.723553, 35.413551, 36.897579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405607, 34.864883, 37.488461>,  <24.062401, 35.227364, 37.032528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405607, 34.864883, 37.488461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607672, 35.201546, 37.412113>,  <24.728910, 35.403542, 37.366306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607672, 35.201546, 37.412113>,  <24.405607, 34.864883, 37.488461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607672, 35.201546, 37.412113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185521, 0.110086, 0.976454,
		0.842850, -0.528675, -0.100534,
		0.505159, 0.841656, -0.190866,
		24.759220, 35.454041, 37.354855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086721, 34.786205, 37.933960>,  <24.405607, 34.864883, 37.488461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086721, 34.786205, 37.933960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063475, 35.172024, 37.830986>,  <25.049526, 35.403515, 37.769203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063475, 35.172024, 37.830986>,  <25.086721, 34.786205, 37.933960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063475, 35.172024, 37.830986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472112, 0.253766, 0.844223,
		0.879621, -0.072471, -0.470122,
		-0.058119, 0.964547, -0.257432,
		25.046040, 35.461388, 37.753757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763134, 35.050121, 37.829720>,  <25.086721, 34.786205, 37.933960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763134, 35.050121, 37.829720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476412, 35.264194, 38.008499>,  <25.304379, 35.392639, 38.115768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476412, 35.264194, 38.008499>,  <25.763134, 35.050121, 37.829720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476412, 35.264194, 38.008499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519081, -0.018400, 0.854527,
		0.465555, 0.844533, -0.264616,
		-0.716807, 0.535187, 0.446948,
		25.261370, 35.424751, 38.142582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099934, 35.640957, 38.199875>,  <25.763134, 35.050121, 37.829720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099934, 35.640957, 38.199875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768677, 35.475624, 38.351318>,  <25.569923, 35.376427, 38.442184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768677, 35.475624, 38.351318>,  <26.099934, 35.640957, 38.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768677, 35.475624, 38.351318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509656, -0.274108, 0.815546,
		-0.233311, 0.868345, 0.437656,
		-0.828140, -0.413330, 0.378605,
		25.520235, 35.351624, 38.464901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811638, 35.730495, 38.586674>,  <26.099934, 35.640957, 38.199875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811638, 35.730495, 38.586674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879391, 35.902733, 38.232071>,  <26.920042, 36.006073, 38.019310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879391, 35.902733, 38.232071>,  <26.811638, 35.730495, 38.586674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879391, 35.902733, 38.232071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517837, -0.804219, -0.291679,
		-0.838544, -0.409664, -0.359194,
		0.169380, 0.430590, -0.886512,
		26.930204, 36.031910, 37.966118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421186, 35.827736, 39.181061>,  <26.811638, 35.730495, 38.586674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421186, 35.827736, 39.181061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435614, 36.175781, 39.377670>,  <26.444271, 36.384609, 39.495636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435614, 36.175781, 39.377670>,  <26.421186, 35.827736, 39.181061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435614, 36.175781, 39.377670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157144, -0.490663, 0.857062,
		0.986917, 0.046327, -0.154431,
		0.036069, 0.870117, 0.491524,
		26.446434, 36.436817, 39.525127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926888, 35.772217, 39.571270>,  <26.421186, 35.827736, 39.181061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926888, 35.772217, 39.571270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686787, 36.050144, 39.729725>,  <26.542727, 36.216900, 39.824799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686787, 36.050144, 39.729725>,  <26.926888, 35.772217, 39.571270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686787, 36.050144, 39.729725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104692, -0.422776, 0.900167,
		0.792929, 0.581800, 0.181031,
		-0.600253, 0.694816, 0.396141,
		26.506710, 36.258591, 39.848568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187965, 35.946636, 40.262760>,  <26.926888, 35.772217, 39.571270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187965, 35.946636, 40.262760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802715, 36.051712, 40.239479>,  <26.571566, 36.114758, 40.225510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802715, 36.051712, 40.239479>,  <27.187965, 35.946636, 40.262760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802715, 36.051712, 40.239479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127632, -0.255621, 0.958315,
		0.236860, 0.930405, 0.279722,
		-0.963124, 0.262688, -0.058203,
		26.513779, 36.130520, 40.222019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039898, 36.587723, 40.552376>,  <27.187965, 35.946636, 40.262760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039898, 36.587723, 40.552376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766035, 36.296894, 40.572792>,  <26.601717, 36.122395, 40.585041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766035, 36.296894, 40.572792>,  <27.039898, 36.587723, 40.552376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766035, 36.296894, 40.572792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147204, -0.069346, 0.986672,
		-0.713844, 0.683048, 0.154507,
		-0.684659, -0.727074, 0.051045,
		26.560637, 36.078773, 40.588104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074322, 37.107983, 41.038551>,  <27.039898, 36.587723, 40.552376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074322, 37.107983, 41.038551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948811, 36.771221, 41.214165>,  <26.873505, 36.569164, 41.319534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948811, 36.771221, 41.214165>,  <27.074322, 37.107983, 41.038551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948811, 36.771221, 41.214165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900625, -0.410332, -0.143184,
		0.300696, 0.350476, 0.886988,
		-0.313777, -0.841899, 0.439033,
		26.854677, 36.518650, 41.345875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487904, 36.874199, 41.667713>,  <27.074322, 37.107983, 41.038551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487904, 36.874199, 41.667713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344904, 36.558743, 41.467621>,  <27.259104, 36.369469, 41.347565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344904, 36.558743, 41.467621>,  <27.487904, 36.874199, 41.667713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344904, 36.558743, 41.467621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933465, -0.285144, -0.217570,
		0.028947, -0.544731, 0.838111,
		-0.357499, -0.788645, -0.500233,
		27.237654, 36.322147, 41.317551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755390, 36.339813, 42.044319>,  <27.487904, 36.874199, 41.667713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755390, 36.339813, 42.044319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657154, 36.268307, 41.663219>,  <27.598211, 36.225403, 41.434559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657154, 36.268307, 41.663219>,  <27.755390, 36.339813, 42.044319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657154, 36.268307, 41.663219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944380, -0.265869, -0.193548,
		-0.218705, -0.947288, 0.234121,
		-0.245591, -0.178769, -0.952747,
		27.583477, 36.214676, 41.377396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051058, 35.746967, 41.808258>,  <27.755390, 36.339813, 42.044319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051058, 35.746967, 41.808258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029675, 36.005795, 41.504036>,  <28.016844, 36.161091, 41.321503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029675, 36.005795, 41.504036>,  <28.051058, 35.746967, 41.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029675, 36.005795, 41.504036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929232, -0.246624, -0.275144,
		-0.365608, -0.721439, -0.588096,
		-0.053461, 0.647072, -0.760552,
		28.013636, 36.199917, 41.275871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267385, 35.384476, 41.056404>,  <28.051058, 35.746967, 41.808258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267385, 35.384476, 41.056404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321917, 35.780720, 41.052349>,  <28.354635, 36.018467, 41.049915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321917, 35.780720, 41.052349>,  <28.267385, 35.384476, 41.056404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321917, 35.780720, 41.052349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946683, -0.133286, -0.293301,
		-0.291899, 0.030387, -0.955966,
		0.136329, 0.990612, -0.010139,
		28.362816, 36.077904, 41.049309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678112, 35.605164, 40.472118>,  <28.267385, 35.384476, 41.056404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678112, 35.605164, 40.472118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741676, 35.859623, 40.774128>,  <28.779816, 36.012299, 40.955334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741676, 35.859623, 40.774128>,  <28.678112, 35.605164, 40.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741676, 35.859623, 40.774128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987063, -0.118859, -0.107604,
		0.021290, 0.762358, -0.646806,
		0.158911, 0.636147, 0.755026,
		28.789351, 36.050468, 41.000637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245918, 36.187981, 40.342064>,  <28.678112, 35.605164, 40.472118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245918, 36.187981, 40.342064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246916, 36.096554, 40.731476>,  <29.247515, 36.041698, 40.965122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246916, 36.096554, 40.731476>,  <29.245918, 36.187981, 40.342064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246916, 36.096554, 40.731476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986808, -0.157027, -0.039394,
		0.161874, 0.960782, 0.225156,
		0.002493, -0.228563, 0.973526,
		29.247663, 36.027985, 41.023533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591782, 36.714733, 40.755848>,  <29.245918, 36.187981, 40.342064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591782, 36.714733, 40.755848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617622, 36.340042, 40.893467>,  <29.633127, 36.115227, 40.976040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617622, 36.340042, 40.893467>,  <29.591782, 36.714733, 40.755848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617622, 36.340042, 40.893467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938719, -0.059931, -0.339434,
		0.338576, 0.344896, 0.875450,
		0.064603, -0.936726, 0.344052,
		29.637003, 36.059025, 40.996681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071852, 36.505569, 41.382633>,  <29.591782, 36.714733, 40.755848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071852, 36.505569, 41.382633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023371, 36.227703, 41.099010>,  <29.994282, 36.060986, 40.928837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023371, 36.227703, 41.099010>,  <30.071852, 36.505569, 41.382633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023371, 36.227703, 41.099010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948813, 0.128809, -0.288378,
		0.291658, -0.707710, 0.643492,
		-0.121200, -0.694662, -0.709053,
		29.987011, 36.019306, 40.886295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698589, 36.271015, 41.349346>,  <30.071852, 36.505569, 41.382633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698589, 36.271015, 41.349346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544975, 36.140770, 41.003746>,  <30.452806, 36.062622, 40.796387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544975, 36.140770, 41.003746>,  <30.698589, 36.271015, 41.349346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544975, 36.140770, 41.003746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903708, 0.059273, -0.424026,
		0.189281, -0.943643, 0.271497,
		-0.384037, -0.325615, -0.863997,
		30.429764, 36.043087, 40.744545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004263, 35.730671, 41.102024>,  <30.698589, 36.271015, 41.349346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004263, 35.730671, 41.102024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886604, 35.946312, 40.786343>,  <30.816010, 36.075699, 40.596935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886604, 35.946312, 40.786343>,  <31.004263, 35.730671, 41.102024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886604, 35.946312, 40.786343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931362, -0.023706, -0.363323,
		-0.214579, -0.841904, -0.495130,
		-0.294145, 0.539106, -0.789204,
		30.798361, 36.108044, 40.549580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230503, 35.401150, 40.531307>,  <31.004263, 35.730671, 41.102024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230503, 35.401150, 40.531307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192900, 35.793247, 40.461689>,  <31.170338, 36.028503, 40.419918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192900, 35.793247, 40.461689>,  <31.230503, 35.401150, 40.531307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192900, 35.793247, 40.461689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848136, -0.012699, -0.529627,
		-0.521372, -0.197403, -0.830182,
		-0.094007, 0.980240, -0.174046,
		31.164698, 36.087318, 40.409473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108576, 35.419537, 39.839222>,  <31.230503, 35.401150, 40.531307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108576, 35.419537, 39.839222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297373, 35.746437, 39.971478>,  <31.410652, 35.942577, 40.050831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297373, 35.746437, 39.971478>,  <31.108576, 35.419537, 39.839222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297373, 35.746437, 39.971478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757419, -0.183982, -0.626472,
		-0.451152, 0.546125, -0.705839,
		0.471994, 0.817250, 0.330641,
		31.438971, 35.991611, 40.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650295, 35.008965, 40.071510>,  <31.108576, 35.419537, 39.839222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650295, 35.008965, 40.071510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874411, 34.743164, 40.269302>,  <32.008881, 34.583683, 40.387978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874411, 34.743164, 40.269302>,  <31.650295, 35.008965, 40.071510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874411, 34.743164, 40.269302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823268, 0.381088, -0.420714,
		0.091127, 0.642810, 0.760586,
		0.560290, -0.664505, 0.494477,
		32.042500, 34.543812, 40.417645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231152, 35.437595, 40.292149>,  <31.650295, 35.008965, 40.071510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231152, 35.437595, 40.292149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341892, 35.055042, 40.254868>,  <32.408337, 34.825512, 40.232498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341892, 35.055042, 40.254868>,  <32.231152, 35.437595, 40.292149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341892, 35.055042, 40.254868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868811, 0.290573, -0.400918,
		0.410512, 0.030022, 0.911361,
		0.276853, -0.956382, -0.093201,
		32.424950, 34.768127, 40.226906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862934, 35.302017, 40.659542>,  <32.231152, 35.437595, 40.292149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862934, 35.302017, 40.659542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805691, 35.054420, 40.350643>,  <32.771347, 34.905861, 40.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805691, 35.054420, 40.350643>,  <32.862934, 35.302017, 40.659542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805691, 35.054420, 40.350643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962034, 0.096227, -0.255406,
		0.232406, -0.779477, 0.581724,
		-0.143105, -0.618996, -0.772247,
		32.762760, 34.868721, 40.118969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356609, 34.754135, 40.671249>,  <32.862934, 35.302017, 40.659542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356609, 34.754135, 40.671249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256546, 34.881142, 40.305386>,  <33.196507, 34.957344, 40.085865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256546, 34.881142, 40.305386>,  <33.356609, 34.754135, 40.671249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256546, 34.881142, 40.305386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967273, 0.040501, -0.250486,
		-0.042488, -0.947388, -0.317254,
		-0.250157, 0.317514, -0.914662,
		33.181499, 34.976395, 40.030987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559902, 34.226715, 40.279076>,  <33.356609, 34.754135, 40.671249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559902, 34.226715, 40.279076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536770, 34.580517, 40.093899>,  <33.522892, 34.792797, 39.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536770, 34.580517, 40.093899>,  <33.559902, 34.226715, 40.279076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536770, 34.580517, 40.093899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976688, -0.045902, -0.209701,
		-0.206731, -0.464275, -0.861227,
		-0.057828, 0.884501, -0.462941,
		33.519421, 34.845867, 39.955017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813927, 34.230339, 39.566368>,  <33.559902, 34.226715, 40.279076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813927, 34.230339, 39.566368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887550, 34.595352, 39.712471>,  <33.931725, 34.814358, 39.800133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887550, 34.595352, 39.712471>,  <33.813927, 34.230339, 39.566368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887550, 34.595352, 39.712471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928225, -0.039145, -0.369953,
		-0.323296, 0.407131, -0.854239,
		0.184059, 0.912531, 0.365254,
		33.942768, 34.869110, 39.822048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968987, 34.735367, 38.998013>,  <33.813927, 34.230339, 39.566368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968987, 34.735367, 38.998013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156178, 34.759384, 39.350693>,  <34.268490, 34.773796, 39.562302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156178, 34.759384, 39.350693>,  <33.968987, 34.735367, 38.998013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156178, 34.759384, 39.350693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883732, -0.027261, -0.467198,
		-0.004018, 0.997823, -0.065823,
		0.467975, 0.060047, 0.881699,
		34.296570, 34.777397, 39.615204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272572, 35.393211, 39.081314>,  <33.968987, 34.735367, 38.998013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272572, 35.393211, 39.081314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462662, 35.087555, 39.255787>,  <34.576714, 34.904160, 39.360470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462662, 35.087555, 39.255787>,  <34.272572, 35.393211, 39.081314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462662, 35.087555, 39.255787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759332, 0.105741, -0.642054,
		0.444497, 0.636324, 0.630487,
		0.475224, -0.764140, 0.436180,
		34.605228, 34.858315, 39.386642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028431, 35.527332, 39.554222>,  <34.272572, 35.393211, 39.081314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028431, 35.527332, 39.554222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024021, 35.173275, 39.368149>,  <35.021374, 34.960842, 39.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024021, 35.173275, 39.368149>,  <35.028431, 35.527332, 39.554222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024021, 35.173275, 39.368149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847553, 0.238581, -0.474060,
		0.530596, -0.399497, 0.747576,
		-0.011028, -0.885145, -0.465185,
		35.020714, 34.907730, 39.228592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751915, 35.207066, 39.497887>,  <35.028431, 35.527332, 39.554222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751915, 35.207066, 39.497887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533619, 35.058594, 39.197384>,  <35.402641, 34.969509, 39.017082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533619, 35.058594, 39.197384>,  <35.751915, 35.207066, 39.497887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533619, 35.058594, 39.197384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792091, 0.064023, -0.607036,
		0.273420, -0.926350, 0.259071,
		-0.545741, -0.371184, -0.751259,
		35.369896, 34.947239, 38.972008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049389, 35.334362, 38.863251>,  <35.751915, 35.207066, 39.497887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049389, 35.334362, 38.863251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391426, 35.295731, 39.067013>,  <36.596649, 35.272552, 39.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391426, 35.295731, 39.067013>,  <36.049389, 35.334362, 38.863251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391426, 35.295731, 39.067013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160313, -0.983602, 0.082630,
		0.493072, -0.152320, -0.856551,
		0.855091, -0.096574, 0.509405,
		36.647953, 35.266758, 39.219833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250813, 34.669685, 38.787495>,  <36.049389, 35.334362, 38.863251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250813, 34.669685, 38.787495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240383, 34.918507, 38.474480>,  <36.234127, 35.067799, 38.286671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240383, 34.918507, 38.474480>,  <36.250813, 34.669685, 38.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240383, 34.918507, 38.474480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956312, -0.212498, -0.200780,
		-0.291185, -0.753585, -0.589339,
		-0.026071, 0.622056, -0.782539,
		36.232563, 35.105122, 38.239719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592201, 34.256168, 38.205269>,  <36.250813, 34.669685, 38.787495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592201, 34.256168, 38.205269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610920, 34.654316, 38.171677>,  <36.622150, 34.893204, 38.151520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610920, 34.654316, 38.171677>,  <36.592201, 34.256168, 38.205269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610920, 34.654316, 38.171677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963085, -0.067271, -0.260658,
		-0.265100, -0.068684, -0.961772,
		0.046796, 0.995368, -0.083982,
		36.624958, 34.952927, 38.146481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586739, 34.519676, 37.485363>,  <36.592201, 34.256168, 38.205269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586739, 34.519676, 37.485363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802368, 34.699631, 37.770180>,  <36.931747, 34.807606, 37.941071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802368, 34.699631, 37.770180>,  <36.586739, 34.519676, 37.485363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802368, 34.699631, 37.770180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836656, -0.188688, -0.514202,
		-0.096981, 0.872924, -0.478120,
		0.539074, 0.449889, 0.712038,
		36.964092, 34.834599, 37.983791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045929, 35.078308, 37.311153>,  <36.586739, 34.519676, 37.485363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045929, 35.078308, 37.311153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206001, 34.904854, 37.634094>,  <37.302044, 34.800781, 37.827858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206001, 34.904854, 37.634094>,  <37.045929, 35.078308, 37.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206001, 34.904854, 37.634094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904496, 0.045128, -0.424088,
		0.147464, 0.899959, 0.410279,
		0.400176, -0.433633, 0.807354,
		37.326054, 34.774765, 37.876301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674732, 35.389645, 37.379337>,  <37.045929, 35.078308, 37.311153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674732, 35.389645, 37.379337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648392, 35.013561, 37.513004>,  <37.632587, 34.787910, 37.593204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648392, 35.013561, 37.513004>,  <37.674732, 35.389645, 37.379337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648392, 35.013561, 37.513004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746773, -0.268555, -0.608447,
		0.661811, 0.209477, 0.719810,
		-0.065853, -0.940211, 0.334165,
		37.628635, 34.731499, 37.613255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275398, 35.186340, 37.696392>,  <37.674732, 35.389645, 37.379337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275398, 35.186340, 37.696392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119362, 34.862572, 37.520821>,  <38.025742, 34.668308, 37.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119362, 34.862572, 37.520821>,  <38.275398, 35.186340, 37.696392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119362, 34.862572, 37.520821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846694, -0.127991, -0.516456,
		0.361853, -0.573107, 0.735263,
		-0.390091, -0.809424, -0.438933,
		38.002335, 34.619743, 37.389141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768665, 34.589954, 37.739197>,  <38.275398, 35.186340, 37.696392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768665, 34.589954, 37.739197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540703, 34.574558, 37.410873>,  <38.403927, 34.565319, 37.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540703, 34.574558, 37.410873>,  <38.768665, 34.589954, 37.739197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540703, 34.574558, 37.410873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811230, 0.132671, -0.569477,
		0.130799, -0.990414, -0.044410,
		-0.569910, -0.038460, -0.820807,
		38.369732, 34.563011, 37.164631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040443, 34.032288, 37.240578>,  <38.768665, 34.589954, 37.739197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040443, 34.032288, 37.240578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827038, 34.301537, 37.035732>,  <38.698994, 34.463085, 36.912827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827038, 34.301537, 37.035732>,  <39.040443, 34.032288, 37.240578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827038, 34.301537, 37.035732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746734, 0.090541, -0.658931,
		-0.397177, -0.733963, -0.550952,
		-0.533515, 0.673127, -0.512115,
		38.666985, 34.503475, 36.882099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718208, 33.819901, 36.666107>,  <39.040443, 34.032288, 37.240578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718208, 33.819901, 36.666107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762180, 33.423756, 36.699799>,  <38.788563, 33.186069, 36.720013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762180, 33.423756, 36.699799>,  <38.718208, 33.819901, 36.666107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762180, 33.423756, 36.699799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842547, -0.137811, -0.520695,
		0.527285, -0.013726, -0.849578,
		0.109934, -0.990363, 0.084230,
		38.795162, 33.126648, 36.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545891, 33.524986, 35.993732>,  <38.718208, 33.819901, 36.666107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545891, 33.524986, 35.993732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508438, 33.238083, 36.269924>,  <38.485966, 33.065941, 36.435638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508438, 33.238083, 36.269924>,  <38.545891, 33.524986, 35.993732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508438, 33.238083, 36.269924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904986, -0.227774, -0.359333,
		0.415010, -0.658524, -0.627784,
		-0.093636, -0.717262, 0.690484,
		38.480347, 33.022903, 36.477070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251030, 32.995789, 35.675606>,  <38.545891, 33.524986, 35.993732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251030, 32.995789, 35.675606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168869, 32.918789, 36.059429>,  <38.119572, 32.872589, 36.289722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168869, 32.918789, 36.059429>,  <38.251030, 32.995789, 35.675606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168869, 32.918789, 36.059429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911260, -0.319988, -0.259253,
		0.356954, -0.927659, -0.109692,
		-0.205399, -0.192499, 0.959560,
		38.107250, 32.861038, 36.347298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583710, 32.288319, 35.525387>,  <38.251030, 32.995789, 35.675606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583710, 32.288319, 35.525387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618412, 32.135132, 35.893257>,  <38.639233, 32.043221, 36.113979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618412, 32.135132, 35.893257>,  <38.583710, 32.288319, 35.525387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618412, 32.135132, 35.893257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685486, -0.692825, -0.223834,
		0.722898, -0.611008, -0.322626,
		0.086759, -0.382965, 0.919679,
		38.644440, 32.020241, 36.169163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708908, 31.539787, 35.444832>,  <38.583710, 32.288319, 35.525387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708908, 31.539787, 35.444832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536102, 31.663773, 35.783604>,  <38.432419, 31.738163, 35.986866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536102, 31.663773, 35.783604>,  <38.708908, 31.539787, 35.444832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536102, 31.663773, 35.783604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832115, -0.499123, -0.241784,
		0.347779, -0.809197, 0.473550,
		-0.432011, 0.309961, 0.846930,
		38.406498, 31.756762, 36.037682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403793, 30.990511, 35.732788>,  <38.708908, 31.539787, 35.444832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403793, 30.990511, 35.732788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199211, 31.310816, 35.857487>,  <38.076462, 31.502998, 35.932308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199211, 31.310816, 35.857487>,  <38.403793, 30.990511, 35.732788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199211, 31.310816, 35.857487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859119, -0.484117, -0.165968,
		0.018023, -0.352718, 0.935556,
		-0.511459, 0.800763, 0.311752,
		38.045773, 31.551044, 35.951012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985241, 30.722523, 36.201382>,  <38.403793, 30.990511, 35.732788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985241, 30.722523, 36.201382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831432, 31.063101, 36.058727>,  <37.739147, 31.267447, 35.973137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831432, 31.063101, 36.058727>,  <37.985241, 30.722523, 36.201382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831432, 31.063101, 36.058727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888244, -0.446454, -0.108174,
		-0.251324, 0.275180, 0.927961,
		-0.384524, 0.851443, -0.356631,
		37.716076, 31.318533, 35.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319172, 30.858242, 36.538277>,  <37.985241, 30.722523, 36.201382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319172, 30.858242, 36.538277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325462, 31.018621, 36.171890>,  <37.329235, 31.114849, 35.952057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325462, 31.018621, 36.171890>,  <37.319172, 30.858242, 36.538277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325462, 31.018621, 36.171890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733291, -0.618142, -0.283170,
		-0.679733, 0.676122, 0.284292,
		0.015725, 0.400948, -0.915965,
		37.330181, 31.138906, 35.897102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414623, 31.598549, 36.447685>,  <37.319172, 30.858242, 36.538277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414623, 31.598549, 36.447685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126793, 31.836702, 36.304733>,  <36.954094, 31.979595, 36.218964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126793, 31.836702, 36.304733>,  <37.414623, 31.598549, 36.447685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126793, 31.836702, 36.304733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536934, -0.803413, -0.257351,
		-0.440347, 0.006705, 0.897803,
		-0.719581, 0.595385, -0.357381,
		36.910919, 32.015316, 36.197517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791649, 31.332432, 36.690189>,  <37.414623, 31.598549, 36.447685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791649, 31.332432, 36.690189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719471, 31.542562, 36.357571>,  <36.676167, 31.668640, 36.158001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719471, 31.542562, 36.357571>,  <36.791649, 31.332432, 36.690189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719471, 31.542562, 36.357571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636273, -0.707049, -0.308606,
		-0.750064, 0.473406, 0.461833,
		-0.180443, 0.525327, -0.831548,
		36.665337, 31.700161, 36.108105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202538, 31.269764, 36.601269>,  <36.791649, 31.332432, 36.690189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202538, 31.269764, 36.601269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360126, 31.334959, 36.239445>,  <36.454678, 31.374077, 36.022350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360126, 31.334959, 36.239445>,  <36.202538, 31.269764, 36.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360126, 31.334959, 36.239445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441792, -0.829425, -0.341868,
		-0.805982, 0.534311, -0.254762,
		0.393970, 0.162988, -0.904557,
		36.478317, 31.383856, 35.968079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691753, 31.464224, 36.091824>,  <36.202538, 31.269764, 36.601269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691753, 31.464224, 36.091824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990807, 31.295776, 35.886414>,  <36.170238, 31.194708, 35.763168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990807, 31.295776, 35.886414>,  <35.691753, 31.464224, 36.091824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990807, 31.295776, 35.886414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624024, -0.710055, -0.326216,
		-0.227258, 0.564342, -0.793644,
		0.747628, -0.421118, -0.513528,
		36.215096, 31.169441, 35.732353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505505, 31.319887, 35.368954>,  <35.691753, 31.464224, 36.091824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505505, 31.319887, 35.368954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810360, 31.065531, 35.417591>,  <35.993275, 30.912916, 35.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810360, 31.065531, 35.417591>,  <35.505505, 31.319887, 35.368954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810360, 31.065531, 35.417591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585476, -0.757126, -0.289787,
		0.276335, 0.149668, -0.949336,
		0.762139, -0.635892, 0.121594,
		36.039001, 30.874763, 35.454071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667484, 31.019108, 34.734589>,  <35.505505, 31.319887, 35.368954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667484, 31.019108, 34.734589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803307, 30.754345, 35.001896>,  <35.884800, 30.595488, 35.162281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803307, 30.754345, 35.001896>,  <35.667484, 31.019108, 34.734589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803307, 30.754345, 35.001896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441091, -0.739569, -0.508405,
		0.830745, -0.122131, -0.543090,
		0.339560, -0.661907, 0.668265,
		35.905174, 30.555773, 35.202374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779469, 30.507303, 34.360809>,  <35.667484, 31.019108, 34.734589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779469, 30.507303, 34.360809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738754, 30.367224, 34.733261>,  <35.714325, 30.283176, 34.956734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738754, 30.367224, 34.733261>,  <35.779469, 30.507303, 34.360809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738754, 30.367224, 34.733261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440855, -0.823185, -0.357790,
		0.891789, -0.446910, -0.070600,
		-0.101783, -0.350198, 0.931129,
		35.708218, 30.262165, 35.012600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138344, 30.200628, 34.023155>,  <35.779469, 30.507303, 34.360809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138344, 30.200628, 34.023155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739677, 30.231737, 34.013351>,  <34.500477, 30.250402, 34.007469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739677, 30.231737, 34.013351>,  <35.138344, 30.200628, 34.023155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739677, 30.231737, 34.013351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079767, 0.867474, -0.491046,
		-0.016930, -0.491365, -0.870789,
		-0.996670, 0.077774, -0.024509,
		34.440678, 30.255070, 34.006001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878826, 30.317200, 33.291088>,  <35.138344, 30.200628, 34.023155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878826, 30.317200, 33.291088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629463, 30.462301, 33.568150>,  <34.479847, 30.549362, 33.734386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629463, 30.462301, 33.568150>,  <34.878826, 30.317200, 33.291088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629463, 30.462301, 33.568150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116929, 0.919156, -0.376138,
		-0.773104, -0.153496, -0.615426,
		-0.623409, 0.362754, 0.692655,
		34.442440, 30.571127, 33.775948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337593, 30.616760, 32.939789>,  <34.878826, 30.317200, 33.291088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337593, 30.616760, 32.939789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422867, 30.772635, 33.298164>,  <34.474030, 30.866159, 33.513187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422867, 30.772635, 33.298164>,  <34.337593, 30.616760, 32.939789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422867, 30.772635, 33.298164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029777, 0.913997, -0.404627,
		-0.976559, 0.112938, 0.183243,
		0.213182, 0.389686, 0.895934,
		34.486820, 30.889540, 33.566944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846485, 31.056145, 33.426323>,  <34.337593, 30.616760, 32.939789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846485, 31.056145, 33.426323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226921, 31.177660, 33.448708>,  <34.455185, 31.250570, 33.462139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226921, 31.177660, 33.448708>,  <33.846485, 31.056145, 33.426323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226921, 31.177660, 33.448708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260518, 0.886198, -0.383123,
		-0.165986, 0.349806, 0.922000,
		0.951094, 0.303790, 0.055965,
		34.512249, 31.268797, 33.465496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819237, 31.743670, 33.766529>,  <33.846485, 31.056145, 33.426323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819237, 31.743670, 33.766529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155060, 31.712465, 33.551476>,  <34.356556, 31.693743, 33.422443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155060, 31.712465, 33.551476>,  <33.819237, 31.743670, 33.766529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155060, 31.712465, 33.551476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187241, 0.887448, -0.421162,
		0.509978, 0.454258, 0.730460,
		0.839561, -0.078011, -0.537634,
		34.406929, 31.689062, 33.390186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277729, 32.292973, 33.864464>,  <33.819237, 31.743670, 33.766529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277729, 32.292973, 33.864464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338707, 32.151451, 33.495338>,  <34.375294, 32.066540, 33.273865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338707, 32.151451, 33.495338>,  <34.277729, 32.292973, 33.864464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338707, 32.151451, 33.495338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507064, 0.773468, -0.380307,
		0.848320, 0.525901, -0.061490,
		0.152443, -0.353801, -0.922814,
		34.384441, 32.045311, 33.218494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468704, 32.834438, 33.463573>,  <34.277729, 32.292973, 33.864464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468704, 32.834438, 33.463573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326778, 32.568996, 33.200138>,  <34.241623, 32.409733, 33.042076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326778, 32.568996, 33.200138>,  <34.468704, 32.834438, 33.463573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326778, 32.568996, 33.200138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374381, 0.746324, -0.550308,
		0.856706, 0.051307, -0.513246,
		-0.354814, -0.663602, -0.658589,
		34.220333, 32.369915, 33.002560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651958, 33.272591, 32.877113>,  <34.468704, 32.834438, 33.463573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651958, 33.272591, 32.877113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407532, 32.989616, 32.735058>,  <34.260876, 32.819832, 32.649826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407532, 32.989616, 32.735058>,  <34.651958, 33.272591, 32.877113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407532, 32.989616, 32.735058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196308, 0.570068, -0.797800,
		0.766850, -0.417794, -0.487227,
		-0.611068, -0.707439, -0.355141,
		34.224213, 32.777386, 32.628517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810783, 33.223240, 32.121727>,  <34.651958, 33.272591, 32.877113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810783, 33.223240, 32.121727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446953, 33.071407, 32.189369>,  <34.228657, 32.980309, 32.229954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446953, 33.071407, 32.189369>,  <34.810783, 33.223240, 32.121727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446953, 33.071407, 32.189369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343693, 0.458441, -0.819578,
		0.233568, -0.803586, -0.547444,
		-0.909572, -0.379580, 0.169109,
		34.174080, 32.957535, 32.240101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519634, 33.028519, 31.502150>,  <34.810783, 33.223240, 32.121727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519634, 33.028519, 31.502150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226177, 33.100655, 31.764219>,  <34.050102, 33.143936, 31.921461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226177, 33.100655, 31.764219>,  <34.519634, 33.028519, 31.502150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226177, 33.100655, 31.764219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446748, 0.598504, -0.664988,
		-0.512045, -0.780559, -0.358521,
		-0.733639, 0.180335, 0.655174,
		34.006084, 33.154755, 31.960772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031651, 33.005264, 31.072409>,  <34.519634, 33.028519, 31.502150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031651, 33.005264, 31.072409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880291, 33.166924, 31.405510>,  <33.789474, 33.263920, 31.605371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880291, 33.166924, 31.405510>,  <34.031651, 33.005264, 31.072409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880291, 33.166924, 31.405510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678922, 0.490343, -0.546470,
		-0.629190, -0.772158, 0.088840,
		-0.378399, 0.404149, 0.832754,
		33.766773, 33.288170, 31.655336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302082, 32.899155, 31.008575>,  <34.031651, 33.005264, 31.072409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302082, 32.899155, 31.008575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322937, 33.198185, 31.273428>,  <33.335449, 33.377602, 31.432339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322937, 33.198185, 31.273428>,  <33.302082, 32.899155, 31.008575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322937, 33.198185, 31.273428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700118, 0.500163, -0.509581,
		-0.712122, -0.437002, 0.549465,
		0.052134, 0.747574, 0.662130,
		33.338577, 33.422459, 31.472067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557629, 33.114056, 31.040937>,  <33.302082, 32.899155, 31.008575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557629, 33.114056, 31.040937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810333, 33.391930, 31.178507>,  <32.961956, 33.558655, 31.261049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810333, 33.391930, 31.178507>,  <32.557629, 33.114056, 31.040937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810333, 33.391930, 31.178507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494232, 0.702789, -0.511686,
		-0.597169, 0.153285, 0.787332,
		0.631762, 0.694688, 0.343926,
		32.999863, 33.600338, 31.281685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157070, 33.839981, 31.162369>,  <32.557629, 33.114056, 31.040937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157070, 33.839981, 31.162369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533821, 33.965862, 31.115335>,  <32.759872, 34.041389, 31.087116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533821, 33.965862, 31.115335>,  <32.157070, 33.839981, 31.162369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533821, 33.965862, 31.115335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315919, 0.710646, -0.628632,
		-0.114271, 0.629242, 0.768763,
		0.941880, 0.314701, -0.117583,
		32.816383, 34.060272, 31.080061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114372, 34.545269, 31.236729>,  <32.157070, 33.839981, 31.162369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114372, 34.545269, 31.236729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449417, 34.477467, 31.029007>,  <32.650444, 34.436787, 30.904373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449417, 34.477467, 31.029007>,  <32.114372, 34.545269, 31.236729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449417, 34.477467, 31.029007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170476, 0.822051, -0.543295,
		0.518986, 0.543598, 0.659662,
		0.837610, -0.169506, -0.519304,
		32.700699, 34.426617, 30.873217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320869, 35.246861, 31.107965>,  <32.114372, 34.545269, 31.236729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320869, 35.246861, 31.107965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504265, 35.019432, 30.834755>,  <32.614300, 34.882977, 30.670830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504265, 35.019432, 30.834755>,  <32.320869, 35.246861, 31.107965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504265, 35.019432, 30.834755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220143, 0.671950, -0.707121,
		0.861004, 0.474568, 0.182913,
		0.458485, -0.568567, -0.683025,
		32.641811, 34.848862, 30.629847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717552, 35.747280, 30.823298>,  <32.320869, 35.246861, 31.107965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717552, 35.747280, 30.823298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675537, 35.446209, 30.563316>,  <32.650326, 35.265564, 30.407328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675537, 35.446209, 30.563316>,  <32.717552, 35.747280, 30.823298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675537, 35.446209, 30.563316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248909, 0.652662, -0.715595,
		0.962814, 0.086611, -0.255906,
		-0.105042, -0.752682, -0.649951,
		32.644024, 35.220406, 30.368332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949467, 36.008537, 30.256393>,  <32.717552, 35.747280, 30.823298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949467, 36.008537, 30.256393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734997, 35.692890, 30.136524>,  <32.606316, 35.503502, 30.064602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734997, 35.692890, 30.136524>,  <32.949467, 36.008537, 30.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734997, 35.692890, 30.136524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344686, 0.528752, -0.775637,
		0.770526, -0.312583, -0.555502,
		-0.536174, -0.789122, -0.299674,
		32.574146, 35.456154, 30.046621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063423, 35.968479, 29.606552>,  <32.949467, 36.008537, 30.256393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063423, 35.968479, 29.606552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722145, 35.761665, 29.634083>,  <32.517380, 35.637577, 29.650600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722145, 35.761665, 29.634083>,  <33.063423, 35.968479, 29.606552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722145, 35.761665, 29.634083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362699, 0.493263, -0.790658,
		0.374845, -0.699550, -0.608376,
		-0.853195, -0.517031, 0.068829,
		32.466187, 35.606556, 29.654732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032738, 35.771893, 29.012903>,  <33.063423, 35.968479, 29.606552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032738, 35.771893, 29.012903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659775, 35.743805, 29.154715>,  <32.435997, 35.726952, 29.239801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659775, 35.743805, 29.154715>,  <33.032738, 35.771893, 29.012903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659775, 35.743805, 29.154715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358425, 0.305592, -0.882125,
		-0.046405, -0.949570, -0.310102,
		-0.932405, -0.070213, 0.354530,
		32.380054, 35.722740, 29.261074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687534, 35.546864, 28.468697>,  <33.032738, 35.771893, 29.012903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687534, 35.546864, 28.468697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381947, 35.679115, 28.690338>,  <32.198593, 35.758469, 28.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381947, 35.679115, 28.690338>,  <32.687534, 35.546864, 28.468697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381947, 35.679115, 28.690338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471372, 0.300444, -0.829181,
		-0.440632, -0.894659, -0.073679,
		-0.763971, 0.330633, 0.554103,
		32.152756, 35.778305, 28.856569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021523, 35.287449, 28.278303>,  <32.687534, 35.546864, 28.468697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021523, 35.287449, 28.278303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918158, 35.629784, 28.457535>,  <31.856138, 35.835182, 28.565073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918158, 35.629784, 28.457535>,  <32.021523, 35.287449, 28.278303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918158, 35.629784, 28.457535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489674, 0.283783, -0.824431,
		-0.832732, -0.432454, 0.345747,
		-0.258411, 0.855833, 0.448077,
		31.840633, 35.886532, 28.591957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300299, 35.424068, 28.099747>,  <32.021523, 35.287449, 28.278303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300299, 35.424068, 28.099747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404581, 35.780514, 28.248314>,  <31.467150, 35.994381, 28.337454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404581, 35.780514, 28.248314>,  <31.300299, 35.424068, 28.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404581, 35.780514, 28.248314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467265, 0.453126, -0.759171,
		-0.844806, 0.024369, 0.534518,
		0.260704, 0.891113, 0.371417,
		31.482792, 36.047848, 28.359739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688498, 35.919315, 28.038980>,  <31.300299, 35.424068, 28.099747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688498, 35.919315, 28.038980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025181, 36.131100, 28.081305>,  <31.227190, 36.258171, 28.106699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025181, 36.131100, 28.081305>,  <30.688498, 35.919315, 28.038980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025181, 36.131100, 28.081305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236336, 0.537482, -0.809481,
		-0.485460, 0.656340, 0.577534,
		0.841709, 0.529463, 0.105809,
		31.277693, 36.289940, 28.113047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491268, 36.569675, 27.862942>,  <30.688498, 35.919315, 28.038980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491268, 36.569675, 27.862942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887867, 36.555019, 27.812994>,  <31.125826, 36.546227, 27.783026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887867, 36.555019, 27.812994>,  <30.491268, 36.569675, 27.862942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887867, 36.555019, 27.812994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105263, 0.338377, -0.935105,
		0.076512, 0.940297, 0.331643,
		0.991497, -0.036637, -0.124868,
		31.185316, 36.544029, 27.775534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747410, 37.285362, 27.671865>,  <30.491268, 36.569675, 27.862942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747410, 37.285362, 27.671865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003857, 37.001469, 27.555075>,  <31.157724, 36.831135, 27.485001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003857, 37.001469, 27.555075>,  <30.747410, 37.285362, 27.671865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003857, 37.001469, 27.555075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011411, 0.389228, -0.921071,
		0.767359, 0.587182, 0.257639,
		0.641117, -0.709731, -0.291977,
		31.196192, 36.788548, 27.467482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173609, 37.693268, 27.309761>,  <30.747410, 37.285362, 27.671865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173609, 37.693268, 27.309761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258825, 37.324497, 27.180357>,  <31.309956, 37.103233, 27.102715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258825, 37.324497, 27.180357>,  <31.173609, 37.693268, 27.309761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258825, 37.324497, 27.180357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233694, 0.369581, -0.899332,
		0.948684, 0.115993, 0.294185,
		0.213042, -0.921930, -0.323508,
		31.322739, 37.047916, 27.083305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849802, 37.722183, 26.926161>,  <31.173609, 37.693268, 27.309761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849802, 37.722183, 26.926161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638519, 37.406544, 26.800737>,  <31.511749, 37.217159, 26.725483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638519, 37.406544, 26.800737>,  <31.849802, 37.722183, 26.926161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638519, 37.406544, 26.800737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087163, 0.316938, -0.944432,
		0.844629, -0.526187, -0.098629,
		-0.528208, -0.789099, -0.313560,
		31.480057, 37.169815, 26.706669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950293, 37.812981, 26.227108>,  <31.849802, 37.722183, 26.926161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950293, 37.812981, 26.227108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690346, 37.508995, 26.222557>,  <31.534378, 37.326603, 26.219826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690346, 37.508995, 26.222557>,  <31.950293, 37.812981, 26.227108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690346, 37.508995, 26.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255013, 0.232125, -0.938662,
		0.715990, -0.607104, -0.344651,
		-0.649867, -0.759963, -0.011380,
		31.495386, 37.281006, 26.219143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142040, 37.342491, 25.667030>,  <31.950293, 37.812981, 26.227108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142040, 37.342491, 25.667030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748747, 37.348148, 25.739746>,  <31.512770, 37.351543, 25.783377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748747, 37.348148, 25.739746>,  <32.142040, 37.342491, 25.667030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748747, 37.348148, 25.739746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168340, 0.312716, -0.934810,
		-0.070070, -0.949741, -0.305093,
		-0.983235, 0.014143, 0.181791,
		31.453775, 37.352390, 25.794283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852106, 37.136066, 25.012163>,  <32.142040, 37.342491, 25.667030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852106, 37.136066, 25.012163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524809, 37.271290, 25.198151>,  <31.328430, 37.352425, 25.309744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524809, 37.271290, 25.198151>,  <31.852106, 37.136066, 25.012163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524809, 37.271290, 25.198151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402575, 0.240427, -0.883248,
		-0.410377, -0.909898, -0.060636,
		-0.818244, 0.338055, 0.464968,
		31.279335, 37.372707, 25.337641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302870, 36.804443, 24.727423>,  <31.852106, 37.136066, 25.012163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302870, 36.804443, 24.727423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167364, 37.144375, 24.888931>,  <31.086061, 37.348335, 24.985836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167364, 37.144375, 24.888931>,  <31.302870, 36.804443, 24.727423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167364, 37.144375, 24.888931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406664, 0.254738, -0.877344,
		-0.848448, -0.461410, 0.259300,
		-0.338762, 0.849829, 0.403771,
		31.065735, 37.399323, 25.010063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558743, 36.895985, 24.495855>,  <31.302870, 36.804443, 24.727423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558743, 36.895985, 24.495855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688093, 37.264217, 24.583454>,  <30.765703, 37.485157, 24.636013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688093, 37.264217, 24.583454>,  <30.558743, 36.895985, 24.495855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688093, 37.264217, 24.583454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492651, 0.361379, -0.791644,
		-0.807913, 0.148109, 0.570386,
		0.323375, 0.920581, 0.218997,
		30.785107, 37.540390, 24.649153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924126, 37.285275, 24.484215>,  <30.558743, 36.895985, 24.495855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924126, 37.285275, 24.484215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228498, 37.539146, 24.430302>,  <30.411121, 37.691471, 24.397953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228498, 37.539146, 24.430302>,  <29.924126, 37.285275, 24.484215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228498, 37.539146, 24.430302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497752, 0.437762, -0.748737,
		-0.416204, 0.636826, 0.649020,
		0.760932, 0.634678, -0.134783,
		30.456778, 37.729549, 24.389866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639141, 38.009666, 24.333786>,  <29.924126, 37.285275, 24.484215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639141, 38.009666, 24.333786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020649, 38.047848, 24.219793>,  <30.249554, 38.070759, 24.151398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020649, 38.047848, 24.219793>,  <29.639141, 38.009666, 24.333786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020649, 38.047848, 24.219793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292905, 0.507646, -0.810248,
		0.067325, 0.856261, 0.512137,
		0.953768, 0.095457, -0.284980,
		30.306780, 38.076485, 24.134298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726259, 38.674553, 24.118767>,  <29.639141, 38.009666, 24.333786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726259, 38.674553, 24.118767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048021, 38.501060, 23.956379>,  <30.241079, 38.396965, 23.858946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048021, 38.501060, 23.956379>,  <29.726259, 38.674553, 24.118767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048021, 38.501060, 23.956379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197148, 0.449737, -0.871131,
		0.560412, 0.780780, 0.276263,
		0.804407, -0.433728, -0.405968,
		30.289343, 38.370941, 23.834589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048136, 39.222027, 23.713663>,  <29.726259, 38.674553, 24.118767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048136, 39.222027, 23.713663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217697, 38.880672, 23.592312>,  <30.319433, 38.675858, 23.519501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217697, 38.880672, 23.592312>,  <30.048136, 39.222027, 23.713663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217697, 38.880672, 23.592312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077499, 0.367908, -0.926627,
		0.902387, 0.369287, 0.222094,
		0.423901, -0.853388, -0.303376,
		30.344868, 38.624657, 23.501299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725826, 39.426342, 23.332615>,  <30.048136, 39.222027, 23.713663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725826, 39.426342, 23.332615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593309, 39.076492, 23.191034>,  <30.513800, 38.866585, 23.106085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593309, 39.076492, 23.191034>,  <30.725826, 39.426342, 23.332615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593309, 39.076492, 23.191034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085793, 0.401508, -0.911828,
		0.939620, -0.271713, -0.208052,
		-0.331290, -0.874622, -0.353954,
		30.493923, 38.814106, 23.084848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170368, 39.371284, 22.764688>,  <30.725826, 39.426342, 23.332615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170368, 39.371284, 22.764688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861055, 39.119175, 22.736992>,  <30.675468, 38.967911, 22.720373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861055, 39.119175, 22.736992>,  <31.170368, 39.371284, 22.764688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861055, 39.119175, 22.736992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120120, 0.252844, -0.960021,
		0.622582, -0.734049, -0.271227,
		-0.773281, -0.630272, -0.069242,
		30.629070, 38.930092, 22.716219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329416, 38.874310, 22.227087>,  <31.170368, 39.371284, 22.764688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329416, 38.874310, 22.227087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934172, 38.841286, 22.278965>,  <30.697025, 38.821472, 22.310093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934172, 38.841286, 22.278965>,  <31.329416, 38.874310, 22.227087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934172, 38.841286, 22.278965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148059, 0.283690, -0.947417,
		0.041426, -0.955355, -0.292541,
		-0.988111, -0.082561, 0.129697,
		30.637739, 38.816517, 22.317873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110106, 38.272007, 21.860048>,  <31.329416, 38.874310, 22.227087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110106, 38.272007, 21.860048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824671, 38.546936, 21.914282>,  <30.653410, 38.711895, 21.946821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824671, 38.546936, 21.914282>,  <31.110106, 38.272007, 21.860048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824671, 38.546936, 21.914282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032025, 0.225333, -0.973755,
		-0.699836, -0.690516, -0.182806,
		-0.713585, 0.687323, 0.135582,
		30.610596, 38.753132, 21.954956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511892, 38.208424, 21.262041>,  <31.110106, 38.272007, 21.860048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511892, 38.208424, 21.262041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480156, 38.581661, 21.402353>,  <30.461113, 38.805603, 21.486540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480156, 38.581661, 21.402353>,  <30.511892, 38.208424, 21.262041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480156, 38.581661, 21.402353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183191, 0.359545, -0.914969,
		-0.979870, -0.008336, -0.199461,
		-0.079343, 0.933090, 0.350781,
		30.456352, 38.861588, 21.507587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094103, 38.612118, 20.830690>,  <30.511892, 38.208424, 21.262041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094103, 38.612118, 20.830690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225624, 38.940201, 21.017944>,  <30.304537, 39.137051, 21.130297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225624, 38.940201, 21.017944>,  <30.094103, 38.612118, 20.830690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225624, 38.940201, 21.017944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067372, 0.514803, -0.854657,
		-0.941992, 0.249476, 0.224528,
		0.328805, 0.820207, 0.468133,
		30.324265, 39.186264, 21.158384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646286, 39.236980, 20.569000>,  <30.094103, 38.612118, 20.830690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646286, 39.236980, 20.569000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994059, 39.388927, 20.695358>,  <30.202723, 39.480095, 20.771173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994059, 39.388927, 20.695358>,  <29.646286, 39.236980, 20.569000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994059, 39.388927, 20.695358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046136, 0.574175, -0.817432,
		-0.491892, 0.725276, 0.481681,
		0.869433, 0.379865, 0.315894,
		30.254889, 39.502888, 20.790127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688169, 39.973469, 20.430443>,  <29.646286, 39.236980, 20.569000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688169, 39.973469, 20.430443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071354, 39.878922, 20.495481>,  <30.301266, 39.822193, 20.534504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071354, 39.878922, 20.495481>,  <29.688169, 39.973469, 20.430443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071354, 39.878922, 20.495481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277135, 0.615864, -0.737500,
		0.074185, 0.751559, 0.655481,
		0.957963, -0.236368, 0.162596,
		30.358744, 39.808010, 20.544260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970303, 40.656120, 20.467203>,  <29.688169, 39.973469, 20.430443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970303, 40.656120, 20.467203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263908, 40.391056, 20.407743>,  <30.440073, 40.232018, 20.372066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263908, 40.391056, 20.407743>,  <29.970303, 40.656120, 20.467203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263908, 40.391056, 20.407743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422478, 0.616923, -0.664017,
		0.531726, 0.424597, 0.732792,
		0.734016, -0.662664, -0.148651,
		30.484114, 40.192257, 20.363148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609961, 41.042019, 20.399406>,  <29.970303, 40.656120, 20.467203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609961, 41.042019, 20.399406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703011, 40.697639, 20.218452>,  <30.758841, 40.491013, 20.109880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703011, 40.697639, 20.218452>,  <30.609961, 41.042019, 20.399406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703011, 40.697639, 20.218452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242095, 0.501767, -0.830434,
		0.941952, 0.083661, 0.325156,
		0.232627, -0.860948, -0.452386,
		30.772799, 40.439354, 20.082737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430132, 40.886814, 20.180853>,  <30.609961, 41.042019, 20.399406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430132, 40.886814, 20.180853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159611, 40.706215, 19.948038>,  <30.997299, 40.597855, 19.808350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159611, 40.706215, 19.948038>,  <31.430132, 40.886814, 20.180853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159611, 40.706215, 19.948038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236498, 0.615221, -0.752045,
		0.697627, -0.646260, -0.309297,
		-0.676303, -0.451498, -0.582035,
		30.956720, 40.570766, 19.773428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772909, 40.578762, 19.560146>,  <31.430132, 40.886814, 20.180853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772909, 40.578762, 19.560146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382313, 40.629078, 19.490126>,  <31.147955, 40.659267, 19.448112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382313, 40.629078, 19.490126>,  <31.772909, 40.578762, 19.560146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382313, 40.629078, 19.490126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211035, 0.392291, -0.895306,
		-0.043952, -0.911199, -0.409615,
		-0.976490, 0.125793, -0.175053,
		31.089365, 40.666817, 19.437611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614910, 40.357422, 18.878080>,  <31.772909, 40.578762, 19.560146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614910, 40.357422, 18.878080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366114, 40.657242, 18.968676>,  <31.216835, 40.837135, 19.023033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366114, 40.657242, 18.968676>,  <31.614910, 40.357422, 18.878080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366114, 40.657242, 18.968676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359847, 0.530517, -0.767504,
		-0.695440, -0.395880, -0.599702,
		-0.621991, 0.749554, 0.226487,
		31.179516, 40.882107, 19.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460817, 40.730225, 18.155928>,  <31.614910, 40.357422, 18.878080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460817, 40.730225, 18.155928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441658, 41.039581, 18.408777>,  <31.430162, 41.225193, 18.560486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441658, 41.039581, 18.408777>,  <31.460817, 40.730225, 18.155928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441658, 41.039581, 18.408777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360222, 0.603637, -0.711240,
		-0.931636, 0.193636, -0.307505,
		-0.047900, 0.773387, 0.632122,
		31.427288, 41.271599, 18.598413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272102, 41.158108, 17.727324>,  <31.460817, 40.730225, 18.155928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272102, 41.158108, 17.727324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386679, 41.351074, 18.058437>,  <31.455423, 41.466854, 18.257105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386679, 41.351074, 18.058437>,  <31.272102, 41.158108, 17.727324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386679, 41.351074, 18.058437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548084, 0.626149, -0.554564,
		-0.785848, 0.612543, -0.085053,
		0.286439, 0.482419, 0.827783,
		31.472610, 41.495800, 18.306772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678719, 41.320065, 18.032492>,  <31.272102, 41.158108, 17.727324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678719, 41.320065, 18.032492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643805, 41.122948, 17.686190>,  <30.622856, 41.004677, 17.478409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643805, 41.122948, 17.686190>,  <30.678719, 41.320065, 18.032492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643805, 41.122948, 17.686190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094439, -0.869254, 0.485262,
		-0.991697, -0.039404, 0.122413,
		-0.087287, -0.492794, -0.865757,
		30.617619, 40.975109, 17.426462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520416, 40.591995, 18.338116>,  <30.678719, 41.320065, 18.032492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520416, 40.591995, 18.338116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592020, 40.578991, 17.944792>,  <30.634983, 40.571186, 17.708797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592020, 40.578991, 17.944792>,  <30.520416, 40.591995, 18.338116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592020, 40.578991, 17.944792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192810, -0.978914, 0.067470,
		-0.964769, -0.201670, -0.168967,
		0.179011, -0.032515, -0.983310,
		30.645723, 40.569237, 17.649799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111168, 40.083576, 17.855265>,  <30.520416, 40.591995, 18.338116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111168, 40.083576, 17.855265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491598, 40.149685, 17.750849>,  <30.719856, 40.189350, 17.688200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491598, 40.149685, 17.750849>,  <30.111168, 40.083576, 17.855265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491598, 40.149685, 17.750849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235407, -0.934843, 0.265806,
		-0.200100, -0.314252, -0.928012,
		0.951075, 0.165273, -0.261039,
		30.776920, 40.199268, 17.672537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319717, 39.536674, 17.403898>,  <30.111168, 40.083576, 17.855265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319717, 39.536674, 17.403898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637396, 39.693230, 17.589832>,  <30.828003, 39.787163, 17.701393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637396, 39.693230, 17.589832>,  <30.319717, 39.536674, 17.403898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637396, 39.693230, 17.589832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289347, -0.916240, 0.277096,
		0.534351, -0.085570, -0.840920,
		0.794196, 0.391384, 0.464835,
		30.875654, 39.810646, 17.729282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973074, 39.160748, 17.123713>,  <30.319717, 39.536674, 17.403898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973074, 39.160748, 17.123713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005018, 39.323273, 17.487808>,  <31.024185, 39.420788, 17.706266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005018, 39.323273, 17.487808>,  <30.973074, 39.160748, 17.123713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005018, 39.323273, 17.487808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334853, -0.871026, 0.359426,
		0.938880, 0.276092, -0.205616,
		0.079862, 0.406308, 0.910239,
		31.028976, 39.445164, 17.760880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550980, 39.049305, 17.425097>,  <30.973074, 39.160748, 17.123713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550980, 39.049305, 17.425097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310036, 39.117714, 17.736971>,  <31.165470, 39.158760, 17.924095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310036, 39.117714, 17.736971>,  <31.550980, 39.049305, 17.425097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310036, 39.117714, 17.736971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418790, -0.763836, 0.491090,
		0.679543, 0.622338, 0.388480,
		-0.602359, 0.171026, 0.779688,
		31.129328, 39.169022, 17.970877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038776, 39.033310, 18.048674>,  <31.550980, 39.049305, 17.425097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038776, 39.033310, 18.048674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680502, 39.003609, 18.224049>,  <31.465536, 38.985790, 18.329273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680502, 39.003609, 18.224049>,  <32.038776, 39.033310, 18.048674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680502, 39.003609, 18.224049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301861, -0.825514, 0.476872,
		0.326529, 0.559477, 0.761817,
		-0.895689, -0.074250, 0.438439,
		31.411795, 38.981335, 18.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202061, 38.935127, 18.810633>,  <32.038776, 39.033310, 18.048674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202061, 38.935127, 18.810633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825552, 38.811131, 18.757092>,  <31.599648, 38.736732, 18.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825552, 38.811131, 18.757092>,  <32.202061, 38.935127, 18.810633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825552, 38.811131, 18.757092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150214, -0.739472, 0.656214,
		-0.302399, 0.597569, 0.742608,
		-0.941271, -0.309989, -0.133852,
		31.543171, 38.718136, 18.716936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788996, 38.907387, 19.443115>,  <32.202061, 38.935127, 18.810633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788996, 38.907387, 19.443115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609093, 38.643803, 19.201956>,  <31.501150, 38.485653, 19.057261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609093, 38.643803, 19.201956>,  <31.788996, 38.907387, 19.443115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609093, 38.643803, 19.201956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184240, -0.728958, 0.659300,
		-0.873940, 0.185448, 0.449263,
		-0.449760, -0.658961, -0.602899,
		31.474165, 38.446114, 19.021086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632381, 38.383385, 19.915176>,  <31.788996, 38.907387, 19.443115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632381, 38.383385, 19.915176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602833, 38.205067, 19.558344>,  <31.585104, 38.098076, 19.344244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602833, 38.205067, 19.558344>,  <31.632381, 38.383385, 19.915176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602833, 38.205067, 19.558344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145112, -0.889810, 0.432643,
		-0.986654, -0.097493, 0.130421,
		-0.073870, -0.445794, -0.892082,
		31.580671, 38.071327, 19.290720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116034, 37.852024, 20.009539>,  <31.632381, 38.383385, 19.915176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116034, 37.852024, 20.009539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327450, 37.742279, 19.688198>,  <31.454300, 37.676434, 19.495394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327450, 37.742279, 19.688198>,  <31.116034, 37.852024, 20.009539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327450, 37.742279, 19.688198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183230, -0.887156, 0.423533,
		-0.828897, -0.371052, -0.418628,
		0.528542, -0.274360, -0.803350,
		31.486012, 37.659969, 19.447193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963058, 37.176052, 19.918859>,  <31.116034, 37.852024, 20.009539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963058, 37.176052, 19.918859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291479, 37.220604, 19.694906>,  <31.488531, 37.247334, 19.560534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291479, 37.220604, 19.694906>,  <30.963058, 37.176052, 19.918859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291479, 37.220604, 19.694906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385346, -0.831743, 0.399641,
		-0.421169, -0.543875, -0.725821,
		0.821051, 0.111376, -0.559884,
		31.537794, 37.254017, 19.526941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047424, 36.653339, 19.601816>,  <30.963058, 37.176052, 19.918859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047424, 36.653339, 19.601816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419491, 36.794491, 19.642347>,  <31.642731, 36.879181, 19.666666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419491, 36.794491, 19.642347>,  <31.047424, 36.653339, 19.601816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419491, 36.794491, 19.642347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276822, -0.855398, 0.437795,
		0.241162, -0.379173, -0.893347,
		0.930167, 0.352877, 0.101326,
		31.698542, 36.900352, 19.672745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378937, 36.108742, 19.684673>,  <31.047424, 36.653339, 19.601816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378937, 36.108742, 19.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667097, 36.358097, 19.806274>,  <31.839993, 36.507710, 19.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667097, 36.358097, 19.806274>,  <31.378937, 36.108742, 19.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667097, 36.358097, 19.806274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300429, -0.675545, 0.673336,
		0.625113, -0.393741, -0.673945,
		0.720400, 0.623384, 0.304001,
		31.883217, 36.545113, 19.897474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046921, 35.580299, 19.847855>,  <31.378937, 36.108742, 19.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046921, 35.580299, 19.847855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077805, 35.938652, 20.022867>,  <32.096336, 36.153664, 20.127874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077805, 35.938652, 20.022867>,  <32.046921, 35.580299, 19.847855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077805, 35.938652, 20.022867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254344, -0.442021, 0.860190,
		0.964027, 0.044866, -0.261992,
		0.077213, 0.895882, 0.437532,
		32.100967, 36.207417, 20.154127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694454, 35.528999, 20.176489>,  <32.046921, 35.580299, 19.847855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694454, 35.528999, 20.176489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513634, 35.836510, 20.357435>,  <32.405140, 36.021015, 20.466003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513634, 35.836510, 20.357435>,  <32.694454, 35.528999, 20.176489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513634, 35.836510, 20.357435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183464, -0.416166, 0.890588,
		0.872919, 0.485587, 0.047087,
		-0.452054, 0.768772, 0.452367,
		32.378017, 36.067142, 20.493145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166714, 35.687416, 20.717344>,  <32.694454, 35.528999, 20.176489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166714, 35.687416, 20.717344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808941, 35.830860, 20.824223>,  <32.594276, 35.916927, 20.888350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808941, 35.830860, 20.824223>,  <33.166714, 35.687416, 20.717344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808941, 35.830860, 20.824223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138031, -0.346932, 0.927678,
		0.425369, 0.866626, 0.260808,
		-0.894432, 0.358606, 0.267196,
		32.540611, 35.938442, 20.904381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224899, 35.951271, 21.361349>,  <33.166714, 35.687416, 20.717344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224899, 35.951271, 21.361349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835072, 35.881443, 21.305164>,  <32.601173, 35.839546, 21.271454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835072, 35.881443, 21.305164>,  <33.224899, 35.951271, 21.361349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835072, 35.881443, 21.305164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049962, -0.441792, 0.895725,
		-0.218425, 0.879968, 0.421837,
		-0.974574, -0.174573, -0.140463,
		32.542698, 35.829071, 21.263025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900742, 36.183338, 21.947874>,  <33.224899, 35.951271, 21.361349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900742, 36.183338, 21.947874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646214, 35.915413, 21.794800>,  <32.493496, 35.754658, 21.702955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646214, 35.915413, 21.794800>,  <32.900742, 36.183338, 21.947874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646214, 35.915413, 21.794800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138905, -0.388482, 0.910927,
		-0.758818, 0.632796, 0.154158,
		-0.636319, -0.669814, -0.382685,
		32.455318, 35.714470, 21.679995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210220, 36.331181, 22.243851>,  <32.900742, 36.183338, 21.947874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210220, 36.331181, 22.243851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233311, 35.951107, 22.121334>,  <32.247166, 35.723061, 22.047823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233311, 35.951107, 22.121334>,  <32.210220, 36.331181, 22.243851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233311, 35.951107, 22.121334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398915, -0.303200, 0.865411,
		-0.915169, 0.072233, -0.396545,
		0.057721, -0.950185, -0.306294,
		32.250626, 35.666050, 22.029446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573109, 35.980629, 22.455111>,  <32.210220, 36.331181, 22.243851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573109, 35.980629, 22.455111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805304, 35.663124, 22.382467>,  <31.944620, 35.472622, 22.338882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805304, 35.663124, 22.382467>,  <31.573109, 35.980629, 22.455111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805304, 35.663124, 22.382467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325776, -0.430794, 0.841598,
		-0.746262, -0.429372, -0.508657,
		0.580485, -0.793761, -0.181607,
		31.979448, 35.424995, 22.327986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192942, 35.396248, 22.517220>,  <31.573109, 35.980629, 22.455111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192942, 35.396248, 22.517220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558846, 35.252663, 22.591368>,  <31.778387, 35.166512, 22.635857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558846, 35.252663, 22.591368>,  <31.192942, 35.396248, 22.517220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558846, 35.252663, 22.591368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356435, -0.501092, 0.788581,
		-0.190178, -0.787436, -0.586324,
		0.914760, -0.358958, 0.185373,
		31.833273, 35.144974, 22.646980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062733, 34.581314, 22.749235>,  <31.192942, 35.396248, 22.517220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062733, 34.581314, 22.749235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428164, 34.702625, 22.857607>,  <31.647421, 34.775414, 22.922630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428164, 34.702625, 22.857607>,  <31.062733, 34.581314, 22.749235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428164, 34.702625, 22.857607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001971, -0.669511, 0.742800,
		0.406665, -0.678069, -0.612246,
		0.913575, 0.303278, 0.270930,
		31.702236, 34.793610, 22.938887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409136, 34.023617, 22.914457>,  <31.062733, 34.581314, 22.749235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409136, 34.023617, 22.914457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642349, 34.288811, 23.102297>,  <31.782278, 34.447926, 23.215000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642349, 34.288811, 23.102297>,  <31.409136, 34.023617, 22.914457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642349, 34.288811, 23.102297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188192, -0.672494, 0.715777,
		0.790351, -0.328947, -0.516855,
		0.583034, 0.662983, 0.469601,
		31.817259, 34.487705, 23.243177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010212, 33.729500, 23.050434>,  <31.409136, 34.023617, 22.914457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010212, 33.729500, 23.050434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045986, 34.024979, 23.317667>,  <32.067451, 34.202267, 23.478006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045986, 34.024979, 23.317667>,  <32.010212, 33.729500, 23.050434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045986, 34.024979, 23.317667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250056, -0.665939, 0.702849,
		0.964092, 0.104197, -0.244275,
		0.089437, 0.738694, 0.668082,
		32.072819, 34.246586, 23.518091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653625, 33.563019, 23.441071>,  <32.010212, 33.729500, 23.050434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653625, 33.563019, 23.441071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455685, 33.826874, 23.667345>,  <32.336918, 33.985188, 23.803110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455685, 33.826874, 23.667345>,  <32.653625, 33.563019, 23.441071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455685, 33.826874, 23.667345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237930, -0.523251, 0.818290,
		0.835768, 0.539528, 0.101987,
		-0.494855, 0.659634, 0.565686,
		32.307228, 34.024765, 23.837051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129879, 33.719814, 23.850332>,  <32.653625, 33.563019, 23.441071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129879, 33.719814, 23.850332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777794, 33.814610, 24.014805>,  <32.566544, 33.871487, 24.113487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777794, 33.814610, 24.014805>,  <33.129879, 33.719814, 23.850332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777794, 33.814610, 24.014805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263030, -0.477553, 0.838307,
		0.395028, 0.846038, 0.358012,
		-0.880209, 0.236987, 0.411180,
		32.513733, 33.885704, 24.138159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225639, 33.863075, 24.527960>,  <33.129879, 33.719814, 23.850332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225639, 33.863075, 24.527960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833092, 33.786228, 24.528334>,  <32.597561, 33.740120, 24.528559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833092, 33.786228, 24.528334>,  <33.225639, 33.863075, 24.527960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833092, 33.786228, 24.528334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081825, -0.413554, 0.906795,
		-0.173828, 0.889979, 0.421570,
		-0.981371, -0.192122, 0.000936,
		32.538681, 33.728592, 24.528614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039455, 34.166023, 25.157320>,  <33.225639, 33.863075, 24.527960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039455, 34.166023, 25.157320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760635, 33.897915, 25.055452>,  <32.593342, 33.737049, 24.994331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760635, 33.897915, 25.055452>,  <33.039455, 34.166023, 25.157320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760635, 33.897915, 25.055452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148644, -0.482545, 0.863165,
		-0.701441, 0.563818, 0.435992,
		-0.697054, -0.670268, -0.254669,
		32.551517, 33.696835, 24.979052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421719, 34.192982, 25.598291>,  <33.039455, 34.166023, 25.157320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421719, 34.192982, 25.598291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394768, 33.824497, 25.445013>,  <32.378597, 33.603409, 25.353046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394768, 33.824497, 25.445013>,  <32.421719, 34.192982, 25.598291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394768, 33.824497, 25.445013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083956, -0.377470, 0.922208,
		-0.994189, 0.094306, -0.051908,
		-0.067376, -0.921207, -0.383194,
		32.374554, 33.548134, 25.330055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962372, 33.964581, 26.019562>,  <32.421719, 34.192982, 25.598291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962372, 33.964581, 26.019562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094879, 33.626366, 25.852070>,  <32.174385, 33.423439, 25.751575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094879, 33.626366, 25.852070>,  <31.962372, 33.964581, 26.019562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094879, 33.626366, 25.852070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198845, -0.371260, 0.906988,
		-0.922345, -0.383720, 0.045143,
		0.331269, -0.845533, -0.418730,
		32.194260, 33.372707, 25.726450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614347, 33.489124, 26.348324>,  <31.962372, 33.964581, 26.019562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614347, 33.489124, 26.348324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939941, 33.306652, 26.204475>,  <32.135296, 33.197166, 26.118166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939941, 33.306652, 26.204475>,  <31.614347, 33.489124, 26.348324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939941, 33.306652, 26.204475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243027, -0.294866, 0.924117,
		-0.527609, -0.839612, -0.129151,
		0.813982, -0.456185, -0.359622,
		32.184135, 33.169796, 26.096588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522673, 32.770386, 26.594818>,  <31.614347, 33.489124, 26.348324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522673, 32.770386, 26.594818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904043, 32.864891, 26.519812>,  <32.132866, 32.921593, 26.474808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904043, 32.864891, 26.519812>,  <31.522673, 32.770386, 26.594818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904043, 32.864891, 26.519812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259925, -0.328125, 0.908170,
		0.153035, -0.914612, -0.374253,
		0.953425, 0.236259, -0.187517,
		32.190071, 32.935768, 26.463556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746988, 32.302235, 26.975254>,  <31.522673, 32.770386, 26.594818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746988, 32.302235, 26.975254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078384, 32.516518, 26.910000>,  <32.277222, 32.645088, 26.870848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078384, 32.516518, 26.910000>,  <31.746988, 32.302235, 26.975254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078384, 32.516518, 26.910000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412419, -0.386620, 0.824885,
		0.378829, -0.750691, -0.541250,
		0.828492, 0.535712, -0.163137,
		32.326931, 32.677231, 26.861059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267075, 31.863262, 27.183350>,  <31.746988, 32.302235, 26.975254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267075, 31.863262, 27.183350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426044, 32.230236, 27.175695>,  <32.521427, 32.450420, 27.171103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426044, 32.230236, 27.175695>,  <32.267075, 31.863262, 27.183350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426044, 32.230236, 27.175695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488148, -0.193712, 0.850992,
		0.777022, -0.347548, -0.524830,
		0.397426, 0.917435, -0.019136,
		32.545273, 32.505466, 27.169954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999413, 31.890560, 26.980213>,  <32.267075, 31.863262, 27.183350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999413, 31.890560, 26.980213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896065, 32.206764, 27.202326>,  <32.834057, 32.396484, 27.335594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896065, 32.206764, 27.202326>,  <32.999413, 31.890560, 26.980213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896065, 32.206764, 27.202326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597891, -0.320634, 0.734656,
		0.758795, 0.521815, -0.389795,
		-0.258373, 0.790508, 0.555284,
		32.818554, 32.443916, 27.368912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580776, 32.207573, 27.233576>,  <32.999413, 31.890560, 26.980213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580776, 32.207573, 27.233576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291618, 32.343498, 27.474224>,  <33.118122, 32.425053, 27.618612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291618, 32.343498, 27.474224>,  <33.580776, 32.207573, 27.233576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291618, 32.343498, 27.474224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613406, -0.085165, 0.785162,
		0.318044, 0.936630, -0.146876,
		-0.722898, 0.339811, 0.601621,
		33.074749, 32.445442, 27.654711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983429, 32.616646, 27.718941>,  <33.580776, 32.207573, 27.233576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983429, 32.616646, 27.718941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632256, 32.531479, 27.890476>,  <33.421551, 32.480381, 27.993397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632256, 32.531479, 27.890476>,  <33.983429, 32.616646, 27.718941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632256, 32.531479, 27.890476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478657, -0.369624, 0.796408,
		-0.011058, 0.904458, 0.426418,
		-0.877932, -0.212915, 0.428838,
		33.368877, 32.467606, 28.019127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015476, 32.807888, 28.427425>,  <33.983429, 32.616646, 27.718941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015476, 32.807888, 28.427425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705124, 32.555595, 28.421982>,  <33.518913, 32.404221, 28.418716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705124, 32.555595, 28.421982>,  <34.015476, 32.807888, 28.427425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705124, 32.555595, 28.421982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312708, -0.403225, 0.860014,
		-0.547924, 0.663014, 0.510090,
		-0.775882, -0.630731, -0.013607,
		33.472359, 32.366375, 28.417900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918446, 32.685432, 29.133991>,  <34.015476, 32.807888, 28.427425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918446, 32.685432, 29.133991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722252, 32.395184, 28.940954>,  <33.604534, 32.221035, 28.825132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722252, 32.395184, 28.940954>,  <33.918446, 32.685432, 29.133991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722252, 32.395184, 28.940954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326232, -0.666406, 0.670430,
		-0.808082, 0.171399, 0.563583,
		-0.490486, -0.725621, -0.482594,
		33.575108, 32.177498, 28.796175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458950, 32.348392, 29.631874>,  <33.918446, 32.685432, 29.133991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458950, 32.348392, 29.631874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527294, 32.093880, 29.330956>,  <33.568302, 31.941172, 29.150404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527294, 32.093880, 29.330956>,  <33.458950, 32.348392, 29.631874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527294, 32.093880, 29.330956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412279, -0.647300, 0.641116,
		-0.894892, -0.419700, 0.151725,
		0.170865, -0.636282, -0.752297,
		33.578552, 31.902994, 29.105267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258884, 31.672979, 29.910034>,  <33.458950, 32.348392, 29.631874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258884, 31.672979, 29.910034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491539, 31.602333, 29.592415>,  <33.631130, 31.559946, 29.401844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491539, 31.602333, 29.592415>,  <33.258884, 31.672979, 29.910034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491539, 31.602333, 29.592415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546991, -0.637586, 0.542481,
		-0.602081, -0.749861, -0.274238,
		0.581635, -0.176612, -0.794046,
		33.666031, 31.549349, 29.354200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285942, 30.969614, 29.962753>,  <33.258884, 31.672979, 29.910034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285942, 30.969614, 29.962753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587696, 31.063271, 29.717449>,  <33.768749, 31.119465, 29.570267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587696, 31.063271, 29.717449>,  <33.285942, 30.969614, 29.962753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587696, 31.063271, 29.717449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580109, -0.675014, 0.455884,
		-0.307219, -0.699668, -0.645044,
		0.754381, 0.234139, -0.613260,
		33.814011, 31.133512, 29.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533504, 30.458082, 29.628508>,  <33.285942, 30.969614, 29.962753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533504, 30.458082, 29.628508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849361, 30.703367, 29.620190>,  <34.038876, 30.850538, 29.615198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849361, 30.703367, 29.620190>,  <33.533504, 30.458082, 29.628508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849361, 30.703367, 29.620190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576033, -0.729242, 0.369313,
		0.211303, -0.303605, -0.929072,
		0.789644, 0.613213, -0.020796,
		34.086254, 30.887331, 29.613951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057682, 30.069906, 29.348707>,  <33.533504, 30.458082, 29.628508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057682, 30.069906, 29.348707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256657, 30.350721, 29.552551>,  <34.376041, 30.519211, 29.674858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256657, 30.350721, 29.552551>,  <34.057682, 30.069906, 29.348707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256657, 30.350721, 29.552551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643664, -0.692528, 0.325732,
		0.581593, 0.165985, -0.796365,
		0.497439, 0.702035, 0.509608,
		34.405888, 30.561333, 29.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854103, 29.995979, 29.201574>,  <34.057682, 30.069906, 29.348707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854103, 29.995979, 29.201574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772461, 30.175745, 29.549452>,  <34.723476, 30.283604, 29.758179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772461, 30.175745, 29.549452>,  <34.854103, 29.995979, 29.201574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772461, 30.175745, 29.549452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766578, -0.479158, 0.427511,
		0.608850, 0.753947, -0.246711,
		-0.204107, 0.449413, 0.869694,
		34.711227, 30.310570, 29.810360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475185, 29.449894, 28.962448>,  <34.854103, 29.995979, 29.201574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475185, 29.449894, 28.962448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190014, 29.177973, 29.031279>,  <34.018913, 29.014820, 29.072577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190014, 29.177973, 29.031279>,  <34.475185, 29.449894, 28.962448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190014, 29.177973, 29.031279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104693, -0.139454, -0.984679,
		0.693382, -0.720016, 0.028250,
		-0.712924, -0.679801, 0.172076,
		33.976135, 28.974033, 29.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649029, 28.974377, 28.445023>,  <34.475185, 29.449894, 28.962448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649029, 28.974377, 28.445023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271023, 28.898500, 28.551580>,  <34.044220, 28.852974, 28.615515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271023, 28.898500, 28.551580>,  <34.649029, 28.974377, 28.445023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271023, 28.898500, 28.551580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268693, -0.013988, -0.963124,
		0.186425, -0.981744, -0.037750,
		-0.945013, -0.189693, 0.266396,
		33.987518, 28.841593, 28.631498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440815, 28.417448, 28.022318>,  <34.649029, 28.974377, 28.445023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440815, 28.417448, 28.022318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112129, 28.605705, 28.150867>,  <33.914917, 28.718658, 28.227997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112129, 28.605705, 28.150867>,  <34.440815, 28.417448, 28.022318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112129, 28.605705, 28.150867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385042, -0.042750, -0.921908,
		-0.420150, -0.881288, 0.216345,
		-0.821716, 0.470642, 0.321372,
		33.865616, 28.746899, 28.247278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984005, 28.055195, 27.797657>,  <34.440815, 28.417448, 28.022318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984005, 28.055195, 27.797657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823425, 28.418175, 27.847260>,  <33.727077, 28.635963, 27.877022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823425, 28.418175, 27.847260>,  <33.984005, 28.055195, 27.797657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823425, 28.418175, 27.847260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324015, -0.014072, -0.945947,
		-0.856654, -0.419926, 0.299677,
		-0.401445, 0.907449, 0.124008,
		33.702991, 28.690409, 27.884462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502483, 28.088371, 27.193888>,  <33.984005, 28.055195, 27.797657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502483, 28.088371, 27.193888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511162, 28.465105, 27.328039>,  <33.516369, 28.691145, 27.408529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511162, 28.465105, 27.328039>,  <33.502483, 28.088371, 27.193888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511162, 28.465105, 27.328039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196111, 0.332949, -0.922326,
		-0.980342, -0.045760, 0.191928,
		0.021697, 0.941834, 0.335378,
		33.517670, 28.747656, 27.428652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886471, 28.459412, 27.024303>,  <33.502483, 28.088371, 27.193888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886471, 28.459412, 27.024303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177105, 28.732941, 27.050995>,  <33.351486, 28.897058, 27.067011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177105, 28.732941, 27.050995>,  <32.886471, 28.459412, 27.024303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177105, 28.732941, 27.050995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346520, 0.448584, -0.823831,
		-0.593289, 0.575463, 0.562895,
		0.726590, 0.683823, 0.066730,
		33.395081, 28.938087, 27.071014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540104, 29.065802, 26.972246>,  <32.886471, 28.459412, 27.024303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540104, 29.065802, 26.972246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919018, 29.123964, 26.858042>,  <33.146366, 29.158861, 26.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919018, 29.123964, 26.858042>,  <32.540104, 29.065802, 26.972246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919018, 29.123964, 26.858042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308920, 0.650917, -0.693452,
		0.085011, 0.745094, 0.661520,
		0.947281, 0.145405, -0.285509,
		33.203201, 29.167585, 26.772388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541954, 29.809221, 26.848873>,  <32.540104, 29.065802, 26.972246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541954, 29.809221, 26.848873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875847, 29.663439, 26.683758>,  <33.076183, 29.575970, 26.584688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875847, 29.663439, 26.683758>,  <32.541954, 29.809221, 26.848873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875847, 29.663439, 26.683758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258222, 0.403025, -0.878005,
		0.486361, 0.839489, 0.242306,
		0.834730, -0.364458, -0.412790,
		33.126266, 29.554102, 26.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725033, 30.376410, 26.450134>,  <32.541954, 29.809221, 26.848873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725033, 30.376410, 26.450134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935642, 30.069214, 26.304277>,  <33.062008, 29.884897, 26.216763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935642, 30.069214, 26.304277>,  <32.725033, 30.376410, 26.450134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935642, 30.069214, 26.304277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033947, 0.409576, -0.911644,
		0.849480, 0.492383, 0.189582,
		0.526527, -0.767988, -0.364641,
		33.093601, 29.838818, 26.194885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348999, 30.658754, 26.066082>,  <32.725033, 30.376410, 26.450134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348999, 30.658754, 26.066082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311665, 30.288330, 25.919825>,  <33.289265, 30.066074, 25.832069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311665, 30.288330, 25.919825>,  <33.348999, 30.658754, 26.066082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311665, 30.288330, 25.919825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159728, 0.376420, -0.912576,
		0.982738, -0.026775, -0.183052,
		-0.093339, -0.926062, -0.365645,
		33.283665, 30.010511, 25.810131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770069, 30.590895, 25.598867>,  <33.348999, 30.658754, 26.066082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770069, 30.590895, 25.598867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507355, 30.307497, 25.495590>,  <33.349724, 30.137459, 25.433624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507355, 30.307497, 25.495590>,  <33.770069, 30.590895, 25.598867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507355, 30.307497, 25.495590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085074, 0.409833, -0.908185,
		0.749260, -0.574520, -0.329448,
		-0.656789, -0.708494, -0.258195,
		33.310318, 30.094950, 25.418131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088802, 30.300724, 25.131544>,  <33.770069, 30.590895, 25.598867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088802, 30.300724, 25.131544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697487, 30.241007, 25.074057>,  <33.462696, 30.205175, 25.039564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697487, 30.241007, 25.074057>,  <34.088802, 30.300724, 25.131544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697487, 30.241007, 25.074057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045236, 0.522948, -0.851163,
		0.202231, -0.839188, -0.504843,
		-0.978293, -0.149294, -0.143718,
		33.403999, 30.196218, 25.030941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059982, 30.259378, 24.503563>,  <34.088802, 30.300724, 25.131544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059982, 30.259378, 24.503563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669167, 30.300783, 24.578054>,  <33.434677, 30.325626, 24.622749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669167, 30.300783, 24.578054>,  <34.059982, 30.259378, 24.503563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669167, 30.300783, 24.578054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108168, 0.512063, -0.852110,
		-0.183564, -0.852688, -0.489108,
		-0.977038, 0.103511, 0.186230,
		33.376057, 30.331837, 24.633923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779667, 29.965551, 23.891460>,  <34.059982, 30.259378, 24.503563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779667, 29.965551, 23.891460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474850, 30.168976, 24.051786>,  <33.291958, 30.291031, 24.147982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474850, 30.168976, 24.051786>,  <33.779667, 29.965551, 23.891460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474850, 30.168976, 24.051786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259304, 0.327522, -0.908565,
		-0.593337, -0.796300, -0.117715,
		-0.762045, 0.508561, 0.400815,
		33.246235, 30.321545, 24.172031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243660, 29.920753, 23.384136>,  <33.779667, 29.965551, 23.891460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243660, 29.920753, 23.384136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163246, 30.226585, 23.629087>,  <33.114998, 30.410084, 23.776058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163246, 30.226585, 23.629087>,  <33.243660, 29.920753, 23.384136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163246, 30.226585, 23.629087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237115, 0.568571, -0.787721,
		-0.950454, -0.303559, 0.066993,
		-0.201030, 0.764578, 0.612379,
		33.102936, 30.455959, 23.812801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650185, 30.195234, 23.124763>,  <33.243660, 29.920753, 23.384136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650185, 30.195234, 23.124763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781792, 30.515652, 23.324795>,  <32.860756, 30.707903, 23.444815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781792, 30.515652, 23.324795>,  <32.650185, 30.195234, 23.124763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781792, 30.515652, 23.324795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255612, 0.585340, -0.769441,
		-0.909072, 0.125331, 0.397341,
		0.329014, 0.801043, 0.500080,
		32.880497, 30.755964, 23.474819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217697, 30.854099, 22.935772>,  <32.650185, 30.195234, 23.124763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217697, 30.854099, 22.935772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568871, 30.979036, 23.080919>,  <32.779575, 31.053999, 23.168009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568871, 30.979036, 23.080919>,  <32.217697, 30.854099, 22.935772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568871, 30.979036, 23.080919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006373, 0.765455, -0.643457,
		-0.478741, 0.562600, 0.674009,
		0.877933, 0.312345, 0.362869,
		32.832249, 31.072741, 23.189779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050816, 31.539331, 23.167393>,  <32.217697, 30.854099, 22.935772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050816, 31.539331, 23.167393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439156, 31.509335, 23.076324>,  <32.672157, 31.491337, 23.021683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439156, 31.509335, 23.076324>,  <32.050816, 31.539331, 23.167393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439156, 31.509335, 23.076324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082811, 0.786388, -0.612157,
		0.224944, 0.613164, 0.757251,
		0.970846, -0.074992, -0.227670,
		32.730408, 31.486837, 23.008024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287605, 32.217934, 23.223347>,  <32.050816, 31.539331, 23.167393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287605, 32.217934, 23.223347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563889, 32.044827, 22.991610>,  <32.729656, 31.940962, 22.852568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563889, 32.044827, 22.991610>,  <32.287605, 32.217934, 23.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563889, 32.044827, 22.991610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033512, 0.819447, -0.572174,
		0.722359, 0.375788, 0.580500,
		0.690706, -0.432769, -0.579342,
		32.771099, 31.914995, 22.817806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670887, 32.747494, 22.994843>,  <32.287605, 32.217934, 23.223347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670887, 32.747494, 22.994843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797180, 32.476639, 22.728973>,  <32.872955, 32.314125, 22.569452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797180, 32.476639, 22.728973>,  <32.670887, 32.747494, 22.994843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797180, 32.476639, 22.728973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113978, 0.668366, -0.735048,
		0.941976, 0.307840, 0.133849,
		0.315737, -0.677142, -0.664672,
		32.891903, 32.273495, 22.529572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304722, 32.927395, 22.504343>,  <32.670887, 32.747494, 22.994843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304722, 32.927395, 22.504343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096104, 32.645924, 22.311338>,  <32.970932, 32.477039, 22.195536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096104, 32.645924, 22.311338>,  <33.304722, 32.927395, 22.504343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096104, 32.645924, 22.311338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287625, 0.677419, -0.677034,
		0.803281, -0.214322, -0.555703,
		-0.521547, -0.703683, -0.482514,
		32.939640, 32.434818, 22.166584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515530, 32.880028, 21.762465>,  <33.304722, 32.927395, 22.504343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515530, 32.880028, 21.762465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140968, 32.739819, 21.769169>,  <32.916233, 32.655693, 21.773191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140968, 32.739819, 21.769169>,  <33.515530, 32.880028, 21.762465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140968, 32.739819, 21.769169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222390, 0.555803, -0.801016,
		0.271460, -0.753801, -0.598409,
		-0.936404, -0.350524, 0.016760,
		32.860046, 32.634663, 21.774197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268375, 33.141304, 21.082748>,  <33.515530, 32.880028, 21.762465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268375, 33.141304, 21.082748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933559, 32.983288, 21.234169>,  <32.732670, 32.888477, 21.325022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933559, 32.983288, 21.234169>,  <33.268375, 33.141304, 21.082748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933559, 32.983288, 21.234169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547129, 0.600713, -0.582918,
		0.002876, -0.695044, -0.718962,
		-0.837043, -0.395041, 0.378550,
		32.682446, 32.864777, 21.347734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793350, 32.711472, 20.534004>,  <33.268375, 33.141304, 21.082748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793350, 32.711472, 20.534004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559105, 32.844875, 20.829525>,  <32.418560, 32.924919, 21.006838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559105, 32.844875, 20.829525>,  <32.793350, 32.711472, 20.534004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559105, 32.844875, 20.829525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599210, 0.435702, -0.671648,
		-0.545901, -0.836022, -0.055308,
		-0.585611, 0.333513, 0.738803,
		32.383423, 32.944927, 21.051167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063175, 32.480885, 20.519911>,  <32.793350, 32.711472, 20.534004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063175, 32.480885, 20.519911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045509, 32.822327, 20.727526>,  <32.034908, 33.027191, 20.852095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045509, 32.822327, 20.727526>,  <32.063175, 32.480885, 20.519911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045509, 32.822327, 20.727526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722609, 0.331461, -0.606605,
		-0.689845, -0.401853, 0.602187,
		-0.044165, 0.853609, 0.519039,
		32.032261, 33.078411, 20.883238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412367, 32.468143, 20.703209>,  <32.063175, 32.480885, 20.519911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412367, 32.468143, 20.703209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546429, 32.844727, 20.717817>,  <31.626865, 33.070675, 20.726583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546429, 32.844727, 20.717817>,  <31.412367, 32.468143, 20.703209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546429, 32.844727, 20.717817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743004, 0.287947, -0.604178,
		-0.579323, 0.175358, 0.796012,
		0.335157, 0.941454, 0.036523,
		31.646976, 33.127163, 20.728775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818548, 32.816414, 20.551548>,  <31.412367, 32.468143, 20.703209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818548, 32.816414, 20.551548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089270, 33.110859, 20.547989>,  <31.251703, 33.287525, 20.545855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089270, 33.110859, 20.547989>,  <30.818548, 32.816414, 20.551548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089270, 33.110859, 20.547989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567533, 0.514038, -0.643172,
		-0.468871, 0.440351, 0.765670,
		0.676805, 0.736108, -0.008896,
		31.292311, 33.331692, 20.545321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463959, 33.375877, 20.668612>,  <30.818548, 32.816414, 20.551548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463959, 33.375877, 20.668612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784731, 33.515648, 20.474783>,  <30.977194, 33.599510, 20.358486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784731, 33.515648, 20.474783>,  <30.463959, 33.375877, 20.668612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784731, 33.515648, 20.474783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590570, 0.586146, -0.554670,
		0.090212, 0.730979, 0.676410,
		0.801928, 0.349430, -0.484572,
		31.025309, 33.620476, 20.329411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404589, 34.191757, 20.740257>,  <30.463959, 33.375877, 20.668612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404589, 34.191757, 20.740257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641136, 34.097404, 20.431805>,  <30.783064, 34.040794, 20.246733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641136, 34.097404, 20.431805>,  <30.404589, 34.191757, 20.740257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641136, 34.097404, 20.431805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569275, 0.555176, -0.606387,
		0.571150, 0.797584, 0.194032,
		0.591367, -0.235880, -0.771133,
		30.818546, 34.026642, 20.200464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509417, 34.949677, 20.439056>,  <30.404589, 34.191757, 20.740257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509417, 34.949677, 20.439056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591976, 34.636726, 20.204010>,  <30.641512, 34.448956, 20.062983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591976, 34.636726, 20.204010>,  <30.509417, 34.949677, 20.439056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591976, 34.636726, 20.204010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452997, 0.455907, -0.766122,
		0.867291, 0.424315, -0.260313,
		0.206399, -0.782372, -0.587617,
		30.653896, 34.402016, 20.027725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704697, 35.204098, 19.897343>,  <30.509417, 34.949677, 20.439056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704697, 35.204098, 19.897343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580511, 34.840374, 19.786518>,  <30.506001, 34.622139, 19.720024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580511, 34.840374, 19.786518>,  <30.704697, 35.204098, 19.897343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580511, 34.840374, 19.786518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554115, 0.409942, -0.724502,
		0.772378, -0.071407, -0.631136,
		-0.310464, -0.909312, -0.277062,
		30.487371, 34.567581, 19.703400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859825, 35.111656, 19.165037>,  <30.704697, 35.204098, 19.897343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859825, 35.111656, 19.165037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585436, 34.826115, 19.221411>,  <30.420803, 34.654789, 19.255236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585436, 34.826115, 19.221411>,  <30.859825, 35.111656, 19.165037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585436, 34.826115, 19.221411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481201, 0.299773, -0.823760,
		0.545793, -0.632893, -0.549141,
		-0.685970, -0.713850, 0.140935,
		30.379644, 34.611961, 19.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811563, 34.840805, 18.492973>,  <30.859825, 35.111656, 19.165037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811563, 34.840805, 18.492973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474627, 34.725605, 18.675190>,  <30.272465, 34.656487, 18.784519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474627, 34.725605, 18.675190>,  <30.811563, 34.840805, 18.492973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474627, 34.725605, 18.675190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531747, 0.306469, -0.789507,
		0.087766, -0.907268, -0.411293,
		-0.842343, -0.287996, 0.455540,
		30.221924, 34.639206, 18.811852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352036, 34.416203, 18.062231>,  <30.811563, 34.840805, 18.492973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352036, 34.416203, 18.062231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106182, 34.590252, 18.325409>,  <29.958670, 34.694683, 18.483315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106182, 34.590252, 18.325409>,  <30.352036, 34.416203, 18.062231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106182, 34.590252, 18.325409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572065, 0.328400, -0.751595,
		-0.543109, -0.838342, 0.047076,
		-0.614634, 0.435128, 0.657943,
		29.921791, 34.720791, 18.522793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689493, 34.367386, 17.676552>,  <30.352036, 34.416203, 18.062231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689493, 34.367386, 17.676552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601027, 34.628922, 17.965988>,  <29.547947, 34.785843, 18.139650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601027, 34.628922, 17.965988>,  <29.689493, 34.367386, 17.676552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601027, 34.628922, 17.965988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589938, 0.501119, -0.633130,
		-0.776568, -0.566900, 0.274893,
		-0.221167, 0.653838, 0.723589,
		29.534676, 34.825073, 18.183065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986336, 34.346573, 17.753683>,  <29.689493, 34.367386, 17.676552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986336, 34.346573, 17.753683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108229, 34.700939, 17.893566>,  <29.181364, 34.913559, 17.977495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108229, 34.700939, 17.893566>,  <28.986336, 34.346573, 17.753683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108229, 34.700939, 17.893566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581216, 0.463848, -0.668605,
		-0.754537, 0.000490, 0.656257,
		0.304731, 0.885915, 0.349706,
		29.199648, 34.966713, 17.998478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353636, 34.724434, 18.000196>,  <28.986336, 34.346573, 17.753683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353636, 34.724434, 18.000196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625256, 35.011078, 17.936489>,  <28.788227, 35.183064, 17.898264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625256, 35.011078, 17.936489>,  <28.353636, 34.724434, 18.000196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625256, 35.011078, 17.936489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712273, 0.590668, -0.379181,
		-0.177648, 0.370926, 0.911512,
		0.679049, 0.716606, -0.159270,
		28.828970, 35.226059, 17.888708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534000, 34.754528, 18.223373>,  <28.353636, 34.724434, 18.000196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534000, 34.754528, 18.223373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158506, 34.855900, 18.316799>,  <26.933210, 34.916721, 18.372854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158506, 34.855900, 18.316799>,  <27.534000, 34.754528, 18.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158506, 34.855900, 18.316799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019024, -0.638562, 0.769335,
		0.344118, 0.726644, 0.594618,
		-0.938734, 0.253430, 0.233564,
		26.876886, 34.931931, 18.386868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556780, 35.105171, 18.880753>,  <27.534000, 34.754528, 18.223373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556780, 35.105171, 18.880753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190853, 34.952755, 18.827202>,  <26.971298, 34.861305, 18.795073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190853, 34.952755, 18.827202>,  <27.556780, 35.105171, 18.880753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190853, 34.952755, 18.827202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011317, -0.355533, 0.934595,
		-0.403713, 0.853467, 0.329560,
		-0.914816, -0.381037, -0.133875,
		26.916409, 34.838444, 18.787039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214155, 35.216572, 19.475397>,  <27.556780, 35.105171, 18.880753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214155, 35.216572, 19.475397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983879, 34.931152, 19.315683>,  <26.845715, 34.759899, 19.219856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983879, 34.931152, 19.315683>,  <27.214155, 35.216572, 19.475397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983879, 34.931152, 19.315683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030634, -0.506797, 0.861521,
		-0.817095, 0.483736, 0.313616,
		-0.575689, -0.713552, -0.399282,
		26.811172, 34.717087, 19.195898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617294, 35.050594, 19.928911>,  <27.214155, 35.216572, 19.475397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617294, 35.050594, 19.928911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669672, 34.726410, 19.700523>,  <26.701099, 34.531898, 19.563490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669672, 34.726410, 19.700523>,  <26.617294, 35.050594, 19.928911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669672, 34.726410, 19.700523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022122, -0.573398, 0.818978,
		-0.991143, -0.119871, -0.057154,
		0.130944, -0.810460, -0.570971,
		26.708956, 34.483273, 19.529232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280020, 34.484165, 20.316322>,  <26.617294, 35.050594, 19.928911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280020, 34.484165, 20.316322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497925, 34.298225, 20.037138>,  <26.628668, 34.186661, 19.869627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497925, 34.298225, 20.037138>,  <26.280020, 34.484165, 20.316322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497925, 34.298225, 20.037138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207554, -0.731665, 0.649298,
		-0.812500, -0.498577, -0.302100,
		0.544761, -0.464853, -0.697959,
		26.661354, 34.158772, 19.827751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102650, 33.795433, 20.308096>,  <26.280020, 34.484165, 20.316322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102650, 33.795433, 20.308096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470531, 33.797958, 20.151070>,  <26.691259, 33.799473, 20.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470531, 33.797958, 20.151070>,  <26.102650, 33.795433, 20.308096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470531, 33.797958, 20.151070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306159, -0.637494, 0.707013,
		-0.245790, -0.770429, -0.588240,
		0.919703, 0.006318, -0.392564,
		26.746443, 33.799854, 20.033300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369556, 33.096767, 20.319733>,  <26.102650, 33.795433, 20.308096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369556, 33.096767, 20.319733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702667, 33.315754, 20.286833>,  <26.902533, 33.447147, 20.267092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702667, 33.315754, 20.286833>,  <26.369556, 33.096767, 20.319733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702667, 33.315754, 20.286833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453332, -0.589082, 0.668934,
		0.317766, -0.594359, -0.738757,
		0.832776, 0.547466, -0.082252,
		26.952499, 33.479992, 20.262157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883078, 32.557327, 20.377926>,  <26.369556, 33.096767, 20.319733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883078, 32.557327, 20.377926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069571, 32.907230, 20.430723>,  <27.181465, 33.117172, 20.462400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069571, 32.907230, 20.430723>,  <26.883078, 32.557327, 20.377926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069571, 32.907230, 20.430723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611130, -0.426348, 0.666894,
		0.639648, -0.230262, -0.733369,
		0.466231, 0.874761, 0.131992,
		27.209440, 33.169659, 20.470322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501474, 32.384968, 20.318567>,  <26.883078, 32.557327, 20.377926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501474, 32.384968, 20.318567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524576, 32.725105, 20.527788>,  <27.538437, 32.929188, 20.653320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524576, 32.725105, 20.527788>,  <27.501474, 32.384968, 20.318567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524576, 32.725105, 20.527788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638154, -0.434357, 0.635684,
		0.767740, 0.297072, -0.567736,
		0.057757, 0.850343, 0.523050,
		27.541903, 32.980209, 20.684704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217110, 32.484352, 20.424421>,  <27.501474, 32.384968, 20.318567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217110, 32.484352, 20.424421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003292, 32.684761, 20.696667>,  <27.875002, 32.805008, 20.860014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003292, 32.684761, 20.696667>,  <28.217110, 32.484352, 20.424421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003292, 32.684761, 20.696667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554121, -0.400299, 0.729871,
		0.638133, 0.767291, -0.063651,
		-0.534543, 0.501025, 0.680615,
		27.842930, 32.835068, 20.900852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700871, 32.699509, 20.825151>,  <28.217110, 32.484352, 20.424421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700871, 32.699509, 20.825151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379793, 32.767769, 21.053734>,  <28.187147, 32.808727, 21.190884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379793, 32.767769, 21.053734>,  <28.700871, 32.699509, 20.825151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379793, 32.767769, 21.053734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495298, -0.342993, 0.798145,
		0.332212, 0.923706, 0.190793,
		-0.802692, 0.170654, 0.571456,
		28.138985, 32.818966, 21.225170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921486, 33.108894, 21.330326>,  <28.700871, 32.699509, 20.825151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921486, 33.108894, 21.330326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601013, 32.921021, 21.478653>,  <28.408730, 32.808296, 21.567650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601013, 32.921021, 21.478653>,  <28.921486, 33.108894, 21.330326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601013, 32.921021, 21.478653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524025, -0.251415, 0.813750,
		-0.288973, 0.846280, 0.447554,
		-0.801182, -0.469681, 0.370820,
		28.360659, 32.780117, 21.589899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878017, 33.368832, 22.029728>,  <28.921486, 33.108894, 21.330326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878017, 33.368832, 22.029728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676397, 33.024246, 22.005014>,  <28.555426, 32.817493, 21.990187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676397, 33.024246, 22.005014>,  <28.878017, 33.368832, 22.029728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676397, 33.024246, 22.005014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481001, -0.339411, 0.808355,
		-0.717337, 0.377733, 0.585444,
		-0.504049, -0.861463, -0.061782,
		28.525183, 32.765808, 21.986479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620134, 33.160931, 22.748447>,  <28.878017, 33.368832, 22.029728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620134, 33.160931, 22.748447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678804, 32.833237, 22.526693>,  <28.714006, 32.636620, 22.393641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678804, 32.833237, 22.526693>,  <28.620134, 33.160931, 22.748447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678804, 32.833237, 22.526693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461327, -0.439114, 0.770945,
		-0.875022, -0.368834, 0.313526,
		0.146677, -0.819232, -0.554387,
		28.722807, 32.587467, 22.360376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671347, 32.625465, 23.238020>,  <28.620134, 33.160931, 22.748447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671347, 32.625465, 23.238020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811819, 32.435654, 22.915159>,  <28.896103, 32.321766, 22.721443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811819, 32.435654, 22.915159>,  <28.671347, 32.625465, 23.238020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811819, 32.435654, 22.915159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553583, -0.590014, 0.587733,
		-0.755127, -0.653226, 0.055490,
		0.351183, -0.474532, -0.807150,
		28.917173, 32.293293, 22.673014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603569, 31.871660, 23.365305>,  <28.671347, 32.625465, 23.238020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603569, 31.871660, 23.365305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833660, 31.872995, 23.038111>,  <28.971716, 31.873796, 22.841795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833660, 31.872995, 23.038111>,  <28.603569, 31.871660, 23.365305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833660, 31.872995, 23.038111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619609, -0.654637, 0.433053,
		-0.534038, -0.755936, -0.378635,
		0.575229, 0.003339, -0.817986,
		29.006229, 31.873997, 22.792715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675758, 31.154652, 23.141380>,  <28.603569, 31.871660, 23.365305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675758, 31.154652, 23.141380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986876, 31.359655, 22.995850>,  <29.173546, 31.482658, 22.908531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986876, 31.359655, 22.995850>,  <28.675758, 31.154652, 23.141380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986876, 31.359655, 22.995850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605502, -0.766226, 0.215093,
		-0.168536, -0.387596, -0.906292,
		0.777793, 0.512511, -0.363827,
		29.220213, 31.513409, 22.886702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971403, 30.738903, 22.711466>,  <28.675758, 31.154652, 23.141380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971403, 30.738903, 22.711466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251640, 31.007788, 22.807213>,  <29.419783, 31.169119, 22.864660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251640, 31.007788, 22.807213>,  <28.971403, 30.738903, 22.711466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251640, 31.007788, 22.807213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607286, -0.737836, 0.294620,
		0.374662, -0.061044, -0.925150,
		0.700594, 0.672214, 0.239368,
		29.461819, 31.209452, 22.879023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639561, 30.484356, 22.412315>,  <28.971403, 30.738903, 22.711466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639561, 30.484356, 22.412315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706720, 30.733591, 22.717882>,  <29.747017, 30.883133, 22.901222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706720, 30.733591, 22.717882>,  <29.639561, 30.484356, 22.412315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706720, 30.733591, 22.717882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611907, -0.673434, 0.414797,
		0.772903, 0.397801, -0.494343,
		0.167901, 0.623090, 0.763917,
		29.757092, 30.920519, 22.947058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368326, 30.248295, 22.701916>,  <29.639561, 30.484356, 22.412315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368326, 30.248295, 22.701916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211466, 30.472523, 22.993664>,  <30.117350, 30.607059, 23.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211466, 30.472523, 22.993664>,  <30.368326, 30.248295, 22.701916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211466, 30.472523, 22.993664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415365, -0.599546, 0.684116,
		0.820786, 0.571231, 0.002271,
		-0.392150, 0.560570, 0.729369,
		30.093821, 30.640694, 23.212475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958813, 30.383823, 23.129816>,  <30.368326, 30.248295, 22.701916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958813, 30.383823, 23.129816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643034, 30.473608, 23.358337>,  <30.453566, 30.527479, 23.495451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643034, 30.473608, 23.358337>,  <30.958813, 30.383823, 23.129816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643034, 30.473608, 23.358337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428125, -0.465616, 0.774539,
		0.439863, 0.856048, 0.271482,
		-0.789449, 0.224462, 0.571303,
		30.406199, 30.540947, 23.529728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212482, 30.704638, 23.776922>,  <30.958813, 30.383823, 23.129816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212482, 30.704638, 23.776922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852970, 30.556065, 23.870070>,  <30.637262, 30.466921, 23.925957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852970, 30.556065, 23.870070>,  <31.212482, 30.704638, 23.776922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852970, 30.556065, 23.870070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385469, -0.416560, 0.823342,
		-0.208814, 0.829768, 0.517573,
		-0.898783, -0.371434, 0.232866,
		30.583336, 30.444633, 23.939930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134703, 30.892258, 24.439466>,  <31.212482, 30.704638, 23.776922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134703, 30.892258, 24.439466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882338, 30.587358, 24.381607>,  <30.730919, 30.404419, 24.346891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882338, 30.587358, 24.381607>,  <31.134703, 30.892258, 24.439466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882338, 30.587358, 24.381607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286269, -0.401990, 0.869744,
		-0.721108, 0.507326, 0.471830,
		-0.630915, -0.762249, -0.144646,
		30.693064, 30.358685, 24.338213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779919, 30.845600, 25.069811>,  <31.134703, 30.892258, 24.439466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779919, 30.845600, 25.069811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721485, 30.493185, 24.889841>,  <30.686424, 30.281736, 24.781858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721485, 30.493185, 24.889841>,  <30.779919, 30.845600, 25.069811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721485, 30.493185, 24.889841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212653, -0.472139, 0.855490,
		-0.966146, 0.029296, 0.256328,
		-0.146086, -0.881037, -0.449925,
		30.677660, 30.228874, 24.754864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300774, 30.368038, 25.461813>,  <30.779919, 30.845600, 25.069811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300774, 30.368038, 25.461813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502504, 30.105915, 25.236877>,  <30.623543, 29.948641, 25.101915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502504, 30.105915, 25.236877>,  <30.300774, 30.368038, 25.461813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502504, 30.105915, 25.236877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126611, -0.588067, 0.798841,
		-0.854181, -0.474075, -0.213609,
		0.504327, -0.655309, -0.562339,
		30.653803, 29.909323, 25.068176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028057, 29.771572, 25.633646>,  <30.300774, 30.368038, 25.461813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028057, 29.771572, 25.633646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361469, 29.661404, 25.442076>,  <30.561518, 29.595303, 25.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361469, 29.661404, 25.442076>,  <30.028057, 29.771572, 25.633646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361469, 29.661404, 25.442076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144712, -0.727764, 0.670386,
		-0.533181, -0.628094, -0.566758,
		0.833532, -0.275421, -0.478923,
		30.611528, 29.578777, 25.298399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917873, 29.120766, 25.473837>,  <30.028057, 29.771572, 25.633646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917873, 29.120766, 25.473837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312166, 29.185421, 25.492601>,  <30.548742, 29.224215, 25.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312166, 29.185421, 25.492601>,  <29.917873, 29.120766, 25.473837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312166, 29.185421, 25.492601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106666, -0.815554, 0.568765,
		0.130193, -0.555647, -0.821161,
		0.985734, 0.161640, 0.046911,
		30.607887, 29.233913, 25.506674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228815, 28.473301, 25.344152>,  <29.917873, 29.120766, 25.473837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228815, 28.473301, 25.344152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515293, 28.689323, 25.520969>,  <30.687180, 28.818937, 25.627060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515293, 28.689323, 25.520969>,  <30.228815, 28.473301, 25.344152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515293, 28.689323, 25.520969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231568, -0.781399, 0.579475,
		0.658361, -0.312654, -0.684695,
		0.716196, 0.540058, 0.442042,
		30.730152, 28.851341, 25.653582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848825, 28.054857, 25.505114>,  <30.228815, 28.473301, 25.344152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848825, 28.054857, 25.505114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924778, 28.364677, 25.746449>,  <30.970350, 28.550570, 25.891249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924778, 28.364677, 25.746449>,  <30.848825, 28.054857, 25.505114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924778, 28.364677, 25.746449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422928, -0.619108, 0.661693,
		0.886045, 0.129525, -0.445136,
		0.189881, 0.774551, 0.603337,
		30.981743, 28.597042, 25.927450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534040, 28.017189, 25.890387>,  <30.848825, 28.054857, 25.505114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534040, 28.017189, 25.890387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323725, 28.259087, 26.129662>,  <31.197535, 28.404224, 26.273226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323725, 28.259087, 26.129662>,  <31.534040, 28.017189, 25.890387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323725, 28.259087, 26.129662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275497, -0.544267, 0.792386,
		0.804764, 0.581428, 0.119566,
		-0.525791, 0.604744, 0.598188,
		31.165987, 28.440510, 26.309118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978378, 28.097872, 26.459753>,  <31.534040, 28.017189, 25.890387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978378, 28.097872, 26.459753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615007, 28.202074, 26.590534>,  <31.396984, 28.264595, 26.669003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615007, 28.202074, 26.590534>,  <31.978378, 28.097872, 26.459753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615007, 28.202074, 26.590534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200399, -0.415011, 0.887472,
		0.366880, 0.871724, 0.324803,
		-0.908427, 0.260505, 0.326952,
		31.342480, 28.280226, 26.688620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109985, 28.410765, 27.106810>,  <31.978378, 28.097872, 26.459753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109985, 28.410765, 27.106810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721670, 28.316448, 27.124567>,  <31.488680, 28.259859, 27.135221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721670, 28.316448, 27.124567>,  <32.109985, 28.410765, 27.106810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721670, 28.316448, 27.124567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097625, -0.219173, 0.970790,
		-0.219173, 0.946766, 0.235789,
		-0.970790, -0.235789, 0.044392,
		31.430433, 28.245712, 27.137884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853785, 28.707659, 27.745783>,  <32.109985, 28.410765, 27.106810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853785, 28.707659, 27.745783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588100, 28.428711, 27.638079>,  <31.428690, 28.261343, 27.573456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588100, 28.428711, 27.638079>,  <31.853785, 28.707659, 27.745783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588100, 28.428711, 27.638079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045762, -0.321588, 0.945773,
		-0.746143, 0.640515, 0.181689,
		-0.664211, -0.697368, -0.269262,
		31.388838, 28.219500, 27.557301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433928, 28.680874, 28.278900>,  <31.853785, 28.707659, 27.745783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433928, 28.680874, 28.278900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304789, 28.344357, 28.105467>,  <31.227306, 28.142447, 28.001406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304789, 28.344357, 28.105467>,  <31.433928, 28.680874, 28.278900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304789, 28.344357, 28.105467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115406, -0.419705, 0.900294,
		-0.939389, 0.340694, 0.038410,
		-0.322845, -0.841294, -0.433584,
		31.207935, 28.091969, 27.975391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764814, 28.503763, 28.551102>,  <31.433928, 28.680874, 28.278900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764814, 28.503763, 28.551102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905361, 28.161840, 28.398340>,  <30.989689, 27.956686, 28.306684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905361, 28.161840, 28.398340>,  <30.764814, 28.503763, 28.551102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905361, 28.161840, 28.398340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061570, -0.428124, 0.901620,
		-0.934212, -0.293284, -0.203058,
		0.351365, -0.854807, -0.381901,
		31.010771, 27.905399, 28.283770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269642, 27.932913, 28.753117>,  <30.764814, 28.503763, 28.551102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269642, 27.932913, 28.753117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634121, 27.785999, 28.678471>,  <30.852808, 27.697851, 28.633682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634121, 27.785999, 28.678471>,  <30.269642, 27.932913, 28.753117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634121, 27.785999, 28.678471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029784, -0.393063, 0.919029,
		-0.410902, -0.842971, -0.347217,
		0.911193, -0.367289, -0.186618,
		30.907480, 27.675814, 28.622486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234945, 27.272106, 29.078766>,  <30.269642, 27.932913, 28.753117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234945, 27.272106, 29.078766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623020, 27.368448, 29.068005>,  <30.855865, 27.426252, 29.061548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623020, 27.368448, 29.068005>,  <30.234945, 27.272106, 29.078766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623020, 27.368448, 29.068005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116431, -0.365855, 0.923360,
		0.212552, -0.898966, -0.382991,
		0.970188, 0.240854, -0.026904,
		30.914076, 27.440704, 29.059933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623552, 26.734921, 29.488657>,  <30.234945, 27.272106, 29.078766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623552, 26.734921, 29.488657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907631, 27.011719, 29.436872>,  <31.078079, 27.177797, 29.405802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907631, 27.011719, 29.436872>,  <30.623552, 26.734921, 29.488657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907631, 27.011719, 29.436872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303611, -0.135144, 0.943163,
		0.635168, -0.709139, -0.306077,
		0.710198, 0.691996, -0.129463,
		31.120689, 27.219318, 29.398033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327690, 26.420979, 29.590162>,  <30.623552, 26.734921, 29.488657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327690, 26.420979, 29.590162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347187, 26.816353, 29.647604>,  <31.358885, 27.053577, 29.682070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347187, 26.816353, 29.647604>,  <31.327690, 26.420979, 29.590162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347187, 26.816353, 29.647604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366933, -0.151444, 0.917837,
		0.928969, 0.007957, -0.370071,
		0.048742, 0.988434, 0.143607,
		31.361809, 27.112883, 29.690685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838287, 26.507729, 29.990667>,  <31.327690, 26.420979, 29.590162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838287, 26.507729, 29.990667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654169, 26.857273, 30.053272>,  <31.543699, 27.066999, 30.090836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654169, 26.857273, 30.053272>,  <31.838287, 26.507729, 29.990667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654169, 26.857273, 30.053272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441297, 0.072250, 0.894448,
		0.770316, 0.480776, -0.418888,
		-0.460294, 0.873862, 0.156510,
		31.516081, 27.119432, 30.100225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331558, 27.096348, 30.103491>,  <31.838287, 26.507729, 29.990667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331558, 27.096348, 30.103491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987469, 27.128075, 30.304972>,  <31.781013, 27.147110, 30.425859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987469, 27.128075, 30.304972>,  <32.331558, 27.096348, 30.103491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987469, 27.128075, 30.304972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505843, 0.008239, 0.862586,
		0.064267, 0.996815, -0.047209,
		-0.860228, 0.079316, 0.503702,
		31.729401, 27.151869, 30.456083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415504, 27.607969, 30.641668>,  <32.331558, 27.096348, 30.103491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415504, 27.607969, 30.641668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094250, 27.405478, 30.767340>,  <31.901497, 27.283983, 30.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094250, 27.405478, 30.767340>,  <32.415504, 27.607969, 30.641668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094250, 27.405478, 30.767340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352353, 0.021657, 0.935617,
		-0.480441, 0.862127, 0.160978,
		-0.803134, -0.506230, 0.314178,
		31.853310, 27.253609, 30.861593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966856, 27.917686, 31.226482>,  <32.415504, 27.607969, 30.641668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966856, 27.917686, 31.226482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952341, 27.518053, 31.235561>,  <31.943632, 27.278273, 31.241009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952341, 27.518053, 31.235561>,  <31.966856, 27.917686, 31.226482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952341, 27.518053, 31.235561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523839, 0.000324, 0.851817,
		-0.851044, 0.042798, 0.523347,
		-0.036287, -0.999084, 0.022695,
		31.941456, 27.218328, 31.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812912, 27.759903, 31.955227>,  <31.966856, 27.917686, 31.226482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812912, 27.759903, 31.955227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891493, 27.401646, 31.795610>,  <31.938641, 27.186691, 31.699841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891493, 27.401646, 31.795610>,  <31.812912, 27.759903, 31.955227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891493, 27.401646, 31.795610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351377, -0.315634, 0.881425,
		-0.915391, -0.313370, 0.252701,
		0.196451, -0.895642, -0.399039,
		31.950428, 27.132954, 31.675900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525770, 27.138338, 32.405388>,  <31.812912, 27.759903, 31.955227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525770, 27.138338, 32.405388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852413, 27.009787, 32.213608>,  <32.048397, 26.932655, 32.098541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852413, 27.009787, 32.213608>,  <31.525770, 27.138338, 32.405388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852413, 27.009787, 32.213608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384475, -0.316680, 0.867118,
		-0.430506, -0.892429, -0.135040,
		0.816605, -0.321380, -0.479449,
		32.097393, 26.913374, 32.069775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782078, 26.660295, 32.821453>,  <31.525770, 27.138338, 32.405388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782078, 26.660295, 32.821453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077690, 26.748695, 32.566898>,  <32.255058, 26.801735, 32.414165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077690, 26.748695, 32.566898>,  <31.782078, 26.660295, 32.821453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077690, 26.748695, 32.566898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666747, -0.104870, 0.737869,
		0.096331, -0.969619, -0.224854,
		0.739032, 0.221001, -0.636388,
		32.299400, 26.814995, 32.375980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347721, 26.180275, 32.930241>,  <31.782078, 26.660295, 32.821453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347721, 26.180275, 32.930241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472454, 26.535782, 32.795868>,  <32.547295, 26.749086, 32.715244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472454, 26.535782, 32.795868>,  <32.347721, 26.180275, 32.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472454, 26.535782, 32.795868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630323, 0.071051, 0.773075,
		0.710953, -0.452818, -0.538054,
		0.311833, 0.888768, -0.335935,
		32.566006, 26.802412, 32.695087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082436, 26.225737, 32.856529>,  <32.347721, 26.180275, 32.930241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082436, 26.225737, 32.856529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981739, 26.609898, 32.904285>,  <32.921322, 26.840395, 32.932941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981739, 26.609898, 32.904285>,  <33.082436, 26.225737, 32.856529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981739, 26.609898, 32.904285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631933, 0.069684, 0.771884,
		0.732999, 0.269764, -0.624452,
		-0.251741, 0.960402, 0.119394,
		32.906216, 26.898018, 32.940105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751358, 26.684029, 32.825985>,  <33.082436, 26.225737, 32.856529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751358, 26.684029, 32.825985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466240, 26.822403, 33.070038>,  <33.295170, 26.905428, 33.216469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466240, 26.822403, 33.070038>,  <33.751358, 26.684029, 32.825985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466240, 26.822403, 33.070038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699662, 0.289915, 0.653010,
		0.049013, 0.892345, -0.448685,
		-0.712791, 0.345934, 0.610130,
		33.252403, 26.926184, 33.253078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708282, 27.461769, 32.875340>,  <33.751358, 26.684029, 32.825985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708282, 27.461769, 32.875340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593651, 27.292950, 33.219376>,  <33.524872, 27.191658, 33.425797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593651, 27.292950, 33.219376>,  <33.708282, 27.461769, 32.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593651, 27.292950, 33.219376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617813, 0.604734, 0.502597,
		-0.732244, 0.675404, 0.087447,
		-0.286575, -0.422050, 0.860087,
		33.507679, 27.166334, 33.477402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412987, 27.926722, 33.417313>,  <33.708282, 27.461769, 32.875340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412987, 27.926722, 33.417313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583271, 27.618773, 33.607498>,  <33.685440, 27.434004, 33.721611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583271, 27.618773, 33.607498>,  <33.412987, 27.926722, 33.417313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583271, 27.618773, 33.607498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502959, 0.638136, 0.582936,
		-0.752198, -0.009023, 0.658875,
		0.425711, -0.769871, 0.475466,
		33.710983, 27.387812, 33.750137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444534, 28.179548, 34.189121>,  <33.412987, 27.926722, 33.417313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444534, 28.179548, 34.189121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721493, 27.912029, 34.080830>,  <33.887669, 27.751518, 34.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721493, 27.912029, 34.080830>,  <33.444534, 28.179548, 34.189121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721493, 27.912029, 34.080830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698843, 0.528311, 0.482188,
		-0.179456, -0.523064, 0.833186,
		0.692397, -0.668798, -0.270731,
		33.929211, 27.711390, 33.999611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846458, 27.978760, 34.780136>,  <33.444534, 28.179548, 34.189121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846458, 27.978760, 34.780136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054260, 27.962147, 34.438751>,  <34.178940, 27.952179, 34.233921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054260, 27.962147, 34.438751>,  <33.846458, 27.978760, 34.780136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054260, 27.962147, 34.438751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702543, 0.589290, 0.398962,
		0.486366, -0.806854, 0.335313,
		0.519501, -0.041530, -0.853460,
		34.210110, 27.949688, 34.182713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529095, 27.680529, 34.867950>,  <33.846458, 27.978760, 34.780136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529095, 27.680529, 34.867950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445793, 27.967451, 34.601986>,  <34.395813, 28.139605, 34.442410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445793, 27.967451, 34.601986>,  <34.529095, 27.680529, 34.867950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445793, 27.967451, 34.601986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519355, 0.657155, 0.546277,
		0.828795, -0.231558, -0.509391,
		-0.208254, 0.717306, -0.664908,
		34.383316, 28.182642, 34.402515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146996, 28.101992, 34.758022>,  <34.529095, 27.680529, 34.867950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146996, 28.101992, 34.758022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847935, 28.355558, 34.678852>,  <34.668499, 28.507698, 34.631351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847935, 28.355558, 34.678852>,  <35.146996, 28.101992, 34.758022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847935, 28.355558, 34.678852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404983, 0.671421, 0.620631,
		0.526318, 0.383857, -0.758711,
		-0.747648, 0.633915, -0.197926,
		34.623642, 28.545732, 34.619473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372540, 28.831211, 34.399635>,  <35.146996, 28.101992, 34.758022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372540, 28.831211, 34.399635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069870, 28.816319, 34.660725>,  <34.888268, 28.807383, 34.817379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069870, 28.816319, 34.660725>,  <35.372540, 28.831211, 34.399635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069870, 28.816319, 34.660725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483249, 0.640595, 0.596748,
		-0.440352, 0.766976, -0.466732,
		-0.756677, -0.037231, 0.652728,
		34.842865, 28.805149, 34.856544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031868, 29.514101, 34.478897>,  <35.372540, 28.831211, 34.399635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031868, 29.514101, 34.478897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020870, 29.291801, 34.811256>,  <35.014271, 29.158421, 35.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020870, 29.291801, 34.811256>,  <35.031868, 29.514101, 34.478897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020870, 29.291801, 34.811256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626463, 0.638150, 0.447559,
		-0.778967, 0.532828, 0.330614,
		-0.027491, -0.555751, 0.830894,
		35.012623, 29.125076, 35.060524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880402, 29.956343, 35.007710>,  <35.031868, 29.514101, 34.478897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880402, 29.956343, 35.007710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100445, 29.649553, 35.139854>,  <35.232471, 29.465481, 35.219139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100445, 29.649553, 35.139854>,  <34.880402, 29.956343, 35.007710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100445, 29.649553, 35.139854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590629, 0.636998, 0.495369,
		-0.590373, -0.077385, 0.803412,
		0.550106, -0.766971, 0.330361,
		35.265476, 29.419462, 35.238964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076263, 29.869194, 35.696770>,  <34.880402, 29.956343, 35.007710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076263, 29.869194, 35.696770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354794, 29.716019, 35.453957>,  <35.521912, 29.624113, 35.308270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354794, 29.716019, 35.453957>,  <35.076263, 29.869194, 35.696770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354794, 29.716019, 35.453957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691063, 0.586101, 0.422986,
		0.193806, -0.714034, 0.672751,
		0.696327, -0.382936, -0.607033,
		35.563690, 29.601137, 35.271847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619080, 29.860775, 36.125336>,  <35.076263, 29.869194, 35.696770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619080, 29.860775, 36.125336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750340, 29.910421, 35.750763>,  <35.829094, 29.940208, 35.526016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750340, 29.910421, 35.750763>,  <35.619080, 29.860775, 36.125336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750340, 29.910421, 35.750763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691127, 0.644236, 0.327571,
		0.643951, -0.754686, 0.125602,
		0.328131, 0.124133, -0.936441,
		35.848785, 29.947657, 35.469833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362118, 29.772875, 36.108742>,  <35.619080, 29.860775, 36.125336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362118, 29.772875, 36.108742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233589, 30.005135, 35.809517>,  <36.156471, 30.144491, 35.629982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233589, 30.005135, 35.809517>,  <36.362118, 29.772875, 36.108742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233589, 30.005135, 35.809517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676182, 0.693729, 0.248031,
		0.662971, -0.426128, -0.615536,
		-0.321322, 0.580651, -0.748062,
		36.137192, 30.179331, 35.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989979, 30.052032, 35.572517>,  <36.362118, 29.772875, 36.108742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989979, 30.052032, 35.572517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692360, 30.317997, 35.546318>,  <36.513790, 30.477575, 35.530598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692360, 30.317997, 35.546318>,  <36.989979, 30.052032, 35.572517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692360, 30.317997, 35.546318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651132, 0.743592, 0.151981,
		0.149756, 0.070434, -0.986211,
		-0.744044, 0.664913, -0.065496,
		36.469147, 30.517471, 35.526669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289909, 30.536718, 35.177681>,  <36.989979, 30.052032, 35.572517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289909, 30.536718, 35.177681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975239, 30.717070, 35.346367>,  <36.786434, 30.825281, 35.447578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975239, 30.717070, 35.346367>,  <37.289909, 30.536718, 35.177681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975239, 30.717070, 35.346367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546669, 0.826150, 0.136490,
		-0.286862, 0.337914, -0.896395,
		-0.786678, 0.450878, 0.421719,
		36.739235, 30.852333, 35.472881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236439, 31.217794, 34.919685>,  <37.289909, 30.536718, 35.177681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236439, 31.217794, 34.919685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079002, 31.230179, 35.287189>,  <36.984543, 31.237610, 35.507694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079002, 31.230179, 35.287189>,  <37.236439, 31.217794, 34.919685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079002, 31.230179, 35.287189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570285, 0.792098, 0.217613,
		-0.721015, 0.609609, -0.329417,
		-0.393589, 0.030959, 0.918765,
		36.960926, 31.239466, 35.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022602, 31.790676, 35.053436>,  <37.236439, 31.217794, 34.919685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022602, 31.790676, 35.053436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073772, 31.662775, 35.428967>,  <37.104473, 31.586035, 35.654285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073772, 31.662775, 35.428967>,  <37.022602, 31.790676, 35.053436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073772, 31.662775, 35.428967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655490, 0.737642, 0.161916,
		-0.744291, 0.594679, 0.303955,
		0.127922, -0.319751, 0.938826,
		37.112148, 31.566849, 35.710613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009476, 32.304462, 35.519802>,  <37.022602, 31.790676, 35.053436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009476, 32.304462, 35.519802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248203, 32.010696, 35.649078>,  <37.391438, 31.834438, 35.726643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248203, 32.010696, 35.649078>,  <37.009476, 32.304462, 35.519802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248203, 32.010696, 35.649078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737125, 0.660943, 0.140714,
		-0.316950, 0.154248, 0.935815,
		0.596816, -0.734412, 0.323186,
		37.427250, 31.790373, 35.746033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378162, 31.981861, 35.335262>,  <37.009476, 32.304462, 35.519802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378162, 31.981861, 35.335262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579075, 32.175625, 35.048748>,  <36.699623, 32.291882, 34.876839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579075, 32.175625, 35.048748>,  <36.378162, 31.981861, 35.335262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579075, 32.175625, 35.048748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852022, 0.418602, -0.314374,
		0.147552, 0.768193, 0.622983,
		0.502282, 0.484409, -0.716283,
		36.729759, 32.320946, 34.833862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184551, 32.696590, 35.261261>,  <36.378162, 31.981861, 35.335262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184551, 32.696590, 35.261261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320812, 32.567886, 34.907894>,  <36.402569, 32.490665, 34.695873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320812, 32.567886, 34.907894>,  <36.184551, 32.696590, 35.261261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320812, 32.567886, 34.907894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860181, 0.272640, -0.430994,
		0.379532, 0.906718, -0.183897,
		0.340652, -0.321761, -0.883417,
		36.423008, 32.471359, 34.642868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522060, 33.089508, 35.812958>,  <36.184551, 32.696590, 35.261261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522060, 33.089508, 35.812958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536034, 32.956264, 36.189854>,  <36.544418, 32.876320, 36.415993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536034, 32.956264, 36.189854>,  <36.522060, 33.089508, 35.812958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536034, 32.956264, 36.189854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996994, -0.053619, -0.055922,
		0.069150, 0.941363, 0.330232,
		0.034937, -0.333106, 0.942242,
		36.546516, 32.856331, 36.472527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114243, 33.367683, 36.200298>,  <36.522060, 33.089508, 35.812958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114243, 33.367683, 36.200298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004631, 33.055397, 36.424938>,  <36.938866, 32.868023, 36.559723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004631, 33.055397, 36.424938>,  <37.114243, 33.367683, 36.200298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004631, 33.055397, 36.424938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959766, -0.184769, 0.211446,
		-0.061315, 0.596942, 0.799938,
		-0.274025, -0.780718, 0.561596,
		36.922424, 32.821182, 36.593418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263641, 33.480671, 36.844093>,  <37.114243, 33.367683, 36.200298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263641, 33.480671, 36.844093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252205, 33.082661, 36.805939>,  <37.245342, 32.843853, 36.783047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252205, 33.082661, 36.805939>,  <37.263641, 33.480671, 36.844093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252205, 33.082661, 36.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989669, -0.041593, 0.137202,
		-0.140488, -0.090480, 0.985939,
		-0.028594, -0.995029, -0.095389,
		37.243626, 32.784153, 36.777321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451672, 33.001774, 37.414852>,  <37.263641, 33.480671, 36.844093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451672, 33.001774, 37.414852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538773, 32.836304, 37.061253>,  <37.591034, 32.737022, 36.849091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538773, 32.836304, 37.061253>,  <37.451672, 33.001774, 37.414852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538773, 32.836304, 37.061253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976005, 0.092121, 0.197305,
		-0.000185, -0.905753, 0.423807,
		0.217751, -0.413674, -0.884002,
		37.604099, 32.712200, 36.796051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908466, 32.461491, 37.550781>,  <37.451672, 33.001774, 37.414852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908466, 32.461491, 37.550781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965004, 32.571667, 37.170433>,  <37.998924, 32.637772, 36.942223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965004, 32.571667, 37.170433>,  <37.908466, 32.461491, 37.550781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965004, 32.571667, 37.170433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987207, 0.032378, 0.156120,
		0.073789, -0.960772, -0.267342,
		0.141340, 0.275442, -0.950870,
		38.007404, 32.654301, 36.885170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458210, 32.044987, 37.366894>,  <37.908466, 32.461491, 37.550781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458210, 32.044987, 37.366894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455517, 32.363373, 37.124771>,  <38.453903, 32.554405, 36.979496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455517, 32.363373, 37.124771>,  <38.458210, 32.044987, 37.366894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455517, 32.363373, 37.124771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877309, 0.295189, 0.378407,
		0.479879, -0.528497, -0.700291,
		-0.006731, 0.795961, -0.605310,
		38.453499, 32.602161, 36.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203011, 32.204620, 37.113213>,  <38.458210, 32.044987, 37.366894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203011, 32.204620, 37.113213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979733, 32.533173, 37.066311>,  <38.845764, 32.730305, 37.038170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979733, 32.533173, 37.066311>,  <39.203011, 32.204620, 37.113213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979733, 32.533173, 37.066311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824809, 0.564666, 0.029001,
		0.090030, -0.080525, -0.992678,
		-0.558197, 0.821382, -0.117255,
		38.812275, 32.779587, 37.031136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569149, 32.718365, 36.580086>,  <39.203011, 32.204620, 37.113213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569149, 32.718365, 36.580086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338963, 32.915714, 36.840984>,  <39.200851, 33.034122, 36.997524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338963, 32.915714, 36.840984>,  <39.569149, 32.718365, 36.580086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338963, 32.915714, 36.840984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760579, 0.616001, 0.205091,
		-0.300596, 0.614106, -0.729737,
		-0.575466, 0.493373, 0.652243,
		39.166321, 33.063725, 37.036655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456421, 33.502445, 36.600494>,  <39.569149, 32.718365, 36.580086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456421, 33.502445, 36.600494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495682, 33.396915, 36.984322>,  <39.519238, 33.333599, 37.214619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495682, 33.396915, 36.984322>,  <39.456421, 33.502445, 36.600494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495682, 33.396915, 36.984322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767711, 0.633612, 0.095683,
		-0.633235, 0.727277, 0.264730,
		0.098148, -0.263826, 0.959564,
		39.525127, 33.317768, 37.272190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764153, 33.986732, 37.089268>,  <39.456421, 33.502445, 36.600494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764153, 33.986732, 37.089268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859303, 33.647499, 37.278656>,  <39.916393, 33.443958, 37.392288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859303, 33.647499, 37.278656>,  <39.764153, 33.986732, 37.089268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859303, 33.647499, 37.278656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804374, 0.445235, 0.393381,
		-0.544425, 0.287275, 0.788082,
		0.237873, -0.848079, 0.473474,
		39.930664, 33.393074, 37.420700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938038, 34.123783, 37.801567>,  <39.764153, 33.986732, 37.089268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938038, 34.123783, 37.801567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134167, 33.786945, 37.711704>,  <40.251842, 33.584843, 37.657787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134167, 33.786945, 37.711704>,  <39.938038, 34.123783, 37.801567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134167, 33.786945, 37.711704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780103, 0.309110, 0.543958,
		-0.388620, -0.441965, 0.808481,
		0.490320, -0.842091, -0.224652,
		40.281261, 33.534317, 37.644310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232494, 33.840515, 38.430775>,  <39.938038, 34.123783, 37.801567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232494, 33.840515, 38.430775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431236, 33.763359, 38.092323>,  <40.550484, 33.717064, 37.889252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431236, 33.763359, 38.092323>,  <40.232494, 33.840515, 38.430775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431236, 33.763359, 38.092323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839827, 0.352557, 0.412788,
		0.218684, -0.915695, 0.337165,
		0.496857, -0.192891, -0.846124,
		40.580292, 33.705490, 37.838486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149033, 34.470779, 38.823357>,  <40.232494, 33.840515, 38.430775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149033, 34.470779, 38.823357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317417, 34.709999, 38.550552>,  <40.418446, 34.853531, 38.386871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317417, 34.709999, 38.550552>,  <40.149033, 34.470779, 38.823357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317417, 34.709999, 38.550552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527722, 0.450063, 0.720383,
		0.737769, -0.663163, -0.126144,
		0.420959, 0.598045, -0.682008,
		40.443707, 34.889412, 38.345951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960850, 34.558411, 38.867756>,  <40.149033, 34.470779, 38.823357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960850, 34.558411, 38.867756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782795, 34.889191, 38.730347>,  <40.675961, 35.087658, 38.647903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782795, 34.889191, 38.730347>,  <40.960850, 34.558411, 38.867756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782795, 34.889191, 38.730347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428097, 0.533472, 0.729480,
		0.786500, 0.177662, -0.591485,
		-0.445141, 0.826949, -0.343519,
		40.649254, 35.137276, 38.627293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421833, 35.010239, 38.640060>,  <40.960850, 34.558411, 38.867756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421833, 35.010239, 38.640060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121445, 35.231491, 38.784332>,  <40.941212, 35.364243, 38.870895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121445, 35.231491, 38.784332>,  <41.421833, 35.010239, 38.640060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121445, 35.231491, 38.784332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622663, 0.411309, 0.665669,
		0.219852, 0.724479, -0.653296,
		-0.750970, 0.553132, 0.360679,
		40.896152, 35.397430, 38.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544334, 35.568703, 39.240398>,  <41.421833, 35.010239, 38.640060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544334, 35.568703, 39.240398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846840, 35.623703, 39.496262>,  <42.028343, 35.656704, 39.649780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846840, 35.623703, 39.496262>,  <41.544334, 35.568703, 39.240398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846840, 35.623703, 39.496262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599315, 0.246609, -0.761581,
		-0.262464, 0.959311, 0.104094,
		0.756263, 0.137502, 0.639655,
		42.073719, 35.664955, 39.688160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877979, 36.220852, 39.031414>,  <41.544334, 35.568703, 39.240398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877979, 36.220852, 39.031414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117104, 35.973843, 39.235878>,  <42.260578, 35.825638, 39.358559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117104, 35.973843, 39.235878>,  <41.877979, 36.220852, 39.031414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117104, 35.973843, 39.235878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650012, 0.000224, -0.759924,
		0.469158, 0.786551, 0.401533,
		0.597809, -0.617525, 0.511163,
		42.296448, 35.788586, 39.389229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638863, 36.441772, 39.209576>,  <41.877979, 36.220852, 39.031414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638863, 36.441772, 39.209576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582005, 36.053883, 39.130150>,  <42.547890, 35.821148, 39.082497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582005, 36.053883, 39.130150>,  <42.638863, 36.441772, 39.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582005, 36.053883, 39.130150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606815, 0.073110, -0.791474,
		0.782029, -0.232997, 0.578051,
		-0.142149, -0.969725, -0.198560,
		42.539360, 35.762966, 39.070583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314110, 36.130554, 39.205956>,  <42.638863, 36.441772, 39.209576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314110, 36.130554, 39.205956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048103, 35.974438, 38.951263>,  <42.888500, 35.880768, 38.798447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048103, 35.974438, 38.951263>,  <43.314110, 36.130554, 39.205956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048103, 35.974438, 38.951263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720474, -0.110780, -0.684576,
		0.196646, -0.914003, 0.354864,
		-0.665017, -0.390289, -0.636732,
		42.848598, 35.857349, 38.760242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674889, 35.628391, 38.896755>,  <43.314110, 36.130554, 39.205956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674889, 35.628391, 38.896755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384281, 35.768360, 38.660202>,  <43.209919, 35.852341, 38.518272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384281, 35.768360, 38.660202>,  <43.674889, 35.628391, 38.896755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384281, 35.768360, 38.660202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633123, 0.006377, -0.774025,
		-0.267074, -0.936758, -0.226175,
		-0.726516, 0.349919, -0.591380,
		43.166325, 35.873337, 38.482788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173294, 36.280785, 39.109341>,  <43.674889, 35.628391, 38.896755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173294, 36.280785, 39.109341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399300, 36.169048, 38.798798>,  <44.534904, 36.102009, 38.612473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399300, 36.169048, 38.798798>,  <44.173294, 36.280785, 39.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399300, 36.169048, 38.798798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391375, 0.737612, -0.550231,
		0.726350, 0.614735, 0.307436,
		0.565014, -0.279338, -0.776356,
		44.568806, 36.085247, 38.565891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370914, 36.971081, 38.861969>,  <44.173294, 36.280785, 39.109341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370914, 36.971081, 38.861969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373749, 36.671551, 38.596878>,  <44.375450, 36.491833, 38.437824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373749, 36.671551, 38.596878>,  <44.370914, 36.971081, 38.861969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373749, 36.671551, 38.596878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460709, 0.585771, -0.666798,
		0.887523, 0.310051, -0.340839,
		0.007088, -0.748826, -0.662729,
		44.375874, 36.446903, 38.398060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660461, 36.665344, 38.546535>,  <44.370914, 36.971081, 38.861969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660461, 36.665344, 38.546535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576553, 36.687878, 38.156086>,  <43.526207, 36.701397, 37.921814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576553, 36.687878, 38.156086>,  <43.660461, 36.665344, 38.546535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576553, 36.687878, 38.156086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568259, -0.819440, 0.074832,
		-0.795662, 0.570390, 0.203905,
		-0.209772, 0.056330, -0.976126,
		43.513622, 36.704777, 37.863247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934185, 36.692673, 38.329670>,  <43.660461, 36.665344, 38.546535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934185, 36.692673, 38.329670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127747, 36.500648, 38.036991>,  <43.243885, 36.385433, 37.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127747, 36.500648, 38.036991>,  <42.934185, 36.692673, 38.329670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127747, 36.500648, 38.036991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663592, -0.746367, 0.050818,
		-0.570511, 0.460958, -0.679731,
		0.483904, -0.480056, -0.731698,
		43.272919, 36.356632, 37.817482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488823, 36.395035, 37.921703>,  <42.934185, 36.692673, 38.329670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488823, 36.395035, 37.921703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796932, 36.144997, 37.871216>,  <42.981796, 35.994972, 37.840923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796932, 36.144997, 37.871216>,  <42.488823, 36.395035, 37.921703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796932, 36.144997, 37.871216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636145, -0.767055, -0.083344,
		-0.044717, 0.144489, -0.988496,
		0.770273, -0.625099, -0.126216,
		43.028015, 35.957466, 37.833351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320671, 36.143822, 37.311794>,  <42.488823, 36.395035, 37.921703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320671, 36.143822, 37.311794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564785, 35.891575, 37.503574>,  <42.711254, 35.740227, 37.618641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564785, 35.891575, 37.503574>,  <42.320671, 36.143822, 37.311794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564785, 35.891575, 37.503574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689476, -0.720867, -0.070520,
		0.390092, -0.287533, -0.874730,
		0.610288, -0.630615, 0.479451,
		42.747871, 35.702389, 37.647411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667751, 35.572472, 36.893017>,  <42.320671, 36.143822, 37.311794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667751, 35.572472, 36.893017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574066, 35.474804, 37.269428>,  <42.517857, 35.416203, 37.495274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574066, 35.474804, 37.269428>,  <42.667751, 35.572472, 36.893017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574066, 35.474804, 37.269428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602251, -0.723411, -0.337596,
		0.763177, -0.645802, 0.022383,
		-0.234212, -0.244165, 0.941025,
		42.503803, 35.401554, 37.551735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213573, 36.188229, 36.813866>,  <42.667751, 35.572472, 36.893017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213573, 36.188229, 36.813866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498466, 35.961781, 36.647861>,  <43.669403, 35.825912, 36.548260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498466, 35.961781, 36.647861>,  <43.213573, 36.188229, 36.813866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498466, 35.961781, 36.647861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089023, -0.513608, 0.853394,
		-0.696273, -0.644763, -0.315412,
		0.712235, -0.566117, -0.415011,
		43.712135, 35.791946, 36.523357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570160, 36.649220, 37.253937>,  <43.213573, 36.188229, 36.813866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570160, 36.649220, 37.253937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730282, 36.473736, 37.575752>,  <43.826355, 36.368446, 37.768841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730282, 36.473736, 37.575752>,  <43.570160, 36.649220, 37.253937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730282, 36.473736, 37.575752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916323, 0.201601, -0.345991,
		-0.010405, 0.875721, 0.482706,
		0.400306, -0.438714, 0.804541,
		43.850372, 36.342121, 37.817116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169086, 36.963516, 37.589321>,  <43.570160, 36.649220, 37.253937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169086, 36.963516, 37.589321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264835, 36.581829, 37.661068>,  <44.322285, 36.352818, 37.704117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264835, 36.581829, 37.661068>,  <44.169086, 36.963516, 37.589321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264835, 36.581829, 37.661068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835975, 0.108602, -0.537914,
		0.493807, 0.278706, 0.823697,
		0.239375, -0.954216, 0.179362,
		44.336647, 36.295563, 37.714878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880383, 36.792019, 37.979668>,  <44.169086, 36.963516, 37.589321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880383, 36.792019, 37.979668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797157, 36.527023, 37.691830>,  <44.747223, 36.368027, 37.519127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797157, 36.527023, 37.691830>,  <44.880383, 36.792019, 37.979668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797157, 36.527023, 37.691830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908335, 0.142027, -0.393390,
		0.362818, -0.735488, 0.572208,
		-0.208064, -0.662485, -0.719599,
		44.734737, 36.328278, 37.475948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545792, 36.278282, 37.892258>,  <44.880383, 36.792019, 37.979668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545792, 36.278282, 37.892258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326752, 36.279396, 37.557564>,  <45.195328, 36.280064, 37.356747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326752, 36.279396, 37.557564>,  <45.545792, 36.278282, 37.892258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326752, 36.279396, 37.557564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834786, 0.070162, -0.546085,
		0.057180, -0.997532, -0.040755,
		-0.547597, 0.002796, -0.836738,
		45.162472, 36.280231, 37.306541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936443, 36.013783, 37.365612>,  <45.545792, 36.278282, 37.892258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936443, 36.013783, 37.365612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708412, 36.260563, 37.148582>,  <45.571594, 36.408630, 37.018364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708412, 36.260563, 37.148582>,  <45.936443, 36.013783, 37.365612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708412, 36.260563, 37.148582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814674, 0.338976, -0.470533,
		-0.106375, -0.710261, -0.695854,
		-0.570080, 0.616947, -0.542573,
		45.537388, 36.445648, 36.985809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276760, 35.932865, 36.756989>,  <45.936443, 36.013783, 37.365612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276760, 35.932865, 36.756989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054729, 36.263256, 36.717712>,  <45.921509, 36.461491, 36.694149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054729, 36.263256, 36.717712>,  <46.276760, 35.932865, 36.756989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054729, 36.263256, 36.717712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722341, 0.420137, -0.549280,
		-0.412443, -0.375819, -0.829850,
		-0.555081, 0.825981, -0.098187,
		45.888206, 36.511051, 36.688255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251854, 36.082142, 36.015476>,  <46.276760, 35.932865, 36.756989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251854, 36.082142, 36.015476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.200981, 36.409138, 36.240170>,  <46.170456, 36.605335, 36.374985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.200981, 36.409138, 36.240170>,  <46.251854, 36.082142, 36.015476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.200981, 36.409138, 36.240170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675352, 0.486146, -0.554582,
		-0.726446, 0.308832, -0.613921,
		-0.127183, 0.817487, 0.561729,
		46.162827, 36.654385, 36.408688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.476379, 35.908501, 35.346066>,  <46.251854, 36.082142, 36.015476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.476379, 35.908501, 35.346066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382656, 35.849609, 34.961685>,  <46.326420, 35.814274, 34.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382656, 35.849609, 34.961685>,  <46.476379, 35.908501, 35.346066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382656, 35.849609, 34.961685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766194, 0.580435, -0.275757,
		0.598368, -0.800885, -0.023194,
		-0.234313, -0.147234, -0.960948,
		46.312363, 35.805439, 34.673401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144791, 35.750183, 34.861599>,  <46.476379, 35.908501, 35.346066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144791, 35.750183, 34.861599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866085, 35.928520, 34.636833>,  <46.698860, 36.035522, 34.501972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866085, 35.928520, 34.636833>,  <47.144791, 35.750183, 34.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866085, 35.928520, 34.636833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636689, 0.745213, -0.198207,
		0.330376, -0.495867, -0.803099,
		-0.696763, 0.445841, -0.561913,
		46.657055, 36.062271, 34.468258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294926, 35.048248, 35.045597>,  <47.144791, 35.750183, 34.861599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294926, 35.048248, 35.045597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275738, 35.088673, 34.648109>,  <47.264225, 35.112926, 34.409615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275738, 35.088673, 34.648109>,  <47.294926, 35.048248, 35.045597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275738, 35.088673, 34.648109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515681, 0.849522, 0.111291,
		0.855437, 0.517783, 0.011361,
		-0.047973, 0.101062, -0.993723,
		47.261345, 35.118992, 34.349991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.002277, 35.180710, 35.083542>,  <47.294926, 35.048248, 35.045597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.002277, 35.180710, 35.083542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.740116, 35.021240, 34.826946>,  <47.582821, 34.925560, 34.672989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.740116, 35.021240, 34.826946>,  <48.002277, 35.180710, 35.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.740116, 35.021240, 34.826946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648198, 0.139053, -0.748668,
		0.387673, -0.906491, 0.167282,
		-0.655400, -0.398670, -0.641493,
		47.543495, 34.901638, 34.634499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.397221, 35.626411, 25.874546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.464554, 35.988956, 26.029552>,  <28.504953, 36.206482, 26.122557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.464554, 35.988956, 26.029552>,  <28.397221, 35.626411, 25.874546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464554, 35.988956, 26.029552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495660, -0.417643, 0.761509,
		0.852047, 0.063888, -0.519551,
		0.168335, 0.906362, 0.387518,
		28.515055, 36.260864, 26.145807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014580, 35.652561, 25.950104>,  <28.397221, 35.626411, 25.874546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014580, 35.652561, 25.950104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.886087, 35.936119, 26.201269>,  <28.808992, 36.106255, 26.351969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.886087, 35.936119, 26.201269>,  <29.014580, 35.652561, 25.950104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886087, 35.936119, 26.201269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700230, -0.268595, 0.661464,
		0.637563, 0.652168, -0.410109,
		-0.321232, 0.708896, 0.627914,
		28.789719, 36.148788, 26.389643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587616, 35.918518, 26.232622>,  <29.014580, 35.652561, 25.950104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587616, 35.918518, 26.232622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.312679, 36.058239, 26.487352>,  <29.147718, 36.142071, 26.640190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.312679, 36.058239, 26.487352>,  <29.587616, 35.918518, 26.232622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312679, 36.058239, 26.487352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551035, -0.320436, 0.770507,
		0.473206, 0.880514, 0.027768,
		-0.687340, 0.349307, 0.636827,
		29.106478, 36.163033, 26.678400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997005, 36.114937, 26.788914>,  <29.587616, 35.918518, 26.232622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997005, 36.114937, 26.788914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.633793, 36.067715, 26.949680>,  <29.415865, 36.039379, 27.046141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.633793, 36.067715, 26.949680>,  <29.997005, 36.114937, 26.788914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633793, 36.067715, 26.949680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413590, -0.404929, 0.815460,
		0.066476, 0.906694, 0.416517,
		-0.908033, -0.118059, 0.401918,
		29.361383, 36.032295, 27.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950373, 36.437309, 27.402470>,  <29.997005, 36.114937, 26.788914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950373, 36.437309, 27.402470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.697460, 36.128590, 27.429445>,  <29.545712, 35.943359, 27.445631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.697460, 36.128590, 27.429445>,  <29.950373, 36.437309, 27.402470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697460, 36.128590, 27.429445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344830, -0.202404, 0.916583,
		-0.693766, 0.602795, 0.394116,
		-0.632283, -0.771797, 0.067441,
		29.507776, 35.897049, 27.449677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872091, 36.274628, 28.136648>,  <29.950373, 36.437309, 27.402470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872091, 36.274628, 28.136648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.680830, 35.948826, 28.005220>,  <29.566072, 35.753345, 27.926363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.680830, 35.948826, 28.005220>,  <29.872091, 36.274628, 28.136648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680830, 35.948826, 28.005220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115885, -0.429348, 0.895674,
		-0.870598, 0.390193, 0.299682,
		-0.478153, -0.814500, -0.328572,
		29.537384, 35.704475, 27.906649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441345, 36.112026, 28.690722>,  <29.872091, 36.274628, 28.136648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441345, 36.112026, 28.690722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.474117, 35.774334, 28.478851>,  <29.493780, 35.571716, 28.351730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.474117, 35.774334, 28.478851>,  <29.441345, 36.112026, 28.690722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474117, 35.774334, 28.478851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050703, -0.534303, 0.843771,
		-0.995348, -0.042272, -0.086580,
		0.081928, -0.844235, -0.529674,
		29.498695, 35.521065, 28.319950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100988, 35.557526, 29.040047>,  <29.441345, 36.112026, 28.690722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100988, 35.557526, 29.040047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.315203, 35.341633, 28.780233>,  <29.443731, 35.212097, 28.624346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.315203, 35.341633, 28.780233>,  <29.100988, 35.557526, 29.040047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315203, 35.341633, 28.780233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011118, -0.773563, 0.633622,
		-0.844438, -0.332107, -0.420273,
		0.535537, -0.539727, -0.649534,
		29.475864, 35.179714, 28.585373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903978, 34.936558, 29.157457>,  <29.100988, 35.557526, 29.040047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903978, 34.936558, 29.157457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.269371, 34.888744, 29.001886>,  <29.488607, 34.860058, 28.908545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.269371, 34.888744, 29.001886>,  <28.903978, 34.936558, 29.157457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269371, 34.888744, 29.001886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143302, -0.800114, 0.582479,
		-0.380807, -0.587819, -0.713761,
		0.913482, -0.119529, -0.388925,
		29.543415, 34.852886, 28.885208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117159, 34.097286, 29.064957>,  <28.903978, 34.936558, 29.157457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117159, 34.097286, 29.064957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.468008, 34.289383, 29.066603>,  <29.678518, 34.404640, 29.067591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.468008, 34.289383, 29.066603>,  <29.117159, 34.097286, 29.064957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468008, 34.289383, 29.066603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399586, -0.734508, 0.548479,
		0.266428, -0.479440, -0.836154,
		0.877124, 0.480246, 0.004116,
		29.731146, 34.433456, 29.067837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619125, 33.734276, 28.786354>,  <29.117159, 34.097286, 29.064957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619125, 33.734276, 28.786354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.859694, 33.977955, 28.993109>,  <30.004034, 34.124161, 29.117161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.859694, 33.977955, 28.993109>,  <29.619125, 33.734276, 28.786354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859694, 33.977955, 28.993109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468685, -0.792976, 0.389259,
		0.647015, 0.008149, -0.762433,
		0.601420, 0.609198, 0.516887,
		30.040119, 34.160713, 29.148174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342861, 33.454994, 28.766155>,  <29.619125, 33.734276, 28.786354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342861, 33.454994, 28.766155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.353199, 33.708218, 29.075624>,  <30.359402, 33.860149, 29.261307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.353199, 33.708218, 29.075624>,  <30.342861, 33.454994, 28.766155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353199, 33.708218, 29.075624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215709, -0.759232, 0.614033,
		0.976116, 0.151018, -0.156179,
		0.025846, 0.633056, 0.773674,
		30.360952, 33.898136, 29.307726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111670, 33.398857, 29.051975>,  <30.342861, 33.454994, 28.766155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111670, 33.398857, 29.051975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.861214, 33.519886, 29.339418>,  <30.710939, 33.592503, 29.511885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.861214, 33.519886, 29.339418>,  <31.111670, 33.398857, 29.051975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861214, 33.519886, 29.339418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418299, -0.647428, 0.637073,
		0.658007, 0.699491, 0.278817,
		-0.626141, 0.302569, 0.718609,
		30.673370, 33.610657, 29.555000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511438, 33.400852, 29.702663>,  <31.111670, 33.398857, 29.051975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511438, 33.400852, 29.702663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.132589, 33.414783, 29.830254>,  <30.905279, 33.423141, 29.906807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.132589, 33.414783, 29.830254>,  <31.511438, 33.400852, 29.702663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132589, 33.414783, 29.830254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200400, -0.712170, 0.672796,
		0.250593, 0.701143, 0.667534,
		-0.947124, 0.034824, 0.318974,
		30.848452, 33.425232, 29.925945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535913, 33.467979, 30.424089>,  <31.511438, 33.400852, 29.702663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535913, 33.467979, 30.424089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165503, 33.339725, 30.344418>,  <30.943256, 33.262775, 30.296614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165503, 33.339725, 30.344418>,  <31.535913, 33.467979, 30.424089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165503, 33.339725, 30.344418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063718, -0.652895, 0.754764,
		-0.372044, 0.686239, 0.625027,
		-0.926026, -0.320631, -0.199180,
		30.887695, 33.243538, 30.284664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115681, 33.528431, 30.977961>,  <31.535913, 33.467979, 30.424089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115681, 33.528431, 30.977961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930132, 33.234589, 30.779896>,  <30.818802, 33.058285, 30.661057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930132, 33.234589, 30.779896>,  <31.115681, 33.528431, 30.977961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930132, 33.234589, 30.779896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060245, -0.583797, 0.809662,
		-0.883852, 0.345748, 0.315063,
		-0.463872, -0.734601, -0.495161,
		30.790970, 33.014210, 30.631348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606068, 33.310402, 31.391094>,  <31.115681, 33.528431, 30.977961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606068, 33.310402, 31.391094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.674717, 33.002010, 31.145773>,  <30.715906, 32.816975, 30.998581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.674717, 33.002010, 31.145773>,  <30.606068, 33.310402, 31.391094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674717, 33.002010, 31.145773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012990, -0.624256, 0.781112,
		-0.985077, -0.126088, -0.117150,
		0.171620, -0.770977, -0.613302,
		30.726204, 32.770718, 30.961782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186064, 32.799961, 31.666895>,  <30.606068, 33.310402, 31.391094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186064, 32.799961, 31.666895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.461094, 32.613823, 31.443933>,  <30.626112, 32.502140, 31.310158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.461094, 32.613823, 31.443933>,  <30.186064, 32.799961, 31.666895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461094, 32.613823, 31.443933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068140, -0.722911, 0.687573,
		-0.722911, -0.510738, -0.465346,
		-0.687573, 0.465346, 0.557401,
		30.667366, 32.474220, 31.276712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168230, 32.099567, 31.934378>,  <30.186064, 32.799961, 31.666895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168230, 32.099567, 31.934378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.494659, 32.093758, 31.703272>,  <30.690517, 32.090271, 31.564608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.494659, 32.093758, 31.703272>,  <30.168230, 32.099567, 31.934378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494659, 32.093758, 31.703272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391404, -0.721649, 0.570986,
		-0.425235, -0.692106, -0.583236,
		0.816075, -0.014523, -0.577763,
		30.739481, 32.089401, 31.529943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274372, 31.372101, 31.738039>,  <30.168230, 32.099567, 31.934378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274372, 31.372101, 31.738039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623112, 31.568010, 31.738331>,  <30.832355, 31.685556, 31.738506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623112, 31.568010, 31.738331>,  <30.274372, 31.372101, 31.738039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623112, 31.568010, 31.738331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368260, -0.656518, 0.658308,
		0.322902, -0.573676, -0.752749,
		0.871848, 0.489776, 0.000729,
		30.884666, 31.714943, 31.738550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810495, 30.910507, 31.586676>,  <30.274372, 31.372101, 31.738039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810495, 30.910507, 31.586676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.993847, 31.216000, 31.768490>,  <31.103857, 31.399296, 31.877579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.993847, 31.216000, 31.768490>,  <30.810495, 30.910507, 31.586676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993847, 31.216000, 31.768490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531264, -0.645455, 0.548769,
		0.712496, -0.010064, -0.701604,
		0.458377, 0.763732, 0.454537,
		31.131359, 31.445120, 31.904852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043270, 30.408165, 31.064764>,  <30.810495, 30.910507, 31.586676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043270, 30.408165, 31.064764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852869, 30.062574, 30.999081>,  <30.738628, 29.855219, 30.959671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852869, 30.062574, 30.999081>,  <31.043270, 30.408165, 31.064764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852869, 30.062574, 30.999081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236503, 0.305597, -0.922322,
		0.847047, -0.400192, -0.349798,
		-0.476002, -0.863978, -0.164208,
		30.710068, 29.803381, 30.949818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283974, 30.143219, 30.431311>,  <31.043270, 30.408165, 31.064764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283974, 30.143219, 30.431311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.924603, 29.981670, 30.500259>,  <30.708979, 29.884741, 30.541628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.924603, 29.981670, 30.500259>,  <31.283974, 30.143219, 30.431311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924603, 29.981670, 30.500259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263255, 0.181209, -0.947555,
		0.351454, -0.896689, -0.269125,
		-0.898430, -0.403871, 0.172371,
		30.655073, 29.860510, 30.551971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145662, 29.890800, 29.706625>,  <31.283974, 30.143219, 30.431311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145662, 29.890800, 29.706625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.796560, 29.895851, 29.901821>,  <30.587099, 29.898882, 30.018940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.796560, 29.895851, 29.901821>,  <31.145662, 29.890800, 29.706625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796560, 29.895851, 29.901821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485616, 0.079378, -0.870561,
		-0.049729, -0.996765, -0.063145,
		-0.872757, 0.012628, 0.487992,
		30.534733, 29.899639, 30.048218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745274, 29.343765, 29.433083>,  <31.145662, 29.890800, 29.706625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745274, 29.343765, 29.433083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.516718, 29.632229, 29.589773>,  <30.379585, 29.805305, 29.683786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.516718, 29.632229, 29.589773>,  <30.745274, 29.343765, 29.433083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516718, 29.632229, 29.589773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474489, 0.099157, -0.874659,
		-0.669609, -0.685639, 0.285524,
		-0.571388, 0.721157, 0.391725,
		30.345301, 29.848576, 29.707291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122585, 29.136215, 29.232122>,  <30.745274, 29.343765, 29.433083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122585, 29.136215, 29.232122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.074011, 29.517563, 29.342640>,  <30.044867, 29.746372, 29.408951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.074011, 29.517563, 29.342640>,  <30.122585, 29.136215, 29.232122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074011, 29.517563, 29.342640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492593, 0.183778, -0.850634,
		-0.861746, -0.239398, 0.447306,
		-0.121435, 0.953369, 0.276296,
		30.037580, 29.803574, 29.425529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493618, 29.199018, 29.014183>,  <30.122585, 29.136215, 29.232122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493618, 29.199018, 29.014183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.614050, 29.577644, 29.060432>,  <29.686308, 29.804819, 29.088182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.614050, 29.577644, 29.060432>,  <29.493618, 29.199018, 29.014183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614050, 29.577644, 29.060432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619388, 0.286304, -0.731019,
		-0.725059, 0.148479, 0.672491,
		0.301078, 0.946564, 0.115621,
		29.704372, 29.861614, 29.095119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806587, 29.609293, 29.186563>,  <29.493618, 29.199018, 29.014183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806587, 29.609293, 29.186563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.104580, 29.833645, 29.042109>,  <29.283375, 29.968256, 28.955435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.104580, 29.833645, 29.042109>,  <28.806587, 29.609293, 29.186563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104580, 29.833645, 29.042109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631802, 0.419502, -0.651800,
		-0.214082, 0.713747, 0.666884,
		0.744980, 0.560878, -0.361139,
		29.328074, 30.001907, 28.933767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557678, 30.272568, 29.127560>,  <28.806587, 29.609293, 29.186563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557678, 30.272568, 29.127560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.867540, 30.278078, 28.874666>,  <29.053457, 30.281384, 28.722931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.867540, 30.278078, 28.874666>,  <28.557678, 30.272568, 29.127560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867540, 30.278078, 28.874666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475958, 0.670974, -0.568557,
		0.416381, 0.741353, 0.526330,
		0.774655, 0.013775, -0.632234,
		29.099937, 30.282211, 28.684996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704992, 30.969175, 28.935038>,  <28.557678, 30.272568, 29.127560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704992, 30.969175, 28.935038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.871876, 30.746477, 28.647713>,  <28.972006, 30.612858, 28.475319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.871876, 30.746477, 28.647713>,  <28.704992, 30.969175, 28.935038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871876, 30.746477, 28.647713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469997, 0.544305, -0.694863,
		0.777843, 0.627506, -0.034581,
		0.417208, -0.556748, -0.718310,
		28.997038, 30.579453, 28.432220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910667, 31.513433, 28.505871>,  <28.704992, 30.969175, 28.935038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910667, 31.513433, 28.505871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.939491, 31.192167, 28.269318>,  <28.956785, 30.999407, 28.127386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.939491, 31.192167, 28.269318>,  <28.910667, 31.513433, 28.505871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939491, 31.192167, 28.269318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244553, 0.560598, -0.791153,
		0.966955, 0.201634, -0.156021,
		0.072058, -0.803165, -0.591383,
		28.961109, 30.951218, 28.091902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287735, 31.710972, 28.016216>,  <28.910667, 31.513433, 28.505871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287735, 31.710972, 28.016216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089619, 31.398445, 27.864305>,  <28.970749, 31.210928, 27.773159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089619, 31.398445, 27.864305>,  <29.287735, 31.710972, 28.016216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089619, 31.398445, 27.864305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178898, 0.519527, -0.835516,
		0.850108, -0.345880, -0.397093,
		-0.495289, -0.781318, -0.379777,
		28.941032, 31.164049, 27.750372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587858, 31.506344, 27.381395>,  <29.287735, 31.710972, 28.016216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587858, 31.506344, 27.381395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.222010, 31.345301, 27.366577>,  <29.002501, 31.248674, 27.357685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.222010, 31.345301, 27.366577>,  <29.587858, 31.506344, 27.381395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222010, 31.345301, 27.366577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244744, 0.624263, -0.741887,
		0.321815, -0.669480, -0.669501,
		-0.914622, -0.402607, -0.037046,
		28.947622, 31.224518, 27.355463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390114, 31.412502, 26.660120>,  <29.587858, 31.506344, 27.381395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390114, 31.412502, 26.660120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.045441, 31.429853, 26.862354>,  <28.838636, 31.440264, 26.983696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.045441, 31.429853, 26.862354>,  <29.390114, 31.412502, 26.660120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045441, 31.429853, 26.862354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391780, 0.576350, -0.717167,
		-0.322503, -0.816051, -0.479638,
		-0.861685, 0.043376, 0.505587,
		28.786936, 31.442865, 27.014030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970648, 31.561951, 26.125277>,  <29.390114, 31.412502, 26.660120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970648, 31.561951, 26.125277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.753958, 31.651297, 26.449411>,  <28.623943, 31.704905, 26.643892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.753958, 31.651297, 26.449411>,  <28.970648, 31.561951, 26.125277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753958, 31.651297, 26.449411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389116, 0.787888, -0.477307,
		-0.745067, -0.573883, -0.339903,
		-0.541724, 0.223364, 0.810336,
		28.591440, 31.718306, 26.692513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303062, 31.567980, 25.898943>,  <28.970648, 31.561951, 26.125277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303062, 31.567980, 25.898943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.348721, 31.813166, 26.211672>,  <28.376116, 31.960278, 26.399309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.348721, 31.813166, 26.211672>,  <28.303062, 31.567980, 25.898943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348721, 31.813166, 26.211672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404690, 0.747401, -0.526895,
		-0.907302, -0.256251, 0.333375,
		0.114147, 0.612966, 0.781820,
		28.382965, 31.997055, 26.446218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848049, 32.008705, 25.752365>,  <28.303062, 31.567980, 25.898943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848049, 32.008705, 25.752365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.047976, 32.197189, 26.043058>,  <28.167931, 32.310280, 26.217474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.047976, 32.197189, 26.043058>,  <27.848049, 32.008705, 25.752365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047976, 32.197189, 26.043058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293194, 0.881569, -0.369965,
		-0.814998, -0.028159, 0.578779,
		0.499816, 0.471215, 0.726733,
		28.197920, 32.338554, 26.261078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362986, 32.505264, 26.049620>,  <27.848049, 32.008705, 25.752365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362986, 32.505264, 26.049620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.739410, 32.626198, 26.110277>,  <27.965265, 32.698757, 26.146671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.739410, 32.626198, 26.110277>,  <27.362986, 32.505264, 26.049620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739410, 32.626198, 26.110277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232194, 0.903471, -0.360313,
		-0.245941, 0.303866, 0.920423,
		0.941063, 0.302332, 0.151645,
		28.021729, 32.716896, 26.155771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349182, 33.044903, 26.412987>,  <27.362986, 32.505264, 26.049620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349182, 33.044903, 26.412987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.729568, 33.083866, 26.295561>,  <27.957800, 33.107246, 26.225105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.729568, 33.083866, 26.295561>,  <27.349182, 33.044903, 26.412987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729568, 33.083866, 26.295561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126850, 0.988450, -0.082917,
		0.282095, 0.116089, 0.952337,
		0.950963, 0.097413, -0.293562,
		28.014858, 33.113091, 26.207493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665220, 33.656685, 26.657604>,  <27.349182, 33.044903, 26.412987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665220, 33.656685, 26.657604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.906700, 33.583820, 26.347155>,  <28.051588, 33.540104, 26.160885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.906700, 33.583820, 26.347155>,  <27.665220, 33.656685, 26.657604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906700, 33.583820, 26.347155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024252, 0.968898, -0.246269,
		0.796843, 0.167495, 0.580505,
		0.603699, -0.182160, -0.776122,
		28.087811, 33.529171, 26.114319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.113729, 34.312538, 26.546509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.178289, 34.118984, 26.202461>,  <28.217026, 34.002850, 25.996033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.178289, 34.118984, 26.202461>,  <28.113729, 34.312538, 26.546509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178289, 34.118984, 26.202461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323431, 0.797475, -0.509339,
		0.932385, 0.360395, -0.027792,
		0.161400, -0.483890, -0.860117,
		28.226709, 33.973816, 25.944426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476967, 34.800285, 26.155231>,  <28.113729, 34.312538, 26.546509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476967, 34.800285, 26.155231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.305449, 34.533234, 25.911787>,  <28.202538, 34.373005, 25.765720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.305449, 34.533234, 25.911787>,  <28.476967, 34.800285, 26.155231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305449, 34.533234, 25.911787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322794, 0.742443, -0.587011,
		0.843764, -0.055251, -0.533862,
		-0.428796, -0.667627, -0.608612,
		28.176809, 34.332947, 25.729204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690374, 34.973885, 25.547632>,  <28.476967, 34.800285, 26.155231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690374, 34.973885, 25.547632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.362793, 34.759109, 25.466623>,  <28.166245, 34.630245, 25.418018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.362793, 34.759109, 25.466623>,  <28.690374, 34.973885, 25.547632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362793, 34.759109, 25.466623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308256, 0.709279, -0.633956,
		0.484036, -0.456754, -0.746381,
		-0.818955, -0.536935, -0.202520,
		28.117107, 34.598030, 25.405867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609579, 34.914330, 24.867535>,  <28.690374, 34.973885, 25.547632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609579, 34.914330, 24.867535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.234468, 34.826359, 24.975023>,  <28.009403, 34.773579, 25.039516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.234468, 34.826359, 24.975023>,  <28.609579, 34.914330, 24.867535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234468, 34.826359, 24.975023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346862, 0.629498, -0.695284,
		-0.016251, -0.745229, -0.666610,
		-0.937775, -0.219923, 0.268722,
		27.953136, 34.760384, 25.055639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255741, 34.782951, 24.267647>,  <28.609579, 34.914330, 24.867535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255741, 34.782951, 24.267647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.944746, 34.860359, 24.507002>,  <27.758150, 34.906803, 24.650616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.944746, 34.860359, 24.507002>,  <28.255741, 34.782951, 24.267647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944746, 34.860359, 24.507002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496146, 0.395956, -0.772695,
		-0.386465, -0.897647, -0.211838,
		-0.777486, 0.193517, 0.598387,
		27.711500, 34.918415, 24.686518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604836, 34.558475, 23.981384>,  <28.255741, 34.782951, 24.267647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604836, 34.558475, 23.981384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.451851, 34.831112, 24.230913>,  <27.360060, 34.994694, 24.380630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.451851, 34.831112, 24.230913>,  <27.604836, 34.558475, 23.981384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451851, 34.831112, 24.230913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573938, 0.353853, -0.738501,
		-0.724098, -0.640484, 0.255856,
		-0.382462, 0.681592, 0.623822,
		27.337112, 35.035591, 24.418060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943863, 34.572838, 23.751783>,  <27.604836, 34.558475, 23.981384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943863, 34.572838, 23.751783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.942234, 34.915474, 23.958174>,  <26.941256, 35.121056, 24.082008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.942234, 34.915474, 23.958174>,  <26.943863, 34.572838, 23.751783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942234, 34.915474, 23.958174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582250, 0.417463, -0.697646,
		-0.812999, -0.303269, 0.497051,
		-0.004074, 0.856594, 0.515975,
		26.941011, 35.172451, 24.112967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279736, 34.775921, 23.721346>,  <26.943863, 34.572838, 23.751783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279736, 34.775921, 23.721346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.482174, 35.100571, 23.838058>,  <26.603638, 35.295361, 23.908087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.482174, 35.100571, 23.838058>,  <26.279736, 34.775921, 23.721346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482174, 35.100571, 23.838058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397270, 0.519651, -0.756399,
		-0.765535, 0.266895, 0.585426,
		0.506096, 0.811622, 0.291782,
		26.634003, 35.344059, 23.925592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860031, 35.320747, 23.877777>,  <26.279736, 34.775921, 23.721346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860031, 35.320747, 23.877777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.215117, 35.475460, 23.777889>,  <26.428167, 35.568287, 23.717957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.215117, 35.475460, 23.777889>,  <25.860031, 35.320747, 23.877777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215117, 35.475460, 23.777889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426707, 0.487558, -0.761714,
		-0.172867, 0.782742, 0.597856,
		0.887715, 0.386784, -0.249718,
		26.481432, 35.591496, 23.702974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728378, 36.052399, 23.651960>,  <25.860031, 35.320747, 23.877777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728378, 36.052399, 23.651960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.085859, 35.966518, 23.494381>,  <26.300348, 35.914989, 23.399834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.085859, 35.966518, 23.494381>,  <25.728378, 36.052399, 23.651960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085859, 35.966518, 23.494381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265161, 0.455544, -0.849806,
		0.361917, 0.863935, 0.350191,
		0.893704, -0.214702, -0.393951,
		26.353970, 35.902107, 23.376196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981934, 36.668041, 23.337984>,  <25.728378, 36.052399, 23.651960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981934, 36.668041, 23.337984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.172052, 36.364380, 23.160095>,  <26.286123, 36.182182, 23.053362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.172052, 36.364380, 23.160095>,  <25.981934, 36.668041, 23.337984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172052, 36.364380, 23.160095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188425, 0.405912, -0.894277,
		0.859412, 0.508843, 0.049885,
		0.475296, -0.759154, -0.444724,
		26.314642, 36.136635, 23.026678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451450, 36.998016, 22.854910>,  <25.981934, 36.668041, 23.337984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451450, 36.998016, 22.854910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.409575, 36.618523, 22.735622>,  <26.384449, 36.390827, 22.664049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.409575, 36.618523, 22.735622>,  <26.451450, 36.998016, 22.854910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409575, 36.618523, 22.735622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054707, 0.304907, -0.950810,
		0.992999, -0.083225, -0.083823,
		-0.104690, -0.948739, -0.298220,
		26.378168, 36.333900, 22.646156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798950, 37.004135, 22.302633>,  <26.451450, 36.998016, 22.854910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798950, 37.004135, 22.302633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.539070, 36.700527, 22.285782>,  <26.383142, 36.518360, 22.275671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.539070, 36.700527, 22.285782>,  <26.798950, 37.004135, 22.302633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539070, 36.700527, 22.285782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152300, 0.184261, -0.971006,
		0.744779, -0.624446, -0.235313,
		-0.649700, -0.759023, -0.042130,
		26.344160, 36.472820, 22.273144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998417, 36.866920, 21.746365>,  <26.798950, 37.004135, 22.302633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998417, 36.866920, 21.746365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648388, 36.678463, 21.790667>,  <26.438370, 36.565388, 21.817247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648388, 36.678463, 21.790667>,  <26.998417, 36.866920, 21.746365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648388, 36.678463, 21.790667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263678, 0.272196, -0.925410,
		0.405856, -0.839006, -0.362423,
		-0.875074, -0.471146, 0.110755,
		26.385866, 36.537121, 21.823893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965841, 36.534695, 21.139708>,  <26.998417, 36.866920, 21.746365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965841, 36.534695, 21.139708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.584906, 36.536362, 21.261709>,  <26.356344, 36.537361, 21.334911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.584906, 36.536362, 21.261709>,  <26.965841, 36.534695, 21.139708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584906, 36.536362, 21.261709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298855, 0.187478, -0.935702,
		-0.061083, -0.982260, -0.177297,
		-0.952342, 0.004170, 0.305006,
		26.299204, 36.537613, 21.353210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572468, 36.051441, 20.705013>,  <26.965841, 36.534695, 21.139708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572468, 36.051441, 20.705013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.312639, 36.301422, 20.878216>,  <26.156742, 36.451408, 20.982138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.312639, 36.301422, 20.878216>,  <26.572468, 36.051441, 20.705013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312639, 36.301422, 20.878216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420883, 0.178721, -0.889335,
		-0.633177, -0.759932, 0.146939,
		-0.649573, 0.624951, 0.433004,
		26.117767, 36.488907, 21.008118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978315, 35.879776, 20.484871>,  <26.572468, 36.051441, 20.705013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978315, 35.879776, 20.484871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.909470, 36.248932, 20.622656>,  <25.868162, 36.470425, 20.705326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.909470, 36.248932, 20.622656>,  <25.978315, 35.879776, 20.484871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909470, 36.248932, 20.622656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365173, 0.264989, -0.892429,
		-0.914891, -0.279387, 0.291406,
		-0.172114, 0.922889, 0.344461,
		25.857836, 36.525799, 20.725994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429604, 36.077461, 20.194653>,  <25.978315, 35.879776, 20.484871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429604, 36.077461, 20.194653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.580585, 36.429520, 20.309799>,  <25.671175, 36.640755, 20.378887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.580585, 36.429520, 20.309799>,  <25.429604, 36.077461, 20.194653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580585, 36.429520, 20.309799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291753, 0.408060, -0.865082,
		-0.878867, 0.242544, 0.410810,
		0.377456, 0.880147, 0.287867,
		25.693823, 36.693565, 20.396160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958618, 36.556164, 19.973080>,  <25.429604, 36.077461, 20.194653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958618, 36.556164, 19.973080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.275143, 36.794483, 20.028000>,  <25.465057, 36.937473, 20.060951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.275143, 36.794483, 20.028000>,  <24.958618, 36.556164, 19.973080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275143, 36.794483, 20.028000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229906, 0.498036, -0.836124,
		-0.566539, 0.630070, 0.531079,
		0.791313, 0.595795, 0.137299,
		25.512537, 36.973221, 20.069189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719179, 37.283360, 19.716898>,  <24.958618, 36.556164, 19.973080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719179, 37.283360, 19.716898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.119007, 37.287674, 19.705980>,  <25.358904, 37.290264, 19.699430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.119007, 37.287674, 19.705980>,  <24.719179, 37.283360, 19.716898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119007, 37.287674, 19.705980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028477, 0.581606, -0.812972,
		0.007102, 0.813399, 0.581662,
		0.999569, 0.010790, -0.027293,
		25.418879, 37.290913, 19.697792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957714, 37.992950, 19.555655>,  <24.719179, 37.283360, 19.716898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957714, 37.992950, 19.555655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.276094, 37.761684, 19.483892>,  <25.467123, 37.622925, 19.440836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.276094, 37.761684, 19.483892>,  <24.957714, 37.992950, 19.555655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276094, 37.761684, 19.483892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127921, 0.450304, -0.883664,
		0.591692, 0.680403, 0.432380,
		0.795950, -0.578168, -0.179404,
		25.514879, 37.588234, 19.430071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558701, 38.436768, 19.354736>,  <24.957714, 37.992950, 19.555655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558701, 38.436768, 19.354736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.625755, 38.071266, 19.206705>,  <25.665989, 37.851967, 19.117886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.625755, 38.071266, 19.206705>,  <25.558701, 38.436768, 19.354736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625755, 38.071266, 19.206705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172662, 0.396803, -0.901518,
		0.970611, 0.087231, 0.224290,
		0.167639, -0.913749, -0.370080,
		25.676046, 37.797142, 19.095680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186674, 38.327892, 18.976149>,  <25.558701, 38.436768, 19.354736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186674, 38.327892, 18.976149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900286, 38.089943, 18.829992>,  <25.728453, 37.947174, 18.742298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900286, 38.089943, 18.829992>,  <26.186674, 38.327892, 18.976149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900286, 38.089943, 18.829992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124533, 0.406165, -0.905274,
		0.686936, -0.693651, -0.216720,
		-0.715968, -0.594876, -0.365392,
		25.685495, 37.911480, 18.720375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513155, 38.937279, 18.786068>,  <26.186674, 38.327892, 18.976149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513155, 38.937279, 18.786068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.664625, 39.307426, 18.792885>,  <26.755507, 39.529514, 18.796976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.664625, 39.307426, 18.792885>,  <26.513155, 38.937279, 18.786068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664625, 39.307426, 18.792885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591714, -0.256214, 0.764349,
		0.711675, -0.279354, -0.644578,
		0.378674, 0.925373, 0.017043,
		26.778227, 39.585037, 18.797998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144712, 38.741970, 18.949871>,  <26.513155, 38.937279, 18.786068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144712, 38.741970, 18.949871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.122889, 39.140743, 18.972303>,  <27.109795, 39.380009, 18.985764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.122889, 39.140743, 18.972303>,  <27.144712, 38.741970, 18.949871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122889, 39.140743, 18.972303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590585, -0.013068, 0.806870,
		0.805129, 0.077146, -0.588061,
		-0.054562, 0.996934, 0.056083,
		27.106520, 39.439823, 18.989128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852240, 39.032799, 19.128620>,  <27.144712, 38.741970, 18.949871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852240, 39.032799, 19.128620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612282, 39.329929, 19.247509>,  <27.468307, 39.508205, 19.318842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612282, 39.329929, 19.247509>,  <27.852240, 39.032799, 19.128620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612282, 39.329929, 19.247509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457779, 0.014002, 0.888956,
		0.656174, 0.669343, -0.348448,
		-0.599895, 0.742822, 0.297223,
		27.432314, 39.552776, 19.336676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317028, 39.480698, 19.437799>,  <27.852240, 39.032799, 19.128620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317028, 39.480698, 19.437799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.951418, 39.561794, 19.578344>,  <27.732052, 39.610451, 19.662672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.951418, 39.561794, 19.578344>,  <28.317028, 39.480698, 19.437799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951418, 39.561794, 19.578344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371135, 0.068267, 0.926066,
		0.163766, 0.976850, -0.137642,
		-0.914024, 0.202742, 0.351363,
		27.677210, 39.622616, 19.683754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251089, 40.174480, 19.843607>,  <28.317028, 39.480698, 19.437799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251089, 40.174480, 19.843607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972769, 39.909454, 19.954506>,  <27.805777, 39.750439, 20.021046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972769, 39.909454, 19.954506>,  <28.251089, 40.174480, 19.843607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972769, 39.909454, 19.954506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237456, 0.152100, 0.959417,
		-0.677847, 0.733397, 0.051499,
		-0.695800, -0.662567, 0.277250,
		27.764029, 39.710686, 20.037682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062483, 40.384510, 20.505083>,  <28.251089, 40.174480, 19.843607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062483, 40.384510, 20.505083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.901960, 40.018204, 20.497818>,  <27.805647, 39.798420, 20.493460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.901960, 40.018204, 20.497818>,  <28.062483, 40.384510, 20.505083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901960, 40.018204, 20.497818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108643, -0.067279, 0.991802,
		-0.909477, 0.396045, 0.126491,
		-0.401308, -0.915763, -0.018161,
		27.781569, 39.743473, 20.492371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704655, 40.372082, 21.228792>,  <28.062483, 40.384510, 20.505083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704655, 40.372082, 21.228792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736847, 39.999508, 21.086832>,  <27.756163, 39.775963, 21.001656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736847, 39.999508, 21.086832>,  <27.704655, 40.372082, 21.228792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736847, 39.999508, 21.086832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038648, -0.352871, 0.934873,
		-0.996006, -0.088956, 0.007599,
		0.080482, -0.931434, -0.354900,
		27.760992, 39.720078, 20.980362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259083, 40.015331, 21.502613>,  <27.704655, 40.372082, 21.228792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259083, 40.015331, 21.502613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514780, 39.732384, 21.381948>,  <27.668200, 39.562614, 21.309549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514780, 39.732384, 21.381948>,  <27.259083, 40.015331, 21.502613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514780, 39.732384, 21.381948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049241, -0.429123, 0.901903,
		-0.767425, -0.561683, -0.309146,
		0.639245, -0.707366, -0.301662,
		27.706554, 39.520176, 21.291451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077085, 39.478180, 21.916647>,  <27.259083, 40.015331, 21.502613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077085, 39.478180, 21.916647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.408777, 39.313591, 21.765350>,  <27.607792, 39.214836, 21.674572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.408777, 39.313591, 21.765350>,  <27.077085, 39.478180, 21.916647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408777, 39.313591, 21.765350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069125, -0.596051, 0.799966,
		-0.554617, -0.689501, -0.465820,
		0.829230, -0.411475, -0.378242,
		27.657545, 39.190147, 21.651878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009142, 38.729362, 21.928448>,  <27.077085, 39.478180, 21.916647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009142, 38.729362, 21.928448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.407312, 38.756023, 21.901056>,  <27.646214, 38.772018, 21.884621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.407312, 38.756023, 21.901056>,  <27.009142, 38.729362, 21.928448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407312, 38.756023, 21.901056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095483, -0.722088, 0.685180,
		-0.003780, -0.688583, -0.725147,
		0.995424, 0.066649, -0.068478,
		27.705940, 38.776020, 21.880512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325924, 38.017292, 21.948917>,  <27.009142, 38.729362, 21.928448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325924, 38.017292, 21.948917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.597155, 38.283016, 22.074718>,  <27.759893, 38.442451, 22.150198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.597155, 38.283016, 22.074718>,  <27.325924, 38.017292, 21.948917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597155, 38.283016, 22.074718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155872, -0.548136, 0.821737,
		0.718274, -0.508178, -0.475224,
		0.678076, 0.664306, 0.314501,
		27.800577, 38.482307, 22.169069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874044, 37.628815, 22.075785>,  <27.325924, 38.017292, 21.948917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874044, 37.628815, 22.075785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.953703, 37.948551, 22.302549>,  <28.001499, 38.140392, 22.438608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.953703, 37.948551, 22.302549>,  <27.874044, 37.628815, 22.075785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953703, 37.948551, 22.302549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059730, -0.587323, 0.807145,
		0.978148, -0.126879, -0.164709,
		0.199147, 0.799345, 0.566910,
		28.013447, 38.188354, 22.472622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387192, 37.353031, 22.560965>,  <27.874044, 37.628815, 22.075785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387192, 37.353031, 22.560965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.216513, 37.685631, 22.703251>,  <28.114105, 37.885193, 22.788624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.216513, 37.685631, 22.703251>,  <28.387192, 37.353031, 22.560965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216513, 37.685631, 22.703251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044212, -0.412030, 0.910097,
		0.903313, 0.372610, 0.212575,
		-0.426698, 0.831501, 0.355718,
		28.088503, 37.935081, 22.809967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845957, 37.611893, 23.121572>,  <28.387192, 37.353031, 22.560965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845957, 37.611893, 23.121572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.471987, 37.739418, 23.183897>,  <28.247604, 37.815933, 23.221291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.471987, 37.739418, 23.183897>,  <28.845957, 37.611893, 23.121572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471987, 37.739418, 23.183897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031673, -0.512311, 0.858216,
		0.353433, 0.797431, 0.489070,
		-0.934924, 0.318812, 0.155810,
		28.191509, 37.835060, 23.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914658, 37.840881, 23.683237>,  <28.845957, 37.611893, 23.121572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914658, 37.840881, 23.683237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516609, 37.803543, 23.696020>,  <28.277781, 37.781139, 23.703690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516609, 37.803543, 23.696020>,  <28.914658, 37.840881, 23.683237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516609, 37.803543, 23.696020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071049, -0.453239, 0.888553,
		-0.068459, 0.886488, 0.457660,
		-0.995121, -0.093346, 0.031956,
		28.218073, 37.775539, 23.705606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750900, 37.978043, 24.358025>,  <28.914658, 37.840881, 23.683237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750900, 37.978043, 24.358025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.400497, 37.830917, 24.233234>,  <28.190256, 37.742641, 24.158360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.400497, 37.830917, 24.233234>,  <28.750900, 37.978043, 24.358025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400497, 37.830917, 24.233234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100081, -0.494146, 0.863599,
		-0.471801, 0.787742, 0.396064,
		-0.876007, -0.367809, -0.311976,
		28.137695, 37.720573, 24.139641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210201, 38.098000, 24.921507>,  <28.750900, 37.978043, 24.358025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210201, 38.098000, 24.921507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.065165, 37.785160, 24.718788>,  <27.978142, 37.597454, 24.597157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.065165, 37.785160, 24.718788>,  <28.210201, 38.098000, 24.921507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065165, 37.785160, 24.718788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037155, -0.531242, 0.846405,
		-0.931207, 0.325730, 0.163566,
		-0.362592, -0.782101, -0.506799,
		27.956387, 37.550529, 24.566748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556549, 37.952835, 25.225454>,  <28.210201, 38.098000, 24.921507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556549, 37.952835, 25.225454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755892, 37.637218, 25.081758>,  <27.875498, 37.447849, 24.995541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755892, 37.637218, 25.081758>,  <27.556549, 37.952835, 25.225454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755892, 37.637218, 25.081758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038138, -0.394008, 0.918316,
		-0.866134, -0.471348, -0.166263,
		0.498355, -0.789043, -0.359240,
		27.905397, 37.400505, 24.973986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427618, 37.395168, 25.674442>,  <27.556549, 37.952835, 25.225454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427618, 37.395168, 25.674442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.701683, 37.214973, 25.445494>,  <27.866121, 37.106857, 25.308125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.701683, 37.214973, 25.445494>,  <27.427618, 37.395168, 25.674442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701683, 37.214973, 25.445494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167311, -0.667457, 0.725609,
		-0.708914, -0.592924, -0.381945,
		0.685163, -0.450491, -0.572372,
		27.907232, 37.079826, 25.273783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334162, 36.607204, 25.772978>,  <27.427618, 37.395168, 25.674442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334162, 36.607204, 25.772978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.701138, 36.694752, 25.640068>,  <27.921322, 36.747280, 25.560322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.701138, 36.694752, 25.640068>,  <27.334162, 36.607204, 25.772978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701138, 36.694752, 25.640068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397282, -0.549703, 0.734843,
		-0.021822, -0.806179, -0.591269,
		0.917437, 0.218865, -0.332276,
		27.976368, 36.760410, 25.540386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756441, 35.999428, 25.785688>,  <27.334162, 36.607204, 25.772978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756441, 35.999428, 25.785688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.000004, 36.316257, 25.802898>,  <28.146141, 36.506355, 25.813225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.000004, 36.316257, 25.802898>,  <27.756441, 35.999428, 25.785688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000004, 36.316257, 25.802898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570556, -0.475004, 0.669954,
		0.551091, -0.383390, -0.741155,
		0.608905, 0.792076, 0.043025,
		28.182674, 36.553879, 25.815805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.644743, 31.360163, 27.586351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.007912, 31.394371, 27.422224>,  <28.225813, 31.414896, 27.323748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.007912, 31.394371, 27.422224>,  <27.644743, 31.360163, 27.586351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007912, 31.394371, 27.422224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273812, -0.862213, 0.426164,
		-0.317336, -0.499274, -0.806240,
		0.907923, 0.085521, -0.410319,
		28.280289, 31.420027, 27.299128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824354, 30.621662, 27.433378>,  <27.644743, 31.360163, 27.586351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824354, 30.621662, 27.433378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.172882, 30.817686, 27.423243>,  <28.382000, 30.935301, 27.417162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.172882, 30.817686, 27.423243>,  <27.824354, 30.621662, 27.433378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172882, 30.817686, 27.423243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481832, -0.844630, 0.233320,
		0.092940, -0.215505, -0.972070,
		0.871321, 0.490059, -0.025337,
		28.434278, 30.964705, 27.415642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331200, 30.140421, 27.261934>,  <27.824354, 30.621662, 27.433378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331200, 30.140421, 27.261934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.541670, 30.451899, 27.398621>,  <28.667952, 30.638786, 27.480633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.541670, 30.451899, 27.398621>,  <28.331200, 30.140421, 27.261934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541670, 30.451899, 27.398621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498633, -0.608037, 0.617783,
		0.688842, -0.154672, -0.708219,
		0.526177, 0.778696, 0.341717,
		28.699522, 30.685507, 27.501135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995127, 29.884663, 27.331432>,  <28.331200, 30.140421, 27.261934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995127, 29.884663, 27.331432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.985455, 30.212902, 27.559832>,  <28.979650, 30.409845, 27.696871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.985455, 30.212902, 27.559832>,  <28.995127, 29.884663, 27.331432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985455, 30.212902, 27.559832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491701, -0.487540, 0.721482,
		0.870429, 0.298205, -0.391699,
		-0.024181, 0.820597, 0.570996,
		28.978201, 30.459082, 27.731131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729725, 30.030012, 27.510767>,  <28.995127, 29.884663, 27.331432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729725, 30.030012, 27.510767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.511597, 30.207182, 27.795425>,  <29.380720, 30.313484, 27.966221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.511597, 30.207182, 27.795425>,  <29.729725, 30.030012, 27.510767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511597, 30.207182, 27.795425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521242, -0.485699, 0.701714,
		0.656454, 0.753600, 0.033990,
		-0.545321, 0.442926, 0.711647,
		29.348000, 30.340059, 28.008919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200890, 30.396622, 28.029114>,  <29.729725, 30.030012, 27.510767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200890, 30.396622, 28.029114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.858965, 30.347769, 28.230858>,  <29.653811, 30.318457, 28.351904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.858965, 30.347769, 28.230858>,  <30.200890, 30.396622, 28.029114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858965, 30.347769, 28.230858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517437, -0.126766, 0.846279,
		-0.039422, 0.984385, 0.171557,
		-0.854813, -0.122132, 0.504360,
		29.602522, 30.311129, 28.382166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215635, 30.834763, 28.538521>,  <30.200890, 30.396622, 28.029114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215635, 30.834763, 28.538521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.944046, 30.566864, 28.658808>,  <29.781092, 30.406124, 28.730980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.944046, 30.566864, 28.658808>,  <30.215635, 30.834763, 28.538521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944046, 30.566864, 28.658808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451694, -0.058181, 0.890274,
		-0.578763, 0.740305, 0.342025,
		-0.678974, -0.669748, 0.300719,
		29.740355, 30.365940, 28.749023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103632, 31.075129, 29.172766>,  <30.215635, 30.834763, 28.538521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103632, 31.075129, 29.172766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.969303, 30.698360, 29.171478>,  <29.888706, 30.472300, 29.170706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.969303, 30.698360, 29.171478>,  <30.103632, 31.075129, 29.172766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969303, 30.698360, 29.171478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333739, -0.122184, 0.934713,
		-0.880819, 0.312823, 0.355388,
		-0.335822, -0.941920, -0.003221,
		29.868557, 30.415785, 29.170511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950996, 31.012835, 29.878744>,  <30.103632, 31.075129, 29.172766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950996, 31.012835, 29.878744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.922829, 30.639019, 29.739214>,  <29.905928, 30.414730, 29.655495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.922829, 30.639019, 29.739214>,  <29.950996, 31.012835, 29.878744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922829, 30.639019, 29.739214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289081, -0.353808, 0.889524,
		-0.954711, -0.038198, 0.295072,
		-0.070421, -0.934538, -0.348827,
		29.901703, 30.358658, 29.634565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421185, 30.648232, 30.300186>,  <29.950996, 31.012835, 29.878744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421185, 30.648232, 30.300186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.690817, 30.404440, 30.133261>,  <29.852596, 30.258165, 30.033106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.690817, 30.404440, 30.133261>,  <29.421185, 30.648232, 30.300186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690817, 30.404440, 30.133261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232179, -0.361497, 0.903002,
		-0.701219, -0.705587, -0.102170,
		0.674080, -0.609480, -0.417311,
		29.893042, 30.221596, 30.008068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480032, 30.064329, 30.739120>,  <29.421185, 30.648232, 30.300186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480032, 30.064329, 30.739120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.806568, 30.015102, 30.513397>,  <30.002489, 29.985567, 30.377964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.806568, 30.015102, 30.513397>,  <29.480032, 30.064329, 30.739120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806568, 30.015102, 30.513397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376633, -0.627296, 0.681651,
		-0.437874, -0.768996, -0.465737,
		0.816341, -0.123065, -0.564306,
		30.051470, 29.978182, 30.344105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476084, 29.384809, 30.662558>,  <29.480032, 30.064329, 30.739120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476084, 29.384809, 30.662558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.852581, 29.517941, 30.639622>,  <30.078480, 29.597820, 30.625860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.852581, 29.517941, 30.639622>,  <29.476084, 29.384809, 30.662558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852581, 29.517941, 30.639622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274251, -0.654147, 0.704896,
		0.197103, -0.679202, -0.706990,
		0.941242, 0.332830, -0.057337,
		30.134954, 29.617790, 30.622421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920454, 28.809507, 30.791716>,  <29.476084, 29.384809, 30.662558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920454, 28.809507, 30.791716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.163824, 29.119574, 30.859762>,  <30.309847, 29.305613, 30.900591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.163824, 29.119574, 30.859762>,  <29.920454, 28.809507, 30.791716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163824, 29.119574, 30.859762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432639, -0.503677, 0.747752,
		0.665314, -0.381352, -0.641816,
		0.608424, 0.775164, 0.170116,
		30.346352, 29.352123, 30.910797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657898, 28.626217, 30.801142>,  <29.920454, 28.809507, 30.791716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657898, 28.626217, 30.801142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.636866, 28.962284, 31.017052>,  <30.624247, 29.163923, 31.146597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.636866, 28.962284, 31.017052>,  <30.657898, 28.626217, 30.801142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636866, 28.962284, 31.017052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431509, -0.468340, 0.771011,
		0.900575, 0.273458, -0.337914,
		-0.052581, 0.840166, 0.539775,
		30.621092, 29.214334, 31.178984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994431, 28.246159, 30.373787>,  <30.657898, 28.626217, 30.801142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994431, 28.246159, 30.373787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.171785, 27.897221, 30.291403>,  <31.278198, 27.687857, 30.241972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.171785, 27.897221, 30.291403>,  <30.994431, 28.246159, 30.373787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171785, 27.897221, 30.291403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079847, 0.190425, -0.978449,
		0.892766, 0.450278, 0.014778,
		0.443388, -0.872346, -0.205959,
		31.304802, 27.635517, 30.229616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327759, 28.410454, 29.807087>,  <30.994431, 28.246159, 30.373787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327759, 28.410454, 29.807087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.336573, 28.010551, 29.807981>,  <31.341862, 27.770611, 29.808517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.336573, 28.010551, 29.807981>,  <31.327759, 28.410454, 29.807087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336573, 28.010551, 29.807981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123486, -0.004942, -0.992334,
		0.992102, 0.021591, -0.123565,
		0.022036, -0.999755, 0.002237,
		31.343184, 27.710625, 29.808653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975300, 28.180983, 29.407158>,  <31.327759, 28.410454, 29.807087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975300, 28.180983, 29.407158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.712414, 27.880138, 29.387577>,  <31.554682, 27.699631, 29.375828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.712414, 27.880138, 29.387577>,  <31.975300, 28.180983, 29.407158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712414, 27.880138, 29.387577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052883, 0.110806, -0.992434,
		0.751846, -0.649654, -0.112597,
		-0.657215, -0.752112, -0.048953,
		31.515249, 27.654505, 29.372890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222885, 27.642296, 28.879471>,  <31.975300, 28.180983, 29.407158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222885, 27.642296, 28.879471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.831116, 27.569696, 28.914749>,  <31.596052, 27.526136, 28.935917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.831116, 27.569696, 28.914749>,  <32.222885, 27.642296, 28.879471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831116, 27.569696, 28.914749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061849, -0.146025, -0.987346,
		0.192081, -0.972489, 0.131796,
		-0.979428, -0.181499, 0.088196,
		31.537287, 27.515247, 28.941208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043030, 27.097376, 28.415426>,  <32.222885, 27.642296, 28.879471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043030, 27.097376, 28.415426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.689350, 27.270817, 28.484911>,  <31.477142, 27.374882, 28.526602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.689350, 27.270817, 28.484911>,  <32.043030, 27.097376, 28.415426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689350, 27.270817, 28.484911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104110, 0.179597, -0.978216,
		-0.455357, -0.883024, -0.113657,
		-0.884201, 0.433604, 0.173712,
		31.424089, 27.400898, 28.537025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631634, 26.857868, 27.872866>,  <32.043030, 27.097376, 28.415426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631634, 26.857868, 27.872866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.433384, 27.184120, 27.992268>,  <31.314434, 27.379871, 28.063908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.433384, 27.184120, 27.992268>,  <31.631634, 26.857868, 27.872866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433384, 27.184120, 27.992268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149359, 0.258526, -0.954388,
		-0.855597, -0.517604, -0.006311,
		-0.495626, 0.815629, 0.298503,
		31.284697, 27.428808, 28.081818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022249, 26.909571, 27.497128>,  <31.631634, 26.857868, 27.872866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022249, 26.909571, 27.497128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071203, 27.282825, 27.632347>,  <31.100574, 27.506779, 27.713480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071203, 27.282825, 27.632347>,  <31.022249, 26.909571, 27.497128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071203, 27.282825, 27.632347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208341, 0.357176, -0.910505,
		-0.970369, 0.041001, 0.238123,
		0.122383, 0.933137, 0.338050,
		31.107918, 27.562767, 27.733763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462780, 27.306303, 27.309713>,  <31.022249, 26.909571, 27.497128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462780, 27.306303, 27.309713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.752226, 27.571964, 27.384850>,  <30.925894, 27.731361, 27.429932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.752226, 27.571964, 27.384850>,  <30.462780, 27.306303, 27.309713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752226, 27.571964, 27.384850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283903, 0.534472, -0.796077,
		-0.629113, 0.522723, 0.575306,
		0.723613, 0.664154, 0.187840,
		30.969311, 27.771210, 27.441202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201757, 27.870724, 27.031208>,  <30.462780, 27.306303, 27.309713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201757, 27.870724, 27.031208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.574043, 28.002365, 27.095037>,  <30.797415, 28.081350, 27.133335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.574043, 28.002365, 27.095037>,  <30.201757, 27.870724, 27.031208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574043, 28.002365, 27.095037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141949, 0.727117, -0.671678,
		-0.337077, 0.602489, 0.723454,
		0.930714, 0.329101, 0.159572,
		30.853258, 28.101095, 27.142908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160513, 28.674204, 27.088640>,  <30.201757, 27.870724, 27.031208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160513, 28.674204, 27.088640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.513121, 28.540934, 26.954826>,  <30.724686, 28.460972, 26.874538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.513121, 28.540934, 26.954826>,  <30.160513, 28.674204, 27.088640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513121, 28.540934, 26.954826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114322, 0.536838, -0.835904,
		0.458095, 0.775111, 0.435145,
		0.881521, -0.333177, -0.334536,
		30.777576, 28.440981, 26.854465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461597, 29.333996, 26.915043>,  <30.160513, 28.674204, 27.088640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461597, 29.333996, 26.915043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.694620, 29.055964, 26.746525>,  <30.834435, 28.889145, 26.645414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.694620, 29.055964, 26.746525>,  <30.461597, 29.333996, 26.915043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694620, 29.055964, 26.746525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154258, 0.603466, -0.782325,
		0.798016, 0.390762, 0.458776,
		0.582559, -0.695078, -0.421297,
		30.869389, 28.847441, 26.620136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162548, 29.633453, 26.678215>,  <30.461597, 29.333996, 26.915043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162548, 29.633453, 26.678215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.095228, 29.305317, 26.459597>,  <31.054836, 29.108435, 26.328426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.095228, 29.305317, 26.459597>,  <31.162548, 29.633453, 26.678215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095228, 29.305317, 26.459597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222363, 0.508568, -0.831813,
		0.960328, -0.261527, 0.096821,
		-0.168301, -0.820343, -0.546546,
		31.044737, 29.059214, 26.295633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709597, 29.520683, 26.213251>,  <31.162548, 29.633453, 26.678215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709597, 29.520683, 26.213251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.402271, 29.327600, 26.045115>,  <31.217876, 29.211750, 25.944233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.402271, 29.327600, 26.045115>,  <31.709597, 29.520683, 26.213251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402271, 29.327600, 26.045115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124210, 0.531787, -0.837720,
		0.627906, -0.695842, -0.348622,
		-0.768314, -0.482707, -0.420343,
		31.171778, 29.182789, 25.919012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869997, 29.472744, 25.527996>,  <31.709597, 29.520683, 26.213251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869997, 29.472744, 25.527996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.475426, 29.408228, 25.540314>,  <31.238684, 29.369518, 25.547705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.475426, 29.408228, 25.540314>,  <31.869997, 29.472744, 25.527996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475426, 29.408228, 25.540314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114641, 0.542210, -0.832386,
		0.117560, -0.824617, -0.553340,
		-0.986426, -0.161291, 0.030793,
		31.179499, 29.359840, 25.549551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492611, 29.129473, 25.102791>,  <31.869997, 29.472744, 25.527996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492611, 29.129473, 25.102791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.757320, 29.418156, 25.183979>,  <32.916145, 29.591366, 25.232691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.757320, 29.418156, 25.183979>,  <32.492611, 29.129473, 25.102791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757320, 29.418156, 25.183979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217128, -0.443633, 0.869509,
		0.717575, -0.531345, -0.450286,
		0.661771, 0.721708, 0.202970,
		32.955853, 29.634668, 25.244869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193035, 28.842484, 25.297173>,  <32.492611, 29.129473, 25.102791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193035, 28.842484, 25.297173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.186863, 29.202114, 25.472179>,  <33.183159, 29.417892, 25.577185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.186863, 29.202114, 25.472179>,  <33.193035, 28.842484, 25.297173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186863, 29.202114, 25.472179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153082, -0.430288, 0.889617,
		0.988093, 0.080701, -0.130994,
		-0.015427, 0.899077, 0.437518,
		33.182236, 29.471838, 25.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784405, 28.765690, 25.664814>,  <33.193035, 28.842484, 25.297173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784405, 28.765690, 25.664814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.594536, 29.080084, 25.823263>,  <33.480614, 29.268721, 25.918333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.594536, 29.080084, 25.823263>,  <33.784405, 28.765690, 25.664814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594536, 29.080084, 25.823263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256972, -0.306692, 0.916464,
		0.841816, 0.536810, -0.056399,
		-0.474670, 0.785987, 0.396123,
		33.452133, 29.315880, 25.942101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264519, 29.203178, 26.030222>,  <33.784405, 28.765690, 25.664814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264519, 29.203178, 26.030222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.910347, 29.289011, 26.195129>,  <33.697842, 29.340509, 26.294073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.910347, 29.289011, 26.195129>,  <34.264519, 29.203178, 26.030222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910347, 29.289011, 26.195129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389624, -0.140892, 0.910134,
		0.253382, 0.966491, 0.041144,
		-0.885433, 0.214580, 0.412267,
		33.644718, 29.353386, 26.318810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472565, 29.431791, 26.593182>,  <34.264519, 29.203178, 26.030222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472565, 29.431791, 26.593182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.079716, 29.388483, 26.654778>,  <33.844006, 29.362497, 26.691734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.079716, 29.388483, 26.654778>,  <34.472565, 29.431791, 26.593182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079716, 29.388483, 26.654778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173824, -0.207618, 0.962642,
		-0.072256, 0.972199, 0.222727,
		-0.982122, -0.108272, 0.153990,
		33.785080, 29.356001, 26.700975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300606, 29.859316, 27.160179>,  <34.472565, 29.431791, 26.593182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300606, 29.859316, 27.160179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.033382, 29.562054, 27.145090>,  <33.873047, 29.383698, 27.136036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.033382, 29.562054, 27.145090>,  <34.300606, 29.859316, 27.160179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033382, 29.562054, 27.145090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017814, -0.066653, 0.997617,
		-0.743897, 0.665793, 0.057767,
		-0.668057, -0.743153, -0.037722,
		33.832966, 29.339108, 27.133774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801170, 30.019434, 27.718586>,  <34.300606, 29.859316, 27.160179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801170, 30.019434, 27.718586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725681, 29.634684, 27.639410>,  <33.680389, 29.403833, 27.591904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725681, 29.634684, 27.639410>,  <33.801170, 30.019434, 27.718586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725681, 29.634684, 27.639410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123191, -0.176781, 0.976510,
		-0.974274, 0.208670, -0.085133,
		-0.188719, -0.961876, -0.197939,
		33.669067, 29.346121, 27.580029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152416, 29.851248, 28.034632>,  <33.801170, 30.019434, 27.718586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152416, 29.851248, 28.034632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.310051, 29.485161, 28.001001>,  <33.404633, 29.265509, 27.980824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.310051, 29.485161, 28.001001>,  <33.152416, 29.851248, 28.034632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310051, 29.485161, 28.001001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187205, -0.169494, 0.967588,
		-0.899805, -0.365577, -0.238129,
		0.394089, -0.915219, -0.084074,
		33.428276, 29.210596, 27.975779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748604, 29.349794, 28.459846>,  <33.152416, 29.851248, 28.034632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748604, 29.349794, 28.459846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.100956, 29.166950, 28.410686>,  <33.312366, 29.057243, 28.381191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.100956, 29.166950, 28.410686>,  <32.748604, 29.349794, 28.459846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100956, 29.166950, 28.410686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083011, -0.106432, 0.990849,
		-0.466008, -0.883018, -0.055808,
		0.880877, -0.457111, -0.122898,
		33.365219, 29.029818, 28.373817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703457, 28.782671, 28.842392>,  <32.748604, 29.349794, 28.459846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703457, 28.782671, 28.842392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101372, 28.776783, 28.802044>,  <33.340122, 28.773251, 28.777834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101372, 28.776783, 28.802044>,  <32.703457, 28.782671, 28.842392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101372, 28.776783, 28.802044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092972, -0.274829, 0.956988,
		-0.041809, -0.961381, -0.272029,
		0.994791, -0.014719, -0.100871,
		33.399811, 28.772367, 28.771782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955925, 28.155815, 29.010397>,  <32.703457, 28.782671, 28.842392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955925, 28.155815, 29.010397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254333, 28.418974, 29.051636>,  <33.433380, 28.576868, 29.076380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254333, 28.418974, 29.051636>,  <32.955925, 28.155815, 29.010397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254333, 28.418974, 29.051636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214540, -0.384013, 0.898057,
		0.630418, -0.647849, -0.427626,
		0.746019, 0.657895, 0.103099,
		33.478138, 28.616343, 29.082565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593784, 27.871273, 29.419981>,  <32.955925, 28.155815, 29.010397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593784, 27.871273, 29.419981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.620991, 28.268400, 29.459354>,  <33.637314, 28.506676, 29.482979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.620991, 28.268400, 29.459354>,  <33.593784, 27.871273, 29.419981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620991, 28.268400, 29.459354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384709, -0.117133, 0.915576,
		0.920528, -0.024406, -0.389913,
		0.068017, 0.992816, 0.098435,
		33.641396, 28.566246, 29.488886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.266876, 31.521873, 21.563715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149628, 31.752136, 21.869055>,  <33.079277, 31.890293, 22.052258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149628, 31.752136, 21.869055>,  <33.266876, 31.521873, 21.563715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149628, 31.752136, 21.869055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493905, -0.592454, 0.636440,
		0.818619, 0.563576, -0.110659,
		-0.293122, 0.575657, 0.763347,
		33.061691, 31.924833, 22.098059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701107, 31.287302, 22.099628>,  <33.266876, 31.521873, 21.563715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701107, 31.287302, 22.099628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420971, 31.478535, 22.311651>,  <33.252888, 31.593273, 22.438866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420971, 31.478535, 22.311651>,  <33.701107, 31.287302, 22.099628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420971, 31.478535, 22.311651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214049, -0.567749, 0.794886,
		0.680960, 0.670150, 0.295286,
		-0.700341, 0.478080, 0.530059,
		33.210869, 31.621958, 22.470669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023380, 31.435352, 22.849430>,  <33.701107, 31.287302, 22.099628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023380, 31.435352, 22.849430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627930, 31.460829, 22.903925>,  <33.390659, 31.476114, 22.936623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627930, 31.460829, 22.903925>,  <34.023380, 31.435352, 22.849430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627930, 31.460829, 22.903925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085233, -0.509061, 0.856500,
		0.123906, 0.858371, 0.497842,
		-0.988627, 0.063692, 0.136237,
		33.331341, 31.479937, 22.944796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962566, 31.615088, 23.548347>,  <34.023380, 31.435352, 22.849430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962566, 31.615088, 23.548347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620514, 31.448627, 23.424686>,  <33.415283, 31.348751, 23.350491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620514, 31.448627, 23.424686>,  <33.962566, 31.615088, 23.548347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620514, 31.448627, 23.424686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072449, -0.494557, 0.866120,
		-0.513328, 0.763043, 0.392760,
		-0.855129, -0.416148, -0.309152,
		33.363976, 31.323784, 23.331942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468094, 31.711155, 24.136745>,  <33.962566, 31.615088, 23.548347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468094, 31.711155, 24.136745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282181, 31.415913, 23.941124>,  <33.170631, 31.238768, 23.823751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282181, 31.415913, 23.941124>,  <33.468094, 31.711155, 24.136745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282181, 31.415913, 23.941124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029223, -0.539252, 0.841637,
		-0.884942, 0.405471, 0.229066,
		-0.464784, -0.738106, -0.489056,
		33.142746, 31.194481, 23.794407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815460, 31.546768, 24.539980>,  <33.468094, 31.711155, 24.136745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815460, 31.546768, 24.539980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920040, 31.225246, 24.326235>,  <32.982788, 31.032333, 24.197987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920040, 31.225246, 24.326235>,  <32.815460, 31.546768, 24.539980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920040, 31.225246, 24.326235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154425, -0.581324, 0.798884,
		-0.952783, -0.126350, -0.276116,
		0.261452, -0.803802, -0.534364,
		32.998474, 30.984106, 24.165926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306145, 31.144707, 24.538864>,  <32.815460, 31.546768, 24.539980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306145, 31.144707, 24.538864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599792, 30.882595, 24.467676>,  <32.775982, 30.725328, 24.424963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599792, 30.882595, 24.467676>,  <32.306145, 31.144707, 24.538864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599792, 30.882595, 24.467676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310519, -0.557074, 0.770225,
		-0.603856, -0.510176, -0.612437,
		0.734123, -0.655279, -0.177973,
		32.820030, 30.686012, 24.414284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076027, 30.459883, 24.738728>,  <32.306145, 31.144707, 24.538864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076027, 30.459883, 24.738728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469616, 30.396448, 24.706106>,  <32.705769, 30.358387, 24.686533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469616, 30.396448, 24.706106>,  <32.076027, 30.459883, 24.738728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469616, 30.396448, 24.706106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051684, -0.691306, 0.720712,
		-0.170671, -0.704945, -0.688421,
		0.983972, -0.158585, -0.081552,
		32.764809, 30.348873, 24.681641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230129, 29.706610, 24.714190>,  <32.076027, 30.459883, 24.738728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230129, 29.706610, 24.714190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573059, 29.875309, 24.832260>,  <32.778816, 29.976528, 24.903103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573059, 29.875309, 24.832260>,  <32.230129, 29.706610, 24.714190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573059, 29.875309, 24.832260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080108, -0.675717, 0.732795,
		0.508511, -0.604594, -0.613092,
		0.857321, 0.421748, 0.295177,
		32.830254, 30.001833, 24.920813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720163, 29.222900, 24.797676>,  <32.230129, 29.706610, 24.714190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720163, 29.222900, 24.797676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392342, 29.354433, 24.985378>,  <31.195648, 29.433352, 25.098000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392342, 29.354433, 24.985378>,  <31.720163, 29.222900, 24.797676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392342, 29.354433, 24.985378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284318, 0.477651, -0.831271,
		-0.497489, -0.814690, -0.297968,
		-0.819553, 0.328831, 0.469258,
		31.146475, 29.453083, 25.126156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244587, 29.016005, 24.410158>,  <31.720163, 29.222900, 24.797676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244587, 29.016005, 24.410158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084528, 29.325064, 24.607296>,  <30.988493, 29.510500, 24.725578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084528, 29.325064, 24.607296>,  <31.244587, 29.016005, 24.410158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084528, 29.325064, 24.607296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305000, 0.394846, -0.866644,
		-0.864209, -0.497104, 0.077661,
		-0.400148, 0.772648, 0.492846,
		30.964483, 29.556858, 24.755150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508274, 29.108276, 24.145546>,  <31.244587, 29.016005, 24.410158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508274, 29.108276, 24.145546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566793, 29.452690, 24.340366>,  <30.601904, 29.659338, 24.457258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566793, 29.452690, 24.340366>,  <30.508274, 29.108276, 24.145546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566793, 29.452690, 24.340366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491028, 0.490621, -0.719849,
		-0.858772, -0.133846, 0.494567,
		0.146296, 0.861032, 0.487053,
		30.610682, 29.711000, 24.486483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808393, 29.400949, 24.133062>,  <30.508274, 29.108276, 24.145546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808393, 29.400949, 24.133062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077646, 29.688437, 24.202738>,  <30.239197, 29.860928, 24.244543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077646, 29.688437, 24.202738>,  <29.808393, 29.400949, 24.133062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077646, 29.688437, 24.202738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463333, 0.593451, -0.658133,
		-0.576384, 0.362301, 0.732475,
		0.673130, 0.718717, 0.174190,
		30.279585, 29.904051, 24.254995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439472, 30.064484, 24.201176>,  <29.808393, 29.400949, 24.133062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439472, 30.064484, 24.201176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812880, 30.161118, 24.095213>,  <30.036924, 30.219097, 24.031635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812880, 30.161118, 24.095213>,  <29.439472, 30.064484, 24.201176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812880, 30.161118, 24.095213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337491, 0.841482, -0.421910,
		0.120990, 0.483266, 0.867073,
		0.933521, 0.241583, -0.264909,
		30.092936, 30.233593, 24.015739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398788, 30.721178, 24.376333>,  <29.439472, 30.064484, 24.201176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398788, 30.721178, 24.376333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699795, 30.679068, 24.116291>,  <29.880400, 30.653801, 23.960266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699795, 30.679068, 24.116291>,  <29.398788, 30.721178, 24.376333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699795, 30.679068, 24.116291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302610, 0.821486, -0.483309,
		0.584932, 0.560426, 0.586325,
		0.752517, -0.105275, -0.650104,
		29.925550, 30.647486, 23.921259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650314, 31.374226, 24.169832>,  <29.398788, 30.721178, 24.376333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650314, 31.374226, 24.169832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781082, 31.145094, 23.869169>,  <29.859543, 31.007614, 23.688772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781082, 31.145094, 23.869169>,  <29.650314, 31.374226, 24.169832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781082, 31.145094, 23.869169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063729, 0.780186, -0.622292,
		0.942900, 0.251343, 0.218554,
		0.326922, -0.572831, -0.751656,
		29.879158, 30.973244, 23.643673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228901, 31.755291, 23.795946>,  <29.650314, 31.374226, 24.169832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228901, 31.755291, 23.795946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111307, 31.493797, 23.517033>,  <30.040751, 31.336901, 23.349684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111307, 31.493797, 23.517033>,  <30.228901, 31.755291, 23.795946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111307, 31.493797, 23.517033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054196, 0.739751, -0.670695,
		0.954273, -0.159383, -0.252904,
		-0.293983, -0.653733, -0.697286,
		30.023111, 31.297678, 23.307846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451036, 31.984812, 23.149199>,  <30.228901, 31.755291, 23.795946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451036, 31.984812, 23.149199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130024, 31.759426, 23.070761>,  <29.937416, 31.624195, 23.023697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130024, 31.759426, 23.070761>,  <30.451036, 31.984812, 23.149199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130024, 31.759426, 23.070761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377572, 0.734162, -0.564311,
		0.461933, -0.378837, -0.801935,
		-0.802532, -0.563462, -0.196095,
		29.889265, 31.590387, 23.011932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261621, 32.171024, 22.502438>,  <30.451036, 31.984812, 23.149199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261621, 32.171024, 22.502438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939430, 31.966425, 22.622152>,  <29.746117, 31.843664, 22.693981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939430, 31.966425, 22.622152>,  <30.261621, 32.171024, 22.502438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939430, 31.966425, 22.622152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561537, 0.497319, -0.661324,
		0.189428, -0.700742, -0.687807,
		-0.805477, -0.511502, 0.299286,
		29.697786, 31.812975, 22.711939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883394, 31.969961, 21.857328>,  <30.261621, 32.171024, 22.502438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883394, 31.969961, 21.857328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631744, 31.960783, 22.168114>,  <29.480755, 31.955276, 22.354586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631744, 31.960783, 22.168114>,  <29.883394, 31.969961, 21.857328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631744, 31.960783, 22.168114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679973, 0.500547, -0.535807,
		-0.376614, -0.865405, -0.330509,
		-0.629126, -0.022944, 0.776965,
		29.443007, 31.953899, 22.401203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252916, 31.859095, 21.535917>,  <29.883394, 31.969961, 21.857328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252916, 31.859095, 21.535917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141138, 31.962269, 21.905865>,  <29.074072, 32.024174, 22.127832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141138, 31.962269, 21.905865>,  <29.252916, 31.859095, 21.535917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141138, 31.962269, 21.905865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831176, 0.417241, -0.367501,
		-0.480684, -0.871423, 0.097795,
		-0.279445, 0.257937, 0.924867,
		29.057304, 32.039650, 22.183325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592899, 31.565626, 21.631674>,  <29.252916, 31.859095, 21.535917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592899, 31.565626, 21.631674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623142, 31.881216, 21.875576>,  <28.641287, 32.070572, 22.021917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623142, 31.881216, 21.875576>,  <28.592899, 31.565626, 21.631674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623142, 31.881216, 21.875576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761871, 0.440218, -0.475143,
		-0.643301, -0.428629, 0.634382,
		0.075606, 0.788977, 0.609753,
		28.645824, 32.117908, 22.058502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895226, 31.695658, 21.729761>,  <28.592899, 31.565626, 21.631674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895226, 31.695658, 21.729761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098171, 32.020473, 21.845123>,  <28.219938, 32.215363, 21.914341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098171, 32.020473, 21.845123>,  <27.895226, 31.695658, 21.729761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098171, 32.020473, 21.845123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807008, 0.565109, -0.171436,
		-0.302192, -0.145765, 0.942036,
		0.507363, 0.812037, 0.288406,
		28.250380, 32.264084, 21.931644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.937214, 38.729694, 25.145679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.893349, 38.364674, 24.988091>,  <30.867029, 38.145660, 24.893538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.893349, 38.364674, 24.988091>,  <30.937214, 38.729694, 25.145679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893349, 38.364674, 24.988091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158481, -0.407346, 0.899418,
		-0.981253, 0.036195, 0.189293,
		-0.109663, -0.912556, -0.393973,
		30.860451, 38.090908, 24.869898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502775, 38.422340, 25.592638>,  <30.937214, 38.729694, 25.145679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502775, 38.422340, 25.592638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.675285, 38.105377, 25.420082>,  <30.778791, 37.915199, 25.316549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.675285, 38.105377, 25.420082>,  <30.502775, 38.422340, 25.592638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675285, 38.105377, 25.420082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052459, -0.455308, 0.888787,
		-0.900694, -0.405942, -0.154794,
		0.431275, -0.792405, -0.431389,
		30.804668, 37.867657, 25.290665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253960, 37.885559, 25.834476>,  <30.502775, 38.422340, 25.592638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253960, 37.885559, 25.834476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.555113, 37.677628, 25.673010>,  <30.735806, 37.552868, 25.576130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.555113, 37.677628, 25.673010>,  <30.253960, 37.885559, 25.834476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555113, 37.677628, 25.673010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119426, -0.495246, 0.860505,
		-0.647229, -0.696067, -0.310781,
		0.752882, -0.519828, -0.403667,
		30.780977, 37.521679, 25.551910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188972, 37.177444, 26.017124>,  <30.253960, 37.885559, 25.834476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188972, 37.177444, 26.017124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.582664, 37.222580, 25.962633>,  <30.818880, 37.249660, 25.929937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.582664, 37.222580, 25.962633>,  <30.188972, 37.177444, 26.017124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582664, 37.222580, 25.962633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175855, -0.540831, 0.822543,
		0.019139, -0.833528, -0.552145,
		0.984230, 0.112840, -0.136229,
		30.877934, 37.256432, 25.921764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375257, 36.660740, 26.306576>,  <30.188972, 37.177444, 26.017124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375257, 36.660740, 26.306576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.731659, 36.838806, 26.270929>,  <30.945499, 36.945644, 26.249540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.731659, 36.838806, 26.270929>,  <30.375257, 36.660740, 26.306576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731659, 36.838806, 26.270929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317307, -0.470228, 0.823530,
		0.324702, -0.762045, -0.560228,
		0.891002, 0.445166, -0.089118,
		30.998960, 36.972355, 26.244194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912365, 36.073368, 26.259029>,  <30.375257, 36.660740, 26.306576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912365, 36.073368, 26.259029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.047211, 36.420837, 26.404228>,  <31.128119, 36.629318, 26.491346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.047211, 36.420837, 26.404228>,  <30.912365, 36.073368, 26.259029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047211, 36.420837, 26.404228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307635, -0.466038, 0.829560,
		0.889784, -0.167985, -0.424341,
		0.337112, 0.868671, 0.362996,
		31.148344, 36.681438, 26.513126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408173, 35.837208, 26.676167>,  <30.912365, 36.073368, 26.259029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408173, 35.837208, 26.676167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.412022, 36.216648, 26.802694>,  <31.414331, 36.444313, 26.878611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.412022, 36.216648, 26.802694>,  <31.408173, 35.837208, 26.676167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412022, 36.216648, 26.802694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323325, -0.302295, 0.896704,
		0.946239, 0.093646, -0.309616,
		0.009622, 0.948603, 0.316321,
		31.414907, 36.501228, 26.897591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081348, 35.991230, 27.018707>,  <31.408173, 35.837208, 26.676167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081348, 35.991230, 27.018707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795153, 36.235886, 27.153749>,  <31.623436, 36.382679, 27.234776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795153, 36.235886, 27.153749>,  <32.081348, 35.991230, 27.018707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795153, 36.235886, 27.153749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202576, -0.280848, 0.938130,
		0.668609, 0.739613, 0.077042,
		-0.715490, 0.611635, 0.337605,
		31.580505, 36.419376, 27.255032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425404, 36.383507, 27.571749>,  <32.081348, 35.991230, 27.018707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425404, 36.383507, 27.571749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035778, 36.451424, 27.631575>,  <31.802002, 36.492172, 27.667471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035778, 36.451424, 27.631575>,  <32.425404, 36.383507, 27.571749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035778, 36.451424, 27.631575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127146, -0.136055, 0.982508,
		0.187168, 0.976043, 0.110939,
		-0.974065, 0.169789, 0.149565,
		31.743559, 36.502361, 27.676445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404873, 36.891640, 28.079336>,  <32.425404, 36.383507, 27.571749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404873, 36.891640, 28.079336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.044685, 36.718502, 28.096294>,  <31.828571, 36.614620, 28.106470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.044685, 36.718502, 28.096294>,  <32.404873, 36.891640, 28.079336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044685, 36.718502, 28.096294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135018, -0.185554, 0.973314,
		-0.413427, 0.882165, 0.225528,
		-0.900471, -0.432844, 0.042396,
		31.774544, 36.588650, 28.109013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102341, 37.190491, 28.716394>,  <32.404873, 36.891640, 28.079336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102341, 37.190491, 28.716394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.915634, 36.857639, 28.596607>,  <31.803610, 36.657928, 28.524734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.915634, 36.857639, 28.596607>,  <32.102341, 37.190491, 28.716394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915634, 36.857639, 28.596607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048014, -0.361965, 0.930954,
		-0.883075, 0.420162, 0.208908,
		-0.466769, -0.832133, -0.299468,
		31.775604, 36.607998, 28.506767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650120, 36.999985, 29.219162>,  <32.102341, 37.190491, 28.716394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650120, 36.999985, 29.219162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.684340, 36.650749, 29.027166>,  <31.704870, 36.441208, 28.911968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.684340, 36.650749, 29.027166>,  <31.650120, 36.999985, 29.219162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684340, 36.650749, 29.027166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067642, -0.485735, 0.871485,
		-0.994035, -0.042085, -0.100611,
		0.085547, -0.873092, -0.479991,
		31.710003, 36.388821, 28.883169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330717, 36.410927, 29.590696>,  <31.650120, 36.999985, 29.219162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330717, 36.410927, 29.590696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.573656, 36.199711, 29.353275>,  <31.719419, 36.072983, 29.210823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.573656, 36.199711, 29.353275>,  <31.330717, 36.410927, 29.590696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573656, 36.199711, 29.353275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130593, -0.670614, 0.730221,
		-0.783629, -0.521012, -0.338338,
		0.607348, -0.528038, -0.593553,
		31.755859, 36.041298, 29.175209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145624, 35.789860, 29.657631>,  <31.330717, 36.410927, 29.590696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145624, 35.789860, 29.657631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.527529, 35.766026, 29.541096>,  <31.756672, 35.751724, 29.471174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.527529, 35.766026, 29.541096>,  <31.145624, 35.789860, 29.657631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527529, 35.766026, 29.541096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193479, -0.619512, 0.760770,
		-0.225815, -0.782722, -0.579959,
		0.954764, -0.059583, -0.291336,
		31.813957, 35.748150, 29.453695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764215, 35.215340, 29.150955>,  <31.145624, 35.789860, 29.657631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764215, 35.215340, 29.150955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452763, 34.966606, 29.117346>,  <30.265890, 34.817368, 29.097179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452763, 34.966606, 29.117346>,  <30.764215, 35.215340, 29.150955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452763, 34.966606, 29.117346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331291, 0.521114, -0.786566,
		0.532902, -0.584604, -0.611762,
		-0.778628, -0.621835, -0.084029,
		30.219173, 34.780056, 29.092138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730864, 34.821270, 28.452816>,  <30.764215, 35.215340, 29.150955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730864, 34.821270, 28.452816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.359154, 34.861855, 28.594887>,  <30.136127, 34.886204, 28.680130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.359154, 34.861855, 28.594887>,  <30.730864, 34.821270, 28.452816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359154, 34.861855, 28.594887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275140, 0.451439, -0.848823,
		-0.246463, -0.886515, -0.391596,
		-0.929276, 0.101459, 0.355179,
		30.080372, 34.892292, 28.701441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379362, 34.656555, 27.874434>,  <30.730864, 34.821270, 28.452816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379362, 34.656555, 27.874434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.098696, 34.815422, 28.111052>,  <29.930296, 34.910740, 28.253023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.098696, 34.815422, 28.111052>,  <30.379362, 34.656555, 27.874434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098696, 34.815422, 28.111052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399902, 0.467611, -0.788301,
		-0.589697, -0.789685, -0.169281,
		-0.701666, 0.397162, 0.591545,
		29.888195, 34.934570, 28.288515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734604, 34.446629, 27.619228>,  <30.379362, 34.656555, 27.874434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734604, 34.446629, 27.619228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.660002, 34.783936, 27.820869>,  <29.615240, 34.986320, 27.941854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.660002, 34.783936, 27.820869>,  <29.734604, 34.446629, 27.619228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660002, 34.783936, 27.820869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405241, 0.401394, -0.821378,
		-0.894984, -0.357474, 0.266864,
		-0.186504, 0.843265, 0.504105,
		29.604050, 35.036915, 27.972101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047228, 34.599155, 27.396387>,  <29.734604, 34.446629, 27.619228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047228, 34.599155, 27.396387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.172382, 34.943363, 27.557192>,  <29.247475, 35.149887, 27.653675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.172382, 34.943363, 27.557192>,  <29.047228, 34.599155, 27.396387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172382, 34.943363, 27.557192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607242, 0.506695, -0.611979,
		-0.730315, -0.052638, 0.681080,
		0.312886, 0.860517, 0.402011,
		29.266249, 35.201519, 27.677795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560266, 35.097641, 27.639874>,  <29.047228, 34.599155, 27.396387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560266, 35.097641, 27.639874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.853271, 35.360710, 27.569569>,  <29.029074, 35.518551, 27.527386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.853271, 35.360710, 27.569569>,  <28.560266, 35.097641, 27.639874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853271, 35.360710, 27.569569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635746, 0.568571, -0.522067,
		-0.243417, 0.494160, 0.834598,
		0.732513, 0.657672, -0.175760,
		29.073025, 35.558010, 27.516840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186819, 35.712677, 27.554171>,  <28.560266, 35.097641, 27.639874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186819, 35.712677, 27.554171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.534786, 35.830574, 27.395994>,  <28.743567, 35.901314, 27.301088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.534786, 35.830574, 27.395994>,  <28.186819, 35.712677, 27.554171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534786, 35.830574, 27.395994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490008, 0.607554, -0.625116,
		0.056003, 0.737567, 0.672948,
		0.869917, 0.294742, -0.395439,
		28.795761, 35.918995, 27.277363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184088, 36.501572, 27.534496>,  <28.186819, 35.712677, 27.554171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184088, 36.501572, 27.534496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.471424, 36.391438, 27.278942>,  <28.643826, 36.325356, 27.125608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.471424, 36.391438, 27.278942>,  <28.184088, 36.501572, 27.534496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471424, 36.391438, 27.278942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410695, 0.573416, -0.708889,
		0.561530, 0.771612, 0.298829,
		0.718341, -0.275335, -0.638887,
		28.686926, 36.308838, 27.087276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478527, 37.133667, 27.185762>,  <28.184088, 36.501572, 27.534496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478527, 37.133667, 27.185762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.590750, 36.848396, 26.928804>,  <28.658083, 36.677235, 26.774630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.590750, 36.848396, 26.928804>,  <28.478527, 37.133667, 27.185762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590750, 36.848396, 26.928804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368547, 0.537933, -0.758156,
		0.886263, 0.449458, -0.111919,
		0.280554, -0.713173, -0.642397,
		28.674915, 36.634445, 26.736086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697975, 37.470291, 26.543922>,  <28.478527, 37.133667, 27.185762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697975, 37.470291, 26.543922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.649635, 37.093079, 26.419928>,  <28.620630, 36.866753, 26.345531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.649635, 37.093079, 26.419928>,  <28.697975, 37.470291, 26.543922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649635, 37.093079, 26.419928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231929, 0.330457, -0.914881,
		0.965196, -0.038669, -0.258652,
		-0.120851, -0.943028, -0.309988,
		28.613380, 36.810169, 26.326931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086872, 37.413574, 25.863249>,  <28.697975, 37.470291, 26.543922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086872, 37.413574, 25.863249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.827351, 37.109238, 25.868589>,  <28.671638, 36.926636, 25.871794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.827351, 37.109238, 25.868589>,  <29.086872, 37.413574, 25.863249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827351, 37.109238, 25.868589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293992, 0.234438, -0.926611,
		0.701873, -0.605112, -0.375785,
		-0.648801, -0.760841, 0.013353,
		28.632710, 36.880985, 25.872595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174143, 37.113663, 25.192886>,  <29.086872, 37.413574, 25.863249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174143, 37.113663, 25.192886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.808205, 36.998238, 25.305874>,  <28.588642, 36.928982, 25.373667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.808205, 36.998238, 25.305874>,  <29.174143, 37.113663, 25.192886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808205, 36.998238, 25.305874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344873, 0.194483, -0.918281,
		0.210053, -0.937499, -0.277441,
		-0.914845, -0.288569, 0.282466,
		28.533751, 36.911671, 25.390614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960548, 36.613838, 24.700512>,  <29.174143, 37.113663, 25.192886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960548, 36.613838, 24.700512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.621733, 36.761032, 24.853931>,  <28.418444, 36.849350, 24.945984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.621733, 36.761032, 24.853931>,  <28.960548, 36.613838, 24.700512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621733, 36.761032, 24.853931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321693, 0.219519, -0.921046,
		-0.423131, -0.903546, -0.067561,
		-0.847038, 0.367989, 0.383550,
		28.367620, 36.871429, 24.968996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286047, 36.362785, 24.306358>,  <28.960548, 36.613838, 24.700512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286047, 36.362785, 24.306358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.225031, 36.717178, 24.481524>,  <28.188421, 36.929813, 24.586622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.225031, 36.717178, 24.481524>,  <28.286047, 36.362785, 24.306358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225031, 36.717178, 24.481524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478081, 0.321652, -0.817299,
		-0.864968, -0.334027, 0.374507,
		-0.152539, 0.885983, 0.437911,
		28.179270, 36.982975, 24.612896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588242, 36.176899, 24.153721>,  <28.286047, 36.362785, 24.306358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588242, 36.176899, 24.153721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.267187, 35.952950, 24.071438>,  <27.074554, 35.818581, 24.022068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.267187, 35.952950, 24.071438>,  <27.588242, 36.176899, 24.153721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267187, 35.952950, 24.071438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148051, -0.521085, 0.840566,
		-0.577804, 0.644212, 0.501131,
		-0.802635, -0.559876, -0.205708,
		27.026396, 35.784988, 24.009726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334311, 36.193333, 24.765396>,  <27.588242, 36.176899, 24.153721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334311, 36.193333, 24.765396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.199501, 35.875343, 24.563633>,  <27.118616, 35.684547, 24.442575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.199501, 35.875343, 24.563633>,  <27.334311, 36.193333, 24.765396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199501, 35.875343, 24.563633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198817, -0.583763, 0.787205,
		-0.920265, 0.165021, 0.354797,
		-0.337023, -0.794977, -0.504408,
		27.098394, 35.636848, 24.412312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954231, 35.897121, 25.259100>,  <27.334311, 36.193333, 24.765396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954231, 35.897121, 25.259100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.065329, 35.625916, 24.986877>,  <27.131987, 35.463192, 24.823544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.065329, 35.625916, 24.986877>,  <26.954231, 35.897121, 25.259100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065329, 35.625916, 24.986877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122706, -0.677585, 0.725135,
		-0.952787, -0.284908, -0.104996,
		0.277741, -0.678016, -0.680555,
		27.148651, 35.422512, 24.782711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813068, 35.210537, 25.566187>,  <26.954231, 35.897121, 25.259100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813068, 35.210537, 25.566187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.075140, 35.106709, 25.282394>,  <27.232382, 35.044411, 25.112118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.075140, 35.106709, 25.282394>,  <26.813068, 35.210537, 25.566187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075140, 35.106709, 25.282394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330282, -0.746204, 0.578008,
		-0.679452, -0.613028, -0.403165,
		0.655178, -0.259570, -0.709482,
		27.271694, 35.028835, 25.069550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805111, 34.432331, 25.515823>,  <26.813068, 35.210537, 25.566187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805111, 34.432331, 25.515823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.160255, 34.526611, 25.357761>,  <27.373343, 34.583179, 25.262924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.160255, 34.526611, 25.357761>,  <26.805111, 34.432331, 25.515823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160255, 34.526611, 25.357761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426556, -0.743611, 0.514871,
		-0.172487, -0.625690, -0.760763,
		0.887861, 0.235700, -0.395156,
		27.426615, 34.597321, 25.239214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062790, 33.776363, 25.295488>,  <26.805111, 34.432331, 25.515823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062790, 33.776363, 25.295488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.382084, 34.017246, 25.300610>,  <27.573660, 34.161777, 25.303682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.382084, 34.017246, 25.300610>,  <27.062790, 33.776363, 25.295488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382084, 34.017246, 25.300610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531203, -0.713821, 0.456380,
		0.283975, -0.357498, -0.889693,
		0.798237, 0.602208, 0.012804,
		27.621555, 34.197910, 25.304451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557531, 33.355686, 25.108656>,  <27.062790, 33.776363, 25.295488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557531, 33.355686, 25.108656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.752771, 33.670700, 25.259150>,  <27.869915, 33.859707, 25.349445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.752771, 33.670700, 25.259150>,  <27.557531, 33.355686, 25.108656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752771, 33.670700, 25.259150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651607, -0.615601, 0.443219,
		0.580659, 0.028821, -0.813637,
		0.488102, 0.787530, 0.376235,
		27.899202, 33.906960, 25.372021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297941, 33.352390, 24.819218>,  <27.557531, 33.355686, 25.108656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297941, 33.352390, 24.819218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.259567, 33.545361, 25.167486>,  <28.236544, 33.661140, 25.376448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.259567, 33.545361, 25.167486>,  <28.297941, 33.352390, 24.819218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259567, 33.545361, 25.167486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634430, -0.644376, 0.426942,
		0.767004, 0.593336, -0.244246,
		-0.095934, 0.482423, 0.870669,
		28.230787, 33.690086, 25.428686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886713, 33.216045, 25.137348>,  <28.297941, 33.352390, 24.819218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886713, 33.216045, 25.137348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.675110, 33.339996, 25.453356>,  <28.548147, 33.414368, 25.642960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.675110, 33.339996, 25.453356>,  <28.886713, 33.216045, 25.137348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675110, 33.339996, 25.453356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287997, -0.810142, 0.510616,
		0.798253, 0.497643, 0.339329,
		-0.529009, 0.309875, 0.790017,
		28.516407, 33.432961, 25.690361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284992, 33.103832, 25.761784>,  <28.886713, 33.216045, 25.137348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284992, 33.103832, 25.761784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.906281, 33.120815, 25.889410>,  <28.679052, 33.131004, 25.965986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.906281, 33.120815, 25.889410>,  <29.284992, 33.103832, 25.761784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906281, 33.120815, 25.889410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151232, -0.816367, 0.557381,
		0.284139, 0.575970, 0.766500,
		-0.946781, 0.042454, 0.319067,
		28.622246, 33.133553, 25.985130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239574, 33.151886, 26.480581>,  <29.284992, 33.103832, 25.761784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239574, 33.151886, 26.480581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.882820, 32.997166, 26.386841>,  <28.668768, 32.904331, 26.330597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.882820, 32.997166, 26.386841>,  <29.239574, 33.151886, 26.480581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882820, 32.997166, 26.386841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144251, -0.734420, 0.663189,
		-0.428636, 0.557684, 0.710816,
		-0.891887, -0.386803, -0.234352,
		28.615253, 32.881126, 26.316536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971237, 33.026150, 27.058235>,  <29.239574, 33.151886, 26.480581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971237, 33.026150, 27.058235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.734594, 32.806755, 26.821875>,  <28.592607, 32.675117, 26.680058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.734594, 32.806755, 26.821875>,  <28.971237, 33.026150, 27.058235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734594, 32.806755, 26.821875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050609, -0.756743, 0.651750,
		-0.804636, 0.355675, 0.475454,
		-0.591608, -0.548484, -0.590902,
		28.557112, 32.642208, 26.644604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438702, 32.686455, 27.559557>,  <28.971237, 33.026150, 27.058235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438702, 32.686455, 27.559557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420443, 32.483418, 27.215403>,  <28.409487, 32.361595, 27.008909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420443, 32.483418, 27.215403>,  <28.438702, 32.686455, 27.559557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420443, 32.483418, 27.215403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157590, -0.854159, 0.495559,
		-0.986449, -0.112966, 0.118984,
		-0.045650, -0.507594, -0.860386,
		28.406748, 32.331139, 26.957287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025927, 32.005371, 27.793774>,  <28.438702, 32.686455, 27.559557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025927, 32.005371, 27.793774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.209827, 31.935312, 27.445532>,  <28.320168, 31.893278, 27.236586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.209827, 31.935312, 27.445532>,  <28.025927, 32.005371, 27.793774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209827, 31.935312, 27.445532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098362, -0.964283, 0.245932,
		-0.882584, -0.198702, -0.426102,
		0.459750, -0.175143, -0.870606,
		28.347754, 31.882769, 27.184351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.275045, 32.207211, 22.004000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.620255, 32.375431, 21.892052>,  <27.827381, 32.476364, 21.824883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.620255, 32.375431, 21.892052>,  <27.275045, 32.207211, 22.004000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620255, 32.375431, 21.892052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504729, 0.740802, -0.443240,
		0.020923, 0.523785, 0.851594,
		0.863024, 0.420550, -0.279869,
		27.879162, 32.501595, 21.808090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150360, 32.962818, 22.125971>,  <27.275045, 32.207211, 22.004000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150360, 32.962818, 22.125971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.449245, 32.950024, 21.860445>,  <27.628576, 32.942348, 21.701130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.449245, 32.950024, 21.860445>,  <27.150360, 32.962818, 22.125971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449245, 32.950024, 21.860445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487732, 0.652094, -0.580424,
		0.451435, 0.757463, 0.471652,
		0.747211, -0.031984, -0.663817,
		27.673409, 32.940430, 21.661301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259966, 33.644981, 21.800570>,  <27.150360, 32.962818, 22.125971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259966, 33.644981, 21.800570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.425411, 33.404011, 21.527512>,  <27.524679, 33.259430, 21.363676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.425411, 33.404011, 21.527512>,  <27.259966, 33.644981, 21.800570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425411, 33.404011, 21.527512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340755, 0.592864, -0.729656,
		0.844280, 0.534411, 0.039937,
		0.413614, -0.602426, -0.682647,
		27.549496, 33.223282, 21.322718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387274, 34.083916, 21.287668>,  <27.259966, 33.644981, 21.800570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387274, 34.083916, 21.287668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.448454, 33.738804, 21.094912>,  <27.485163, 33.531738, 20.979258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.448454, 33.738804, 21.094912>,  <27.387274, 34.083916, 21.287668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448454, 33.738804, 21.094912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039266, 0.481939, -0.875324,
		0.987453, 0.152805, 0.039836,
		0.152952, -0.862778, -0.481892,
		27.494339, 33.479969, 20.950344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833376, 34.283558, 20.757910>,  <27.387274, 34.083916, 21.287668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833376, 34.283558, 20.757910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.640446, 33.947922, 20.657278>,  <27.524687, 33.746540, 20.596899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.640446, 33.947922, 20.657278>,  <27.833376, 34.283558, 20.757910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640446, 33.947922, 20.657278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184943, 0.378261, -0.907036,
		0.856246, -0.390960, -0.337629,
		-0.482327, -0.839088, -0.251580,
		27.495747, 33.696194, 20.581804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116840, 34.012825, 20.151459>,  <27.833376, 34.283558, 20.757910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116840, 34.012825, 20.151459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.739096, 33.885628, 20.185083>,  <27.512449, 33.809311, 20.205257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.739096, 33.885628, 20.185083>,  <28.116840, 34.012825, 20.151459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739096, 33.885628, 20.185083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263647, 0.579020, -0.771509,
		0.196660, -0.750744, -0.630641,
		-0.944360, -0.317991, 0.084061,
		27.455788, 33.790230, 20.210302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973949, 33.880600, 19.467957>,  <28.116840, 34.012825, 20.151459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973949, 33.880600, 19.467957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.616970, 33.877022, 19.648378>,  <27.402782, 33.874874, 19.756632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.616970, 33.877022, 19.648378>,  <27.973949, 33.880600, 19.467957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616970, 33.877022, 19.648378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419425, 0.384724, -0.822235,
		-0.166176, -0.922988, -0.347099,
		-0.892450, -0.008947, 0.451057,
		27.349236, 33.874336, 19.783695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404367, 33.736343, 18.887978>,  <27.973949, 33.880600, 19.467957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404367, 33.736343, 18.887978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.165031, 33.858353, 19.184341>,  <27.021429, 33.931557, 19.362160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.165031, 33.858353, 19.184341>,  <27.404367, 33.736343, 18.887978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165031, 33.858353, 19.184341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606833, 0.431311, -0.667626,
		-0.523202, -0.849078, -0.072976,
		-0.598342, 0.305019, 0.740912,
		26.985529, 33.949860, 19.406614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682014, 33.488567, 18.740396>,  <27.404367, 33.736343, 18.887978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682014, 33.488567, 18.740396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.694988, 33.807529, 18.981428>,  <26.702772, 33.998905, 19.126047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.694988, 33.807529, 18.981428>,  <26.682014, 33.488567, 18.740396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694988, 33.807529, 18.981428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423696, 0.557012, -0.714296,
		-0.905224, -0.232140, 0.355923,
		0.032437, 0.797401, 0.602577,
		26.704720, 34.046749, 19.162201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095079, 33.883820, 18.529341>,  <26.682014, 33.488567, 18.740396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095079, 33.883820, 18.529341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.321545, 34.130821, 18.747753>,  <26.457424, 34.279022, 18.878799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.321545, 34.130821, 18.747753>,  <26.095079, 33.883820, 18.529341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321545, 34.130821, 18.747753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211166, 0.748971, -0.628053,
		-0.796785, 0.240279, 0.554437,
		0.566165, 0.617502, 0.546030,
		26.491394, 34.316071, 18.911562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678114, 34.419701, 18.632635>,  <26.095079, 33.883820, 18.529341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678114, 34.419701, 18.632635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.057159, 34.539757, 18.676340>,  <26.284588, 34.611790, 18.702562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.057159, 34.539757, 18.676340>,  <25.678114, 34.419701, 18.632635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057159, 34.539757, 18.676340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189723, 0.804094, -0.563417,
		-0.256963, 0.513173, 0.818916,
		0.947615, 0.300144, 0.109262,
		26.341444, 34.629799, 18.709118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614416, 35.087891, 18.614426>,  <25.678114, 34.419701, 18.632635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614416, 35.087891, 18.614426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.005436, 35.048923, 18.539694>,  <26.240047, 35.025543, 18.494854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.005436, 35.048923, 18.539694>,  <25.614416, 35.087891, 18.614426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005436, 35.048923, 18.539694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037431, 0.792299, -0.608983,
		0.207354, 0.602305, 0.770865,
		0.977549, -0.097421, -0.186832,
		26.298700, 35.019695, 18.483644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853395, 35.713169, 18.672480>,  <25.614416, 35.087891, 18.614426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853395, 35.713169, 18.672480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.126232, 35.511036, 18.461050>,  <26.289934, 35.389755, 18.334192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.126232, 35.511036, 18.461050>,  <25.853395, 35.713169, 18.672480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126232, 35.511036, 18.461050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248080, 0.839857, -0.482801,
		0.687902, 0.198185, 0.698221,
		0.682090, -0.505334, -0.528574,
		26.330858, 35.359436, 18.302479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520555, 36.012112, 18.688786>,  <25.853395, 35.713169, 18.672480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520555, 36.012112, 18.688786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.450451, 35.873142, 18.320312>,  <26.408388, 35.789761, 18.099228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.450451, 35.873142, 18.320312>,  <26.520555, 36.012112, 18.688786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450451, 35.873142, 18.320312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317082, 0.865892, -0.386899,
		0.932064, -0.359898, -0.041594,
		-0.175260, -0.347425, -0.921184,
		26.397873, 35.768913, 18.043957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884876, 36.568504, 18.609108>,  <26.520555, 36.012112, 18.688786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884876, 36.568504, 18.609108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.859522, 36.949139, 18.729416>,  <25.844309, 37.177521, 18.801601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.859522, 36.949139, 18.729416>,  <25.884876, 36.568504, 18.609108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859522, 36.949139, 18.729416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179819, -0.285554, 0.941341,
		0.981655, 0.113754, -0.153013,
		-0.063387, 0.951588, 0.300771,
		25.840506, 37.234615, 18.819647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461014, 36.792236, 19.012417>,  <25.884876, 36.568504, 18.609108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461014, 36.792236, 19.012417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.165674, 37.029850, 19.140142>,  <25.988470, 37.172421, 19.216778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.165674, 37.029850, 19.140142>,  <26.461014, 36.792236, 19.012417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165674, 37.029850, 19.140142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205541, -0.252737, 0.945450,
		0.642337, 0.763703, 0.064508,
		-0.738347, 0.594039, 0.319315,
		25.944170, 37.208061, 19.235937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781860, 37.236237, 19.579681>,  <26.461014, 36.792236, 19.012417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781860, 37.236237, 19.579681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.385899, 37.216885, 19.632971>,  <26.148321, 37.205273, 19.664944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.385899, 37.216885, 19.632971>,  <26.781860, 37.236237, 19.579681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385899, 37.216885, 19.632971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141233, -0.257593, 0.955876,
		-0.011929, 0.965041, 0.261826,
		-0.989904, -0.048381, 0.133223,
		26.088926, 37.202370, 19.672937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651485, 37.587013, 20.225637>,  <26.781860, 37.236237, 19.579681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651485, 37.587013, 20.225637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.310108, 37.388271, 20.162682>,  <26.105282, 37.269028, 20.124908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.310108, 37.388271, 20.162682>,  <26.651485, 37.587013, 20.225637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310108, 37.388271, 20.162682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038834, -0.240521, 0.969867,
		-0.519738, 0.833837, 0.185976,
		-0.853442, -0.496855, -0.157389,
		26.054075, 37.239216, 20.115465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227196, 37.889450, 20.743219>,  <26.651485, 37.587013, 20.225637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227196, 37.889450, 20.743219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.094648, 37.529209, 20.630714>,  <26.015120, 37.313065, 20.563211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.094648, 37.529209, 20.630714>,  <26.227196, 37.889450, 20.743219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094648, 37.529209, 20.630714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009721, -0.294828, 0.955501,
		-0.943451, 0.319358, 0.088943,
		-0.331370, -0.900603, -0.281260,
		25.995237, 37.259029, 20.546337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567312, 37.739079, 21.058315>,  <26.227196, 37.889450, 20.743219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567312, 37.739079, 21.058315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.709600, 37.378437, 20.959862>,  <25.794973, 37.162052, 20.900789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.709600, 37.378437, 20.959862>,  <25.567312, 37.739079, 21.058315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709600, 37.378437, 20.959862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045983, -0.279926, 0.958920,
		-0.933461, -0.329788, -0.141033,
		0.355719, -0.901599, -0.246135,
		25.816317, 37.107956, 20.886021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214998, 37.284481, 21.540190>,  <25.567312, 37.739079, 21.058315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214998, 37.284481, 21.540190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.495331, 37.046513, 21.382757>,  <25.663530, 36.903732, 21.288298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.495331, 37.046513, 21.382757>,  <25.214998, 37.284481, 21.540190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495331, 37.046513, 21.382757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005841, -0.546952, 0.837143,
		-0.713302, -0.588996, -0.379847,
		0.700832, -0.594917, -0.393583,
		25.705582, 36.868038, 21.264683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124371, 36.698570, 21.849205>,  <25.214998, 37.284481, 21.540190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124371, 36.698570, 21.849205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.472834, 36.625538, 21.666885>,  <25.681911, 36.581718, 21.557493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.472834, 36.625538, 21.666885>,  <25.124371, 36.698570, 21.849205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472834, 36.625538, 21.666885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308198, -0.519321, 0.797069,
		-0.382232, -0.834848, -0.396140,
		0.871156, -0.182575, -0.455800,
		25.734180, 36.570766, 21.530146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240162, 36.005283, 21.962162>,  <25.124371, 36.698570, 21.849205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240162, 36.005283, 21.962162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.607962, 36.150703, 21.902367>,  <25.828642, 36.237957, 21.866489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.607962, 36.150703, 21.902367>,  <25.240162, 36.005283, 21.962162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607962, 36.150703, 21.902367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316670, -0.459787, 0.829648,
		0.232888, -0.810201, -0.537901,
		0.919501, 0.363553, -0.149488,
		25.883812, 36.259769, 21.857521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686781, 35.413052, 21.960634>,  <25.240162, 36.005283, 21.962162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686781, 35.413052, 21.960634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.907282, 35.733494, 22.053890>,  <26.039581, 35.925758, 22.109844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.907282, 35.733494, 22.053890>,  <25.686781, 35.413052, 21.960634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907282, 35.733494, 22.053890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363356, -0.482047, 0.797247,
		0.751063, -0.354770, -0.556815,
		0.551250, 0.801105, 0.233140,
		26.072657, 35.973824, 22.123833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207890, 35.094490, 22.308170>,  <25.686781, 35.413052, 21.960634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207890, 35.094490, 22.308170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.283466, 35.476337, 22.400263>,  <26.328812, 35.705444, 22.455519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.283466, 35.476337, 22.400263>,  <26.207890, 35.094490, 22.308170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283466, 35.476337, 22.400263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420301, -0.290508, 0.859623,
		0.887495, -0.065653, -0.456116,
		0.188942, 0.954618, 0.230230,
		26.340149, 35.762722, 22.469332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060583, 35.224522, 22.443096>,  <26.207890, 35.094490, 22.308170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060583, 35.224522, 22.443096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.807041, 35.479641, 22.618113>,  <26.654917, 35.632713, 22.723124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.807041, 35.479641, 22.618113>,  <27.060583, 35.224522, 22.443096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807041, 35.479641, 22.618113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428093, -0.181853, 0.885249,
		0.644179, 0.748426, -0.157769,
		-0.633853, 0.637799, 0.437542,
		26.616886, 35.670982, 22.749374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528271, 35.713322, 22.892698>,  <27.060583, 35.224522, 22.443096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528271, 35.713322, 22.892698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.163002, 35.747169, 23.052176>,  <26.943840, 35.767479, 23.147861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.163002, 35.747169, 23.052176>,  <27.528271, 35.713322, 22.892698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163002, 35.747169, 23.052176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405078, 0.080373, 0.910742,
		0.045023, 0.993166, -0.107672,
		-0.913173, 0.084620, 0.398691,
		26.889050, 35.772556, 23.171783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660969, 36.090870, 23.347494>,  <27.528271, 35.713322, 22.892698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660969, 36.090870, 23.347494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.315226, 35.925797, 23.462439>,  <27.107779, 35.826752, 23.531406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.315226, 35.925797, 23.462439>,  <27.660969, 36.090870, 23.347494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315226, 35.925797, 23.462439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411148, -0.250915, 0.876355,
		-0.289553, 0.875634, 0.386554,
		-0.864359, -0.412682, 0.287362,
		27.055918, 35.801991, 23.548647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497860, 36.701508, 23.676300>,  <27.660969, 36.090870, 23.347494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497860, 36.701508, 23.676300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.616432, 36.965492, 23.952438>,  <27.687574, 37.123886, 24.118120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.616432, 36.965492, 23.952438>,  <27.497860, 36.701508, 23.676300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616432, 36.965492, 23.952438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081826, 0.737723, -0.670126,
		-0.951543, 0.142156, 0.272685,
		0.296429, 0.659966, 0.690343,
		27.705360, 37.163483, 24.159542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980963, 37.220566, 23.834362>,  <27.497860, 36.701508, 23.676300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980963, 37.220566, 23.834362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.337053, 37.381371, 23.920044>,  <27.550709, 37.477852, 23.971453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.337053, 37.381371, 23.920044>,  <26.980963, 37.220566, 23.834362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337053, 37.381371, 23.920044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123165, 0.665161, -0.736472,
		-0.438550, 0.629244, 0.641658,
		0.890227, 0.402010, 0.214205,
		27.604122, 37.501972, 23.984306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836725, 37.910046, 23.747730>,  <26.980963, 37.220566, 23.834362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836725, 37.910046, 23.747730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.233799, 37.866394, 23.727062>,  <27.472044, 37.840202, 23.714663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.233799, 37.866394, 23.727062>,  <26.836725, 37.910046, 23.747730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233799, 37.866394, 23.727062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038070, 0.688991, -0.723770,
		0.114581, 0.716508, 0.688104,
		0.992684, -0.109126, -0.051668,
		27.531605, 37.833656, 23.711561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187395, 38.526604, 23.661268>,  <26.836725, 37.910046, 23.747730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187395, 38.526604, 23.661268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.483305, 38.302063, 23.512882>,  <27.660851, 38.167339, 23.423851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.483305, 38.302063, 23.512882>,  <27.187395, 38.526604, 23.661268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483305, 38.302063, 23.512882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190503, 0.703513, -0.684674,
		0.645323, 0.435834, 0.627381,
		0.739774, -0.561354, -0.370965,
		27.705236, 38.133656, 23.401592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704819, 39.004265, 23.418751>,  <27.187395, 38.526604, 23.661268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704819, 39.004265, 23.418751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.825792, 38.665089, 23.244612>,  <27.898376, 38.461582, 23.140127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.825792, 38.665089, 23.244612>,  <27.704819, 39.004265, 23.418751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825792, 38.665089, 23.244612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319952, 0.520550, -0.791618,
		0.897866, 0.100123, 0.428734,
		0.302436, -0.847941, -0.435349,
		27.916523, 38.410706, 23.114006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293587, 39.200924, 23.155716>,  <27.704819, 39.004265, 23.418751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293587, 39.200924, 23.155716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.189339, 38.878887, 22.942583>,  <28.126789, 38.685665, 22.814703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.189339, 38.878887, 22.942583>,  <28.293587, 39.200924, 23.155716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189339, 38.878887, 22.942583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121366, 0.520203, -0.845375,
		0.957783, -0.284989, -0.037865,
		-0.260620, -0.805090, -0.532830,
		28.111153, 38.637360, 22.782734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694071, 39.243320, 22.625191>,  <28.293587, 39.200924, 23.155716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694071, 39.243320, 22.625191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.403402, 39.000507, 22.496531>,  <28.229000, 38.854820, 22.419334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.403402, 39.000507, 22.496531>,  <28.694071, 39.243320, 22.625191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403402, 39.000507, 22.496531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044413, 0.508743, -0.859772,
		0.685547, -0.610487, -0.396649,
		-0.726672, -0.607031, -0.321653,
		28.185400, 38.818398, 22.400034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367355, 38.903172, 22.512571>,  <28.694071, 39.243320, 22.625191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367355, 38.903172, 22.512571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.753731, 38.846210, 22.426147>,  <29.985556, 38.812035, 22.374292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.753731, 38.846210, 22.426147>,  <29.367355, 38.903172, 22.512571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753731, 38.846210, 22.426147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104005, -0.550906, 0.828061,
		-0.236945, -0.822329, -0.517332,
		0.965940, -0.142400, -0.216061,
		30.043512, 38.803490, 22.361330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543774, 38.212013, 22.651682>,  <29.367355, 38.903172, 22.512571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543774, 38.212013, 22.651682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.880398, 38.425095, 22.687469>,  <30.082373, 38.552944, 22.708942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.880398, 38.425095, 22.687469>,  <29.543774, 38.212013, 22.651682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880398, 38.425095, 22.687469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279851, -0.571646, 0.771300,
		0.462017, -0.624058, -0.630152,
		0.841560, 0.532703, 0.089467,
		30.132866, 38.584904, 22.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064989, 37.665604, 22.624943>,  <29.543774, 38.212013, 22.651682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064989, 37.665604, 22.624943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191357, 38.013119, 22.777473>,  <30.267178, 38.221626, 22.868992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191357, 38.013119, 22.777473>,  <30.064989, 37.665604, 22.624943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191357, 38.013119, 22.777473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298760, -0.472554, 0.829117,
		0.900520, -0.148010, -0.408848,
		0.315921, 0.868784, 0.381325,
		30.286133, 38.273754, 22.891870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653128, 37.516598, 22.901649>,  <30.064989, 37.665604, 22.624943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653128, 37.516598, 22.901649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578848, 37.861019, 23.091005>,  <30.534281, 38.067673, 23.204618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578848, 37.861019, 23.091005>,  <30.653128, 37.516598, 22.901649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578848, 37.861019, 23.091005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324300, -0.401066, 0.856724,
		0.927548, 0.312614, -0.204763,
		-0.185700, 0.861057, 0.473389,
		30.523138, 38.119335, 23.233023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266415, 37.775700, 23.291660>,  <30.653128, 37.516598, 22.901649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266415, 37.775700, 23.291660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954376, 37.952820, 23.468468>,  <30.767153, 38.059090, 23.574553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954376, 37.952820, 23.468468>,  <31.266415, 37.775700, 23.291660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954376, 37.952820, 23.468468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297677, -0.358718, 0.884709,
		0.550307, 0.821737, 0.148024,
		-0.780096, 0.442798, 0.442018,
		30.720346, 38.085659, 23.601072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561689, 38.282288, 23.766085>,  <31.266415, 37.775700, 23.291660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561689, 38.282288, 23.766085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182545, 38.208977, 23.870369>,  <30.955059, 38.164989, 23.932940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182545, 38.208977, 23.870369>,  <31.561689, 38.282288, 23.766085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182545, 38.208977, 23.870369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276511, -0.066270, 0.958723,
		-0.158436, 0.980825, 0.113493,
		-0.947861, -0.183279, 0.260709,
		30.898186, 38.153992, 23.948582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392788, 38.705490, 24.315346>,  <31.561689, 38.282288, 23.766085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392788, 38.705490, 24.315346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.119423, 38.415848, 24.352461>,  <30.955404, 38.242062, 24.374729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.119423, 38.415848, 24.352461>,  <31.392788, 38.705490, 24.315346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119423, 38.415848, 24.352461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255350, -0.118034, 0.959617,
		-0.683916, 0.679509, 0.265567,
		-0.683415, -0.724110, 0.092787,
		30.914398, 38.198616, 24.380297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.677990, 36.205257, 17.867020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414989, 35.903938, 17.873028>,  <29.257189, 35.723145, 17.876633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414989, 35.903938, 17.873028>,  <29.677990, 36.205257, 17.867020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414989, 35.903938, 17.873028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538551, -0.455934, 0.708581,
		-0.526927, 0.473984, 0.705469,
		-0.657503, -0.753302, 0.015021,
		29.217739, 35.677948, 17.877535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558975, 36.064491, 18.576509>,  <29.677990, 36.205257, 17.867020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558975, 36.064491, 18.576509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472853, 35.722839, 18.387148>,  <29.421179, 35.517849, 18.273531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472853, 35.722839, 18.387148>,  <29.558975, 36.064491, 18.576509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472853, 35.722839, 18.387148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448207, -0.517129, 0.729169,
		-0.867613, -0.055186, 0.494168,
		-0.215308, -0.854127, -0.473402,
		29.408260, 35.466602, 18.245127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119818, 35.619076, 19.084248>,  <29.558975, 36.064491, 18.576509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119818, 35.619076, 19.084248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252974, 35.363914, 18.806465>,  <29.332867, 35.210819, 18.639795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252974, 35.363914, 18.806465>,  <29.119818, 35.619076, 19.084248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252974, 35.363914, 18.806465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444387, -0.543424, 0.712188,
		-0.831688, -0.545687, 0.102573,
		0.332891, -0.637900, -0.694455,
		29.352840, 35.172546, 18.598129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004467, 34.889378, 19.404257>,  <29.119818, 35.619076, 19.084248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004467, 34.889378, 19.404257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295164, 34.849846, 19.132353>,  <29.469584, 34.826126, 18.969210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295164, 34.849846, 19.132353>,  <29.004467, 34.889378, 19.404257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295164, 34.849846, 19.132353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509398, -0.586344, 0.629853,
		-0.460821, -0.804011, -0.375780,
		0.726745, -0.098828, -0.679761,
		29.513187, 34.820198, 18.928425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192398, 34.205566, 19.501514>,  <29.004467, 34.889378, 19.404257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192398, 34.205566, 19.501514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.496405, 34.317345, 19.266811>,  <29.678808, 34.384411, 19.125990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.496405, 34.317345, 19.266811>,  <29.192398, 34.205566, 19.501514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496405, 34.317345, 19.266811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632953, -0.523114, 0.570720,
		-0.147458, -0.805148, -0.574450,
		0.760017, 0.279443, -0.586758,
		29.724409, 34.401176, 19.090784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577356, 33.632545, 19.456053>,  <29.192398, 34.205566, 19.501514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577356, 33.632545, 19.456053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812323, 33.948093, 19.383799>,  <29.953302, 34.137421, 19.340446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812323, 33.948093, 19.383799>,  <29.577356, 33.632545, 19.456053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812323, 33.948093, 19.383799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719139, -0.406442, 0.563599,
		0.371186, -0.460972, -0.806056,
		0.587418, 0.788866, -0.180638,
		29.988548, 34.184753, 19.329607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227818, 33.352081, 19.286720>,  <29.577356, 33.632545, 19.456053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227818, 33.352081, 19.286720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304613, 33.727280, 19.402166>,  <30.350691, 33.952400, 19.471434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304613, 33.727280, 19.402166>,  <30.227818, 33.352081, 19.286720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304613, 33.727280, 19.402166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694381, -0.337658, 0.635470,
		0.693523, 0.078406, -0.716155,
		0.191990, 0.937998, 0.288617,
		30.362209, 34.008678, 19.488752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897087, 33.565029, 18.987797>,  <30.227818, 33.352081, 19.286720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897087, 33.565029, 18.987797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846542, 33.803307, 19.305080>,  <30.816216, 33.946274, 19.495451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846542, 33.803307, 19.305080>,  <30.897087, 33.565029, 18.987797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846542, 33.803307, 19.305080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773802, -0.441137, 0.454564,
		0.620695, 0.671226, -0.405207,
		-0.126363, 0.595696, 0.793208,
		30.808634, 33.982014, 19.543043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636782, 33.737633, 19.240414>,  <30.897087, 33.565029, 18.987797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636782, 33.737633, 19.240414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384659, 33.834713, 19.535387>,  <31.233385, 33.892960, 19.712372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384659, 33.834713, 19.535387>,  <31.636782, 33.737633, 19.240414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384659, 33.834713, 19.535387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667908, -0.314676, 0.674446,
		0.395741, 0.917647, 0.036241,
		-0.630307, 0.242700, 0.737434,
		31.195566, 33.907524, 19.756617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057243, 34.148506, 19.761065>,  <31.636782, 33.737633, 19.240414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057243, 34.148506, 19.761065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746016, 33.977142, 19.944834>,  <31.559278, 33.874325, 20.055096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746016, 33.977142, 19.944834>,  <32.057243, 34.148506, 19.761065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746016, 33.977142, 19.944834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604636, -0.312427, 0.732669,
		-0.170346, 0.847854, 0.502122,
		-0.778073, -0.428408, 0.459422,
		31.512594, 33.848621, 20.082661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146069, 34.295403, 20.437798>,  <32.057243, 34.148506, 19.761065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146069, 34.295403, 20.437798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880919, 33.996937, 20.462597>,  <31.721830, 33.817860, 20.477476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880919, 33.996937, 20.462597>,  <32.146069, 34.295403, 20.437798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880919, 33.996937, 20.462597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474754, -0.354835, 0.805420,
		-0.578974, 0.563324, 0.589453,
		-0.662871, -0.746162, 0.062001,
		31.682056, 33.773087, 20.481197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798235, 34.379662, 21.068485>,  <32.146069, 34.295403, 20.437798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798235, 34.379662, 21.068485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.791742, 33.999500, 20.944248>,  <31.787848, 33.771404, 20.869705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.791742, 33.999500, 20.944248>,  <31.798235, 34.379662, 21.068485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791742, 33.999500, 20.944248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374330, -0.293821, 0.879515,
		-0.927153, -0.101991, 0.360534,
		-0.016230, -0.950404, -0.310595,
		31.786873, 33.714378, 20.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571352, 35.013973, 21.162470>,  <31.798235, 34.379662, 21.068485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571352, 35.013973, 21.162470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.870005, 35.218021, 21.333265>,  <32.049194, 35.340450, 21.435741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.870005, 35.218021, 21.333265>,  <31.571352, 35.013973, 21.162470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870005, 35.218021, 21.333265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086215, 0.710643, -0.698250,
		-0.659628, 0.484523, 0.574568,
		0.746631, 0.510121, 0.426987,
		32.093994, 35.371059, 21.461361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268223, 35.684647, 21.156599>,  <31.571352, 35.013973, 21.162470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268223, 35.684647, 21.156599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.667650, 35.682728, 21.177914>,  <31.907307, 35.681576, 21.190702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.667650, 35.682728, 21.177914>,  <31.268223, 35.684647, 21.156599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667650, 35.682728, 21.177914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039367, 0.740296, -0.671127,
		-0.036232, 0.672264, 0.739424,
		0.998568, -0.004793, 0.053287,
		31.967220, 35.681290, 21.193899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307306, 36.444183, 21.201748>,  <31.268223, 35.684647, 21.156599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307306, 36.444183, 21.201748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.671999, 36.299267, 21.124302>,  <31.890816, 36.212318, 21.077835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.671999, 36.299267, 21.124302>,  <31.307306, 36.444183, 21.201748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671999, 36.299267, 21.124302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083085, 0.624232, -0.776808,
		0.402291, 0.692156, 0.599234,
		0.911734, -0.362290, -0.193616,
		31.945518, 36.190578, 21.066217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740019, 37.027718, 21.093838>,  <31.307306, 36.444183, 21.201748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740019, 37.027718, 21.093838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.919353, 36.733917, 20.890074>,  <32.026955, 36.557636, 20.767815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.919353, 36.733917, 20.890074>,  <31.740019, 37.027718, 21.093838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919353, 36.733917, 20.890074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023656, 0.559948, -0.828190,
		0.893552, 0.383358, 0.233669,
		0.448336, -0.734503, -0.509412,
		32.053856, 36.513565, 20.737249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397968, 37.351009, 20.771008>,  <31.740019, 37.027718, 21.093838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397968, 37.351009, 20.771008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297787, 37.012726, 20.582518>,  <32.237679, 36.809757, 20.469423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297787, 37.012726, 20.582518>,  <32.397968, 37.351009, 20.771008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297787, 37.012726, 20.582518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034139, 0.478720, -0.877304,
		0.967526, -0.235813, -0.091027,
		-0.250456, -0.845706, -0.471224,
		32.222649, 36.759014, 20.441151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861923, 37.337975, 20.139408>,  <32.397968, 37.351009, 20.771008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861923, 37.337975, 20.139408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555595, 37.087433, 20.081156>,  <32.371799, 36.937107, 20.046206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555595, 37.087433, 20.081156>,  <32.861923, 37.337975, 20.139408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555595, 37.087433, 20.081156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191845, 0.438682, -0.877925,
		0.613778, -0.644390, -0.456113,
		-0.765815, -0.626354, -0.145630,
		32.325851, 36.899529, 20.037466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919941, 37.071609, 19.477821>,  <32.861923, 37.337975, 20.139408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919941, 37.071609, 19.477821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.533371, 37.034313, 19.573597>,  <32.301430, 37.011936, 19.631062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.533371, 37.034313, 19.573597>,  <32.919941, 37.071609, 19.477821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533371, 37.034313, 19.573597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253115, 0.505957, -0.824585,
		-0.044258, -0.857504, -0.512571,
		-0.966423, -0.093244, 0.239440,
		32.243443, 37.006340, 19.645430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652729, 37.420452, 18.886784>,  <32.919941, 37.071609, 19.477821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652729, 37.420452, 18.886784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.310802, 37.357903, 19.084703>,  <32.105644, 37.320374, 19.203455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.310802, 37.357903, 19.084703>,  <32.652729, 37.420452, 18.886784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310802, 37.357903, 19.084703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505714, 0.464817, -0.726773,
		-0.116340, -0.871488, -0.476417,
		-0.854821, -0.156378, 0.494801,
		32.054356, 37.310989, 19.233143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189953, 37.351788, 18.417515>,  <32.652729, 37.420452, 18.886784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189953, 37.351788, 18.417515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962389, 37.432983, 18.736298>,  <31.825851, 37.481701, 18.927567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962389, 37.432983, 18.736298>,  <32.189953, 37.351788, 18.417515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962389, 37.432983, 18.736298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446163, 0.737875, -0.506437,
		-0.690856, -0.643688, -0.329217,
		-0.568909, 0.202990, 0.796955,
		31.791716, 37.493881, 18.975384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458578, 37.325516, 18.281614>,  <32.189953, 37.351788, 18.417515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458578, 37.325516, 18.281614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.503210, 37.583736, 18.583824>,  <31.529989, 37.738670, 18.765150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.503210, 37.583736, 18.583824>,  <31.458578, 37.325516, 18.281614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503210, 37.583736, 18.583824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473480, 0.702964, -0.530714,
		-0.873708, -0.298507, 0.384093,
		0.111582, 0.645550, 0.755523,
		31.536684, 37.777401, 18.810480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799355, 37.685005, 18.287655>,  <31.458578, 37.325516, 18.281614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799355, 37.685005, 18.287655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.023937, 37.928074, 18.512333>,  <31.158686, 38.073917, 18.647141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.023937, 37.928074, 18.512333>,  <30.799355, 37.685005, 18.287655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023937, 37.928074, 18.512333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463730, 0.793233, -0.394634,
		-0.685363, -0.038906, 0.727161,
		0.561455, 0.607674, 0.561694,
		31.192373, 38.110374, 18.680841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359678, 38.164330, 18.459471>,  <30.799355, 37.685005, 18.287655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359678, 38.164330, 18.459471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.720152, 38.326950, 18.519592>,  <30.936436, 38.424522, 18.555664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.720152, 38.326950, 18.519592>,  <30.359678, 38.164330, 18.459471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720152, 38.326950, 18.519592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363306, 0.897611, -0.249606,
		-0.236389, 0.170335, 0.956612,
		0.901182, 0.406547, 0.150302,
		30.990507, 38.448914, 18.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217825, 38.834431, 18.710711>,  <30.359678, 38.164330, 18.459471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217825, 38.834431, 18.710711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600397, 38.863602, 18.597628>,  <30.829941, 38.881104, 18.529778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600397, 38.863602, 18.597628>,  <30.217825, 38.834431, 18.710711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600397, 38.863602, 18.597628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163795, 0.935592, -0.312790,
		0.241687, 0.345468, 0.906774,
		0.956430, 0.072927, -0.282707,
		30.887325, 38.885479, 18.512815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401442, 39.463337, 18.955339>,  <30.217825, 38.834431, 18.710711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401442, 39.463337, 18.955339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603472, 39.339722, 18.632999>,  <30.724689, 39.265553, 18.439596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603472, 39.339722, 18.632999>,  <30.401442, 39.463337, 18.955339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603472, 39.339722, 18.632999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236238, 0.848535, -0.473476,
		0.830116, 0.429513, 0.355565,
		0.505074, -0.309042, -0.805849,
		30.754993, 39.247009, 18.391245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868616, 39.291756, 19.486578>,  <30.401442, 39.463337, 18.955339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868616, 39.291756, 19.486578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864552, 39.641697, 19.680294>,  <30.862112, 39.851662, 19.796524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864552, 39.641697, 19.680294>,  <30.868616, 39.291756, 19.486578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864552, 39.641697, 19.680294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185619, -0.477546, 0.858775,
		0.982569, -0.081167, 0.167242,
		-0.010162, 0.874850, 0.484288,
		30.861504, 39.904152, 19.825581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315060, 39.311470, 19.935654>,  <30.868616, 39.291756, 19.486578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315060, 39.311470, 19.935654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061510, 39.581554, 20.086536>,  <30.909380, 39.743607, 20.177067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061510, 39.581554, 20.086536>,  <31.315060, 39.311470, 19.935654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061510, 39.581554, 20.086536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174387, -0.599917, 0.780826,
		0.753519, 0.429167, 0.498021,
		-0.633876, 0.675216, 0.377208,
		30.871347, 39.784119, 20.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647333, 39.551735, 20.644001>,  <31.315060, 39.311470, 19.935654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647333, 39.551735, 20.644001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.254660, 39.623531, 20.618454>,  <31.019054, 39.666607, 20.603127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.254660, 39.623531, 20.618454>,  <31.647333, 39.551735, 20.644001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254660, 39.623531, 20.618454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126178, -0.361388, 0.923839,
		0.142737, 0.914977, 0.377417,
		-0.981685, 0.179487, -0.063866,
		30.960154, 39.677376, 20.599295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452684, 39.923584, 21.192102>,  <31.647333, 39.551735, 20.644001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452684, 39.923584, 21.192102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.088783, 39.796848, 21.084799>,  <30.870443, 39.720806, 21.020416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.088783, 39.796848, 21.084799>,  <31.452684, 39.923584, 21.192102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088783, 39.796848, 21.084799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179438, -0.282590, 0.942308,
		-0.374368, 0.905403, 0.200233,
		-0.909753, -0.316841, -0.268257,
		30.815857, 39.701797, 21.004322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993965, 40.084057, 21.798153>,  <31.452684, 39.923584, 21.192102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993965, 40.084057, 21.798153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793985, 39.802860, 21.595825>,  <30.673998, 39.634144, 21.474428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793985, 39.802860, 21.595825>,  <30.993965, 40.084057, 21.798153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793985, 39.802860, 21.595825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436019, -0.300323, 0.848347,
		-0.748289, 0.644680, -0.156370,
		-0.499951, -0.702989, -0.505821,
		30.643999, 39.591965, 21.444078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250309, 39.994560, 22.062765>,  <30.993965, 40.084057, 21.798153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250309, 39.994560, 22.062765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.309965, 39.647415, 21.873207>,  <30.345758, 39.439129, 21.759472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.309965, 39.647415, 21.873207>,  <30.250309, 39.994560, 22.062765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309965, 39.647415, 21.873207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233550, -0.496612, 0.835961,
		-0.960839, -0.013997, -0.276754,
		0.149140, -0.867860, -0.473895,
		30.354708, 39.387058, 21.731039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579824, 39.573326, 22.105776>,  <30.250309, 39.994560, 22.062765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579824, 39.573326, 22.105776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.905880, 39.346512, 22.058409>,  <30.101513, 39.210423, 22.029987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.905880, 39.346512, 22.058409>,  <29.579824, 39.573326, 22.105776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905880, 39.346512, 22.058409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277919, -0.562189, 0.778912,
		-0.508240, -0.602012, -0.615852,
		0.815140, -0.567031, -0.118417,
		30.150421, 39.176403, 22.022882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940147, 39.065075, 21.939882>,  <29.579824, 39.573326, 22.105776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940147, 39.065075, 21.939882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552164, 38.968220, 21.930458>,  <28.319374, 38.910107, 21.924803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552164, 38.968220, 21.930458>,  <28.940147, 39.065075, 21.939882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552164, 38.968220, 21.930458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112244, 0.531349, -0.839684,
		0.215835, -0.811813, -0.542564,
		-0.969957, -0.242133, -0.023562,
		28.261177, 38.895580, 21.923389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803616, 38.769318, 21.289810>,  <28.940147, 39.065075, 21.939882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803616, 38.769318, 21.289810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458788, 38.933987, 21.408037>,  <28.251890, 39.032787, 21.478973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458788, 38.933987, 21.408037>,  <28.803616, 38.769318, 21.289810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458788, 38.933987, 21.408037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190283, 0.277619, -0.941658,
		-0.469710, -0.868017, -0.160993,
		-0.862070, 0.411672, 0.295569,
		28.200167, 39.057487, 21.496708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379910, 38.472599, 20.931751>,  <28.803616, 38.769318, 21.289810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379910, 38.472599, 20.931751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197163, 38.818508, 21.015118>,  <28.087515, 39.026054, 21.065138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197163, 38.818508, 21.015118>,  <28.379910, 38.472599, 20.931751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197163, 38.818508, 21.015118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329737, 0.052963, -0.942586,
		-0.826163, -0.499359, 0.260951,
		-0.456868, 0.864775, 0.208414,
		28.060102, 39.077942, 21.077642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802710, 38.495331, 20.452776>,  <28.379910, 38.472599, 20.931751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802710, 38.495331, 20.452776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803482, 38.858913, 20.619534>,  <27.803946, 39.077061, 20.719587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803482, 38.858913, 20.619534>,  <27.802710, 38.495331, 20.452776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803482, 38.858913, 20.619534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486099, 0.365177, -0.793948,
		-0.873902, -0.201118, 0.442546,
		0.001930, 0.908954, 0.416892,
		27.804062, 39.131599, 20.744600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084837, 38.679131, 20.455069>,  <27.802710, 38.495331, 20.452776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084837, 38.679131, 20.455069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331026, 38.994293, 20.447046>,  <27.478739, 39.183392, 20.442234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331026, 38.994293, 20.447046>,  <27.084837, 38.679131, 20.455069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331026, 38.994293, 20.447046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478144, 0.353034, -0.804204,
		-0.626556, 0.504554, 0.594014,
		0.615472, 0.787903, -0.020054,
		27.515667, 39.230663, 20.441031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630579, 39.289452, 20.437180>,  <27.084837, 38.679131, 20.455069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630579, 39.289452, 20.437180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996498, 39.389393, 20.310238>,  <27.216049, 39.449360, 20.234074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996498, 39.389393, 20.310238>,  <26.630579, 39.289452, 20.437180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996498, 39.389393, 20.310238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400907, 0.466117, -0.788675,
		-0.049133, 0.848709, 0.526573,
		0.914800, 0.249857, -0.317352,
		27.270939, 39.464352, 20.215033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487352, 39.868137, 20.137398>,  <26.630579, 39.289452, 20.437180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487352, 39.868137, 20.137398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847397, 39.784664, 19.984428>,  <27.063423, 39.734581, 19.892647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847397, 39.784664, 19.984428>,  <26.487352, 39.868137, 20.137398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847397, 39.784664, 19.984428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296643, 0.349295, -0.888817,
		0.319063, 0.913478, 0.252500,
		0.900112, -0.208686, -0.382424,
		27.117430, 39.722057, 19.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612087, 40.414997, 19.808975>,  <26.487352, 39.868137, 20.137398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612087, 40.414997, 19.808975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866278, 40.151318, 19.648163>,  <27.018793, 39.993111, 19.551676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866278, 40.151318, 19.648163>,  <26.612087, 40.414997, 19.808975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866278, 40.151318, 19.648163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201069, 0.361440, -0.910457,
		0.745479, 0.659411, 0.097144,
		0.635478, -0.659195, -0.402033,
		27.056921, 39.953560, 19.527554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947206, 40.746422, 19.301195>,  <26.612087, 40.414997, 19.808975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947206, 40.746422, 19.301195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966398, 40.353352, 19.229586>,  <26.977913, 40.117508, 19.186621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966398, 40.353352, 19.229586>,  <26.947206, 40.746422, 19.301195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966398, 40.353352, 19.229586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254919, 0.161247, -0.953423,
		0.965771, 0.091382, -0.242765,
		0.047980, -0.982674, -0.179023,
		26.980793, 40.058548, 19.175879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.024712, 32.041443, 32.674225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300856, 31.809732, 32.500862>,  <31.466541, 31.670706, 32.396843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300856, 31.809732, 32.500862>,  <31.024712, 32.041443, 32.674225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300856, 31.809732, 32.500862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195758, 0.427154, -0.882733,
		0.696479, 0.694246, 0.181491,
		0.690359, -0.579277, -0.433409,
		31.507963, 31.635950, 32.370838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647915, 32.479958, 32.424953>,  <31.024712, 32.041443, 32.674225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647915, 32.479958, 32.424953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517532, 32.143551, 32.252232>,  <31.439302, 31.941708, 32.148598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517532, 32.143551, 32.252232>,  <31.647915, 32.479958, 32.424953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517532, 32.143551, 32.252232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208115, 0.509374, -0.835001,
		0.922194, -0.182308, -0.341060,
		-0.325954, -0.841013, -0.431801,
		31.419746, 31.891247, 32.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041012, 32.321915, 31.725677>,  <31.647915, 32.479958, 32.424953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041012, 32.321915, 31.725677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667004, 32.181789, 31.747683>,  <31.442600, 32.097713, 31.760885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667004, 32.181789, 31.747683>,  <32.041012, 32.321915, 31.725677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667004, 32.181789, 31.747683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198766, 0.389288, -0.899415,
		0.293658, -0.851903, -0.433620,
		-0.935017, -0.350309, 0.055012,
		31.386499, 32.076694, 31.764185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926922, 31.882132, 31.117817>,  <32.041012, 32.321915, 31.725677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926922, 31.882132, 31.117817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572628, 31.984634, 31.272636>,  <31.360052, 32.046135, 31.365528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572628, 31.984634, 31.272636>,  <31.926922, 31.882132, 31.117817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572628, 31.984634, 31.272636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286191, 0.355018, -0.889976,
		-0.365474, -0.899051, -0.241113,
		-0.885733, 0.256259, 0.387050,
		31.306908, 32.061512, 31.388752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467720, 31.804176, 30.541269>,  <31.926922, 31.882132, 31.117817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467720, 31.804176, 30.541269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214407, 32.000477, 30.780642>,  <31.062420, 32.118256, 30.924265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214407, 32.000477, 30.780642>,  <31.467720, 31.804176, 30.541269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214407, 32.000477, 30.780642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255218, 0.597563, -0.760120,
		-0.730630, -0.634099, -0.253177,
		-0.633281, 0.490751, 0.598431,
		31.024424, 32.147701, 30.960171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832710, 31.844067, 30.092817>,  <31.467720, 31.804176, 30.541269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832710, 31.844067, 30.092817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795763, 32.126270, 30.373880>,  <30.773596, 32.295593, 30.542519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795763, 32.126270, 30.373880>,  <30.832710, 31.844067, 30.092817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795763, 32.126270, 30.373880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389079, 0.623997, -0.677677,
		-0.916562, -0.335983, 0.216862,
		-0.092367, 0.705509, 0.702656,
		30.768053, 32.337925, 30.584677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232744, 32.162918, 29.873371>,  <30.832710, 31.844067, 30.092817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232744, 32.162918, 29.873371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419966, 32.412659, 30.123528>,  <30.532299, 32.562504, 30.273621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419966, 32.412659, 30.123528>,  <30.232744, 32.162918, 29.873371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419966, 32.412659, 30.123528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339217, 0.780418, -0.525243,
		-0.816001, 0.033699, 0.577068,
		0.468054, 0.624350, 0.625390,
		30.560383, 32.599964, 30.311144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739262, 32.756134, 30.156578>,  <30.232744, 32.162918, 29.873371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739262, 32.756134, 30.156578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.114021, 32.895950, 30.154100>,  <30.338877, 32.979839, 30.152613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.114021, 32.895950, 30.154100>,  <29.739262, 32.756134, 30.156578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114021, 32.895950, 30.154100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334380, 0.890802, -0.307671,
		-0.102026, 0.290328, 0.951473,
		0.936899, 0.349544, -0.006195,
		30.395092, 33.000813, 30.152243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638048, 33.427273, 30.336149>,  <29.739262, 32.756134, 30.156578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638048, 33.427273, 30.336149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.017019, 33.430859, 30.208212>,  <30.244402, 33.433010, 30.131449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.017019, 33.430859, 30.208212>,  <29.638048, 33.427273, 30.336149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017019, 33.430859, 30.208212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179945, 0.841483, -0.509438,
		0.264575, 0.540210, 0.798858,
		0.947428, 0.008966, -0.319843,
		30.301249, 33.433548, 30.112259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876951, 34.105156, 30.401865>,  <29.638048, 33.427273, 30.336149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876951, 34.105156, 30.401865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.124905, 33.948112, 30.130100>,  <30.273676, 33.853886, 29.967041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.124905, 33.948112, 30.130100>,  <29.876951, 34.105156, 30.401865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124905, 33.948112, 30.130100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055868, 0.841554, -0.537277,
		0.782703, 0.371006, 0.499731,
		0.619883, -0.392609, -0.679414,
		30.310869, 33.830330, 29.926275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414255, 34.596626, 30.412779>,  <29.876951, 34.105156, 30.401865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414255, 34.596626, 30.412779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374136, 34.378174, 30.080111>,  <30.350063, 34.247101, 29.880508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374136, 34.378174, 30.080111>,  <30.414255, 34.596626, 30.412779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374136, 34.378174, 30.080111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281729, 0.817267, -0.502697,
		0.954237, 0.183887, -0.235832,
		-0.100299, -0.546133, -0.831673,
		30.344046, 34.214333, 29.830608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619234, 35.010487, 29.879528>,  <30.414255, 34.596626, 30.412779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619234, 35.010487, 29.879528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.411322, 34.748981, 29.659557>,  <30.286575, 34.592079, 29.527575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.411322, 34.748981, 29.659557>,  <30.619234, 35.010487, 29.879528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411322, 34.748981, 29.659557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149134, 0.703269, -0.695105,
		0.841182, -0.279289, -0.463045,
		-0.519780, -0.653766, -0.549926,
		30.255388, 34.552853, 29.494579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344603, 34.994930, 29.532047>,  <30.619234, 35.010487, 29.879528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344603, 34.994930, 29.532047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692923, 35.177113, 29.606087>,  <31.901915, 35.286423, 29.650511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692923, 35.177113, 29.606087>,  <31.344603, 34.994930, 29.532047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692923, 35.177113, 29.606087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367480, -0.853106, 0.370362,
		0.326593, -0.254492, -0.910259,
		0.870802, 0.455459, 0.185098,
		31.954163, 35.313751, 29.661615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869013, 34.473995, 29.504345>,  <31.344603, 34.994930, 29.532047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869013, 34.473995, 29.504345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.080368, 34.767864, 29.674549>,  <32.207180, 34.944187, 29.776672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.080368, 34.767864, 29.674549>,  <31.869013, 34.473995, 29.504345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080368, 34.767864, 29.674549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602382, -0.677599, 0.421894,
		0.598281, 0.033397, -0.800590,
		0.528389, 0.734673, 0.425512,
		32.238884, 34.988266, 29.802202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543701, 34.190189, 29.582951>,  <31.869013, 34.473995, 29.504345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543701, 34.190189, 29.582951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572231, 34.506542, 29.826067>,  <32.589348, 34.696354, 29.971937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572231, 34.506542, 29.826067>,  <32.543701, 34.190189, 29.582951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572231, 34.506542, 29.826067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456795, -0.567590, 0.684967,
		0.886708, 0.228781, -0.401756,
		0.071326, 0.790886, 0.607792,
		32.593628, 34.743809, 30.008404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229866, 34.112885, 29.788671>,  <32.543701, 34.190189, 29.582951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229866, 34.112885, 29.788671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049400, 34.348228, 30.057083>,  <32.941120, 34.489433, 30.218130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049400, 34.348228, 30.057083>,  <33.229866, 34.112885, 29.788671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049400, 34.348228, 30.057083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390962, -0.545611, 0.741254,
		0.802247, 0.596775, 0.016133,
		-0.451164, 0.588361, 0.671031,
		32.914051, 34.524738, 30.258392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757851, 34.303036, 30.195772>,  <33.229866, 34.112885, 29.788671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757851, 34.303036, 30.195772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435585, 34.342030, 30.429491>,  <33.242226, 34.365425, 30.569721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435585, 34.342030, 30.429491>,  <33.757851, 34.303036, 30.195772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435585, 34.342030, 30.429491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496051, -0.428118, 0.755413,
		0.323786, 0.898450, 0.296564,
		-0.805665, 0.097481, 0.584296,
		33.193886, 34.371273, 30.604780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034859, 34.428288, 30.893059>,  <33.757851, 34.303036, 30.195772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034859, 34.428288, 30.893059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657692, 34.300323, 30.930075>,  <33.431393, 34.223545, 30.952284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657692, 34.300323, 30.930075>,  <34.034859, 34.428288, 30.893059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657692, 34.300323, 30.930075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209740, -0.354624, 0.911181,
		-0.258681, 0.878577, 0.401480,
		-0.942917, -0.319912, 0.092538,
		33.374817, 34.204350, 30.957836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850342, 34.527966, 31.618277>,  <34.034859, 34.428288, 30.893059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850342, 34.527966, 31.618277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606518, 34.224545, 31.526157>,  <33.460224, 34.042492, 31.470886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606518, 34.224545, 31.526157>,  <33.850342, 34.527966, 31.618277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606518, 34.224545, 31.526157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322071, -0.502422, 0.802398,
		-0.724365, 0.414940, 0.550564,
		-0.609563, -0.758549, -0.230296,
		33.423649, 33.996979, 31.457069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419792, 34.432816, 32.272057>,  <33.850342, 34.527966, 31.618277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419792, 34.432816, 32.272057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.384293, 34.116226, 32.030167>,  <33.362995, 33.926273, 31.885033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.384293, 34.116226, 32.030167>,  <33.419792, 34.432816, 32.272057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384293, 34.116226, 32.030167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267533, -0.603755, 0.750937,
		-0.959453, -0.095143, 0.265325,
		-0.088745, -0.791472, -0.604729,
		33.357670, 33.878784, 31.848747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290077, 33.890659, 32.706577>,  <33.419792, 34.432816, 32.272057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290077, 33.890659, 32.706577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420238, 33.684753, 32.389305>,  <33.498337, 33.561211, 32.198944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420238, 33.684753, 32.389305>,  <33.290077, 33.890659, 32.706577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420238, 33.684753, 32.389305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351561, -0.712835, 0.606853,
		-0.877790, -0.476323, -0.050990,
		0.325406, -0.514764, -0.793177,
		33.517860, 33.530323, 32.151352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000641, 33.214363, 32.733093>,  <33.290077, 33.890659, 32.706577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000641, 33.214363, 32.733093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330509, 33.204994, 32.507042>,  <33.528431, 33.199375, 32.371410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330509, 33.204994, 32.507042>,  <33.000641, 33.214363, 32.733093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330509, 33.204994, 32.507042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260009, -0.871619, 0.415543,
		-0.502305, -0.489625, -0.712711,
		0.824673, -0.023418, -0.565126,
		33.577911, 33.197968, 32.337505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032486, 32.531261, 32.650089>,  <33.000641, 33.214363, 32.733093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032486, 32.531261, 32.650089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378010, 32.666214, 32.500420>,  <33.585323, 32.747185, 32.410618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378010, 32.666214, 32.500420>,  <33.032486, 32.531261, 32.650089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378010, 32.666214, 32.500420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433498, -0.876160, 0.210768,
		-0.256727, -0.344267, -0.903090,
		0.863812, 0.337378, -0.374173,
		33.637154, 32.767426, 32.388168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282383, 31.995682, 32.181900>,  <33.032486, 32.531261, 32.650089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282383, 31.995682, 32.181900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581280, 32.219147, 32.325859>,  <33.760616, 32.353226, 32.412235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581280, 32.219147, 32.325859>,  <33.282383, 31.995682, 32.181900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581280, 32.219147, 32.325859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430642, -0.819538, 0.378028,
		0.506141, -0.127490, -0.852976,
		0.747240, 0.558663, 0.359899,
		33.805450, 32.386745, 32.433830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939854, 31.488121, 32.116459>,  <33.282383, 31.995682, 32.181900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939854, 31.488121, 32.116459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022514, 31.770491, 32.387447>,  <34.072113, 31.939913, 32.550041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022514, 31.770491, 32.387447>,  <33.939854, 31.488121, 32.116459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022514, 31.770491, 32.387447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513561, -0.667625, 0.539010,
		0.832796, 0.236533, -0.500504,
		0.206655, 0.705924, 0.677469,
		34.084511, 31.982267, 32.590687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726822, 31.459055, 32.060612>,  <33.939854, 31.488121, 32.116459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726822, 31.459055, 32.060612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597778, 31.634596, 32.396072>,  <34.520351, 31.739920, 32.597347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597778, 31.634596, 32.396072>,  <34.726822, 31.459055, 32.060612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597778, 31.634596, 32.396072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458899, -0.702411, 0.544087,
		0.827850, 0.560383, 0.025217,
		-0.322610, 0.438851, 0.838650,
		34.500996, 31.766251, 32.647667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454468, 31.654604, 31.345091>,  <34.726822, 31.459055, 32.060612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454468, 31.654604, 31.345091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077538, 31.583828, 31.231453>,  <33.851379, 31.541363, 31.163271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077538, 31.583828, 31.231453>,  <34.454468, 31.654604, 31.345091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077538, 31.583828, 31.231453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131899, 0.583806, -0.801108,
		0.307605, -0.792378, -0.526798,
		-0.942328, -0.176940, -0.284095,
		33.794838, 31.530746, 31.146225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510715, 31.176233, 30.771891>,  <34.454468, 31.654604, 31.345091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510715, 31.176233, 30.771891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676849, 30.936811, 30.497889>,  <34.776527, 30.793159, 30.333487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676849, 30.936811, 30.497889>,  <34.510715, 31.176233, 30.771891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676849, 30.936811, 30.497889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176488, 0.685698, -0.706166,
		0.892385, 0.414189, 0.179155,
		0.415332, -0.598554, -0.685006,
		34.801449, 30.757246, 30.292387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070274, 31.546793, 30.278538>,  <34.510715, 31.176233, 30.771891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070274, 31.546793, 30.278538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875645, 31.246685, 30.099499>,  <34.758865, 31.066620, 29.992075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875645, 31.246685, 30.099499>,  <35.070274, 31.546793, 30.278538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875645, 31.246685, 30.099499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426324, 0.651103, -0.627943,
		0.762557, -0.114719, -0.636668,
		-0.486574, -0.750269, -0.447596,
		34.729671, 31.021605, 29.965219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143616, 31.630571, 29.578533>,  <35.070274, 31.546793, 30.278538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143616, 31.630571, 29.578533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799351, 31.429861, 29.613123>,  <34.592793, 31.309435, 29.633877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799351, 31.429861, 29.613123>,  <35.143616, 31.630571, 29.578533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799351, 31.429861, 29.613123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383193, 0.526476, -0.758937,
		0.335288, -0.686328, -0.645396,
		-0.860666, -0.501774, 0.086475,
		34.541153, 31.279329, 29.639065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912258, 31.642803, 28.878834>,  <35.143616, 31.630571, 29.578533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912258, 31.642803, 28.878834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586430, 31.514027, 29.071840>,  <34.390930, 31.436760, 29.187645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586430, 31.514027, 29.071840>,  <34.912258, 31.642803, 28.878834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586430, 31.514027, 29.071840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576058, 0.546512, -0.607850,
		-0.068010, -0.773097, -0.630631,
		-0.814575, -0.321940, 0.482517,
		34.342056, 31.417444, 29.216595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518787, 31.381006, 28.404310>,  <34.912258, 31.642803, 28.878834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518787, 31.381006, 28.404310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255630, 31.443512, 28.698999>,  <34.097736, 31.481016, 28.875813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255630, 31.443512, 28.698999>,  <34.518787, 31.381006, 28.404310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255630, 31.443512, 28.698999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589092, 0.502678, -0.632681,
		-0.469201, -0.850233, -0.238653,
		-0.657891, 0.156266, 0.736723,
		34.058262, 31.490391, 28.920015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870407, 31.129553, 28.164564>,  <34.518787, 31.381006, 28.404310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870407, 31.129553, 28.164564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768444, 31.376785, 28.462019>,  <33.707268, 31.525126, 28.640491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768444, 31.376785, 28.462019>,  <33.870407, 31.129553, 28.164564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768444, 31.376785, 28.462019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681629, 0.430621, -0.591564,
		-0.685862, -0.657677, 0.311537,
		-0.254904, 0.618083, 0.743638,
		33.691975, 31.562210, 28.685110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087837, 31.216551, 28.156404>,  <33.870407, 31.129553, 28.164564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087837, 31.216551, 28.156404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196209, 31.538048, 28.368288>,  <33.261234, 31.730946, 28.495419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196209, 31.538048, 28.368288>,  <33.087837, 31.216551, 28.156404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196209, 31.538048, 28.368288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636192, 0.562486, -0.528081,
		-0.722396, -0.193925, 0.663730,
		0.270931, 0.803743, 0.529711,
		33.277489, 31.779171, 28.527201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458347, 31.602371, 28.365110>,  <33.087837, 31.216551, 28.156404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458347, 31.602371, 28.365110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774052, 31.846941, 28.387863>,  <32.963474, 31.993683, 28.401516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774052, 31.846941, 28.387863>,  <32.458347, 31.602371, 28.365110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774052, 31.846941, 28.387863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490548, 0.683515, -0.540528,
		-0.369371, 0.398711, 0.839401,
		0.789257, 0.611422, 0.056884,
		33.010830, 32.030369, 28.404928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235580, 32.283821, 28.573847>,  <32.458347, 31.602371, 28.365110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235580, 32.283821, 28.573847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577320, 32.348095, 28.376150>,  <32.782364, 32.386658, 28.257532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577320, 32.348095, 28.376150>,  <32.235580, 32.283821, 28.573847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577320, 32.348095, 28.376150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483708, 0.593627, -0.643143,
		0.190050, 0.788534, 0.584888,
		0.854346, 0.160686, -0.494240,
		32.833626, 32.396301, 28.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092548, 32.956367, 28.261011>,  <32.235580, 32.283821, 28.573847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092548, 32.956367, 28.261011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443539, 32.842957, 28.106276>,  <32.654133, 32.774910, 28.013435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443539, 32.842957, 28.106276>,  <32.092548, 32.956367, 28.261011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443539, 32.842957, 28.106276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154356, 0.596700, -0.787479,
		0.454101, 0.750706, 0.479826,
		0.877478, -0.283531, -0.386838,
		32.706783, 32.757896, 27.990225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546360, 33.592590, 27.991884>,  <32.092548, 32.956367, 28.261011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546360, 33.592590, 27.991884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626507, 33.251434, 27.799038>,  <32.674595, 33.046741, 27.683331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626507, 33.251434, 27.799038>,  <32.546360, 33.592590, 27.991884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626507, 33.251434, 27.799038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025605, 0.496483, -0.867669,
		0.979386, 0.161509, 0.121317,
		0.200368, -0.852889, -0.482113,
		32.686619, 32.995567, 27.654404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917698, 33.752144, 27.306141>,  <32.546360, 33.592590, 27.991884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917698, 33.752144, 27.306141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837708, 33.364185, 27.250561>,  <32.789715, 33.131409, 27.217213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837708, 33.364185, 27.250561>,  <32.917698, 33.752144, 27.306141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837708, 33.364185, 27.250561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181343, 0.176004, -0.967542,
		0.962873, -0.168287, -0.211081,
		-0.199976, -0.969898, -0.138952,
		32.777714, 33.073215, 27.208876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360226, 33.466957, 26.782461>,  <32.917698, 33.752144, 27.306141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360226, 33.466957, 26.782461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041553, 33.225437, 26.793165>,  <32.850349, 33.080524, 26.799587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041553, 33.225437, 26.793165>,  <33.360226, 33.466957, 26.782461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041553, 33.225437, 26.793165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167316, 0.177782, -0.969742,
		0.580774, -0.777057, -0.242662,
		-0.796685, -0.603802, 0.026762,
		32.802547, 33.044296, 26.801193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416183, 33.067097, 26.184013>,  <33.360226, 33.466957, 26.782461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416183, 33.067097, 26.184013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029335, 33.029510, 26.278540>,  <32.797226, 33.006958, 26.335255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029335, 33.029510, 26.278540>,  <33.416183, 33.067097, 26.184013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029335, 33.029510, 26.278540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238169, 0.008855, -0.971184,
		0.089167, -0.995536, -0.030944,
		-0.967122, -0.093967, 0.236316,
		32.739197, 33.001320, 26.349434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239929, 32.565403, 25.663023>,  <33.416183, 33.067097, 26.184013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239929, 32.565403, 25.663023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909058, 32.747570, 25.794701>,  <32.710533, 32.856869, 25.873707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909058, 32.747570, 25.794701>,  <33.239929, 32.565403, 25.663023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909058, 32.747570, 25.794701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285979, 0.163111, -0.944251,
		-0.483721, -0.875210, -0.004684,
		-0.827182, 0.455415, 0.329192,
		32.660904, 32.884193, 25.893457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722652, 32.277966, 25.257368>,  <33.239929, 32.565403, 25.663023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722652, 32.277966, 25.257368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576111, 32.623783, 25.394979>,  <32.488186, 32.831272, 25.477547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576111, 32.623783, 25.394979>,  <32.722652, 32.277966, 25.257368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576111, 32.623783, 25.394979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269667, 0.255214, -0.928518,
		-0.890542, -0.432939, 0.139639,
		-0.366354, 0.864540, 0.344028,
		32.466206, 32.883144, 25.498188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192802, 32.389961, 24.694805>,  <32.722652, 32.277966, 25.257368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192802, 32.389961, 24.694805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245201, 32.727909, 24.902281>,  <32.276638, 32.930679, 25.026766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245201, 32.727909, 24.902281>,  <32.192802, 32.389961, 24.694805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245201, 32.727909, 24.902281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425793, 0.520429, -0.740171,
		-0.895288, -0.123896, 0.427912,
		0.130994, 0.844869, 0.518688,
		32.284500, 32.981369, 25.057888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566969, 32.847961, 24.631983>,  <32.192802, 32.389961, 24.694805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566969, 32.847961, 24.631983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886242, 33.070145, 24.725256>,  <32.077805, 33.203453, 24.781219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886242, 33.070145, 24.725256>,  <31.566969, 32.847961, 24.631983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886242, 33.070145, 24.725256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294611, 0.697551, -0.653167,
		-0.525464, 0.452648, 0.720415,
		0.798181, 0.555458, 0.233182,
		32.125694, 33.236782, 24.795210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302769, 33.584564, 24.708645>,  <31.566969, 32.847961, 24.631983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302769, 33.584564, 24.708645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693729, 33.632244, 24.638809>,  <31.928305, 33.660851, 24.596909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693729, 33.632244, 24.638809>,  <31.302769, 33.584564, 24.708645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693729, 33.632244, 24.638809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173721, 0.923478, -0.342067,
		0.120456, 0.364667, 0.923314,
		0.977400, 0.119195, -0.174589,
		31.986950, 33.668003, 24.586433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410822, 34.278088, 24.787493>,  <31.302769, 33.584564, 24.708645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410822, 34.278088, 24.787493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716761, 34.145786, 24.566364>,  <31.900324, 34.066406, 24.433687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716761, 34.145786, 24.566364>,  <31.410822, 34.278088, 24.787493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716761, 34.145786, 24.566364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119973, 0.769990, -0.626675,
		0.632944, 0.545634, 0.549242,
		0.764846, -0.330755, -0.552822,
		31.946215, 34.046558, 24.400518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508162, 34.865299, 24.478251>,  <31.410822, 34.278088, 24.787493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508162, 34.865299, 24.478251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756224, 34.612938, 24.291761>,  <31.905062, 34.461521, 24.179867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756224, 34.612938, 24.291761>,  <31.508162, 34.865299, 24.478251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756224, 34.612938, 24.291761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077205, 0.640511, -0.764058,
		0.780671, 0.437840, 0.445925,
		0.620155, -0.630906, -0.466225,
		31.942270, 34.423668, 24.151894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077881, 35.193787, 24.351349>,  <31.508162, 34.865299, 24.478251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077881, 35.193787, 24.351349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045044, 34.904675, 24.076874>,  <32.025341, 34.731209, 23.912189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045044, 34.904675, 24.076874>,  <32.077881, 35.193787, 24.351349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045044, 34.904675, 24.076874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153011, 0.671209, -0.725304,
		0.984809, -0.164538, 0.055490,
		-0.082095, -0.722777, -0.686188,
		32.020416, 34.687843, 23.871017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406265, 35.483902, 23.839756>,  <32.077881, 35.193787, 24.351349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406265, 35.483902, 23.839756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205482, 35.186119, 23.663654>,  <32.085014, 35.007450, 23.557993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205482, 35.186119, 23.663654>,  <32.406265, 35.483902, 23.839756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205482, 35.186119, 23.663654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179396, 0.408337, -0.895030,
		0.846084, -0.528244, -0.071413,
		-0.501954, -0.744459, -0.440252,
		32.054897, 34.962780, 23.531578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860191, 35.144550, 23.404942>,  <32.406265, 35.483902, 23.839756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860191, 35.144550, 23.404942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496876, 35.065464, 23.257469>,  <32.278889, 35.018013, 23.168985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496876, 35.065464, 23.257469>,  <32.860191, 35.144550, 23.404942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496876, 35.065464, 23.257469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305378, 0.289004, -0.907315,
		0.285882, -0.936701, -0.202144,
		-0.908304, -0.197655, -0.368669,
		32.224388, 35.006149, 23.146864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057526, 34.699039, 22.849489>,  <32.860191, 35.144550, 23.404942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057526, 34.699039, 22.849489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685467, 34.823532, 22.771559>,  <32.462231, 34.898228, 22.724800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685467, 34.823532, 22.771559>,  <33.057526, 34.699039, 22.849489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685467, 34.823532, 22.771559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307649, 0.370949, -0.876213,
		-0.200433, -0.874948, -0.440787,
		-0.930150, 0.311230, -0.194826,
		32.406422, 34.916901, 22.713110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946774, 34.569374, 22.095518>,  <33.057526, 34.699039, 22.849489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946774, 34.569374, 22.095518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641975, 34.818508, 22.166433>,  <32.459095, 34.967991, 22.208982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641975, 34.818508, 22.166433>,  <32.946774, 34.569374, 22.095518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641975, 34.818508, 22.166433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069097, 0.350410, -0.934044,
		-0.643881, -0.699490, -0.310049,
		-0.761999, 0.622837, 0.177290,
		32.413376, 35.005360, 22.219620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398109, 34.414471, 21.619062>,  <32.946774, 34.569374, 22.095518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398109, 34.414471, 21.619062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352768, 34.800716, 21.712650>,  <32.325565, 35.032463, 21.768803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352768, 34.800716, 21.712650>,  <32.398109, 34.414471, 21.619062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352768, 34.800716, 21.712650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095944, 0.245027, -0.964757,
		-0.988912, -0.086907, -0.120418,
		-0.113350, 0.965613, 0.233972,
		32.318764, 35.090401, 21.782843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715796, 33.956215, 21.764799>,  <32.398109, 34.414471, 21.619062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715796, 33.956215, 21.764799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833860, 33.691563, 21.489082>,  <31.904699, 33.532772, 21.323652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833860, 33.691563, 21.489082>,  <31.715796, 33.956215, 21.764799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833860, 33.691563, 21.489082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352501, -0.595129, 0.722194,
		-0.888044, -0.456141, 0.057565,
		0.295164, -0.661631, -0.689291,
		31.922409, 33.493073, 21.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527744, 33.271885, 22.005619>,  <31.715796, 33.956215, 21.764799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527744, 33.271885, 22.005619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.799873, 33.188652, 21.724518>,  <31.963150, 33.138714, 21.555857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.799873, 33.188652, 21.724518>,  <31.527744, 33.271885, 22.005619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799873, 33.188652, 21.724518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326687, -0.772234, 0.544913,
		-0.656078, -0.600297, -0.457390,
		0.680322, -0.208082, -0.702755,
		32.003971, 33.126228, 21.513691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527777, 32.578934, 21.886520>,  <31.527744, 33.271885, 22.005619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527777, 32.578934, 21.886520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887476, 32.663155, 21.733149>,  <32.103294, 32.713688, 21.641127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887476, 32.663155, 21.733149>,  <31.527777, 32.578934, 21.886520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887476, 32.663155, 21.733149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384463, -0.798532, 0.463180,
		-0.208655, -0.563928, -0.799030,
		0.899250, 0.210553, -0.383427,
		32.157249, 32.726322, 21.618120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778278, 31.954670, 21.571125>,  <31.527777, 32.578934, 21.886520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778278, 31.954670, 21.571125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108303, 32.169647, 21.640903>,  <32.306316, 32.298634, 21.682770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108303, 32.169647, 21.640903>,  <31.778278, 31.954670, 21.571125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108303, 32.169647, 21.640903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387785, -0.763117, 0.516988,
		0.410975, -0.358898, -0.838029,
		0.825059, 0.537443, 0.174447,
		32.355820, 32.330879, 21.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328728, 31.466764, 21.524874>,  <31.778278, 31.954670, 21.571125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328728, 31.466764, 21.524874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500935, 31.758537, 21.737509>,  <32.604259, 31.933601, 21.865089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500935, 31.758537, 21.737509>,  <32.328728, 31.466764, 21.524874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500935, 31.758537, 21.737509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399197, -0.682106, 0.612677,
		0.809505, -0.051559, -0.584844,
		0.430515, 0.729433, 0.531586,
		32.630089, 31.977367, 21.896984>
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
