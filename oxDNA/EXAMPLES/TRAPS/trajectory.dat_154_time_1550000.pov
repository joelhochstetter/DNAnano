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
	<35.997261, 53.773605, 50.423721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328472, 53.550320, 50.444775>,  <36.527199, 53.416348, 50.457405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328472, 53.550320, 50.444775>,  <35.997261, 53.773605, 50.423721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328472, 53.550320, 50.444775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249953, 0.451530, 0.856530,
		-0.501892, -0.696074, 0.513406,
		0.828027, -0.558213, 0.052634,
		36.576881, 53.382854, 50.460564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028240, 53.542248, 51.094654>,  <35.997261, 53.773605, 50.423721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028240, 53.542248, 51.094654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403294, 53.582069, 50.961430>,  <36.628326, 53.605961, 50.881493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403294, 53.582069, 50.961430>,  <36.028240, 53.542248, 51.094654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403294, 53.582069, 50.961430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220231, 0.571199, 0.790715,
		0.268962, -0.814752, 0.513652,
		0.937634, 0.099551, -0.333064,
		36.684586, 53.611935, 50.861511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534912, 53.316101, 51.654716>,  <36.028240, 53.542248, 51.094654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534912, 53.316101, 51.654716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690598, 53.583336, 51.401047>,  <36.784008, 53.743675, 51.248844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690598, 53.583336, 51.401047>,  <36.534912, 53.316101, 51.654716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690598, 53.583336, 51.401047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382390, 0.509158, 0.771061,
		0.838030, -0.542608, -0.057300,
		0.389209, 0.668083, -0.634177,
		36.807362, 53.783760, 51.210793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234592, 53.511898, 52.037319>,  <36.534912, 53.316101, 51.654716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234592, 53.511898, 52.037319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207523, 53.496948, 51.638515>,  <37.191280, 53.487980, 51.399235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207523, 53.496948, 51.638515>,  <37.234592, 53.511898, 52.037319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207523, 53.496948, 51.638515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988663, 0.136758, 0.061983,
		0.134032, 0.989899, -0.046205,
		-0.067676, -0.037374, -0.997007,
		37.187222, 53.485737, 51.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228615, 53.038803, 52.612488>,  <37.234592, 53.511898, 52.037319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228615, 53.038803, 52.612488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360081, 53.352028, 52.823692>,  <37.438961, 53.539963, 52.950417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360081, 53.352028, 52.823692>,  <37.228615, 53.038803, 52.612488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360081, 53.352028, 52.823692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546629, 0.613634, -0.569781,
		-0.770178, -0.101357, 0.629725,
		0.328669, 0.783058, 0.528012,
		37.458683, 53.586945, 52.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615517, 52.647343, 52.169010>,  <37.228615, 53.038803, 52.612488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615517, 52.647343, 52.169010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779209, 53.008018, 52.113159>,  <37.877422, 53.224422, 52.079647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779209, 53.008018, 52.113159>,  <37.615517, 52.647343, 52.169010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779209, 53.008018, 52.113159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124821, 0.206912, 0.970364,
		0.903854, -0.379671, 0.197223,
		0.409227, 0.901686, -0.139628,
		37.901978, 53.278522, 52.071270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239311, 52.772938, 52.618923>,  <37.615517, 52.647343, 52.169010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239311, 52.772938, 52.618923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988888, 53.073730, 52.536396>,  <37.838634, 53.254208, 52.486881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988888, 53.073730, 52.536396>,  <38.239311, 52.772938, 52.618923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988888, 53.073730, 52.536396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117769, 0.170363, 0.978318,
		0.770828, 0.636786, -0.018097,
		-0.626062, 0.751984, -0.206314,
		37.801067, 53.299324, 52.474503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455776, 53.493366, 52.960209>,  <38.239311, 52.772938, 52.618923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455776, 53.493366, 52.960209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063076, 53.426815, 52.923386>,  <37.827454, 53.386883, 52.901291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063076, 53.426815, 52.923386>,  <38.455776, 53.493366, 52.960209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063076, 53.426815, 52.923386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142555, 0.323622, 0.935386,
		-0.125838, 0.931443, -0.341436,
		-0.981755, -0.166380, -0.092058,
		37.768551, 53.376900, 52.895767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920525, 53.008774, 52.606712>,  <38.455776, 53.493366, 52.960209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920525, 53.008774, 52.606712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285336, 53.172752, 52.601883>,  <39.504223, 53.271137, 52.598988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285336, 53.172752, 52.601883>,  <38.920525, 53.008774, 52.606712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285336, 53.172752, 52.601883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288119, -0.619499, 0.730211,
		0.291869, -0.669452, -0.683115,
		0.912031, 0.409945, -0.012069,
		39.558945, 53.295734, 52.598263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472519, 52.456585, 52.595325>,  <38.920525, 53.008774, 52.606712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472519, 52.456585, 52.595325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569733, 52.770405, 52.823505>,  <39.628059, 52.958698, 52.960415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569733, 52.770405, 52.823505>,  <39.472519, 52.456585, 52.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569733, 52.770405, 52.823505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429692, -0.614308, 0.661808,
		0.869655, 0.084276, -0.486413,
		0.243033, 0.784553, 0.570449,
		39.642643, 53.005772, 52.994640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727539, 52.614216, 51.913254>,  <39.472519, 52.456585, 52.595325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727539, 52.614216, 51.913254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328705, 52.606377, 51.883781>,  <39.089405, 52.601673, 51.866100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328705, 52.606377, 51.883781>,  <39.727539, 52.614216, 51.913254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328705, 52.606377, 51.883781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074850, -0.435522, -0.897061,
		-0.014504, -0.899965, 0.435721,
		-0.997089, -0.019603, -0.073679,
		39.029579, 52.600494, 51.861679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274818, 52.540779, 52.425041>,  <39.727539, 52.614216, 51.913254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274818, 52.540779, 52.425041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472298, 52.368610, 52.122784>,  <40.590786, 52.265308, 51.941429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472298, 52.368610, 52.122784>,  <40.274818, 52.540779, 52.425041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472298, 52.368610, 52.122784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803641, 0.557839, 0.207307,
		0.332297, -0.709613, 0.621312,
		0.493700, -0.430424, -0.755642,
		40.620407, 52.239483, 51.896091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891506, 52.229321, 52.786739>,  <40.274818, 52.540779, 52.425041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891506, 52.229321, 52.786739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896084, 52.324955, 52.398369>,  <40.898830, 52.382336, 52.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896084, 52.324955, 52.398369>,  <40.891506, 52.229321, 52.786739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896084, 52.324955, 52.398369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724675, 0.667071, 0.172808,
		0.688996, -0.705587, -0.165627,
		0.011446, 0.239090, -0.970930,
		40.899517, 52.396683, 52.107090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602215, 52.248730, 52.524998>,  <40.891506, 52.229321, 52.786739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602215, 52.248730, 52.524998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365032, 52.509266, 52.335617>,  <41.222725, 52.665588, 52.221989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365032, 52.509266, 52.335617>,  <41.602215, 52.248730, 52.524998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365032, 52.509266, 52.335617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547451, 0.757264, 0.356158,
		0.590511, -0.048008, -0.805601,
		-0.592954, 0.651342, -0.473455,
		41.187145, 52.704670, 52.193581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854362, 52.951115, 52.902775>,  <41.602215, 52.248730, 52.524998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854362, 52.951115, 52.902775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843563, 53.049026, 52.515095>,  <41.837086, 53.107773, 52.282486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843563, 53.049026, 52.515095>,  <41.854362, 52.951115, 52.902775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843563, 53.049026, 52.515095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976436, 0.201212, 0.078016,
		0.214112, 0.948471, 0.233580,
		-0.026997, 0.244780, -0.969203,
		41.835464, 53.122459, 52.224335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625912, 52.744247, 52.696648>,  <41.854362, 52.951115, 52.902775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625912, 52.744247, 52.696648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540646, 52.547195, 52.359158>,  <42.489487, 52.428967, 52.156662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540646, 52.547195, 52.359158>,  <42.625912, 52.744247, 52.696648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540646, 52.547195, 52.359158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126655, 0.842356, -0.523826,
		0.968772, -0.218525, -0.117169,
		-0.213167, -0.492628, -0.843728,
		42.476696, 52.399406, 52.106041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169891, 53.052643, 52.233353>,  <42.625912, 52.744247, 52.696648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169891, 53.052643, 52.233353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851143, 52.890320, 52.054329>,  <42.659893, 52.792927, 51.946915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851143, 52.890320, 52.054329>,  <43.169891, 53.052643, 52.233353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851143, 52.890320, 52.054329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037520, 0.772631, -0.633745,
		0.602978, -0.488223, -0.630916,
		-0.796875, -0.405807, -0.447562,
		42.612080, 52.768578, 51.920059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307671, 53.080765, 51.387684>,  <43.169891, 53.052643, 52.233353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307671, 53.080765, 51.387684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917622, 53.050278, 51.470936>,  <42.683590, 53.031986, 51.520889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917622, 53.050278, 51.470936>,  <43.307671, 53.080765, 51.387684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917622, 53.050278, 51.470936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209799, 0.620324, -0.755766,
		-0.071506, -0.780634, -0.620885,
		-0.975126, -0.076219, 0.208133,
		42.625084, 53.027412, 51.533375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898968, 52.921246, 51.963593>,  <43.307671, 53.080765, 51.387684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898968, 52.921246, 51.963593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139069, 53.156960, 52.179901>,  <44.283127, 53.298389, 52.309689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139069, 53.156960, 52.179901>,  <43.898968, 52.921246, 51.963593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139069, 53.156960, 52.179901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470857, 0.286187, -0.834501,
		-0.646525, 0.755537, -0.105687,
		0.600250, 0.589289, 0.540776,
		44.319145, 53.333748, 52.342133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044266, 53.686642, 51.659405>,  <43.898968, 52.921246, 51.963593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044266, 53.686642, 51.659405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349522, 53.577709, 51.893822>,  <44.532677, 53.512348, 52.034473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349522, 53.577709, 51.893822>,  <44.044266, 53.686642, 51.659405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349522, 53.577709, 51.893822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643364, 0.234868, -0.728643,
		0.060790, 0.933098, 0.354447,
		0.763143, -0.272333, 0.586044,
		44.578465, 53.496010, 52.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532539, 54.313946, 51.737568>,  <44.044266, 53.686642, 51.659405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532539, 54.313946, 51.737568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663628, 53.936184, 51.726978>,  <44.742283, 53.709526, 51.720623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663628, 53.936184, 51.726978>,  <44.532539, 54.313946, 51.737568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663628, 53.936184, 51.726978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494012, 0.195183, -0.847264,
		0.805326, 0.264590, 0.530512,
		0.327724, -0.944402, -0.026475,
		44.761944, 53.652863, 51.719036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216217, 54.293079, 51.876793>,  <44.532539, 54.313946, 51.737568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216217, 54.293079, 51.876793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138550, 53.986755, 51.631569>,  <45.091949, 53.802963, 51.484436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138550, 53.986755, 51.631569>,  <45.216217, 54.293079, 51.876793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138550, 53.986755, 51.631569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702437, 0.327696, -0.631821,
		0.684749, -0.553314, 0.474302,
		-0.194168, -0.765806, -0.613058,
		45.080299, 53.757015, 51.447651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414894, 53.946781, 52.488827>,  <45.216217, 54.293079, 51.876793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414894, 53.946781, 52.488827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484985, 54.152290, 52.824764>,  <45.527042, 54.275597, 53.026325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484985, 54.152290, 52.824764>,  <45.414894, 53.946781, 52.488827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484985, 54.152290, 52.824764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638210, -0.590256, 0.494252,
		0.749655, -0.622602, 0.224466,
		0.175230, 0.513774, 0.839840,
		45.537556, 54.306423, 53.076717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773708, 53.534466, 53.055740>,  <45.414894, 53.946781, 52.488827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773708, 53.534466, 53.055740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540546, 53.811466, 53.225754>,  <45.400650, 53.977669, 53.327763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540546, 53.811466, 53.225754>,  <45.773708, 53.534466, 53.055740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540546, 53.811466, 53.225754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356930, -0.688156, 0.631697,
		0.729944, 0.216514, 0.648308,
		-0.582909, 0.692505, 0.425035,
		45.365673, 54.019218, 53.353264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887203, 53.555508, 53.880207>,  <45.773708, 53.534466, 53.055740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887203, 53.555508, 53.880207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520130, 53.666801, 53.766754>,  <45.299889, 53.733578, 53.698685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520130, 53.666801, 53.766754>,  <45.887203, 53.555508, 53.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520130, 53.666801, 53.766754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393954, -0.729916, 0.558590,
		-0.051604, 0.624344, 0.779443,
		-0.917680, 0.278239, -0.283629,
		45.244827, 53.750275, 53.681664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201271, 53.320271, 54.507790>,  <45.887203, 53.555508, 53.880207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201271, 53.320271, 54.507790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566437, 53.243042, 54.363953>,  <46.785538, 53.196705, 54.277653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566437, 53.243042, 54.363953>,  <46.201271, 53.320271, 54.507790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566437, 53.243042, 54.363953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365176, -0.007097, 0.930911,
		-0.182280, -0.981160, 0.064025,
		0.912918, -0.193067, -0.359590,
		46.840313, 53.185123, 54.256077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560455, 53.080116, 55.081814>,  <46.201271, 53.320271, 54.507790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560455, 53.080116, 55.081814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853683, 53.130959, 54.814545>,  <47.029621, 53.161465, 54.654182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853683, 53.130959, 54.814545>,  <46.560455, 53.080116, 55.081814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853683, 53.130959, 54.814545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677188, -0.044747, 0.734448,
		0.063457, -0.990879, -0.118879,
		0.733069, 0.127110, -0.668172,
		47.073605, 53.169090, 54.614094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.067348, 53.097919, 55.544842>,  <46.560455, 53.080116, 55.081814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.067348, 53.097919, 55.544842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262257, 53.114510, 55.195938>,  <47.379204, 53.124466, 54.986595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262257, 53.114510, 55.195938>,  <47.067348, 53.097919, 55.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262257, 53.114510, 55.195938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872721, 0.011578, 0.488081,
		0.030346, -0.999072, -0.030561,
		0.487275, 0.041483, -0.872263,
		47.408440, 53.126953, 54.934258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538334, 52.504864, 55.505501>,  <47.067348, 53.097919, 55.544842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538334, 52.504864, 55.505501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669476, 52.788620, 55.255936>,  <47.748161, 52.958874, 55.106197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669476, 52.788620, 55.255936>,  <47.538334, 52.504864, 55.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669476, 52.788620, 55.255936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926548, -0.112515, 0.358956,
		0.184441, -0.695774, -0.694175,
		0.327858, 0.709393, -0.623916,
		47.767834, 53.001438, 55.068760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.050243, 52.319359, 55.052601>,  <47.538334, 52.504864, 55.505501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.050243, 52.319359, 55.052601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.097549, 52.709587, 55.126648>,  <48.125935, 52.943726, 55.171078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.097549, 52.709587, 55.126648>,  <48.050243, 52.319359, 55.052601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.097549, 52.709587, 55.126648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981954, -0.142613, 0.124212,
		0.147578, 0.167089, -0.974834,
		0.118269, 0.975573, 0.185121,
		48.133030, 53.002258, 55.182182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.709354, 52.458225, 54.758591>,  <48.050243, 52.319359, 55.052601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.709354, 52.458225, 54.758591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.646118, 52.723820, 55.050926>,  <48.608177, 52.883175, 55.226330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.646118, 52.723820, 55.050926>,  <48.709354, 52.458225, 54.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.646118, 52.723820, 55.050926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954910, -0.085564, 0.284297,
		0.251304, 0.742833, -0.620521,
		-0.158091, 0.663986, 0.730841,
		48.598690, 52.923016, 55.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.047184, 53.055489, 54.548309>,  <48.709354, 52.458225, 54.758591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.047184, 53.055489, 54.548309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.041615, 52.950481, 54.934238>,  <49.038273, 52.887478, 55.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.041615, 52.950481, 54.934238>,  <49.047184, 53.055489, 54.548309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.041615, 52.950481, 54.934238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996190, 0.079437, 0.035995,
		-0.086092, 0.961651, 0.260413,
		-0.013928, -0.262519, 0.964826,
		49.037437, 52.871727, 55.223686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.394127, 53.607533, 54.893887>,  <49.047184, 53.055489, 54.548309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.394127, 53.607533, 54.893887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460297, 53.238670, 55.033752>,  <49.499996, 53.017353, 55.117672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460297, 53.238670, 55.033752>,  <49.394127, 53.607533, 54.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.460297, 53.238670, 55.033752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984521, 0.133583, -0.113465,
		0.057924, 0.363018, 0.929980,
		0.165420, -0.922157, 0.349661,
		49.509922, 52.962025, 55.138649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.909386, 53.530426, 55.508705>,  <49.394127, 53.607533, 54.893887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.909386, 53.530426, 55.508705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.900524, 53.209728, 55.269806>,  <49.895206, 53.017307, 55.126465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.900524, 53.209728, 55.269806>,  <49.909386, 53.530426, 55.508705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.900524, 53.209728, 55.269806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938165, 0.189767, -0.289541,
		0.345477, -0.566735, 0.747969,
		-0.022153, -0.801748, -0.597251,
		49.893879, 52.969204, 55.090630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.513012, 53.657303, 55.167446>,  <49.909386, 53.530426, 55.508705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.513012, 53.657303, 55.167446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.385235, 53.298679, 55.044716>,  <50.308567, 53.083508, 54.971077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.385235, 53.298679, 55.044716>,  <50.513012, 53.657303, 55.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.385235, 53.298679, 55.044716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881614, -0.162471, -0.443125,
		0.347435, -0.412057, 0.842317,
		-0.319445, -0.896555, -0.306828,
		50.289402, 53.029713, 54.952667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.912170, 53.044834, 55.418743>,  <50.513012, 53.657303, 55.167446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.912170, 53.044834, 55.418743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.734165, 52.958290, 55.071144>,  <50.627361, 52.906364, 54.862587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.734165, 52.958290, 55.071144>,  <50.912170, 53.044834, 55.418743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.734165, 52.958290, 55.071144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839052, -0.439871, -0.320163,
		-0.312977, -0.871610, 0.377283,
		-0.445013, -0.216356, -0.868996,
		50.600662, 52.893383, 54.810444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.064663, 52.285564, 55.192757>,  <50.912170, 53.044834, 55.418743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.064663, 52.285564, 55.192757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.930546, 52.464283, 54.860985>,  <50.850075, 52.571514, 54.661922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.930546, 52.464283, 54.860985>,  <51.064663, 52.285564, 55.192757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.930546, 52.464283, 54.860985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800184, -0.329644, -0.501040,
		-0.497278, -0.831692, -0.246989,
		-0.335292, 0.446793, -0.829431,
		50.829960, 52.598320, 54.612156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.599518, 51.843166, 54.961582>,  <51.064663, 52.285564, 55.192757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.599518, 51.843166, 54.961582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685051, 51.538155, 54.717342>,  <51.736370, 51.355148, 54.570801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685051, 51.538155, 54.717342>,  <51.599518, 51.843166, 54.961582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.685051, 51.538155, 54.717342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266750, 0.555722, -0.787412,
		0.939746, 0.331248, -0.084575,
		0.213828, -0.762527, -0.610598,
		51.749199, 51.309395, 54.534164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.214882, 52.035679, 54.554832>,  <51.599518, 51.843166, 54.961582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.214882, 52.035679, 54.554832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.953968, 51.791542, 54.375046>,  <51.797421, 51.645061, 54.267174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.953968, 51.791542, 54.375046>,  <52.214882, 52.035679, 54.554832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.953968, 51.791542, 54.375046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107196, 0.661296, -0.742426,
		0.750359, -0.436090, -0.496777,
		-0.652281, -0.610338, -0.449463,
		51.758286, 51.608440, 54.240208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.955650, 52.075260, 54.706318>,  <52.214882, 52.035679, 54.554832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.955650, 52.075260, 54.706318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.083649, 52.073654, 54.327354>,  <53.160446, 52.072689, 54.099976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.083649, 52.073654, 54.327354>,  <52.955650, 52.075260, 54.706318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.083649, 52.073654, 54.327354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511625, -0.840913, 0.176367,
		-0.797399, -0.541155, -0.267032,
		0.319992, -0.004015, -0.947411,
		53.179646, 52.072449, 54.043129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.802078, 51.394268, 54.352821>,  <52.955650, 52.075260, 54.706318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.802078, 51.394268, 54.352821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.124214, 51.611950, 54.258781>,  <53.317497, 51.742558, 54.202358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.124214, 51.611950, 54.258781>,  <52.802078, 51.394268, 54.352821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.124214, 51.611950, 54.258781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578140, -0.808691, 0.108501,
		-0.131073, -0.223298, -0.965898,
		0.805341, 0.544203, -0.235095,
		53.365818, 51.775211, 54.188251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.298706, 50.906857, 54.012676>,  <52.802078, 51.394268, 54.352821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.298706, 50.906857, 54.012676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.505684, 51.216072, 54.159462>,  <53.629871, 51.401600, 54.247536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.505684, 51.216072, 54.159462>,  <53.298706, 50.906857, 54.012676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.505684, 51.216072, 54.159462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773435, -0.605986, 0.185953,
		0.366125, 0.187605, -0.911458,
		0.517446, 0.773036, 0.366967,
		53.660919, 51.447983, 54.269550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.000866, 50.817326, 53.797932>,  <53.298706, 50.906857, 54.012676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.000866, 50.817326, 53.797932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.028877, 51.058655, 54.115700>,  <54.045685, 51.203453, 54.306358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.028877, 51.058655, 54.115700>,  <54.000866, 50.817326, 53.797932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.028877, 51.058655, 54.115700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851760, -0.450684, 0.267186,
		0.519230, 0.657941, -0.545448,
		0.070032, 0.603322, 0.794417,
		54.049889, 51.239651, 54.354023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.599575, 51.193787, 53.766964>,  <54.000866, 50.817326, 53.797932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.599575, 51.193787, 53.766964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.495026, 51.167587, 54.152168>,  <54.432297, 51.151867, 54.383293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.495026, 51.167587, 54.152168>,  <54.599575, 51.193787, 53.766964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.495026, 51.167587, 54.152168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942305, -0.233501, 0.239872,
		0.209152, 0.970148, 0.122754,
		-0.261375, -0.065502, 0.963012,
		54.416615, 51.147938, 54.441071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.839783, 51.737743, 54.313389>,  <54.599575, 51.193787, 53.766964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.839783, 51.737743, 54.313389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.820595, 51.366024, 54.459873>,  <54.809082, 51.142994, 54.547764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.820595, 51.366024, 54.459873>,  <54.839783, 51.737743, 54.313389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.820595, 51.366024, 54.459873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975291, 0.035581, 0.218038,
		-0.215652, 0.367620, 0.904627,
		-0.047968, -0.929295, 0.366209,
		54.806206, 51.087234, 54.569736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.996441, 51.604488, 55.075031>,  <54.839783, 51.737743, 54.313389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.996441, 51.604488, 55.075031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.079460, 51.272926, 54.867249>,  <55.129272, 51.073990, 54.742577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.079460, 51.272926, 54.867249>,  <54.996441, 51.604488, 55.075031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.079460, 51.272926, 54.867249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922912, -0.010111, 0.384878,
		-0.324280, -0.559297, 0.762909,
		0.207547, -0.828906, -0.519461,
		55.141724, 51.024254, 54.711411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.262436, 51.132111, 55.575531>,  <54.996441, 51.604488, 55.075031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.262436, 51.132111, 55.575531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433815, 51.102642, 55.215309>,  <55.536644, 51.084961, 54.999176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433815, 51.102642, 55.215309>,  <55.262436, 51.132111, 55.575531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.433815, 51.102642, 55.215309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901113, 0.108213, 0.419864,
		0.066520, -0.991394, 0.112751,
		0.428452, -0.073672, -0.900556,
		55.562351, 51.080540, 54.945141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.891060, 50.803982, 55.637806>,  <55.262436, 51.132111, 55.575531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.891060, 50.803982, 55.637806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.972992, 50.929188, 55.266846>,  <56.022152, 51.004311, 55.044270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.972992, 50.929188, 55.266846>,  <55.891060, 50.803982, 55.637806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.972992, 50.929188, 55.266846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939074, 0.204346, 0.276376,
		0.276020, -0.927505, -0.252087,
		0.204827, 0.313013, -0.927399,
		56.034439, 51.023090, 54.988625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.107357, 51.251820, 56.133911>,  <55.891060, 50.803982, 55.637806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.107357, 51.251820, 56.133911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.256889, 51.241776, 55.763046>,  <56.346607, 51.235748, 55.540527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.256889, 51.241776, 55.763046>,  <56.107357, 51.251820, 56.133911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.256889, 51.241776, 55.763046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904204, 0.232499, 0.358273,
		0.206565, -0.972273, 0.109623,
		0.373826, -0.025115, -0.927158,
		56.369038, 51.234241, 55.484898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.796329, 51.238953, 56.160305>,  <56.107357, 51.251820, 56.133911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.796329, 51.238953, 56.160305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.784515, 51.317169, 55.768204>,  <56.777428, 51.364098, 55.532944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.784515, 51.317169, 55.768204>,  <56.796329, 51.238953, 56.160305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.784515, 51.317169, 55.768204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952272, 0.303585, 0.031867,
		0.303820, -0.932523, -0.195176,
		-0.029536, 0.195543, -0.980250,
		56.775654, 51.375832, 55.474129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.321331, 50.841553, 55.944683>,  <56.796329, 51.238953, 56.160305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.321331, 50.841553, 55.944683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.251915, 51.117802, 55.663849>,  <57.210266, 51.283550, 55.495346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.251915, 51.117802, 55.663849>,  <57.321331, 50.841553, 55.944683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.251915, 51.117802, 55.663849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959960, 0.277814, 0.035990,
		0.219906, -0.667732, -0.711179,
		-0.173544, 0.690618, -0.702089,
		57.199852, 51.324986, 55.453220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.480751, 50.065529, 55.684715>,  <57.321331, 50.841553, 55.944683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.480751, 50.065529, 55.684715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.747719, 49.946220, 55.411781>,  <57.907898, 49.874634, 55.248020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.747719, 49.946220, 55.411781>,  <57.480751, 50.065529, 55.684715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.747719, 49.946220, 55.411781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743376, 0.212586, 0.634192,
		-0.044106, -0.930506, 0.363612,
		0.667418, -0.298272, -0.682339,
		57.947945, 49.856739, 55.207081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.918518, 49.431889, 55.885143>,  <57.480751, 50.065529, 55.684715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.918518, 49.431889, 55.885143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.088272, 49.710850, 55.654137>,  <58.190125, 49.878227, 55.515533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.088272, 49.710850, 55.654137>,  <57.918518, 49.431889, 55.885143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.088272, 49.710850, 55.654137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652441, 0.206736, 0.729095,
		0.627870, -0.686209, -0.367282,
		0.424381, 0.697407, -0.577515,
		58.215588, 49.920071, 55.480881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.593338, 49.312813, 55.844700>,  <57.918518, 49.431889, 55.885143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.593338, 49.312813, 55.844700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.499008, 49.697350, 55.787842>,  <58.442410, 49.928070, 55.753727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.499008, 49.697350, 55.787842>,  <58.593338, 49.312813, 55.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.499008, 49.697350, 55.787842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602597, 0.259418, 0.754705,
		0.762406, 0.092322, -0.640480,
		-0.235828, 0.961342, -0.142149,
		58.428261, 49.985752, 55.745197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.189728, 49.903660, 55.855335>,  <58.593338, 49.312813, 55.844700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.189728, 49.903660, 55.855335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.823608, 50.010490, 55.975929>,  <58.603935, 50.074589, 56.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.823608, 50.010490, 55.975929>,  <59.189728, 49.903660, 55.855335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.823608, 50.010490, 55.975929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355011, 0.181411, 0.917092,
		0.190239, 0.946446, -0.260860,
		-0.915301, 0.267075, 0.301487,
		58.549019, 50.090614, 56.066376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.272041, 50.035194, 56.519043>,  <59.189728, 49.903660, 55.855335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.272041, 50.035194, 56.519043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.902496, 50.181984, 56.475563>,  <58.680771, 50.270058, 56.449474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.902496, 50.181984, 56.475563>,  <59.272041, 50.035194, 56.519043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.902496, 50.181984, 56.475563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061747, 0.423190, 0.903934,
		0.377721, 0.828395, -0.413627,
		-0.923858, 0.366975, -0.108697,
		58.625340, 50.292076, 56.442955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.409847, 50.646988, 56.774475>,  <59.272041, 50.035194, 56.519043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.409847, 50.646988, 56.774475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.013649, 50.610622, 56.815773>,  <58.775932, 50.588802, 56.840553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.013649, 50.610622, 56.815773>,  <59.409847, 50.646988, 56.774475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.013649, 50.610622, 56.815773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063856, 0.360942, 0.930399,
		-0.121849, 0.928147, -0.351705,
		-0.990492, -0.090909, 0.103248,
		58.716499, 50.583351, 56.846748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.788082, 50.809681, 56.047726>,  <59.409847, 50.646988, 56.774475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.788082, 50.809681, 56.047726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.980843, 51.154114, 55.982857>,  <60.096500, 51.360775, 55.943935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.980843, 51.154114, 55.982857>,  <59.788082, 50.809681, 56.047726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.980843, 51.154114, 55.982857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875439, -0.465326, 0.130684,
		0.037069, -0.204945, -0.978071,
		0.481905, 0.861086, -0.162168,
		60.125416, 51.412441, 55.934208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.497051, 50.657593, 55.796234>,  <59.788082, 50.809681, 56.047726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.497051, 50.657593, 55.796234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.422699, 50.979202, 56.022156>,  <60.378090, 51.172169, 56.157707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.422699, 50.979202, 56.022156>,  <60.497051, 50.657593, 55.796234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.422699, 50.979202, 56.022156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784690, -0.224488, 0.577812,
		0.591364, 0.550595, -0.589180,
		-0.185877, 0.804021, 0.564801,
		60.366936, 51.220409, 56.191597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.962803, 51.174038, 55.887932>,  <60.497051, 50.657593, 55.796234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.962803, 51.174038, 55.887932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.778931, 51.164928, 56.243050>,  <60.668606, 51.159462, 56.456120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.778931, 51.164928, 56.243050>,  <60.962803, 51.174038, 55.887932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.778931, 51.164928, 56.243050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883702, -0.110891, 0.454724,
		0.088094, 0.993572, 0.071098,
		-0.459685, -0.022771, 0.887790,
		60.641026, 51.158096, 56.509388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.342121, 51.587357, 56.402042>,  <60.962803, 51.174038, 55.887932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.342121, 51.587357, 56.402042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.143562, 51.298302, 56.594452>,  <61.024426, 51.124870, 56.709896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.143562, 51.298302, 56.594452>,  <61.342121, 51.587357, 56.402042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.143562, 51.298302, 56.594452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824091, -0.218090, 0.522792,
		-0.272883, 0.655920, 0.703778,
		-0.496397, -0.722638, 0.481025,
		60.994644, 51.081509, 56.738758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.370174, 51.724148, 57.155048>,  <61.342121, 51.587357, 56.402042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.370174, 51.724148, 57.155048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.299782, 51.334011, 57.101761>,  <61.257545, 51.099930, 57.069790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.299782, 51.334011, 57.101761>,  <61.370174, 51.724148, 57.155048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.299782, 51.334011, 57.101761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797180, -0.220597, 0.561997,
		-0.577523, -0.007294, 0.816342,
		-0.175983, -0.975338, -0.133215,
		61.246986, 51.041409, 57.061798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.012062, 51.226765, 57.613453>,  <61.370174, 51.724148, 57.155048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.012062, 51.226765, 57.613453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.270981, 50.971169, 57.447227>,  <61.426334, 50.817810, 57.347492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.270981, 50.971169, 57.447227>,  <61.012062, 51.226765, 57.613453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.270981, 50.971169, 57.447227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475997, -0.086957, 0.875137,
		-0.595338, -0.764286, 0.247869,
		0.647301, -0.638987, -0.415567,
		61.465172, 50.779472, 57.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.838722, 50.853607, 58.221325>,  <61.012062, 51.226765, 57.613453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.838722, 50.853607, 58.221325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.067047, 50.712051, 58.517685>,  <61.204044, 50.627117, 58.695499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.067047, 50.712051, 58.517685>,  <60.838722, 50.853607, 58.221325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.067047, 50.712051, 58.517685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092723, 0.868793, 0.486417,
		-0.815827, -0.346352, 0.463106,
		0.570814, -0.353891, 0.740899,
		61.238293, 50.605885, 58.739956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.483128, 50.775677, 58.882851>,  <60.838722, 50.853607, 58.221325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.483128, 50.775677, 58.882851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.865410, 50.893173, 58.890350>,  <61.094780, 50.963669, 58.894848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.865410, 50.893173, 58.890350>,  <60.483128, 50.775677, 58.882851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.865410, 50.893173, 58.890350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287460, 0.917789, 0.273916,
		0.063254, -0.267171, 0.961571,
		0.955702, 0.293739, 0.018747,
		61.152119, 50.981297, 58.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.339687, 51.562260, 58.907948>,  <60.483128, 50.775677, 58.882851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.339687, 51.562260, 58.907948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.732056, 51.502617, 58.957832>,  <60.967476, 51.466831, 58.987762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.732056, 51.502617, 58.957832>,  <60.339687, 51.562260, 58.907948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.732056, 51.502617, 58.957832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122648, 0.972496, 0.198012,
		-0.150811, -0.178939, 0.972233,
		0.980925, -0.149105, 0.124716,
		61.026333, 51.457886, 58.995247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.375618, 51.139187, 59.525543>,  <60.339687, 51.562260, 58.907948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.375618, 51.139187, 59.525543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.612640, 51.101631, 59.845558>,  <60.754856, 51.079098, 60.037567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.612640, 51.101631, 59.845558>,  <60.375618, 51.139187, 59.525543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.612640, 51.101631, 59.845558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584495, 0.733537, -0.346827,
		-0.554293, 0.673133, 0.489543,
		0.592558, -0.093892, 0.800037,
		60.790409, 51.073463, 60.085567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.570709, 51.854839, 59.941986>,  <60.375618, 51.139187, 59.525543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.570709, 51.854839, 59.941986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.862839, 51.581600, 59.942619>,  <61.038116, 51.417656, 59.943001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.862839, 51.581600, 59.942619>,  <60.570709, 51.854839, 59.941986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.862839, 51.581600, 59.942619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654624, 0.699212, -0.287350,
		0.195180, 0.210896, 0.957824,
		0.730324, -0.683099, 0.001586,
		61.081936, 51.376671, 59.943096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.198795, 52.008938, 60.413082>,  <60.570709, 51.854839, 59.941986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.198795, 52.008938, 60.413082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.280968, 51.786797, 60.090744>,  <61.330273, 51.653511, 59.897343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.280968, 51.786797, 60.090744>,  <61.198795, 52.008938, 60.413082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.280968, 51.786797, 60.090744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578528, 0.733046, -0.357699,
		0.789369, -0.392720, 0.471877,
		0.205432, -0.555351, -0.805843,
		61.342598, 51.620190, 59.848991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.859123, 52.060867, 60.328892>,  <61.198795, 52.008938, 60.413082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.859123, 52.060867, 60.328892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.734802, 51.947456, 59.966011>,  <61.660210, 51.879410, 59.748283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.734802, 51.947456, 59.966011>,  <61.859123, 52.060867, 60.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.734802, 51.947456, 59.966011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626802, 0.656369, -0.419880,
		0.714506, -0.699135, -0.026287,
		-0.310807, -0.283530, -0.907199,
		61.641560, 51.862396, 59.693851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.439327, 51.928097, 59.787830>,  <61.859123, 52.060867, 60.328892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.439327, 51.928097, 59.787830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.106644, 52.008568, 59.580833>,  <61.907036, 52.056850, 59.456635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.106644, 52.008568, 59.580833>,  <62.439327, 51.928097, 59.787830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.106644, 52.008568, 59.580833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482000, 0.724233, -0.493115,
		0.275578, -0.659556, -0.699316,
		-0.831705, 0.201178, -0.517489,
		61.857132, 52.068920, 59.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.381989, 51.781837, 59.041637>,  <62.439327, 51.928097, 59.787830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.381989, 51.781837, 59.041637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.222458, 52.109921, 59.205688>,  <62.126740, 52.306770, 59.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.222458, 52.109921, 59.205688>,  <62.381989, 51.781837, 59.041637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.222458, 52.109921, 59.205688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634222, 0.569733, -0.522654,
		-0.662345, 0.051662, -0.747416,
		-0.398826, 0.820204, 0.410125,
		62.102810, 52.355984, 59.328728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.491295, 52.296566, 58.609879>,  <62.381989, 51.781837, 59.041637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.491295, 52.296566, 58.609879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.359901, 52.507679, 58.923195>,  <62.281067, 52.634346, 59.111187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.359901, 52.507679, 58.923195>,  <62.491295, 52.296566, 58.609879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.359901, 52.507679, 58.923195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415298, 0.825551, -0.382091,
		-0.848309, 0.199791, -0.490363,
		-0.328481, 0.527778, 0.783294,
		62.261356, 52.666012, 59.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.161713, 52.888569, 58.332497>,  <62.491295, 52.296566, 58.609879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.161713, 52.888569, 58.332497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.266747, 52.970638, 58.709633>,  <62.329765, 53.019878, 58.935917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.266747, 52.970638, 58.709633>,  <62.161713, 52.888569, 58.332497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.266747, 52.970638, 58.709633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420001, 0.855407, -0.303114,
		-0.868705, 0.475588, 0.138444,
		0.262584, 0.205170, 0.942844,
		62.345520, 53.032188, 58.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.203407, 53.552383, 58.336678>,  <62.161713, 52.888569, 58.332497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.203407, 53.552383, 58.336678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.405952, 53.441086, 58.663155>,  <62.527481, 53.374306, 58.859043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.405952, 53.441086, 58.663155>,  <62.203407, 53.552383, 58.336678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.405952, 53.441086, 58.663155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575505, 0.813918, -0.079568,
		-0.642177, 0.510015, 0.572270,
		0.506362, -0.278248, 0.816196,
		62.557861, 53.357613, 58.908012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.308117, 54.099148, 58.744347>,  <62.203407, 53.552383, 58.336678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.308117, 54.099148, 58.744347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.613197, 53.842670, 58.778183>,  <62.796246, 53.688786, 58.798485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.613197, 53.842670, 58.778183>,  <62.308117, 54.099148, 58.744347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.613197, 53.842670, 58.778183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634250, 0.767129, 0.096124,
		-0.126527, -0.019661, 0.991768,
		0.762704, -0.641192, 0.084593,
		62.842007, 53.650314, 58.803562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.753799, 54.150562, 59.374439>,  <62.308117, 54.099148, 58.744347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.753799, 54.150562, 59.374439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.961716, 54.059353, 59.045120>,  <63.086464, 54.004627, 58.847527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.961716, 54.059353, 59.045120>,  <62.753799, 54.150562, 59.374439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.961716, 54.059353, 59.045120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487962, 0.870287, 0.067032,
		0.701224, -0.436582, 0.563633,
		0.519787, -0.228027, -0.823301,
		63.117653, 53.990944, 58.798130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.486938, 54.257030, 59.507999>,  <62.753799, 54.150562, 59.374439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.486938, 54.257030, 59.507999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.351929, 54.332466, 59.139107>,  <63.270924, 54.377728, 58.917770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.351929, 54.332466, 59.139107>,  <63.486938, 54.257030, 59.507999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.351929, 54.332466, 59.139107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423152, 0.905552, 0.030315,
		0.840845, -0.380012, -0.385449,
		-0.337524, 0.188593, -0.922231,
		63.250671, 54.389046, 58.862438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.110565, 54.285797, 59.001087>,  <63.486938, 54.257030, 59.507999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.110565, 54.285797, 59.001087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.778168, 54.496437, 58.929359>,  <63.578732, 54.622822, 58.886322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.778168, 54.496437, 58.929359>,  <64.110565, 54.285797, 59.001087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.778168, 54.496437, 58.929359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516289, 0.850089, 0.103890,
		0.207142, -0.006247, -0.978291,
		-0.830986, 0.526601, -0.179315,
		63.528873, 54.654419, 58.875565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.815010, 54.060669, 58.958012>,  <64.110565, 54.285797, 59.001087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.815010, 54.060669, 58.958012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716248, 53.694763, 59.085915>,  <64.656990, 53.475220, 59.162655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716248, 53.694763, 59.085915>,  <64.815010, 54.060669, 58.958012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.716248, 53.694763, 59.085915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848023, -0.044298, 0.528104,
		-0.468925, 0.401558, 0.786677,
		-0.246912, -0.914762, 0.319759,
		64.642174, 53.420334, 59.181843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.678497, 53.944977, 59.675144>,  <64.815010, 54.060669, 58.958012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.678497, 53.944977, 59.675144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.816750, 53.600117, 59.526962>,  <64.899704, 53.393200, 59.438053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.816750, 53.600117, 59.526962>,  <64.678497, 53.944977, 59.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.816750, 53.600117, 59.526962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828693, 0.095239, 0.551541,
		-0.440229, -0.497624, 0.747375,
		0.345639, -0.862149, -0.370450,
		64.920441, 53.341473, 59.415829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.876884, 53.613747, 60.309830>,  <64.678497, 53.944977, 59.675144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.876884, 53.613747, 60.309830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.117790, 53.536278, 60.000053>,  <65.262337, 53.489796, 59.814186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.117790, 53.536278, 60.000053>,  <64.876884, 53.613747, 60.309830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.117790, 53.536278, 60.000053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794454, 0.240469, 0.557690,
		0.078219, -0.951139, 0.298692,
		0.602267, -0.193675, -0.774445,
		65.298470, 53.478176, 59.767719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.406494, 53.263695, 60.581001>,  <64.876884, 53.613747, 60.309830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.406494, 53.263695, 60.581001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.497154, 53.451523, 60.239677>,  <65.551552, 53.564220, 60.034885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.497154, 53.451523, 60.239677>,  <65.406494, 53.263695, 60.581001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.497154, 53.451523, 60.239677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800293, 0.409559, 0.437942,
		0.555126, -0.782152, -0.282973,
		0.226643, 0.469574, -0.853307,
		65.565147, 53.592396, 59.983685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.093071, 53.110645, 60.546467>,  <65.406494, 53.263695, 60.581001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.093071, 53.110645, 60.546467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.009811, 53.437332, 60.331192>,  <65.959854, 53.633347, 60.202026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.009811, 53.437332, 60.331192>,  <66.093071, 53.110645, 60.546467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.009811, 53.437332, 60.331192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888494, 0.387949, 0.245101,
		0.408967, -0.427156, -0.806401,
		-0.208147, 0.816721, -0.538184,
		65.947365, 53.682350, 60.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.602158, 53.235249, 60.167183>,  <66.093071, 53.110645, 60.546467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.602158, 53.235249, 60.167183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.406639, 53.566135, 60.278030>,  <66.289330, 53.764668, 60.344540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.406639, 53.566135, 60.278030>,  <66.602158, 53.235249, 60.167183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.406639, 53.566135, 60.278030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865119, 0.500562, 0.031720,
		-0.112474, 0.255241, -0.960313,
		-0.488793, 0.827218, 0.277114,
		66.260002, 53.814301, 60.361164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.819351, 53.677803, 59.594128>,  <66.602158, 53.235249, 60.167183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.819351, 53.677803, 59.594128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.690636, 53.880024, 59.914345>,  <66.613403, 54.001358, 60.106476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.690636, 53.880024, 59.914345>,  <66.819351, 53.677803, 59.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.690636, 53.880024, 59.914345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703143, 0.693832, -0.155525,
		-0.634068, 0.512850, -0.578742,
		-0.321789, 0.505551, 0.800543,
		66.594101, 54.031689, 60.154507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.536781, 54.373135, 59.441856>,  <66.819351, 53.677803, 59.594128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.536781, 54.373135, 59.441856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.731194, 54.309196, 59.785538>,  <66.847839, 54.270832, 59.991745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.731194, 54.309196, 59.785538>,  <66.536781, 54.373135, 59.441856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.731194, 54.309196, 59.785538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649419, 0.723959, -0.232675,
		-0.584833, 0.671068, 0.455674,
		0.486030, -0.159848, 0.859199,
		66.876999, 54.261242, 60.043297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.838837, 55.016647, 59.513882>,  <66.536781, 54.373135, 59.441856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.838837, 55.016647, 59.513882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.037323, 54.770287, 59.758644>,  <67.156418, 54.622471, 59.905502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.037323, 54.770287, 59.758644>,  <66.838837, 55.016647, 59.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.037323, 54.770287, 59.758644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806676, 0.587661, -0.062678,
		-0.320990, 0.524714, 0.788442,
		0.496225, -0.615898, 0.611907,
		67.186188, 54.585518, 59.942215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.104355, 55.374813, 60.107117>,  <66.838837, 55.016647, 59.513882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.104355, 55.374813, 60.107117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.326981, 55.055687, 60.014412>,  <67.460556, 54.864212, 59.958790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.326981, 55.055687, 60.014412>,  <67.104355, 55.374813, 60.107117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.326981, 55.055687, 60.014412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757018, 0.601937, -0.254157,
		0.342279, -0.033993, 0.938983,
		0.556569, -0.797820, -0.231764,
		67.493950, 54.816341, 59.944881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.764458, 55.342644, 60.578564>,  <67.104355, 55.374813, 60.107117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.764458, 55.342644, 60.578564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.792534, 55.224327, 60.197495>,  <67.809380, 55.153336, 59.968853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.792534, 55.224327, 60.197495>,  <67.764458, 55.342644, 60.578564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.792534, 55.224327, 60.197495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718974, 0.677020, -0.157228,
		0.691483, -0.673906, 0.260195,
		0.070200, -0.295794, -0.952669,
		67.813591, 55.135590, 59.911694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.321251, 55.667377, 60.420654>,  <67.764458, 55.342644, 60.578564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.321251, 55.667377, 60.420654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.203506, 55.515961, 60.069641>,  <68.132858, 55.425110, 59.859035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.203506, 55.515961, 60.069641>,  <68.321251, 55.667377, 60.420654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.203506, 55.515961, 60.069641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600168, 0.641350, -0.477983,
		0.743742, -0.667362, 0.038406,
		-0.294356, -0.378547, -0.877529,
		68.115196, 55.402397, 59.806381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.885994, 55.594261, 60.035583>,  <68.321251, 55.667377, 60.420654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.885994, 55.594261, 60.035583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.585587, 55.652264, 59.777916>,  <68.405342, 55.687065, 59.623314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.585587, 55.652264, 59.777916>,  <68.885994, 55.594261, 60.035583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.585587, 55.652264, 59.777916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578924, 0.613772, -0.536778,
		0.317538, -0.776052, -0.544897,
		-0.751011, 0.145006, -0.644171,
		68.360283, 55.695766, 59.584663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.638924, 55.710667, 59.797047>,  <68.885994, 55.594261, 60.035583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.638924, 55.710667, 59.797047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.006622, 55.805809, 59.671562>,  <70.227242, 55.862896, 59.596272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.006622, 55.805809, 59.671562>,  <69.638924, 55.710667, 59.797047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.006622, 55.805809, 59.671562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294039, 0.944678, -0.145344,
		0.261783, 0.225850, 0.938329,
		0.919245, 0.237857, -0.313709,
		70.282394, 55.877167, 59.577450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.953300, 56.040997, 60.324490>,  <69.638924, 55.710667, 59.797047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.953300, 56.040997, 60.324490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.980072, 56.202335, 59.959450>,  <69.996132, 56.299137, 59.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.980072, 56.202335, 59.959450>,  <69.953300, 56.040997, 60.324490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.980072, 56.202335, 59.959450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870664, -0.423106, -0.250851,
		-0.487305, 0.811354, 0.322860,
		0.066925, 0.403344, -0.912598,
		70.000153, 56.323338, 59.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.889336, 56.454388, 61.039040>,  <69.953300, 56.040997, 60.324490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.889336, 56.454388, 61.039040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.195747, 56.254906, 60.876801>,  <70.379593, 56.135216, 60.779457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.195747, 56.254906, 60.876801>,  <69.889336, 56.454388, 61.039040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.195747, 56.254906, 60.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321679, 0.843673, -0.429811,
		0.556537, 0.198774, 0.806694,
		0.766022, -0.498702, -0.405594,
		70.425552, 56.105293, 60.755123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.387932, 56.827991, 61.195202>,  <69.889336, 56.454388, 61.039040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.387932, 56.827991, 61.195202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.522629, 56.616478, 60.883560>,  <70.603447, 56.489571, 60.696575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.522629, 56.616478, 60.883560>,  <70.387932, 56.827991, 61.195202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.522629, 56.616478, 60.883560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547203, 0.783255, -0.295093,
		0.766274, -0.326957, 0.553103,
		0.336738, -0.528782, -0.779100,
		70.623650, 56.457844, 60.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.157646, 56.992260, 61.078880>,  <70.387932, 56.827991, 61.195202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.157646, 56.992260, 61.078880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.968193, 56.881145, 60.744576>,  <70.854523, 56.814476, 60.543991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.968193, 56.881145, 60.744576>,  <71.157646, 56.992260, 61.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.968193, 56.881145, 60.744576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274921, 0.854904, -0.439953,
		0.836710, -0.438148, -0.328547,
		-0.473641, -0.277789, -0.835762,
		70.826103, 56.797810, 60.493847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.807304, 57.611233, 61.172581>,  <71.157646, 56.992260, 61.078880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.807304, 57.611233, 61.172581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.836487, 57.969925, 61.347191>,  <71.853996, 58.185139, 61.451958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.836487, 57.969925, 61.347191>,  <71.807304, 57.611233, 61.172581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.836487, 57.969925, 61.347191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996260, -0.085844, 0.009852,
		0.046308, 0.434175, -0.899638,
		0.072952, 0.896729, 0.436526,
		71.858376, 58.238945, 61.478149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.579781, 57.228703, 61.249420>,  <71.807304, 57.611233, 61.172581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.579781, 57.228703, 61.249420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.796440, 57.415779, 61.528816>,  <72.926437, 57.528027, 61.696453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.796440, 57.415779, 61.528816>,  <72.579781, 57.228703, 61.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.796440, 57.415779, 61.528816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811233, -0.508572, -0.288539,
		0.220286, 0.722924, -0.654871,
		0.541640, 0.467692, 0.698491,
		72.958931, 57.556087, 61.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.597458, 57.192677, 60.435390>,  <72.579781, 57.228703, 61.249420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.597458, 57.192677, 60.435390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.844055, 57.387188, 60.187691>,  <72.992012, 57.503895, 60.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.844055, 57.387188, 60.187691>,  <72.597458, 57.192677, 60.435390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.844055, 57.387188, 60.187691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092723, -0.736177, -0.670407,
		-0.781885, 0.470717, -0.408756,
		0.616489, 0.486280, -0.619252,
		73.028999, 57.533073, 60.001915>
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
