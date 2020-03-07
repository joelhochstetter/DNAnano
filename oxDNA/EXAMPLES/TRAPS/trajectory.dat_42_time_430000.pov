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
	<35.777203, 53.229168, 49.255962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928059, 53.497490, 49.511395>,  <36.018570, 53.658485, 49.664654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928059, 53.497490, 49.511395>,  <35.777203, 53.229168, 49.255962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928059, 53.497490, 49.511395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795590, -0.587626, 0.147417,
		0.474134, 0.452451, -0.755304,
		0.377137, 0.670808, 0.638580,
		36.041199, 53.698730, 49.702969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476990, 53.446941, 49.050934>,  <35.777203, 53.229168, 49.255962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476990, 53.446941, 49.050934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421989, 53.431419, 49.446831>,  <36.388988, 53.422108, 49.684368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421989, 53.431419, 49.446831>,  <36.476990, 53.446941, 49.050934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421989, 53.431419, 49.446831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938193, -0.325530, 0.117578,
		0.317628, 0.944735, 0.081165,
		-0.137501, -0.038802, 0.989741,
		36.380737, 53.419777, 49.743752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022507, 53.609543, 49.549480>,  <36.476990, 53.446941, 49.050934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022507, 53.609543, 49.549480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831345, 53.331581, 49.764412>,  <36.716648, 53.164806, 49.893372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831345, 53.331581, 49.764412>,  <37.022507, 53.609543, 49.549480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831345, 53.331581, 49.764412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878292, -0.388112, 0.279236,
		0.014502, 0.605379, 0.795805,
		-0.477905, -0.694900, 0.537328,
		36.687973, 53.123112, 49.925610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112415, 53.526463, 50.366150>,  <37.022507, 53.609543, 49.549480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112415, 53.526463, 50.366150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067448, 53.197601, 50.142929>,  <37.040466, 53.000286, 50.008995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067448, 53.197601, 50.142929>,  <37.112415, 53.526463, 50.366150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067448, 53.197601, 50.142929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823115, -0.391662, 0.411196,
		-0.556635, -0.413115, 0.720758,
		-0.112423, -0.822153, -0.558055,
		37.033722, 52.950954, 49.975513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116154, 52.967503, 50.829880>,  <37.112415, 53.526463, 50.366150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116154, 52.967503, 50.829880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241024, 52.833725, 50.474197>,  <37.315945, 52.753460, 50.260788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241024, 52.833725, 50.474197>,  <37.116154, 52.967503, 50.829880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241024, 52.833725, 50.474197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718801, -0.528856, 0.451261,
		-0.621185, -0.780038, 0.075302,
		0.312177, -0.334444, -0.889209,
		37.334679, 52.733391, 50.207436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426983, 52.263233, 50.936924>,  <37.116154, 52.967503, 50.829880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426983, 52.263233, 50.936924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542908, 52.341774, 50.562233>,  <37.612461, 52.388901, 50.337418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542908, 52.341774, 50.562233>,  <37.426983, 52.263233, 50.936924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542908, 52.341774, 50.562233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872972, -0.455443, 0.174618,
		-0.392338, -0.868341, -0.303404,
		0.289811, 0.196354, -0.936725,
		37.629852, 52.400681, 50.281216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865108, 51.743008, 50.786083>,  <37.426983, 52.263233, 50.936924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865108, 51.743008, 50.786083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978958, 52.020325, 50.521255>,  <38.047268, 52.186714, 50.362358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978958, 52.020325, 50.521255>,  <37.865108, 51.743008, 50.786083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978958, 52.020325, 50.521255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934242, -0.355421, 0.029454,
		-0.214894, -0.626919, -0.748862,
		0.284626, 0.693289, -0.662072,
		38.064346, 52.228310, 50.322636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349068, 51.384480, 50.318138>,  <37.865108, 51.743008, 50.786083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349068, 51.384480, 50.318138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415470, 51.777832, 50.288742>,  <38.455311, 52.013844, 50.271103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415470, 51.777832, 50.288742>,  <38.349068, 51.384480, 50.318138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415470, 51.777832, 50.288742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949034, -0.179566, -0.259018,
		-0.267910, -0.026745, -0.963073,
		0.166008, 0.983382, -0.073489,
		38.465271, 52.072845, 50.266697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934692, 51.877205, 50.297844>,  <38.349068, 51.384480, 50.318138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934692, 51.877205, 50.297844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246208, 52.071411, 50.138966>,  <39.433117, 52.187935, 50.043640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246208, 52.071411, 50.138966>,  <38.934692, 51.877205, 50.297844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246208, 52.071411, 50.138966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492919, -0.082031, 0.866200,
		0.387972, -0.870371, -0.303205,
		0.778787, 0.485516, -0.397197,
		39.479843, 52.217068, 50.019806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549732, 51.420677, 50.402107>,  <38.934692, 51.877205, 50.297844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549732, 51.420677, 50.402107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627277, 51.813042, 50.396137>,  <39.673805, 52.048462, 50.392555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627277, 51.813042, 50.396137>,  <39.549732, 51.420677, 50.402107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627277, 51.813042, 50.396137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591746, -0.104785, 0.799286,
		0.782468, -0.163781, -0.600766,
		0.193858, 0.980916, -0.014926,
		39.685436, 52.107315, 50.391659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209335, 51.593494, 50.555202>,  <39.549732, 51.420677, 50.402107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209335, 51.593494, 50.555202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086941, 51.969406, 50.616119>,  <40.013504, 52.194954, 50.652668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086941, 51.969406, 50.616119>,  <40.209335, 51.593494, 50.555202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086941, 51.969406, 50.616119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432036, -0.005472, 0.901840,
		0.848361, 0.341745, -0.404343,
		-0.305987, 0.939777, 0.152288,
		39.995144, 52.251339, 50.661804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859211, 51.765633, 50.299591>,  <40.209335, 51.593494, 50.555202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859211, 51.765633, 50.299591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097111, 51.755775, 49.978180>,  <41.239853, 51.749863, 49.785332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097111, 51.755775, 49.978180>,  <40.859211, 51.765633, 50.299591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097111, 51.755775, 49.978180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796586, -0.116532, 0.593187,
		-0.108251, -0.992882, -0.049682,
		0.594754, -0.024637, -0.803530,
		41.275536, 51.748383, 49.737122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282261, 51.091225, 50.219589>,  <40.859211, 51.765633, 50.299591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282261, 51.091225, 50.219589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449696, 51.437859, 50.110916>,  <41.550156, 51.645840, 50.045712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449696, 51.437859, 50.110916>,  <41.282261, 51.091225, 50.219589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449696, 51.437859, 50.110916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736794, -0.149152, 0.659460,
		0.530957, -0.476218, -0.700929,
		0.418591, 0.866585, -0.271681,
		41.575272, 51.697834, 50.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141315, 50.385685, 49.788715>,  <41.282261, 51.091225, 50.219589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141315, 50.385685, 49.788715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398975, 50.293709, 50.080524>,  <41.553570, 50.238522, 50.255608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398975, 50.293709, 50.080524>,  <41.141315, 50.385685, 49.788715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398975, 50.293709, 50.080524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642020, -0.355913, -0.679070,
		0.415794, 0.905788, -0.081631,
		0.644147, -0.229944, 0.729520,
		41.592220, 50.224724, 50.299381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866638, 50.655811, 49.619991>,  <41.141315, 50.385685, 49.788715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866638, 50.655811, 49.619991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857224, 50.321331, 49.839157>,  <41.851574, 50.120644, 49.970657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857224, 50.321331, 49.839157>,  <41.866638, 50.655811, 49.619991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857224, 50.321331, 49.839157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777626, -0.359752, -0.515631,
		0.628286, 0.413938, 0.658720,
		-0.023537, -0.836202, 0.547916,
		41.850163, 50.070469, 50.003532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579845, 50.524448, 49.755241>,  <41.866638, 50.655811, 49.619991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579845, 50.524448, 49.755241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343159, 50.203728, 49.788658>,  <42.201145, 50.011295, 49.808708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343159, 50.203728, 49.788658>,  <42.579845, 50.524448, 49.755241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343159, 50.203728, 49.788658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572463, -0.490899, -0.656738,
		0.567585, -0.340780, 0.749477,
		-0.591721, -0.801803, 0.083543,
		42.165642, 49.963188, 49.813721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071186, 50.918789, 49.638309>,  <42.579845, 50.524448, 49.755241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071186, 50.918789, 49.638309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320232, 51.213230, 49.532101>,  <43.469662, 51.389893, 49.468376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320232, 51.213230, 49.532101>,  <43.071186, 50.918789, 49.638309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320232, 51.213230, 49.532101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612162, 0.246805, -0.751229,
		-0.487447, 0.630273, 0.604278,
		0.622618, 0.736100, -0.265525,
		43.507019, 51.434059, 49.452442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505928, 50.898251, 49.034893>,  <43.071186, 50.918789, 49.638309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505928, 50.898251, 49.034893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583225, 51.044083, 49.399254>,  <43.629604, 51.131584, 49.617870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583225, 51.044083, 49.399254>,  <43.505928, 50.898251, 49.034893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583225, 51.044083, 49.399254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637182, -0.752612, 0.166056,
		0.746095, 0.548320, -0.377740,
		0.193239, 0.364583, 0.910900,
		43.641197, 51.153458, 49.672523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123669, 51.080185, 49.061501>,  <43.505928, 50.898251, 49.034893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123669, 51.080185, 49.061501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036221, 51.051197, 49.450748>,  <43.983753, 51.033806, 49.684296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036221, 51.051197, 49.450748>,  <44.123669, 51.080185, 49.061501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036221, 51.051197, 49.450748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865522, -0.474938, 0.159078,
		0.450643, 0.877030, 0.166550,
		-0.218617, -0.072465, 0.973116,
		43.970634, 51.029457, 49.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687641, 51.327606, 49.426296>,  <44.123669, 51.080185, 49.061501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687641, 51.327606, 49.426296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513424, 51.053963, 49.660320>,  <44.408894, 50.889778, 49.800735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513424, 51.053963, 49.660320>,  <44.687641, 51.327606, 49.426296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513424, 51.053963, 49.660320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885622, -0.209284, 0.414576,
		-0.161171, 0.698710, 0.697014,
		-0.435543, -0.684108, 0.585063,
		44.382763, 50.848732, 49.835838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111393, 51.857441, 48.994225>,  <44.687641, 51.327606, 49.426296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111393, 51.857441, 48.994225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416218, 52.081474, 49.124191>,  <45.599113, 52.215893, 49.202171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416218, 52.081474, 49.124191>,  <45.111393, 51.857441, 48.994225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416218, 52.081474, 49.124191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458101, -0.820991, 0.340760,
		0.457604, -0.110838, -0.882221,
		0.762065, 0.560079, 0.324914,
		45.644836, 52.249496, 49.221664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783447, 51.672817, 48.801117>,  <45.111393, 51.857441, 48.994225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783447, 51.672817, 48.801117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895245, 51.867226, 49.132336>,  <45.962322, 51.983871, 49.331066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895245, 51.867226, 49.132336>,  <45.783447, 51.672817, 48.801117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895245, 51.867226, 49.132336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677253, -0.711115, 0.188795,
		0.680598, 0.508033, -0.527910,
		0.279490, 0.486022, 0.828050,
		45.979092, 52.013031, 49.380753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515678, 51.792637, 48.758736>,  <45.783447, 51.672817, 48.801117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515678, 51.792637, 48.758736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376564, 51.774433, 49.133324>,  <46.293095, 51.763512, 49.358074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376564, 51.774433, 49.133324>,  <46.515678, 51.792637, 48.758736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376564, 51.774433, 49.133324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708903, -0.666443, 0.230890,
		0.613595, 0.744166, 0.264043,
		-0.347790, -0.045508, 0.936467,
		46.272228, 51.760780, 49.414265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094398, 52.086205, 49.273186>,  <46.515678, 51.792637, 48.758736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094398, 52.086205, 49.273186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842781, 51.822155, 49.437401>,  <46.691811, 51.663723, 49.535931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842781, 51.822155, 49.437401>,  <47.094398, 52.086205, 49.273186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842781, 51.822155, 49.437401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777371, -0.533074, 0.333956,
		-0.001607, 0.529211, 0.848489,
		-0.629041, -0.660127, 0.410537,
		46.654068, 51.624115, 49.560562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.023022, 52.760624, 49.674007>,  <47.094398, 52.086205, 49.273186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.023022, 52.760624, 49.674007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371746, 52.829926, 49.490738>,  <47.580982, 52.871506, 49.380775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371746, 52.829926, 49.490738>,  <47.023022, 52.760624, 49.674007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371746, 52.829926, 49.490738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429910, 0.177667, 0.885219,
		0.234776, -0.968718, 0.080406,
		0.871813, 0.173261, -0.458173,
		47.633289, 52.881901, 49.353287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548756, 52.277229, 49.897789>,  <47.023022, 52.760624, 49.674007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548756, 52.277229, 49.897789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686626, 52.633621, 49.779564>,  <47.769348, 52.847454, 49.708630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686626, 52.633621, 49.779564>,  <47.548756, 52.277229, 49.897789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686626, 52.633621, 49.779564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454200, 0.117254, 0.883150,
		0.821521, -0.438649, -0.364266,
		0.344681, 0.890976, -0.295561,
		47.790031, 52.900913, 49.690895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955872, 52.477016, 50.390610>,  <47.548756, 52.277229, 49.897789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955872, 52.477016, 50.390610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949257, 52.831028, 50.204514>,  <47.945286, 53.043434, 50.092854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949257, 52.831028, 50.204514>,  <47.955872, 52.477016, 50.390610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949257, 52.831028, 50.204514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498223, 0.410721, 0.763598,
		0.866891, -0.219165, -0.447735,
		-0.016541, 0.885028, -0.465244,
		47.944294, 53.096535, 50.064941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.711353, 52.733280, 50.383839>,  <47.955872, 52.477016, 50.390610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.711353, 52.733280, 50.383839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417740, 53.004051, 50.362072>,  <48.241573, 53.166515, 50.349014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417740, 53.004051, 50.362072>,  <48.711353, 52.733280, 50.383839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.417740, 53.004051, 50.362072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332258, 0.427851, 0.840564,
		0.592286, 0.598921, -0.538973,
		-0.734031, 0.676932, -0.054414,
		48.197529, 53.207130, 50.345749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.011044, 53.451992, 50.195972>,  <48.711353, 52.733280, 50.383839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.011044, 53.451992, 50.195972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.689617, 53.385693, 50.424641>,  <48.496761, 53.345913, 50.561840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.689617, 53.385693, 50.424641>,  <49.011044, 53.451992, 50.195972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.689617, 53.385693, 50.424641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540840, 0.197718, 0.817557,
		-0.248535, 0.966145, -0.069239,
		-0.803569, -0.165744, 0.571670,
		48.448547, 53.335968, 50.596142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.067425, 53.848461, 49.515079>,  <49.011044, 53.451992, 50.195972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.067425, 53.848461, 49.515079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.136581, 54.183960, 49.721619>,  <49.178074, 54.385258, 49.845543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.136581, 54.183960, 49.721619>,  <49.067425, 53.848461, 49.515079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.136581, 54.183960, 49.721619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149744, 0.495768, -0.855448,
		-0.973491, 0.225220, -0.039883,
		0.172891, 0.838744, 0.516351,
		49.188450, 54.435581, 49.876522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.625492, 54.302650, 49.325989>,  <49.067425, 53.848461, 49.515079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.625492, 54.302650, 49.325989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.949959, 54.494019, 49.460526>,  <49.144638, 54.608841, 49.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.949959, 54.494019, 49.460526>,  <48.625492, 54.302650, 49.325989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.949959, 54.494019, 49.460526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110167, 0.689835, -0.715536,
		-0.574350, 0.543362, 0.612275,
		0.811163, 0.478420, 0.336346,
		49.193306, 54.637543, 49.561428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.600800, 55.074135, 49.280846>,  <48.625492, 54.302650, 49.325989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.600800, 55.074135, 49.280846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.989365, 54.980549, 49.264755>,  <49.222504, 54.924397, 49.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.989365, 54.980549, 49.264755>,  <48.600800, 55.074135, 49.280846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.989365, 54.980549, 49.264755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146187, 0.723039, -0.675162,
		0.187051, 0.649980, 0.736572,
		0.971412, -0.233967, -0.040227,
		49.280788, 54.910358, 49.252686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.988007, 55.673164, 49.270023>,  <48.600800, 55.074135, 49.280846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.988007, 55.673164, 49.270023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.198551, 55.380760, 49.096329>,  <49.324879, 55.205318, 48.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.198551, 55.380760, 49.096329>,  <48.988007, 55.673164, 49.270023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.198551, 55.380760, 49.096329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251321, 0.621656, -0.741878,
		0.812266, 0.281367, 0.510937,
		0.526366, -0.731011, -0.434237,
		49.356461, 55.161457, 48.966057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.599640, 55.874039, 49.100967>,  <48.988007, 55.673164, 49.270023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.599640, 55.874039, 49.100967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.553883, 55.568871, 48.846455>,  <49.526428, 55.385769, 48.693745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.553883, 55.568871, 48.846455>,  <49.599640, 55.874039, 49.100967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.553883, 55.568871, 48.846455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253806, 0.596790, -0.761199,
		0.960466, -0.248573, 0.125363,
		-0.114398, -0.762924, -0.636287,
		49.519562, 55.339993, 48.655567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.200726, 55.831051, 48.642387>,  <49.599640, 55.874039, 49.100967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.200726, 55.831051, 48.642387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.881550, 55.672703, 48.460579>,  <49.690044, 55.577694, 48.351494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.881550, 55.672703, 48.460579>,  <50.200726, 55.831051, 48.642387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.881550, 55.672703, 48.460579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311058, 0.375448, -0.873088,
		0.516276, -0.838049, -0.176444,
		-0.797936, -0.395870, -0.454517,
		49.642170, 55.553944, 48.324223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.515015, 55.552231, 48.050777>,  <50.200726, 55.831051, 48.642387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.515015, 55.552231, 48.050777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.136166, 55.679909, 48.063919>,  <49.908855, 55.756516, 48.071804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.136166, 55.679909, 48.063919>,  <50.515015, 55.552231, 48.050777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.136166, 55.679909, 48.063919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194000, 0.651153, -0.733733,
		-0.255601, -0.688558, -0.678643,
		-0.947118, 0.319199, 0.032855,
		49.852032, 55.775669, 48.073776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.893406, 54.999126, 47.942501>,  <50.515015, 55.552231, 48.050777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.893406, 54.999126, 47.942501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.756714, 54.918526, 48.309677>,  <50.674698, 54.870167, 48.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.756714, 54.918526, 48.309677>,  <50.893406, 54.999126, 47.942501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.756714, 54.918526, 48.309677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145501, -0.953624, -0.263499,
		0.928465, -0.223607, 0.296567,
		-0.341733, -0.201499, 0.917942,
		50.654194, 54.858074, 48.585060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.072960, 54.356461, 48.037716>,  <50.893406, 54.999126, 47.942501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.072960, 54.356461, 48.037716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.826031, 54.403065, 48.348930>,  <50.677876, 54.431026, 48.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.826031, 54.403065, 48.348930>,  <51.072960, 54.356461, 48.037716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.826031, 54.403065, 48.348930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089135, -0.992963, 0.077976,
		0.781648, -0.021214, 0.623359,
		-0.617318, 0.116513, 0.778038,
		50.640835, 54.438019, 48.582340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.433411, 54.116604, 48.672482>,  <51.072960, 54.356461, 48.037716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.433411, 54.116604, 48.672482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.038921, 54.106659, 48.607059>,  <50.802227, 54.100693, 48.567806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.038921, 54.106659, 48.607059>,  <51.433411, 54.116604, 48.672482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.038921, 54.106659, 48.607059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028314, -0.999422, -0.018830,
		-0.162992, -0.023201, 0.986355,
		-0.986221, -0.024859, -0.163555,
		50.743053, 54.099201, 48.557995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.094936, 53.734543, 49.115234>,  <51.433411, 54.116604, 48.672482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.094936, 53.734543, 49.115234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.885548, 53.722603, 48.774628>,  <50.759914, 53.715439, 48.570263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.885548, 53.722603, 48.774628>,  <51.094936, 53.734543, 49.115234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.885548, 53.722603, 48.774628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180242, -0.980648, -0.076431,
		-0.832761, -0.193489, 0.518720,
		-0.523471, -0.029846, -0.851521,
		50.728508, 53.713650, 48.519173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.450645, 53.792850, 49.634296>,  <51.094936, 53.734543, 49.115234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.450645, 53.792850, 49.634296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.727821, 53.920982, 49.375927>,  <51.894127, 53.997860, 49.220905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.727821, 53.920982, 49.375927>,  <51.450645, 53.792850, 49.634296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.727821, 53.920982, 49.375927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447693, 0.511084, 0.733733,
		0.565157, -0.797612, 0.210743,
		0.692942, 0.320326, -0.645928,
		51.935703, 54.017078, 49.182148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.157471, 53.615902, 49.727787>,  <51.450645, 53.792850, 49.634296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.157471, 53.615902, 49.727787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.158962, 53.979134, 49.560272>,  <52.159855, 54.197071, 49.459763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.158962, 53.979134, 49.560272>,  <52.157471, 53.615902, 49.727787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.158962, 53.979134, 49.560272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490825, 0.363217, 0.791937,
		0.871250, -0.208503, -0.444353,
		0.003725, 0.908075, -0.418791,
		52.160080, 54.251556, 49.434635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.809540, 54.020069, 49.561317>,  <52.157471, 53.615902, 49.727787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.809540, 54.020069, 49.561317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.546177, 54.292912, 49.688583>,  <52.388161, 54.456615, 49.764942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.546177, 54.292912, 49.688583>,  <52.809540, 54.020069, 49.561317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.546177, 54.292912, 49.688583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690334, 0.378844, 0.616374,
		0.299898, 0.625466, -0.720315,
		-0.658408, 0.682107, 0.318166,
		52.348656, 54.497543, 49.784035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.171551, 54.631626, 49.495857>,  <52.809540, 54.020069, 49.561317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.171551, 54.631626, 49.495857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.866306, 54.697193, 49.745911>,  <52.683159, 54.736534, 49.895943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.866306, 54.697193, 49.745911>,  <53.171551, 54.631626, 49.495857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.866306, 54.697193, 49.745911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621886, 0.449451, 0.641289,
		-0.175847, 0.878136, -0.444920,
		-0.763109, 0.163921, 0.625135,
		52.637375, 54.746368, 49.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.065239, 55.350296, 49.625710>,  <53.171551, 54.631626, 49.495857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.065239, 55.350296, 49.625710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.958454, 55.158180, 49.959908>,  <52.894382, 55.042912, 50.160427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.958454, 55.158180, 49.959908>,  <53.065239, 55.350296, 49.625710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.958454, 55.158180, 49.959908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661880, 0.538762, 0.521201,
		-0.700460, 0.692141, 0.174062,
		-0.266967, -0.480288, 0.835495,
		52.878365, 55.014095, 50.210556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.886856, 55.812374, 50.237648>,  <53.065239, 55.350296, 49.625710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.886856, 55.812374, 50.237648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.003429, 55.459091, 50.384621>,  <53.073376, 55.247120, 50.472805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.003429, 55.459091, 50.384621>,  <52.886856, 55.812374, 50.237648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.003429, 55.459091, 50.384621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626619, 0.466485, 0.624292,
		-0.722782, 0.048298, 0.689387,
		0.291436, -0.883209, 0.367432,
		53.090858, 55.194130, 50.494850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.778812, 55.671741, 51.018780>,  <52.886856, 55.812374, 50.237648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.778812, 55.671741, 51.018780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.081692, 55.543579, 50.791100>,  <53.263420, 55.466682, 50.654491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.081692, 55.543579, 50.791100>,  <52.778812, 55.671741, 51.018780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.081692, 55.543579, 50.791100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606944, 0.667174, 0.431854,
		0.241388, -0.672473, 0.699651,
		0.757199, -0.320405, -0.569202,
		53.308853, 55.447456, 50.620338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.190052, 56.205879, 51.274326>,  <52.778812, 55.671741, 51.018780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.190052, 56.205879, 51.274326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.389050, 56.065571, 50.956970>,  <53.508446, 55.981384, 50.766556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.389050, 56.065571, 50.956970>,  <53.190052, 56.205879, 51.274326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.389050, 56.065571, 50.956970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696350, 0.706890, 0.124111,
		0.517302, -0.614218, 0.595932,
		0.497490, -0.350774, -0.793386,
		53.538296, 55.960339, 50.718956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.914375, 56.454132, 51.375305>,  <53.190052, 56.205879, 51.274326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.914375, 56.454132, 51.375305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.959206, 56.340111, 50.994530>,  <53.986103, 56.271698, 50.766064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.959206, 56.340111, 50.994530>,  <53.914375, 56.454132, 51.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.959206, 56.340111, 50.994530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906402, 0.421960, -0.019638,
		0.407277, -0.860636, 0.305666,
		0.112078, -0.285054, -0.951936,
		53.992828, 56.254593, 50.708950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.459923, 56.027473, 51.328407>,  <53.914375, 56.454132, 51.375305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.459923, 56.027473, 51.328407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.428474, 56.243359, 50.993141>,  <54.409607, 56.372890, 50.791981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.428474, 56.243359, 50.993141>,  <54.459923, 56.027473, 51.328407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.428474, 56.243359, 50.993141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921829, 0.359454, 0.144997,
		0.379540, -0.761248, -0.525786,
		-0.078617, 0.539717, -0.838168,
		54.404888, 56.405273, 50.741692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.082752, 55.852467, 50.820137>,  <54.459923, 56.027473, 51.328407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.082752, 55.852467, 50.820137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929985, 56.222099, 50.814396>,  <54.838326, 56.443878, 50.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929985, 56.222099, 50.814396>,  <55.082752, 55.852467, 50.820137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.929985, 56.222099, 50.814396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911922, 0.379320, 0.156570,
		0.150128, 0.046708, -0.987563,
		-0.381915, 0.924086, -0.014352,
		54.815411, 56.499325, 50.810089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.643986, 56.159088, 50.509964>,  <55.082752, 55.852467, 50.820137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.643986, 56.159088, 50.509964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.417824, 56.416901, 50.715836>,  <55.282127, 56.571590, 50.839359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.417824, 56.416901, 50.715836>,  <55.643986, 56.159088, 50.509964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.417824, 56.416901, 50.715836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824649, 0.454184, 0.337151,
		-0.016454, 0.615056, -0.788312,
		-0.565405, 0.644533, 0.514678,
		55.248203, 56.610260, 50.870239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.749752, 56.955925, 50.320938>,  <55.643986, 56.159088, 50.509964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.749752, 56.955925, 50.320938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.637268, 56.860565, 50.692764>,  <55.569778, 56.803349, 50.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.637268, 56.860565, 50.692764>,  <55.749752, 56.955925, 50.320938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.637268, 56.860565, 50.692764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891015, 0.294872, 0.345170,
		-0.356392, 0.925319, 0.129500,
		-0.281206, -0.238403, 0.929563,
		55.552906, 56.789043, 50.971634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.824780, 57.523438, 50.825447>,  <55.749752, 56.955925, 50.320938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.824780, 57.523438, 50.825447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.856392, 57.190369, 51.044685>,  <55.875359, 56.990528, 51.176228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.856392, 57.190369, 51.044685>,  <55.824780, 57.523438, 50.825447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.856392, 57.190369, 51.044685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813223, 0.371846, 0.447659,
		-0.576561, 0.410344, 0.706538,
		0.079029, -0.832676, 0.548093,
		55.880100, 56.940567, 51.209114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.002750, 57.695862, 51.556767>,  <55.824780, 57.523438, 50.825447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.002750, 57.695862, 51.556767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.095833, 57.312603, 51.490074>,  <56.151684, 57.082645, 51.450058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.095833, 57.312603, 51.490074>,  <56.002750, 57.695862, 51.556767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.095833, 57.312603, 51.490074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879937, 0.134421, 0.455678,
		-0.414196, -0.252749, 0.874391,
		0.232709, -0.958149, -0.166727,
		56.165646, 57.025158, 51.440056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.413769, 57.585205, 52.116322>,  <56.002750, 57.695862, 51.556767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.413769, 57.585205, 52.116322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.517807, 57.335922, 51.821304>,  <56.580231, 57.186352, 51.644295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.517807, 57.335922, 51.821304>,  <56.413769, 57.585205, 52.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.517807, 57.335922, 51.821304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952471, 0.040143, 0.301973,
		-0.158584, -0.781028, 0.604025,
		0.260097, -0.623205, -0.737540,
		56.595837, 57.148960, 51.600044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.703529, 56.923637, 52.370537>,  <56.413769, 57.585205, 52.116322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.703529, 56.923637, 52.370537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.820015, 56.972122, 51.990959>,  <56.889908, 57.001213, 51.763210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.820015, 56.972122, 51.990959>,  <56.703529, 56.923637, 52.370537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.820015, 56.972122, 51.990959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950363, -0.150247, 0.272462,
		-0.109551, -0.981190, -0.158948,
		0.291218, 0.121210, -0.948947,
		56.907379, 57.008484, 51.706276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.204632, 56.336193, 52.197090>,  <56.703529, 56.923637, 52.370537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.204632, 56.336193, 52.197090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278809, 56.650146, 51.960594>,  <57.323315, 56.838520, 51.818695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278809, 56.650146, 51.960594>,  <57.204632, 56.336193, 52.197090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.278809, 56.650146, 51.960594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971391, -0.055587, 0.230888,
		0.148356, -0.617142, -0.772739,
		0.185445, 0.784886, -0.591240,
		57.334442, 56.885612, 51.783222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.685223, 56.237469, 51.555450>,  <57.204632, 56.336193, 52.197090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.685223, 56.237469, 51.555450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.784645, 56.569565, 51.755020>,  <57.844299, 56.768822, 51.874763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.784645, 56.569565, 51.755020>,  <57.685223, 56.237469, 51.555450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.784645, 56.569565, 51.755020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953762, -0.299644, 0.023475,
		0.168990, 0.470023, -0.866326,
		0.248555, 0.830236, 0.498927,
		57.859211, 56.818634, 51.904697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.172874, 56.634277, 51.228352>,  <57.685223, 56.237469, 51.555450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.172874, 56.634277, 51.228352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.226204, 56.664581, 51.623619>,  <58.258202, 56.682766, 51.860779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.226204, 56.664581, 51.623619>,  <58.172874, 56.634277, 51.228352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.226204, 56.664581, 51.623619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937690, -0.332465, -0.101019,
		0.320879, 0.940067, -0.115367,
		0.133321, 0.075763, 0.988173,
		58.266201, 56.687309, 51.920071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.791138, 57.082157, 51.286289>,  <58.172874, 56.634277, 51.228352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.791138, 57.082157, 51.286289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.719231, 56.823009, 51.582382>,  <58.676086, 56.667519, 51.760036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.719231, 56.823009, 51.582382>,  <58.791138, 57.082157, 51.286289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.719231, 56.823009, 51.582382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928400, -0.360502, -0.090062,
		0.325205, 0.671043, 0.666290,
		-0.179763, -0.647873, 0.740234,
		58.665302, 56.628647, 51.804451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.314613, 57.101315, 51.828926>,  <58.791138, 57.082157, 51.286289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.314613, 57.101315, 51.828926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.143448, 56.740150, 51.845131>,  <59.040749, 56.523453, 51.854855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.143448, 56.740150, 51.845131>,  <59.314613, 57.101315, 51.828926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.143448, 56.740150, 51.845131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901681, -0.429551, -0.049585,
		0.062173, 0.015313, 0.997948,
		-0.427910, -0.902913, 0.040514,
		59.015076, 56.469276, 51.857285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.691193, 56.601456, 52.304691>,  <59.314613, 57.101315, 51.828926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.691193, 56.601456, 52.304691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.473495, 56.386978, 52.046608>,  <59.342876, 56.258289, 51.891758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.473495, 56.386978, 52.046608>,  <59.691193, 56.601456, 52.304691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.473495, 56.386978, 52.046608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802554, -0.556776, -0.214261,
		-0.244351, -0.634424, 0.733347,
		-0.544242, -0.536196, -0.645209,
		59.310223, 56.226120, 51.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.789173, 56.842743, 53.006313>,  <59.691193, 56.601456, 52.304691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.789173, 56.842743, 53.006313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.156799, 56.993637, 53.051949>,  <60.377373, 57.084175, 53.079330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.156799, 56.993637, 53.051949>,  <59.789173, 56.842743, 53.006313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.156799, 56.993637, 53.051949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351997, -0.915911, 0.192885,
		0.177261, -0.137113, -0.974566,
		0.919063, 0.377235, 0.114092,
		60.432518, 57.106808, 53.086178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.320232, 56.372200, 52.584541>,  <59.789173, 56.842743, 53.006313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.320232, 56.372200, 52.584541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.536987, 56.551258, 52.869068>,  <60.667042, 56.658691, 53.039783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.536987, 56.551258, 52.869068>,  <60.320232, 56.372200, 52.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.536987, 56.551258, 52.869068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445872, -0.870551, 0.208180,
		0.712429, 0.204347, -0.671332,
		0.541888, 0.447642, 0.711318,
		60.699554, 56.685551, 53.082462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.080952, 56.323948, 52.404453>,  <60.320232, 56.372200, 52.584541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.080952, 56.323948, 52.404453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.052467, 56.310921, 52.803226>,  <61.035378, 56.303104, 53.042488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.052467, 56.310921, 52.803226>,  <61.080952, 56.323948, 52.404453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.052467, 56.310921, 52.803226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461312, -0.887229, 0.003970,
		0.884375, 0.460178, 0.078206,
		-0.071214, -0.032567, 0.996929,
		61.031105, 56.301151, 53.102306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.700329, 56.034443, 52.548988>,  <61.080952, 56.323948, 52.404453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.700329, 56.034443, 52.548988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.456955, 56.024094, 52.866261>,  <61.310932, 56.017883, 53.056625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.456955, 56.024094, 52.866261>,  <61.700329, 56.034443, 52.548988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.456955, 56.024094, 52.866261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151122, -0.984958, 0.083789,
		0.779085, 0.170847, 0.603190,
		-0.608432, -0.025877, 0.793184,
		61.274426, 56.016331, 53.104218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.917286, 55.647774, 53.233349>,  <61.700329, 56.034443, 52.548988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.917286, 55.647774, 53.233349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.518211, 55.627502, 53.215256>,  <61.278767, 55.615341, 53.204399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.518211, 55.627502, 53.215256>,  <61.917286, 55.647774, 53.233349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.518211, 55.627502, 53.215256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040808, -0.979500, 0.197267,
		-0.054305, 0.194965, 0.979306,
		-0.997690, -0.050676, -0.045236,
		61.218903, 55.612301, 53.201683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.218456, 56.337132, 52.958530>,  <61.917286, 55.647774, 53.233349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.218456, 56.337132, 52.958530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.467537, 56.149136, 52.708298>,  <62.616985, 56.036339, 52.558159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.467537, 56.149136, 52.708298>,  <62.218456, 56.337132, 52.958530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.467537, 56.149136, 52.708298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782011, -0.400854, -0.477259,
		-0.026462, 0.786402, -0.617148,
		0.622703, -0.469987, -0.625582,
		62.654346, 56.008141, 52.520622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.765636, 56.301819, 53.478321>,  <62.218456, 56.337132, 52.958530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.765636, 56.301819, 53.478321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.845703, 56.411041, 53.854698>,  <62.893742, 56.476574, 54.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.845703, 56.411041, 53.854698>,  <62.765636, 56.301819, 53.478321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.845703, 56.411041, 53.854698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979696, -0.044696, -0.195441,
		-0.011310, 0.960959, -0.276458,
		0.200167, 0.273056, 0.940943,
		62.905754, 56.492958, 54.136982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.349518, 56.792351, 53.355587>,  <62.765636, 56.301819, 53.478321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.349518, 56.792351, 53.355587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.357063, 56.617889, 53.715458>,  <63.361591, 56.513214, 53.931381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.357063, 56.617889, 53.715458>,  <63.349518, 56.792351, 53.355587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.357063, 56.617889, 53.715458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978266, -0.177791, -0.106704,
		0.206493, 0.882135, 0.423318,
		0.018866, -0.436152, 0.899675,
		63.362724, 56.487045, 53.985359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.865608, 57.108185, 53.785885>,  <63.349518, 56.792351, 53.355587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.865608, 57.108185, 53.785885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.032349, 57.337193, 54.068291>,  <64.132393, 57.474598, 54.237736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.032349, 57.337193, 54.068291>,  <63.865608, 57.108185, 53.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.032349, 57.337193, 54.068291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382114, 0.594384, -0.707599,
		-0.824757, 0.564743, 0.029003,
		0.416850, 0.572515, 0.706018,
		64.157402, 57.508945, 54.280098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.608479, 57.808022, 53.765072>,  <63.865608, 57.108185, 53.785885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.608479, 57.808022, 53.765072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.959839, 57.831181, 53.954834>,  <64.170654, 57.845074, 54.068691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.959839, 57.831181, 53.954834>,  <63.608479, 57.808022, 53.765072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.959839, 57.831181, 53.954834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299798, 0.706303, -0.641294,
		-0.372201, 0.705538, 0.603060,
		0.878401, 0.057894, 0.474405,
		64.223358, 57.848549, 54.097157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.658401, 58.515282, 54.137543>,  <63.608479, 57.808022, 53.765072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.658401, 58.515282, 54.137543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.008041, 58.370266, 54.008221>,  <64.217827, 58.283257, 53.930630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.008041, 58.370266, 54.008221>,  <63.658401, 58.515282, 54.137543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.008041, 58.370266, 54.008221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129858, 0.815743, -0.563649,
		0.468074, 0.450700, 0.760116,
		0.874096, -0.362537, -0.323301,
		64.270271, 58.261505, 53.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.052567, 58.424305, 54.733665>,  <63.658401, 58.515282, 54.137543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.052567, 58.424305, 54.733665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.020012, 58.026123, 54.753456>,  <64.000481, 57.787212, 54.765331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.020012, 58.026123, 54.753456>,  <64.052567, 58.424305, 54.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.020012, 58.026123, 54.753456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612876, -0.010842, 0.790105,
		-0.785976, 0.094631, 0.610972,
		-0.081393, -0.995453, 0.049476,
		63.995594, 57.727486, 54.768299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.922386, 58.161213, 55.459919>,  <64.052567, 58.424305, 54.733665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.922386, 58.161213, 55.459919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.114723, 57.874771, 55.257538>,  <64.230125, 57.702908, 55.136108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.114723, 57.874771, 55.257538>,  <63.922386, 58.161213, 55.459919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.114723, 57.874771, 55.257538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737555, 0.018301, 0.675039,
		-0.474138, -0.697755, 0.536965,
		0.480839, -0.716103, -0.505955,
		64.258972, 57.659939, 55.105751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.063927, 57.584541, 55.856091>,  <63.922386, 58.161213, 55.459919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.063927, 57.584541, 55.856091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.362251, 57.652233, 55.598366>,  <64.541245, 57.692848, 55.443733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.362251, 57.652233, 55.598366>,  <64.063927, 57.584541, 55.856091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.362251, 57.652233, 55.598366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638082, 0.096370, 0.763914,
		0.191369, -0.980854, -0.036108,
		0.745808, 0.169229, -0.644307,
		64.585991, 57.703003, 55.405075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.660240, 57.091206, 56.144653>,  <64.063927, 57.584541, 55.856091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.660240, 57.091206, 56.144653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.816101, 57.399372, 55.942810>,  <64.909622, 57.584270, 55.821705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.816101, 57.399372, 55.942810>,  <64.660240, 57.091206, 56.144653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.816101, 57.399372, 55.942810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828775, -0.054393, 0.556932,
		0.401620, -0.635222, -0.659693,
		0.389658, 0.770412, -0.504611,
		64.932999, 57.630497, 55.791428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.361359, 56.952782, 56.539936>,  <64.660240, 57.091206, 56.144653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.361359, 56.952782, 56.539936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.419632, 56.562874, 56.607574>,  <65.454597, 56.328930, 56.648159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.419632, 56.562874, 56.607574>,  <65.361359, 56.952782, 56.539936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.419632, 56.562874, 56.607574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777896, 0.218465, 0.589195,
		-0.611274, 0.045710, 0.790098,
		0.145676, -0.974774, 0.169099,
		65.463333, 56.270443, 56.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.335716, 56.773441, 57.296558>,  <65.361359, 56.952782, 56.539936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.335716, 56.773441, 57.296558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.534340, 56.487373, 57.099800>,  <65.653511, 56.315731, 56.981747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.534340, 56.487373, 57.099800>,  <65.335716, 56.773441, 57.296558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.534340, 56.487373, 57.099800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784709, 0.127637, 0.606582,
		-0.371025, -0.687199, 0.624579,
		0.496561, -0.715169, -0.491894,
		65.683311, 56.272823, 56.952232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.569061, 56.371761, 57.870731>,  <65.335716, 56.773441, 57.296558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.569061, 56.371761, 57.870731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.825417, 56.397705, 57.564774>,  <65.979233, 56.413273, 57.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.825417, 56.397705, 57.564774>,  <65.569061, 56.371761, 57.870731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.825417, 56.397705, 57.564774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767301, -0.083583, 0.635817,
		-0.022694, -0.994388, -0.103333,
		0.640886, 0.064858, -0.764892,
		66.017685, 56.417164, 57.335304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.102280, 55.863277, 57.981171>,  <65.569061, 56.371761, 57.870731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.102280, 55.863277, 57.981171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.224617, 56.175785, 57.763519>,  <66.298019, 56.363289, 57.632927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.224617, 56.175785, 57.763519>,  <66.102280, 55.863277, 57.981171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.224617, 56.175785, 57.763519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883084, -0.019171, 0.468822,
		0.355846, -0.623897, -0.695792,
		0.305835, 0.781272, -0.544132,
		66.316368, 56.410168, 57.600281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.869644, 55.929356, 57.841278>,  <66.102280, 55.863277, 57.981171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.869644, 55.929356, 57.841278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.806923, 56.310745, 57.738289>,  <66.769287, 56.539581, 57.676495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.806923, 56.310745, 57.738289>,  <66.869644, 55.929356, 57.841278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.806923, 56.310745, 57.738289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860524, 0.259840, 0.438158,
		0.484675, -0.152851, -0.861236,
		-0.156811, 0.953478, -0.257470,
		66.759880, 56.596790, 57.661049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.253510, 56.130993, 57.204330>,  <66.869644, 55.929356, 57.841278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.253510, 56.130993, 57.204330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.200592, 56.404869, 57.491020>,  <67.168839, 56.569195, 57.663036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.200592, 56.404869, 57.491020>,  <67.253510, 56.130993, 57.204330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.200592, 56.404869, 57.491020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934942, -0.153962, 0.319655,
		0.329213, 0.712389, -0.619775,
		-0.132297, 0.684688, 0.716729,
		67.160904, 56.610275, 57.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.861580, 56.629898, 57.077599>,  <67.253510, 56.130993, 57.204330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.861580, 56.629898, 57.077599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.686188, 56.604877, 57.436226>,  <67.580956, 56.589863, 57.651402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.686188, 56.604877, 57.436226>,  <67.861580, 56.629898, 57.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.686188, 56.604877, 57.436226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895919, -0.109464, 0.430518,
		0.071210, 0.992020, 0.104042,
		-0.438472, -0.062556, 0.896565,
		67.554649, 56.586109, 57.705196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.983246, 57.225117, 57.525230>,  <67.861580, 56.629898, 57.077599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.983246, 57.225117, 57.525230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.929916, 56.883911, 57.727058>,  <67.897919, 56.679188, 57.848156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.929916, 56.883911, 57.727058>,  <67.983246, 57.225117, 57.525230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.929916, 56.883911, 57.727058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961633, 0.011829, 0.274084,
		-0.239766, 0.521756, 0.818708,
		-0.133321, -0.853013, 0.504574,
		67.889923, 56.628006, 57.878429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.243767, 57.363087, 58.278893>,  <67.983246, 57.225117, 57.525230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.243767, 57.363087, 58.278893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.236931, 56.972797, 58.191559>,  <68.232826, 56.738625, 58.139160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.236931, 56.972797, 58.191559>,  <68.243767, 57.363087, 58.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.236931, 56.972797, 58.191559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936435, -0.092156, 0.338521,
		-0.350424, -0.198664, 0.915279,
		-0.017096, -0.975725, -0.218330,
		68.231804, 56.680080, 58.126060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.295967, 56.930134, 58.831459>,  <68.243767, 57.363087, 58.278893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.295967, 56.930134, 58.831459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.464127, 56.823647, 58.484497>,  <68.565018, 56.759754, 58.276318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.464127, 56.823647, 58.484497>,  <68.295967, 56.930134, 58.831459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.464127, 56.823647, 58.484497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906546, 0.083201, 0.413826,
		-0.037998, -0.960316, 0.276313,
		0.420394, -0.266215, -0.867409,
		68.590248, 56.743782, 58.224274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.898010, 56.506069, 58.940765>,  <68.295967, 56.930134, 58.831459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.898010, 56.506069, 58.940765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.964973, 56.671352, 58.582718>,  <69.005150, 56.770523, 58.367889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.964973, 56.671352, 58.582718>,  <68.898010, 56.506069, 58.940765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.964973, 56.671352, 58.582718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985840, -0.061194, 0.156123,
		0.009735, -0.908579, -0.417600,
		0.167404, 0.413207, -0.895118,
		69.015198, 56.795315, 58.314182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.571754, 56.201176, 58.802704>,  <68.898010, 56.506069, 58.940765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.571754, 56.201176, 58.802704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.520485, 56.529373, 58.579865>,  <69.489723, 56.726292, 58.446159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.520485, 56.529373, 58.579865>,  <69.571754, 56.201176, 58.802704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.520485, 56.529373, 58.579865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990805, 0.130489, -0.035759,
		0.043356, -0.556560, -0.829676,
		-0.128166, 0.820496, -0.557099,
		69.482033, 56.775520, 58.412735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.825470, 56.152878, 58.046471>,  <69.571754, 56.201176, 58.802704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.825470, 56.152878, 58.046471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.842812, 56.518314, 58.208199>,  <69.853218, 56.737576, 58.305237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.842812, 56.518314, 58.208199>,  <69.825470, 56.152878, 58.046471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.842812, 56.518314, 58.208199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989705, -0.094526, 0.107468,
		0.136400, 0.395497, -0.908283,
		0.043353, 0.913590, 0.404318,
		69.855820, 56.792393, 58.329494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.439430, 56.355457, 57.757008>,  <69.825470, 56.152878, 58.046471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.439430, 56.355457, 57.757008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.359131, 56.585613, 58.074150>,  <70.310951, 56.723709, 58.264435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.359131, 56.585613, 58.074150>,  <70.439430, 56.355457, 57.757008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.359131, 56.585613, 58.074150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972767, 0.021379, 0.230797,
		0.115849, 0.817597, -0.564016,
		-0.200757, 0.575394, 0.792855,
		70.298904, 56.758232, 58.312008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.764801, 57.000801, 57.760872>,  <70.439430, 56.355457, 57.757008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.764801, 57.000801, 57.760872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.693260, 56.897503, 58.140625>,  <70.650337, 56.835526, 58.368477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.693260, 56.897503, 58.140625>,  <70.764801, 57.000801, 57.760872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.693260, 56.897503, 58.140625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946556, 0.218084, 0.237637,
		-0.268413, 0.941143, 0.205437,
		-0.178848, -0.258243, 0.949381,
		70.639603, 56.820030, 58.425438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.976463, 57.596119, 58.296776>,  <70.764801, 57.000801, 57.760872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.976463, 57.596119, 58.296776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.009247, 57.235638, 58.467010>,  <71.028915, 57.019348, 58.569149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.009247, 57.235638, 58.467010>,  <70.976463, 57.596119, 58.296776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.009247, 57.235638, 58.467010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928937, 0.223769, 0.294964,
		-0.361054, 0.371166, 0.855497,
		0.081953, -0.901201, 0.425583,
		71.033836, 56.965279, 58.594685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.186844, 57.721004, 58.986835>,  <70.976463, 57.596119, 58.296776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.186844, 57.721004, 58.986835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.307617, 57.363152, 58.855103>,  <71.380081, 57.148441, 58.776062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.307617, 57.363152, 58.855103>,  <71.186844, 57.721004, 58.986835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.307617, 57.363152, 58.855103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906772, 0.162877, 0.388891,
		-0.294274, -0.416055, 0.860408,
		0.301941, -0.894634, -0.329336,
		71.398201, 57.094761, 58.756302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.419662, 57.417439, 59.541721>,  <71.186844, 57.721004, 58.986835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.419662, 57.417439, 59.541721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.607353, 57.225445, 59.245224>,  <71.719971, 57.110249, 59.067326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.607353, 57.225445, 59.245224>,  <71.419662, 57.417439, 59.541721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.607353, 57.225445, 59.245224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879036, 0.173645, 0.444008,
		-0.084401, -0.859922, 0.503399,
		0.469225, -0.479981, -0.741247,
		71.748123, 57.081451, 59.022850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.836128, 56.865639, 59.808903>,  <71.419662, 57.417439, 59.541721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.836128, 56.865639, 59.808903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.045853, 57.066154, 59.533569>,  <72.171692, 57.186462, 59.368370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.045853, 57.066154, 59.533569>,  <71.836128, 56.865639, 59.808903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.045853, 57.066154, 59.533569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727732, 0.155945, 0.667897,
		0.442151, -0.851112, -0.283038,
		0.524317, 0.501288, -0.688333,
		72.203148, 57.216541, 59.327068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.582909, 56.734859, 59.926674>,  <71.836128, 56.865639, 59.808903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.582909, 56.734859, 59.926674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.543304, 57.090050, 59.747032>,  <72.519539, 57.303165, 59.639248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.543304, 57.090050, 59.747032>,  <72.582909, 56.734859, 59.926674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.543304, 57.090050, 59.747032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723351, 0.374159, 0.580318,
		0.683345, -0.267396, -0.679367,
		-0.099016, 0.887978, -0.449100,
		72.513603, 57.356441, 59.612301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.281998, 57.014603, 59.827438>,  <72.582909, 56.734859, 59.926674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.281998, 57.014603, 59.827438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.013184, 57.310791, 59.831131>,  <72.851898, 57.488503, 59.833347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.013184, 57.310791, 59.831131>,  <73.281998, 57.014603, 59.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.013184, 57.310791, 59.831131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541780, 0.483128, 0.687795,
		0.504832, 0.467217, -0.725847,
		-0.672026, 0.740470, 0.009231,
		72.811577, 57.532932, 59.833900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.703918, 57.631203, 59.890202>,  <73.281998, 57.014603, 59.827438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.703918, 57.631203, 59.890202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.341141, 57.648693, 60.057800>,  <73.123474, 57.659187, 60.158360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.341141, 57.648693, 60.057800>,  <73.703918, 57.631203, 59.890202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.341141, 57.648693, 60.057800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391016, 0.457478, 0.798636,
		-0.156762, 0.888145, -0.432000,
		-0.906936, 0.043723, 0.418994,
		73.069061, 57.661808, 60.183498>
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
