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
	<42.669281, 32.037525, 23.633919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661217, 32.410419, 23.489407>,  <42.656380, 32.634155, 23.402699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661217, 32.410419, 23.489407>,  <42.669281, 32.037525, 23.633919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661217, 32.410419, 23.489407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908283, 0.133955, 0.396331,
		0.417870, 0.336136, 0.844036,
		-0.020158, 0.932238, -0.361282,
		42.655170, 32.690090, 23.381021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713814, 32.457870, 24.170607>,  <42.669281, 32.037525, 23.633919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713814, 32.457870, 24.170607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490692, 32.598804, 23.870018>,  <42.356819, 32.683365, 23.689665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490692, 32.598804, 23.870018>,  <42.713814, 32.457870, 24.170607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490692, 32.598804, 23.870018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823405, -0.121266, 0.554345,
		0.104186, 0.927985, 0.357755,
		-0.557808, 0.352332, -0.751473,
		42.323349, 32.704506, 23.644575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337734, 33.127472, 24.355877>,  <42.713814, 32.457870, 24.170607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337734, 33.127472, 24.355877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141460, 32.899868, 24.091923>,  <42.023697, 32.763306, 23.933550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141460, 32.899868, 24.091923>,  <42.337734, 33.127472, 24.355877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141460, 32.899868, 24.091923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762572, -0.085958, 0.641167,
		-0.421554, 0.817825, -0.391733,
		-0.490689, -0.569012, -0.659886,
		41.994255, 32.729164, 23.893957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633892, 33.313366, 24.579931>,  <42.337734, 33.127472, 24.355877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633892, 33.313366, 24.579931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623295, 32.989174, 24.345867>,  <41.616936, 32.794659, 24.205429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623295, 32.989174, 24.345867>,  <41.633892, 33.313366, 24.579931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623295, 32.989174, 24.345867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812372, -0.323663, 0.485070,
		-0.582537, 0.488219, -0.649841,
		-0.026491, -0.810484, -0.585161,
		41.615349, 32.746029, 24.170319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925308, 33.182766, 24.327335>,  <41.633892, 33.313366, 24.579931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925308, 33.182766, 24.327335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138462, 32.845360, 24.354240>,  <41.266354, 32.642918, 24.370384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138462, 32.845360, 24.354240>,  <40.925308, 33.182766, 24.327335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138462, 32.845360, 24.354240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701187, -0.395675, 0.593109,
		-0.473682, -0.363218, -0.802308,
		0.532880, -0.843513, 0.067260,
		41.298328, 32.592308, 24.374420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309128, 33.282875, 23.863026>,  <40.925308, 33.182766, 24.327335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309128, 33.282875, 23.863026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913284, 33.258160, 23.914951>,  <39.675777, 33.243332, 23.946106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913284, 33.258160, 23.914951>,  <40.309128, 33.282875, 23.863026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913284, 33.258160, 23.914951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013760, 0.939503, 0.342265,
		-0.143106, 0.336924, -0.930593,
		-0.989612, -0.061785, 0.129812,
		39.616402, 33.239624, 23.953896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986023, 33.869892, 23.485384>,  <40.309128, 33.282875, 23.863026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986023, 33.869892, 23.485384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722935, 33.755112, 23.763969>,  <39.565083, 33.686245, 23.931120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722935, 33.755112, 23.763969>,  <39.986023, 33.869892, 23.485384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722935, 33.755112, 23.763969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016891, 0.918746, 0.394487,
		-0.753073, 0.271226, -0.599431,
		-0.657720, -0.286952, 0.696464,
		39.525620, 33.669025, 23.972908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561436, 34.432835, 23.605101>,  <39.986023, 33.869892, 23.485384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561436, 34.432835, 23.605101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529526, 34.199043, 23.928093>,  <39.510380, 34.058769, 24.121887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529526, 34.199043, 23.928093>,  <39.561436, 34.432835, 23.605101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529526, 34.199043, 23.928093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216701, 0.780518, 0.586371,
		-0.972973, 0.221761, 0.064390,
		-0.079776, -0.584477, 0.807479,
		39.505592, 34.023701, 24.170336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205158, 34.822235, 24.086695>,  <39.561436, 34.432835, 23.605101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205158, 34.822235, 24.086695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333344, 34.532383, 24.330730>,  <39.410255, 34.358471, 24.477152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333344, 34.532383, 24.330730>,  <39.205158, 34.822235, 24.086695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333344, 34.532383, 24.330730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108903, 0.667968, 0.736178,
		-0.940980, -0.169478, 0.292974,
		0.320463, -0.724635, 0.610088,
		39.429482, 34.314991, 24.513758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942226, 35.023972, 24.800173>,  <39.205158, 34.822235, 24.086695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942226, 35.023972, 24.800173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248169, 34.768787, 24.835964>,  <39.431732, 34.615677, 24.857439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248169, 34.768787, 24.835964>,  <38.942226, 35.023972, 24.800173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248169, 34.768787, 24.835964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294408, 0.469704, 0.832288,
		-0.572996, -0.610234, 0.547075,
		0.764853, -0.637961, 0.089481,
		39.477623, 34.577400, 24.862808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950218, 34.800804, 25.395323>,  <38.942226, 35.023972, 24.800173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950218, 34.800804, 25.395323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321457, 34.778656, 25.248039>,  <39.544201, 34.765369, 25.159670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321457, 34.778656, 25.248039>,  <38.950218, 34.800804, 25.395323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321457, 34.778656, 25.248039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318206, 0.631463, 0.707106,
		0.193359, -0.773427, 0.603675,
		0.928093, -0.055367, -0.368208,
		39.599884, 34.762047, 25.137577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359165, 34.596882, 25.967701>,  <38.950218, 34.800804, 25.395323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359165, 34.596882, 25.967701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619991, 34.754662, 25.708714>,  <39.776489, 34.849331, 25.553322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619991, 34.754662, 25.708714>,  <39.359165, 34.596882, 25.967701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619991, 34.754662, 25.708714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451489, 0.484031, 0.749581,
		0.609067, -0.781103, 0.137532,
		0.652069, 0.394451, -0.647467,
		39.815613, 34.872997, 25.514473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026646, 34.471077, 26.267231>,  <39.359165, 34.596882, 25.967701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026646, 34.471077, 26.267231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117455, 34.731777, 25.977768>,  <40.171940, 34.888199, 25.804090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117455, 34.731777, 25.977768>,  <40.026646, 34.471077, 26.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117455, 34.731777, 25.977768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526476, 0.542992, 0.654204,
		0.819319, -0.529507, -0.219861,
		0.227022, 0.651753, -0.723656,
		40.185562, 34.927303, 25.760672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722977, 34.668346, 26.369846>,  <40.026646, 34.471077, 26.267231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722977, 34.668346, 26.369846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560852, 34.953518, 26.140953>,  <40.463577, 35.124622, 26.003618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560852, 34.953518, 26.140953>,  <40.722977, 34.668346, 26.369846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560852, 34.953518, 26.140953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471092, 0.699326, 0.537601,
		0.783449, -0.051677, -0.619304,
		-0.405314, 0.712932, -0.572231,
		40.439259, 35.167397, 25.969284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230038, 35.082359, 26.185001>,  <40.722977, 34.668346, 26.369846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230038, 35.082359, 26.185001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898819, 35.303848, 26.149837>,  <40.700089, 35.436741, 26.128738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898819, 35.303848, 26.149837>,  <41.230038, 35.082359, 26.185001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898819, 35.303848, 26.149837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455404, 0.755735, 0.470608,
		0.327023, 0.349651, -0.877952,
		-0.828048, 0.553722, -0.087910,
		40.650406, 35.469963, 26.123465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489426, 35.735413, 26.078735>,  <41.230038, 35.082359, 26.185001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489426, 35.735413, 26.078735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119087, 35.812428, 26.208801>,  <40.896885, 35.858635, 26.286840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119087, 35.812428, 26.208801>,  <41.489426, 35.735413, 26.078735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119087, 35.812428, 26.208801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377855, 0.483873, 0.789362,
		-0.005357, 0.853695, -0.520745,
		-0.925849, 0.192537, 0.325166,
		40.841331, 35.870190, 26.306351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430611, 36.497303, 26.195286>,  <41.489426, 35.735413, 26.078735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430611, 36.497303, 26.195286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135635, 36.337727, 26.413288>,  <40.958652, 36.241982, 26.544090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135635, 36.337727, 26.413288>,  <41.430611, 36.497303, 26.195286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135635, 36.337727, 26.413288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169750, 0.671548, 0.721254,
		-0.653739, 0.624393, -0.427503,
		-0.737435, -0.398944, 0.545008,
		40.914406, 36.218044, 26.576790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032524, 37.096951, 26.392414>,  <41.430611, 36.497303, 26.195286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032524, 37.096951, 26.392414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935646, 36.798920, 26.640995>,  <40.877522, 36.620102, 26.790144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935646, 36.798920, 26.640995>,  <41.032524, 37.096951, 26.392414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935646, 36.798920, 26.640995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342984, 0.533415, 0.773195,
		-0.907582, 0.400409, 0.126360,
		-0.242192, -0.745077, 0.621452,
		40.862988, 36.575397, 26.827431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754353, 37.344578, 27.000059>,  <41.032524, 37.096951, 26.392414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754353, 37.344578, 27.000059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833939, 36.983013, 27.151512>,  <40.881691, 36.766075, 27.242384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833939, 36.983013, 27.151512>,  <40.754353, 37.344578, 27.000059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833939, 36.983013, 27.151512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032743, 0.392275, 0.919265,
		-0.979459, -0.170504, 0.107646,
		0.198966, -0.903907, 0.378634,
		40.893627, 36.711842, 27.265102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305630, 37.239597, 27.484304>,  <40.754353, 37.344578, 27.000059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305630, 37.239597, 27.484304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604515, 36.991394, 27.579506>,  <40.783848, 36.842472, 27.636627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604515, 36.991394, 27.579506>,  <40.305630, 37.239597, 27.484304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604515, 36.991394, 27.579506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041898, 0.313427, 0.948688,
		-0.663263, -0.718843, 0.208198,
		0.747213, -0.620506, 0.238002,
		40.828678, 36.805241, 27.650906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135094, 36.960243, 28.142258>,  <40.305630, 37.239597, 27.484304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135094, 36.960243, 28.142258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525116, 36.871487, 28.140053>,  <40.759129, 36.818233, 28.138729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525116, 36.871487, 28.140053>,  <40.135094, 36.960243, 28.142258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525116, 36.871487, 28.140053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036820, 0.137200, 0.989859,
		-0.218882, -0.965371, 0.141948,
		0.975057, -0.221888, -0.005514,
		40.817635, 36.804920, 28.138399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197655, 36.299305, 28.590855>,  <40.135094, 36.960243, 28.142258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197655, 36.299305, 28.590855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509586, 36.548229, 28.563736>,  <40.696747, 36.697582, 28.547464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509586, 36.548229, 28.563736>,  <40.197655, 36.299305, 28.590855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509586, 36.548229, 28.563736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051807, 0.043771, 0.997697,
		0.623846, -0.781545, 0.001894,
		0.779829, 0.622311, -0.067796,
		40.743534, 36.734924, 28.543398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530434, 36.179543, 29.222731>,  <40.197655, 36.299305, 28.590855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530434, 36.179543, 29.222731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690662, 36.518326, 29.082897>,  <40.786800, 36.721596, 28.998997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690662, 36.518326, 29.082897>,  <40.530434, 36.179543, 29.222731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690662, 36.518326, 29.082897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093170, 0.341902, 0.935105,
		0.911517, -0.407146, 0.058044,
		0.400570, 0.846957, -0.349583,
		40.810833, 36.772411, 28.978022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916981, 36.469467, 29.723673>,  <40.530434, 36.179543, 29.222731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916981, 36.469467, 29.723673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912304, 36.805965, 29.507462>,  <40.909496, 37.007862, 29.377735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912304, 36.805965, 29.507462>,  <40.916981, 36.469467, 29.723673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912304, 36.805965, 29.507462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245236, 0.526469, 0.814057,
		0.969393, -0.123040, -0.212459,
		-0.011691, 0.841244, -0.540530,
		40.908798, 37.058338, 29.345303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413353, 36.857594, 29.945574>,  <40.916981, 36.469467, 29.723673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413353, 36.857594, 29.945574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198181, 37.157791, 29.792011>,  <41.069077, 37.337910, 29.699873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198181, 37.157791, 29.792011>,  <41.413353, 36.857594, 29.945574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198181, 37.157791, 29.792011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201892, 0.556854, 0.805700,
		0.818456, 0.355903, -0.451069,
		-0.537930, 0.750497, -0.383907,
		41.036800, 37.382942, 29.676840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794514, 37.527328, 29.998051>,  <41.413353, 36.857594, 29.945574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794514, 37.527328, 29.998051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406754, 37.620556, 29.967209>,  <41.174099, 37.676495, 29.948704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406754, 37.620556, 29.967209>,  <41.794514, 37.527328, 29.998051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406754, 37.620556, 29.967209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090561, 0.631436, 0.770121,
		0.228180, 0.739571, -0.633220,
		-0.969398, 0.233072, -0.077104,
		41.115932, 37.690479, 29.944078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705368, 38.209583, 30.331478>,  <41.794514, 37.527328, 29.998051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705368, 38.209583, 30.331478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321529, 38.105759, 30.288006>,  <41.091228, 38.043465, 30.261923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321529, 38.105759, 30.288006>,  <41.705368, 38.209583, 30.331478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321529, 38.105759, 30.288006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211789, 0.411894, 0.886278,
		-0.185275, 0.873484, -0.450222,
		-0.959593, -0.259557, -0.108681,
		41.033653, 38.027893, 30.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323093, 38.809181, 30.429043>,  <41.705368, 38.209583, 30.331478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323093, 38.809181, 30.429043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081501, 38.500244, 30.507721>,  <40.936546, 38.314880, 30.554928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081501, 38.500244, 30.507721>,  <41.323093, 38.809181, 30.429043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081501, 38.500244, 30.507721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326745, 0.465057, 0.822776,
		-0.726940, 0.432674, -0.533247,
		-0.603984, -0.772344, 0.196694,
		40.900307, 38.268539, 30.566729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699001, 39.091320, 30.781631>,  <41.323093, 38.809181, 30.429043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699001, 39.091320, 30.781631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727898, 38.698887, 30.853474>,  <40.745235, 38.463428, 30.896578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727898, 38.698887, 30.853474>,  <40.699001, 39.091320, 30.781631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727898, 38.698887, 30.853474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507353, 0.118887, 0.853498,
		-0.858705, -0.152781, -0.489166,
		0.072243, -0.981083, 0.179603,
		40.749569, 38.404564, 30.907354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935837, 38.838547, 30.949471>,  <40.699001, 39.091320, 30.781631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935837, 38.838547, 30.949471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216728, 38.592579, 31.092995>,  <40.385265, 38.444996, 31.179110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216728, 38.592579, 31.092995>,  <39.935837, 38.838547, 30.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216728, 38.592579, 31.092995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517659, -0.095009, 0.850295,
		-0.488775, -0.782844, -0.385038,
		0.702231, -0.614922, 0.358809,
		40.427399, 38.408104, 31.200638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628529, 38.363667, 31.351622>,  <39.935837, 38.838547, 30.949471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628529, 38.363667, 31.351622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989613, 38.403179, 31.519123>,  <40.206264, 38.426888, 31.619623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989613, 38.403179, 31.519123>,  <39.628529, 38.363667, 31.351622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989613, 38.403179, 31.519123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403541, -0.143159, 0.903692,
		0.149216, -0.984758, -0.089369,
		0.902712, 0.098781, 0.418752,
		40.260426, 38.432812, 31.644749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714630, 37.827808, 31.888903>,  <39.628529, 38.363667, 31.351622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714630, 37.827808, 31.888903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937534, 38.147358, 31.979465>,  <40.071278, 38.339088, 32.033802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937534, 38.147358, 31.979465>,  <39.714630, 37.827808, 31.888903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937534, 38.147358, 31.979465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356087, -0.016400, 0.934309,
		0.750108, -0.601275, 0.275329,
		0.557262, 0.798874, 0.226408,
		40.104713, 38.387020, 32.047386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056931, 37.747566, 32.369080>,  <39.714630, 37.827808, 31.888903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056931, 37.747566, 32.369080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711983, 37.942017, 32.425655>,  <38.505013, 38.058685, 32.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711983, 37.942017, 32.425655>,  <39.056931, 37.747566, 32.369080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711983, 37.942017, 32.425655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411671, -0.510685, -0.754804,
		-0.294696, -0.709145, 0.640521,
		-0.862370, 0.486121, 0.141438,
		38.453270, 38.087852, 32.468086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498745, 37.278179, 32.545677>,  <39.056931, 37.747566, 32.369080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498745, 37.278179, 32.545677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367325, 37.603512, 32.353615>,  <38.288471, 37.798710, 32.238377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367325, 37.603512, 32.353615>,  <38.498745, 37.278179, 32.545677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367325, 37.603512, 32.353615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394258, -0.580073, -0.712795,
		-0.858261, -0.044886, 0.511246,
		-0.328555, 0.813327, -0.480157,
		38.268757, 37.847511, 32.209568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822540, 37.185680, 32.469673>,  <38.498745, 37.278179, 32.545677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822540, 37.185680, 32.469673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942009, 37.432224, 32.178223>,  <38.013691, 37.580151, 32.003353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942009, 37.432224, 32.178223>,  <37.822540, 37.185680, 32.469673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942009, 37.432224, 32.178223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413993, -0.604226, -0.680823,
		-0.859887, 0.504990, 0.074702,
		0.298672, 0.616357, -0.728628,
		38.031609, 37.617130, 31.959635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276520, 37.324413, 31.978088>,  <37.822540, 37.185680, 32.469673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276520, 37.324413, 31.978088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631870, 37.380974, 31.803371>,  <37.845081, 37.414909, 31.698542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631870, 37.380974, 31.803371>,  <37.276520, 37.324413, 31.978088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631870, 37.380974, 31.803371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307233, -0.523861, -0.794466,
		-0.341158, 0.839985, -0.421944,
		0.888380, 0.141403, -0.436791,
		37.898384, 37.423393, 31.672335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091911, 37.741760, 31.419050>,  <37.276520, 37.324413, 31.978088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091911, 37.741760, 31.419050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388973, 37.475040, 31.394241>,  <37.567211, 37.315010, 31.379356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388973, 37.475040, 31.394241>,  <37.091911, 37.741760, 31.419050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388973, 37.475040, 31.394241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471678, -0.455088, -0.755258,
		0.475380, 0.590148, -0.652487,
		0.742653, -0.666798, -0.062020,
		37.611771, 37.275002, 31.375635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148006, 37.623840, 30.779682>,  <37.091911, 37.741760, 31.419050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148006, 37.623840, 30.779682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340218, 37.300587, 30.915928>,  <37.455544, 37.106636, 30.997675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340218, 37.300587, 30.915928>,  <37.148006, 37.623840, 30.779682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340218, 37.300587, 30.915928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379119, -0.541651, -0.750255,
		0.790798, 0.231386, -0.566656,
		0.480528, -0.808131, 0.340614,
		37.484375, 37.058147, 31.018112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572243, 37.526909, 30.269989>,  <37.148006, 37.623840, 30.779682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572243, 37.526909, 30.269989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533249, 37.182777, 30.470123>,  <37.509853, 36.976299, 30.590204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533249, 37.182777, 30.470123>,  <37.572243, 37.526909, 30.269989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533249, 37.182777, 30.470123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194528, -0.476561, -0.857350,
		0.976041, -0.180904, -0.120902,
		-0.097480, -0.860327, 0.500334,
		37.504005, 36.924679, 30.620224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075176, 37.097511, 30.084280>,  <37.572243, 37.526909, 30.269989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075176, 37.097511, 30.084280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774956, 36.862957, 30.206150>,  <37.594826, 36.722225, 30.279272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774956, 36.862957, 30.206150>,  <38.075176, 37.097511, 30.084280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774956, 36.862957, 30.206150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020120, -0.440565, -0.897495,
		0.660510, -0.679743, 0.318867,
		-0.750548, -0.586389, 0.304674,
		37.549793, 36.687042, 30.297552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267731, 36.473492, 29.769917>,  <38.075176, 37.097511, 30.084280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267731, 36.473492, 29.769917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881943, 36.400471, 29.846310>,  <37.650471, 36.356659, 29.892145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881943, 36.400471, 29.846310>,  <38.267731, 36.473492, 29.769917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881943, 36.400471, 29.846310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087766, -0.460437, -0.883343,
		0.249191, -0.868719, 0.428056,
		-0.964469, -0.182552, 0.190981,
		37.592602, 36.345707, 29.903605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162079, 35.714565, 29.624842>,  <38.267731, 36.473492, 29.769917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162079, 35.714565, 29.624842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794697, 35.872570, 29.632839>,  <37.574268, 35.967373, 29.637638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794697, 35.872570, 29.632839>,  <38.162079, 35.714565, 29.624842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794697, 35.872570, 29.632839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262566, -0.571137, -0.777729,
		-0.295794, -0.719561, 0.628282,
		-0.918458, 0.395012, 0.019993,
		37.519161, 35.991074, 29.638838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811474, 35.154739, 29.439388>,  <38.162079, 35.714565, 29.624842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811474, 35.154739, 29.439388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566330, 35.465664, 29.382545>,  <37.419243, 35.652218, 29.348440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566330, 35.465664, 29.382545>,  <37.811474, 35.154739, 29.439388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566330, 35.465664, 29.382545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316472, -0.406233, -0.857217,
		-0.724053, -0.480378, 0.494959,
		-0.612857, 0.777311, -0.142108,
		37.382473, 35.698856, 29.339912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128197, 34.865967, 29.346292>,  <37.811474, 35.154739, 29.439388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128197, 34.865967, 29.346292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154552, 35.234230, 29.192387>,  <37.170364, 35.455189, 29.100044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154552, 35.234230, 29.192387>,  <37.128197, 34.865967, 29.346292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154552, 35.234230, 29.192387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222716, -0.362304, -0.905060,
		-0.972654, 0.145328, 0.181174,
		0.065890, 0.920661, -0.384763,
		37.174320, 35.510429, 29.076958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540913, 34.852173, 28.961470>,  <37.128197, 34.865967, 29.346292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540913, 34.852173, 28.961470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711613, 35.188404, 28.828011>,  <36.814034, 35.390141, 28.747936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711613, 35.188404, 28.828011>,  <36.540913, 34.852173, 28.961470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711613, 35.188404, 28.828011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264316, -0.236892, -0.934890,
		-0.864882, 0.487152, 0.121084,
		0.426750, 0.840574, -0.333646,
		36.839638, 35.440575, 28.727917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053253, 35.288452, 28.638536>,  <36.540913, 34.852173, 28.961470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053253, 35.288452, 28.638536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420097, 35.358078, 28.495087>,  <36.640202, 35.399853, 28.409016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420097, 35.358078, 28.495087>,  <36.053253, 35.288452, 28.638536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420097, 35.358078, 28.495087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322995, -0.202793, -0.924418,
		-0.233637, 0.963627, -0.129760,
		0.917108, 0.174066, -0.358627,
		36.695229, 35.410297, 28.387499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995674, 35.583405, 27.978748>,  <36.053253, 35.288452, 28.638536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995674, 35.583405, 27.978748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378830, 35.472370, 27.949360>,  <36.608723, 35.405750, 27.931726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378830, 35.472370, 27.949360>,  <35.995674, 35.583405, 27.978748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378830, 35.472370, 27.949360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137386, -0.218375, -0.966146,
		0.252147, 0.935552, -0.247315,
		0.957887, -0.277588, -0.073470,
		36.666195, 35.389095, 27.927319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123978, 35.746273, 27.223373>,  <35.995674, 35.583405, 27.978748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123978, 35.746273, 27.223373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437534, 35.528824, 27.343365>,  <36.625668, 35.398354, 27.415359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437534, 35.528824, 27.343365>,  <36.123978, 35.746273, 27.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437534, 35.528824, 27.343365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006541, -0.475881, -0.879485,
		0.620865, 0.691382, -0.369483,
		0.783890, -0.543625, 0.299981,
		36.672703, 35.365738, 27.433359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671917, 35.724358, 26.670652>,  <36.123978, 35.746273, 27.223373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671917, 35.724358, 26.670652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743584, 35.408951, 26.905987>,  <36.786583, 35.219707, 27.047188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743584, 35.408951, 26.905987>,  <36.671917, 35.724358, 26.670652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743584, 35.408951, 26.905987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228418, -0.548333, -0.804460,
		0.956935, 0.278520, 0.081868,
		0.179168, -0.788516, 0.588338,
		36.797333, 35.172398, 27.082487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263550, 35.466831, 26.410358>,  <36.671917, 35.724358, 26.670652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263550, 35.466831, 26.410358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067421, 35.169914, 26.593040>,  <36.949741, 34.991764, 26.702650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067421, 35.169914, 26.593040>,  <37.263550, 35.466831, 26.410358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067421, 35.169914, 26.593040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267672, -0.626952, -0.731630,
		0.829418, -0.236490, 0.506102,
		-0.490324, -0.742296, 0.456703,
		36.920322, 34.947224, 26.730051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757915, 34.925205, 26.401278>,  <37.263550, 35.466831, 26.410358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757915, 34.925205, 26.401278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395248, 34.766167, 26.457664>,  <37.177647, 34.670746, 26.491497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395248, 34.766167, 26.457664>,  <37.757915, 34.925205, 26.401278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395248, 34.766167, 26.457664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194278, -0.690177, -0.697073,
		0.374442, -0.604629, 0.703006,
		-0.906669, -0.397592, 0.140965,
		37.123249, 34.646889, 26.499954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918053, 34.196384, 26.391012>,  <37.757915, 34.925205, 26.401278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918053, 34.196384, 26.391012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529678, 34.223763, 26.299282>,  <37.296654, 34.240189, 26.244244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529678, 34.223763, 26.299282>,  <37.918053, 34.196384, 26.391012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529678, 34.223763, 26.299282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098947, -0.757683, -0.645079,
		-0.217909, -0.649024, 0.728892,
		-0.970940, 0.068447, -0.229325,
		37.238396, 34.244297, 26.230484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582985, 33.487434, 26.437565>,  <37.918053, 34.196384, 26.391012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582985, 33.487434, 26.437565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328926, 33.683228, 26.198570>,  <37.176491, 33.800701, 26.055174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328926, 33.683228, 26.198570>,  <37.582985, 33.487434, 26.437565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328926, 33.683228, 26.198570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049891, -0.797944, -0.600664,
		-0.770772, -0.351705, 0.531238,
		-0.635155, 0.489479, -0.597485,
		37.138382, 33.830070, 26.019323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112183, 32.992939, 26.242731>,  <37.582985, 33.487434, 26.437565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112183, 32.992939, 26.242731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089012, 33.282330, 25.967564>,  <37.075111, 33.455963, 25.802464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089012, 33.282330, 25.967564>,  <37.112183, 32.992939, 26.242731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089012, 33.282330, 25.967564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245959, -0.678175, -0.692519,
		-0.967548, 0.129086, 0.217227,
		-0.057923, 0.723475, -0.687916,
		37.071636, 33.499371, 25.761189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540524, 32.749802, 25.844076>,  <37.112183, 32.992939, 26.242731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540524, 32.749802, 25.844076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703823, 33.038235, 25.620155>,  <36.801804, 33.211292, 25.485804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703823, 33.038235, 25.620155>,  <36.540524, 32.749802, 25.844076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703823, 33.038235, 25.620155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173438, -0.540793, -0.823081,
		-0.896242, 0.433114, -0.095717,
		0.408251, 0.721079, -0.559800,
		36.826298, 33.254559, 25.452215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065643, 32.949070, 25.312580>,  <36.540524, 32.749802, 25.844076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065643, 32.949070, 25.312580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407551, 33.062950, 25.138996>,  <36.612694, 33.131279, 25.034845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407551, 33.062950, 25.138996>,  <36.065643, 32.949070, 25.312580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407551, 33.062950, 25.138996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288348, -0.434722, -0.853154,
		-0.431546, 0.854378, -0.289492,
		0.854765, 0.284701, -0.433961,
		36.663979, 33.148361, 25.008808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814690, 33.215248, 24.661375>,  <36.065643, 32.949070, 25.312580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814690, 33.215248, 24.661375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200974, 33.111591, 24.655125>,  <36.432743, 33.049397, 24.651375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200974, 33.111591, 24.655125>,  <35.814690, 33.215248, 24.661375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200974, 33.111591, 24.655125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122652, -0.402363, -0.907227,
		0.228812, 0.878037, -0.420352,
		0.965713, -0.259141, -0.015627,
		36.490688, 33.033848, 24.650436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991653, 33.388634, 24.035484>,  <35.814690, 33.215248, 24.661375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991653, 33.388634, 24.035484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271126, 33.133396, 24.164909>,  <36.438808, 32.980255, 24.242565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271126, 33.133396, 24.164909>,  <35.991653, 33.388634, 24.035484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271126, 33.133396, 24.164909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127260, -0.555888, -0.821458,
		0.704028, 0.532757, -0.469589,
		0.698676, -0.638090, 0.323562,
		36.480728, 32.941971, 24.261978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706081, 33.943420, 23.676874>,  <35.991653, 33.388634, 24.035484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706081, 33.943420, 23.676874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446362, 34.229511, 23.780296>,  <35.290527, 34.401165, 23.842350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446362, 34.229511, 23.780296>,  <35.706081, 33.943420, 23.676874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446362, 34.229511, 23.780296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752970, -0.652375, -0.086276,
		0.106968, -0.250704, 0.962136,
		-0.649303, 0.715230, 0.258556,
		35.251572, 34.444080, 23.857862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179932, 33.785530, 24.267317>,  <35.706081, 33.943420, 23.676874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179932, 33.785530, 24.267317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037308, 34.007019, 23.966316>,  <34.951733, 34.139912, 23.785717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037308, 34.007019, 23.966316>,  <35.179932, 33.785530, 24.267317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037308, 34.007019, 23.966316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746330, -0.653326, -0.127111,
		-0.562012, 0.516291, 0.646209,
		-0.356559, 0.553723, -0.752500,
		34.930340, 34.173138, 23.740566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312218, 34.126301, 24.929644>,  <35.179932, 33.785530, 24.267317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312218, 34.126301, 24.929644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999527, 33.922523, 24.785770>,  <34.811913, 33.800255, 24.699446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999527, 33.922523, 24.785770>,  <35.312218, 34.126301, 24.929644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999527, 33.922523, 24.785770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590831, 0.789589, 0.165735,
		0.199570, 0.342072, -0.918236,
		-0.781723, -0.509447, -0.359685,
		34.765011, 33.769688, 24.677864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949757, 34.501469, 24.396078>,  <35.312218, 34.126301, 24.929644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949757, 34.501469, 24.396078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720901, 34.275856, 24.634243>,  <34.583588, 34.140488, 24.777142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720901, 34.275856, 24.634243>,  <34.949757, 34.501469, 24.396078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720901, 34.275856, 24.634243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544281, 0.804195, 0.238807,
		-0.613524, -0.187441, -0.767108,
		-0.572142, -0.564036, 0.595413,
		34.549259, 34.106644, 24.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313431, 34.529739, 24.171659>,  <34.949757, 34.501469, 24.396078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313431, 34.529739, 24.171659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326984, 34.500755, 24.570377>,  <34.335117, 34.483364, 24.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326984, 34.500755, 24.570377>,  <34.313431, 34.529739, 24.171659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326984, 34.500755, 24.570377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245527, 0.966200, 0.078579,
		-0.968797, -0.247403, 0.014944,
		0.033880, -0.072458, 0.996796,
		34.337147, 34.479019, 24.869415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713615, 34.802689, 24.400242>,  <34.313431, 34.529739, 24.171659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713615, 34.802689, 24.400242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992767, 34.876198, 24.677135>,  <34.160259, 34.920303, 24.843271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992767, 34.876198, 24.677135>,  <33.713615, 34.802689, 24.400242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992767, 34.876198, 24.677135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171955, 0.981243, -0.087139,
		-0.695266, -0.058221, 0.716391,
		0.697881, 0.183772, 0.692236,
		34.202133, 34.931328, 24.884806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223598, 34.376331, 23.882708>,  <33.713615, 34.802689, 24.400242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223598, 34.376331, 23.882708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015678, 34.290363, 24.213432>,  <32.890926, 34.238781, 24.411867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015678, 34.290363, 24.213432>,  <33.223598, 34.376331, 23.882708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015678, 34.290363, 24.213432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393275, -0.919384, 0.008261,
		0.758382, 0.329459, 0.562417,
		-0.519799, -0.214920, 0.826812,
		32.859737, 34.225887, 24.461475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699669, 33.940105, 24.274647>,  <33.223598, 34.376331, 23.882708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699669, 33.940105, 24.274647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326080, 33.863232, 24.395157>,  <33.101929, 33.817108, 24.467463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326080, 33.863232, 24.395157>,  <33.699669, 33.940105, 24.274647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326080, 33.863232, 24.395157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195631, -0.980493, -0.019000,
		0.299051, 0.041194, 0.953347,
		-0.933968, -0.192187, 0.301277,
		33.045891, 33.805576, 24.485540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732750, 33.476833, 24.767879>,  <33.699669, 33.940105, 24.274647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732750, 33.476833, 24.767879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355316, 33.426495, 24.645367>,  <33.128857, 33.396294, 24.571859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355316, 33.426495, 24.645367>,  <33.732750, 33.476833, 24.767879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355316, 33.426495, 24.645367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180718, -0.970780, -0.157882,
		-0.277462, -0.204326, 0.938757,
		-0.943587, -0.125844, -0.306280,
		33.072239, 33.388741, 24.553482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406219, 32.853592, 25.153603>,  <33.732750, 33.476833, 24.767879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406219, 32.853592, 25.153603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180012, 32.918091, 24.830074>,  <33.044289, 32.956791, 24.635958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180012, 32.918091, 24.830074>,  <33.406219, 32.853592, 25.153603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180012, 32.918091, 24.830074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037949, -0.974575, -0.220826,
		-0.823862, -0.155575, 0.545021,
		-0.565518, 0.161247, -0.808819,
		33.010357, 32.966465, 24.587429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780003, 32.485050, 25.247005>,  <33.406219, 32.853592, 25.153603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780003, 32.485050, 25.247005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829731, 32.558151, 24.856899>,  <32.859566, 32.602013, 24.622835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829731, 32.558151, 24.856899>,  <32.780003, 32.485050, 25.247005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829731, 32.558151, 24.856899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090516, -0.980883, -0.172265,
		-0.988105, -0.066862, -0.138483,
		0.124318, 0.182751, -0.975268,
		32.867027, 32.612976, 24.564320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363167, 32.042271, 24.870638>,  <32.780003, 32.485050, 25.247005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363167, 32.042271, 24.870638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604637, 32.152222, 24.571301>,  <32.749519, 32.218193, 24.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604637, 32.152222, 24.571301>,  <32.363167, 32.042271, 24.870638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604637, 32.152222, 24.571301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085616, -0.910898, -0.403652,
		-0.792621, 0.307745, -0.526351,
		0.603674, 0.274879, -0.748344,
		32.785740, 32.234684, 24.346798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028141, 31.701654, 24.309061>,  <32.363167, 32.042271, 24.870638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028141, 31.701654, 24.309061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393166, 31.788006, 24.170139>,  <32.612183, 31.839817, 24.086786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393166, 31.788006, 24.170139>,  <32.028141, 31.701654, 24.309061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393166, 31.788006, 24.170139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089885, -0.934423, -0.344636,
		-0.398930, 0.283285, -0.872126,
		0.912565, 0.215877, -0.347306,
		32.666935, 31.852768, 24.065947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066238, 31.560667, 23.627020>,  <32.028141, 31.701654, 24.309061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066238, 31.560667, 23.627020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450153, 31.550148, 23.738811>,  <32.680504, 31.543837, 23.805887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450153, 31.550148, 23.738811>,  <32.066238, 31.560667, 23.627020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450153, 31.550148, 23.738811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124970, -0.851468, -0.509298,
		0.251363, 0.523746, -0.813945,
		0.959791, -0.026300, 0.279481,
		32.738091, 31.542257, 23.822657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232311, 31.047022, 23.200172>,  <32.066238, 31.560667, 23.627020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232311, 31.047022, 23.200172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568256, 31.093975, 23.412151>,  <32.769825, 31.122147, 23.539339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568256, 31.093975, 23.412151>,  <32.232311, 31.047022, 23.200172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568256, 31.093975, 23.412151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332193, -0.883296, -0.330811,
		0.429269, 0.453882, -0.780845,
		0.839867, 0.117385, 0.529948,
		32.820217, 31.129190, 23.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796612, 31.038008, 22.772142>,  <32.232311, 31.047022, 23.200172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796612, 31.038008, 22.772142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951336, 30.932140, 23.125488>,  <33.044170, 30.868620, 23.337496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951336, 30.932140, 23.125488>,  <32.796612, 31.038008, 22.772142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951336, 30.932140, 23.125488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360624, -0.838227, -0.409056,
		0.848724, 0.476787, -0.228785,
		0.386806, -0.264670, 0.883363,
		33.067379, 30.852739, 23.390497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260014, 30.599110, 22.586391>,  <32.796612, 31.038008, 22.772142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260014, 30.599110, 22.586391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244884, 30.515648, 22.977295>,  <33.235809, 30.465570, 23.211836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244884, 30.515648, 22.977295>,  <33.260014, 30.599110, 22.586391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244884, 30.515648, 22.977295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227242, -0.954131, -0.194923,
		0.973104, 0.214702, 0.083500,
		-0.037819, -0.208655, 0.977258,
		33.233540, 30.453051, 23.270472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819321, 30.109129, 22.723429>,  <33.260014, 30.599110, 22.586391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819321, 30.109129, 22.723429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583473, 30.069801, 23.044098>,  <33.441963, 30.046206, 23.236500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583473, 30.069801, 23.044098>,  <33.819321, 30.109129, 22.723429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583473, 30.069801, 23.044098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185173, -0.982581, 0.015687,
		0.786166, 0.157698, 0.597558,
		-0.589622, -0.098319, 0.801673,
		33.406586, 30.040306, 23.284599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204552, 29.718241, 23.261734>,  <33.819321, 30.109129, 22.723429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204552, 29.718241, 23.261734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819004, 29.686699, 23.363506>,  <33.587673, 29.667774, 23.424570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819004, 29.686699, 23.363506>,  <34.204552, 29.718241, 23.261734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819004, 29.686699, 23.363506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049792, -0.991679, -0.118712,
		0.261675, -0.101755, 0.959777,
		-0.963871, -0.078854, 0.254431,
		33.529842, 29.663042, 23.439837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155762, 29.215965, 23.806280>,  <34.204552, 29.718241, 23.261734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155762, 29.215965, 23.806280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779346, 29.223083, 23.671150>,  <33.553497, 29.227354, 23.590073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779346, 29.223083, 23.671150>,  <34.155762, 29.215965, 23.806280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779346, 29.223083, 23.671150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042798, -0.996854, 0.066706,
		-0.335576, 0.077231, 0.938842,
		-0.941040, 0.017795, -0.337826,
		33.497036, 29.228422, 23.569803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847416, 28.780003, 24.238409>,  <34.155762, 29.215965, 23.806280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847416, 28.780003, 24.238409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637207, 28.782482, 23.898106>,  <33.511082, 28.783970, 23.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637207, 28.782482, 23.898106>,  <33.847416, 28.780003, 24.238409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637207, 28.782482, 23.898106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006754, -0.999912, -0.011458,
		-0.850754, -0.011768, 0.525432,
		-0.525520, 0.006199, -0.850759,
		33.479549, 28.784342, 23.642878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338120, 28.346684, 24.323555>,  <33.847416, 28.780003, 24.238409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338120, 28.346684, 24.323555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366695, 28.370884, 23.925312>,  <33.383842, 28.385405, 23.686367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366695, 28.370884, 23.925312>,  <33.338120, 28.346684, 24.323555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366695, 28.370884, 23.925312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018849, -0.997899, -0.061994,
		-0.997267, 0.023196, -0.070152,
		0.071443, 0.060503, -0.995608,
		33.388126, 28.389034, 23.626629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817921, 27.850096, 24.060972>,  <33.338120, 28.346684, 24.323555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817921, 27.850096, 24.060972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085808, 27.904129, 23.768883>,  <33.246540, 27.936550, 23.593630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085808, 27.904129, 23.768883>,  <32.817921, 27.850096, 24.060972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085808, 27.904129, 23.768883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047803, -0.973434, -0.223920,
		-0.741071, 0.184871, -0.645473,
		0.669723, 0.135085, -0.730222,
		33.286724, 27.944654, 23.549816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672829, 27.338900, 23.664366>,  <32.817921, 27.850096, 24.060972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672829, 27.338900, 23.664366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036140, 27.451527, 23.540596>,  <33.254128, 27.519102, 23.466333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036140, 27.451527, 23.540596>,  <32.672829, 27.338900, 23.664366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036140, 27.451527, 23.540596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249088, -0.958197, -0.140761,
		-0.336124, 0.050776, -0.940448,
		0.908282, 0.281568, -0.309426,
		33.308624, 27.535997, 23.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868454, 26.864981, 23.129137>,  <32.672829, 27.338900, 23.664366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868454, 26.864981, 23.129137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211170, 27.019478, 23.265797>,  <33.416801, 27.112177, 23.347794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211170, 27.019478, 23.265797>,  <32.868454, 26.864981, 23.129137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211170, 27.019478, 23.265797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380755, -0.920670, 0.085981,
		0.347758, 0.056417, -0.935886,
		0.856790, 0.386244, 0.341651,
		33.468208, 27.135351, 23.368292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404488, 26.614305, 22.756517>,  <32.868454, 26.864981, 23.129137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404488, 26.614305, 22.756517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598068, 26.717236, 23.091080>,  <33.714214, 26.778994, 23.291817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598068, 26.717236, 23.091080>,  <33.404488, 26.614305, 22.756517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598068, 26.717236, 23.091080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486006, -0.873868, -0.012353,
		0.727730, 0.412477, -0.547970,
		0.483949, 0.257327, 0.836407,
		33.743252, 26.794434, 23.342001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211227, 26.444542, 22.701075>,  <33.404488, 26.614305, 22.756517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211227, 26.444542, 22.701075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144547, 26.487637, 23.093117>,  <34.104538, 26.513494, 23.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144547, 26.487637, 23.093117>,  <34.211227, 26.444542, 22.701075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144547, 26.487637, 23.093117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415959, -0.893547, 0.168973,
		0.893973, 0.435851, 0.104143,
		-0.166704, 0.107738, 0.980103,
		34.094536, 26.519958, 23.387148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835308, 26.246643, 22.953161>,  <34.211227, 26.444542, 22.701075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835308, 26.246643, 22.953161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570240, 26.224640, 23.251919>,  <34.411201, 26.211439, 23.431173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570240, 26.224640, 23.251919>,  <34.835308, 26.246643, 22.953161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570240, 26.224640, 23.251919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401745, -0.867771, 0.292532,
		0.632040, 0.493911, 0.597141,
		-0.662666, -0.055007, 0.746892,
		34.371441, 26.208138, 23.475986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262314, 26.109179, 23.560564>,  <34.835308, 26.246643, 22.953161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262314, 26.109179, 23.560564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889488, 25.981068, 23.628307>,  <34.665794, 25.904202, 23.668953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889488, 25.981068, 23.628307>,  <35.262314, 26.109179, 23.560564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889488, 25.981068, 23.628307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352303, -0.910275, 0.217444,
		0.084521, 0.262337, 0.961268,
		-0.932062, -0.320279, 0.169359,
		34.609871, 25.884985, 23.679115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298824, 25.711161, 24.094704>,  <35.262314, 26.109179, 23.560564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298824, 25.711161, 24.094704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956749, 25.570663, 23.942238>,  <34.751503, 25.486364, 23.850760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956749, 25.570663, 23.942238>,  <35.298824, 25.711161, 24.094704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956749, 25.570663, 23.942238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296271, -0.934658, 0.196567,
		-0.425300, 0.055174, 0.903369,
		-0.855186, -0.351242, -0.381164,
		34.700191, 25.465290, 23.827888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192257, 25.114462, 24.460960>,  <35.298824, 25.711161, 24.094704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192257, 25.114462, 24.460960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912788, 25.062325, 24.179573>,  <34.745106, 25.031042, 24.010740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912788, 25.062325, 24.179573>,  <35.192257, 25.114462, 24.460960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912788, 25.062325, 24.179573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080554, -0.991343, 0.103679,
		-0.710891, 0.015771, 0.703125,
		-0.698674, -0.130344, -0.703467,
		34.703186, 25.023222, 23.968533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668659, 24.660141, 24.767477>,  <35.192257, 25.114462, 24.460960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668659, 24.660141, 24.767477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637451, 24.631794, 24.369705>,  <34.618725, 24.614786, 24.131042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637451, 24.631794, 24.369705>,  <34.668659, 24.660141, 24.767477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637451, 24.631794, 24.369705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046836, -0.996108, 0.074662,
		-0.995851, 0.052401, 0.074398,
		-0.078021, -0.070868, -0.994430,
		34.614044, 24.610533, 24.071377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057899, 24.190214, 24.665668>,  <34.668659, 24.660141, 24.767477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057899, 24.190214, 24.665668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292213, 24.187283, 24.341496>,  <34.432800, 24.185524, 24.146992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292213, 24.187283, 24.341496>,  <34.057899, 24.190214, 24.665668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292213, 24.187283, 24.341496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021754, -0.999457, 0.024761,
		-0.810174, -0.032135, -0.585308,
		0.585786, -0.007328, -0.810433,
		34.467949, 24.185083, 24.098366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777157, 23.619156, 24.297596>,  <34.057899, 24.190214, 24.665668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777157, 23.619156, 24.297596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149502, 23.685925, 24.167587>,  <34.372910, 23.725986, 24.089582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149502, 23.685925, 24.167587>,  <33.777157, 23.619156, 24.297596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149502, 23.685925, 24.167587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143058, -0.985031, -0.096172,
		-0.336208, 0.043026, -0.940804,
		0.930859, 0.166924, -0.325020,
		34.428761, 23.736002, 24.070082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872353, 23.207415, 23.657091>,  <33.777157, 23.619156, 24.297596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872353, 23.207415, 23.657091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236496, 23.278835, 23.806419>,  <34.454983, 23.321688, 23.896017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236496, 23.278835, 23.806419>,  <33.872353, 23.207415, 23.657091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236496, 23.278835, 23.806419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266894, -0.942760, -0.199930,
		0.316253, 0.281645, -0.905903,
		0.910358, 0.178552, 0.373320,
		34.509602, 23.332401, 23.918415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225330, 22.775013, 23.245300>,  <33.872353, 23.207415, 23.657091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225330, 22.775013, 23.245300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487858, 22.858498, 23.535316>,  <34.645374, 22.908588, 23.709326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487858, 22.858498, 23.535316>,  <34.225330, 22.775013, 23.245300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487858, 22.858498, 23.535316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263873, -0.963786, 0.038576,
		0.706833, 0.166000, -0.687627,
		0.656322, 0.208713, 0.725038,
		34.684753, 22.921112, 23.752829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910961, 22.618343, 23.025936>,  <34.225330, 22.775013, 23.245300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910961, 22.618343, 23.025936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897171, 22.593876, 23.424950>,  <34.888897, 22.579195, 23.664358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897171, 22.593876, 23.424950>,  <34.910961, 22.618343, 23.025936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897171, 22.593876, 23.424950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186188, -0.981044, -0.053725,
		0.981909, 0.183877, 0.045207,
		-0.034471, -0.061170, 0.997532,
		34.886829, 22.575525, 23.724209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509670, 22.209976, 23.189777>,  <34.910961, 22.618343, 23.025936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509670, 22.209976, 23.189777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265594, 22.212883, 23.506664>,  <35.119148, 22.214626, 23.696796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265594, 22.212883, 23.506664>,  <35.509670, 22.209976, 23.189777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265594, 22.212883, 23.506664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148454, -0.981197, 0.123346,
		0.778219, 0.192873, 0.597641,
		-0.610194, 0.007268, 0.792219,
		35.082535, 22.215063, 23.744329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861046, 21.653484, 23.700159>,  <35.509670, 22.209976, 23.189777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861046, 21.653484, 23.700159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497826, 21.718864, 23.854420>,  <35.279892, 21.758093, 23.946976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497826, 21.718864, 23.854420>,  <35.861046, 21.653484, 23.700159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497826, 21.718864, 23.854420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082082, -0.972307, 0.218819,
		0.410740, 0.167044, 0.896320,
		-0.908050, 0.163449, 0.385654,
		35.225410, 21.767899, 23.970116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829739, 21.500072, 24.383711>,  <35.861046, 21.653484, 23.700159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829739, 21.500072, 24.383711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442287, 21.456692, 24.294262>,  <35.209816, 21.430664, 24.240593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442287, 21.456692, 24.294262>,  <35.829739, 21.500072, 24.383711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442287, 21.456692, 24.294262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048014, -0.964474, 0.259777,
		-0.243850, 0.240889, 0.939420,
		-0.968624, -0.108452, -0.223621,
		35.151699, 21.424156, 24.227177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630753, 21.032454, 24.862991>,  <35.829739, 21.500072, 24.383711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630753, 21.032454, 24.862991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340775, 21.011845, 24.588242>,  <35.166786, 20.999479, 24.423391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340775, 21.011845, 24.588242>,  <35.630753, 21.032454, 24.862991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340775, 21.011845, 24.588242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056707, -0.989349, 0.134060,
		-0.686466, 0.136137, 0.714305,
		-0.724948, -0.051521, -0.686874,
		35.123291, 20.996387, 24.382179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060741, 20.758034, 25.199028>,  <35.630753, 21.032454, 24.862991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060741, 20.758034, 25.199028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026825, 20.694637, 24.805542>,  <35.006474, 20.656599, 24.569450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026825, 20.694637, 24.805542>,  <35.060741, 20.758034, 25.199028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026825, 20.694637, 24.805542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151966, -0.973662, 0.169968,
		-0.984742, 0.163902, 0.058472,
		-0.084790, -0.158489, -0.983713,
		35.001389, 20.647091, 24.510427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474895, 20.339046, 25.090807>,  <35.060741, 20.758034, 25.199028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474895, 20.339046, 25.090807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673557, 20.290810, 24.746994>,  <34.792755, 20.261868, 24.540707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673557, 20.290810, 24.746994>,  <34.474895, 20.339046, 25.090807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673557, 20.290810, 24.746994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038197, -0.986305, 0.160451,
		-0.867109, -0.112520, -0.485245,
		0.496653, -0.120593, -0.859531,
		34.822552, 20.254631, 24.489134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192295, 19.694292, 24.768183>,  <34.474895, 20.339046, 25.090807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192295, 19.694292, 24.768183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553585, 19.731850, 24.600674>,  <34.770359, 19.754383, 24.500168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553585, 19.731850, 24.600674>,  <34.192295, 19.694292, 24.768183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553585, 19.731850, 24.600674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123059, -0.991462, 0.043126,
		-0.411148, -0.090486, -0.907067,
		0.903224, 0.093892, -0.418773,
		34.824551, 19.760017, 24.475042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293953, 19.130915, 24.296133>,  <34.192295, 19.694292, 24.768183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293953, 19.130915, 24.296133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671448, 19.254967, 24.342052>,  <34.897945, 19.329397, 24.369604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671448, 19.254967, 24.342052>,  <34.293953, 19.130915, 24.296133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671448, 19.254967, 24.342052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295483, -0.946685, 0.128365,
		0.148486, -0.087223, -0.985060,
		0.943738, 0.310129, 0.114796,
		34.954571, 19.348005, 24.376492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712154, 18.642780, 23.917641>,  <34.293953, 19.130915, 24.296133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712154, 18.642780, 23.917641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956894, 18.820797, 24.179199>,  <35.103737, 18.927607, 24.336134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956894, 18.820797, 24.179199>,  <34.712154, 18.642780, 23.917641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956894, 18.820797, 24.179199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436872, -0.879299, 0.189675,
		0.659383, 0.169617, -0.732423,
		0.611847, 0.445044, 0.653896,
		35.140450, 18.954309, 24.375368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385616, 18.405430, 23.783447>,  <34.712154, 18.642780, 23.917641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385616, 18.405430, 23.783447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369549, 18.514233, 24.168030>,  <35.359909, 18.579514, 24.398779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369549, 18.514233, 24.168030>,  <35.385616, 18.405430, 23.783447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369549, 18.514233, 24.168030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570599, -0.783660, 0.245547,
		0.820246, 0.558471, -0.123723,
		-0.040174, 0.272005, 0.961457,
		35.357498, 18.595835, 24.456467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140171, 18.298502, 24.080563>,  <35.385616, 18.405430, 23.783447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140171, 18.298502, 24.080563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891060, 18.332489, 24.391670>,  <35.741592, 18.352880, 24.578335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891060, 18.332489, 24.391670>,  <36.140171, 18.298502, 24.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891060, 18.332489, 24.391670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522722, -0.694481, 0.494427,
		0.582156, 0.714477, 0.388095,
		-0.622781, 0.084968, 0.777769,
		35.704227, 18.357979, 24.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575321, 18.135120, 24.589819>,  <36.140171, 18.298502, 24.080563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575321, 18.135120, 24.589819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217590, 18.132629, 24.768764>,  <36.002953, 18.131134, 24.876133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217590, 18.132629, 24.768764>,  <36.575321, 18.135120, 24.589819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217590, 18.132629, 24.768764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370920, -0.569455, 0.733580,
		0.250184, 0.821999, 0.511591,
		-0.894330, -0.006229, 0.447365,
		35.949291, 18.130760, 24.902973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587032, 18.254662, 25.251436>,  <36.575321, 18.135120, 24.589819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587032, 18.254662, 25.251436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251724, 18.040112, 25.212227>,  <36.050541, 17.911381, 25.188702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251724, 18.040112, 25.212227>,  <36.587032, 18.254662, 25.251436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251724, 18.040112, 25.212227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321597, -0.631534, 0.705506,
		-0.440320, 0.559880, 0.701892,
		-0.838268, -0.536375, -0.098021,
		36.000244, 17.879198, 25.182821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113419, 18.012970, 25.827703>,  <36.587032, 18.254662, 25.251436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113419, 18.012970, 25.827703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069599, 17.710556, 25.569584>,  <36.043308, 17.529108, 25.414713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069599, 17.710556, 25.569584>,  <36.113419, 18.012970, 25.827703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069599, 17.710556, 25.569584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405617, -0.626692, 0.665381,
		-0.907455, -0.188855, 0.375311,
		-0.109544, -0.756036, -0.645298,
		36.036736, 17.483746, 25.375994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649155, 17.456900, 26.150064>,  <36.113419, 18.012970, 25.827703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649155, 17.456900, 26.150064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905804, 17.310226, 25.880589>,  <36.059795, 17.222221, 25.718903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905804, 17.310226, 25.880589>,  <35.649155, 17.456900, 26.150064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905804, 17.310226, 25.880589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122549, -0.818032, 0.561966,
		-0.757162, -0.443133, -0.479936,
		0.641629, -0.366683, -0.673688,
		36.098293, 17.200222, 25.678482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168427, 17.310707, 26.602337>,  <35.649155, 17.456900, 26.150064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168427, 17.310707, 26.602337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368118, 17.510887, 26.319405>,  <36.487934, 17.630995, 26.149645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368118, 17.510887, 26.319405>,  <36.168427, 17.310707, 26.602337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368118, 17.510887, 26.319405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014100, -0.820920, -0.570869,
		-0.866354, 0.275022, -0.416885,
		0.499231, 0.500452, -0.707330,
		36.517887, 17.661022, 26.107206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635387, 17.408052, 27.217720>,  <36.168427, 17.310707, 26.602337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635387, 17.408052, 27.217720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653923, 17.498848, 27.606838>,  <35.665043, 17.553326, 27.840309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653923, 17.498848, 27.606838>,  <35.635387, 17.408052, 27.217720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653923, 17.498848, 27.606838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651531, 0.745058, -0.142814,
		-0.757206, -0.627187, 0.182416,
		0.046339, 0.226989, 0.972794,
		35.667824, 17.566944, 27.898676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027306, 16.839872, 27.451584>,  <35.635387, 17.408052, 27.217720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027306, 16.839872, 27.451584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635674, 16.919834, 27.466797>,  <34.400696, 16.967812, 27.475925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635674, 16.919834, 27.466797>,  <35.027306, 16.839872, 27.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635674, 16.919834, 27.466797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031727, -0.334571, 0.941836,
		0.201003, 0.920923, 0.333913,
		-0.979077, 0.199906, 0.038032,
		34.341949, 16.979807, 27.478207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664722, 17.156397, 26.791668>,  <35.027306, 16.839872, 27.451584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664722, 17.156397, 26.791668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648155, 17.185581, 27.190258>,  <34.638214, 17.203091, 27.429413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648155, 17.185581, 27.190258>,  <34.664722, 17.156397, 26.791668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648155, 17.185581, 27.190258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334866, 0.938635, -0.082642,
		-0.941355, -0.337108, -0.014441,
		-0.041414, 0.072960, 0.996475,
		34.635731, 17.207470, 27.489201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970970, 17.329586, 26.899025>,  <34.664722, 17.156397, 26.791668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970970, 17.329586, 26.899025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226353, 17.473522, 27.171169>,  <34.379581, 17.559883, 27.334455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226353, 17.473522, 27.171169>,  <33.970970, 17.329586, 26.899025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226353, 17.473522, 27.171169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409460, 0.907303, -0.095626,
		-0.651702, -0.217526, 0.726613,
		0.638457, 0.359839, 0.680360,
		34.417889, 17.581474, 27.375277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660744, 17.667881, 27.404404>,  <33.970970, 17.329586, 26.899025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660744, 17.667881, 27.404404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022774, 17.826004, 27.341705>,  <34.239990, 17.920877, 27.304087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022774, 17.826004, 27.341705>,  <33.660744, 17.667881, 27.404404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022774, 17.826004, 27.341705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420090, 0.888391, -0.185166,
		0.066052, 0.233435, 0.970126,
		0.905075, 0.395310, -0.156744,
		34.294296, 17.944597, 27.294682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783424, 18.145695, 28.008938>,  <33.660744, 17.667881, 27.404404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783424, 18.145695, 28.008938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974388, 18.204422, 27.662407>,  <34.088966, 18.239658, 27.454489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974388, 18.204422, 27.662407>,  <33.783424, 18.145695, 28.008938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974388, 18.204422, 27.662407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345054, 0.938065, -0.031176,
		0.808094, 0.313813, 0.498504,
		0.477412, 0.146817, -0.866327,
		34.117611, 18.248466, 27.402510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160217, 18.672764, 28.099501>,  <33.783424, 18.145695, 28.008938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160217, 18.672764, 28.099501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109577, 18.648266, 27.703476>,  <34.079193, 18.633568, 27.465860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109577, 18.648266, 27.703476>,  <34.160217, 18.672764, 28.099501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109577, 18.648266, 27.703476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397025, 0.917788, -0.006007,
		0.909035, 0.392318, -0.140504,
		-0.126596, -0.061244, -0.990062,
		34.071598, 18.629892, 27.406458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714035, 19.113909, 27.686834>,  <34.160217, 18.672764, 28.099501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714035, 19.113909, 27.686834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379818, 19.052582, 27.475796>,  <34.179287, 19.015785, 27.349173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379818, 19.052582, 27.475796>,  <34.714035, 19.113909, 27.686834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379818, 19.052582, 27.475796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026086, 0.970263, -0.240646,
		0.548802, -0.187308, -0.814698,
		-0.835546, -0.153319, -0.527596,
		34.129154, 19.006586, 27.317516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682587, 19.634232, 27.288248>,  <34.714035, 19.113909, 27.686834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682587, 19.634232, 27.288248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301506, 19.518398, 27.251385>,  <34.072857, 19.448898, 27.229267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301506, 19.518398, 27.251385>,  <34.682587, 19.634232, 27.288248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301506, 19.518398, 27.251385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274292, 0.949959, -0.149470,
		0.130832, -0.117123, -0.984462,
		-0.952705, -0.289585, -0.092160,
		34.015694, 19.431522, 27.223738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409435, 20.035940, 26.794106>,  <34.682587, 19.634232, 27.288248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409435, 20.035940, 26.794106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079140, 19.933498, 26.995129>,  <33.880962, 19.872034, 27.115742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079140, 19.933498, 26.995129>,  <34.409435, 20.035940, 26.794106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079140, 19.933498, 26.995129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373742, 0.915742, -0.147424,
		-0.422457, -0.309561, -0.851882,
		-0.825740, -0.256104, 0.502558,
		33.831417, 19.856667, 27.145895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734745, 20.197678, 26.388004>,  <34.409435, 20.035940, 26.794106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734745, 20.197678, 26.388004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623589, 20.159000, 26.770298>,  <33.556892, 20.135794, 26.999674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623589, 20.159000, 26.770298>,  <33.734745, 20.197678, 26.388004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623589, 20.159000, 26.770298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439083, 0.897691, -0.036848,
		-0.854389, -0.429886, -0.291920,
		-0.277894, -0.096695, 0.955733,
		33.540222, 20.129992, 27.057018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167336, 20.485723, 26.389383>,  <33.734745, 20.197678, 26.388004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167336, 20.485723, 26.389383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232712, 20.470226, 26.783699>,  <33.271938, 20.460928, 27.020288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232712, 20.470226, 26.783699>,  <33.167336, 20.485723, 26.389383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232712, 20.470226, 26.783699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583952, 0.801582, 0.128323,
		-0.795165, -0.596628, 0.108389,
		0.163443, -0.038744, 0.985792,
		33.281746, 20.458603, 27.079437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482582, 20.616318, 26.810726>,  <33.167336, 20.485723, 26.389383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482582, 20.616318, 26.810726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792435, 20.685417, 27.054070>,  <32.978348, 20.726877, 27.200075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792435, 20.685417, 27.054070>,  <32.482582, 20.616318, 26.810726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792435, 20.685417, 27.054070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521480, 0.718694, 0.459931,
		-0.357773, -0.673526, 0.646808,
		0.774633, 0.172747, 0.608360,
		33.024826, 20.737242, 27.236578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241680, 20.648317, 27.512365>,  <32.482582, 20.616318, 26.810726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241680, 20.648317, 27.512365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591152, 20.841167, 27.486336>,  <32.800835, 20.956877, 27.470718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591152, 20.841167, 27.486336>,  <32.241680, 20.648317, 27.512365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591152, 20.841167, 27.486336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444127, 0.845023, 0.297803,
		0.198565, -0.231285, 0.952407,
		0.873683, 0.482123, -0.065073,
		32.853256, 20.985804, 27.466814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251255, 21.139114, 28.082308>,  <32.241680, 20.648317, 27.512365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251255, 21.139114, 28.082308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545956, 21.270157, 27.845707>,  <32.722775, 21.348783, 27.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545956, 21.270157, 27.845707>,  <32.251255, 21.139114, 28.082308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545956, 21.270157, 27.845707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293082, 0.943063, 0.157272,
		0.609347, 0.057489, 0.790817,
		0.736749, 0.327608, -0.591501,
		32.766979, 21.368439, 27.668257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372707, 21.852333, 28.366995>,  <32.251255, 21.139114, 28.082308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372707, 21.852333, 28.366995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543655, 21.815578, 28.007236>,  <32.646225, 21.793526, 27.791382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543655, 21.815578, 28.007236>,  <32.372707, 21.852333, 28.366995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543655, 21.815578, 28.007236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029391, 0.992884, -0.115402,
		0.903600, 0.075754, 0.421627,
		0.427369, -0.091885, -0.899396,
		32.671867, 21.788013, 27.737417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823135, 22.419535, 28.368221>,  <32.372707, 21.852333, 28.366995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823135, 22.419535, 28.368221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754051, 22.319832, 27.987057>,  <32.712601, 22.260010, 27.758358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754051, 22.319832, 27.987057>,  <32.823135, 22.419535, 28.368221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754051, 22.319832, 27.987057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050089, 0.963976, -0.261228,
		0.983698, -0.092847, -0.154002,
		-0.172709, -0.249256, -0.952913,
		32.702240, 22.245054, 27.701183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250450, 22.881327, 28.026255>,  <32.823135, 22.419535, 28.368221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250450, 22.881327, 28.026255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002354, 22.727680, 27.752686>,  <32.853497, 22.635492, 27.588543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002354, 22.727680, 27.752686>,  <33.250450, 22.881327, 28.026255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002354, 22.727680, 27.752686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142186, 0.912509, -0.383551,
		0.771414, -0.140651, -0.620595,
		-0.620245, -0.384116, -0.683923,
		32.816280, 22.612446, 27.547508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434464, 23.157032, 27.393513>,  <33.250450, 22.881327, 28.026255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434464, 23.157032, 27.393513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060829, 23.046333, 27.303280>,  <32.836647, 22.979914, 27.249140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060829, 23.046333, 27.303280>,  <33.434464, 23.157032, 27.393513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060829, 23.046333, 27.303280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165842, 0.895825, -0.412303,
		0.316184, -0.347717, -0.882678,
		-0.934090, -0.276749, -0.225580,
		32.780602, 22.963308, 27.235605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221291, 23.384050, 26.675034>,  <33.434464, 23.157032, 27.393513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221291, 23.384050, 26.675034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856754, 23.301632, 26.817581>,  <32.638031, 23.252182, 26.903109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856754, 23.301632, 26.817581>,  <33.221291, 23.384050, 26.675034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856754, 23.301632, 26.817581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374822, 0.773251, -0.511460,
		-0.170178, -0.599690, -0.781928,
		-0.911344, -0.206044, 0.356367,
		32.583351, 23.239819, 26.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830677, 23.285311, 26.081026>,  <33.221291, 23.384050, 26.675034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830677, 23.285311, 26.081026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604778, 23.399323, 26.390820>,  <32.469238, 23.467730, 26.576694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604778, 23.399323, 26.390820>,  <32.830677, 23.285311, 26.081026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604778, 23.399323, 26.390820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274104, 0.820403, -0.501802,
		-0.778416, -0.495678, -0.385190,
		-0.564744, 0.285029, 0.774483,
		32.435356, 23.484831, 26.623165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289829, 23.532579, 25.775448>,  <32.830677, 23.285311, 26.081026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289829, 23.532579, 25.775448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243729, 23.700638, 26.135490>,  <32.216068, 23.801474, 26.351517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243729, 23.700638, 26.135490>,  <32.289829, 23.532579, 25.775448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243729, 23.700638, 26.135490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265064, 0.860282, -0.435495,
		-0.957319, -0.288776, 0.012220,
		-0.115248, 0.420146, 0.900108,
		32.209156, 23.826681, 26.405523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681658, 23.894392, 25.718472>,  <32.289829, 23.532579, 25.775448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681658, 23.894392, 25.718472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882235, 24.062515, 26.020966>,  <32.002583, 24.163389, 26.202463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882235, 24.062515, 26.020966>,  <31.681658, 23.894392, 25.718472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882235, 24.062515, 26.020966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345517, 0.898628, -0.270345,
		-0.793204, -0.125730, 0.595835,
		0.501443, 0.420310, 0.756238,
		32.032669, 24.188608, 26.247837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305111, 24.459669, 25.943464>,  <31.681658, 23.894392, 25.718472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305111, 24.459669, 25.943464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652281, 24.571278, 26.107834>,  <31.860582, 24.638243, 26.206455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652281, 24.571278, 26.107834>,  <31.305111, 24.459669, 25.943464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652281, 24.571278, 26.107834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191966, 0.951455, -0.240589,
		-0.458103, 0.129930, 0.879352,
		0.867923, 0.279020, 0.410922,
		31.912659, 24.654984, 26.231110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108042, 25.056765, 26.198309>,  <31.305111, 24.459669, 25.943464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108042, 25.056765, 26.198309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507189, 25.065182, 26.173595>,  <31.746677, 25.070232, 26.158768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507189, 25.065182, 26.173595>,  <31.108042, 25.056765, 26.198309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507189, 25.065182, 26.173595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036911, 0.962634, -0.268279,
		0.053828, 0.269987, 0.961358,
		0.997868, 0.021044, -0.061782,
		31.806549, 25.071495, 26.155060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325800, 25.695847, 26.557991>,  <31.108042, 25.056765, 26.198309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325800, 25.695847, 26.557991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642761, 25.617313, 26.326977>,  <31.832939, 25.570194, 26.188368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642761, 25.617313, 26.326977>,  <31.325800, 25.695847, 26.557991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642761, 25.617313, 26.326977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085118, 0.973114, -0.214020,
		0.604028, 0.120432, 0.787811,
		0.792405, -0.196331, -0.577537,
		31.880482, 25.558414, 26.153715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833080, 26.208374, 26.731514>,  <31.325800, 25.695847, 26.557991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833080, 26.208374, 26.731514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961901, 26.068268, 26.379696>,  <32.039192, 25.984203, 26.168606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961901, 26.068268, 26.379696>,  <31.833080, 26.208374, 26.731514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961901, 26.068268, 26.379696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178211, 0.934862, -0.307042,
		0.929798, -0.057861, 0.363495,
		0.322052, -0.350266, -0.879543,
		32.058517, 25.963188, 26.115833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440838, 26.556038, 26.610102>,  <31.833080, 26.208374, 26.731514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440838, 26.556038, 26.610102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319050, 26.429970, 26.250553>,  <32.245979, 26.354328, 26.034824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319050, 26.429970, 26.250553>,  <32.440838, 26.556038, 26.610102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319050, 26.429970, 26.250553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097811, 0.928340, -0.358634,
		0.947488, -0.197111, -0.251819,
		-0.304465, -0.315170, -0.898871,
		32.227711, 26.335419, 25.980892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934216, 26.846218, 26.172789>,  <32.440838, 26.556038, 26.610102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934216, 26.846218, 26.172789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596062, 26.770905, 25.972836>,  <32.393169, 26.725718, 25.852863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596062, 26.770905, 25.972836>,  <32.934216, 26.846218, 26.172789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596062, 26.770905, 25.972836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000613, 0.935477, -0.353388,
		0.534164, -0.299054, -0.790718,
		-0.845380, -0.188283, -0.499882,
		32.342449, 26.714420, 25.822870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057877, 27.247551, 25.543119>,  <32.934216, 26.846218, 26.172789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057877, 27.247551, 25.543119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663483, 27.190628, 25.577969>,  <32.426846, 27.156475, 25.598879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663483, 27.190628, 25.577969>,  <33.057877, 27.247551, 25.543119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663483, 27.190628, 25.577969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163868, 0.924237, -0.344868,
		-0.031445, -0.354310, -0.934599,
		-0.985981, -0.142306, 0.087122,
		32.367687, 27.147936, 25.604105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757362, 27.662815, 24.956785>,  <33.057877, 27.247551, 25.543119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757362, 27.662815, 24.956785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443424, 27.605900, 25.198040>,  <32.255062, 27.571751, 25.342793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443424, 27.605900, 25.198040>,  <32.757362, 27.662815, 24.956785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443424, 27.605900, 25.198040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372892, 0.885794, -0.276264,
		-0.494944, -0.441728, -0.748269,
		-0.784845, -0.142288, 0.603135,
		32.207970, 27.563213, 25.378981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200573, 27.938568, 24.659542>,  <32.757362, 27.662815, 24.956785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200573, 27.938568, 24.659542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058826, 27.943714, 25.033550>,  <31.973780, 27.946802, 25.257956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058826, 27.943714, 25.033550>,  <32.200573, 27.938568, 24.659542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058826, 27.943714, 25.033550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274178, 0.954530, -0.117043,
		-0.894010, -0.297837, -0.334723,
		-0.354363, 0.012864, 0.935019,
		31.952518, 27.947573, 25.314056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539764, 28.332558, 24.748253>,  <32.200573, 27.938568, 24.659542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539764, 28.332558, 24.748253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686892, 28.322880, 25.120087>,  <31.775167, 28.317072, 25.343187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686892, 28.322880, 25.120087>,  <31.539764, 28.332558, 24.748253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686892, 28.322880, 25.120087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196077, 0.975168, 0.102966,
		-0.908991, -0.220142, 0.353939,
		0.367817, -0.024196, 0.929583,
		31.797237, 28.315620, 25.398962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336750, 28.869547, 24.900499>,  <31.539764, 28.332558, 24.748253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336750, 28.869547, 24.900499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560904, 28.800213, 25.224457>,  <31.695395, 28.758614, 25.418831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560904, 28.800213, 25.224457>,  <31.336750, 28.869547, 24.900499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560904, 28.800213, 25.224457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068632, 0.964774, 0.253970,
		-0.825385, -0.197905, 0.528746,
		0.560383, -0.173334, 0.809893,
		31.729019, 28.748213, 25.467424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926306, 28.969057, 25.505283>,  <31.336750, 28.869547, 24.900499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926306, 28.969057, 25.505283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305208, 29.023148, 25.621502>,  <31.532551, 29.055601, 25.691233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305208, 29.023148, 25.621502>,  <30.926306, 28.969057, 25.505283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305208, 29.023148, 25.621502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195029, 0.962647, 0.187816,
		-0.254297, -0.234575, 0.938247,
		0.947258, 0.135224, 0.290547,
		31.589386, 29.063715, 25.708666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913050, 29.239237, 26.168238>,  <30.926306, 28.969057, 25.505283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913050, 29.239237, 26.168238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259924, 29.355831, 26.006733>,  <31.468048, 29.425787, 25.909830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259924, 29.355831, 26.006733>,  <30.913050, 29.239237, 26.168238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259924, 29.355831, 26.006733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233315, 0.954115, 0.187693,
		0.439945, -0.068562, 0.895404,
		0.867187, 0.291485, -0.403762,
		31.520081, 29.443277, 25.885605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102007, 29.809351, 26.598631>,  <30.913050, 29.239237, 26.168238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102007, 29.809351, 26.598631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337709, 29.842239, 26.277130>,  <31.479132, 29.861973, 26.084230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337709, 29.842239, 26.277130>,  <31.102007, 29.809351, 26.598631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337709, 29.842239, 26.277130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041304, 0.996573, 0.071667,
		0.806889, -0.009032, 0.590634,
		0.589257, 0.082223, -0.803751,
		31.514486, 29.866907, 26.036005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674997, 30.165346, 26.880573>,  <31.102007, 29.809351, 26.598631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674997, 30.165346, 26.880573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622250, 30.211308, 26.486740>,  <31.590601, 30.238884, 26.250441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622250, 30.211308, 26.486740>,  <31.674997, 30.165346, 26.880573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622250, 30.211308, 26.486740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144461, 0.984883, 0.095590,
		0.980684, -0.129629, -0.146474,
		-0.131868, 0.114903, -0.984585,
		31.582689, 30.245779, 26.191364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175964, 30.714327, 26.732471>,  <31.674997, 30.165346, 26.880573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175964, 30.714327, 26.732471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916151, 30.726776, 26.428593>,  <31.760263, 30.734245, 26.246265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916151, 30.726776, 26.428593>,  <32.175964, 30.714327, 26.732471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916151, 30.726776, 26.428593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140648, 0.986836, -0.079826,
		0.747213, -0.158699, -0.645357,
		-0.649531, 0.031121, -0.759698,
		31.721292, 30.736113, 26.200684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503208, 31.043835, 26.178221>,  <32.175964, 30.714327, 26.732471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503208, 31.043835, 26.178221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106701, 31.091095, 26.154812>,  <31.868795, 31.119452, 26.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106701, 31.091095, 26.154812>,  <32.503208, 31.043835, 26.178221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106701, 31.091095, 26.154812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121686, 0.990691, -0.061021,
		0.050769, -0.067610, -0.996419,
		-0.991269, 0.118152, -0.058524,
		31.809320, 31.126541, 26.137255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419941, 31.797186, 25.909998>,  <32.503208, 31.043835, 26.178221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419941, 31.797186, 25.909998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029968, 31.731377, 25.969925>,  <31.795986, 31.691891, 26.005882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029968, 31.731377, 25.969925>,  <32.419941, 31.797186, 25.909998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029968, 31.731377, 25.969925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177886, 0.980747, -0.080574,
		-0.133678, -0.105205, -0.985425,
		-0.974929, -0.164522, 0.149819,
		31.737490, 31.682020, 26.014870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078712, 32.280506, 25.477800>,  <32.419941, 31.797186, 25.909998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078712, 32.280506, 25.477800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809202, 32.174210, 25.753601>,  <31.647497, 32.110432, 25.919081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809202, 32.174210, 25.753601>,  <32.078712, 32.280506, 25.477800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809202, 32.174210, 25.753601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276777, 0.955928, 0.097962,
		-0.685145, -0.124833, -0.717630,
		-0.673774, -0.265741, 0.689500,
		31.607071, 32.094486, 25.960451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396133, 32.617851, 25.290424>,  <32.078712, 32.280506, 25.477800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396133, 32.617851, 25.290424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409269, 32.545597, 25.683624>,  <31.417150, 32.502243, 25.919544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409269, 32.545597, 25.683624>,  <31.396133, 32.617851, 25.290424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409269, 32.545597, 25.683624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139438, 0.973085, 0.183472,
		-0.989686, -0.143093, 0.006768,
		0.032840, -0.180636, 0.983002,
		31.419121, 32.491405, 25.978525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783943, 33.070923, 25.526758>,  <31.396133, 32.617851, 25.290424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783943, 33.070923, 25.526758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014679, 32.958111, 25.833408>,  <31.153120, 32.890423, 26.017399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014679, 32.958111, 25.833408>,  <30.783943, 33.070923, 25.526758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014679, 32.958111, 25.833408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233473, 0.842432, 0.485590,
		-0.782779, -0.459095, 0.420104,
		0.576842, -0.282027, 0.766625,
		31.187731, 32.873505, 26.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461126, 33.313618, 26.126671>,  <30.783943, 33.070923, 25.526758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461126, 33.313618, 26.126671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852703, 33.274239, 26.198208>,  <31.087648, 33.250610, 26.241129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852703, 33.274239, 26.198208>,  <30.461126, 33.313618, 26.126671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852703, 33.274239, 26.198208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042189, 0.954690, 0.294595,
		-0.199739, -0.280846, 0.938738,
		0.978940, -0.098447, 0.178840,
		31.146385, 33.244705, 26.251860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176598, 32.584160, 25.935467>,  <30.461126, 33.313618, 26.126671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176598, 32.584160, 25.935467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779963, 32.631908, 25.915428>,  <29.541983, 32.660557, 25.903406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779963, 32.631908, 25.915428>,  <30.176598, 32.584160, 25.935467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779963, 32.631908, 25.915428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129298, -0.932185, 0.338102,
		-0.006339, 0.341735, 0.939775,
		-0.991586, 0.119368, -0.050094,
		29.482487, 32.667721, 25.900400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815205, 32.456779, 26.635813>,  <30.176598, 32.584160, 25.935467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815205, 32.456779, 26.635813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538555, 32.379845, 26.357342>,  <29.372564, 32.333683, 26.190260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538555, 32.379845, 26.357342>,  <29.815205, 32.456779, 26.635813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538555, 32.379845, 26.357342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215071, -0.865318, 0.452735,
		-0.689492, 0.462850, 0.557109,
		-0.691625, -0.192339, -0.696176,
		29.331068, 32.322144, 26.148489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303232, 32.050468, 26.973553>,  <29.815205, 32.456779, 26.635813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303232, 32.050468, 26.973553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222054, 32.005684, 26.584446>,  <29.173346, 31.978813, 26.350983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222054, 32.005684, 26.584446>,  <29.303232, 32.050468, 26.973553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222054, 32.005684, 26.584446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250036, -0.954582, 0.162034,
		-0.946728, 0.276111, 0.165735,
		-0.202948, -0.111962, -0.972768,
		29.161169, 31.972095, 26.292616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670948, 31.665873, 26.887177>,  <29.303232, 32.050468, 26.973553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670948, 31.665873, 26.887177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848764, 31.605846, 26.533936>,  <28.955454, 31.569830, 26.321991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848764, 31.605846, 26.533936>,  <28.670948, 31.665873, 26.887177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848764, 31.605846, 26.533936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162502, -0.983019, 0.085243,
		-0.880896, 0.105612, -0.461376,
		0.444539, -0.150065, -0.883100,
		28.982126, 31.560827, 26.269005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151424, 31.292881, 26.541800>,  <28.670948, 31.665873, 26.887177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151424, 31.292881, 26.541800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501265, 31.205776, 26.368523>,  <28.711168, 31.153513, 26.264557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501265, 31.205776, 26.368523>,  <28.151424, 31.292881, 26.541800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501265, 31.205776, 26.368523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161643, -0.973308, 0.162919,
		-0.457106, -0.072467, -0.886455,
		0.874600, -0.217761, -0.433192,
		28.763645, 31.140448, 26.238565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976562, 30.787495, 26.233776>,  <28.151424, 31.292881, 26.541800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976562, 30.787495, 26.233776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373419, 30.746387, 26.205231>,  <28.611532, 30.721724, 26.188103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373419, 30.746387, 26.205231>,  <27.976562, 30.787495, 26.233776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373419, 30.746387, 26.205231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103199, -0.994658, -0.002407,
		-0.070734, 0.009752, -0.997448,
		0.992142, -0.102766, -0.071363,
		28.671062, 30.715557, 26.183823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198679, 30.309490, 25.663624>,  <27.976562, 30.787495, 26.233776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198679, 30.309490, 25.663624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512510, 30.305695, 25.911606>,  <28.700809, 30.303417, 26.060396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512510, 30.305695, 25.911606>,  <28.198679, 30.309490, 25.663624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512510, 30.305695, 25.911606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045256, -0.998092, 0.041995,
		0.618375, -0.061005, -0.783512,
		0.784579, -0.009490, 0.619956,
		28.747885, 30.302847, 26.097593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747822, 29.847103, 25.398830>,  <28.198679, 30.309490, 25.663624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747822, 29.847103, 25.398830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856714, 29.893608, 25.780903>,  <28.922050, 29.921511, 26.010147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856714, 29.893608, 25.780903>,  <28.747822, 29.847103, 25.398830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856714, 29.893608, 25.780903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061362, -0.992751, 0.103347,
		0.960273, 0.030478, -0.277393,
		0.272232, 0.116262, 0.955182,
		28.938383, 29.928486, 26.067457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340778, 29.368782, 25.480474>,  <28.747822, 29.847103, 25.398830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340778, 29.368782, 25.480474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199060, 29.442009, 25.847290>,  <29.114029, 29.485945, 26.067379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199060, 29.442009, 25.847290>,  <29.340778, 29.368782, 25.480474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199060, 29.442009, 25.847290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051269, -0.975374, 0.214518,
		0.933727, 0.123018, 0.336185,
		-0.354295, 0.183066, 0.917040,
		29.092772, 29.496929, 26.122402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678625, 28.912018, 25.832909>,  <29.340778, 29.368782, 25.480474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678625, 28.912018, 25.832909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377005, 28.999249, 26.080730>,  <29.196033, 29.051588, 26.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377005, 28.999249, 26.080730>,  <29.678625, 28.912018, 25.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377005, 28.999249, 26.080730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084862, -0.967712, 0.237343,
		0.651312, 0.126392, 0.748210,
		-0.754050, 0.218079, 0.619557,
		29.150789, 29.064672, 26.266598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830532, 28.614616, 26.455954>,  <29.678625, 28.912018, 25.832909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830532, 28.614616, 26.455954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435890, 28.661537, 26.501301>,  <29.199104, 28.689690, 26.528509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435890, 28.661537, 26.501301>,  <29.830532, 28.614616, 26.455954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435890, 28.661537, 26.501301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057675, -0.900888, 0.430203,
		0.152596, 0.417901, 0.895585,
		-0.986604, 0.117300, 0.113370,
		29.139910, 28.696728, 26.535313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618799, 28.344147, 27.069799>,  <29.830532, 28.614616, 26.455954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618799, 28.344147, 27.069799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273798, 28.352665, 26.867558>,  <29.066797, 28.357775, 26.746212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273798, 28.352665, 26.867558>,  <29.618799, 28.344147, 27.069799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273798, 28.352665, 26.867558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250381, -0.886211, 0.389795,
		-0.439772, 0.462793, 0.769690,
		-0.862502, 0.021295, -0.505605,
		29.015047, 28.359053, 26.715876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088783, 28.261152, 27.565784>,  <29.618799, 28.344147, 27.069799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088783, 28.261152, 27.565784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944729, 28.139416, 27.213039>,  <28.858295, 28.066374, 27.001392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944729, 28.139416, 27.213039>,  <29.088783, 28.261152, 27.565784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944729, 28.139416, 27.213039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180179, -0.904801, 0.385839,
		-0.915334, 0.297848, 0.271018,
		-0.360138, -0.304340, -0.881860,
		28.836687, 28.048113, 26.948481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523907, 27.875580, 27.784136>,  <29.088783, 28.261152, 27.565784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523907, 27.875580, 27.784136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603153, 27.767231, 27.407333>,  <28.650702, 27.702221, 27.181252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603153, 27.767231, 27.407333>,  <28.523907, 27.875580, 27.784136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603153, 27.767231, 27.407333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156508, -0.957468, 0.242404,
		-0.967603, 0.099408, -0.232084,
		0.198116, -0.270873, -0.942007,
		28.662588, 27.685968, 27.124731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964571, 27.441599, 27.616919>,  <28.523907, 27.875580, 27.784136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964571, 27.441599, 27.616919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288292, 27.359814, 27.396656>,  <28.482525, 27.310741, 27.264498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288292, 27.359814, 27.396656>,  <27.964571, 27.441599, 27.616919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288292, 27.359814, 27.396656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131472, -0.976731, 0.169445,
		-0.572490, -0.064736, -0.817352,
		0.809302, -0.204464, -0.550657,
		28.531082, 27.298475, 27.231459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766848, 26.845310, 27.309156>,  <27.964571, 27.441599, 27.616919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766848, 26.845310, 27.309156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163446, 26.835499, 27.258045>,  <28.401405, 26.829611, 27.227379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163446, 26.835499, 27.258045>,  <27.766848, 26.845310, 27.309156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163446, 26.835499, 27.258045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000076, -0.982177, 0.187957,
		-0.130113, -0.186350, -0.973830,
		0.991499, -0.024529, -0.127780,
		28.460896, 26.828140, 27.219711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823193, 26.222998, 26.863258>,  <27.766848, 26.845310, 27.309156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823193, 26.222998, 26.863258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185974, 26.287655, 27.018852>,  <28.403643, 26.326448, 27.112209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185974, 26.287655, 27.018852>,  <27.823193, 26.222998, 26.863258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185974, 26.287655, 27.018852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197611, -0.978791, -0.054012,
		0.372006, 0.125854, -0.919659,
		0.906952, 0.161642, 0.388986,
		28.458059, 26.336147, 27.135548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371927, 25.892506, 26.450190>,  <27.823193, 26.222998, 26.863258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371927, 25.892506, 26.450190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561842, 25.949436, 26.797596>,  <28.675791, 25.983595, 27.006041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561842, 25.949436, 26.797596>,  <28.371927, 25.892506, 26.450190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561842, 25.949436, 26.797596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455660, -0.884031, -0.104226,
		0.752963, 0.445233, -0.484577,
		0.474786, 0.142324, 0.868517,
		28.704277, 25.992134, 27.058151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044855, 25.732267, 26.309019>,  <28.371927, 25.892506, 26.450190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044855, 25.732267, 26.309019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014952, 25.720196, 26.707718>,  <28.997009, 25.712954, 26.946938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014952, 25.720196, 26.707718>,  <29.044855, 25.732267, 26.309019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014952, 25.720196, 26.707718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560631, -0.827892, 0.016982,
		0.824685, 0.560075, 0.078809,
		-0.074756, -0.030178, 0.996745,
		28.992525, 25.711142, 27.006741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679916, 25.417711, 26.552794>,  <29.044855, 25.732267, 26.309019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679916, 25.417711, 26.552794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457050, 25.365303, 26.880795>,  <29.323332, 25.333858, 27.077595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457050, 25.365303, 26.880795>,  <29.679916, 25.417711, 26.552794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457050, 25.365303, 26.880795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300752, -0.952273, 0.052194,
		0.774027, 0.275698, 0.569976,
		-0.557163, -0.131022, 0.820002,
		29.289902, 25.325996, 27.126795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188250, 25.139524, 27.037170>,  <29.679916, 25.417711, 26.552794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188250, 25.139524, 27.037170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808208, 25.044216, 27.117699>,  <29.580183, 24.987032, 27.166016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808208, 25.044216, 27.117699>,  <30.188250, 25.139524, 27.037170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808208, 25.044216, 27.117699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263288, -0.958659, 0.107943,
		0.167280, 0.155563, 0.973559,
		-0.950104, -0.238270, 0.201323,
		29.523178, 24.972734, 27.178095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196617, 24.726246, 27.700493>,  <30.188250, 25.139524, 27.037170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196617, 24.726246, 27.700493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880493, 24.646759, 27.468658>,  <29.690819, 24.599066, 27.329557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880493, 24.646759, 27.468658>,  <30.196617, 24.726246, 27.700493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880493, 24.646759, 27.468658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196743, -0.978156, 0.067100,
		-0.580262, -0.061000, 0.812142,
		-0.790309, -0.198719, -0.579588,
		29.643400, 24.587143, 27.294783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902445, 24.011852, 28.002214>,  <30.196617, 24.726246, 27.700493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902445, 24.011852, 28.002214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715445, 24.039749, 27.649719>,  <29.603245, 24.056486, 27.438223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715445, 24.039749, 27.649719>,  <29.902445, 24.011852, 28.002214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715445, 24.039749, 27.649719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037045, -0.994462, -0.098354,
		-0.883217, -0.078626, 0.462326,
		-0.467499, 0.069741, -0.881238,
		29.575195, 24.060671, 27.385347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515446, 23.481022, 27.974798>,  <29.902445, 24.011852, 28.002214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515446, 23.481022, 27.974798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609024, 23.551609, 27.592358>,  <29.665171, 23.593962, 27.362894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609024, 23.551609, 27.592358>,  <29.515446, 23.481022, 27.974798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609024, 23.551609, 27.592358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212314, -0.968929, -0.126883,
		-0.948784, -0.173309, -0.264145,
		0.233948, 0.176467, -0.956100,
		29.679209, 23.604549, 27.305527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130980, 23.077936, 27.556196>,  <29.515446, 23.481022, 27.974798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130980, 23.077936, 27.556196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417801, 23.168667, 27.292564>,  <29.589893, 23.223104, 27.134386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417801, 23.168667, 27.292564>,  <29.130980, 23.077936, 27.556196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417801, 23.168667, 27.292564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079713, -0.966051, -0.245748,
		-0.692445, 0.123677, -0.710791,
		0.717054, 0.226826, -0.659078,
		29.632917, 23.236715, 27.094841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005148, 22.765575, 26.900892>,  <29.130980, 23.077936, 27.556196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005148, 22.765575, 26.900892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398748, 22.836514, 26.907757>,  <29.634909, 22.879076, 26.911877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398748, 22.836514, 26.907757>,  <29.005148, 22.765575, 26.900892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398748, 22.836514, 26.907757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171683, -0.917974, -0.357558,
		-0.047656, 0.354784, -0.933733,
		0.983999, 0.177345, 0.017164,
		29.693949, 22.889717, 26.912907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196598, 22.530642, 26.316322>,  <29.005148, 22.765575, 26.900892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196598, 22.530642, 26.316322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518457, 22.536552, 26.553749>,  <29.711573, 22.540098, 26.696205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518457, 22.536552, 26.553749>,  <29.196598, 22.530642, 26.316322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518457, 22.536552, 26.553749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248971, -0.915955, -0.314707,
		0.539030, 0.401010, -0.740701,
		0.804649, 0.014776, 0.593567,
		29.759851, 22.540985, 26.731819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762245, 22.316317, 25.839842>,  <29.196598, 22.530642, 26.316322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762245, 22.316317, 25.839842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873840, 22.259899, 26.219795>,  <29.940798, 22.226049, 26.447767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873840, 22.259899, 26.219795>,  <29.762245, 22.316317, 25.839842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873840, 22.259899, 26.219795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327645, -0.915819, -0.232216,
		0.902672, 0.376008, -0.209289,
		0.278986, -0.141042, 0.949881,
		29.957537, 22.217587, 26.504759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341755, 21.932667, 25.751450>,  <29.762245, 22.316317, 25.839842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341755, 21.932667, 25.751450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246449, 21.876194, 26.135803>,  <30.189264, 21.842310, 26.366415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246449, 21.876194, 26.135803>,  <30.341755, 21.932667, 25.751450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246449, 21.876194, 26.135803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310407, -0.948554, -0.062403,
		0.920260, 0.283396, 0.269830,
		-0.238264, -0.141184, 0.960884,
		30.174969, 21.833839, 26.424068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949017, 21.588797, 26.084240>,  <30.341755, 21.932667, 25.751450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949017, 21.588797, 26.084240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602840, 21.486462, 26.256546>,  <30.395134, 21.425060, 26.359930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602840, 21.486462, 26.256546>,  <30.949017, 21.588797, 26.084240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602840, 21.486462, 26.256546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288419, -0.957443, 0.010814,
		0.409667, 0.133600, 0.902399,
		-0.865441, -0.255839, 0.430766,
		30.343208, 21.409710, 26.385777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060270, 21.096436, 26.595459>,  <30.949017, 21.588797, 26.084240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060270, 21.096436, 26.595459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665966, 21.034969, 26.568138>,  <30.429384, 20.998091, 26.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665966, 21.034969, 26.568138>,  <31.060270, 21.096436, 26.595459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665966, 21.034969, 26.568138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148117, -0.985729, 0.079994,
		-0.079618, 0.068739, 0.994453,
		-0.985760, -0.153665, -0.068300,
		30.370237, 20.988871, 26.547647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890312, 20.672632, 27.204351>,  <31.060270, 21.096436, 26.595459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890312, 20.672632, 27.204351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590660, 20.634693, 26.942112>,  <30.410870, 20.611929, 26.784769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590660, 20.634693, 26.942112>,  <30.890312, 20.672632, 27.204351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590660, 20.634693, 26.942112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005805, -0.988718, 0.149675,
		-0.662398, 0.115932, 0.740128,
		-0.749130, -0.094848, -0.655598,
		30.365921, 20.606239, 26.745432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400881, 20.272432, 27.544388>,  <30.890312, 20.672632, 27.204351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400881, 20.272432, 27.544388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338516, 20.249664, 27.149937>,  <30.301098, 20.236004, 26.913265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338516, 20.249664, 27.149937>,  <30.400881, 20.272432, 27.544388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338516, 20.249664, 27.149937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080022, -0.994329, 0.070045,
		-0.984524, 0.089833, 0.150473,
		-0.155912, -0.056920, -0.986130,
		30.291742, 20.232588, 26.854097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966911, 19.768852, 27.559631>,  <30.400881, 20.272432, 27.544388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966911, 19.768852, 27.559631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083248, 19.775887, 27.176987>,  <30.153049, 19.780107, 26.947401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083248, 19.775887, 27.176987>,  <29.966911, 19.768852, 27.559631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083248, 19.775887, 27.176987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223264, -0.970981, -0.085730,
		-0.930357, 0.238510, -0.278475,
		0.290841, 0.017586, -0.956610,
		30.170500, 19.781162, 26.890003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548166, 19.292894, 27.273685>,  <29.966911, 19.768852, 27.559631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548166, 19.292894, 27.273685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817413, 19.337357, 26.981232>,  <29.978962, 19.364035, 26.805759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817413, 19.337357, 26.981232>,  <29.548166, 19.292894, 27.273685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817413, 19.337357, 26.981232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139570, -0.951780, -0.273196,
		-0.726246, 0.285937, -0.625145,
		0.673117, 0.111156, -0.731135,
		30.019348, 19.370703, 26.761890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235558, 19.042271, 26.668303>,  <29.548166, 19.292894, 27.273685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235558, 19.042271, 26.668303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631926, 19.011829, 26.623966>,  <29.869747, 18.993565, 26.597364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631926, 19.011829, 26.623966>,  <29.235558, 19.042271, 26.668303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631926, 19.011829, 26.623966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106088, -0.949026, -0.296809,
		-0.082602, 0.305873, -0.948482,
		0.990920, -0.076106, -0.110841,
		29.929201, 18.988998, 26.590714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278028, 18.740852, 26.044104>,  <29.235558, 19.042271, 26.668303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278028, 18.740852, 26.044104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625875, 18.667934, 26.227638>,  <29.834583, 18.624184, 26.337759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625875, 18.667934, 26.227638>,  <29.278028, 18.740852, 26.044104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625875, 18.667934, 26.227638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144158, -0.982594, -0.117163,
		0.472210, 0.035742, -0.880761,
		0.869619, -0.182295, 0.458838,
		29.886761, 18.613247, 26.365290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470745, 18.143250, 25.746555>,  <29.278028, 18.740852, 26.044104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470745, 18.143250, 25.746555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717716, 18.167538, 26.060268>,  <29.865898, 18.182110, 26.248495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717716, 18.167538, 26.060268>,  <29.470745, 18.143250, 25.746555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717716, 18.167538, 26.060268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001921, -0.997130, 0.075686,
		0.786625, -0.045224, -0.615773,
		0.617428, 0.060720, 0.784280,
		29.902945, 18.185753, 26.295553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588232, 18.024593, 24.954317>,  <29.470745, 18.143250, 25.746555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588232, 18.024593, 24.954317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362085, 17.956192, 24.631550>,  <29.226397, 17.915152, 24.437889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362085, 17.956192, 24.631550>,  <29.588232, 18.024593, 24.954317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362085, 17.956192, 24.631550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010767, 0.976660, -0.214521,
		0.824768, -0.129972, -0.550331,
		-0.565368, -0.171004, -0.806918,
		29.192474, 17.904890, 24.389475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892277, 18.377905, 24.401054>,  <29.588232, 18.024593, 24.954317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892277, 18.377905, 24.401054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513111, 18.317032, 24.289124>,  <29.285612, 18.280508, 24.221966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513111, 18.317032, 24.289124>,  <29.892277, 18.377905, 24.401054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513111, 18.317032, 24.289124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113470, 0.982186, -0.149784,
		0.297636, -0.110230, -0.948294,
		-0.947912, -0.152184, -0.279826,
		29.228737, 18.271378, 24.205175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811449, 18.869638, 23.847193>,  <29.892277, 18.377905, 24.401054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811449, 18.869638, 23.847193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441479, 18.776054, 23.967045>,  <29.219498, 18.719904, 24.038956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441479, 18.776054, 23.967045>,  <29.811449, 18.869638, 23.847193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441479, 18.776054, 23.967045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273988, 0.956646, -0.098786,
		-0.263528, -0.173465, -0.948927,
		-0.924924, -0.233961, 0.299630,
		29.164001, 18.705866, 24.056934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338087, 19.120617, 23.293295>,  <29.811449, 18.869638, 23.847193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338087, 19.120617, 23.293295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143200, 19.087845, 23.641068>,  <29.026268, 19.068182, 23.849731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143200, 19.087845, 23.641068>,  <29.338087, 19.120617, 23.293295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143200, 19.087845, 23.641068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277196, 0.958612, -0.065005,
		-0.828120, -0.272674, -0.489762,
		-0.487217, -0.081928, 0.869429,
		28.997034, 19.063267, 23.901896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704695, 19.329857, 23.050970>,  <29.338087, 19.120617, 23.293295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704695, 19.329857, 23.050970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683163, 19.353962, 23.449661>,  <28.670244, 19.368425, 23.688877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683163, 19.353962, 23.449661>,  <28.704695, 19.329857, 23.050970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683163, 19.353962, 23.449661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237576, 0.968741, -0.071403,
		-0.969876, -0.240643, -0.037828,
		-0.053828, 0.060265, 0.996730,
		28.667013, 19.372042, 23.748680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129715, 19.756266, 23.233101>,  <28.704695, 19.329857, 23.050970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129715, 19.756266, 23.233101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369501, 19.768658, 23.553020>,  <28.513372, 19.776093, 23.744972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369501, 19.768658, 23.553020>,  <28.129715, 19.756266, 23.233101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369501, 19.768658, 23.553020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336422, 0.916450, 0.216655,
		-0.726265, -0.398948, 0.559803,
		0.599465, 0.030981, 0.799801,
		28.549341, 19.777952, 23.792961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679193, 20.013674, 23.792927>,  <28.129715, 19.756266, 23.233101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679193, 20.013674, 23.792927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054676, 20.076015, 23.915916>,  <28.279964, 20.113420, 23.989710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054676, 20.076015, 23.915916>,  <27.679193, 20.013674, 23.792927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054676, 20.076015, 23.915916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166003, 0.986101, 0.006963,
		-0.302117, -0.057579, 0.951530,
		0.938706, 0.155854, 0.307476,
		28.336288, 20.122772, 24.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636286, 20.472813, 24.385788>,  <27.679193, 20.013674, 23.792927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636286, 20.472813, 24.385788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004442, 20.515186, 24.235237>,  <28.225336, 20.540611, 24.144907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004442, 20.515186, 24.235237>,  <27.636286, 20.472813, 24.385788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004442, 20.515186, 24.235237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158145, 0.981207, -0.110559,
		0.357591, 0.161280, 0.919847,
		0.920391, 0.105935, -0.376376,
		28.280560, 20.546967, 24.122324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954542, 20.982584, 24.854626>,  <27.636286, 20.472813, 24.385788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954542, 20.982584, 24.854626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172386, 20.977573, 24.519188>,  <28.303093, 20.974567, 24.317924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172386, 20.977573, 24.519188>,  <27.954542, 20.982584, 24.854626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172386, 20.977573, 24.519188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147094, 0.985817, 0.080803,
		0.825691, -0.167358, 0.538727,
		0.544609, -0.012525, -0.838597,
		28.335770, 20.973816, 24.267609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591667, 21.285650, 25.009949>,  <27.954542, 20.982584, 24.854626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591667, 21.285650, 25.009949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505009, 21.308167, 24.620098>,  <28.453012, 21.321676, 24.386189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505009, 21.308167, 24.620098>,  <28.591667, 21.285650, 25.009949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505009, 21.308167, 24.620098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306072, 0.951919, -0.013059,
		0.927029, -0.301135, -0.223460,
		-0.216649, 0.056289, -0.974626,
		28.440014, 21.325052, 24.327711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067520, 21.755754, 24.689692>,  <28.591667, 21.285650, 25.009949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067520, 21.755754, 24.689692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779068, 21.789749, 24.414665>,  <28.605997, 21.810146, 24.249649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779068, 21.789749, 24.414665>,  <29.067520, 21.755754, 24.689692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779068, 21.789749, 24.414665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082644, 0.995913, 0.036425,
		0.687852, -0.030556, -0.725208,
		-0.721131, 0.084989, -0.687566,
		28.562729, 21.815247, 24.208395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116985, 22.440571, 24.524240>,  <29.067520, 21.755754, 24.689692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116985, 22.440571, 24.524240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791908, 22.361927, 24.304832>,  <28.596863, 22.314741, 24.173187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791908, 22.361927, 24.304832>,  <29.116985, 22.440571, 24.524240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791908, 22.361927, 24.304832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228131, 0.973569, -0.010962,
		0.536179, 0.116226, -0.836064,
		-0.812692, -0.196610, -0.548522,
		28.548101, 22.302944, 24.140276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173693, 22.968153, 23.909914>,  <29.116985, 22.440571, 24.524240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173693, 22.968153, 23.909914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805111, 22.826836, 23.974548>,  <28.583961, 22.742046, 24.013329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805111, 22.826836, 23.974548>,  <29.173693, 22.968153, 23.909914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805111, 22.826836, 23.974548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306869, 0.916974, 0.254931,
		-0.238234, 0.185321, -0.953363,
		-0.921453, -0.353291, 0.161585,
		28.528675, 22.720848, 24.023024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608953, 23.394594, 23.575960>,  <29.173693, 22.968153, 23.909914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608953, 23.394594, 23.575960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410618, 23.214142, 23.872776>,  <28.291616, 23.105869, 24.050865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410618, 23.214142, 23.872776>,  <28.608953, 23.394594, 23.575960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410618, 23.214142, 23.872776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311850, 0.889980, 0.332693,
		-0.810490, -0.066444, -0.581972,
		-0.495838, -0.451132, 0.742041,
		28.261866, 23.078802, 24.095388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975288, 23.733524, 23.579195>,  <28.608953, 23.394594, 23.575960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975288, 23.733524, 23.579195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988760, 23.543961, 23.931168>,  <27.996843, 23.430222, 24.142351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988760, 23.543961, 23.931168>,  <27.975288, 23.733524, 23.579195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988760, 23.543961, 23.931168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348164, 0.819715, 0.454806,
		-0.936828, -0.321677, -0.137391,
		0.033679, -0.473910, 0.879929,
		27.998863, 23.401787, 24.195147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329355, 23.928150, 23.787249>,  <27.975288, 23.733524, 23.579195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329355, 23.928150, 23.787249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529886, 23.811726, 24.113182>,  <27.650206, 23.741871, 24.308743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529886, 23.811726, 24.113182>,  <27.329355, 23.928150, 23.787249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529886, 23.811726, 24.113182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414894, 0.745536, 0.521574,
		-0.759297, -0.599550, 0.252999,
		0.501329, -0.291061, 0.814832,
		27.680285, 23.724407, 24.357632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855247, 24.011641, 24.456522>,  <27.329355, 23.928150, 23.787249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855247, 24.011641, 24.456522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245142, 24.027042, 24.544525>,  <27.479078, 24.036283, 24.597326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245142, 24.027042, 24.544525>,  <26.855247, 24.011641, 24.456522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245142, 24.027042, 24.544525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130901, 0.896606, 0.423040,
		-0.180971, -0.441153, 0.878996,
		0.974738, 0.038503, 0.220007,
		27.537563, 24.038593, 24.610527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913452, 24.213078, 25.186781>,  <26.855247, 24.011641, 24.456522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913452, 24.213078, 25.186781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267647, 24.284439, 25.015160>,  <27.480164, 24.327255, 24.912188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267647, 24.284439, 25.015160>,  <26.913452, 24.213078, 25.186781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267647, 24.284439, 25.015160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031168, 0.944083, 0.328230,
		0.463618, -0.277271, 0.841534,
		0.885487, 0.178402, -0.429052,
		27.533293, 24.337959, 24.886444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334116, 24.557377, 25.655678>,  <26.913452, 24.213078, 25.186781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334116, 24.557377, 25.655678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486012, 24.642818, 25.295639>,  <27.577148, 24.694084, 25.079617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486012, 24.642818, 25.295639>,  <27.334116, 24.557377, 25.655678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486012, 24.642818, 25.295639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002968, 0.973254, 0.229713,
		0.925090, -0.084560, 0.370215,
		0.379737, 0.213604, -0.900096,
		27.599934, 24.706900, 25.025610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398333, 25.256172, 25.763126>,  <27.334116, 24.557377, 25.655678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398333, 25.256172, 25.763126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537838, 25.208481, 25.391289>,  <27.621542, 25.179867, 25.168186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537838, 25.208481, 25.391289>,  <27.398333, 25.256172, 25.763126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537838, 25.208481, 25.391289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077553, 0.992145, -0.098154,
		0.933995, -0.037860, 0.355273,
		0.348766, -0.119228, -0.929595,
		27.642467, 25.172712, 25.112410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159340, 25.557091, 25.559921>,  <27.398333, 25.256172, 25.763126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159340, 25.557091, 25.559921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920588, 25.537907, 25.239563>,  <27.777336, 25.526396, 25.047348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920588, 25.537907, 25.239563>,  <28.159340, 25.557091, 25.559921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920588, 25.537907, 25.239563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106291, 0.984686, -0.138183,
		0.795257, -0.167607, -0.582644,
		-0.596882, -0.047961, -0.800894,
		27.741524, 25.523518, 24.999294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385458, 26.099789, 25.128822>,  <28.159340, 25.557091, 25.559921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385458, 26.099789, 25.128822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013670, 26.033497, 24.996990>,  <27.790598, 25.993723, 24.917891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013670, 26.033497, 24.996990>,  <28.385458, 26.099789, 25.128822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013670, 26.033497, 24.996990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154231, 0.986155, -0.060926,
		0.335112, -0.005798, -0.942160,
		-0.929469, -0.165727, -0.329578,
		27.734829, 25.983778, 24.898117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344870, 26.472494, 24.428558>,  <28.385458, 26.099789, 25.128822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344870, 26.472494, 24.428558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969992, 26.415752, 24.556023>,  <27.745066, 26.381706, 24.632502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969992, 26.415752, 24.556023>,  <28.344870, 26.472494, 24.428558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969992, 26.415752, 24.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182119, 0.978160, -0.100178,
		-0.297490, -0.151920, -0.942560,
		-0.937194, -0.141856, 0.318660,
		27.688833, 26.373196, 24.651621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925241, 26.967993, 24.068661>,  <28.344870, 26.472494, 24.428558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925241, 26.967993, 24.068661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664766, 26.861523, 24.352943>,  <27.508482, 26.797642, 24.523514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664766, 26.861523, 24.352943>,  <27.925241, 26.967993, 24.068661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664766, 26.861523, 24.352943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398323, 0.916993, -0.021533,
		-0.645982, -0.297113, -0.703158,
		-0.651188, -0.266174, 0.710708,
		27.469410, 26.781670, 24.566156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273045, 27.167307, 23.848923>,  <27.925241, 26.967993, 24.068661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273045, 27.167307, 23.848923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276667, 27.156345, 24.248756>,  <27.278839, 27.149769, 24.488657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276667, 27.156345, 24.248756>,  <27.273045, 27.167307, 23.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276667, 27.156345, 24.248756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456798, 0.889113, 0.028515,
		-0.889524, -0.456866, -0.004467,
		0.009056, -0.027405, 0.999583,
		27.279383, 27.148123, 24.548632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791832, 27.526377, 23.941515>,  <27.273045, 27.167307, 23.848923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791832, 27.526377, 23.941515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940918, 27.521152, 24.312656>,  <27.030371, 27.518017, 24.535341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940918, 27.521152, 24.312656>,  <26.791832, 27.526377, 23.941515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940918, 27.521152, 24.312656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357085, 0.920884, 0.156404,
		-0.856489, -0.389617, 0.338565,
		0.372717, -0.013062, 0.927853,
		27.052732, 27.517235, 24.591013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202141, 27.722689, 24.305355>,  <26.791832, 27.526377, 23.941515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202141, 27.722689, 24.305355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530327, 27.803371, 24.519329>,  <26.727238, 27.851780, 24.647713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530327, 27.803371, 24.519329>,  <26.202141, 27.722689, 24.305355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530327, 27.803371, 24.519329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347196, 0.919177, 0.185928,
		-0.454195, -0.338274, 0.824183,
		0.820464, 0.201705, 0.534933,
		26.776466, 27.863882, 24.679810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902298, 27.910421, 24.936106>,  <26.202141, 27.722689, 24.305355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902298, 27.910421, 24.936106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280094, 28.041706, 24.930225>,  <26.506771, 28.120478, 24.926697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280094, 28.041706, 24.930225>,  <25.902298, 27.910421, 24.936106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280094, 28.041706, 24.930225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322520, 0.934776, 0.148911,
		0.062615, -0.135904, 0.988741,
		0.944489, 0.328213, -0.014699,
		26.563440, 28.140169, 24.925816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050240, 28.402355, 25.541014>,  <25.902298, 27.910421, 24.936106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050240, 28.402355, 25.541014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306225, 28.491543, 25.246876>,  <26.459816, 28.545055, 25.070393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306225, 28.491543, 25.246876>,  <26.050240, 28.402355, 25.541014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306225, 28.491543, 25.246876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260564, 0.963245, 0.065306,
		0.722879, 0.149811, 0.674539,
		0.639962, 0.222969, -0.735345,
		26.498213, 28.558434, 25.026272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168205, 29.143188, 25.749043>,  <26.050240, 28.402355, 25.541014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168205, 29.143188, 25.749043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352766, 29.080288, 25.399784>,  <26.463503, 29.042547, 25.190229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352766, 29.080288, 25.399784>,  <26.168205, 29.143188, 25.749043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352766, 29.080288, 25.399784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153384, 0.955208, -0.253082,
		0.873832, 0.250699, 0.416615,
		0.461402, -0.157249, -0.873145,
		26.491186, 29.033113, 25.137840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678751, 29.604242, 25.558781>,  <26.168205, 29.143188, 25.749043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678751, 29.604242, 25.558781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575779, 29.488281, 25.190067>,  <26.513996, 29.418705, 24.968840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575779, 29.488281, 25.190067>,  <26.678751, 29.604242, 25.558781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575779, 29.488281, 25.190067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161993, 0.953383, -0.254597,
		0.952614, 0.083773, -0.292418,
		-0.257458, -0.289903, -0.921776,
		26.498550, 29.401312, 24.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911432, 30.163095, 25.202457>,  <26.678751, 29.604242, 25.558781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911432, 30.163095, 25.202457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663408, 29.972141, 24.953419>,  <26.514593, 29.857569, 24.803995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663408, 29.972141, 24.953419>,  <26.911432, 30.163095, 25.202457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663408, 29.972141, 24.953419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359451, 0.878240, -0.315418,
		0.697367, 0.028215, -0.716159,
		-0.620060, -0.477387, -0.622598,
		26.477390, 29.828926, 24.766640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856972, 30.596109, 24.534382>,  <26.911432, 30.163095, 25.202457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856972, 30.596109, 24.534382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542198, 30.352680, 24.493637>,  <26.353334, 30.206623, 24.469191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542198, 30.352680, 24.493637>,  <26.856972, 30.596109, 24.534382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542198, 30.352680, 24.493637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474273, 0.702161, -0.531070,
		0.394720, -0.369604, -0.841183,
		-0.786932, -0.608573, -0.101864,
		26.306118, 30.170109, 24.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672321, 30.746912, 23.851009>,  <26.856972, 30.596109, 24.534382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672321, 30.746912, 23.851009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345695, 30.580643, 24.011227>,  <26.149719, 30.480881, 24.107357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345695, 30.580643, 24.011227>,  <26.672321, 30.746912, 23.851009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345695, 30.580643, 24.011227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568964, 0.462391, -0.680055,
		0.097471, -0.783205, -0.614076,
		-0.816566, -0.415672, 0.400546,
		26.100725, 30.455940, 24.131390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262657, 30.541218, 23.307568>,  <26.672321, 30.746912, 23.851009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262657, 30.541218, 23.307568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019123, 30.568821, 23.623684>,  <25.873003, 30.585382, 23.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019123, 30.568821, 23.623684>,  <26.262657, 30.541218, 23.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019123, 30.568821, 23.623684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678130, 0.471677, -0.563614,
		-0.411657, -0.879067, -0.240374,
		-0.608833, 0.069011, 0.790291,
		25.836473, 30.589523, 23.860771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660530, 30.391346, 22.995773>,  <26.262657, 30.541218, 23.307568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660530, 30.391346, 22.995773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551910, 30.582264, 23.330067>,  <25.486738, 30.696814, 23.530643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551910, 30.582264, 23.330067>,  <25.660530, 30.391346, 22.995773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551910, 30.582264, 23.330067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698116, 0.500060, -0.512420,
		-0.662493, -0.722586, 0.197416,
		-0.271547, 0.477294, 0.835735,
		25.470446, 30.725452, 23.580788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932316, 30.214779, 23.128696>,  <25.660530, 30.391346, 22.995773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932316, 30.214779, 23.128696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030144, 30.549744, 23.324219>,  <25.088840, 30.750723, 23.441532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030144, 30.549744, 23.324219>,  <24.932316, 30.214779, 23.128696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030144, 30.549744, 23.324219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644295, 0.517080, -0.563483,
		-0.724617, -0.177122, 0.666002,
		0.244571, 0.837410, 0.488804,
		25.103516, 30.800966, 23.470860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312393, 30.647554, 23.171064>,  <24.932316, 30.214779, 23.128696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312393, 30.647554, 23.171064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590147, 30.918648, 23.267822>,  <24.756800, 31.081303, 23.325876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590147, 30.918648, 23.267822>,  <24.312393, 30.647554, 23.171064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590147, 30.918648, 23.267822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576438, 0.725084, -0.376792,
		-0.430756, 0.122202, 0.894156,
		0.694383, 0.677731, 0.241893,
		24.798462, 31.121967, 23.340389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.930523, 31.203613, 23.553856>,  <24.312393, 30.647554, 23.171064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.930523, 31.203613, 23.553856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274424, 31.339115, 23.400978>,  <24.480764, 31.420416, 23.309252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274424, 31.339115, 23.400978>,  <23.930523, 31.203613, 23.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274424, 31.339115, 23.400978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494384, 0.739755, -0.456450,
		0.128108, 0.581385, 0.803480,
		0.859751, 0.338753, -0.382196,
		24.532349, 31.440741, 23.286320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.930992, 31.910866, 23.757566>,  <23.930523, 31.203613, 23.553856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.930992, 31.910866, 23.757566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166086, 31.846348, 23.440441>,  <24.307142, 31.807638, 23.250166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166086, 31.846348, 23.440441>,  <23.930992, 31.910866, 23.757566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.166086, 31.846348, 23.440441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549411, 0.639760, -0.537452,
		0.593896, 0.751460, 0.287395,
		0.587737, -0.161293, -0.792811,
		24.342407, 31.797960, 23.202599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215918, 32.596111, 23.390055>,  <23.930992, 31.910866, 23.757566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215918, 32.596111, 23.390055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.131474, 32.258846, 23.192261>,  <24.080807, 32.056488, 23.073584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.131474, 32.258846, 23.192261>,  <24.215918, 32.596111, 23.390055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.131474, 32.258846, 23.192261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660567, 0.495946, -0.563638,
		0.720475, 0.207651, -0.661662,
		-0.211109, -0.843160, -0.494484,
		24.068140, 32.005898, 23.043915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.794825, 33.077976, 22.981546>,  <24.215918, 32.596111, 23.390055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.794825, 33.077976, 22.981546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.944944, 33.447182, 23.015495>,  <24.035017, 33.668705, 23.035864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.944944, 33.447182, 23.015495>,  <23.794825, 33.077976, 22.981546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.944944, 33.447182, 23.015495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265226, 0.194673, -0.944329,
		-0.888147, 0.331896, 0.317867,
		0.375299, 0.923010, 0.084871,
		24.057533, 33.724083, 23.040956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.387577, 33.501183, 22.556253>,  <23.794825, 33.077976, 22.981546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.387577, 33.501183, 22.556253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736845, 33.695499, 22.572155>,  <23.946405, 33.812088, 22.581696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736845, 33.695499, 22.572155>,  <23.387577, 33.501183, 22.556253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.736845, 33.695499, 22.572155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150468, 0.346238, -0.926001,
		-0.463605, 0.802576, 0.375421,
		0.873172, 0.485788, 0.039756,
		23.998796, 33.841236, 22.584082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329353, 34.260761, 22.595745>,  <23.387577, 33.501183, 22.556253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329353, 34.260761, 22.595745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.668404, 34.151176, 22.413986>,  <23.871834, 34.085426, 22.304932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.668404, 34.151176, 22.413986>,  <23.329353, 34.260761, 22.595745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668404, 34.151176, 22.413986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392925, 0.251408, -0.884536,
		0.356570, 0.928298, 0.105452,
		0.847625, -0.273964, -0.454396,
		23.922691, 34.068989, 22.277668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669895, 34.330853, 22.857061>,  <23.329353, 34.260761, 22.595745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669895, 34.330853, 22.857061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.634050, 34.345856, 22.458954>,  <22.612543, 34.354858, 22.220089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.634050, 34.345856, 22.458954>,  <22.669895, 34.330853, 22.857061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.634050, 34.345856, 22.458954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931799, 0.349753, 0.097078,
		0.351740, 0.936091, 0.003603,
		-0.089613, 0.037504, -0.995270,
		22.607166, 34.357105, 22.160374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531364, 35.028030, 22.504814>,  <22.669895, 34.330853, 22.857061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531364, 35.028030, 22.504814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363043, 34.723675, 22.307243>,  <22.262049, 34.541061, 22.188700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363043, 34.723675, 22.307243>,  <22.531364, 35.028030, 22.504814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.363043, 34.723675, 22.307243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881774, 0.470972, 0.025705,
		0.213068, 0.446350, -0.869123,
		-0.420806, -0.760892, -0.493929,
		22.236801, 34.495407, 22.159065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.501158, 35.785427, 22.719358>,  <22.531364, 35.028030, 22.504814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.501158, 35.785427, 22.719358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511078, 35.577805, 22.377605>,  <22.517029, 35.453232, 22.172554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511078, 35.577805, 22.377605>,  <22.501158, 35.785427, 22.719358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511078, 35.577805, 22.377605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986503, 0.125664, -0.104978,
		0.161854, 0.845454, -0.508931,
		0.024799, -0.519053, -0.854383,
		22.518518, 35.422089, 22.121290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.955963, 36.436317, 22.728052>,  <22.501158, 35.785427, 22.719358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.955963, 36.436317, 22.728052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594465, 36.563286, 22.613167>,  <22.377567, 36.639465, 22.544235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594465, 36.563286, 22.613167>,  <22.955963, 36.436317, 22.728052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594465, 36.563286, 22.613167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407861, 0.842231, -0.352556,
		0.129992, -0.435764, -0.890624,
		-0.903743, 0.317422, -0.287214,
		22.323341, 36.658512, 22.527002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994602, 36.537533, 21.968887>,  <22.955963, 36.436317, 22.728052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994602, 36.537533, 21.968887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.695087, 36.756962, 22.117687>,  <22.515379, 36.888618, 22.206966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.695087, 36.756962, 22.117687>,  <22.994602, 36.537533, 21.968887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.695087, 36.756962, 22.117687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231725, 0.742492, -0.628497,
		-0.620985, -0.384409, -0.683087,
		-0.748787, 0.548576, 0.372000,
		22.470451, 36.921535, 22.229286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653757, 36.753807, 21.384699>,  <22.994602, 36.537533, 21.968887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653757, 36.753807, 21.384699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507570, 37.012756, 21.652233>,  <22.419859, 37.168125, 21.812754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507570, 37.012756, 21.652233>,  <22.653757, 36.753807, 21.384699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507570, 37.012756, 21.652233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087541, 0.739262, -0.667704,
		-0.926699, -0.185473, -0.326847,
		-0.365467, 0.647373, 0.668836,
		22.397930, 37.206966, 21.852884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221064, 37.284607, 21.050690>,  <22.653757, 36.753807, 21.384699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221064, 37.284607, 21.050690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.307817, 37.479996, 21.388767>,  <22.359869, 37.597229, 21.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.307817, 37.479996, 21.388767>,  <22.221064, 37.284607, 21.050690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.307817, 37.479996, 21.388767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278044, 0.799031, -0.533142,
		-0.935763, 0.350632, 0.037481,
		0.216885, 0.488474, 0.845195,
		22.372883, 37.626537, 21.642326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875742, 37.852043, 21.014761>,  <22.221064, 37.284607, 21.050690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875742, 37.852043, 21.014761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.161894, 37.942310, 21.279278>,  <22.333586, 37.996471, 21.437988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.161894, 37.942310, 21.279278>,  <21.875742, 37.852043, 21.014761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.161894, 37.942310, 21.279278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187090, 0.849991, -0.492456,
		-0.673222, 0.476014, 0.565847,
		0.715381, 0.225668, 0.661290,
		22.376509, 38.010010, 21.477665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875826, 38.569656, 21.146692>,  <21.875742, 37.852043, 21.014761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875826, 38.569656, 21.146692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.252872, 38.483391, 21.248642>,  <22.479101, 38.431633, 21.309813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.252872, 38.483391, 21.248642>,  <21.875826, 38.569656, 21.146692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.252872, 38.483391, 21.248642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307366, 0.858633, -0.410214,
		-0.130375, 0.465014, 0.875650,
		0.942618, -0.215663, 0.254874,
		22.535658, 38.418694, 21.325104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.093664, 39.213898, 21.485584>,  <21.875826, 38.569656, 21.146692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.093664, 39.213898, 21.485584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430103, 39.013783, 21.403351>,  <22.631968, 38.893711, 21.354012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430103, 39.013783, 21.403351>,  <22.093664, 39.213898, 21.485584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430103, 39.013783, 21.403351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394046, 0.827140, -0.400709,
		0.370516, 0.256027, 0.892843,
		0.841098, -0.500290, -0.205582,
		22.682432, 38.863697, 21.341677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.618855, 39.652210, 21.648043>,  <22.093664, 39.213898, 21.485584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.618855, 39.652210, 21.648043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.778683, 39.394955, 21.386749>,  <22.874580, 39.240601, 21.229973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.778683, 39.394955, 21.386749>,  <22.618855, 39.652210, 21.648043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.778683, 39.394955, 21.386749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459444, 0.757130, -0.464398,
		0.793256, -0.114565, 0.598014,
		0.399570, -0.643140, -0.653234,
		22.898554, 39.202011, 21.190779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.316467, 39.827065, 21.611881>,  <22.618855, 39.652210, 21.648043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.316467, 39.827065, 21.611881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234867, 39.608170, 21.287186>,  <23.185907, 39.476833, 21.092369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234867, 39.608170, 21.287186>,  <23.316467, 39.827065, 21.611881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.234867, 39.608170, 21.287186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644123, 0.549385, -0.532243,
		0.737218, -0.631437, 0.240411,
		-0.204000, -0.547233, -0.811739,
		23.173668, 39.444000, 21.043663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960648, 39.731331, 21.298246>,  <23.316467, 39.827065, 21.611881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960648, 39.731331, 21.298246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.692232, 39.676258, 21.006836>,  <23.531183, 39.643215, 20.831989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.692232, 39.676258, 21.006836>,  <23.960648, 39.731331, 21.298246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.692232, 39.676258, 21.006836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593572, 0.489030, -0.639157,
		0.444270, -0.861332, -0.246436,
		-0.671041, -0.137681, -0.728524,
		23.490919, 39.634953, 20.788279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.338602, 39.566525, 20.694983>,  <23.960648, 39.731331, 21.298246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.338602, 39.566525, 20.694983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.986511, 39.659958, 20.529747>,  <23.775257, 39.716019, 20.430605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.986511, 39.659958, 20.529747>,  <24.338602, 39.566525, 20.694983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.986511, 39.659958, 20.529747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474549, 0.438120, -0.763449,
		0.002654, -0.868038, -0.496491,
		-0.880225, 0.233583, -0.413090,
		23.722445, 39.730034, 20.405821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429607, 39.312672, 20.039696>,  <24.338602, 39.566525, 20.694983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429607, 39.312672, 20.039696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151136, 39.599628, 20.050148>,  <23.984055, 39.771805, 20.056419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151136, 39.599628, 20.050148>,  <24.429607, 39.312672, 20.039696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.151136, 39.599628, 20.050148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444305, 0.459185, -0.769248,
		-0.563853, -0.523923, -0.638416,
		-0.696177, 0.717394, 0.026131,
		23.942284, 39.814846, 20.057987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218716, 39.375351, 19.379726>,  <24.429607, 39.312672, 20.039696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218716, 39.375351, 19.379726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136904, 39.727207, 19.551491>,  <24.087816, 39.938320, 19.654549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136904, 39.727207, 19.551491>,  <24.218716, 39.375351, 19.379726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136904, 39.727207, 19.551491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566087, 0.464177, -0.681238,
		-0.798569, 0.103751, -0.592893,
		-0.204528, 0.879645, 0.429410,
		24.075544, 39.991100, 19.680313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.144060, 39.892761, 18.903891>,  <24.218716, 39.375351, 19.379726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.144060, 39.892761, 18.903891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159882, 40.159927, 19.201164>,  <24.169374, 40.320229, 19.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159882, 40.159927, 19.201164>,  <24.144060, 39.892761, 18.903891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.159882, 40.159927, 19.201164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507532, 0.627250, -0.590736,
		-0.860725, 0.400556, -0.314179,
		0.039554, 0.667917, 0.743184,
		24.171747, 40.360302, 19.424120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185116, 40.495216, 18.557400>,  <24.144060, 39.892761, 18.903891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185116, 40.495216, 18.557400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311304, 40.623192, 18.914749>,  <24.387016, 40.699978, 19.129160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311304, 40.623192, 18.914749>,  <24.185116, 40.495216, 18.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311304, 40.623192, 18.914749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514183, 0.733630, -0.444300,
		-0.797556, 0.599521, 0.066930,
		0.315469, 0.319940, 0.893374,
		24.405945, 40.719173, 19.182762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.059101, 41.263634, 18.631683>,  <24.185116, 40.495216, 18.557400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.059101, 41.263634, 18.631683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353878, 41.166721, 18.884102>,  <24.530745, 41.108574, 19.035553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353878, 41.166721, 18.884102>,  <24.059101, 41.263634, 18.631683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353878, 41.166721, 18.884102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634868, 0.568604, -0.523098,
		-0.232080, 0.786123, 0.572843,
		0.736941, -0.242279, 0.631046,
		24.574961, 41.094036, 19.073416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.321161, 41.877449, 18.809589>,  <24.059101, 41.263634, 18.631683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.321161, 41.877449, 18.809589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612331, 41.618969, 18.901283>,  <24.787033, 41.463879, 18.956299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612331, 41.618969, 18.901283>,  <24.321161, 41.877449, 18.809589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612331, 41.618969, 18.901283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659187, 0.567555, -0.493309,
		0.188675, 0.510199, 0.839106,
		0.727925, -0.646203, 0.229233,
		24.830709, 41.425110, 18.970053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794697, 42.352161, 19.108425>,  <24.321161, 41.877449, 18.809589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794697, 42.352161, 19.108425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987833, 42.020164, 18.996727>,  <25.103714, 41.820965, 18.929708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987833, 42.020164, 18.996727>,  <24.794697, 42.352161, 19.108425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987833, 42.020164, 18.996727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612062, 0.547914, -0.570238,
		0.626295, 0.104419, 0.772561,
		0.482840, -0.829992, -0.279245,
		25.132685, 41.771168, 18.912954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597773, 42.501907, 19.026125>,  <24.794697, 42.352161, 19.108425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597773, 42.501907, 19.026125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524824, 42.166248, 18.821156>,  <25.481056, 41.964855, 18.698174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524824, 42.166248, 18.821156>,  <25.597773, 42.501907, 19.026125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524824, 42.166248, 18.821156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614374, 0.309641, -0.725718,
		0.767650, -0.447169, 0.459079,
		-0.182369, -0.839144, -0.512425,
		25.470114, 41.914505, 18.667427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240154, 42.280544, 18.975412>,  <25.597773, 42.501907, 19.026125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240154, 42.280544, 18.975412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993252, 42.125675, 18.701450>,  <25.845110, 42.032753, 18.537073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993252, 42.125675, 18.701450>,  <26.240154, 42.280544, 18.975412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993252, 42.125675, 18.701450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653675, 0.232091, -0.720307,
		0.437841, -0.892319, 0.109824,
		-0.617255, -0.387169, -0.684906,
		25.808075, 42.009525, 18.495979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704763, 41.920509, 18.577835>,  <26.240154, 42.280544, 18.975412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704763, 41.920509, 18.577835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379133, 42.006065, 18.361858>,  <26.183756, 42.057400, 18.232273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379133, 42.006065, 18.361858>,  <26.704763, 41.920509, 18.577835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379133, 42.006065, 18.361858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545830, -0.035788, -0.837131,
		-0.198378, -0.976202, -0.087614,
		-0.814074, 0.213891, -0.539940,
		26.134911, 42.070232, 18.199877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809368, 41.616421, 17.948292>,  <26.704763, 41.920509, 18.577835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809368, 41.616421, 17.948292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543402, 41.906017, 17.874840>,  <26.383821, 42.079777, 17.830769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543402, 41.906017, 17.874840>,  <26.809368, 41.616421, 17.948292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543402, 41.906017, 17.874840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401215, 0.138834, -0.905401,
		-0.630012, -0.675689, -0.382791,
		-0.664914, 0.723995, -0.183630,
		26.343927, 42.123215, 17.819752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365213, 41.433144, 17.318241>,  <26.809368, 41.616421, 17.948292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365213, 41.433144, 17.318241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431578, 41.822468, 17.381664>,  <26.471395, 42.056061, 17.419718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431578, 41.822468, 17.381664>,  <26.365213, 41.433144, 17.318241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431578, 41.822468, 17.381664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408606, 0.078483, -0.909330,
		-0.897505, 0.215654, -0.384680,
		0.165910, 0.973311, 0.158556,
		26.481350, 42.114460, 17.429232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925518, 41.335167, 16.649996>,  <26.365213, 41.433144, 17.318241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925518, 41.335167, 16.649996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078279, 41.169701, 16.319412>,  <26.169937, 41.070423, 16.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078279, 41.169701, 16.319412>,  <25.925518, 41.335167, 16.649996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078279, 41.169701, 16.319412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558842, -0.608875, 0.562998,
		-0.736101, -0.676871, -0.001360,
		0.381905, -0.413663, -0.826457,
		26.192850, 41.045601, 16.071476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882296, 40.652637, 16.754093>,  <25.925518, 41.335167, 16.649996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882296, 40.652637, 16.754093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174995, 40.733753, 16.493809>,  <26.350615, 40.782421, 16.337639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174995, 40.733753, 16.493809>,  <25.882296, 40.652637, 16.754093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174995, 40.733753, 16.493809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604966, -0.633001, 0.483039,
		-0.313945, -0.747119, -0.585877,
		0.731748, 0.202788, -0.650709,
		26.394520, 40.794590, 16.298595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612965, 39.981201, 16.452089>,  <25.882296, 40.652637, 16.754093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612965, 39.981201, 16.452089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726971, 39.758507, 16.139984>,  <25.795374, 39.624889, 15.952722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726971, 39.758507, 16.139984>,  <25.612965, 39.981201, 16.452089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726971, 39.758507, 16.139984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686877, -0.449139, 0.571379,
		-0.668554, -0.698796, 0.254399,
		0.285017, -0.556739, -0.780261,
		25.812475, 39.591484, 15.905906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608381, 39.293850, 16.589405>,  <25.612965, 39.981201, 16.452089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608381, 39.293850, 16.589405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913832, 39.367218, 16.341782>,  <26.097101, 39.411240, 16.193207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913832, 39.367218, 16.341782>,  <25.608381, 39.293850, 16.589405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913832, 39.367218, 16.341782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613677, -0.504211, 0.607596,
		-0.200691, -0.843877, -0.497588,
		0.763625, 0.183419, -0.619058,
		26.142920, 39.422245, 16.156063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508818, 38.793205, 16.119881>,  <25.608381, 39.293850, 16.589405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508818, 38.793205, 16.119881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899632, 38.725899, 16.067585>,  <26.134119, 38.685513, 16.036207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899632, 38.725899, 16.067585>,  <25.508818, 38.793205, 16.119881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899632, 38.725899, 16.067585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079689, -0.280490, 0.956543,
		-0.197627, -0.944992, -0.260639,
		0.977033, -0.168269, -0.130738,
		26.192741, 38.675419, 16.028364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746519, 38.249607, 16.466541>,  <25.508818, 38.793205, 16.119881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746519, 38.249607, 16.466541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070229, 38.483997, 16.450027>,  <26.264454, 38.624634, 16.440119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070229, 38.483997, 16.450027>,  <25.746519, 38.249607, 16.466541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070229, 38.483997, 16.450027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111603, -0.084366, 0.990165,
		0.576734, -0.805922, -0.133672,
		0.809273, 0.585980, -0.041286,
		26.313011, 38.659790, 16.437641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907736, 38.119930, 15.808943>,  <25.746519, 38.249607, 16.466541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907736, 38.119930, 15.808943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891870, 37.797829, 15.572301>,  <25.882351, 37.604568, 15.430316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891870, 37.797829, 15.572301>,  <25.907736, 38.119930, 15.808943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891870, 37.797829, 15.572301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614606, -0.447161, 0.649852,
		-0.787837, 0.389378, -0.477177,
		-0.039663, -0.805253, -0.591604,
		25.879972, 37.556252, 15.394819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225578, 37.991993, 15.511646>,  <25.907736, 38.119930, 15.808943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225578, 37.991993, 15.511646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410109, 37.655949, 15.625770>,  <25.520826, 37.454323, 15.694243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410109, 37.655949, 15.625770>,  <25.225578, 37.991993, 15.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410109, 37.655949, 15.625770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824666, -0.287399, 0.487162,
		-0.327274, -0.460018, -0.825394,
		0.461321, -0.840110, 0.285303,
		25.548506, 37.403915, 15.711362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883970, 37.308697, 15.380239>,  <25.225578, 37.991993, 15.511646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883970, 37.308697, 15.380239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135904, 37.265091, 15.687856>,  <25.287066, 37.238926, 15.872426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135904, 37.265091, 15.687856>,  <24.883970, 37.308697, 15.380239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135904, 37.265091, 15.687856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767952, -0.235829, 0.595512,
		0.116444, -0.965661, -0.232249,
		0.629834, -0.109012, 0.769042,
		25.324854, 37.232388, 15.918569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682318, 36.702965, 15.698987>,  <24.883970, 37.308697, 15.380239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682318, 36.702965, 15.698987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880795, 36.906029, 15.980718>,  <24.999880, 37.027866, 16.149755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880795, 36.906029, 15.980718>,  <24.682318, 36.702965, 15.698987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880795, 36.906029, 15.980718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773324, -0.110347, 0.624334,
		0.394669, -0.854463, 0.337830,
		0.496192, 0.507657, 0.704327,
		25.029652, 37.058327, 16.192017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495806, 36.309486, 16.305429>,  <24.682318, 36.702965, 15.698987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495806, 36.309486, 16.305429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628162, 36.669365, 16.419308>,  <24.707577, 36.885292, 16.487635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628162, 36.669365, 16.419308>,  <24.495806, 36.309486, 16.305429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628162, 36.669365, 16.419308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731292, 0.053797, 0.679939,
		0.596425, -0.433182, 0.675744,
		0.330891, 0.899700, 0.284697,
		24.727430, 36.939274, 16.504717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523634, 36.350811, 16.939392>,  <24.495806, 36.309486, 16.305429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523634, 36.350811, 16.939392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465361, 36.744469, 16.898930>,  <24.430397, 36.980663, 16.874651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465361, 36.744469, 16.898930>,  <24.523634, 36.350811, 16.939392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465361, 36.744469, 16.898930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693972, -0.028781, 0.719427,
		0.705110, 0.175009, 0.687163,
		-0.145683, 0.984146, -0.101158,
		24.421656, 37.039711, 16.868582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516733, 36.467396, 17.633831>,  <24.523634, 36.350811, 16.939392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516733, 36.467396, 17.633831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362986, 36.786671, 17.448292>,  <24.270737, 36.978237, 17.336969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362986, 36.786671, 17.448292>,  <24.516733, 36.467396, 17.633831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362986, 36.786671, 17.448292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610091, 0.157467, 0.776526,
		0.692856, 0.581462, 0.426442,
		-0.384370, 0.798189, -0.463847,
		24.247675, 37.026127, 17.309137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.557257, 36.915550, 18.094095>,  <24.516733, 36.467396, 17.633831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.557257, 36.915550, 18.094095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279081, 37.084869, 17.861824>,  <24.112177, 37.186462, 17.722462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279081, 37.084869, 17.861824>,  <24.557257, 36.915550, 18.094095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279081, 37.084869, 17.861824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535766, 0.233079, 0.811560,
		0.478877, 0.875494, 0.064699,
		-0.695436, 0.423301, -0.580676,
		24.070450, 37.211861, 17.687622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438820, 37.516373, 18.475204>,  <24.557257, 36.915550, 18.094095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438820, 37.516373, 18.475204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.120441, 37.454758, 18.241028>,  <23.929415, 37.417789, 18.100521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.120441, 37.454758, 18.241028>,  <24.438820, 37.516373, 18.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120441, 37.454758, 18.241028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604294, 0.259729, 0.753240,
		0.036031, 0.953317, -0.299813,
		-0.795947, -0.154035, -0.585442,
		23.881657, 37.408546, 18.065395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.981022, 38.127941, 18.509668>,  <24.438820, 37.516373, 18.475204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.981022, 38.127941, 18.509668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.739649, 37.843987, 18.364384>,  <23.594824, 37.673615, 18.277212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.739649, 37.843987, 18.364384>,  <23.981022, 38.127941, 18.509668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.739649, 37.843987, 18.364384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703106, 0.258795, 0.662319,
		-0.376177, 0.655043, -0.655294,
		-0.603434, -0.709890, -0.363212,
		23.558619, 37.631020, 18.255421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.355032, 38.293880, 18.692814>,  <23.981022, 38.127941, 18.509668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.355032, 38.293880, 18.692814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265259, 37.924614, 18.567978>,  <23.211395, 37.703056, 18.493076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265259, 37.924614, 18.567978>,  <23.355032, 38.293880, 18.692814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265259, 37.924614, 18.567978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870010, 0.045548, 0.490925,
		-0.438989, 0.381701, -0.813384,
		-0.224435, -0.923163, -0.312089,
		23.197927, 37.647667, 18.474352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638220, 38.259995, 18.505955>,  <23.355032, 38.293880, 18.692814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638220, 38.259995, 18.505955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711945, 37.874954, 18.585381>,  <22.756180, 37.643929, 18.633036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711945, 37.874954, 18.585381>,  <22.638220, 38.259995, 18.505955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.711945, 37.874954, 18.585381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887927, -0.076451, 0.453586,
		-0.421442, -0.259911, -0.868811,
		0.184313, -0.962601, 0.198563,
		22.767239, 37.586174, 18.644949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954924, 37.756035, 18.449930>,  <22.638220, 38.259995, 18.505955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954924, 37.756035, 18.449930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221798, 37.551254, 18.666363>,  <22.381922, 37.428387, 18.796223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221798, 37.551254, 18.666363>,  <21.954924, 37.756035, 18.449930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221798, 37.551254, 18.666363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723966, -0.274703, 0.632780,
		-0.175312, -0.813910, -0.553911,
		0.667187, -0.511947, 0.541084,
		22.421953, 37.397671, 18.828688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758539, 36.964169, 18.454142>,  <21.954924, 37.756035, 18.449930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758539, 36.964169, 18.454142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972477, 37.043877, 18.782589>,  <22.100840, 37.091702, 18.979656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972477, 37.043877, 18.782589>,  <21.758539, 36.964169, 18.454142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972477, 37.043877, 18.782589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772054, -0.279614, 0.570744,
		0.343329, -0.939205, 0.004299,
		0.534844, 0.199272, 0.821117,
		22.132931, 37.103657, 19.028923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359962, 36.584274, 18.845457>,  <21.758539, 36.964169, 18.454142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359962, 36.584274, 18.845457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602043, 36.750519, 19.117043>,  <21.747292, 36.850266, 19.279995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602043, 36.750519, 19.117043>,  <21.359962, 36.584274, 18.845457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602043, 36.750519, 19.117043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659532, -0.215859, 0.720016,
		0.445810, -0.883555, 0.143472,
		0.605203, 0.415615, 0.678965,
		21.783604, 36.875202, 19.320732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.519135, 36.114216, 19.351948>,  <21.359962, 36.584274, 18.845457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.519135, 36.114216, 19.351948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.583775, 36.468681, 19.525661>,  <21.622559, 36.681362, 19.629890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.583775, 36.468681, 19.525661>,  <21.519135, 36.114216, 19.351948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583775, 36.468681, 19.525661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590701, -0.265668, 0.761901,
		0.790543, -0.379654, 0.480526,
		0.161598, 0.886163, 0.434284,
		21.632254, 36.734531, 19.655947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621979, 35.960255, 20.075769>,  <21.519135, 36.114216, 19.351948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621979, 35.960255, 20.075769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531265, 36.349819, 20.079193>,  <21.476837, 36.583557, 20.081247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531265, 36.349819, 20.079193>,  <21.621979, 35.960255, 20.075769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.531265, 36.349819, 20.079193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479200, -0.119230, 0.869570,
		0.847901, 0.193104, 0.493735,
		-0.226785, 0.973907, 0.008560,
		21.463230, 36.641991, 20.081760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856497, 36.273258, 20.729935>,  <21.621979, 35.960255, 20.075769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856497, 36.273258, 20.729935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.558346, 36.501423, 20.591923>,  <21.379456, 36.638321, 20.509115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.558346, 36.501423, 20.591923>,  <21.856497, 36.273258, 20.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.558346, 36.501423, 20.591923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401912, 0.028413, 0.915237,
		0.531864, 0.820868, 0.208077,
		-0.745377, 0.570410, -0.345028,
		21.334732, 36.672546, 20.488415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760603, 36.769619, 21.298586>,  <21.856497, 36.273258, 20.729935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760603, 36.769619, 21.298586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424332, 36.791656, 21.083096>,  <21.222569, 36.804878, 20.953802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424332, 36.791656, 21.083096>,  <21.760603, 36.769619, 21.298586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424332, 36.791656, 21.083096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520599, 0.191724, 0.831997,
		0.149121, 0.979901, -0.132498,
		-0.840678, 0.055090, -0.538726,
		21.172129, 36.808182, 20.921478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.518311, 37.299999, 21.436007>,  <21.760603, 36.769619, 21.298586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.518311, 37.299999, 21.436007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186375, 37.133247, 21.287640>,  <20.987213, 37.033195, 21.198620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186375, 37.133247, 21.287640>,  <21.518311, 37.299999, 21.436007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.186375, 37.133247, 21.287640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495040, 0.243265, 0.834121,
		-0.257496, 0.875804, -0.408243,
		-0.829838, -0.416880, -0.370919,
		20.937424, 37.008183, 21.176365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915550, 37.755375, 21.593784>,  <21.518311, 37.299999, 21.436007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915550, 37.755375, 21.593784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757906, 37.392952, 21.532166>,  <20.663319, 37.175499, 21.495195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757906, 37.392952, 21.532166>,  <20.915550, 37.755375, 21.593784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757906, 37.392952, 21.532166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517429, 0.080219, 0.851958,
		-0.759568, 0.415473, -0.500438,
		-0.394111, -0.906061, -0.154046,
		20.639673, 37.121132, 21.485952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150217, 37.817726, 21.568159>,  <20.915550, 37.755375, 21.593784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150217, 37.817726, 21.568159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227032, 37.432728, 21.644821>,  <20.273121, 37.201729, 21.690819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227032, 37.432728, 21.644821>,  <20.150217, 37.817726, 21.568159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227032, 37.432728, 21.644821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365775, 0.111024, 0.924057,
		-0.910676, -0.247556, -0.330734,
		0.192036, -0.962491, 0.191657,
		20.284643, 37.143982, 21.702318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582987, 37.515778, 21.674616>,  <20.150217, 37.817726, 21.568159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582987, 37.515778, 21.674616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.835493, 37.288891, 21.886189>,  <19.986996, 37.152760, 22.013132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.835493, 37.288891, 21.886189>,  <19.582987, 37.515778, 21.674616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.835493, 37.288891, 21.886189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565888, 0.129500, 0.814248,
		-0.530355, -0.813321, -0.239235,
		0.631264, -0.567221, 0.528930,
		20.024872, 37.118725, 22.044867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152296, 37.080524, 21.946516>,  <19.582987, 37.515778, 21.674616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152296, 37.080524, 21.946516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482405, 37.145954, 22.162727>,  <19.680470, 37.185211, 22.292454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482405, 37.145954, 22.162727>,  <19.152296, 37.080524, 21.946516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482405, 37.145954, 22.162727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553493, 0.044231, 0.831678,
		0.112133, -0.985539, 0.127039,
		0.825271, 0.163574, 0.540530,
		19.729986, 37.195026, 22.324886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327570, 36.606049, 22.559307>,  <19.152296, 37.080524, 21.946516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327570, 36.606049, 22.559307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420130, 36.993912, 22.590847>,  <19.475666, 37.226631, 22.609772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420130, 36.993912, 22.590847>,  <19.327570, 36.606049, 22.559307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420130, 36.993912, 22.590847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640580, 0.090866, 0.762496,
		0.732196, -0.226951, 0.642170,
		0.231400, 0.969658, 0.078849,
		19.489550, 37.284809, 22.614502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506834, 36.841606, 23.300028>,  <19.327570, 36.606049, 22.559307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506834, 36.841606, 23.300028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355690, 37.148815, 23.093197>,  <19.265003, 37.333141, 22.969097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355690, 37.148815, 23.093197>,  <19.506834, 36.841606, 23.300028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355690, 37.148815, 23.093197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792730, 0.020161, 0.609240,
		0.478332, 0.640111, 0.601213,
		-0.377860, 0.768018, -0.517079,
		19.242332, 37.379219, 22.938074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269751, 37.442127, 23.736866>,  <19.506834, 36.841606, 23.300028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269751, 37.442127, 23.736866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.038383, 37.472874, 23.412022>,  <18.899563, 37.491322, 23.217115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.038383, 37.472874, 23.412022>,  <19.269751, 37.442127, 23.736866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.038383, 37.472874, 23.412022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813371, 0.021457, 0.581349,
		0.062111, 0.996811, 0.050109,
		-0.578420, 0.076865, -0.812110,
		18.864857, 37.495934, 23.168388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874193, 38.057297, 23.720644>,  <19.269751, 37.442127, 23.736866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874193, 38.057297, 23.720644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687969, 37.764614, 23.521500>,  <18.576235, 37.589005, 23.402014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687969, 37.764614, 23.521500>,  <18.874193, 38.057297, 23.720644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687969, 37.764614, 23.521500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697802, -0.042524, 0.715027,
		-0.544359, 0.680295, -0.490787,
		-0.465559, -0.731704, -0.497860,
		18.548302, 37.545101, 23.372141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.627277, 24.858860, 20.788927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.996565, 24.916859, 20.931274>,  <32.218136, 24.951658, 21.016682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.996565, 24.916859, 20.931274>,  <31.627277, 24.858860, 20.788927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996565, 24.916859, 20.931274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200020, 0.972061, 0.122838,
		-0.328113, -0.184587, 0.926428,
		0.923219, 0.144999, 0.355867,
		32.273529, 24.960358, 21.038034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493984, 25.463110, 21.240515>,  <31.627277, 24.858860, 20.788927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493984, 25.463110, 21.240515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.889589, 25.452030, 21.182430>,  <32.126953, 25.445381, 21.147579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.889589, 25.452030, 21.182430>,  <31.493984, 25.463110, 21.240515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889589, 25.452030, 21.182430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028368, 0.999594, 0.002523,
		0.145082, -0.006615, 0.989398,
		0.989013, -0.027701, -0.145211,
		32.186295, 25.443720, 21.138866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762514, 25.839851, 21.793407>,  <31.493984, 25.463110, 21.240515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762514, 25.839851, 21.793407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045288, 25.827961, 21.510746>,  <32.214951, 25.820826, 21.341148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045288, 25.827961, 21.510746>,  <31.762514, 25.839851, 21.793407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045288, 25.827961, 21.510746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194735, 0.968681, 0.154062,
		0.679943, -0.246522, 0.690583,
		0.706934, -0.029727, -0.706654,
		32.257370, 25.819042, 21.298750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310390, 26.334347, 22.010944>,  <31.762514, 25.839851, 21.793407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310390, 26.334347, 22.010944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451805, 26.286835, 21.639805>,  <32.536655, 26.258327, 21.417122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451805, 26.286835, 21.639805>,  <32.310390, 26.334347, 22.010944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451805, 26.286835, 21.639805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328098, 0.944635, 0.004084,
		0.875993, -0.305869, 0.372935,
		0.353536, -0.118782, -0.927849,
		32.557865, 26.251200, 21.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882053, 26.652290, 21.984814>,  <32.310390, 26.334347, 22.010944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882053, 26.652290, 21.984814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.762028, 26.649414, 21.603256>,  <32.690014, 26.647688, 21.374321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.762028, 26.649414, 21.603256>,  <32.882053, 26.652290, 21.984814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762028, 26.649414, 21.603256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076516, 0.996568, -0.031580,
		0.950847, -0.082464, -0.298480,
		-0.300060, -0.007189, -0.953893,
		32.672009, 26.647257, 21.317089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290668, 27.176197, 21.720558>,  <32.882053, 26.652290, 21.984814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290668, 27.176197, 21.720558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982479, 27.129223, 21.469933>,  <32.797565, 27.101038, 21.319557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982479, 27.129223, 21.469933>,  <33.290668, 27.176197, 21.720558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982479, 27.129223, 21.469933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164064, 0.986305, 0.016887,
		0.615998, 0.115807, -0.779189,
		-0.770473, -0.117434, -0.626562,
		32.751339, 27.093992, 21.281963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278355, 27.760170, 21.254501>,  <33.290668, 27.176197, 21.720558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278355, 27.760170, 21.254501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.909763, 27.612343, 21.206673>,  <32.688610, 27.523647, 21.177975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.909763, 27.612343, 21.206673>,  <33.278355, 27.760170, 21.254501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909763, 27.612343, 21.206673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370469, 0.928716, -0.015432,
		0.116751, 0.030077, -0.992706,
		-0.921478, -0.369569, -0.119571,
		32.633320, 27.501472, 21.170801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986526, 28.304153, 20.816767>,  <33.278355, 27.760170, 21.254501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986526, 28.304153, 20.816767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706646, 28.094055, 21.010479>,  <32.538715, 27.967997, 21.126707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706646, 28.094055, 21.010479>,  <32.986526, 28.304153, 20.816767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706646, 28.094055, 21.010479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552582, 0.827539, 0.099155,
		-0.452843, -0.198227, -0.869275,
		-0.699704, -0.525248, 0.484282,
		32.496735, 27.936481, 21.155764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327702, 28.470829, 20.482885>,  <32.986526, 28.304153, 20.816767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327702, 28.470829, 20.482885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.193554, 28.338215, 20.835613>,  <32.113064, 28.258646, 21.047251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.193554, 28.338215, 20.835613>,  <32.327702, 28.470829, 20.482885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193554, 28.338215, 20.835613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641049, 0.766222, 0.044275,
		-0.690350, -0.550443, -0.469499,
		-0.335370, -0.331537, 0.881822,
		32.092941, 28.238754, 21.100161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636339, 28.519226, 20.490276>,  <32.327702, 28.470829, 20.482885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636339, 28.519226, 20.490276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.704926, 28.504341, 20.884071>,  <31.746077, 28.495411, 21.120348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.704926, 28.504341, 20.884071>,  <31.636339, 28.519226, 20.490276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704926, 28.504341, 20.884071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833879, 0.526664, 0.165142,
		-0.524639, -0.849259, 0.059273,
		0.171465, -0.037213, 0.984487,
		31.756365, 28.493177, 21.179417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034828, 28.344023, 20.816973>,  <31.636339, 28.519226, 20.490276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034828, 28.344023, 20.816973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.231276, 28.514839, 21.120667>,  <31.349144, 28.617329, 21.302883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.231276, 28.514839, 21.120667>,  <31.034828, 28.344023, 20.816973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231276, 28.514839, 21.120667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831233, 0.490383, 0.261870,
		-0.260488, -0.759711, 0.595806,
		0.491119, 0.427040, 0.759236,
		31.378611, 28.642952, 21.348438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703764, 28.205500, 21.347666>,  <31.034828, 28.344023, 20.816973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703764, 28.205500, 21.347666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.901373, 28.538277, 21.448715>,  <31.019938, 28.737942, 21.509344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.901373, 28.538277, 21.448715>,  <30.703764, 28.205500, 21.347666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901373, 28.538277, 21.448715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862868, 0.433444, 0.259971,
		0.106783, -0.346411, 0.931986,
		0.494021, 0.831941, 0.252622,
		31.049580, 28.787859, 21.524502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383856, 28.483070, 21.857470>,  <30.703764, 28.205500, 21.347666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383856, 28.483070, 21.857470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.596912, 28.812775, 21.780647>,  <30.724747, 29.010597, 21.734554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.596912, 28.812775, 21.780647>,  <30.383856, 28.483070, 21.857470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596912, 28.812775, 21.780647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834529, 0.549287, 0.042958,
		0.140902, 0.137394, 0.980443,
		0.532643, 0.824261, -0.192055,
		30.756706, 29.060053, 21.723030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161491, 28.905226, 22.364981>,  <30.383856, 28.483070, 21.857470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161491, 28.905226, 22.364981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.325918, 29.143806, 22.089222>,  <30.424574, 29.286955, 21.923767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.325918, 29.143806, 22.089222>,  <30.161491, 28.905226, 22.364981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325918, 29.143806, 22.089222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790315, 0.610082, 0.056586,
		0.454340, 0.521580, 0.722170,
		0.411069, 0.596451, -0.689397,
		30.449240, 29.322742, 21.882402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990284, 29.628841, 22.534067>,  <30.161491, 28.905226, 22.364981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990284, 29.628841, 22.534067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.098583, 29.676792, 22.152004>,  <30.163563, 29.705563, 21.922766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.098583, 29.676792, 22.152004>,  <29.990284, 29.628841, 22.534067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098583, 29.676792, 22.152004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744228, 0.655409, -0.128701,
		0.610590, 0.745700, 0.266666,
		0.270747, 0.119876, -0.955157,
		30.179808, 29.712755, 21.865458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977859, 30.391521, 22.337004>,  <29.990284, 29.628841, 22.534067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977859, 30.391521, 22.337004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.946180, 30.200180, 21.987167>,  <29.927174, 30.085375, 21.777266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.946180, 30.200180, 21.987167>,  <29.977859, 30.391521, 22.337004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946180, 30.200180, 21.987167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813581, 0.537989, -0.220577,
		0.576033, 0.694081, -0.431785,
		-0.079198, -0.478352, -0.874590,
		29.922421, 30.056675, 21.724791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062967, 30.906158, 21.932116>,  <29.977859, 30.391521, 22.337004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062967, 30.906158, 21.932116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.878136, 30.614681, 21.729931>,  <29.767237, 30.439795, 21.608620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.878136, 30.614681, 21.729931>,  <30.062967, 30.906158, 21.932116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878136, 30.614681, 21.729931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757272, 0.620835, -0.202740,
		0.461543, 0.289089, -0.838693,
		-0.462080, -0.728692, -0.505461,
		29.739511, 30.396074, 21.578293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981245, 31.080404, 21.248314>,  <30.062967, 30.906158, 21.932116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981245, 31.080404, 21.248314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.700235, 30.811295, 21.341122>,  <29.531630, 30.649828, 21.396807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.700235, 30.811295, 21.341122>,  <29.981245, 31.080404, 21.248314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700235, 30.811295, 21.341122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711286, 0.674362, -0.198263,
		-0.023078, -0.304316, -0.952291,
		-0.702523, -0.672776, 0.232018,
		29.489479, 30.609461, 21.410727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432556, 31.167892, 20.732782>,  <29.981245, 31.080404, 21.248314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432556, 31.167892, 20.732782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.247705, 30.953140, 21.015114>,  <29.136795, 30.824289, 21.184513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.247705, 30.953140, 21.015114>,  <29.432556, 31.167892, 20.732782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247705, 30.953140, 21.015114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867126, 0.440342, -0.232791,
		-0.185825, -0.719622, -0.669039,
		-0.462128, -0.536882, 0.705829,
		29.109068, 30.792076, 21.226862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905405, 30.808743, 20.388893>,  <29.432556, 31.167892, 20.732782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905405, 30.808743, 20.388893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821428, 30.854744, 20.777264>,  <28.771042, 30.882345, 21.010286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821428, 30.854744, 20.777264>,  <28.905405, 30.808743, 20.388893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821428, 30.854744, 20.777264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836974, 0.492163, -0.239271,
		-0.505371, -0.862873, -0.007071,
		-0.209941, 0.115003, 0.970927,
		28.758446, 30.889244, 21.068542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243448, 30.782154, 20.419264>,  <28.905405, 30.808743, 20.388893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243448, 30.782154, 20.419264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.322075, 30.938694, 20.778866>,  <28.369251, 31.032618, 20.994627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.322075, 30.938694, 20.778866>,  <28.243448, 30.782154, 20.419264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322075, 30.938694, 20.778866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902033, 0.431565, 0.009362,
		-0.384315, -0.812771, 0.437842,
		0.196566, 0.391350, 0.899003,
		28.381044, 31.056099, 21.048567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571070, 30.842438, 20.901596>,  <28.243448, 30.782154, 20.419264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571070, 30.842438, 20.901596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.836754, 31.104309, 21.045940>,  <27.996164, 31.261433, 21.132547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.836754, 31.104309, 21.045940>,  <27.571070, 30.842438, 20.901596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836754, 31.104309, 21.045940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707243, 0.706696, 0.019670,
		-0.242142, -0.268282, 0.932412,
		0.664210, 0.654680, 0.360861,
		28.036016, 31.300713, 21.154200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240549, 31.098465, 21.559954>,  <27.571070, 30.842438, 20.901596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240549, 31.098465, 21.559954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.467009, 31.330864, 21.326057>,  <27.602884, 31.470303, 21.185720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.467009, 31.330864, 21.326057>,  <27.240549, 31.098465, 21.559954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467009, 31.330864, 21.326057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798789, 0.561815, -0.215176,
		0.203499, 0.588905, 0.782163,
		0.566149, 0.580995, -0.584739,
		27.636852, 31.505163, 21.150635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518183, 31.003874, 21.165735>,  <27.240549, 31.098465, 21.559954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518183, 31.003874, 21.165735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.258085, 31.023914, 20.862507>,  <26.102026, 31.035938, 20.680569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.258085, 31.023914, 20.862507>,  <26.518183, 31.003874, 21.165735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258085, 31.023914, 20.862507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265125, -0.920128, -0.288224,
		-0.711963, -0.388400, 0.585025,
		-0.650244, 0.050100, -0.758072,
		26.063013, 31.038944, 20.635086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124849, 30.468588, 21.286036>,  <26.518183, 31.003874, 21.165735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124849, 30.468588, 21.286036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.101648, 30.572361, 20.900429>,  <26.087729, 30.634624, 20.669064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.101648, 30.572361, 20.900429>,  <26.124849, 30.468588, 21.286036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101648, 30.572361, 20.900429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147787, -0.952773, -0.265299,
		-0.987317, -0.157858, 0.016922,
		-0.058002, 0.259433, -0.964018,
		26.084248, 30.650190, 20.611223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671005, 30.031338, 20.956421>,  <26.124849, 30.468588, 21.286036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671005, 30.031338, 20.956421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.898802, 30.164185, 20.655655>,  <26.035480, 30.243893, 20.475195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.898802, 30.164185, 20.655655>,  <25.671005, 30.031338, 20.956421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898802, 30.164185, 20.655655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307221, -0.934449, -0.180056,
		-0.762427, -0.128464, -0.634195,
		0.569492, 0.332118, -0.751916,
		26.069649, 30.263821, 20.430080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613703, 29.564819, 20.481308>,  <25.671005, 30.031338, 20.956421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613703, 29.564819, 20.481308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.952290, 29.753391, 20.382317>,  <26.155441, 29.866535, 20.322922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.952290, 29.753391, 20.382317>,  <25.613703, 29.564819, 20.481308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952290, 29.753391, 20.382317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444634, -0.881573, -0.158524,
		-0.292901, 0.024150, -0.955838,
		0.846469, 0.471430, -0.247476,
		26.206230, 29.894819, 20.308073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882238, 29.150419, 19.907249>,  <25.613703, 29.564819, 20.481308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882238, 29.150419, 19.907249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174095, 29.372604, 20.066792>,  <26.349209, 29.505915, 20.162516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174095, 29.372604, 20.066792>,  <25.882238, 29.150419, 19.907249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174095, 29.372604, 20.066792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660789, -0.722836, -0.202154,
		0.176017, 0.411058, -0.894455,
		0.729641, 0.555463, 0.398854,
		26.392988, 29.539244, 20.186447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272320, 29.090258, 19.401667>,  <25.882238, 29.150419, 19.907249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272320, 29.090258, 19.401667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.513248, 29.204556, 19.699810>,  <26.657804, 29.273134, 19.878696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.513248, 29.204556, 19.699810>,  <26.272320, 29.090258, 19.401667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513248, 29.204556, 19.699810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620662, -0.754823, -0.212181,
		0.501985, 0.590416, -0.631997,
		0.602321, 0.285745, 0.745359,
		26.693945, 29.290279, 19.923418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000277, 28.992235, 19.129738>,  <26.272320, 29.090258, 19.401667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000277, 28.992235, 19.129738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.017187, 29.009693, 19.528999>,  <27.027334, 29.020168, 19.768557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.017187, 29.009693, 19.528999>,  <27.000277, 28.992235, 19.129738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017187, 29.009693, 19.528999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561049, -0.827690, 0.012427,
		0.826703, 0.559486, -0.059477,
		0.042275, 0.043643, 0.998152,
		27.029871, 29.022787, 19.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664558, 28.824644, 19.333105>,  <27.000277, 28.992235, 19.129738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664558, 28.824644, 19.333105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.482430, 28.757809, 19.682907>,  <27.373152, 28.717707, 19.892788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.482430, 28.757809, 19.682907>,  <27.664558, 28.824644, 19.333105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482430, 28.757809, 19.682907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595850, -0.787024, 0.159861,
		0.661547, 0.593863, 0.457910,
		-0.455322, -0.167091, 0.874507,
		27.345833, 28.707682, 19.945259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181513, 28.754950, 19.899347>,  <27.664558, 28.824644, 19.333105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181513, 28.754950, 19.899347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.869678, 28.543819, 20.034191>,  <27.682577, 28.417141, 20.115097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.869678, 28.543819, 20.034191>,  <28.181513, 28.754950, 19.899347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869678, 28.543819, 20.034191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589356, -0.800388, 0.109718,
		0.211907, 0.284213, 0.935050,
		-0.779586, -0.527828, 0.337110,
		27.635803, 28.385471, 20.135324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395649, 28.320873, 20.442484>,  <28.181513, 28.754950, 19.899347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395649, 28.320873, 20.442484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.042500, 28.149197, 20.366241>,  <27.830610, 28.046190, 20.320496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.042500, 28.149197, 20.366241>,  <28.395649, 28.320873, 20.442484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042500, 28.149197, 20.366241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410911, -0.902517, 0.128902,
		-0.227349, 0.035482, 0.973167,
		-0.882873, -0.429191, -0.190607,
		27.777637, 28.020439, 20.309059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277439, 27.860289, 20.991781>,  <28.395649, 28.320873, 20.442484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277439, 27.860289, 20.991781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.066080, 27.740257, 20.674103>,  <27.939264, 27.668238, 20.483496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.066080, 27.740257, 20.674103>,  <28.277439, 27.860289, 20.991781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066080, 27.740257, 20.674103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484507, -0.874749, 0.008162,
		-0.697172, -0.380481, 0.607607,
		-0.528398, -0.300080, -0.794196,
		27.907560, 27.650234, 20.435844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989801, 27.278103, 21.160257>,  <28.277439, 27.860289, 20.991781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989801, 27.278103, 21.160257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.974230, 27.257992, 20.761066>,  <27.964886, 27.245926, 20.521553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.974230, 27.257992, 20.761066>,  <27.989801, 27.278103, 21.160257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974230, 27.257992, 20.761066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321773, -0.946165, 0.035113,
		-0.946016, -0.319755, 0.053012,
		-0.038930, -0.050276, -0.997976,
		27.962551, 27.242908, 20.461674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706450, 26.599045, 20.977182>,  <27.989801, 27.278103, 21.160257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706450, 26.599045, 20.977182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.887409, 26.743809, 20.651150>,  <27.995985, 26.830667, 20.455530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.887409, 26.743809, 20.651150>,  <27.706450, 26.599045, 20.977182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887409, 26.743809, 20.651150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380630, -0.904889, -0.190520,
		-0.806508, -0.224052, -0.547125,
		0.452400, 0.361908, -0.815081,
		28.023129, 26.852381, 20.406626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548714, 26.074482, 20.520103>,  <27.706450, 26.599045, 20.977182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548714, 26.074482, 20.520103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.854982, 26.269642, 20.352436>,  <28.038744, 26.386738, 20.251835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.854982, 26.269642, 20.352436>,  <27.548714, 26.074482, 20.520103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854982, 26.269642, 20.352436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420762, -0.872804, -0.247331,
		-0.486525, 0.013004, -0.873570,
		0.765672, 0.487898, -0.419170,
		28.084684, 26.416012, 20.226685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714828, 25.745110, 19.905661>,  <27.548714, 26.074482, 20.520103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714828, 25.745110, 19.905661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.049261, 25.942848, 20.000813>,  <28.249922, 26.061491, 20.057903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.049261, 25.942848, 20.000813>,  <27.714828, 25.745110, 19.905661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049261, 25.942848, 20.000813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517936, -0.854223, -0.045216,
		0.180850, 0.161011, -0.970242,
		0.836083, 0.494346, 0.237880,
		28.300087, 26.091152, 20.072176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241243, 25.651033, 19.456562>,  <27.714828, 25.745110, 19.905661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241243, 25.651033, 19.456562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.427668, 25.758419, 19.793777>,  <28.539522, 25.822851, 19.996107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.427668, 25.758419, 19.793777>,  <28.241243, 25.651033, 19.456562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427668, 25.758419, 19.793777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565914, -0.822898, -0.050806,
		0.680093, 0.500765, -0.535450,
		0.466063, 0.268466, 0.843037,
		28.567486, 25.838959, 20.046688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891756, 25.540384, 19.269270>,  <28.241243, 25.651033, 19.456562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891756, 25.540384, 19.269270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.873905, 25.527836, 19.668674>,  <28.863195, 25.520308, 19.908318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.873905, 25.527836, 19.668674>,  <28.891756, 25.540384, 19.269270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873905, 25.527836, 19.668674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614069, -0.789248, 0.002649,
		0.787990, 0.613273, 0.054485,
		-0.044627, -0.031370, 0.998511,
		28.860518, 25.518425, 19.968227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.758326, 25.289988, 19.410110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.522242, 25.267338, 19.732216>,  <29.380592, 25.253748, 19.925478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.522242, 25.267338, 19.732216>,  <29.758326, 25.289988, 19.410110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522242, 25.267338, 19.732216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402947, -0.885041, 0.233100,
		0.699491, 0.462055, 0.545176,
		-0.590209, -0.056626, 0.805262,
		29.345179, 25.250351, 19.973795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209778, 25.253994, 19.936197>,  <29.758326, 25.289988, 19.410110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209778, 25.253994, 19.936197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.866247, 25.096806, 20.067646>,  <29.660130, 25.002493, 20.146515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.866247, 25.096806, 20.067646>,  <30.209778, 25.253994, 19.936197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866247, 25.096806, 20.067646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480951, -0.839408, 0.253142,
		0.176370, 0.375456, 0.909905,
		-0.858825, -0.392973, 0.328622,
		29.608601, 24.978914, 20.166233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381397, 24.959211, 20.527077>,  <30.209778, 25.253994, 19.936197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381397, 24.959211, 20.527077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016485, 24.800152, 20.487846>,  <29.797539, 24.704716, 20.464308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016485, 24.800152, 20.487846>,  <30.381397, 24.959211, 20.527077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016485, 24.800152, 20.487846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374441, -0.906799, 0.193672,
		-0.165948, 0.139959, 0.976152,
		-0.912280, -0.397651, -0.098075,
		29.742802, 24.680857, 20.458424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171576, 24.672562, 21.210463>,  <30.381397, 24.959211, 20.527077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171576, 24.672562, 21.210463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961283, 24.476906, 20.932083>,  <29.835106, 24.359512, 20.765055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961283, 24.476906, 20.932083>,  <30.171576, 24.672562, 21.210463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961283, 24.476906, 20.932083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303002, -0.872159, 0.384095,
		-0.794855, -0.008943, 0.606734,
		-0.525733, -0.489141, -0.695949,
		29.803562, 24.330164, 20.723299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829947, 24.183987, 21.578104>,  <30.171576, 24.672562, 21.210463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829947, 24.183987, 21.578104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.860834, 24.069775, 21.196003>,  <29.879368, 24.001247, 20.966742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.860834, 24.069775, 21.196003>,  <29.829947, 24.183987, 21.578104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860834, 24.069775, 21.196003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213570, -0.931138, 0.295584,
		-0.973871, -0.226839, -0.010922,
		0.077220, -0.285528, -0.955254,
		29.884001, 23.984116, 20.909426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551268, 23.477623, 21.599270>,  <29.829947, 24.183987, 21.578104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551268, 23.477623, 21.599270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754211, 23.499573, 21.255276>,  <29.875978, 23.512743, 21.048880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754211, 23.499573, 21.255276>,  <29.551268, 23.477623, 21.599270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754211, 23.499573, 21.255276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271377, -0.957367, 0.099013,
		-0.817888, -0.283615, -0.500620,
		0.507359, 0.054875, -0.859986,
		29.906420, 23.516035, 20.997280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352100, 22.955334, 21.247526>,  <29.551268, 23.477623, 21.599270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352100, 22.955334, 21.247526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.704887, 23.038216, 21.078197>,  <29.916559, 23.087946, 20.976601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.704887, 23.038216, 21.078197>,  <29.352100, 22.955334, 21.247526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704887, 23.038216, 21.078197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245722, -0.968602, 0.037837,
		-0.402190, -0.137390, -0.905189,
		0.881966, 0.207207, -0.423322,
		29.969477, 23.100378, 20.951200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419483, 22.610903, 20.625517>,  <29.352100, 22.955334, 21.247526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419483, 22.610903, 20.625517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797546, 22.677975, 20.737633>,  <30.024384, 22.718218, 20.804903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797546, 22.677975, 20.737633>,  <29.419483, 22.610903, 20.625517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797546, 22.677975, 20.737633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219814, -0.961287, -0.166159,
		0.241578, 0.218658, -0.945425,
		0.945157, 0.167678, 0.280290,
		30.081093, 22.728277, 20.821720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711073, 22.277925, 20.147055>,  <29.419483, 22.610903, 20.625517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711073, 22.277925, 20.147055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995701, 22.315266, 20.425610>,  <30.166477, 22.337669, 20.592743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995701, 22.315266, 20.425610>,  <29.711073, 22.277925, 20.147055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995701, 22.315266, 20.425610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228209, -0.968105, -0.103411,
		0.664523, 0.232505, -0.710177,
		0.711569, 0.093350, 0.696387,
		30.209171, 22.343271, 20.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189024, 21.935204, 19.879171>,  <29.711073, 22.277925, 20.147055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189024, 21.935204, 19.879171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267157, 21.930927, 20.271442>,  <30.314035, 21.928362, 20.506805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267157, 21.930927, 20.271442>,  <30.189024, 21.935204, 19.879171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267157, 21.930927, 20.271442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146064, -0.988472, -0.039866,
		0.969800, 0.151029, -0.191516,
		0.195329, -0.010689, 0.980679,
		30.325756, 21.927721, 20.565647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685759, 21.421196, 19.933359>,  <30.189024, 21.935204, 19.879171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685759, 21.421196, 19.933359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561668, 21.478260, 20.309319>,  <30.487215, 21.512499, 20.534895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561668, 21.478260, 20.309319>,  <30.685759, 21.421196, 19.933359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561668, 21.478260, 20.309319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115661, -0.975668, 0.186263,
		0.943601, 0.166493, 0.286176,
		-0.310224, 0.142659, 0.939898,
		30.468601, 21.521057, 20.591288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187807, 21.245279, 20.388449>,  <30.685759, 21.421196, 19.933359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187807, 21.245279, 20.388449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829815, 21.202919, 20.561790>,  <30.615019, 21.177504, 20.665794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829815, 21.202919, 20.561790>,  <31.187807, 21.245279, 20.388449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829815, 21.202919, 20.561790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280008, -0.889580, 0.360893,
		0.347283, 0.444335, 0.825810,
		-0.894980, -0.105901, 0.433353,
		30.561321, 21.171148, 20.691797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408903, 20.849367, 20.926922>,  <31.187807, 21.245279, 20.388449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408903, 20.849367, 20.926922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011494, 20.804424, 20.933720>,  <30.773048, 20.777458, 20.937799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011494, 20.804424, 20.933720>,  <31.408903, 20.849367, 20.926922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011494, 20.804424, 20.933720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110204, -0.916180, 0.385316,
		-0.027723, 0.384693, 0.922628,
		-0.993522, -0.112359, 0.016996,
		30.713436, 20.770716, 20.938818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215601, 20.571119, 21.650581>,  <31.408903, 20.849367, 20.926922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215601, 20.571119, 21.650581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945183, 20.482643, 21.369431>,  <30.782932, 20.429558, 21.200739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945183, 20.482643, 21.369431>,  <31.215601, 20.571119, 21.650581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945183, 20.482643, 21.369431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041217, -0.941038, 0.335781,
		-0.735708, 0.255973, 0.627066,
		-0.676044, -0.221191, -0.702879,
		30.742371, 20.416286, 21.158567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733820, 20.250486, 22.072744>,  <31.215601, 20.571119, 21.650581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733820, 20.250486, 22.072744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.691662, 20.137676, 21.691303>,  <30.666367, 20.069990, 21.462439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.691662, 20.137676, 21.691303>,  <30.733820, 20.250486, 22.072744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691662, 20.137676, 21.691303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190366, -0.935485, 0.297706,
		-0.976039, 0.212910, 0.044909,
		-0.105397, -0.282023, -0.953601,
		30.660044, 20.053070, 21.405224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121706, 19.895271, 22.080521>,  <30.733820, 20.250486, 22.072744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121706, 19.895271, 22.080521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.359758, 19.776764, 21.781712>,  <30.502590, 19.705660, 21.602427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.359758, 19.776764, 21.781712>,  <30.121706, 19.895271, 22.080521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359758, 19.776764, 21.781712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170936, -0.954959, 0.242558,
		-0.785238, -0.016661, -0.618971,
		0.595133, -0.296270, -0.747022,
		30.538298, 19.687883, 21.557606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991543, 19.154255, 22.041239>,  <30.121706, 19.895271, 22.080521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991543, 19.154255, 22.041239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.286276, 19.174358, 21.771557>,  <30.463116, 19.186420, 21.609747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.286276, 19.174358, 21.771557>,  <29.991543, 19.154255, 22.041239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286276, 19.174358, 21.771557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067768, -0.997701, -0.000308,
		-0.672671, -0.045462, -0.738544,
		0.736832, 0.050257, -0.674205,
		30.507326, 19.189436, 21.569296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741899, 18.621485, 21.718563>,  <29.991543, 19.154255, 22.041239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741899, 18.621485, 21.718563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125093, 18.687710, 21.624878>,  <30.355009, 18.727446, 21.568666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125093, 18.687710, 21.624878>,  <29.741899, 18.621485, 21.718563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125093, 18.687710, 21.624878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185096, -0.980642, 0.063876,
		-0.219102, -0.104544, -0.970085,
		0.957984, 0.165563, -0.234212,
		30.412489, 18.737379, 21.554615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776978, 18.223545, 21.201252>,  <29.741899, 18.621485, 21.718563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776978, 18.223545, 21.201252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.155392, 18.276001, 21.319786>,  <30.382441, 18.307474, 21.390907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.155392, 18.276001, 21.319786>,  <29.776978, 18.223545, 21.201252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155392, 18.276001, 21.319786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142873, -0.989574, -0.018186,
		0.290863, 0.059543, -0.954910,
		0.946037, 0.131142, 0.296337,
		30.439203, 18.315344, 21.408688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155197, 17.693922, 20.856302>,  <29.776978, 18.223545, 21.201252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155197, 17.693922, 20.856302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410151, 17.805183, 21.143738>,  <30.563122, 17.871941, 21.316200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410151, 17.805183, 21.143738>,  <30.155197, 17.693922, 20.856302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410151, 17.805183, 21.143738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314295, -0.945318, 0.087141,
		0.703534, 0.170307, -0.689953,
		0.637384, 0.278155, 0.718590,
		30.601366, 17.888630, 21.359314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846657, 17.423109, 20.695135>,  <30.155197, 17.693922, 20.856302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846657, 17.423109, 20.695135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837175, 17.480927, 21.090820>,  <30.831486, 17.515617, 21.328232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837175, 17.480927, 21.090820>,  <30.846657, 17.423109, 20.695135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837175, 17.480927, 21.090820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369602, -0.918119, 0.143010,
		0.928888, 0.369006, -0.031661,
		-0.023703, 0.144542, 0.989215,
		30.830065, 17.524290, 21.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455763, 17.201475, 20.918367>,  <30.846657, 17.423109, 20.695135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455763, 17.201475, 20.918367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228317, 17.186733, 21.247078>,  <31.091850, 17.177887, 21.444304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228317, 17.186733, 21.247078>,  <31.455763, 17.201475, 20.918367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228317, 17.186733, 21.247078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354352, -0.912530, 0.204262,
		0.742368, 0.407345, 0.531940,
		-0.568616, -0.036857, 0.821777,
		31.057732, 17.175676, 21.493610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814192, 16.654671, 21.228481>,  <31.455763, 17.201475, 20.918367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814192, 16.654671, 21.228481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.498896, 16.625217, 21.472858>,  <31.309717, 16.607546, 21.619486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.498896, 16.625217, 21.472858>,  <31.814192, 16.654671, 21.228481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498896, 16.625217, 21.472858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302842, -0.910683, 0.280970,
		0.535688, 0.406491, 0.740137,
		-0.788242, -0.073632, 0.610944,
		31.262423, 16.603128, 21.656141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258045, 17.315592, 21.204155>,  <31.814192, 16.654671, 21.228481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258045, 17.315592, 21.204155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591148, 17.151947, 21.353363>,  <32.791012, 17.053761, 21.442888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591148, 17.151947, 21.353363>,  <32.258045, 17.315592, 21.204155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591148, 17.151947, 21.353363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220321, 0.862998, 0.454635,
		-0.507911, -0.296417, 0.808804,
		0.832757, -0.409111, 0.373019,
		32.840977, 17.029213, 21.465269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179676, 17.231167, 22.000145>,  <32.258045, 17.315592, 21.204155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179676, 17.231167, 22.000145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.559799, 17.274536, 21.883423>,  <32.787872, 17.300558, 21.813389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.559799, 17.274536, 21.883423>,  <32.179676, 17.231167, 22.000145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559799, 17.274536, 21.883423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096494, 0.788613, 0.607272,
		0.295964, -0.605255, 0.738966,
		0.950313, 0.108425, -0.291805,
		32.844894, 17.307064, 21.795881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587746, 17.467760, 22.631239>,  <32.179676, 17.231167, 22.000145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587746, 17.467760, 22.631239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815750, 17.557114, 22.314964>,  <32.952553, 17.610725, 22.125200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815750, 17.557114, 22.314964>,  <32.587746, 17.467760, 22.631239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815750, 17.557114, 22.314964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111921, 0.932252, 0.344063,
		0.813978, -0.284615, 0.506394,
		0.570013, 0.223383, -0.790687,
		32.986755, 17.624128, 22.077759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140461, 17.864178, 22.908115>,  <32.587746, 17.467760, 22.631239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140461, 17.864178, 22.908115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163704, 17.948059, 22.517700>,  <33.177650, 17.998388, 22.283451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163704, 17.948059, 22.517700>,  <33.140461, 17.864178, 22.908115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163704, 17.948059, 22.517700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102548, 0.971264, 0.214781,
		0.993029, -0.112571, 0.034934,
		0.058108, 0.209702, -0.976037,
		33.181137, 18.010969, 22.224890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769070, 18.229633, 22.768196>,  <33.140461, 17.864178, 22.908115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769070, 18.229633, 22.768196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527569, 18.334969, 22.467228>,  <33.382668, 18.398170, 22.286646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527569, 18.334969, 22.467228>,  <33.769070, 18.229633, 22.768196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527569, 18.334969, 22.467228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207282, 0.963255, 0.170803,
		0.769753, -0.052841, -0.636151,
		-0.603751, 0.263339, -0.752421,
		33.346443, 18.413971, 22.241501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143585, 18.792868, 22.501944>,  <33.769070, 18.229633, 22.768196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143585, 18.792868, 22.501944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772430, 18.822479, 22.355766>,  <33.549740, 18.840246, 22.268059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772430, 18.822479, 22.355766>,  <34.143585, 18.792868, 22.501944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772430, 18.822479, 22.355766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084727, 0.996315, -0.013307,
		0.363112, -0.043311, -0.930738,
		-0.927885, 0.074027, -0.365444,
		33.494064, 18.844687, 22.246134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231098, 19.277218, 22.013477>,  <34.143585, 18.792868, 22.501944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231098, 19.277218, 22.013477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836079, 19.278873, 22.076374>,  <33.599068, 19.279867, 22.114113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836079, 19.278873, 22.076374>,  <34.231098, 19.277218, 22.013477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836079, 19.278873, 22.076374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000466, 0.999573, -0.029227,
		-0.157298, -0.028936, -0.987127,
		-0.987551, 0.004137, 0.157244,
		33.539814, 19.280115, 22.123547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870785, 19.700594, 21.440868>,  <34.231098, 19.277218, 22.013477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870785, 19.700594, 21.440868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631584, 19.693890, 21.761395>,  <33.488064, 19.689867, 21.953711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631584, 19.693890, 21.761395>,  <33.870785, 19.700594, 21.440868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631584, 19.693890, 21.761395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125697, 0.989371, -0.073113,
		-0.791574, -0.144446, -0.593755,
		-0.598005, -0.016759, 0.801317,
		33.452183, 19.688862, 22.001789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476608, 20.235653, 21.289648>,  <33.870785, 19.700594, 21.440868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476608, 20.235653, 21.289648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.393551, 20.164364, 21.674381>,  <33.343716, 20.121590, 21.905222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.393551, 20.164364, 21.674381>,  <33.476608, 20.235653, 21.289648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393551, 20.164364, 21.674381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134205, 0.979155, 0.152461,
		-0.968955, -0.097426, -0.227230,
		-0.207640, -0.178224, 0.961833,
		33.331261, 20.110897, 21.962931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814724, 20.504360, 21.378674>,  <33.476608, 20.235653, 21.289648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814724, 20.504360, 21.378674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019894, 20.490395, 21.721764>,  <33.142994, 20.482016, 21.927618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019894, 20.490395, 21.721764>,  <32.814724, 20.504360, 21.378674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019894, 20.490395, 21.721764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289655, 0.933536, 0.211213,
		-0.808092, -0.356780, 0.468717,
		0.512921, -0.034913, 0.857726,
		33.173771, 20.479921, 21.979082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314659, 20.573557, 21.897840>,  <32.814724, 20.504360, 21.378674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314659, 20.573557, 21.897840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653522, 20.664967, 22.089714>,  <32.856842, 20.719812, 22.204838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653522, 20.664967, 22.089714>,  <32.314659, 20.573557, 21.897840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653522, 20.664967, 22.089714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329214, 0.934370, 0.136276,
		-0.417059, -0.273366, 0.866794,
		0.847160, 0.228526, 0.479684,
		32.907669, 20.733524, 22.233620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108356, 20.838064, 22.517738>,  <32.314659, 20.573557, 21.897840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108356, 20.838064, 22.517738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476707, 20.961750, 22.422771>,  <32.697720, 21.035961, 22.365791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476707, 20.961750, 22.422771>,  <32.108356, 20.838064, 22.517738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476707, 20.961750, 22.422771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346318, 0.928499, -0.133994,
		0.179008, 0.205614, 0.962122,
		0.920880, 0.309214, -0.237416,
		32.752972, 21.054514, 22.351547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091076, 21.590275, 22.644072>,  <32.108356, 20.838064, 22.517738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091076, 21.590275, 22.644072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.437401, 21.553581, 22.447315>,  <32.645195, 21.531565, 22.329262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.437401, 21.553581, 22.447315>,  <32.091076, 21.590275, 22.644072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437401, 21.553581, 22.447315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128295, 0.909491, -0.395431,
		0.483645, 0.405476, 0.775679,
		0.865811, -0.091733, -0.491891,
		32.697144, 21.526062, 22.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480339, 22.140446, 22.885530>,  <32.091076, 21.590275, 22.644072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480339, 22.140446, 22.885530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648582, 22.055801, 22.532642>,  <32.749527, 22.005014, 22.320910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648582, 22.055801, 22.532642>,  <32.480339, 22.140446, 22.885530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648582, 22.055801, 22.532642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082242, 0.959520, -0.269364,
		0.903508, 0.185852, 0.386176,
		0.420606, -0.211613, -0.882219,
		32.774765, 21.992317, 22.267977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965252, 22.666765, 22.856895>,  <32.480339, 22.140446, 22.885530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965252, 22.666765, 22.856895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877563, 22.535099, 22.489506>,  <32.824951, 22.456099, 22.269072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877563, 22.535099, 22.489506>,  <32.965252, 22.666765, 22.856895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877563, 22.535099, 22.489506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238901, 0.930824, -0.276573,
		0.945975, 0.158794, -0.282693,
		-0.219219, -0.329167, -0.918473,
		32.811798, 22.436350, 22.213964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443626, 22.977612, 22.415081>,  <32.965252, 22.666765, 22.856895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443626, 22.977612, 22.415081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154716, 22.864025, 22.162834>,  <32.981369, 22.795874, 22.011486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154716, 22.864025, 22.162834>,  <33.443626, 22.977612, 22.415081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154716, 22.864025, 22.162834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026678, 0.899702, -0.435689,
		0.691088, -0.331512, -0.642260,
		-0.722279, -0.283965, -0.630617,
		32.938034, 22.778835, 21.973650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595047, 23.244032, 21.694065>,  <33.443626, 22.977612, 22.415081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595047, 23.244032, 21.694065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213581, 23.139423, 21.634560>,  <32.984703, 23.076658, 21.598856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213581, 23.139423, 21.634560>,  <33.595047, 23.244032, 21.694065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213581, 23.139423, 21.634560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126398, 0.796932, -0.590697,
		0.273034, -0.544524, -0.793062,
		-0.953665, -0.261521, -0.148763,
		32.927483, 23.060966, 21.589931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568741, 23.365625, 21.035786>,  <33.595047, 23.244032, 21.694065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568741, 23.365625, 21.035786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201038, 23.351852, 21.192642>,  <32.980415, 23.343588, 21.286757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201038, 23.351852, 21.192642>,  <33.568741, 23.365625, 21.035786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201038, 23.351852, 21.192642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212567, 0.881867, -0.420863,
		-0.331326, -0.470239, -0.817984,
		-0.919259, -0.034434, 0.392143,
		32.925259, 23.341522, 21.310286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097610, 23.510668, 20.493898>,  <33.568741, 23.365625, 21.035786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097610, 23.510668, 20.493898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915009, 23.600639, 20.838226>,  <32.805447, 23.654621, 21.044823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915009, 23.600639, 20.838226>,  <33.097610, 23.510668, 20.493898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915009, 23.600639, 20.838226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245713, 0.898018, -0.364950,
		-0.855120, -0.378116, -0.354679,
		-0.456502, 0.224927, 0.860822,
		32.778057, 23.668118, 21.096474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654346, 23.891945, 20.280312>,  <33.097610, 23.510668, 20.493898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654346, 23.891945, 20.280312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632061, 24.003742, 20.663723>,  <32.618690, 24.070822, 20.893770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632061, 24.003742, 20.663723>,  <32.654346, 23.891945, 20.280312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632061, 24.003742, 20.663723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093550, 0.954336, -0.283710,
		-0.994055, -0.105476, -0.027020,
		-0.055711, 0.279495, 0.958529,
		32.615349, 24.087591, 20.951283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084969, 24.346519, 20.261669>,  <32.654346, 23.891945, 20.280312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084969, 24.346519, 20.261669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279758, 24.428791, 20.601212>,  <32.396633, 24.478153, 20.804937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279758, 24.428791, 20.601212>,  <32.084969, 24.346519, 20.261669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279758, 24.428791, 20.601212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241475, 0.965700, -0.095460,
		-0.839375, -0.158491, 0.519933,
		0.486970, 0.205677, 0.848856,
		32.425850, 24.490494, 20.855869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.988462, 42.270382, 17.532299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.329597, 42.206039, 17.731014>,  <25.534279, 42.167435, 17.850243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.329597, 42.206039, 17.731014>,  <24.988462, 42.270382, 17.532299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329597, 42.206039, 17.731014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491675, -0.567769, 0.660223,
		0.175862, -0.807319, -0.563301,
		0.852835, -0.160852, 0.496788,
		25.585447, 42.157784, 17.880051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014044, 41.535397, 17.606113>,  <24.988462, 42.270382, 17.532299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014044, 41.535397, 17.606113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.283493, 41.653481, 17.877136>,  <25.445162, 41.724331, 18.039751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.283493, 41.653481, 17.877136>,  <25.014044, 41.535397, 17.606113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283493, 41.653481, 17.877136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316326, -0.713391, 0.625308,
		0.667960, -0.635551, -0.387174,
		0.673622, 0.295208, 0.677559,
		25.485580, 41.742043, 18.080404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271753, 40.853195, 18.029263>,  <25.014044, 41.535397, 17.606113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271753, 40.853195, 18.029263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.375139, 41.170372, 18.249966>,  <25.437170, 41.360680, 18.382387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.375139, 41.170372, 18.249966>,  <25.271753, 40.853195, 18.029263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375139, 41.170372, 18.249966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341044, -0.459488, 0.820098,
		0.903817, -0.400141, 0.151667,
		0.258465, 0.792943, 0.551758,
		25.452679, 41.408257, 18.415493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735676, 40.652298, 18.647575>,  <25.271753, 40.853195, 18.029263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735676, 40.652298, 18.647575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.554457, 40.997356, 18.737541>,  <25.445724, 41.204391, 18.791521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.554457, 40.997356, 18.737541>,  <25.735676, 40.652298, 18.647575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554457, 40.997356, 18.737541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484383, -0.450002, 0.750247,
		0.748411, 0.230953, 0.621725,
		-0.453049, 0.862646, 0.224917,
		25.418541, 41.256149, 18.805016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791477, 40.688515, 19.373573>,  <25.735676, 40.652298, 18.647575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791477, 40.688515, 19.373573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.496941, 40.939747, 19.272923>,  <25.320219, 41.090485, 19.212532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.496941, 40.939747, 19.272923>,  <25.791477, 40.688515, 19.373573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496941, 40.939747, 19.272923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635164, -0.513494, 0.576968,
		0.233174, 0.584669, 0.777041,
		-0.736341, 0.628082, -0.251627,
		25.276039, 41.128170, 19.197435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483475, 40.968151, 20.049795>,  <25.791477, 40.688515, 19.373573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483475, 40.968151, 20.049795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.220976, 40.987839, 19.748619>,  <25.063477, 40.999653, 19.567913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.220976, 40.987839, 19.748619>,  <25.483475, 40.968151, 20.049795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220976, 40.987839, 19.748619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704823, -0.396234, 0.588407,
		-0.269377, 0.916829, 0.294721,
		-0.656247, 0.049222, -0.752939,
		25.024101, 41.002605, 19.522738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918781, 41.084671, 20.316900>,  <25.483475, 40.968151, 20.049795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918781, 41.084671, 20.316900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.781059, 40.946045, 19.967880>,  <24.698425, 40.862869, 19.758469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.781059, 40.946045, 19.967880>,  <24.918781, 41.084671, 20.316900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781059, 40.946045, 19.967880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756109, -0.448576, 0.476527,
		-0.556554, 0.823815, -0.107595,
		-0.344305, -0.346566, -0.872551,
		24.677767, 40.842075, 19.706116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256285, 41.296276, 20.271296>,  <24.918781, 41.084671, 20.316900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256285, 41.296276, 20.271296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.224014, 40.992821, 20.012695>,  <24.204653, 40.810749, 19.857534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.224014, 40.992821, 20.012695>,  <24.256285, 41.296276, 20.271296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224014, 40.992821, 20.012695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628077, -0.464950, 0.623971,
		-0.773958, 0.456392, -0.438972,
		-0.080675, -0.758635, -0.646501,
		24.199812, 40.765228, 19.818745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.609787, 40.992931, 20.460785>,  <24.256285, 41.296276, 20.271296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.609787, 40.992931, 20.460785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.740431, 40.710255, 20.209732>,  <23.818817, 40.540649, 20.059101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.740431, 40.710255, 20.209732>,  <23.609787, 40.992931, 20.460785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.740431, 40.710255, 20.209732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713531, -0.619839, 0.326608,
		-0.619839, 0.341161, -0.706688,
		-0.326608, 0.706688, 0.627630,
		23.838413, 40.498249, 20.021442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.979593, 40.740623, 20.150391>,  <23.609787, 40.992931, 20.460785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.979593, 40.740623, 20.150391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.263229, 40.460999, 20.113514>,  <23.433411, 40.293224, 20.091389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.263229, 40.460999, 20.113514>,  <22.979593, 40.740623, 20.150391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.263229, 40.460999, 20.113514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653834, -0.700823, 0.285216,
		-0.263993, -0.141967, -0.954019,
		0.709090, -0.699066, -0.092189,
		23.475956, 40.251278, 20.085857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596182, 40.155308, 19.992460>,  <22.979593, 40.740623, 20.150391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596182, 40.155308, 19.992460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954037, 40.028763, 20.118660>,  <23.168749, 39.952835, 20.194380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954037, 40.028763, 20.118660>,  <22.596182, 40.155308, 19.992460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954037, 40.028763, 20.118660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439721, -0.748602, 0.496227,
		0.079196, -0.582674, -0.808838,
		0.894636, -0.316364, 0.315500,
		23.222427, 39.933853, 20.213310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.667788, 39.444275, 19.788872>,  <22.596182, 40.155308, 19.992460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.667788, 39.444275, 19.788872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.908800, 39.494198, 20.104183>,  <23.053408, 39.524151, 20.293369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.908800, 39.494198, 20.104183>,  <22.667788, 39.444275, 19.788872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908800, 39.494198, 20.104183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466641, -0.746184, 0.474823,
		0.647459, -0.653937, -0.391360,
		0.602531, 0.124804, 0.788277,
		23.089560, 39.531639, 20.340666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045540, 38.780025, 19.896538>,  <22.667788, 39.444275, 19.788872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045540, 38.780025, 19.896538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057171, 38.977276, 20.244328>,  <23.064150, 39.095627, 20.453001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057171, 38.977276, 20.244328>,  <23.045540, 38.780025, 19.896538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057171, 38.977276, 20.244328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325214, -0.817848, 0.474722,
		0.945193, -0.296569, 0.136589,
		0.029079, 0.493124, 0.869473,
		23.065895, 39.125214, 20.505169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.440351, 38.398090, 20.338354>,  <23.045540, 38.780025, 19.896538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.440351, 38.398090, 20.338354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.275291, 38.641499, 20.609478>,  <23.176256, 38.787544, 20.772152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.275291, 38.641499, 20.609478>,  <23.440351, 38.398090, 20.338354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.275291, 38.641499, 20.609478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074096, -0.764074, 0.640859,
		0.907872, 0.214226, 0.360382,
		-0.412648, 0.608521, 0.677808,
		23.151497, 38.824055, 20.812820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.724480, 38.235142, 21.010508>,  <23.440351, 38.398090, 20.338354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.724480, 38.235142, 21.010508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.388641, 38.435238, 21.095207>,  <23.187140, 38.555298, 21.146027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.388641, 38.435238, 21.095207>,  <23.724480, 38.235142, 21.010508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.388641, 38.435238, 21.095207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247376, -0.699145, 0.670821,
		0.483618, 0.510836, 0.710746,
		-0.839594, 0.500243, 0.211751,
		23.136763, 38.585312, 21.158731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.664036, 38.113789, 21.807533>,  <23.724480, 38.235142, 21.010508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.664036, 38.113789, 21.807533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.303383, 38.237114, 21.686207>,  <23.086992, 38.311111, 21.613411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.303383, 38.237114, 21.686207>,  <23.664036, 38.113789, 21.807533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303383, 38.237114, 21.686207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432480, -0.650348, 0.624508,
		-0.004716, 0.694254, 0.719714,
		-0.901631, 0.308316, -0.303318,
		23.032894, 38.329609, 21.595211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.277962, 38.223251, 22.446804>,  <23.664036, 38.113789, 21.807533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.277962, 38.223251, 22.446804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.037090, 38.154736, 22.134895>,  <22.892567, 38.113628, 21.947750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.037090, 38.154736, 22.134895>,  <23.277962, 38.223251, 22.446804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.037090, 38.154736, 22.134895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455869, -0.728059, 0.511971,
		-0.655412, 0.663771, 0.360338,
		-0.602178, -0.171285, -0.779771,
		22.856438, 38.103352, 21.900965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815399, 37.998230, 22.770073>,  <23.277962, 38.223251, 22.446804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815399, 37.998230, 22.770073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686972, 37.901802, 22.403728>,  <22.609915, 37.843945, 22.183922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686972, 37.901802, 22.403728>,  <22.815399, 37.998230, 22.770073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686972, 37.901802, 22.403728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418330, -0.831504, 0.365516,
		-0.849656, 0.500488, 0.166125,
		-0.321069, -0.241067, -0.915861,
		22.590651, 37.829483, 22.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120995, 37.843945, 22.947395>,  <22.815399, 37.998230, 22.770073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120995, 37.843945, 22.947395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207424, 37.659492, 22.603146>,  <22.259281, 37.548820, 22.396597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207424, 37.659492, 22.603146>,  <22.120995, 37.843945, 22.947395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207424, 37.659492, 22.603146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421248, -0.839216, 0.343899,
		-0.880830, 0.288228, -0.375584,
		0.216075, -0.461130, -0.860622,
		22.272247, 37.521152, 22.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.428158, 37.645096, 22.641565>,  <22.120995, 37.843945, 22.947395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.428158, 37.645096, 22.641565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.740425, 37.423679, 22.525532>,  <21.927786, 37.290829, 22.455912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.740425, 37.423679, 22.525532>,  <21.428158, 37.645096, 22.641565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740425, 37.423679, 22.525532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475920, -0.827421, 0.298119,
		-0.405044, -0.094675, -0.909382,
		0.780666, -0.553544, -0.290084,
		21.974625, 37.257618, 22.438507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138079, 37.113308, 22.179035>,  <21.428158, 37.645096, 22.641565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138079, 37.113308, 22.179035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.500990, 36.986023, 22.289005>,  <21.718737, 36.909653, 22.354988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.500990, 36.986023, 22.289005>,  <21.138079, 37.113308, 22.179035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500990, 36.986023, 22.289005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416441, -0.770804, 0.482119,
		0.058499, -0.551907, -0.831851,
		0.907279, -0.318213, 0.274928,
		21.773174, 36.890560, 22.371483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947485, 36.259804, 22.236208>,  <21.138079, 37.113308, 22.179035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947485, 36.259804, 22.236208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607479, 36.467350, 22.199871>,  <20.403475, 36.591877, 22.178068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607479, 36.467350, 22.199871>,  <20.947485, 36.259804, 22.236208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607479, 36.467350, 22.199871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020661, -0.139482, -0.990009,
		-0.526354, -0.843399, 0.107842,
		-0.850014, 0.518868, -0.090842,
		20.352474, 36.623009, 22.172619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457371, 35.853573, 21.792130>,  <20.947485, 36.259804, 22.236208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457371, 35.853573, 21.792130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.421535, 36.251633, 21.775898>,  <20.400034, 36.490471, 21.766159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.421535, 36.251633, 21.775898>,  <20.457371, 35.853573, 21.792130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.421535, 36.251633, 21.775898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148380, -0.026954, -0.988563,
		-0.984864, -0.094586, -0.145245,
		-0.089589, 0.995152, -0.040581,
		20.394659, 36.550179, 21.763723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195848, 35.925335, 21.123177>,  <20.457371, 35.853573, 21.792130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195848, 35.925335, 21.123177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.309946, 36.294582, 21.226318>,  <20.378405, 36.516132, 21.288204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.309946, 36.294582, 21.226318>,  <20.195848, 35.925335, 21.123177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.309946, 36.294582, 21.226318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242095, 0.190914, -0.951284,
		-0.927375, 0.333776, -0.169024,
		0.285246, 0.923117, 0.257855,
		20.395519, 36.571518, 21.303675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989023, 36.372623, 20.566360>,  <20.195848, 35.925335, 21.123177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989023, 36.372623, 20.566360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.288101, 36.542156, 20.770840>,  <20.467548, 36.643875, 20.893528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.288101, 36.542156, 20.770840>,  <19.989023, 36.372623, 20.566360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288101, 36.542156, 20.770840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405570, 0.318098, -0.856929,
		-0.525801, 0.848047, 0.065948,
		0.747694, 0.423828, 0.511198,
		20.512409, 36.669304, 20.924200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120514, 36.891373, 20.142765>,  <19.989023, 36.372623, 20.566360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120514, 36.891373, 20.142765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.442183, 36.859119, 20.378326>,  <20.635183, 36.839767, 20.519663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.442183, 36.859119, 20.378326>,  <20.120514, 36.891373, 20.142765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442183, 36.859119, 20.378326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586819, 0.265431, -0.764977,
		-0.094630, 0.960752, 0.260770,
		0.804170, -0.080635, 0.588905,
		20.683434, 36.834930, 20.554998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.464155, 37.503780, 19.990776>,  <20.120514, 36.891373, 20.142765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.464155, 37.503780, 19.990776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.710911, 37.232738, 20.150925>,  <20.858965, 37.070114, 20.247013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.710911, 37.232738, 20.150925>,  <20.464155, 37.503780, 19.990776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710911, 37.232738, 20.150925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669149, 0.183741, -0.720055,
		0.414350, 0.712102, 0.566767,
		0.616891, -0.677606, 0.400369,
		20.895979, 37.029457, 20.271036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.069841, 37.881897, 20.029198>,  <20.464155, 37.503780, 19.990776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.069841, 37.881897, 20.029198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.207779, 37.507088, 20.051342>,  <21.290541, 37.282200, 20.064629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.207779, 37.507088, 20.051342>,  <21.069841, 37.881897, 20.029198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.207779, 37.507088, 20.051342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693989, 0.214802, -0.687197,
		0.632031, 0.275394, 0.724359,
		0.344843, -0.937027, 0.055359,
		21.311232, 37.225979, 20.067949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795704, 37.914207, 20.105112>,  <21.069841, 37.881897, 20.029198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795704, 37.914207, 20.105112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.720657, 37.553276, 19.949883>,  <21.675629, 37.336716, 19.856745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.720657, 37.553276, 19.949883>,  <21.795704, 37.914207, 20.105112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.720657, 37.553276, 19.949883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807941, 0.082918, -0.583400,
		0.558597, -0.422997, 0.713472,
		-0.187617, -0.902329, -0.388075,
		21.664371, 37.282578, 19.833460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479227, 37.694378, 20.144117>,  <21.795704, 37.914207, 20.105112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479227, 37.694378, 20.144117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282440, 37.446171, 19.899849>,  <22.164368, 37.297245, 19.753288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282440, 37.446171, 19.899849>,  <22.479227, 37.694378, 20.144117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282440, 37.446171, 19.899849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765064, 0.026627, -0.643403,
		0.415506, -0.783737, 0.461639,
		-0.491967, -0.620521, -0.610673,
		22.134850, 37.260014, 19.716646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923222, 37.129730, 20.021702>,  <22.479227, 37.694378, 20.144117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923222, 37.129730, 20.021702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.666250, 37.130074, 19.715164>,  <22.512068, 37.130280, 19.531242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.666250, 37.130074, 19.715164>,  <22.923222, 37.129730, 20.021702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.666250, 37.130074, 19.715164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764769, 0.064804, -0.641038,
		0.049116, -0.997898, -0.042284,
		-0.642430, 0.000852, -0.766344,
		22.473520, 37.130329, 19.485262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190315, 36.702103, 19.565065>,  <22.923222, 37.129730, 20.021702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190315, 36.702103, 19.565065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.943983, 36.926445, 19.343727>,  <22.796185, 37.061050, 19.210924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.943983, 36.926445, 19.343727>,  <23.190315, 36.702103, 19.565065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.943983, 36.926445, 19.343727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727466, 0.135058, -0.672720,
		-0.302565, -0.816823, -0.491176,
		-0.615831, 0.560856, -0.553347,
		22.759233, 37.094704, 19.177723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.305992, 36.450283, 18.902662>,  <23.190315, 36.702103, 19.565065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.305992, 36.450283, 18.902662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126577, 36.803318, 18.846310>,  <23.018929, 37.015141, 18.812498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126577, 36.803318, 18.846310>,  <23.305992, 36.450283, 18.902662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126577, 36.803318, 18.846310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609838, 0.186992, -0.770150,
		-0.653385, -0.431355, -0.622110,
		-0.448538, 0.882591, -0.140879,
		22.992016, 37.068096, 18.804047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911846, 36.434990, 18.260746>,  <23.305992, 36.450283, 18.902662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911846, 36.434990, 18.260746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.006462, 36.816322, 18.335800>,  <23.063231, 37.045120, 18.380833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.006462, 36.816322, 18.335800>,  <22.911846, 36.434990, 18.260746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006462, 36.816322, 18.335800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440454, 0.066924, -0.895277,
		-0.866054, 0.294413, -0.404069,
		0.236539, 0.953332, 0.187635,
		23.077423, 37.102322, 18.392090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.695301, 36.801544, 17.762459>,  <22.911846, 36.434990, 18.260746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.695301, 36.801544, 17.762459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.989265, 37.018692, 17.925041>,  <23.165644, 37.148979, 18.022591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.989265, 37.018692, 17.925041>,  <22.695301, 36.801544, 17.762459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.989265, 37.018692, 17.925041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535403, -0.096590, -0.839055,
		-0.416235, 0.834247, -0.361637,
		0.734910, 0.542866, 0.406454,
		23.209738, 37.181553, 18.046978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.837996, 37.359222, 17.299118>,  <22.695301, 36.801544, 17.762459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.837996, 37.359222, 17.299118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.172861, 37.374161, 17.517387>,  <23.373781, 37.383125, 17.648350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.172861, 37.374161, 17.517387>,  <22.837996, 37.359222, 17.299118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.172861, 37.374161, 17.517387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546294, -0.008287, -0.837552,
		-0.026759, 0.999268, -0.027341,
		0.837166, 0.037348, 0.545673,
		23.424011, 37.385365, 17.681089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.243528, 37.856266, 16.948004>,  <22.837996, 37.359222, 17.299118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.243528, 37.856266, 16.948004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494947, 37.649410, 17.180382>,  <23.645800, 37.525299, 17.319809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494947, 37.649410, 17.180382>,  <23.243528, 37.856266, 16.948004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.494947, 37.649410, 17.180382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689588, 0.025081, -0.723768,
		0.359717, 0.855535, 0.372376,
		0.628548, -0.517138, 0.580944,
		23.683512, 37.494270, 17.354666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.788834, 38.047188, 16.678638>,  <23.243528, 37.856266, 16.948004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.788834, 38.047188, 16.678638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.951235, 37.764130, 16.909950>,  <24.048676, 37.594296, 17.048737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.951235, 37.764130, 16.909950>,  <23.788834, 38.047188, 16.678638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951235, 37.764130, 16.909950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801975, -0.027509, -0.596724,
		0.438174, 0.706037, 0.556342,
		0.406005, -0.707641, 0.578278,
		24.073036, 37.551838, 17.083433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501266, 38.298851, 16.822546>,  <23.788834, 38.047188, 16.678638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501266, 38.298851, 16.822546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.456715, 37.901451, 16.831871>,  <24.429983, 37.663010, 16.837465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.456715, 37.901451, 16.831871>,  <24.501266, 38.298851, 16.822546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456715, 37.901451, 16.831871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827634, -0.105720, -0.551222,
		0.550106, -0.042101, 0.834033,
		-0.111381, -0.993504, 0.023313,
		24.423300, 37.603401, 16.838865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084074, 38.148129, 16.938231>,  <24.501266, 38.298851, 16.822546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084074, 38.148129, 16.938231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.945570, 37.814972, 16.765533>,  <24.862467, 37.615078, 16.661915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.945570, 37.814972, 16.765533>,  <25.084074, 38.148129, 16.938231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945570, 37.814972, 16.765533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883561, -0.134848, -0.448482,
		0.315316, -0.536761, 0.782600,
		-0.346260, -0.832889, -0.431741,
		24.841692, 37.565105, 16.636011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639837, 37.631691, 17.166416>,  <25.084074, 38.148129, 16.938231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639837, 37.631691, 17.166416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.452789, 37.442184, 16.867920>,  <25.340561, 37.328480, 16.688822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.452789, 37.442184, 16.867920>,  <25.639837, 37.631691, 17.166416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452789, 37.442184, 16.867920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857672, -0.038944, -0.512720,
		0.213849, -0.879788, 0.424549,
		-0.467618, -0.473768, -0.746242,
		25.312504, 37.300053, 16.644047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151678, 37.218353, 16.910849>,  <25.639837, 37.631691, 17.166416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151678, 37.218353, 16.910849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.898016, 37.253967, 16.603622>,  <25.745819, 37.275333, 16.419287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.898016, 37.253967, 16.603622>,  <26.151678, 37.218353, 16.910849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898016, 37.253967, 16.603622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772954, 0.098423, -0.626782,
		0.019791, -0.991154, -0.131233,
		-0.634153, 0.089032, -0.768064,
		25.707769, 37.280678, 16.373203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.140413, 27.250086, 19.470207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394150, 27.399490, 19.740940>,  <27.546392, 27.489134, 19.903379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394150, 27.399490, 19.740940>,  <27.140413, 27.250086, 19.470207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394150, 27.399490, 19.740940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616667, 0.772478, 0.151658,
		-0.466190, -0.513582, 0.720347,
		0.634341, 0.373513, 0.676831,
		27.584452, 27.511543, 19.943989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687223, 27.399790, 20.018444>,  <27.140413, 27.250086, 19.470207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687223, 27.399790, 20.018444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018654, 27.614773, 20.081184>,  <27.217512, 27.743763, 20.118828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018654, 27.614773, 20.081184>,  <26.687223, 27.399790, 20.018444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018654, 27.614773, 20.081184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559817, 0.791150, 0.246346,
		0.008310, -0.291922, 0.956406,
		0.828574, 0.537460, 0.156849,
		27.267225, 27.776011, 20.128239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522591, 27.860216, 20.571230>,  <26.687223, 27.399790, 20.018444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522591, 27.860216, 20.571230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855801, 28.014359, 20.412449>,  <27.055727, 28.106844, 20.317181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855801, 28.014359, 20.412449>,  <26.522591, 27.860216, 20.571230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855801, 28.014359, 20.412449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347969, 0.922769, 0.165576,
		0.430102, 0.000199, 0.902781,
		0.833025, 0.385354, -0.396954,
		27.105707, 28.129965, 20.293364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669722, 28.420223, 20.985403>,  <26.522591, 27.860216, 20.571230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669722, 28.420223, 20.985403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883993, 28.511585, 20.660225>,  <27.012556, 28.566402, 20.465118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883993, 28.511585, 20.660225>,  <26.669722, 28.420223, 20.985403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883993, 28.511585, 20.660225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407185, 0.913271, -0.011717,
		0.739762, 0.337295, 0.582223,
		0.535679, 0.228405, -0.812945,
		27.044697, 28.580107, 20.416342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065805, 29.054640, 21.152485>,  <26.669722, 28.420223, 20.985403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065805, 29.054640, 21.152485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059324, 29.037117, 20.752922>,  <27.055435, 29.026604, 20.513184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059324, 29.037117, 20.752922>,  <27.065805, 29.054640, 21.152485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059324, 29.037117, 20.752922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305295, 0.951547, -0.036779,
		0.952120, 0.304366, -0.028794,
		-0.016204, -0.043809, -0.998908,
		27.054462, 29.023973, 20.453249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392900, 29.594049, 20.965061>,  <27.065805, 29.054640, 21.152485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392900, 29.594049, 20.965061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178574, 29.509212, 20.638157>,  <27.049976, 29.458311, 20.442015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178574, 29.509212, 20.638157>,  <27.392900, 29.594049, 20.965061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178574, 29.509212, 20.638157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400793, 0.915825, 0.025101,
		0.743144, 0.341001, -0.575722,
		-0.535820, -0.212092, -0.817261,
		27.017828, 29.445585, 20.392979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416285, 30.197481, 20.550627>,  <27.392900, 29.594049, 20.965061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416285, 30.197481, 20.550627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111460, 29.987263, 20.399330>,  <26.928564, 29.861132, 20.308552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111460, 29.987263, 20.399330>,  <27.416285, 30.197481, 20.550627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111460, 29.987263, 20.399330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467903, 0.850749, -0.239359,
		0.447581, -0.005427, -0.894227,
		-0.762062, -0.525545, -0.378239,
		26.882841, 29.829599, 20.285858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288958, 30.504183, 19.887169>,  <27.416285, 30.197481, 20.550627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288958, 30.504183, 19.887169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958344, 30.319218, 20.015553>,  <26.759975, 30.208239, 20.092583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958344, 30.319218, 20.015553>,  <27.288958, 30.504183, 19.887169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958344, 30.319218, 20.015553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548370, 0.790144, -0.273791,
		-0.127000, -0.402303, -0.906655,
		-0.826535, -0.462411, 0.320959,
		26.710382, 30.180494, 20.111839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827803, 30.765841, 19.527422>,  <27.288958, 30.504183, 19.887169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827803, 30.765841, 19.527422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580828, 30.608219, 19.799744>,  <26.432642, 30.513647, 19.963137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580828, 30.608219, 19.799744>,  <26.827803, 30.765841, 19.527422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580828, 30.608219, 19.799744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580469, 0.812337, -0.056258,
		-0.530874, -0.429922, -0.730301,
		-0.617437, -0.394052, 0.680805,
		26.395597, 30.490004, 20.003984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062550, 30.951054, 19.324776>,  <26.827803, 30.765841, 19.527422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062550, 30.951054, 19.324776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056799, 30.851471, 19.712139>,  <26.053349, 30.791721, 19.944557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056799, 30.851471, 19.712139>,  <26.062550, 30.951054, 19.324776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056799, 30.851471, 19.712139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614855, 0.765958, 0.187783,
		-0.788509, -0.592730, -0.164086,
		-0.014378, -0.248958, 0.968408,
		26.052485, 30.776783, 20.002661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289846, 31.012693, 19.590406>,  <26.062550, 30.951054, 19.324776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289846, 31.012693, 19.590406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521832, 31.023941, 19.916069>,  <25.661022, 31.030689, 20.111467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521832, 31.023941, 19.916069>,  <25.289846, 31.012693, 19.590406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521832, 31.023941, 19.916069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593758, 0.698849, 0.398826,
		-0.557758, -0.714716, 0.422004,
		0.579964, 0.028120, 0.814156,
		25.695820, 31.032377, 20.160316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869822, 30.935041, 20.229853>,  <25.289846, 31.012693, 19.590406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869822, 30.935041, 20.229853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200047, 31.129242, 20.344906>,  <25.398182, 31.245762, 20.413939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200047, 31.129242, 20.344906>,  <24.869822, 30.935041, 20.229853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200047, 31.129242, 20.344906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562166, 0.663188, 0.494116,
		0.049141, -0.569622, 0.820437,
		0.825563, 0.485503, 0.287633,
		25.447716, 31.274893, 20.431196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939274, 31.037518, 20.977081>,  <24.869822, 30.935041, 20.229853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939274, 31.037518, 20.977081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109680, 31.337357, 20.774452>,  <25.211924, 31.517260, 20.652874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109680, 31.337357, 20.774452>,  <24.939274, 31.037518, 20.977081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109680, 31.337357, 20.774452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561700, 0.658083, 0.501417,
		0.709229, 0.070933, 0.701401,
		0.426014, 0.749596, -0.506575,
		25.237484, 31.562235, 20.622480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024035, 31.530537, 21.543989>,  <24.939274, 31.037518, 20.977081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024035, 31.530537, 21.543989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035583, 31.714451, 21.188965>,  <25.042513, 31.824800, 20.975950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035583, 31.714451, 21.188965>,  <25.024035, 31.530537, 21.543989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035583, 31.714451, 21.188965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431988, 0.806468, 0.403726,
		0.901417, 0.371759, 0.221906,
		0.028871, 0.459787, -0.887560,
		25.044245, 31.852386, 20.922697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164677, 31.562885, 22.214851>,  <25.024035, 31.530537, 21.543989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164677, 31.562885, 22.214851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910688, 31.638756, 22.514408>,  <24.758295, 31.684278, 22.694141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910688, 31.638756, 22.514408>,  <25.164677, 31.562885, 22.214851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910688, 31.638756, 22.514408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691281, -0.293260, 0.660401,
		0.344881, 0.937028, 0.055093,
		-0.634971, 0.189675, 0.748890,
		24.720198, 31.695658, 22.739075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617002, 31.792326, 22.655273>,  <25.164677, 31.562885, 22.214851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617002, 31.792326, 22.655273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286572, 31.678341, 22.849754>,  <25.088312, 31.609949, 22.966442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286572, 31.678341, 22.849754>,  <25.617002, 31.792326, 22.655273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286572, 31.678341, 22.849754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553747, -0.250162, 0.794219,
		-0.104694, 0.925319, 0.364450,
		-0.826077, -0.284963, 0.486202,
		25.038748, 31.592852, 22.995615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786469, 31.935854, 23.413080>,  <25.617002, 31.792326, 22.655273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786469, 31.935854, 23.413080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459663, 31.705208, 23.412258>,  <25.263580, 31.566820, 23.411764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459663, 31.705208, 23.412258>,  <25.786469, 31.935854, 23.413080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459663, 31.705208, 23.412258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431610, -0.613914, 0.660925,
		-0.382362, 0.539097, 0.750449,
		-0.817014, -0.576614, -0.002057,
		25.214560, 31.532223, 23.411640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410950, 31.926132, 24.134037>,  <25.786469, 31.935854, 23.413080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410950, 31.926132, 24.134037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311867, 31.588535, 23.943745>,  <25.252417, 31.385977, 23.829569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311867, 31.588535, 23.943745>,  <25.410950, 31.926132, 24.134037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311867, 31.588535, 23.943745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433012, -0.535706, 0.724927,
		-0.866685, -0.026429, 0.498156,
		-0.247706, -0.843991, -0.475732,
		25.237555, 31.335339, 23.801025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293205, 31.415958, 24.697451>,  <25.410950, 31.926132, 24.134037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293205, 31.415958, 24.697451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322828, 31.199654, 24.362286>,  <25.340603, 31.069872, 24.161186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322828, 31.199654, 24.362286>,  <25.293205, 31.415958, 24.697451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322828, 31.199654, 24.362286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364724, -0.767322, 0.527441,
		-0.928166, -0.344667, 0.140402,
		0.074058, -0.540760, -0.837910,
		25.345045, 31.037426, 24.110912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174749, 30.764645, 24.946095>,  <25.293205, 31.415958, 24.697451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174749, 30.764645, 24.946095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359335, 30.703541, 24.596531>,  <25.470085, 30.666878, 24.386793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359335, 30.703541, 24.596531>,  <25.174749, 30.764645, 24.946095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359335, 30.703541, 24.596531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388325, -0.850903, 0.353790,
		-0.797657, -0.502621, -0.333341,
		0.461463, -0.152759, -0.873909,
		25.497774, 30.657713, 24.334358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080334, 30.054253, 24.793013>,  <25.174749, 30.764645, 24.946095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080334, 30.054253, 24.793013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397514, 30.187325, 24.588837>,  <25.587824, 30.267168, 24.466331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397514, 30.187325, 24.588837>,  <25.080334, 30.054253, 24.793013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397514, 30.187325, 24.588837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453680, -0.881604, 0.130189,
		-0.406694, -0.334809, -0.850002,
		0.792953, 0.332682, -0.510439,
		25.635401, 30.287128, 24.435705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234154, 29.435053, 24.460400>,  <25.080334, 30.054253, 24.793013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234154, 29.435053, 24.460400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556322, 29.672031, 24.453358>,  <25.749622, 29.814219, 24.449133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556322, 29.672031, 24.453358>,  <25.234154, 29.435053, 24.460400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556322, 29.672031, 24.453358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590916, -0.800325, 0.101478,
		0.046029, -0.092136, -0.994682,
		0.805419, 0.592444, -0.017606,
		25.797947, 29.849764, 24.448076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619352, 29.276699, 23.918592>,  <25.234154, 29.435053, 24.460400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619352, 29.276699, 23.918592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869675, 29.440884, 24.183887>,  <26.019869, 29.539394, 24.343065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869675, 29.440884, 24.183887>,  <25.619352, 29.276699, 23.918592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869675, 29.440884, 24.183887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622938, -0.774736, -0.108316,
		0.469375, 0.480942, -0.740528,
		0.625807, 0.410462, 0.663239,
		26.057417, 29.564022, 24.382858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196276, 28.857880, 23.822687>,  <25.619352, 29.276699, 23.918592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196276, 28.857880, 23.822687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278337, 29.041977, 24.168194>,  <26.327574, 29.152435, 24.375498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278337, 29.041977, 24.168194>,  <26.196276, 28.857880, 23.822687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278337, 29.041977, 24.168194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717311, -0.671126, 0.187228,
		0.665865, 0.581177, -0.467821,
		0.205155, 0.460242, 0.863765,
		26.339884, 29.180050, 24.427322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819677, 28.913492, 23.853405>,  <26.196276, 28.857880, 23.822687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819677, 28.913492, 23.853405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724226, 28.944523, 24.240608>,  <26.666956, 28.963140, 24.472931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724226, 28.944523, 24.240608>,  <26.819677, 28.913492, 23.853405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724226, 28.944523, 24.240608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627376, -0.748550, 0.214644,
		0.741254, 0.658524, 0.129955,
		-0.238626, 0.077574, 0.968008,
		26.652637, 28.967794, 24.531012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426178, 28.903803, 24.314848>,  <26.819677, 28.913492, 23.853405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426178, 28.903803, 24.314848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128103, 28.754807, 24.536098>,  <26.949259, 28.665409, 24.668848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128103, 28.754807, 24.536098>,  <27.426178, 28.903803, 24.314848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128103, 28.754807, 24.536098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605267, -0.725960, 0.326549,
		0.279911, 0.578129, 0.766431,
		-0.745186, -0.372491, 0.553126,
		26.904547, 28.643059, 24.702036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800865, 28.675003, 24.777004>,  <27.426178, 28.903803, 24.314848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800865, 28.675003, 24.777004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440273, 28.507168, 24.819496>,  <27.223919, 28.406467, 24.844992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440273, 28.507168, 24.819496>,  <27.800865, 28.675003, 24.777004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440273, 28.507168, 24.819496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430015, -0.840310, 0.330101,
		-0.049241, 0.343259, 0.937949,
		-0.901478, -0.419587, 0.106229,
		27.169830, 28.381292, 24.851364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902349, 28.091862, 25.249865>,  <27.800865, 28.675003, 24.777004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902349, 28.091862, 25.249865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544857, 28.012192, 25.089081>,  <27.330360, 27.964390, 24.992611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544857, 28.012192, 25.089081>,  <27.902349, 28.091862, 25.249865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544857, 28.012192, 25.089081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140673, -0.975268, 0.170481,
		-0.425972, 0.095820, 0.899648,
		-0.893733, -0.199176, -0.401958,
		27.276737, 27.952438, 24.968493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906704, 28.330374, 26.041382>,  <27.902349, 28.091862, 25.249865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906704, 28.330374, 26.041382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237827, 28.346661, 26.265194>,  <28.436502, 28.356432, 26.399481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237827, 28.346661, 26.265194>,  <27.906704, 28.330374, 26.041382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237827, 28.346661, 26.265194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038266, 0.990942, -0.128722,
		-0.559703, 0.127968, 0.818753,
		0.827810, 0.040716, 0.559530,
		28.486170, 28.358875, 26.433052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851130, 28.962280, 26.407206>,  <27.906704, 28.330374, 26.041382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851130, 28.962280, 26.407206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238701, 28.882862, 26.466206>,  <28.471243, 28.835211, 26.501606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238701, 28.882862, 26.466206>,  <27.851130, 28.962280, 26.407206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238701, 28.882862, 26.466206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192453, 0.979783, 0.054649,
		-0.155367, -0.024564, 0.987551,
		0.968929, -0.198547, 0.147498,
		28.529379, 28.823298, 26.510454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085436, 29.356621, 26.985220>,  <27.851130, 28.962280, 26.407206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085436, 29.356621, 26.985220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416325, 29.258141, 26.783195>,  <28.614859, 29.199053, 26.661982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416325, 29.258141, 26.783195>,  <28.085436, 29.356621, 26.985220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416325, 29.258141, 26.783195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244758, 0.967017, -0.070506,
		0.505761, -0.065294, 0.860199,
		0.827224, -0.246199, -0.505061,
		28.664492, 29.184280, 26.631678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617014, 29.778347, 27.299139>,  <28.085436, 29.356621, 26.985220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617014, 29.778347, 27.299139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753498, 29.704678, 26.930431>,  <28.835388, 29.660475, 26.709208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753498, 29.704678, 26.930431>,  <28.617014, 29.778347, 27.299139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753498, 29.704678, 26.930431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215857, 0.969764, -0.113861,
		0.914866, -0.160119, 0.370650,
		0.341211, -0.184174, -0.921767,
		28.855862, 29.649426, 26.653902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156595, 30.150282, 27.316629>,  <28.617014, 29.778347, 27.299139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156595, 30.150282, 27.316629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106705, 30.066330, 26.928734>,  <29.076771, 30.015959, 26.695997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106705, 30.066330, 26.928734>,  <29.156595, 30.150282, 27.316629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106705, 30.066330, 26.928734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201905, 0.951552, -0.231913,
		0.971431, -0.224721, -0.076307,
		-0.124726, -0.209880, -0.969739,
		29.069286, 30.003366, 26.637812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734732, 30.391256, 26.943523>,  <29.156595, 30.150282, 27.316629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734732, 30.391256, 26.943523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435900, 30.359867, 26.679489>,  <29.256601, 30.341034, 26.521069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435900, 30.359867, 26.679489>,  <29.734732, 30.391256, 26.943523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435900, 30.359867, 26.679489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110959, 0.964355, -0.240224,
		0.655409, -0.252709, -0.711742,
		-0.747079, -0.078471, -0.660088,
		29.211777, 30.336327, 26.481462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962759, 30.567255, 26.256117>,  <29.734732, 30.391256, 26.943523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962759, 30.567255, 26.256117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571726, 30.621075, 26.191338>,  <29.337107, 30.653366, 26.152470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571726, 30.621075, 26.191338>,  <29.962759, 30.567255, 26.256117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571726, 30.621075, 26.191338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175767, 0.944983, -0.275885,
		0.115920, -0.298166, -0.947449,
		-0.977583, 0.134549, -0.161950,
		29.278450, 30.661440, 26.142752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839880, 30.842291, 25.542957>,  <29.962759, 30.567255, 26.256117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839880, 30.842291, 25.542957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515852, 30.942379, 25.755062>,  <29.321436, 31.002432, 25.882326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515852, 30.942379, 25.755062>,  <29.839880, 30.842291, 25.542957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515852, 30.942379, 25.755062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078584, 0.942542, -0.324714,
		-0.581046, -0.221371, -0.783186,
		-0.810068, 0.250220, 0.530264,
		29.272831, 31.017445, 25.914141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522644, 31.448631, 25.124483>,  <29.839880, 30.842291, 25.542957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522644, 31.448631, 25.124483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344601, 31.471752, 25.481926>,  <29.237774, 31.485624, 25.696392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344601, 31.471752, 25.481926>,  <29.522644, 31.448631, 25.124483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344601, 31.471752, 25.481926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135111, 0.982155, -0.130827,
		-0.885224, -0.178969, -0.429358,
		-0.445110, 0.057801, 0.893608,
		29.211067, 31.489092, 25.750008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842762, 31.830606, 25.020201>,  <29.522644, 31.448631, 25.124483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842762, 31.830606, 25.020201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933826, 31.876823, 25.406944>,  <28.988466, 31.904554, 25.638990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933826, 31.876823, 25.406944>,  <28.842762, 31.830606, 25.020201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933826, 31.876823, 25.406944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213699, 0.974657, -0.066157,
		-0.950001, -0.191556, 0.246585,
		0.227663, 0.115544, 0.966861,
		29.002125, 31.911488, 25.697002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381750, 32.261925, 25.296749>,  <28.842762, 31.830606, 25.020201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381750, 32.261925, 25.296749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683270, 32.287830, 25.558311>,  <28.864182, 32.303371, 25.715248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683270, 32.287830, 25.558311>,  <28.381750, 32.261925, 25.296749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683270, 32.287830, 25.558311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221108, 0.962101, 0.159601,
		-0.618787, -0.264891, 0.739551,
		0.753800, 0.064762, 0.653905,
		28.909409, 32.307259, 25.754482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230013, 32.848022, 25.650324>,  <28.381750, 32.261925, 25.296749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230013, 32.848022, 25.650324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616640, 32.801350, 25.741653>,  <28.848616, 32.773346, 25.796452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616640, 32.801350, 25.741653>,  <28.230013, 32.848022, 25.650324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616640, 32.801350, 25.741653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138369, 0.987032, -0.081369,
		-0.215869, 0.110241, 0.970179,
		0.966568, -0.116678, 0.228324,
		28.906610, 32.766346, 25.810150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.278711, 24.689442, 27.424673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662209, 24.770893, 27.345325>,  <28.892307, 24.819765, 27.297718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662209, 24.770893, 27.345325>,  <28.278711, 24.689442, 27.424673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662209, 24.770893, 27.345325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136412, 0.941743, 0.307428,
		0.249413, -0.267685, 0.930665,
		0.958741, 0.203631, -0.198368,
		28.949831, 24.831982, 27.285814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460608, 25.080469, 28.095795>,  <28.278711, 24.689442, 27.424673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460608, 25.080469, 28.095795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.704479, 25.149315, 27.786301>,  <28.850803, 25.190622, 27.600605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.704479, 25.149315, 27.786301>,  <28.460608, 25.080469, 28.095795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704479, 25.149315, 27.786301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061389, 0.983462, 0.170393,
		0.790266, -0.056387, 0.610164,
		0.609681, 0.172113, -0.773735,
		28.887384, 25.200949, 27.554180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879242, 25.669397, 28.300900>,  <28.460608, 25.080469, 28.095795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879242, 25.669397, 28.300900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.885078, 25.660725, 27.901035>,  <28.888580, 25.655521, 27.661118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.885078, 25.660725, 27.901035>,  <28.879242, 25.669397, 28.300900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885078, 25.660725, 27.901035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021841, 0.999519, -0.021996,
		0.999655, 0.022155, 0.014107,
		0.014588, -0.021681, -0.999659,
		28.889456, 25.654221, 27.601137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309168, 26.267157, 28.129742>,  <28.879242, 25.669397, 28.300900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309168, 26.267157, 28.129742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.114891, 26.160980, 27.796600>,  <28.998325, 26.097275, 27.596716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.114891, 26.160980, 27.796600>,  <29.309168, 26.267157, 28.129742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114891, 26.160980, 27.796600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021930, 0.956180, -0.291957,
		0.873854, -0.123537, -0.470231,
		-0.485693, -0.265441, -0.832853,
		28.969183, 26.081348, 27.546745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654524, 26.521145, 27.584187>,  <29.309168, 26.267157, 28.129742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654524, 26.521145, 27.584187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.282732, 26.475578, 27.443848>,  <29.059658, 26.448238, 27.359644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.282732, 26.475578, 27.443848>,  <29.654524, 26.521145, 27.584187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282732, 26.475578, 27.443848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058294, 0.893806, -0.444648,
		0.364243, -0.433743, -0.824132,
		-0.929478, -0.113918, -0.350848,
		29.003889, 26.441402, 27.338593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707125, 26.552692, 26.866676>,  <29.654524, 26.521145, 27.584187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707125, 26.552692, 26.866676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.340065, 26.659019, 26.984837>,  <29.119829, 26.722816, 27.055733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.340065, 26.659019, 26.984837>,  <29.707125, 26.552692, 26.866676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340065, 26.659019, 26.984837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090993, 0.864145, -0.494948,
		-0.386834, -0.427309, -0.817170,
		-0.917649, 0.265820, 0.295399,
		29.064770, 26.738766, 27.073456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475029, 26.995581, 26.399466>,  <29.707125, 26.552692, 26.866676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475029, 26.995581, 26.399466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.192551, 27.079098, 26.670078>,  <29.023064, 27.129208, 26.832445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.192551, 27.079098, 26.670078>,  <29.475029, 26.995581, 26.399466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192551, 27.079098, 26.670078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043709, 0.940849, -0.335995,
		-0.706666, -0.266849, -0.655298,
		-0.706196, 0.208793, 0.676530,
		28.980692, 27.141735, 26.873037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993818, 27.286478, 25.902683>,  <29.475029, 26.995581, 26.399466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993818, 27.286478, 25.902683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.895164, 27.405643, 26.271557>,  <28.835972, 27.477142, 26.492880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.895164, 27.405643, 26.271557>,  <28.993818, 27.286478, 25.902683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895164, 27.405643, 26.271557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306330, 0.878822, -0.365833,
		-0.919420, -0.372719, -0.125487,
		-0.246634, 0.297914, 0.922182,
		28.821175, 27.495018, 26.548212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342728, 27.640375, 25.849365>,  <28.993818, 27.286478, 25.902683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342728, 27.640375, 25.849365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.498960, 27.772339, 26.193134>,  <28.592699, 27.851517, 26.399395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.498960, 27.772339, 26.193134>,  <28.342728, 27.640375, 25.849365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498960, 27.772339, 26.193134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308788, 0.926443, -0.215300,
		-0.867236, -0.181287, 0.463721,
		0.390580, 0.329907, 0.859423,
		28.616135, 27.871311, 26.450962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561657, 27.611889, 25.783590>,  <28.342728, 27.640375, 25.849365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561657, 27.611889, 25.783590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.371599, 27.566929, 25.434509>,  <27.257565, 27.539953, 25.225061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.371599, 27.566929, 25.434509>,  <27.561657, 27.611889, 25.783590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371599, 27.566929, 25.434509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170698, -0.984740, 0.033894,
		-0.863192, -0.132864, 0.487078,
		-0.475142, -0.112400, -0.872700,
		27.229057, 27.533209, 25.172699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276745, 26.948229, 25.839087>,  <27.561657, 27.611889, 25.783590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276745, 26.948229, 25.839087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.249474, 27.009171, 25.444698>,  <27.233110, 27.045734, 25.208065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.249474, 27.009171, 25.444698>,  <27.276745, 26.948229, 25.839087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249474, 27.009171, 25.444698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232896, -0.958536, -0.164218,
		-0.970109, -0.240825, 0.029870,
		-0.068179, 0.152353, -0.985972,
		27.229019, 27.054876, 25.148907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708242, 26.670065, 25.571133>,  <27.276745, 26.948229, 25.839087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708242, 26.670065, 25.571133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.980459, 26.691933, 25.278866>,  <27.143789, 26.705053, 25.103506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.980459, 26.691933, 25.278866>,  <26.708242, 26.670065, 25.571133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980459, 26.691933, 25.278866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039341, -0.993048, -0.110943,
		-0.731653, 0.104247, -0.673660,
		0.680541, 0.054669, -0.730668,
		27.184622, 26.708334, 25.059666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492590, 26.178429, 25.142477>,  <26.708242, 26.670065, 25.571133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492590, 26.178429, 25.142477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.836071, 26.235359, 24.945549>,  <27.042160, 26.269518, 24.827393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.836071, 26.235359, 24.945549>,  <26.492590, 26.178429, 25.142477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836071, 26.235359, 24.945549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020617, -0.950291, -0.310680,
		-0.512063, 0.276931, -0.813081,
		0.858700, 0.142325, -0.492318,
		27.093681, 26.278057, 24.797853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517626, 25.746105, 24.502522>,  <26.492590, 26.178429, 25.142477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517626, 25.746105, 24.502522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.894753, 25.810986, 24.618996>,  <27.121029, 25.849915, 24.688881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.894753, 25.810986, 24.618996>,  <26.517626, 25.746105, 24.502522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894753, 25.810986, 24.618996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207943, -0.968984, -0.133525,
		0.260496, 0.186439, -0.947303,
		0.942816, 0.162202, 0.291185,
		27.177597, 25.859646, 24.706350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891228, 25.410789, 23.978117>,  <26.517626, 25.746105, 24.502522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891228, 25.410789, 23.978117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.135719, 25.440620, 24.293289>,  <27.282413, 25.458519, 24.482393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.135719, 25.440620, 24.293289>,  <26.891228, 25.410789, 23.978117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135719, 25.440620, 24.293289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399662, -0.888379, -0.225947,
		0.683132, 0.453012, -0.572809,
		0.611229, 0.074578, 0.787932,
		27.319088, 25.462994, 24.529669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590229, 25.219402, 23.848793>,  <26.891228, 25.410789, 23.978117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590229, 25.219402, 23.848793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.630802, 25.174072, 24.244141>,  <27.655146, 25.146875, 24.481348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.630802, 25.174072, 24.244141>,  <27.590229, 25.219402, 23.848793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630802, 25.174072, 24.244141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618633, -0.770861, -0.151872,
		0.779105, 0.626842, -0.008084,
		0.101432, -0.113323, 0.988367,
		27.661232, 25.140076, 24.540651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182713, 24.843987, 23.909763>,  <27.590229, 25.219402, 23.848793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182713, 24.843987, 23.909763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.017492, 24.810040, 24.272461>,  <27.918360, 24.789671, 24.490080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.017492, 24.810040, 24.272461>,  <28.182713, 24.843987, 23.909763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017492, 24.810040, 24.272461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472325, -0.871238, 0.133616,
		0.778651, 0.483468, 0.399952,
		-0.413052, -0.084867, 0.906744,
		27.893578, 24.784580, 24.544485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712204, 24.558723, 24.393709>,  <28.182713, 24.843987, 23.909763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712204, 24.558723, 24.393709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.353760, 24.485222, 24.555313>,  <28.138693, 24.441122, 24.652275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.353760, 24.485222, 24.555313>,  <28.712204, 24.558723, 24.393709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353760, 24.485222, 24.555313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177502, -0.982680, -0.053235,
		0.406794, 0.024008, 0.913204,
		-0.896109, -0.183752, 0.404010,
		28.084927, 24.430096, 24.676516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814812, 24.005516, 24.930168>,  <28.712204, 24.558723, 24.393709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814812, 24.005516, 24.930168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.423908, 24.010864, 24.845512>,  <28.189367, 24.014072, 24.794720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.423908, 24.010864, 24.845512>,  <28.814812, 24.005516, 24.930168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423908, 24.010864, 24.845512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019099, -0.999504, 0.025054,
		-0.211199, 0.028526, 0.977027,
		-0.977256, 0.013369, -0.211639,
		28.130732, 24.014875, 24.782021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422714, 23.531725, 25.417273>,  <28.814812, 24.005516, 24.930168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422714, 23.531725, 25.417273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.191904, 23.566605, 25.092449>,  <28.053417, 23.587532, 24.897556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.191904, 23.566605, 25.092449>,  <28.422714, 23.531725, 25.417273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191904, 23.566605, 25.092449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134889, -0.970455, -0.200057,
		-0.805509, -0.224976, 0.548217,
		-0.577028, 0.087199, -0.812056,
		28.018795, 23.592764, 24.848833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145540, 22.892700, 25.353575>,  <28.422714, 23.531725, 25.417273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145540, 22.892700, 25.353575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.082205, 23.050617, 24.991566>,  <28.044203, 23.145367, 24.774361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.082205, 23.050617, 24.991566>,  <28.145540, 22.892700, 25.353575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082205, 23.050617, 24.991566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168461, -0.892347, -0.418734,
		-0.972908, -0.218764, 0.074787,
		-0.158340, 0.394791, -0.905024,
		28.034702, 23.169054, 24.720058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659594, 22.463882, 25.054764>,  <28.145540, 22.892700, 25.353575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659594, 22.463882, 25.054764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.848364, 22.655357, 24.758617>,  <27.961626, 22.770243, 24.580929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.848364, 22.655357, 24.758617>,  <27.659594, 22.463882, 25.054764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848364, 22.655357, 24.758617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163030, -0.872662, -0.460307,
		-0.866434, 0.096529, -0.489872,
		0.471926, 0.478689, -0.740366,
		27.989943, 22.798964, 24.536507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420244, 22.076424, 24.455286>,  <27.659594, 22.463882, 25.054764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420244, 22.076424, 24.455286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.742767, 22.283512, 24.340862>,  <27.936281, 22.407766, 24.272207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.742767, 22.283512, 24.340862>,  <27.420244, 22.076424, 24.455286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742767, 22.283512, 24.340862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339898, -0.801347, -0.492253,
		-0.484084, 0.299676, -0.822105,
		0.806308, 0.517723, -0.286060,
		27.984659, 22.438829, 24.255045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.614582, 24.069633, 23.679605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.246170, 23.960762, 23.791046>,  <35.025124, 23.895439, 23.857910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.246170, 23.960762, 23.791046>,  <35.614582, 24.069633, 23.679605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246170, 23.960762, 23.791046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352952, 0.885727, -0.301516,
		-0.164700, -0.376039, -0.911849,
		-0.921031, -0.272179, 0.278603,
		34.969860, 23.879108, 23.874628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250420, 24.147499, 23.053223>,  <35.614582, 24.069633, 23.679605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250420, 24.147499, 23.053223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001007, 24.152752, 23.365898>,  <34.851360, 24.155903, 23.553503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001007, 24.152752, 23.365898>,  <35.250420, 24.147499, 23.053223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001007, 24.152752, 23.365898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400828, 0.853078, -0.334057,
		-0.671228, -0.521618, -0.526657,
		-0.623530, 0.013130, 0.781689,
		34.813950, 24.156691, 23.600405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666019, 24.415098, 22.785238>,  <35.250420, 24.147499, 23.053223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666019, 24.415098, 22.785238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630867, 24.459492, 23.181210>,  <34.609776, 24.486128, 23.418793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630867, 24.459492, 23.181210>,  <34.666019, 24.415098, 22.785238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630867, 24.459492, 23.181210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412972, 0.900290, -0.137596,
		-0.906494, -0.420905, -0.033284,
		-0.087880, 0.110985, 0.989929,
		34.604504, 24.492786, 23.478188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947739, 24.593254, 22.987364>,  <34.666019, 24.415098, 22.785238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947739, 24.593254, 22.987364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175083, 24.751652, 23.275852>,  <34.311489, 24.846689, 23.448946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175083, 24.751652, 23.275852>,  <33.947739, 24.593254, 22.987364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175083, 24.751652, 23.275852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526344, 0.848728, -0.051216,
		-0.632402, -0.350502, 0.690808,
		0.568357, 0.395992, 0.721222,
		34.345589, 24.870449, 23.492218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535221, 25.100508, 23.402544>,  <33.947739, 24.593254, 22.987364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535221, 25.100508, 23.402544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.897423, 25.201679, 23.538834>,  <34.114742, 25.262383, 23.620607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.897423, 25.201679, 23.538834>,  <33.535221, 25.100508, 23.402544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897423, 25.201679, 23.538834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278380, 0.960088, 0.027118,
		-0.320266, -0.119406, 0.939772,
		0.905502, 0.252929, 0.340724,
		34.169075, 25.277557, 23.641050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397675, 25.479630, 23.912331>,  <33.535221, 25.100508, 23.402544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397675, 25.479630, 23.912331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774017, 25.598824, 23.847839>,  <33.999825, 25.670340, 23.809145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774017, 25.598824, 23.847839>,  <33.397675, 25.479630, 23.912331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774017, 25.598824, 23.847839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301431, 0.953482, 0.003216,
		0.154687, 0.045574, 0.986912,
		0.940857, 0.297984, -0.161229,
		34.056274, 25.688219, 23.799471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422760, 26.070953, 24.382984>,  <33.397675, 25.479630, 23.912331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422760, 26.070953, 24.382984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724506, 26.118355, 24.124718>,  <33.905556, 26.146795, 23.969757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724506, 26.118355, 24.124718>,  <33.422760, 26.070953, 24.382984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724506, 26.118355, 24.124718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205200, 0.976851, -0.060457,
		0.623556, 0.178097, 0.761222,
		0.754368, 0.118504, -0.645667,
		33.950817, 26.153906, 23.931017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769512, 26.702229, 24.604918>,  <33.422760, 26.070953, 24.382984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769512, 26.702229, 24.604918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.903809, 26.656769, 24.230888>,  <33.984386, 26.629494, 24.006472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.903809, 26.656769, 24.230888>,  <33.769512, 26.702229, 24.604918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903809, 26.656769, 24.230888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183040, 0.965901, -0.183117,
		0.923999, 0.232635, 0.303491,
		0.335742, -0.113649, -0.935073,
		34.004532, 26.622675, 23.950367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184265, 27.336956, 24.435078>,  <33.769512, 26.702229, 24.604918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184265, 27.336956, 24.435078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057934, 27.167919, 24.095272>,  <33.982136, 27.066498, 23.891390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057934, 27.167919, 24.095272>,  <34.184265, 27.336956, 24.435078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057934, 27.167919, 24.095272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199250, 0.904913, -0.376074,
		0.927660, 0.050492, -0.369996,
		-0.315825, -0.422590, -0.849512,
		33.963184, 27.041142, 23.840418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495796, 27.676571, 23.796675>,  <34.184265, 27.336956, 24.435078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495796, 27.676571, 23.796675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176067, 27.484791, 23.651783>,  <33.984230, 27.369722, 23.564848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176067, 27.484791, 23.651783>,  <34.495796, 27.676571, 23.796675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176067, 27.484791, 23.651783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347896, 0.860747, -0.371595,
		0.489947, -0.171007, -0.854815,
		-0.799325, -0.479448, -0.362228,
		33.936272, 27.340956, 23.543114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506405, 27.850124, 23.119850>,  <34.495796, 27.676571, 23.796675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506405, 27.850124, 23.119850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129814, 27.754128, 23.214523>,  <33.903858, 27.696529, 23.271328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129814, 27.754128, 23.214523>,  <34.506405, 27.850124, 23.119850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129814, 27.754128, 23.214523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289189, 0.935842, -0.201420,
		-0.173160, -0.258079, -0.950479,
		-0.941481, -0.239990, 0.236684,
		33.847370, 27.682131, 23.285528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098457, 28.225821, 22.567099>,  <34.506405, 27.850124, 23.119850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098457, 28.225821, 22.567099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865448, 28.132820, 22.878639>,  <33.725643, 28.077019, 23.065563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865448, 28.132820, 22.878639>,  <34.098457, 28.225821, 22.567099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865448, 28.132820, 22.878639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176940, 0.971509, 0.157678,
		-0.793321, -0.045959, -0.607066,
		-0.582523, -0.232503, 0.778851,
		33.690689, 28.063068, 23.112295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438831, 28.478237, 22.306137>,  <34.098457, 28.225821, 22.567099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438831, 28.478237, 22.306137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411587, 28.448784, 22.704121>,  <33.395241, 28.431112, 22.942911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411587, 28.448784, 22.704121>,  <33.438831, 28.478237, 22.306137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411587, 28.448784, 22.704121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265814, 0.962564, 0.053041,
		-0.961615, -0.260860, -0.085136,
		-0.068113, -0.073635, 0.994957,
		33.391151, 28.426693, 23.002607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869190, 28.829447, 22.499355>,  <33.438831, 28.478237, 22.306137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869190, 28.829447, 22.499355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104179, 28.814365, 22.822701>,  <33.245174, 28.805317, 23.016706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104179, 28.814365, 22.822701>,  <32.869190, 28.829447, 22.499355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104179, 28.814365, 22.822701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174554, 0.969495, 0.172074,
		-0.790191, -0.242193, 0.562975,
		0.587477, -0.037701, 0.808362,
		33.280422, 28.803055, 23.065208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230602, 28.454788, 22.363478>,  <32.869190, 28.829447, 22.499355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230602, 28.454788, 22.363478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047577, 28.458145, 22.007824>,  <31.937761, 28.460159, 21.794432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047577, 28.458145, 22.007824>,  <32.230602, 28.454788, 22.363478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047577, 28.458145, 22.007824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464969, -0.850085, -0.247304,
		-0.757916, -0.526578, 0.385071,
		-0.457568, 0.008390, -0.889135,
		31.910307, 28.460663, 21.741083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867310, 27.789093, 22.281944>,  <32.230602, 28.454788, 22.363478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867310, 27.789093, 22.281944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913164, 27.930546, 21.910610>,  <31.940678, 28.015417, 21.687811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913164, 27.930546, 21.910610>,  <31.867310, 27.789093, 22.281944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913164, 27.930546, 21.910610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263980, -0.911741, -0.314712,
		-0.957691, -0.208984, -0.197872,
		0.114639, 0.353631, -0.928333,
		31.947556, 28.036634, 21.632111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555094, 27.418777, 21.854876>,  <31.867310, 27.789093, 22.281944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555094, 27.418777, 21.854876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823118, 27.569881, 21.599277>,  <31.983932, 27.660543, 21.445919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823118, 27.569881, 21.599277>,  <31.555094, 27.418777, 21.854876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823118, 27.569881, 21.599277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280668, -0.925851, -0.253031,
		-0.687201, -0.009800, -0.726401,
		0.670060, 0.377761, -0.638997,
		32.024136, 27.683210, 21.407578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438204, 27.118191, 21.163141>,  <31.555094, 27.418777, 21.854876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438204, 27.118191, 21.163141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.809633, 27.263603, 21.133221>,  <32.032490, 27.350851, 21.115269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.809633, 27.263603, 21.133221>,  <31.438204, 27.118191, 21.163141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809633, 27.263603, 21.133221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316787, -0.881317, -0.350609,
		-0.193379, 0.301871, -0.933530,
		0.928574, 0.363531, -0.074800,
		32.088207, 27.372662, 21.110781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764071, 26.907444, 20.421793>,  <31.438204, 27.118191, 21.163141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764071, 26.907444, 20.421793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072861, 26.963959, 20.669693>,  <32.258137, 26.997868, 20.818434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072861, 26.963959, 20.669693>,  <31.764071, 26.907444, 20.421793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072861, 26.963959, 20.669693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282905, -0.949466, -0.135937,
		0.569225, 0.280271, -0.772936,
		0.771976, 0.141289, 0.619750,
		32.304455, 27.006346, 20.855618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316673, 26.731586, 20.054646>,  <31.764071, 26.907444, 20.421793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316673, 26.731586, 20.054646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415897, 26.702175, 20.441025>,  <32.475433, 26.684528, 20.672853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.415897, 26.702175, 20.441025>,  <32.316673, 26.731586, 20.054646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415897, 26.702175, 20.441025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158971, -0.980509, -0.115461,
		0.955611, 0.182200, -0.231539,
		0.248063, -0.073528, 0.965949,
		32.490314, 26.680117, 20.730810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864906, 26.260281, 20.083586>,  <32.316673, 26.731586, 20.054646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864906, 26.260281, 20.083586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761791, 26.239883, 20.469528>,  <32.699921, 26.227644, 20.701094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761791, 26.239883, 20.469528>,  <32.864906, 26.260281, 20.083586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761791, 26.239883, 20.469528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123082, -0.992204, -0.019555,
		0.958330, 0.113715, 0.262055,
		-0.257788, -0.050995, 0.964855,
		32.684456, 26.224585, 20.758986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293877, 25.853724, 20.431530>,  <32.864906, 26.260281, 20.083586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293877, 25.853724, 20.431530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990902, 25.848118, 20.692635>,  <32.809116, 25.844755, 20.849297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990902, 25.848118, 20.692635>,  <33.293877, 25.853724, 20.431530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990902, 25.848118, 20.692635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067538, -0.996088, 0.056983,
		0.649407, 0.087247, 0.755419,
		-0.757436, -0.014014, 0.652760,
		32.763672, 25.843914, 20.888462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465385, 25.466114, 20.926765>,  <33.293877, 25.853724, 20.431530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465385, 25.466114, 20.926765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067997, 25.453278, 20.970558>,  <32.829563, 25.445576, 20.996834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067997, 25.453278, 20.970558>,  <33.465385, 25.466114, 20.926765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067997, 25.453278, 20.970558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081336, -0.872140, 0.482448,
		0.080001, 0.488203, 0.869056,
		-0.993471, -0.032089, 0.109481,
		32.769955, 25.443651, 21.003403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462406, 25.122931, 21.485083>,  <33.465385, 25.466114, 20.926765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462406, 25.122931, 21.485083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090893, 25.084812, 21.341816>,  <32.867985, 25.061941, 21.255856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090893, 25.084812, 21.341816>,  <33.462406, 25.122931, 21.485083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090893, 25.084812, 21.341816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026711, -0.946653, 0.321144,
		-0.369662, 0.307840, 0.876689,
		-0.928782, -0.095297, -0.358165,
		32.812260, 25.056223, 21.234367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169369, 24.817509, 21.915422>,  <33.462406, 25.122931, 21.485083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169369, 24.817509, 21.915422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920486, 24.739525, 21.612148>,  <32.771156, 24.692734, 21.430183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920486, 24.739525, 21.612148>,  <33.169369, 24.817509, 21.915422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920486, 24.739525, 21.612148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062393, -0.953063, 0.296274,
		-0.780360, 0.231650, 0.580841,
		-0.622210, -0.194960, -0.758186,
		32.733822, 24.681036, 21.384693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642433, 24.473017, 22.201712>,  <33.169369, 24.817509, 21.915422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642433, 24.473017, 22.201712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641251, 24.355385, 21.819401>,  <32.640541, 24.284805, 21.590015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641251, 24.355385, 21.819401>,  <32.642433, 24.473017, 22.201712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641251, 24.355385, 21.819401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046389, -0.954711, 0.293896,
		-0.998919, 0.045206, -0.010821,
		-0.002955, -0.294081, -0.955776,
		32.640366, 24.267160, 21.532667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128452, 23.919434, 22.175564>,  <32.642433, 24.473017, 22.201712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128452, 23.919434, 22.175564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354431, 23.848938, 21.853130>,  <32.490021, 23.806641, 21.659670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354431, 23.848938, 21.853130>,  <32.128452, 23.919434, 22.175564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354431, 23.848938, 21.853130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172161, -0.980599, 0.093735,
		-0.806965, 0.085820, -0.584331,
		0.564950, -0.176240, -0.806084,
		32.523914, 23.796066, 21.611305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662346, 23.482492, 21.634987>,  <32.128452, 23.919434, 22.175564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662346, 23.482492, 21.634987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057503, 23.426907, 21.607391>,  <32.294598, 23.393555, 21.590834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057503, 23.426907, 21.607391>,  <31.662346, 23.482492, 21.634987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057503, 23.426907, 21.607391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132884, -0.987389, 0.086054,
		-0.080077, -0.075845, -0.993899,
		0.987891, -0.138964, -0.068989,
		32.353870, 23.385218, 21.586695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293394, 23.092489, 21.002415>,  <31.662346, 23.482492, 21.634987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293394, 23.092489, 21.002415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932224, 22.949654, 20.906734>,  <30.715523, 22.863953, 20.849327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932224, 22.949654, 20.906734>,  <31.293394, 23.092489, 21.002415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932224, 22.949654, 20.906734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355236, 0.933309, -0.052355,
		0.241942, 0.037700, -0.969558,
		-0.902924, -0.357089, -0.239199,
		30.661346, 22.842527, 20.834974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100243, 23.389229, 20.365480>,  <31.293394, 23.092489, 21.002415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100243, 23.389229, 20.365480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754482, 23.310692, 20.550632>,  <30.547026, 23.263571, 20.661724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754482, 23.310692, 20.550632>,  <31.100243, 23.389229, 20.365480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754482, 23.310692, 20.550632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340616, 0.905845, -0.251846,
		-0.369850, -0.375361, -0.849891,
		-0.864402, -0.196341, 0.462881,
		30.495161, 23.251789, 20.689497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633041, 23.538975, 19.917244>,  <31.100243, 23.389229, 20.365480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633041, 23.538975, 19.917244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.411732, 23.546680, 20.250355>,  <30.278946, 23.551304, 20.450222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.411732, 23.546680, 20.250355>,  <30.633041, 23.538975, 19.917244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411732, 23.546680, 20.250355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564480, 0.726519, -0.391832,
		-0.612577, -0.686876, -0.391090,
		-0.553274, 0.019265, 0.832777,
		30.245750, 23.552460, 20.500187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833261, 23.546074, 19.686176>,  <30.633041, 23.538975, 19.917244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833261, 23.546074, 19.686176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.872971, 23.676231, 20.062317>,  <29.896795, 23.754326, 20.288002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.872971, 23.676231, 20.062317>,  <29.833261, 23.546074, 19.686176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872971, 23.676231, 20.062317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661657, 0.727418, -0.181861,
		-0.743206, -0.604138, 0.287509,
		0.099270, 0.325392, 0.940353,
		29.902752, 23.773849, 20.344423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236639, 23.735870, 19.737265>,  <29.833261, 23.546074, 19.686176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236639, 23.735870, 19.737265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.426132, 23.911114, 20.042850>,  <29.539827, 24.016260, 20.226202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.426132, 23.911114, 20.042850>,  <29.236639, 23.735870, 19.737265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426132, 23.911114, 20.042850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542446, 0.828548, -0.138778,
		-0.693780, -0.348665, 0.630160,
		0.473731, 0.438110, 0.763963,
		29.568251, 24.042547, 20.272039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705780, 23.968616, 20.187315>,  <29.236639, 23.735870, 19.737265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705780, 23.968616, 20.187315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.038725, 24.183575, 20.241547>,  <29.238491, 24.312550, 20.274086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.038725, 24.183575, 20.241547>,  <28.705780, 23.968616, 20.187315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038725, 24.183575, 20.241547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534044, 0.843096, -0.063139,
		-0.148235, -0.019850, 0.988753,
		0.832360, 0.537397, 0.135577,
		29.288433, 24.344793, 20.282219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540388, 24.408892, 20.717241>,  <28.705780, 23.968616, 20.187315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540388, 24.408892, 20.717241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.865047, 24.581242, 20.559471>,  <29.059843, 24.684652, 20.464809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.865047, 24.581242, 20.559471>,  <28.540388, 24.408892, 20.717241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865047, 24.581242, 20.559471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510201, 0.851718, -0.119464,
		0.284466, 0.298199, 0.911129,
		0.811649, 0.430876, -0.394426,
		29.108541, 24.710505, 20.441143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543081, 25.044840, 21.046465>,  <28.540388, 24.408892, 20.717241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543081, 25.044840, 21.046465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.777327, 25.092209, 20.725708>,  <28.917873, 25.120630, 20.533253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.777327, 25.092209, 20.725708>,  <28.543081, 25.044840, 21.046465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777327, 25.092209, 20.725708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364809, 0.921925, -0.130266,
		0.723860, 0.368823, 0.583092,
		0.585612, 0.118423, -0.801894,
		28.953011, 25.127735, 20.485140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981998, 25.590878, 21.258158>,  <28.543081, 25.044840, 21.046465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981998, 25.590878, 21.258158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.940470, 25.559872, 20.861530>,  <28.915552, 25.541267, 20.623554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.940470, 25.559872, 20.861530>,  <28.981998, 25.590878, 21.258158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940470, 25.559872, 20.861530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287271, 0.956805, -0.044719,
		0.952206, 0.280207, -0.121605,
		-0.103822, -0.077515, -0.991570,
		28.909323, 25.536617, 20.564058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374699, 26.235462, 21.007315>,  <28.981998, 25.590878, 21.258158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374699, 26.235462, 21.007315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.124353, 26.098297, 20.727112>,  <28.974146, 26.015999, 20.558990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.124353, 26.098297, 20.727112>,  <29.374699, 26.235462, 21.007315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124353, 26.098297, 20.727112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384352, 0.917132, -0.105556,
		0.678652, 0.203177, -0.705797,
		-0.625863, -0.342910, -0.700505,
		28.936594, 25.995424, 20.516960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352644, 26.802715, 20.470894>,  <29.374699, 26.235462, 21.007315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352644, 26.802715, 20.470894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036955, 26.584862, 20.357403>,  <28.847542, 26.454149, 20.289309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036955, 26.584862, 20.357403>,  <29.352644, 26.802715, 20.470894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036955, 26.584862, 20.357403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542534, 0.834827, -0.093388,
		0.287728, 0.080229, -0.954346,
		-0.789221, -0.544635, -0.283730,
		28.800188, 26.421471, 20.272284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102282, 27.139856, 19.796623>,  <29.352644, 26.802715, 20.470894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102282, 27.139856, 19.796623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.790306, 26.925446, 19.925850>,  <28.603121, 26.796799, 20.003386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.790306, 26.925446, 19.925850>,  <29.102282, 27.139856, 19.796623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790306, 26.925446, 19.925850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597093, 0.791984, -0.127441,
		-0.187552, -0.292297, -0.937756,
		-0.779939, -0.536026, 0.323066,
		28.556324, 26.764637, 20.022770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619375, 27.183611, 19.321667>,  <29.102282, 27.139856, 19.796623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619375, 27.183611, 19.321667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.424364, 27.089336, 19.657944>,  <28.307358, 27.032772, 19.859711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.424364, 27.089336, 19.657944>,  <28.619375, 27.183611, 19.321667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424364, 27.089336, 19.657944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698519, 0.682965, -0.213612,
		-0.523819, -0.691383, -0.497598,
		-0.487530, -0.235687, 0.840694,
		28.278105, 27.018631, 19.910152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867830, 27.104176, 19.202644>,  <28.619375, 27.183611, 19.321667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867830, 27.104176, 19.202644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.928680, 27.182911, 19.590069>,  <27.965191, 27.230152, 19.822523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.928680, 27.182911, 19.590069>,  <27.867830, 27.104176, 19.202644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928680, 27.182911, 19.590069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605397, 0.793173, -0.066111,
		-0.781250, -0.576308, 0.239827,
		0.152124, 0.196840, 0.968562,
		27.974318, 27.241962, 19.880638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.033154, 38.318897, 29.625122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.371861, 38.127445, 29.717983>,  <40.575085, 38.012573, 29.773701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.371861, 38.127445, 29.717983>,  <40.033154, 38.318897, 29.625122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371861, 38.127445, 29.717983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070531, -0.533570, -0.842810,
		0.527267, 0.697290, -0.485568,
		0.846768, -0.478633, 0.232153,
		40.625893, 37.983856, 29.787630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246338, 38.138042, 29.007059>,  <40.033154, 38.318897, 29.625122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246338, 38.138042, 29.007059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521503, 37.933266, 29.212852>,  <40.686604, 37.810402, 29.336329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521503, 37.933266, 29.212852>,  <40.246338, 38.138042, 29.007059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521503, 37.933266, 29.212852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242723, -0.505774, -0.827815,
		0.684003, 0.694342, -0.223670,
		0.687914, -0.511938, 0.514484,
		40.727879, 37.779686, 29.367197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883781, 38.168983, 28.628469>,  <40.246338, 38.138042, 29.007059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883781, 38.168983, 28.628469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877304, 37.830853, 28.842072>,  <40.873417, 37.627975, 28.970232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877304, 37.830853, 28.842072>,  <40.883781, 38.168983, 28.628469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877304, 37.830853, 28.842072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237847, -0.522003, -0.819111,
		0.971168, 0.113744, 0.209513,
		-0.016197, -0.845326, 0.534006,
		40.872444, 37.577255, 29.002274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473160, 37.842171, 28.558617>,  <40.883781, 38.168983, 28.628469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473160, 37.842171, 28.558617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.273365, 37.519760, 28.685638>,  <41.153488, 37.326313, 28.761850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.273365, 37.519760, 28.685638>,  <41.473160, 37.842171, 28.558617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273365, 37.519760, 28.685638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349029, -0.522715, -0.777784,
		0.792903, -0.277654, 0.542414,
		-0.499483, -0.806025, 0.317553,
		41.123520, 37.277954, 28.780905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930538, 37.238541, 28.450762>,  <41.473160, 37.842171, 28.558617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930538, 37.238541, 28.450762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562286, 37.088268, 28.493305>,  <41.341335, 36.998104, 28.518831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562286, 37.088268, 28.493305>,  <41.930538, 37.238541, 28.450762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562286, 37.088268, 28.493305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094301, -0.478281, -0.873129,
		0.378883, -0.793797, 0.475745,
		-0.920627, -0.375677, 0.106357,
		41.286098, 36.975567, 28.525211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121246, 36.631287, 28.133936>,  <41.930538, 37.238541, 28.450762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121246, 36.631287, 28.133936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.724869, 36.683937, 28.123344>,  <41.487041, 36.715527, 28.116989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.724869, 36.683937, 28.123344>,  <42.121246, 36.631287, 28.133936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724869, 36.683937, 28.123344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059021, -0.604201, -0.794643,
		-0.120592, -0.785886, 0.606500,
		-0.990946, 0.131624, -0.026478,
		41.427586, 36.723423, 28.115400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779804, 35.957153, 27.810324>,  <42.121246, 36.631287, 28.133936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779804, 35.957153, 27.810324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.468445, 36.206604, 27.781513>,  <41.281628, 36.356274, 27.764227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.468445, 36.206604, 27.781513>,  <41.779804, 35.957153, 27.810324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468445, 36.206604, 27.781513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331648, -0.505921, -0.796275,
		-0.533021, -0.595928, 0.600631,
		-0.778394, 0.623629, -0.072028,
		41.234924, 36.393692, 27.759907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207153, 35.561058, 27.720684>,  <41.779804, 35.957153, 27.810324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207153, 35.561058, 27.720684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122734, 35.922894, 27.572536>,  <41.072083, 36.139996, 27.483648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122734, 35.922894, 27.572536>,  <41.207153, 35.561058, 27.720684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122734, 35.922894, 27.572536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414346, -0.425969, -0.804281,
		-0.885311, -0.016281, 0.464714,
		-0.211049, 0.904591, -0.370369,
		41.059418, 36.194271, 27.461426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519257, 35.489037, 27.561934>,  <41.207153, 35.561058, 27.720684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519257, 35.489037, 27.561934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644154, 35.809826, 27.358234>,  <40.719093, 36.002300, 27.236015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644154, 35.809826, 27.358234>,  <40.519257, 35.489037, 27.561934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644154, 35.809826, 27.358234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488778, -0.324039, -0.809997,
		-0.814616, 0.501829, 0.290809,
		0.312246, 0.801977, -0.509250,
		40.737827, 36.050419, 27.205460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932098, 35.860916, 27.301071>,  <40.519257, 35.489037, 27.561934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932098, 35.860916, 27.301071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.246277, 35.961296, 27.074764>,  <40.434784, 36.021526, 26.938980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.246277, 35.961296, 27.074764>,  <39.932098, 35.860916, 27.301071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246277, 35.961296, 27.074764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461396, -0.371868, -0.805498,
		-0.412534, 0.893720, -0.176294,
		0.785448, 0.250954, -0.565768,
		40.481911, 36.036583, 26.905033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632313, 36.134415, 26.752050>,  <39.932098, 35.860916, 27.301071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632313, 36.134415, 26.752050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000023, 36.061859, 26.612320>,  <40.220650, 36.018326, 26.528482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000023, 36.061859, 26.612320>,  <39.632313, 36.134415, 26.752050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000023, 36.061859, 26.612320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393597, -0.430925, -0.812025,
		-0.003243, 0.883970, -0.467533,
		0.919278, -0.181386, -0.349325,
		40.275806, 36.007442, 26.507523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662224, 36.238472, 26.023775>,  <39.632313, 36.134415, 26.752050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662224, 36.238472, 26.023775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.958549, 35.974903, 26.075966>,  <40.136345, 35.816761, 26.107281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.958549, 35.974903, 26.075966>,  <39.662224, 36.238472, 26.023775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958549, 35.974903, 26.075966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337456, -0.533030, -0.775888,
		0.580796, 0.530756, -0.617231,
		0.740810, -0.658921, 0.130475,
		40.180794, 35.777225, 26.115108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928898, 36.163708, 25.317501>,  <39.662224, 36.238472, 26.023775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928898, 36.163708, 25.317501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087017, 35.866856, 25.534012>,  <40.181889, 35.688744, 25.663919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087017, 35.866856, 25.534012>,  <39.928898, 36.163708, 25.317501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087017, 35.866856, 25.534012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102899, -0.621341, -0.776755,
		0.912771, 0.251353, -0.321979,
		0.395298, -0.742130, 0.541278,
		40.205608, 35.644215, 25.696396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515633, 35.888893, 24.962475>,  <39.928898, 36.163708, 25.317501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515633, 35.888893, 24.962475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397732, 35.593163, 25.204639>,  <40.326992, 35.415726, 25.349937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397732, 35.593163, 25.204639>,  <40.515633, 35.888893, 24.962475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397732, 35.593163, 25.204639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129896, -0.596677, -0.791899,
		0.946703, -0.312058, 0.079839,
		-0.294756, -0.739322, 0.605411,
		40.309303, 35.371365, 25.386263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799709, 35.266537, 24.660635>,  <40.515633, 35.888893, 24.962475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799709, 35.266537, 24.660635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511700, 35.142433, 24.908928>,  <40.338894, 35.067970, 25.057903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511700, 35.142433, 24.908928>,  <40.799709, 35.266537, 24.660635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511700, 35.142433, 24.908928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307744, -0.658964, -0.686339,
		0.621982, -0.685205, 0.378988,
		-0.720022, -0.310260, 0.620731,
		40.295692, 35.049355, 25.095148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771870, 34.588848, 24.698221>,  <40.799709, 35.266537, 24.660635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771870, 34.588848, 24.698221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395496, 34.677574, 24.800541>,  <40.169670, 34.730808, 24.861933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395496, 34.677574, 24.800541>,  <40.771870, 34.588848, 24.698221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395496, 34.677574, 24.800541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327380, -0.788765, -0.520262,
		0.086363, -0.573278, 0.814797,
		-0.940938, 0.221817, 0.255800,
		40.113216, 34.744118, 24.877281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571327, 33.969109, 24.972853>,  <40.771870, 34.588848, 24.698221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571327, 33.969109, 24.972853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230156, 34.173435, 24.929817>,  <40.025452, 34.296032, 24.903996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230156, 34.173435, 24.929817>,  <40.571327, 33.969109, 24.972853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230156, 34.173435, 24.929817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486011, -0.852267, -0.193479,
		-0.190527, -0.112734, 0.975188,
		-0.852932, 0.510815, -0.107590,
		39.974277, 34.326679, 24.897541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042286, 33.542274, 25.289656>,  <40.571327, 33.969109, 24.972853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042286, 33.542274, 25.289656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.849060, 33.774113, 25.027138>,  <39.733124, 33.913216, 24.869627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.849060, 33.774113, 25.027138>,  <40.042286, 33.542274, 25.289656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849060, 33.774113, 25.027138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525410, -0.791480, -0.312256,
		-0.700426, 0.193985, 0.686858,
		-0.483061, 0.579594, -0.656295,
		39.704144, 33.947990, 24.830250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364986, 33.441479, 25.302425>,  <40.042286, 33.542274, 25.289656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364986, 33.441479, 25.302425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417812, 33.599674, 24.938854>,  <39.449509, 33.694592, 24.720713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417812, 33.599674, 24.938854>,  <39.364986, 33.441479, 25.302425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417812, 33.599674, 24.938854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396133, -0.819495, -0.414133,
		-0.908645, 0.414750, 0.048436,
		0.132069, 0.395487, -0.908927,
		39.457432, 33.718319, 24.666176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866100, 33.142654, 24.931810>,  <39.364986, 33.441479, 25.302425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866100, 33.142654, 24.931810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.084171, 33.315250, 24.644314>,  <39.215015, 33.418808, 24.471815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.084171, 33.315250, 24.644314>,  <38.866100, 33.142654, 24.931810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084171, 33.315250, 24.644314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361356, -0.652665, -0.665921,
		-0.756439, 0.622769, -0.199897,
		0.545180, 0.431495, -0.718743,
		39.247726, 33.444698, 24.428692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432915, 33.090950, 24.374454>,  <38.866100, 33.142654, 24.931810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432915, 33.090950, 24.374454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799526, 33.147362, 24.224747>,  <39.019493, 33.181210, 24.134922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799526, 33.147362, 24.224747>,  <38.432915, 33.090950, 24.374454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799526, 33.147362, 24.224747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147805, -0.750098, -0.644598,
		-0.371646, 0.646115, -0.666645,
		0.916533, 0.141029, -0.374270,
		39.074486, 33.189671, 24.112465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752815, 32.831081, 24.605738>,  <38.432915, 33.090950, 24.374454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752815, 32.831081, 24.605738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364895, 32.928322, 24.613594>,  <37.132141, 32.986664, 24.618307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364895, 32.928322, 24.613594>,  <37.752815, 32.831081, 24.605738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364895, 32.928322, 24.613594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191865, 0.710732, 0.676792,
		0.150568, 0.660123, -0.735912,
		-0.969802, 0.243099, 0.019642,
		37.073956, 33.001251, 24.619486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800030, 33.587521, 24.704067>,  <37.752815, 32.831081, 24.605738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800030, 33.587521, 24.704067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.425827, 33.465729, 24.775764>,  <37.201305, 33.392654, 24.818783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.425827, 33.465729, 24.775764>,  <37.800030, 33.587521, 24.704067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425827, 33.465729, 24.775764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066790, 0.650557, 0.756515,
		-0.346950, 0.695750, -0.628934,
		-0.935502, -0.304479, 0.179242,
		37.145176, 33.374386, 24.829536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385796, 34.191456, 24.666985>,  <37.800030, 33.587521, 24.704067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385796, 34.191456, 24.666985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.245251, 33.900043, 24.902199>,  <37.160923, 33.725197, 25.043327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.245251, 33.900043, 24.902199>,  <37.385796, 34.191456, 24.666985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245251, 33.900043, 24.902199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163852, 0.666238, 0.727516,
		-0.921790, 0.159270, -0.353462,
		-0.351362, -0.728533, 0.588035,
		37.139843, 33.681484, 25.078609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823315, 34.455791, 24.957237>,  <37.385796, 34.191456, 24.666985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823315, 34.455791, 24.957237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.923313, 34.155464, 25.201786>,  <36.983311, 33.975269, 25.348515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.923313, 34.155464, 25.201786>,  <36.823315, 34.455791, 24.957237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923313, 34.155464, 25.201786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271419, 0.551762, 0.788601,
		-0.929427, -0.363084, -0.065848,
		0.249996, -0.750819, 0.611370,
		36.998310, 33.930218, 25.385197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213299, 34.472126, 25.320238>,  <36.823315, 34.455791, 24.957237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213299, 34.472126, 25.320238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.494919, 34.272858, 25.522678>,  <36.663891, 34.153297, 25.644142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.494919, 34.272858, 25.522678>,  <36.213299, 34.472126, 25.320238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494919, 34.272858, 25.522678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207842, 0.536912, 0.817635,
		-0.679058, -0.680843, 0.274469,
		0.704047, -0.498176, 0.506102,
		36.706131, 34.123405, 25.674509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962849, 34.392414, 25.934998>,  <36.213299, 34.472126, 25.320238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962849, 34.392414, 25.934998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.350727, 34.354408, 26.025024>,  <36.583454, 34.331604, 26.079041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.350727, 34.354408, 26.025024>,  <35.962849, 34.392414, 25.934998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350727, 34.354408, 26.025024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142687, 0.527520, 0.837474,
		-0.198302, -0.844212, 0.497978,
		0.969700, -0.095018, 0.225066,
		36.641636, 34.325905, 26.092545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925686, 34.206974, 26.676836>,  <35.962849, 34.392414, 25.934998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925686, 34.206974, 26.676836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.306507, 34.320534, 26.631237>,  <36.535000, 34.388672, 26.603878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.306507, 34.320534, 26.631237>,  <35.925686, 34.206974, 26.676836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306507, 34.320534, 26.631237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020312, 0.430461, 0.902380,
		0.305259, -0.856798, 0.415589,
		0.952053, 0.283902, -0.113999,
		36.592121, 34.405704, 26.597036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244598, 34.094299, 27.378654>,  <35.925686, 34.206974, 26.676836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244598, 34.094299, 27.378654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.498970, 34.328419, 27.177452>,  <36.651592, 34.468891, 27.056730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.498970, 34.328419, 27.177452>,  <36.244598, 34.094299, 27.378654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498970, 34.328419, 27.177452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096299, 0.586503, 0.804202,
		0.765716, -0.559855, 0.316611,
		0.635929, 0.585301, -0.503008,
		36.689751, 34.504009, 27.026550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857712, 34.078392, 27.807327>,  <36.244598, 34.094299, 27.378654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857712, 34.078392, 27.807327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.856918, 34.403427, 27.574192>,  <36.856441, 34.598446, 27.434311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.856918, 34.403427, 27.574192>,  <36.857712, 34.078392, 27.807327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856918, 34.403427, 27.574192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302099, 0.556094, 0.774271,
		0.953275, -0.174537, -0.246585,
		-0.001986, 0.812586, -0.582838,
		36.856323, 34.647202, 27.399340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423050, 34.535503, 28.059166>,  <36.857712, 34.078392, 27.807327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423050, 34.535503, 28.059166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.257961, 34.816978, 27.827827>,  <37.158909, 34.985863, 27.689024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.257961, 34.816978, 27.827827>,  <37.423050, 34.535503, 28.059166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257961, 34.816978, 27.827827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204171, 0.690265, 0.694153,
		0.887677, 0.168413, -0.428563,
		-0.412726, 0.703684, -0.578348,
		37.134144, 35.028084, 27.654324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941792, 35.163788, 27.813318>,  <37.423050, 34.535503, 28.059166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941792, 35.163788, 27.813318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.552975, 35.257103, 27.823975>,  <37.319683, 35.313091, 27.830368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.552975, 35.257103, 27.823975>,  <37.941792, 35.163788, 27.813318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552975, 35.257103, 27.823975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183534, 0.684134, 0.705886,
		0.146448, 0.691041, -0.707824,
		-0.972043, 0.233285, 0.026640,
		37.261360, 35.327087, 27.831966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913074, 35.835640, 27.975355>,  <37.941792, 35.163788, 27.813318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913074, 35.835640, 27.975355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548634, 35.712936, 28.085472>,  <37.329967, 35.639313, 28.151543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548634, 35.712936, 28.085472>,  <37.913074, 35.835640, 27.975355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548634, 35.712936, 28.085472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089495, 0.504738, 0.858621,
		-0.402342, 0.806931, -0.432416,
		-0.911105, -0.306760, 0.275294,
		37.275303, 35.620907, 28.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644310, 36.365654, 28.290215>,  <37.913074, 35.835640, 27.975355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644310, 36.365654, 28.290215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.382328, 36.090012, 28.414265>,  <37.225140, 35.924625, 28.488695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.382328, 36.090012, 28.414265>,  <37.644310, 36.365654, 28.290215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382328, 36.090012, 28.414265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067005, 0.461741, 0.884481,
		-0.752696, 0.558511, -0.348591,
		-0.654950, -0.689102, 0.310127,
		37.185844, 35.883282, 28.507303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108173, 36.702133, 28.585489>,  <37.644310, 36.365654, 28.290215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108173, 36.702133, 28.585489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109978, 36.327602, 28.725925>,  <37.111061, 36.102882, 28.810186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109978, 36.327602, 28.725925>,  <37.108173, 36.702133, 28.585489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109978, 36.327602, 28.725925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013151, 0.351006, 0.936281,
		-0.999903, -0.008837, -0.010731,
		0.004507, -0.936332, 0.351088,
		37.111328, 36.046703, 28.831251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614075, 36.677380, 29.041853>,  <37.108173, 36.702133, 28.585489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614075, 36.677380, 29.041853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867901, 36.388493, 29.151932>,  <37.020195, 36.215160, 29.217979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867901, 36.388493, 29.151932>,  <36.614075, 36.677380, 29.041853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867901, 36.388493, 29.151932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092821, 0.282278, 0.954831,
		-0.767276, -0.631446, 0.112087,
		0.634565, -0.722215, 0.275197,
		37.058270, 36.171829, 29.234491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269302, 36.401440, 29.561007>,  <36.614075, 36.677380, 29.041853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269302, 36.401440, 29.561007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.651363, 36.288391, 29.596348>,  <36.880600, 36.220562, 29.617552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.651363, 36.288391, 29.596348>,  <36.269302, 36.401440, 29.561007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651363, 36.288391, 29.596348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033186, 0.194327, 0.980375,
		-0.294244, -0.939341, 0.176233,
		0.955154, -0.282621, 0.088352,
		36.937908, 36.203606, 29.622854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338135, 36.137032, 30.260365>,  <36.269302, 36.401440, 29.561007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338135, 36.137032, 30.260365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.717430, 36.199120, 30.149544>,  <36.945007, 36.236374, 30.083052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.717430, 36.199120, 30.149544>,  <36.338135, 36.137032, 30.260365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717430, 36.199120, 30.149544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216182, 0.323565, 0.921179,
		0.232629, -0.933387, 0.273260,
		0.948234, 0.155219, -0.277052,
		37.001900, 36.245686, 30.066427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699505, 35.977486, 30.859512>,  <36.338135, 36.137032, 30.260365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699505, 35.977486, 30.859512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975903, 36.177868, 30.651062>,  <37.141743, 36.298096, 30.525991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975903, 36.177868, 30.651062>,  <36.699505, 35.977486, 30.859512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975903, 36.177868, 30.651062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404577, 0.329415, 0.853114,
		0.599037, -0.800333, 0.024950,
		0.690994, 0.500953, -0.521128,
		37.183201, 36.328152, 30.494724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301609, 35.909790, 31.348043>,  <36.699505, 35.977486, 30.859512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301609, 35.909790, 31.348043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358242, 36.226315, 31.110126>,  <37.392223, 36.416229, 30.967377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358242, 36.226315, 31.110126>,  <37.301609, 35.909790, 31.348043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358242, 36.226315, 31.110126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519592, 0.452021, 0.725052,
		0.842602, -0.411706, -0.347161,
		0.141584, 0.791312, -0.594793,
		37.400719, 36.463707, 30.931688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031437, 36.021530, 31.509233>,  <37.301609, 35.909790, 31.348043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031437, 36.021530, 31.509233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892506, 36.354404, 31.336338>,  <37.809147, 36.554131, 31.232601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892506, 36.354404, 31.336338>,  <38.031437, 36.021530, 31.509233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892506, 36.354404, 31.336338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543056, 0.554277, 0.630767,
		0.764494, -0.015644, -0.644442,
		-0.347332, 0.832185, -0.432237,
		37.788307, 36.604061, 31.206667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610188, 36.450062, 31.386654>,  <38.031437, 36.021530, 31.509233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610188, 36.450062, 31.386654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278183, 36.667538, 31.436413>,  <38.078979, 36.798023, 31.466269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278183, 36.667538, 31.436413>,  <38.610188, 36.450062, 31.386654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278183, 36.667538, 31.436413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496777, 0.619275, 0.608039,
		0.253551, 0.566478, -0.784101,
		-0.830015, 0.543692, 0.124396,
		38.029179, 36.830647, 31.473732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.415783, 22.068499, 23.577372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.768156, 22.149338, 23.748539>,  <27.979580, 22.197842, 23.851240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.768156, 22.149338, 23.748539>,  <27.415783, 22.068499, 23.577372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768156, 22.149338, 23.748539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314956, -0.925265, -0.211394,
		0.353215, 0.320999, -0.878748,
		0.880933, 0.202100, 0.427918,
		28.032436, 22.209969, 23.876915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814692, 21.719044, 23.169512>,  <27.415783, 22.068499, 23.577372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814692, 21.719044, 23.169512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.025423, 21.751163, 23.507980>,  <28.151861, 21.770435, 23.711061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.025423, 21.751163, 23.507980>,  <27.814692, 21.719044, 23.169512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025423, 21.751163, 23.507980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344442, -0.930291, -0.126167,
		0.777053, 0.357924, -0.517763,
		0.526829, 0.080301, 0.846170,
		28.183472, 21.775253, 23.761831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390846, 21.314016, 23.064749>,  <27.814692, 21.719044, 23.169512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390846, 21.314016, 23.064749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.434578, 21.370934, 23.458256>,  <28.460817, 21.405083, 23.694361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.434578, 21.370934, 23.458256>,  <28.390846, 21.314016, 23.064749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434578, 21.370934, 23.458256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395691, -0.914134, 0.088246,
		0.911853, 0.379621, -0.156242,
		0.109327, 0.142291, 0.983769,
		28.467377, 21.413620, 23.753386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961645, 20.951454, 23.141991>,  <28.390846, 21.314016, 23.064749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961645, 20.951454, 23.141991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.787233, 20.975491, 23.501160>,  <28.682587, 20.989912, 23.716661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.787233, 20.975491, 23.501160>,  <28.961645, 20.951454, 23.141991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787233, 20.975491, 23.501160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300211, -0.930901, 0.208078,
		0.848382, 0.360295, 0.387861,
		-0.436029, 0.060090, 0.897924,
		28.656424, 20.993517, 23.770536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511438, 20.745953, 23.694223>,  <28.961645, 20.951454, 23.141991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511438, 20.745953, 23.694223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142101, 20.680923, 23.833370>,  <28.920500, 20.641907, 23.916859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142101, 20.680923, 23.833370>,  <29.511438, 20.745953, 23.694223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142101, 20.680923, 23.833370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244098, -0.947846, 0.204947,
		0.296405, 0.274150, 0.914869,
		-0.923342, -0.162571, 0.347866,
		28.865099, 20.632153, 23.937731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576515, 20.361034, 24.371351>,  <29.511438, 20.745953, 23.694223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576515, 20.361034, 24.371351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.204769, 20.275673, 24.250858>,  <28.981722, 20.224455, 24.178562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.204769, 20.275673, 24.250858>,  <29.576515, 20.361034, 24.371351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204769, 20.275673, 24.250858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130666, -0.953317, 0.272236,
		-0.345265, 0.213646, 0.913864,
		-0.929364, -0.213405, -0.301231,
		28.925961, 20.211651, 24.160488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271763, 19.883619, 24.841988>,  <29.576515, 20.361034, 24.371351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271763, 19.883619, 24.841988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.062239, 19.840244, 24.504025>,  <28.936525, 19.814220, 24.301247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.062239, 19.840244, 24.504025>,  <29.271763, 19.883619, 24.841988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062239, 19.840244, 24.504025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104823, -0.976121, 0.190262,
		-0.845362, 0.188226, 0.499934,
		-0.523808, -0.108436, -0.844906,
		28.905096, 19.807714, 24.250553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594120, 19.594160, 25.013676>,  <29.271763, 19.883619, 24.841988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594120, 19.594160, 25.013676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.669584, 19.529800, 24.626167>,  <28.714863, 19.491184, 24.393661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.669584, 19.529800, 24.626167>,  <28.594120, 19.594160, 25.013676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669584, 19.529800, 24.626167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027963, -0.985206, 0.169074,
		-0.981645, -0.058986, -0.181367,
		0.188657, -0.160899, -0.968772,
		28.726183, 19.481531, 24.335535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290350, 19.001904, 24.974592>,  <28.594120, 19.594160, 25.013676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290350, 19.001904, 24.974592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.494976, 19.020950, 24.631424>,  <28.617752, 19.032377, 24.425522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.494976, 19.020950, 24.631424>,  <28.290350, 19.001904, 24.974592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494976, 19.020950, 24.631424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151469, -0.987825, 0.035494,
		-0.845787, -0.148106, -0.512552,
		0.511568, 0.047615, -0.857923,
		28.648447, 19.035234, 24.374046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029732, 18.435095, 24.566898>,  <28.290350, 19.001904, 24.974592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029732, 18.435095, 24.566898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.387478, 18.511028, 24.404873>,  <28.602125, 18.556589, 24.307657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.387478, 18.511028, 24.404873>,  <28.029732, 18.435095, 24.566898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387478, 18.511028, 24.404873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142892, -0.979288, -0.143450,
		-0.423906, 0.070416, -0.902965,
		0.894363, 0.189835, -0.405064,
		28.655787, 18.567980, 24.283354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934940, 17.990881, 23.936211>,  <28.029732, 18.435095, 24.566898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934940, 17.990881, 23.936211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.311296, 18.093422, 24.024761>,  <28.537111, 18.154945, 24.077890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.311296, 18.093422, 24.024761>,  <27.934940, 17.990881, 23.936211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311296, 18.093422, 24.024761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285566, -0.951853, -0.111477,
		0.182138, 0.168105, -0.968796,
		0.940892, 0.256351, 0.221374,
		28.593563, 18.170328, 24.091173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343697, 17.689928, 23.428450>,  <27.934940, 17.990881, 23.936211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343697, 17.689928, 23.428450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.598326, 17.740940, 23.732689>,  <28.751104, 17.771547, 23.915232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.598326, 17.740940, 23.732689>,  <28.343697, 17.689928, 23.428450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598326, 17.740940, 23.732689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269493, -0.960844, -0.064442,
		0.722598, 0.245998, -0.646017,
		0.636574, 0.127532, 0.760598,
		28.789297, 17.779200, 23.960869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033226, 17.512424, 23.209944>,  <28.343697, 17.689928, 23.428450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033226, 17.512424, 23.209944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.998026, 17.478996, 23.606987>,  <28.976906, 17.458939, 23.845213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.998026, 17.478996, 23.606987>,  <29.033226, 17.512424, 23.209944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998026, 17.478996, 23.606987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198373, -0.977985, -0.064753,
		0.976168, 0.191208, 0.102642,
		-0.088001, -0.083571, 0.992608,
		28.971626, 17.453924, 23.904770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629642, 17.107756, 22.932901>,  <29.033226, 17.512424, 23.209944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629642, 17.107756, 22.932901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614996, 17.417961, 22.680794>,  <29.606207, 17.604084, 22.529530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614996, 17.417961, 22.680794>,  <29.629642, 17.107756, 22.932901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614996, 17.417961, 22.680794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423889, -0.583198, -0.692964,
		-0.904974, 0.241789, 0.350086,
		-0.036618, 0.775512, -0.630270,
		29.604010, 17.650614, 22.491713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180069, 17.130054, 22.453220>,  <29.629642, 17.107756, 22.932901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180069, 17.130054, 22.453220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476950, 17.151688, 22.186024>,  <30.655077, 17.164667, 22.025705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476950, 17.151688, 22.186024>,  <30.180069, 17.130054, 22.453220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476950, 17.151688, 22.186024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096452, 0.994982, -0.026611,
		0.663201, 0.084180, 0.743693,
		0.742201, 0.054082, -0.667992,
		30.699610, 17.167912, 21.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647675, 17.732185, 22.649111>,  <30.180069, 17.130054, 22.453220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647675, 17.732185, 22.649111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714338, 17.672501, 22.259247>,  <30.754335, 17.636690, 22.025328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714338, 17.672501, 22.259247>,  <30.647675, 17.732185, 22.649111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714338, 17.672501, 22.259247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005550, 0.988610, -0.150397,
		0.985999, 0.019656, 0.165588,
		0.166659, -0.149210, -0.974660,
		30.764336, 17.627737, 21.966848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233704, 18.100544, 22.474442>,  <30.647675, 17.732185, 22.649111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233704, 18.100544, 22.474442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055082, 18.050358, 22.120075>,  <30.947908, 18.020247, 21.907455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055082, 18.050358, 22.120075>,  <31.233704, 18.100544, 22.474442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055082, 18.050358, 22.120075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078127, 0.980871, -0.178294,
		0.891339, -0.148832, -0.428211,
		-0.446555, -0.125466, -0.885916,
		30.921116, 18.012718, 21.854300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661692, 18.418951, 21.879623>,  <31.233704, 18.100544, 22.474442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661692, 18.418951, 21.879623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280853, 18.399548, 21.758854>,  <31.052349, 18.387905, 21.686392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280853, 18.399548, 21.758854>,  <31.661692, 18.418951, 21.879623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280853, 18.399548, 21.758854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057574, 0.941245, -0.332782,
		0.300328, -0.334224, -0.893363,
		-0.952097, -0.048509, -0.301925,
		30.995224, 18.384995, 21.668276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716282, 18.943327, 21.369341>,  <31.661692, 18.418951, 21.879623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716282, 18.943327, 21.369341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326160, 18.854977, 21.369087>,  <31.092089, 18.801968, 21.368935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326160, 18.854977, 21.369087>,  <31.716282, 18.943327, 21.369341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326160, 18.854977, 21.369087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194495, 0.860175, -0.471455,
		0.104678, -0.459688, -0.881890,
		-0.975302, -0.220875, -0.000634,
		31.033569, 18.788713, 21.368896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493204, 18.992516, 20.663900>,  <31.716282, 18.943327, 21.369341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493204, 18.992516, 20.663900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187668, 19.075089, 20.908501>,  <31.004345, 19.124632, 21.055260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187668, 19.075089, 20.908501>,  <31.493204, 18.992516, 20.663900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187668, 19.075089, 20.908501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195823, 0.828677, -0.524354,
		-0.614978, -0.520270, -0.592555,
		-0.763842, 0.206430, 0.611499,
		30.958515, 19.137018, 21.091951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990108, 19.446196, 20.339964>,  <31.493204, 18.992516, 20.663900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990108, 19.446196, 20.339964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844475, 19.495987, 20.709167>,  <30.757095, 19.525862, 20.930691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844475, 19.495987, 20.709167>,  <30.990108, 19.446196, 20.339964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844475, 19.495987, 20.709167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194481, 0.959021, -0.206050,
		-0.910835, -0.254528, -0.324955,
		-0.364084, 0.124479, 0.923010,
		30.735249, 19.533331, 20.986071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446352, 19.853794, 20.064859>,  <30.990108, 19.446196, 20.339964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446352, 19.853794, 20.064859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.475153, 19.885750, 20.462540>,  <30.492434, 19.904922, 20.701147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.475153, 19.885750, 20.462540>,  <30.446352, 19.853794, 20.064859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475153, 19.885750, 20.462540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380368, 0.923657, -0.046674,
		-0.922028, -0.374801, 0.096891,
		0.072001, 0.079889, 0.994200,
		30.496754, 19.909716, 20.760799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722292, 20.033991, 20.397495>,  <30.446352, 19.853794, 20.064859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722292, 20.033991, 20.397495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015755, 20.153957, 20.641396>,  <30.191833, 20.225937, 20.787735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015755, 20.153957, 20.641396>,  <29.722292, 20.033991, 20.397495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015755, 20.153957, 20.641396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342287, 0.938282, -0.049665,
		-0.587014, -0.172273, 0.791035,
		0.733659, 0.299915, 0.609751,
		30.235853, 20.243933, 20.824322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452295, 20.495564, 20.832987>,  <29.722292, 20.033991, 20.397495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452295, 20.495564, 20.832987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.839645, 20.587761, 20.871193>,  <30.072056, 20.643080, 20.894117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.839645, 20.587761, 20.871193>,  <29.452295, 20.495564, 20.832987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839645, 20.587761, 20.871193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240450, 0.964329, 0.110695,
		-0.066594, -0.130161, 0.989254,
		0.968375, 0.230494, 0.095516,
		30.130157, 20.656910, 20.899847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513407, 20.996878, 21.357588>,  <29.452295, 20.495564, 20.832987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513407, 20.996878, 21.357588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.857998, 21.079216, 21.171906>,  <30.064753, 21.128618, 21.060495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.857998, 21.079216, 21.171906>,  <29.513407, 20.996878, 21.357588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857998, 21.079216, 21.171906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177307, 0.978551, 0.104880,
		0.475839, -0.008045, 0.879496,
		0.861476, 0.205846, -0.464206,
		30.116440, 21.140970, 21.032644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852192, 21.601957, 21.742203>,  <29.513407, 20.996878, 21.357588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852192, 21.601957, 21.742203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067892, 21.587315, 21.405663>,  <30.197311, 21.578529, 21.203739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067892, 21.587315, 21.405663>,  <29.852192, 21.601957, 21.742203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067892, 21.587315, 21.405663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086358, 0.996192, 0.012008,
		0.837706, -0.079132, 0.540358,
		0.539251, -0.036605, -0.841349,
		30.229668, 21.576334, 21.153257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372890, 22.040464, 21.866993>,  <29.852192, 21.601957, 21.742203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372890, 22.040464, 21.866993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.394560, 22.004646, 21.469189>,  <30.407562, 21.983156, 21.230507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.394560, 22.004646, 21.469189>,  <30.372890, 22.040464, 21.866993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394560, 22.004646, 21.469189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122897, 0.988996, -0.082355,
		0.990940, -0.117761, 0.064583,
		0.054174, -0.089546, -0.994508,
		30.410812, 21.977783, 21.170835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004978, 22.237043, 21.726555>,  <30.372890, 22.040464, 21.866993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004978, 22.237043, 21.726555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769667, 22.286331, 21.406868>,  <30.628481, 22.315903, 21.215055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769667, 22.286331, 21.406868>,  <31.004978, 22.237043, 21.726555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769667, 22.286331, 21.406868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197781, 0.980231, 0.005546,
		0.784100, -0.154807, -0.601018,
		-0.588278, 0.123219, -0.799216,
		30.593184, 22.323298, 21.167103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636196, 22.764231, 21.618231>,  <31.004978, 22.237043, 21.726555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636196, 22.764231, 21.618231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025597, 22.854618, 21.604172>,  <32.259235, 22.908850, 21.595736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025597, 22.854618, 21.604172>,  <31.636196, 22.764231, 21.618231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025597, 22.854618, 21.604172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228153, -0.949197, 0.216728,
		0.015610, -0.219004, -0.975599,
		0.973500, 0.225969, -0.035150,
		32.317646, 22.922409, 21.593626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019386, 22.206751, 21.207434>,  <31.636196, 22.764231, 21.618231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019386, 22.206751, 21.207434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292164, 22.403008, 21.424400>,  <32.455830, 22.520761, 21.554581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292164, 22.403008, 21.424400>,  <32.019386, 22.206751, 21.207434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292164, 22.403008, 21.424400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353523, -0.870348, 0.342806,
		0.640288, -0.042018, -0.766985,
		0.681948, 0.490642, 0.542418,
		32.496750, 22.550200, 21.587126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675583, 21.920435, 20.960747>,  <32.019386, 22.206751, 21.207434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675583, 21.920435, 20.960747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.686375, 22.054993, 21.337280>,  <32.692848, 22.135727, 21.563200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.686375, 22.054993, 21.337280>,  <32.675583, 21.920435, 20.960747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686375, 22.054993, 21.337280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480383, -0.830178, 0.282906,
		0.876644, 0.444569, -0.183995,
		0.026977, 0.336396, 0.941334,
		32.694469, 22.155912, 21.619680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332218, 21.663960, 21.132849>,  <32.675583, 21.920435, 20.960747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332218, 21.663960, 21.132849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136936, 21.756329, 21.469498>,  <33.019768, 21.811750, 21.671488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136936, 21.756329, 21.469498>,  <33.332218, 21.663960, 21.132849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136936, 21.756329, 21.469498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312807, -0.853986, 0.415764,
		0.814744, 0.466244, 0.344686,
		-0.488205, 0.230921, 0.841624,
		32.990475, 21.825605, 21.721985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834099, 21.537518, 21.695660>,  <33.332218, 21.663960, 21.132849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834099, 21.537518, 21.695660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479733, 21.526928, 21.880898>,  <33.267113, 21.520575, 21.992041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479733, 21.526928, 21.880898>,  <33.834099, 21.537518, 21.695660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479733, 21.526928, 21.880898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263140, -0.850857, 0.454753,
		0.381989, 0.524731, 0.760751,
		-0.885913, -0.026473, 0.463095,
		33.213959, 21.518986, 22.019827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995914, 21.498594, 22.353767>,  <33.834099, 21.537518, 21.695660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995914, 21.498594, 22.353767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619667, 21.363121, 22.344559>,  <33.393917, 21.281837, 22.339033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619667, 21.363121, 22.344559>,  <33.995914, 21.498594, 22.353767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619667, 21.363121, 22.344559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316701, -0.899934, 0.299700,
		-0.122221, 0.274613, 0.953756,
		-0.940618, -0.338685, -0.023020,
		33.337482, 21.261515, 22.337652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082424, 21.038544, 22.768921>,  <33.995914, 21.498594, 22.353767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082424, 21.038544, 22.768921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733082, 20.956688, 22.592117>,  <33.523476, 20.907574, 22.486036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733082, 20.956688, 22.592117>,  <34.082424, 21.038544, 22.768921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733082, 20.956688, 22.592117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160556, -0.977694, 0.135410,
		-0.459859, 0.047294, 0.886732,
		-0.873357, -0.204640, -0.442008,
		33.471073, 20.895296, 22.459515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142113, 20.802723, 23.531052>,  <34.082424, 21.038544, 22.768921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142113, 20.802723, 23.531052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441425, 20.883537, 23.783798>,  <34.621014, 20.932026, 23.935446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441425, 20.883537, 23.783798>,  <34.142113, 20.802723, 23.531052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441425, 20.883537, 23.783798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171390, 0.979035, -0.110071,
		-0.640859, -0.025932, 0.767221,
		0.748281, 0.202034, 0.631868,
		34.665909, 20.944147, 23.973358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878662, 21.389460, 24.004759>,  <34.142113, 20.802723, 23.531052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878662, 21.389460, 24.004759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277599, 21.385921, 24.033703>,  <34.516960, 21.383799, 24.051069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277599, 21.385921, 24.033703>,  <33.878662, 21.389460, 24.004759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277599, 21.385921, 24.033703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014412, 0.996943, -0.076796,
		-0.071462, 0.077635, 0.994417,
		0.997339, -0.008843, 0.072362,
		34.576801, 21.383268, 24.055412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938480, 22.012470, 24.268803>,  <33.878662, 21.389460, 24.004759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938480, 22.012470, 24.268803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314545, 21.924213, 24.164948>,  <34.540184, 21.871260, 24.102634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314545, 21.924213, 24.164948>,  <33.938480, 22.012470, 24.268803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314545, 21.924213, 24.164948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242225, 0.968722, 0.053890,
		0.239627, -0.113556, 0.964201,
		0.940163, -0.220640, -0.259638,
		34.596592, 21.858021, 24.087055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357086, 22.284662, 24.777927>,  <33.938480, 22.012470, 24.268803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357086, 22.284662, 24.777927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583633, 22.244072, 24.450775>,  <34.719563, 22.219719, 24.254484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583633, 22.244072, 24.450775>,  <34.357086, 22.284662, 24.777927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583633, 22.244072, 24.450775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191848, 0.981362, 0.011095,
		0.801509, -0.163192, 0.575283,
		0.566372, -0.101474, -0.817879,
		34.753544, 22.213629, 24.205412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917934, 22.624151, 25.005068>,  <34.357086, 22.284662, 24.777927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917934, 22.624151, 25.005068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922779, 22.593651, 24.606262>,  <34.925686, 22.575350, 24.366978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922779, 22.593651, 24.606262>,  <34.917934, 22.624151, 25.005068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922779, 22.593651, 24.606262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156914, 0.984879, -0.073417,
		0.987538, -0.155556, 0.023893,
		0.012111, -0.076252, -0.997015,
		34.926411, 22.570776, 24.307158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404037, 23.093451, 24.849461>,  <34.917934, 22.624151, 25.005068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404037, 23.093451, 24.849461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196686, 23.058735, 24.509167>,  <35.072273, 23.037905, 24.304991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196686, 23.058735, 24.509167>,  <35.404037, 23.093451, 24.849461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196686, 23.058735, 24.509167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008861, 0.994238, -0.106831,
		0.855105, -0.062917, -0.514623,
		-0.518379, -0.086791, -0.850735,
		35.041172, 23.032698, 24.253946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681164, 23.520527, 24.404623>,  <35.404037, 23.093451, 24.849461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681164, 23.520527, 24.404623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314819, 23.464672, 24.254047>,  <35.095013, 23.431160, 24.163702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314819, 23.464672, 24.254047>,  <35.681164, 23.520527, 24.404623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314819, 23.464672, 24.254047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118166, 0.989793, -0.079664,
		0.383723, -0.028478, -0.923010,
		-0.915857, -0.139637, -0.376441,
		35.040062, 23.422781, 24.141115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.758158, 18.166035, 27.359245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.500639, 18.167301, 27.053169>,  <30.346127, 18.168060, 26.869524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.500639, 18.167301, 27.053169>,  <30.758158, 18.166035, 27.359245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500639, 18.167301, 27.053169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272069, 0.935595, -0.225036,
		0.715194, -0.353062, -0.603196,
		-0.643799, 0.003167, -0.765188,
		30.307499, 18.168251, 26.823612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137457, 18.336454, 26.818148>,  <30.758158, 18.166035, 27.359245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137457, 18.336454, 26.818148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.762352, 18.423038, 26.709522>,  <30.537289, 18.474989, 26.644346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.762352, 18.423038, 26.709522>,  <31.137457, 18.336454, 26.818148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762352, 18.423038, 26.709522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261191, 0.954970, -0.140750,
		0.228870, -0.202921, -0.952072,
		-0.937762, 0.216459, -0.271565,
		30.481024, 18.487976, 26.628052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239353, 18.973412, 26.447140>,  <31.137457, 18.336454, 26.818148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239353, 18.973412, 26.447140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.842222, 18.958416, 26.492550>,  <30.603943, 18.949419, 26.519796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.842222, 18.958416, 26.492550>,  <31.239353, 18.973412, 26.447140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842222, 18.958416, 26.492550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057611, 0.982065, -0.179527,
		-0.104758, -0.184779, -0.977181,
		-0.992828, -0.037489, 0.113525,
		30.544374, 18.947168, 26.526608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039625, 19.524834, 25.937107>,  <31.239353, 18.973412, 26.447140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039625, 19.524834, 25.937107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.738066, 19.463207, 26.192574>,  <30.557129, 19.426231, 26.345854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.738066, 19.463207, 26.192574>,  <31.039625, 19.524834, 25.937107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738066, 19.463207, 26.192574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251620, 0.965704, -0.064059,
		-0.606895, -0.208996, -0.766811,
		-0.753900, -0.154068, 0.638669,
		30.511896, 19.416986, 26.384174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541451, 19.811356, 25.651928>,  <31.039625, 19.524834, 25.937107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541451, 19.811356, 25.651928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.432827, 19.792183, 26.036419>,  <30.367653, 19.780680, 26.267113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.432827, 19.792183, 26.036419>,  <30.541451, 19.811356, 25.651928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432827, 19.792183, 26.036419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287581, 0.957170, -0.033516,
		-0.918451, -0.285533, -0.273714,
		-0.271561, -0.047932, 0.961227,
		30.351358, 19.777803, 26.324787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034750, 20.323639, 25.582485>,  <30.541451, 19.811356, 25.651928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034750, 20.323639, 25.582485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091293, 20.263042, 25.973804>,  <30.125219, 20.226685, 26.208595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091293, 20.263042, 25.973804>,  <30.034750, 20.323639, 25.582485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091293, 20.263042, 25.973804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544604, 0.813344, 0.204641,
		-0.826695, -0.561713, 0.032471,
		0.141359, -0.151492, 0.978299,
		30.133701, 20.217596, 26.267294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428305, 20.443031, 25.891806>,  <30.034750, 20.323639, 25.582485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428305, 20.443031, 25.891806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.709026, 20.505886, 26.169735>,  <29.877459, 20.543598, 26.336493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.709026, 20.505886, 26.169735>,  <29.428305, 20.443031, 25.891806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709026, 20.505886, 26.169735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271515, 0.960747, 0.056967,
		-0.658600, -0.228635, 0.716919,
		0.701802, 0.157136, 0.694826,
		29.919567, 20.553026, 26.378183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105701, 20.841482, 26.530792>,  <29.428305, 20.443031, 25.891806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105701, 20.841482, 26.530792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.502182, 20.891907, 26.514660>,  <29.740070, 20.922161, 26.504980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.502182, 20.891907, 26.514660>,  <29.105701, 20.841482, 26.530792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502182, 20.891907, 26.514660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117700, 0.978904, 0.167016,
		0.060532, -0.160800, 0.985129,
		0.991203, 0.126059, -0.040328,
		29.799543, 20.929724, 26.502562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306805, 21.199699, 27.166908>,  <29.105701, 20.841482, 26.530792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306805, 21.199699, 27.166908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.629963, 21.250191, 26.936649>,  <29.823858, 21.280485, 26.798494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.629963, 21.250191, 26.936649>,  <29.306805, 21.199699, 27.166908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629963, 21.250191, 26.936649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043733, 0.961257, 0.272161,
		0.587700, -0.245052, 0.771075,
		0.807896, 0.126228, -0.575648,
		29.872332, 21.288059, 26.763954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772516, 21.655193, 27.659668>,  <29.306805, 21.199699, 27.166908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772516, 21.655193, 27.659668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883806, 21.709553, 27.279327>,  <29.950581, 21.742168, 27.051123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883806, 21.709553, 27.279327>,  <29.772516, 21.655193, 27.659668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883806, 21.709553, 27.279327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089799, 0.981924, 0.166617,
		0.956309, -0.131743, 0.260993,
		0.278226, 0.135900, -0.950853,
		29.967274, 21.750322, 26.994072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379755, 22.037649, 27.676170>,  <29.772516, 21.655193, 27.659668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379755, 22.037649, 27.676170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.243080, 22.102962, 27.305962>,  <30.161076, 22.142151, 27.083838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.243080, 22.102962, 27.305962>,  <30.379755, 22.037649, 27.676170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243080, 22.102962, 27.305962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204787, 0.974063, 0.096245,
		0.917230, -0.156648, -0.366265,
		-0.341689, 0.163285, -0.925520,
		30.140574, 22.151949, 27.028305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861012, 22.483274, 27.390736>,  <30.379755, 22.037649, 27.676170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861012, 22.483274, 27.390736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.511806, 22.527588, 27.200756>,  <30.302284, 22.554176, 27.086769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.511806, 22.527588, 27.200756>,  <30.861012, 22.483274, 27.390736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511806, 22.527588, 27.200756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051446, 0.989343, 0.136210,
		0.484976, 0.094479, -0.869409,
		-0.873013, 0.110786, -0.474947,
		30.249903, 22.560823, 27.058271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526705, 22.600117, 27.087669>,  <30.861012, 22.483274, 27.390736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526705, 22.600117, 27.087669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909025, 22.713253, 27.119785>,  <32.138416, 22.781134, 27.139055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909025, 22.713253, 27.119785>,  <31.526705, 22.600117, 27.087669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909025, 22.713253, 27.119785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243802, -0.915075, 0.321246,
		0.164332, -0.287472, -0.943586,
		0.955801, 0.282839, 0.080290,
		32.195766, 22.798105, 27.143873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881859, 22.104094, 26.760649>,  <31.526705, 22.600117, 27.087669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881859, 22.104094, 26.760649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.175175, 22.270462, 26.975792>,  <32.351166, 22.370283, 27.104877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.175175, 22.270462, 26.975792>,  <31.881859, 22.104094, 26.760649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175175, 22.270462, 26.975792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345714, -0.909261, 0.231791,
		0.585462, 0.015976, -0.810543,
		0.733292, 0.415921, 0.537860,
		32.395161, 22.395239, 27.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509418, 21.931671, 26.461462>,  <31.881859, 22.104094, 26.760649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509418, 21.931671, 26.461462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573162, 22.012711, 26.847946>,  <32.611408, 22.061335, 27.079836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573162, 22.012711, 26.847946>,  <32.509418, 21.931671, 26.461462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573162, 22.012711, 26.847946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409334, -0.904180, 0.122079,
		0.898360, 0.376048, -0.227016,
		0.159356, 0.202597, 0.966209,
		32.620968, 22.073490, 27.137810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204788, 21.897835, 26.568048>,  <32.509418, 21.931671, 26.461462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204788, 21.897835, 26.568048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020126, 21.844517, 26.918842>,  <32.909328, 21.812525, 27.129318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020126, 21.844517, 26.918842>,  <33.204788, 21.897835, 26.568048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020126, 21.844517, 26.918842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413905, -0.906793, 0.080059,
		0.784572, 0.399949, 0.473801,
		-0.461659, -0.133297, 0.876985,
		32.881630, 21.804527, 27.181938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816410, 21.742165, 26.967323>,  <33.204788, 21.897835, 26.568048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816410, 21.742165, 26.967323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.494335, 21.631866, 27.177326>,  <33.301090, 21.565687, 27.303328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.494335, 21.631866, 27.177326>,  <33.816410, 21.742165, 26.967323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494335, 21.631866, 27.177326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449681, -0.861058, 0.237417,
		0.386593, 0.427251, 0.817314,
		-0.805191, -0.275746, 0.525006,
		33.252777, 21.549143, 27.334827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105618, 21.396891, 27.582542>,  <33.816410, 21.742165, 26.967323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105618, 21.396891, 27.582542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722870, 21.283337, 27.557854>,  <33.493221, 21.215204, 27.543041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722870, 21.283337, 27.557854>,  <34.105618, 21.396891, 27.582542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722870, 21.283337, 27.557854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276474, -0.955080, 0.106698,
		-0.089238, 0.085032, 0.992374,
		-0.956869, -0.283887, -0.061720,
		33.435810, 21.198170, 27.539337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003315, 20.957886, 28.079575>,  <34.105618, 21.396891, 27.582542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003315, 20.957886, 28.079575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.687096, 20.879154, 27.847610>,  <33.497364, 20.831915, 27.708433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.687096, 20.879154, 27.847610>,  <34.003315, 20.957886, 28.079575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687096, 20.879154, 27.847610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211807, -0.976380, 0.042654,
		-0.574607, -0.089109, 0.813564,
		-0.790547, -0.196828, -0.579909,
		33.449932, 20.820107, 27.673637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576450, 20.430567, 28.346897>,  <34.003315, 20.957886, 28.079575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576450, 20.430567, 28.346897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.503326, 20.441723, 27.953796>,  <33.459454, 20.448418, 27.717936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.503326, 20.441723, 27.953796>,  <33.576450, 20.430567, 28.346897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503326, 20.441723, 27.953796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150540, -0.987016, -0.056017,
		-0.971554, -0.158184, 0.176239,
		-0.182812, 0.027892, -0.982752,
		33.448483, 20.450090, 27.658970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141487, 19.891703, 28.269560>,  <33.576450, 20.430567, 28.346897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141487, 19.891703, 28.269560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.244949, 19.966652, 27.890511>,  <33.307026, 20.011621, 27.663080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.244949, 19.966652, 27.890511>,  <33.141487, 19.891703, 28.269560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244949, 19.966652, 27.890511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116209, -0.979917, -0.162041,
		-0.958955, -0.068210, -0.275234,
		0.258653, 0.187374, -0.947623,
		33.322544, 20.022863, 27.606224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798946, 19.458326, 27.806265>,  <33.141487, 19.891703, 28.269560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798946, 19.458326, 27.806265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117985, 19.564610, 27.589657>,  <33.309406, 19.628380, 27.459692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117985, 19.564610, 27.589657>,  <32.798946, 19.458326, 27.806265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117985, 19.564610, 27.589657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194643, -0.963100, -0.185881,
		-0.570929, 0.042854, -0.819880,
		0.797593, 0.265708, -0.541521,
		33.357262, 19.644321, 27.427200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734509, 19.059141, 27.232698>,  <32.798946, 19.458326, 27.806265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734509, 19.059141, 27.232698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117275, 19.175274, 27.234318>,  <33.346935, 19.244953, 27.235289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117275, 19.175274, 27.234318>,  <32.734509, 19.059141, 27.232698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117275, 19.175274, 27.234318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277693, -0.911008, -0.304878,
		-0.084830, 0.292867, -0.952383,
		0.956917, 0.290333, 0.004047,
		33.404350, 19.262373, 27.235531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013058, 18.712942, 26.672686>,  <32.734509, 19.059141, 27.232698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013058, 18.712942, 26.672686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.355858, 18.803883, 26.857670>,  <33.561539, 18.858448, 26.968660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.355858, 18.803883, 26.857670>,  <33.013058, 18.712942, 26.672686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355858, 18.803883, 26.857670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290416, -0.954411, -0.068975,
		0.425694, 0.193417, -0.883954,
		0.856996, 0.227352, 0.462458,
		33.612957, 18.872087, 26.996407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595039, 18.433926, 26.237799>,  <33.013058, 18.712942, 26.672686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595039, 18.433926, 26.237799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770565, 18.503208, 26.590488>,  <33.875881, 18.544777, 26.802103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770565, 18.503208, 26.590488>,  <33.595039, 18.433926, 26.237799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770565, 18.503208, 26.590488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543158, -0.832821, -0.106719,
		0.715836, 0.525746, -0.459533,
		0.438815, 0.173206, 0.881726,
		33.902210, 18.555170, 26.855007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350658, 18.592009, 26.117064>,  <33.595039, 18.433926, 26.237799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350658, 18.592009, 26.117064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.297764, 18.432461, 26.480034>,  <34.266029, 18.336733, 26.697815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.297764, 18.432461, 26.480034>,  <34.350658, 18.592009, 26.117064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297764, 18.432461, 26.480034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764330, -0.623918, -0.162870,
		0.631122, 0.672034, 0.387369,
		-0.132232, -0.398869, 0.907424,
		34.258095, 18.312799, 26.752260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007545, 18.504847, 25.665977>,  <34.350658, 18.592009, 26.117064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007545, 18.504847, 25.665977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260704, 18.470596, 25.358181>,  <35.412598, 18.450047, 25.173504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260704, 18.470596, 25.358181>,  <35.007545, 18.504847, 25.665977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260704, 18.470596, 25.358181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290144, 0.895209, -0.338257,
		0.717818, 0.437343, 0.541727,
		0.632893, -0.085628, -0.769489,
		35.450573, 18.444908, 25.127335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443737, 19.058043, 25.606504>,  <35.007545, 18.504847, 25.665977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443737, 19.058043, 25.606504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.454605, 18.914547, 25.233288>,  <35.461124, 18.828449, 25.009357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.454605, 18.914547, 25.233288>,  <35.443737, 19.058043, 25.606504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454605, 18.914547, 25.233288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125233, 0.924812, -0.359221,
		0.991755, 0.126607, -0.019802,
		0.027166, -0.358739, -0.933042,
		35.462753, 18.806925, 24.953375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979210, 19.524817, 25.187178>,  <35.443737, 19.058043, 25.606504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979210, 19.524817, 25.187178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.733509, 19.342731, 24.929348>,  <35.586090, 19.233480, 24.774651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.733509, 19.342731, 24.929348>,  <35.979210, 19.524817, 25.187178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733509, 19.342731, 24.929348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, 0.874892, -0.451933,
		0.769656, -0.165364, -0.616671,
		-0.614254, -0.455213, -0.644572,
		35.549232, 19.206167, 24.735977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160515, 19.832743, 24.574127>,  <35.979210, 19.524817, 25.187178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160515, 19.832743, 24.574127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801907, 19.667332, 24.510574>,  <35.586742, 19.568085, 24.472443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801907, 19.667332, 24.510574>,  <36.160515, 19.832743, 24.574127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801907, 19.667332, 24.510574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267301, 0.790971, -0.550377,
		0.353268, -0.450956, -0.819659,
		-0.896522, -0.413527, -0.158884,
		35.532951, 19.543274, 24.462910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884033, 19.895109, 23.774525>,  <36.160515, 19.832743, 24.574127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884033, 19.895109, 23.774525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.560730, 19.863060, 24.007866>,  <35.366749, 19.843830, 24.147871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.560730, 19.863060, 24.007866>,  <35.884033, 19.895109, 23.774525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560730, 19.863060, 24.007866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363593, 0.847180, -0.387408,
		-0.463165, -0.525229, -0.713871,
		-0.808256, -0.080125, 0.583354,
		35.318253, 19.839022, 24.182873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398659, 20.158197, 23.348242>,  <35.884033, 19.895109, 23.774525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398659, 20.158197, 23.348242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237724, 20.179977, 23.713791>,  <35.141163, 20.193045, 23.933121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237724, 20.179977, 23.713791>,  <35.398659, 20.158197, 23.348242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237724, 20.179977, 23.713791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307335, 0.932267, -0.190851,
		-0.862363, -0.357651, -0.358353,
		-0.402339, 0.054448, 0.913871,
		35.117023, 20.196312, 23.987951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652996, 20.263315, 23.283279>,  <35.398659, 20.158197, 23.348242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652996, 20.263315, 23.283279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775028, 20.383121, 23.644878>,  <34.848248, 20.455006, 23.861837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775028, 20.383121, 23.644878>,  <34.652996, 20.263315, 23.283279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775028, 20.383121, 23.644878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366723, 0.912999, -0.178737,
		-0.878885, -0.276987, 0.388381,
		0.305084, 0.299517, 0.903998,
		34.866554, 20.472977, 23.916079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881214, 20.332642, 23.079578>,  <34.652996, 20.263315, 23.283279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881214, 20.332642, 23.079578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.654041, 20.405144, 22.758430>,  <33.517738, 20.448645, 22.565741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.654041, 20.405144, 22.758430>,  <33.881214, 20.332642, 23.079578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654041, 20.405144, 22.758430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097503, -0.983398, -0.153040,
		-0.817282, -0.008633, 0.576173,
		-0.567929, 0.181256, -0.802872,
		33.483662, 20.459520, 22.517569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237656, 20.015591, 23.271448>,  <33.881214, 20.332642, 23.079578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237656, 20.015591, 23.271448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.253986, 20.026276, 22.871925>,  <33.263783, 20.032686, 22.632212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.253986, 20.026276, 22.871925>,  <33.237656, 20.015591, 23.271448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253986, 20.026276, 22.871925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263961, -0.963840, -0.036566,
		-0.963669, 0.265139, -0.032296,
		0.040823, 0.026713, -0.998809,
		33.266232, 20.034290, 22.572283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678436, 19.678234, 23.019094>,  <33.237656, 20.015591, 23.271448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678436, 19.678234, 23.019094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.901814, 19.691784, 22.687553>,  <33.035839, 19.699913, 22.488628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.901814, 19.691784, 22.687553>,  <32.678436, 19.678234, 23.019094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901814, 19.691784, 22.687553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242289, -0.948938, -0.202022,
		-0.793374, 0.313639, -0.521717,
		0.558439, 0.033873, -0.828854,
		33.069344, 19.701946, 22.438898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244804, 19.388058, 22.393038>,  <32.678436, 19.678234, 23.019094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244804, 19.388058, 22.393038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.636223, 19.356785, 22.316788>,  <32.871075, 19.338020, 22.271038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.636223, 19.356785, 22.316788>,  <32.244804, 19.388058, 22.393038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636223, 19.356785, 22.316788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123181, -0.963645, -0.237096,
		-0.165158, 0.255490, -0.952600,
		0.978544, -0.078184, -0.190626,
		32.929787, 19.333330, 22.259600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316673, 18.949900, 21.763332>,  <32.244804, 19.388058, 22.393038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316673, 18.949900, 21.763332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.696716, 18.922729, 21.885105>,  <32.924744, 18.906427, 21.958170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.696716, 18.922729, 21.885105>,  <32.316673, 18.949900, 21.763332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696716, 18.922729, 21.885105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046187, -0.934604, -0.352678,
		0.308481, 0.349143, -0.884838,
		0.950109, -0.067926, 0.304433,
		32.981750, 18.902351, 21.976435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691452, 18.670290, 21.192900>,  <32.316673, 18.949900, 21.763332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691452, 18.670290, 21.192900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.906601, 18.572395, 21.515587>,  <33.035690, 18.513659, 21.709200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.906601, 18.572395, 21.515587>,  <32.691452, 18.670290, 21.192900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906601, 18.572395, 21.515587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048774, -0.964365, -0.260041,
		0.841613, 0.100522, -0.530644,
		0.537874, -0.244735, 0.806719,
		33.067963, 18.498974, 21.757603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140011, 18.177488, 20.952517>,  <32.691452, 18.670290, 21.192900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140011, 18.177488, 20.952517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160427, 18.140518, 21.350281>,  <33.172676, 18.118336, 21.588940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160427, 18.140518, 21.350281>,  <33.140011, 18.177488, 20.952517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160427, 18.140518, 21.350281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013871, -0.995547, -0.093244,
		0.998600, 0.018553, -0.049534,
		0.051043, -0.092426, 0.994410,
		33.175739, 18.112791, 21.648603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816292, 17.883345, 21.109701>,  <33.140011, 18.177488, 20.952517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816292, 17.883345, 21.109701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552868, 17.809952, 21.401627>,  <33.394814, 17.765917, 21.576782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552868, 17.809952, 21.401627>,  <33.816292, 17.883345, 21.109701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552868, 17.809952, 21.401627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117448, -0.982996, -0.141153,
		0.743303, -0.007243, 0.668916,
		-0.658564, -0.183483, 0.729813,
		33.355297, 17.754908, 21.620571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122349, 17.324903, 21.406841>,  <33.816292, 17.883345, 21.109701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122349, 17.324903, 21.406841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.742878, 17.319386, 21.533215>,  <33.515194, 17.316074, 21.609039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.742878, 17.319386, 21.533215>,  <34.122349, 17.324903, 21.406841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742878, 17.319386, 21.533215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037389, -0.987149, -0.155370,
		0.314016, -0.159209, 0.935973,
		-0.948681, -0.013793, 0.315934,
		33.458275, 17.315247, 21.627995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.924744, 32.078457, 21.657200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631691, 31.838692, 21.528229>,  <28.455860, 31.694834, 21.450846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631691, 31.838692, 21.528229>,  <28.924744, 32.078457, 21.657200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631691, 31.838692, 21.528229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517111, -0.798218, 0.308938,
		-0.442549, 0.059607, 0.894761,
		-0.732630, -0.599412, -0.322427,
		28.411901, 31.658869, 21.431501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801222, 31.594971, 22.135160>,  <28.924744, 32.078457, 21.657200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801222, 31.594971, 22.135160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642328, 31.410496, 21.817795>,  <28.546991, 31.299810, 21.627375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642328, 31.410496, 21.817795>,  <28.801222, 31.594971, 22.135160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642328, 31.410496, 21.817795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586591, -0.792486, 0.166963,
		-0.705773, -0.399087, 0.585332,
		-0.397234, -0.461189, -0.793416,
		28.523157, 31.272139, 21.579769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518265, 30.893507, 22.365601>,  <28.801222, 31.594971, 22.135160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518265, 30.893507, 22.365601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580074, 30.874329, 21.970871>,  <28.617161, 30.862822, 21.734034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580074, 30.874329, 21.970871>,  <28.518265, 30.893507, 22.365601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580074, 30.874329, 21.970871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554966, -0.822145, 0.126847,
		-0.817395, -0.567255, -0.100434,
		0.154526, -0.047946, -0.986825,
		28.626432, 30.859945, 21.674824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372835, 30.198469, 22.107153>,  <28.518265, 30.893507, 22.365601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372835, 30.198469, 22.107153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610044, 30.369728, 21.834385>,  <28.752369, 30.472485, 21.670725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610044, 30.369728, 21.834385>,  <28.372835, 30.198469, 22.107153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610044, 30.369728, 21.834385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545453, -0.836593, -0.050916,
		-0.592288, -0.341760, -0.729654,
		0.593023, 0.428149, -0.681918,
		28.787951, 30.498173, 21.629808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644896, 29.693077, 21.707329>,  <28.372835, 30.198469, 22.107153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644896, 29.693077, 21.707329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894958, 29.989807, 21.610271>,  <29.044996, 30.167845, 21.552036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894958, 29.989807, 21.610271>,  <28.644896, 29.693077, 21.707329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894958, 29.989807, 21.610271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713981, -0.669124, -0.206166,
		-0.315297, -0.044356, -0.947956,
		0.625155, 0.741826, -0.242643,
		29.082504, 30.212355, 21.537479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068722, 29.370380, 21.221851>,  <28.644896, 29.693077, 21.707329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068722, 29.370380, 21.221851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274750, 29.703098, 21.304623>,  <29.398367, 29.902729, 21.354284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274750, 29.703098, 21.304623>,  <29.068722, 29.370380, 21.221851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274750, 29.703098, 21.304623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851020, -0.467445, -0.239291,
		-0.102314, 0.299351, -0.948642,
		0.515070, 0.831796, 0.206927,
		29.429270, 29.952637, 21.366701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623940, 29.341572, 20.743828>,  <29.068722, 29.370380, 21.221851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623940, 29.341572, 20.743828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729137, 29.580185, 21.047138>,  <29.792257, 29.723352, 21.229124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729137, 29.580185, 21.047138>,  <29.623940, 29.341572, 20.743828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729137, 29.580185, 21.047138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909609, -0.415314, 0.011243,
		0.321629, 0.686776, -0.651838,
		0.262996, 0.596534, 0.758275,
		29.808037, 29.759146, 21.274620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351944, 29.671280, 20.547264>,  <29.623940, 29.341572, 20.743828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351944, 29.671280, 20.547264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321465, 29.713680, 20.943840>,  <30.303177, 29.739120, 21.181786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321465, 29.713680, 20.943840>,  <30.351944, 29.671280, 20.547264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321465, 29.713680, 20.943840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942031, -0.318200, 0.106422,
		0.326758, 0.942079, -0.075611,
		-0.076199, 0.106002, 0.991442,
		30.298605, 29.745481, 21.241272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981169, 29.929176, 20.831995>,  <30.351944, 29.671280, 20.547264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981169, 29.929176, 20.831995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818792, 29.769394, 21.160786>,  <30.721367, 29.673525, 21.358061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818792, 29.769394, 21.160786>,  <30.981169, 29.929176, 20.831995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818792, 29.769394, 21.160786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885594, -0.394050, 0.245862,
		0.225690, 0.827745, 0.513715,
		-0.405940, -0.399454, 0.821979,
		30.697010, 29.649557, 21.407379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426905, 30.098892, 21.283834>,  <30.981169, 29.929176, 20.831995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426905, 30.098892, 21.283834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214506, 29.779362, 21.396915>,  <31.087067, 29.587645, 21.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214506, 29.779362, 21.396915>,  <31.426905, 30.098892, 21.283834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214506, 29.779362, 21.396915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846564, -0.485515, 0.218185,
		-0.037035, 0.355181, 0.934063,
		-0.530997, -0.798825, 0.282703,
		31.055206, 29.539715, 21.481726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805218, 29.836937, 21.855986>,  <31.426905, 30.098892, 21.283834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805218, 29.836937, 21.855986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571701, 29.534439, 21.737812>,  <31.431591, 29.352940, 21.666908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571701, 29.534439, 21.737812>,  <31.805218, 29.836937, 21.855986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571701, 29.534439, 21.737812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748963, -0.642091, 0.163623,
		-0.313435, -0.125748, 0.941247,
		-0.583791, -0.756245, -0.295435,
		31.396564, 29.307566, 21.649181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031109, 29.216045, 22.291761>,  <31.805218, 29.836937, 21.855986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031109, 29.216045, 22.291761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831240, 29.044018, 21.990997>,  <31.711317, 28.940802, 21.810539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831240, 29.044018, 21.990997>,  <32.031109, 29.216045, 22.291761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831240, 29.044018, 21.990997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670926, -0.741201, -0.021915,
		-0.547890, -0.515425, 0.658903,
		-0.499675, -0.430068, -0.751908,
		31.681337, 28.914997, 21.765425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267841, 29.240974, 23.123669>,  <32.031109, 29.216045, 22.291761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267841, 29.240974, 23.123669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632427, 29.209583, 23.285194>,  <32.851181, 29.190748, 23.382111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632427, 29.209583, 23.285194>,  <32.267841, 29.240974, 23.123669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632427, 29.209583, 23.285194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005892, 0.984023, 0.177943,
		-0.411328, -0.159810, 0.897368,
		0.911468, -0.078480, 0.403815,
		32.905869, 29.186039, 23.406340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237526, 29.597664, 23.818377>,  <32.267841, 29.240974, 23.123669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237526, 29.597664, 23.818377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623840, 29.613003, 23.715775>,  <32.855629, 29.622206, 23.654213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623840, 29.613003, 23.715775>,  <32.237526, 29.597664, 23.818377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623840, 29.613003, 23.715775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030352, 0.965502, 0.258622,
		0.257574, -0.257557, 0.931300,
		0.965782, 0.038348, -0.256506,
		32.913574, 29.624508, 23.638823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555939, 29.922863, 24.298454>,  <32.237526, 29.597664, 23.818377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555939, 29.922863, 24.298454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818462, 29.952206, 23.998089>,  <32.975979, 29.969812, 23.817869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818462, 29.952206, 23.998089>,  <32.555939, 29.922863, 24.298454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818462, 29.952206, 23.998089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072980, 0.984423, 0.159955,
		0.750952, -0.159782, 0.640735,
		0.656312, 0.073358, -0.750915,
		33.015354, 29.974213, 23.772814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144238, 30.232067, 24.581549>,  <32.555939, 29.922863, 24.298454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144238, 30.232067, 24.581549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154697, 30.303165, 24.188057>,  <33.160973, 30.345825, 23.951962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154697, 30.303165, 24.188057>,  <33.144238, 30.232067, 24.581549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154697, 30.303165, 24.188057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051330, 0.982529, 0.178893,
		0.998339, -0.055174, 0.016571,
		0.026152, 0.177745, -0.983729,
		33.162544, 30.356489, 23.892939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681793, 30.654646, 24.573380>,  <33.144238, 30.232067, 24.581549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681793, 30.654646, 24.573380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478237, 30.681492, 24.230095>,  <33.356102, 30.697599, 24.024124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478237, 30.681492, 24.230095>,  <33.681793, 30.654646, 24.573380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478237, 30.681492, 24.230095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007300, 0.997257, 0.073659,
		0.860801, 0.031220, -0.507984,
		-0.508890, 0.067114, -0.858211,
		33.325569, 30.701626, 23.972631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694057, 31.371937, 24.513414>,  <33.681793, 30.654646, 24.573380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694057, 31.371937, 24.513414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460373, 31.292671, 24.198601>,  <33.320160, 31.245111, 24.009712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460373, 31.292671, 24.198601>,  <33.694057, 31.371937, 24.513414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460373, 31.292671, 24.198601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298187, 0.954319, -0.018939,
		0.754836, 0.223619, -0.616618,
		-0.584215, -0.198164, -0.787035,
		33.285107, 31.233223, 23.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006580, 31.676508, 23.963310>,  <33.694057, 31.371937, 24.513414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006580, 31.676508, 23.963310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609528, 31.643368, 23.927952>,  <33.371296, 31.623484, 23.906736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609528, 31.643368, 23.927952>,  <34.006580, 31.676508, 23.963310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609528, 31.643368, 23.927952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088900, 0.993796, 0.066831,
		0.082310, 0.074197, -0.993841,
		-0.992634, -0.082852, -0.088396,
		33.311737, 31.618513, 23.901434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891575, 32.161644, 23.565681>,  <34.006580, 31.676508, 23.963310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891575, 32.161644, 23.565681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544289, 32.081345, 23.747189>,  <33.335918, 32.033165, 23.856092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544289, 32.081345, 23.747189>,  <33.891575, 32.161644, 23.565681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544289, 32.081345, 23.747189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174910, 0.979622, 0.098724,
		-0.464342, 0.006345, -0.885633,
		-0.868212, -0.200748, 0.453770,
		33.283825, 32.021122, 23.883320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425301, 32.566803, 23.257046>,  <33.891575, 32.161644, 23.565681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425301, 32.566803, 23.257046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278629, 32.467999, 23.615829>,  <33.190628, 32.408714, 23.831100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278629, 32.467999, 23.615829>,  <33.425301, 32.566803, 23.257046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278629, 32.467999, 23.615829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151789, 0.967075, 0.204268,
		-0.917883, -0.061248, -0.392097,
		-0.366676, -0.247010, 0.896959,
		33.168625, 32.393894, 23.884916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871239, 32.880283, 23.306248>,  <33.425301, 32.566803, 23.257046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871239, 32.880283, 23.306248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883209, 32.791054, 23.695984>,  <32.890392, 32.737514, 23.929827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883209, 32.791054, 23.695984>,  <32.871239, 32.880283, 23.306248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883209, 32.791054, 23.695984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401719, 0.889905, 0.216081,
		-0.915274, -0.397879, -0.062978,
		0.029930, -0.223072, 0.974342,
		32.892189, 32.724133, 23.988287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283310, 33.197723, 23.509163>,  <32.871239, 32.880283, 23.306248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283310, 33.197723, 23.509163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487343, 33.122425, 23.844872>,  <32.609764, 33.077248, 24.046297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487343, 33.122425, 23.844872>,  <32.283310, 33.197723, 23.509163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487343, 33.122425, 23.844872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392851, 0.817047, 0.422021,
		-0.765169, -0.544975, 0.342809,
		0.510082, -0.188244, 0.839274,
		32.640369, 33.065952, 24.096653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843325, 33.284622, 24.105412>,  <32.283310, 33.197723, 23.509163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843325, 33.284622, 24.105412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209438, 33.311390, 24.264297>,  <32.429108, 33.327450, 24.359629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209438, 33.311390, 24.264297>,  <31.843325, 33.284622, 24.105412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209438, 33.311390, 24.264297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222991, 0.905393, 0.361301,
		-0.335456, -0.419268, 0.843614,
		0.915284, 0.066917, 0.397213,
		32.484024, 33.331467, 24.383461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805864, 33.540421, 24.735832>,  <31.843325, 33.284622, 24.105412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805864, 33.540421, 24.735832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177101, 33.646812, 24.631599>,  <32.399841, 33.710648, 24.569059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177101, 33.646812, 24.631599>,  <31.805864, 33.540421, 24.735832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177101, 33.646812, 24.631599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154452, 0.911769, 0.380554,
		0.338809, -0.312941, 0.887286,
		0.928091, 0.265979, -0.260581,
		32.455528, 33.726604, 24.553425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008533, 33.833832, 25.369886>,  <31.805864, 33.540421, 24.735832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008533, 33.833832, 25.369886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257904, 33.938503, 25.075169>,  <32.407524, 34.001305, 24.898338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257904, 33.938503, 25.075169>,  <32.008533, 33.833832, 25.369886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257904, 33.938503, 25.075169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205164, 0.964061, 0.168800,
		0.754488, 0.045930, 0.654704,
		0.623422, 0.261679, -0.736796,
		32.444931, 34.017006, 24.854130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497101, 33.790176, 25.961016>,  <32.008533, 33.833832, 25.369886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497101, 33.790176, 25.961016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305527, 34.010788, 26.234200>,  <31.190582, 34.143154, 26.398109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305527, 34.010788, 26.234200>,  <31.497101, 33.790176, 25.961016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305527, 34.010788, 26.234200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642130, 0.310382, -0.700951,
		-0.598575, -0.774259, 0.205502,
		-0.478933, 0.551531, 0.682962,
		31.161846, 34.176247, 26.439089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144238, 33.416061, 25.970758>,  <31.497101, 33.790176, 25.961016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144238, 33.416061, 25.970758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955362, 33.447357, 26.321964>,  <31.842037, 33.466133, 26.532688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955362, 33.447357, 26.321964>,  <32.144238, 33.416061, 25.970758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955362, 33.447357, 26.321964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356523, -0.927900, -0.109052,
		0.806180, -0.364527, 0.466040,
		-0.472191, 0.078238, 0.878017,
		31.813705, 33.470829, 26.585369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380138, 33.120068, 26.633583>,  <32.144238, 33.416061, 25.970758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380138, 33.120068, 26.633583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990217, 33.144104, 26.547649>,  <31.756266, 33.158527, 26.496090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990217, 33.144104, 26.547649>,  <32.380138, 33.120068, 26.633583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990217, 33.144104, 26.547649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026304, -0.987280, -0.156798,
		-0.221524, -0.147196, 0.963981,
		-0.974800, 0.060091, -0.214835,
		31.697777, 33.162132, 26.483198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943911, 32.734142, 27.114641>,  <32.380138, 33.120068, 26.633583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943911, 32.734142, 27.114641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721401, 32.746693, 26.782478>,  <31.587894, 32.754223, 26.583181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721401, 32.746693, 26.782478>,  <31.943911, 32.734142, 27.114641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721401, 32.746693, 26.782478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018948, -0.999506, -0.025069,
		-0.830782, 0.001790, 0.556595,
		-0.556276, 0.031373, -0.830406,
		31.554518, 32.756104, 26.533356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483536, 32.203384, 27.207451>,  <31.943911, 32.734142, 27.114641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483536, 32.203384, 27.207451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464336, 32.285877, 26.816521>,  <31.452816, 32.335373, 26.581963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464336, 32.285877, 26.816521>,  <31.483536, 32.203384, 27.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464336, 32.285877, 26.816521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137628, -0.970486, -0.198029,
		-0.989320, 0.125003, 0.074964,
		-0.047998, 0.206231, -0.977325,
		31.449938, 32.347748, 26.523323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866314, 31.788506, 26.981421>,  <31.483536, 32.203384, 27.207451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866314, 31.788506, 26.981421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080412, 31.872292, 26.654095>,  <31.208872, 31.922564, 26.457699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080412, 31.872292, 26.654095>,  <30.866314, 31.788506, 26.981421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080412, 31.872292, 26.654095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076030, -0.952887, -0.293643,
		-0.841268, 0.219387, -0.494103,
		0.535246, 0.209466, -0.818313,
		31.240986, 31.935131, 26.408600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501263, 31.545664, 26.293980>,  <30.866314, 31.788506, 26.981421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501263, 31.545664, 26.293980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896063, 31.569775, 26.234390>,  <31.132944, 31.584242, 26.198637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896063, 31.569775, 26.234390>,  <30.501263, 31.545664, 26.293980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896063, 31.569775, 26.234390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006830, -0.910421, -0.413627,
		-0.160561, 0.409268, -0.898176,
		0.987002, 0.060278, -0.148974,
		31.192163, 31.587858, 26.189697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607050, 31.202599, 25.658798>,  <30.501263, 31.545664, 26.293980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607050, 31.202599, 25.658798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972433, 31.176334, 25.819439>,  <31.191662, 31.160576, 25.915823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972433, 31.176334, 25.819439>,  <30.607050, 31.202599, 25.658798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972433, 31.176334, 25.819439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125204, -0.893676, -0.430892,
		0.387196, 0.443884, -0.808113,
		0.913457, -0.065661, 0.401603,
		31.246469, 31.156635, 25.939920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918163, 30.737314, 25.181871>,  <30.607050, 31.202599, 25.658798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918163, 30.737314, 25.181871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200411, 30.737297, 25.465309>,  <31.369759, 30.737286, 25.635372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200411, 30.737297, 25.465309>,  <30.918163, 30.737314, 25.181871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200411, 30.737297, 25.465309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182161, -0.966380, -0.181457,
		0.684778, 0.257117, -0.681887,
		0.705618, -0.000044, 0.708592,
		31.412096, 30.737284, 25.677887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462225, 30.457436, 24.909845>,  <30.918163, 30.737314, 25.181871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462225, 30.457436, 24.909845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493555, 30.390663, 25.302986>,  <31.512352, 30.350599, 25.538872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493555, 30.390663, 25.302986>,  <31.462225, 30.457436, 24.909845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493555, 30.390663, 25.302986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390559, -0.901939, -0.184311,
		0.917240, 0.398298, -0.005448,
		0.078324, -0.166930, 0.982853,
		31.517052, 30.340584, 25.597841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185665, 30.169998, 24.980762>,  <31.462225, 30.457436, 24.909845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185665, 30.169998, 24.980762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977060, 30.052364, 25.301147>,  <31.851898, 29.981785, 25.493378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977060, 30.052364, 25.301147>,  <32.185665, 30.169998, 24.980762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977060, 30.052364, 25.301147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404228, -0.911851, -0.071604,
		0.751417, 0.286429, 0.594417,
		-0.521510, -0.294084, 0.800963,
		31.820608, 29.964140, 25.541437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697670, 29.851845, 25.435762>,  <32.185665, 30.169998, 24.980762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697670, 29.851845, 25.435762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345436, 29.723118, 25.574902>,  <32.134094, 29.645882, 25.658384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345436, 29.723118, 25.574902>,  <32.697670, 29.851845, 25.435762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345436, 29.723118, 25.574902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325139, -0.944315, -0.050542,
		0.344743, 0.068592, 0.936188,
		-0.880589, -0.321815, 0.347848,
		32.081261, 29.626574, 25.679256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881115, 29.171064, 25.832071>,  <32.697670, 29.851845, 25.435762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881115, 29.171064, 25.832071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484207, 29.145290, 25.789639>,  <32.246063, 29.129826, 25.764179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484207, 29.145290, 25.789639>,  <32.881115, 29.171064, 25.832071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484207, 29.145290, 25.789639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056152, -0.995268, 0.079303,
		-0.110688, 0.072733, 0.991190,
		-0.992268, -0.064436, -0.106080,
		32.186527, 29.125959, 25.757814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688046, 28.632090, 26.338219>,  <32.881115, 29.171064, 25.832071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688046, 28.632090, 26.338219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349953, 28.662323, 26.126610>,  <32.147095, 28.680464, 25.999645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349953, 28.662323, 26.126610>,  <32.688046, 28.632090, 26.338219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349953, 28.662323, 26.126610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100178, -0.994808, 0.017922,
		-0.524921, 0.068145, 0.848418,
		-0.845235, 0.075585, -0.529023,
		32.096382, 28.684999, 25.967903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198368, 28.184122, 26.620649>,  <32.688046, 28.632090, 26.338219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198368, 28.184122, 26.620649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083511, 28.228054, 26.240021>,  <32.014599, 28.254414, 26.011644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083511, 28.228054, 26.240021>,  <32.198368, 28.184122, 26.620649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083511, 28.228054, 26.240021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206729, -0.977100, -0.050395,
		-0.935315, 0.182247, 0.303268,
		-0.287139, 0.109829, -0.951572,
		31.997370, 28.261003, 25.954550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511961, 27.930021, 26.542744>,  <32.198368, 28.184122, 26.620649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511961, 27.930021, 26.542744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661575, 27.923405, 26.171837>,  <31.751343, 27.919434, 25.949293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661575, 27.923405, 26.171837>,  <31.511961, 27.930021, 26.542744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661575, 27.923405, 26.171837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127533, -0.991260, -0.033759,
		-0.918604, 0.130884, -0.372875,
		0.374035, -0.016543, -0.927267,
		31.773787, 27.918442, 25.893656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091881, 27.341322, 26.180456>,  <31.511961, 27.930021, 26.542744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091881, 27.341322, 26.180456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415569, 27.420380, 25.959152>,  <31.609783, 27.467815, 25.826370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415569, 27.420380, 25.959152>,  <31.091881, 27.341322, 26.180456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415569, 27.420380, 25.959152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187068, -0.979383, -0.076260,
		-0.556924, -0.041785, -0.829512,
		0.809223, 0.197646, -0.553258,
		31.658337, 27.479673, 25.793175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090742, 26.874790, 25.619940>,  <31.091881, 27.341322, 26.180456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090742, 26.874790, 25.619940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480120, 26.961823, 25.648415>,  <31.713747, 27.014042, 25.665501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480120, 26.961823, 25.648415>,  <31.090742, 26.874790, 25.619940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480120, 26.961823, 25.648415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221776, -0.973399, -0.057536,
		0.056777, 0.071796, -0.995802,
		0.973443, 0.217579, 0.071189,
		31.772152, 27.027096, 25.669771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361954, 26.452665, 25.026291>,  <31.090742, 26.874790, 25.619940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361954, 26.452665, 25.026291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649759, 26.529270, 25.293312>,  <31.822443, 26.575233, 25.453524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649759, 26.529270, 25.293312>,  <31.361954, 26.452665, 25.026291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649759, 26.529270, 25.293312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222686, -0.974092, 0.039439,
		0.657810, 0.120278, -0.743518,
		0.719512, 0.191514, 0.667552,
		31.865612, 26.586725, 25.493578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794296, 25.869373, 24.865219>,  <31.361954, 26.452665, 25.026291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794296, 25.869373, 24.865219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914080, 26.015701, 25.217697>,  <31.985949, 26.103498, 25.429184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914080, 26.015701, 25.217697>,  <31.794296, 25.869373, 24.865219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914080, 26.015701, 25.217697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220219, -0.925139, 0.309226,
		0.928348, 0.101456, -0.357600,
		0.299457, 0.365820, 0.881194,
		32.003918, 26.125446, 25.482056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322372, 25.391619, 24.969898>,  <31.794296, 25.869373, 24.865219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322372, 25.391619, 24.969898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240040, 25.565350, 25.320667>,  <32.190639, 25.669588, 25.531128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240040, 25.565350, 25.320667>,  <32.322372, 25.391619, 24.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240040, 25.565350, 25.320667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147850, -0.872021, 0.466604,
		0.967355, 0.225693, 0.115272,
		-0.205829, 0.434329, 0.876922,
		32.178291, 25.695648, 25.583744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864719, 25.235615, 25.400454>,  <32.322372, 25.391619, 24.969898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864719, 25.235615, 25.400454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556049, 25.324551, 25.638809>,  <32.370846, 25.377913, 25.781822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556049, 25.324551, 25.638809>,  <32.864719, 25.235615, 25.400454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556049, 25.324551, 25.638809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303134, -0.695074, 0.651907,
		0.559130, 0.683694, 0.468973,
		-0.771676, 0.222339, 0.595888,
		32.324547, 25.391253, 25.817575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094261, 25.202625, 26.035765>,  <32.864719, 25.235615, 25.400454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094261, 25.202625, 26.035765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698910, 25.156860, 26.075794>,  <32.461700, 25.129400, 26.099812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698910, 25.156860, 26.075794>,  <33.094261, 25.202625, 26.035765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698910, 25.156860, 26.075794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150999, -0.814680, 0.559907,
		0.017468, 0.568512, 0.822490,
		-0.988379, -0.114415, 0.100075,
		32.402397, 25.122536, 26.105816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965855, 25.067936, 26.791285>,  <33.094261, 25.202625, 26.035765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965855, 25.067936, 26.791285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642937, 24.927528, 26.601521>,  <32.449188, 24.843283, 26.487661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642937, 24.927528, 26.601521>,  <32.965855, 25.067936, 26.791285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642937, 24.927528, 26.601521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002275, -0.802021, 0.597291,
		-0.590150, 0.483267, 0.646666,
		-0.807290, -0.351021, -0.474412,
		32.400749, 24.822222, 26.459196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664692, 24.622564, 27.264925>,  <32.965855, 25.067936, 26.791285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664692, 24.622564, 27.264925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454128, 24.517563, 26.941448>,  <32.327789, 24.454561, 26.747362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454128, 24.517563, 26.941448>,  <32.664692, 24.622564, 27.264925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454128, 24.517563, 26.941448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119827, -0.918746, 0.376228,
		-0.841746, 0.294952, 0.452179,
		-0.526407, -0.262506, -0.808694,
		32.296207, 24.438810, 26.698839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995689, 24.430981, 27.559343>,  <32.664692, 24.622564, 27.264925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995689, 24.430981, 27.559343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078617, 24.250751, 27.212009>,  <32.128372, 24.142614, 27.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078617, 24.250751, 27.212009>,  <31.995689, 24.430981, 27.559343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078617, 24.250751, 27.212009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091767, -0.892662, 0.441287,
		-0.973960, -0.011803, -0.226414,
		0.207319, -0.450573, -0.868333,
		32.140812, 24.115580, 26.951509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676661, 23.836786, 27.642298>,  <31.995689, 24.430981, 27.559343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676661, 23.836786, 27.642298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873041, 23.736736, 27.308495>,  <31.990870, 23.676706, 27.108212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873041, 23.736736, 27.308495>,  <31.676661, 23.836786, 27.642298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873041, 23.736736, 27.308495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021156, -0.961039, 0.275601,
		-0.870930, -0.117652, -0.477115,
		0.490951, -0.250123, -0.834509,
		32.020325, 23.661699, 27.058142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462782, 23.206125, 27.516586>,  <31.676661, 23.836786, 27.642298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462782, 23.206125, 27.516586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802801, 23.201874, 27.305946>,  <32.006813, 23.199324, 27.179564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802801, 23.201874, 27.305946>,  <31.462782, 23.206125, 27.516586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802801, 23.201874, 27.305946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132225, -0.963473, 0.232888,
		-0.509838, -0.267595, -0.817593,
		0.850048, -0.010629, -0.526598,
		32.057816, 23.198685, 27.147966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853683, 23.288586, 27.059668>,  <31.462782, 23.206125, 27.516586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853683, 23.288586, 27.059668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496906, 23.128796, 26.974945>,  <30.282841, 23.032921, 26.924112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496906, 23.128796, 26.974945>,  <30.853683, 23.288586, 27.059668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496906, 23.128796, 26.974945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366220, 0.913000, -0.179759,
		0.265188, -0.082768, -0.960638,
		-0.891941, -0.399475, -0.211805,
		30.229324, 23.008953, 26.911404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700188, 23.624933, 26.459116>,  <30.853683, 23.288586, 27.059668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700188, 23.624933, 26.459116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369551, 23.502884, 26.648281>,  <30.171169, 23.429655, 26.761780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369551, 23.502884, 26.648281>,  <30.700188, 23.624933, 26.459116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369551, 23.502884, 26.648281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386715, 0.918424, -0.083361,
		-0.408900, -0.251788, -0.877156,
		-0.826590, -0.305123, 0.472914,
		30.121574, 23.411346, 26.790155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167437, 23.977779, 26.153164>,  <30.700188, 23.624933, 26.459116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167437, 23.977779, 26.153164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004148, 23.873325, 26.503059>,  <29.906176, 23.810654, 26.712997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004148, 23.873325, 26.503059>,  <30.167437, 23.977779, 26.153164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004148, 23.873325, 26.503059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617818, 0.784455, -0.054137,
		-0.672056, -0.562528, -0.481562,
		-0.408218, -0.261135, 0.874738,
		29.881683, 23.794985, 26.765480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345434, 24.120569, 26.124170>,  <30.167437, 23.977779, 26.153164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345434, 24.120569, 26.124170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420980, 24.098808, 26.516369>,  <29.466309, 24.085752, 26.751688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420980, 24.098808, 26.516369>,  <29.345434, 24.120569, 26.124170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420980, 24.098808, 26.516369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605868, 0.779322, 0.159944,
		-0.772822, -0.624258, 0.114227,
		0.188866, -0.054402, 0.980495,
		29.477640, 24.082487, 26.810516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656395, 24.262505, 26.499336>,  <29.345434, 24.120569, 26.124170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656395, 24.262505, 26.499336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954308, 24.337143, 26.755611>,  <29.133055, 24.381926, 26.909376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954308, 24.337143, 26.755611>,  <28.656395, 24.262505, 26.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954308, 24.337143, 26.755611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400746, 0.892766, 0.205843,
		-0.533576, -0.410061, 0.739694,
		0.744782, 0.186597, 0.640689,
		29.177742, 24.393122, 26.947819>
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
