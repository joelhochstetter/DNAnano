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
	<43.196213, 32.177006, 22.690889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853909, 32.366035, 22.606651>,  <42.648525, 32.479454, 22.556108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853909, 32.366035, 22.606651>,  <43.196213, 32.177006, 22.690889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853909, 32.366035, 22.606651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515408, -0.814181, 0.267327,
		-0.045131, 0.337309, 0.940311,
		-0.855756, 0.472579, -0.210597,
		42.597183, 32.507809, 22.543472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626720, 32.037212, 23.266027>,  <43.196213, 32.177006, 22.690889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626720, 32.037212, 23.266027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432579, 32.181564, 22.947483>,  <42.316093, 32.268177, 22.756357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432579, 32.181564, 22.947483>,  <42.626720, 32.037212, 23.266027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432579, 32.181564, 22.947483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746722, -0.644890, 0.162863,
		-0.454790, 0.673707, 0.582482,
		-0.485358, 0.360884, -0.796361,
		42.286972, 32.289829, 22.708574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906418, 31.850325, 23.328341>,  <42.626720, 32.037212, 23.266027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906418, 31.850325, 23.328341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904705, 31.989422, 22.953308>,  <41.903679, 32.072880, 22.728289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904705, 31.989422, 22.953308>,  <41.906418, 31.850325, 23.328341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904705, 31.989422, 22.953308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791886, -0.573726, -0.209178,
		-0.610655, 0.741560, 0.277830,
		-0.004280, 0.347746, -0.937580,
		41.903419, 32.093746, 22.672035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253872, 31.973320, 23.154291>,  <41.906418, 31.850325, 23.328341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253872, 31.973320, 23.154291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438377, 31.911469, 22.804817>,  <41.549080, 31.874357, 22.595133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438377, 31.911469, 22.804817>,  <41.253872, 31.973320, 23.154291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438377, 31.911469, 22.804817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780609, -0.538808, -0.316759,
		-0.421769, 0.828116, -0.369235,
		0.461260, -0.154629, -0.873687,
		41.576756, 31.865080, 22.542711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668568, 32.118362, 22.540932>,  <41.253872, 31.973320, 23.154291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668568, 32.118362, 22.540932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971333, 31.881706, 22.429901>,  <41.152992, 31.739714, 22.363283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971333, 31.881706, 22.429901>,  <40.668568, 32.118362, 22.540932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971333, 31.881706, 22.429901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637881, -0.576499, -0.510644,
		0.142095, 0.563572, -0.813754,
		0.756913, -0.591638, -0.277575,
		41.198406, 31.704214, 22.346628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138969, 31.619253, 22.811964>,  <40.668568, 32.118362, 22.540932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138969, 31.619253, 22.811964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845417, 31.350399, 22.772659>,  <39.669285, 31.189087, 22.749077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845417, 31.350399, 22.772659>,  <40.138969, 31.619253, 22.811964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845417, 31.350399, 22.772659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493352, 0.427970, 0.757262,
		-0.466929, 0.604217, -0.645677,
		-0.733881, -0.672134, -0.098261,
		39.625252, 31.148760, 22.743181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465366, 31.919603, 22.857645>,  <40.138969, 31.619253, 22.811964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465366, 31.919603, 22.857645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418312, 31.537655, 22.966736>,  <39.390079, 31.308485, 23.032190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418312, 31.537655, 22.966736>,  <39.465366, 31.919603, 22.857645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418312, 31.537655, 22.966736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502408, 0.294123, 0.813067,
		-0.856590, -0.041372, -0.514336,
		-0.117640, -0.954872, 0.272729,
		39.383018, 31.251194, 23.048555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864632, 31.950651, 23.086704>,  <39.465366, 31.919603, 22.857645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864632, 31.950651, 23.086704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003372, 31.610558, 23.245094>,  <39.086617, 31.406502, 23.340128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003372, 31.610558, 23.245094>,  <38.864632, 31.950651, 23.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003372, 31.610558, 23.245094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436909, 0.227114, 0.870362,
		-0.829942, -0.474893, -0.292699,
		0.346853, -0.850233, 0.395977,
		39.107430, 31.355488, 23.363888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395672, 31.734909, 23.583220>,  <38.864632, 31.950651, 23.086704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395672, 31.734909, 23.583220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741085, 31.550083, 23.664024>,  <38.948334, 31.439188, 23.712507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741085, 31.550083, 23.664024>,  <38.395672, 31.734909, 23.583220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741085, 31.550083, 23.664024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043338, 0.331103, 0.942599,
		-0.502428, -0.822719, 0.265893,
		0.863532, -0.462065, 0.202010,
		39.000145, 31.411463, 23.724627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323235, 31.235605, 24.181454>,  <38.395672, 31.734909, 23.583220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323235, 31.235605, 24.181454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719692, 31.287106, 24.168415>,  <38.957565, 31.318007, 24.160591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719692, 31.287106, 24.168415>,  <38.323235, 31.235605, 24.181454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719692, 31.287106, 24.168415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003537, 0.219753, 0.975549,
		0.132768, -0.967022, 0.217351,
		0.991140, 0.128752, -0.032597,
		39.017033, 31.325731, 24.158636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554749, 30.892801, 24.890190>,  <38.323235, 31.235605, 24.181454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554749, 30.892801, 24.890190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870930, 31.090115, 24.744946>,  <39.060638, 31.208502, 24.657799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870930, 31.090115, 24.744946>,  <38.554749, 30.892801, 24.890190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870930, 31.090115, 24.744946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306168, 0.195253, 0.931739,
		0.530509, -0.847673, 0.003312,
		0.790456, 0.493282, -0.363114,
		39.108067, 31.238098, 24.636011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184937, 30.673012, 25.160166>,  <38.554749, 30.892801, 24.890190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184937, 30.673012, 25.160166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289623, 31.042377, 25.047874>,  <39.352436, 31.263998, 24.980499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289623, 31.042377, 25.047874>,  <39.184937, 30.673012, 25.160166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289623, 31.042377, 25.047874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175783, 0.240396, 0.954626,
		0.949002, -0.299188, -0.099405,
		0.261716, 0.923416, -0.280729,
		39.368137, 31.319403, 24.963655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638561, 30.973852, 25.683975>,  <39.184937, 30.673012, 25.160166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638561, 30.973852, 25.683975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525543, 31.312828, 25.504192>,  <39.457733, 31.516214, 25.396322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525543, 31.312828, 25.504192>,  <39.638561, 30.973852, 25.683975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525543, 31.312828, 25.504192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017281, 0.472971, 0.880908,
		0.959097, 0.241134, -0.148282,
		-0.282550, 0.847439, -0.449458,
		39.440777, 31.567060, 25.369354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131966, 31.431808, 25.933455>,  <39.638561, 30.973852, 25.683975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131966, 31.431808, 25.933455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823471, 31.661674, 25.823940>,  <39.638374, 31.799593, 25.758232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823471, 31.661674, 25.823940>,  <40.131966, 31.431808, 25.933455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823471, 31.661674, 25.823940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052409, 0.485974, 0.872400,
		0.634391, 0.658476, -0.404917,
		-0.771234, 0.574664, -0.273788,
		39.592102, 31.834074, 25.741804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301029, 32.075371, 26.154402>,  <40.131966, 31.431808, 25.933455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301029, 32.075371, 26.154402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903675, 32.075943, 26.108463>,  <39.665264, 32.076286, 26.080900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903675, 32.075943, 26.108463>,  <40.301029, 32.075371, 26.154402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903675, 32.075943, 26.108463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090591, 0.604926, 0.791112,
		0.070606, 0.796281, -0.600793,
		-0.993382, 0.001431, -0.114847,
		39.605659, 32.076374, 26.074009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145348, 32.765911, 26.073809>,  <40.301029, 32.075371, 26.154402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145348, 32.765911, 26.073809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816605, 32.569786, 26.189835>,  <39.619358, 32.452110, 26.259451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816605, 32.569786, 26.189835>,  <40.145348, 32.765911, 26.073809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816605, 32.569786, 26.189835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155094, 0.682508, 0.714233,
		-0.548169, 0.542013, -0.636972,
		-0.821862, -0.490310, 0.290067,
		39.570045, 32.422691, 26.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621811, 33.238583, 26.124380>,  <40.145348, 32.765911, 26.073809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621811, 33.238583, 26.124380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472305, 32.951195, 26.359020>,  <39.382603, 32.778763, 26.499805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472305, 32.951195, 26.359020>,  <39.621811, 33.238583, 26.124380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472305, 32.951195, 26.359020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027139, 0.623697, 0.781195,
		-0.927126, 0.307903, -0.213618,
		-0.373765, -0.718469, 0.586602,
		39.360176, 32.735653, 26.535002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033424, 33.518318, 26.429461>,  <39.621811, 33.238583, 26.124380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033424, 33.518318, 26.429461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138447, 33.204609, 26.654312>,  <39.201458, 33.016384, 26.789223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138447, 33.204609, 26.654312>,  <39.033424, 33.518318, 26.429461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138447, 33.204609, 26.654312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065907, 0.566630, 0.821332,
		-0.962664, -0.252692, 0.097081,
		0.262553, -0.784269, 0.562129,
		39.217213, 32.969330, 26.822950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552376, 33.548969, 26.929926>,  <39.033424, 33.518318, 26.429461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552376, 33.548969, 26.929926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810329, 33.304276, 27.113186>,  <38.965103, 33.157459, 27.223143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810329, 33.304276, 27.113186>,  <38.552376, 33.548969, 26.929926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810329, 33.304276, 27.113186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100550, 0.526337, 0.844310,
		-0.757636, -0.590551, 0.277918,
		0.644886, -0.611735, 0.458151,
		39.003796, 33.120754, 27.250631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264812, 33.346279, 27.565041>,  <38.552376, 33.548969, 26.929926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264812, 33.346279, 27.565041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662117, 33.314846, 27.599098>,  <38.900501, 33.295986, 27.619534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662117, 33.314846, 27.599098>,  <38.264812, 33.346279, 27.565041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662117, 33.314846, 27.599098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005029, 0.704932, 0.709257,
		-0.115753, -0.704908, 0.699790,
		0.993265, -0.078579, 0.085144,
		38.960098, 33.291271, 27.624641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411041, 33.401375, 28.243366>,  <38.264812, 33.346279, 27.565041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411041, 33.401375, 28.243366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789104, 33.457218, 28.125252>,  <39.015942, 33.490723, 28.054382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789104, 33.457218, 28.125252>,  <38.411041, 33.401375, 28.243366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789104, 33.457218, 28.125252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176394, 0.542715, 0.821186,
		0.274896, -0.828234, 0.488325,
		0.945155, 0.139603, -0.295286,
		39.072651, 33.499100, 28.036667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890835, 33.272385, 28.899792>,  <38.411041, 33.401375, 28.243366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890835, 33.272385, 28.899792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092167, 33.475929, 28.620445>,  <39.212967, 33.598057, 28.452837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092167, 33.475929, 28.620445>,  <38.890835, 33.272385, 28.899792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092167, 33.475929, 28.620445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318916, 0.641750, 0.697459,
		0.803089, -0.573773, 0.160727,
		0.503330, 0.508863, -0.698368,
		39.243164, 33.628590, 28.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532307, 33.446358, 29.130016>,  <38.890835, 33.272385, 28.899792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532307, 33.446358, 29.130016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456947, 33.717564, 28.845818>,  <39.411732, 33.880287, 28.675299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456947, 33.717564, 28.845818>,  <39.532307, 33.446358, 29.130016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456947, 33.717564, 28.845818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158608, 0.734962, 0.659299,
		0.969201, 0.011520, -0.246003,
		-0.188397, 0.678011, -0.710498,
		39.400429, 33.920967, 28.632668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188660, 33.807247, 29.100374>,  <39.532307, 33.446358, 29.130016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188660, 33.807247, 29.100374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884850, 34.020317, 28.951038>,  <39.702564, 34.148159, 28.861437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884850, 34.020317, 28.951038>,  <40.188660, 33.807247, 29.100374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884850, 34.020317, 28.951038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381274, 0.829580, 0.407956,
		0.527021, 0.167509, -0.833181,
		-0.759526, 0.532671, -0.373339,
		39.656990, 34.180119, 28.839037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535294, 34.418156, 28.859171>,  <40.188660, 33.807247, 29.100374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535294, 34.418156, 28.859171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142391, 34.489063, 28.883659>,  <39.906651, 34.531609, 28.898352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142391, 34.489063, 28.883659>,  <40.535294, 34.418156, 28.859171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142391, 34.489063, 28.883659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185246, 0.866204, 0.464084,
		0.029236, 0.467191, -0.883673,
		-0.982257, 0.177265, 0.061221,
		39.847713, 34.542244, 28.902025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381824, 35.060421, 28.646761>,  <40.535294, 34.418156, 28.859171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381824, 35.060421, 28.646761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086407, 34.985989, 28.905968>,  <39.909157, 34.941330, 29.061493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086407, 34.985989, 28.905968>,  <40.381824, 35.060421, 28.646761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086407, 34.985989, 28.905968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200670, 0.856924, 0.474776,
		-0.643651, 0.480680, -0.595533,
		-0.738542, -0.186085, 0.648019,
		39.864845, 34.930164, 29.100374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955284, 35.731766, 28.738462>,  <40.381824, 35.060421, 28.646761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955284, 35.731766, 28.738462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930576, 35.501724, 29.064762>,  <39.915752, 35.363701, 29.260542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930576, 35.501724, 29.064762>,  <39.955284, 35.731766, 28.738462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930576, 35.501724, 29.064762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197157, 0.794175, 0.574818,
		-0.978424, 0.196334, 0.064332,
		-0.061766, -0.575099, 0.815749,
		39.912048, 35.329193, 29.309486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393635, 36.101696, 28.209984>,  <39.955284, 35.731766, 28.738462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393635, 36.101696, 28.209984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524479, 36.410873, 27.992523>,  <40.602985, 36.596378, 27.862047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524479, 36.410873, 27.992523>,  <40.393635, 36.101696, 28.209984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524479, 36.410873, 27.992523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764859, -0.121305, -0.632673,
		-0.554969, 0.622770, 0.551513,
		0.327109, 0.772944, -0.543652,
		40.622612, 36.642757, 27.829428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640961, 36.226055, 28.269773>,  <40.393635, 36.101696, 28.209984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640961, 36.226055, 28.269773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413010, 36.197742, 28.597244>,  <39.276237, 36.180756, 28.793726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413010, 36.197742, 28.597244>,  <39.640961, 36.226055, 28.269773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413010, 36.197742, 28.597244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636833, 0.667669, -0.385568,
		-0.519311, -0.741086, -0.425568,
		-0.569877, -0.070786, 0.818675,
		39.242046, 36.176506, 28.842848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978168, 36.317425, 28.156218>,  <39.640961, 36.226055, 28.269773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978168, 36.317425, 28.156218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958424, 36.442810, 28.535545>,  <38.946575, 36.518040, 28.763142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958424, 36.442810, 28.535545>,  <38.978168, 36.317425, 28.156218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958424, 36.442810, 28.535545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578550, 0.764986, -0.282977,
		-0.814151, -0.562619, 0.143588,
		-0.049365, 0.313459, 0.948318,
		38.943615, 36.536846, 28.820040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381851, 36.206795, 28.626768>,  <38.978168, 36.317425, 28.156218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381851, 36.206795, 28.626768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539150, 36.561489, 28.723969>,  <38.633530, 36.774307, 28.782290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539150, 36.561489, 28.723969>,  <38.381851, 36.206795, 28.626768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539150, 36.561489, 28.723969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802279, 0.460041, -0.380410,
		-0.449114, -0.045358, 0.892322,
		0.393250, 0.886739, 0.243001,
		38.657124, 36.827511, 28.796869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867859, 36.531990, 28.931797>,  <38.381851, 36.206795, 28.626768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867859, 36.531990, 28.931797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091717, 36.827408, 28.781410>,  <38.226032, 37.004658, 28.691177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091717, 36.827408, 28.781410>,  <37.867859, 36.531990, 28.931797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091717, 36.827408, 28.781410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798256, 0.358499, -0.484010,
		-0.222678, 0.570993, 0.790178,
		0.559645, 0.738542, -0.375969,
		38.259609, 37.048969, 28.668619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470795, 36.108166, 29.358162>,  <37.867859, 36.531990, 28.931797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470795, 36.108166, 29.358162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098289, 36.185402, 29.481754>,  <36.874786, 36.231743, 29.555910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098289, 36.185402, 29.481754>,  <37.470795, 36.108166, 29.358162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098289, 36.185402, 29.481754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351636, -0.254197, -0.900964,
		-0.095421, -0.947682, 0.304619,
		-0.931261, 0.193086, 0.308984,
		36.818913, 36.243328, 29.574450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951958, 35.506908, 29.227062>,  <37.470795, 36.108166, 29.358162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951958, 35.506908, 29.227062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750252, 35.851173, 29.255257>,  <36.629227, 36.057732, 29.272173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750252, 35.851173, 29.255257>,  <36.951958, 35.506908, 29.227062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750252, 35.851173, 29.255257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180798, -0.025409, -0.983192,
		-0.844409, -0.508536, 0.168419,
		-0.504267, 0.860666, 0.070486,
		36.598972, 36.109375, 29.276403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233223, 35.464970, 29.238497>,  <36.951958, 35.506908, 29.227062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233223, 35.464970, 29.238497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412415, 35.782139, 29.073288>,  <36.519928, 35.972443, 28.974163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412415, 35.782139, 29.073288>,  <36.233223, 35.464970, 29.238497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412415, 35.782139, 29.073288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303433, -0.299707, -0.904491,
		-0.840980, 0.530514, 0.106339,
		0.447974, 0.792926, -0.413023,
		36.546806, 36.020016, 28.949381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703007, 35.832310, 28.832678>,  <36.233223, 35.464970, 29.238497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703007, 35.832310, 28.832678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088707, 35.813583, 28.728352>,  <36.320129, 35.802349, 28.665756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088707, 35.813583, 28.728352>,  <35.703007, 35.832310, 28.832678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088707, 35.813583, 28.728352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248559, -0.500914, -0.829038,
		-0.091835, 0.864231, -0.494644,
		0.964253, -0.046814, -0.260814,
		36.377983, 35.799538, 28.650108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704586, 35.902237, 28.107067>,  <35.703007, 35.832310, 28.832678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704586, 35.902237, 28.107067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053978, 35.737034, 28.210182>,  <36.263615, 35.637913, 28.272051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053978, 35.737034, 28.210182>,  <35.704586, 35.902237, 28.107067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053978, 35.737034, 28.210182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110096, -0.683341, -0.721751,
		0.474247, 0.602054, -0.642356,
		0.873481, -0.413009, 0.257789,
		36.316021, 35.613132, 28.287519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038967, 35.899593, 27.524446>,  <35.704586, 35.902237, 28.107067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038967, 35.899593, 27.524446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229702, 35.629143, 27.749115>,  <36.344143, 35.466873, 27.883917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229702, 35.629143, 27.749115>,  <36.038967, 35.899593, 27.524446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229702, 35.629143, 27.749115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050909, -0.659168, -0.750271,
		0.877514, 0.329165, -0.348739,
		0.476840, -0.676127, 0.561672,
		36.372753, 35.426304, 27.917616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597404, 35.677269, 27.153976>,  <36.038967, 35.899593, 27.524446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597404, 35.677269, 27.153976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534271, 35.396839, 27.432137>,  <36.496391, 35.228580, 27.599031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534271, 35.396839, 27.432137>,  <36.597404, 35.677269, 27.153976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534271, 35.396839, 27.432137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131849, -0.682957, -0.718461,
		0.978623, -0.205087, 0.015359,
		-0.157836, -0.701077, 0.695398,
		36.486919, 35.186516, 27.640757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908760, 35.075089, 26.878416>,  <36.597404, 35.677269, 27.153976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908760, 35.075089, 26.878416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685589, 34.913013, 27.168118>,  <36.551685, 34.815769, 27.341938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685589, 34.913013, 27.168118>,  <36.908760, 35.075089, 26.878416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685589, 34.913013, 27.168118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106397, -0.830582, -0.546638,
		0.823043, -0.382041, 0.420291,
		-0.557925, -0.405189, 0.724253,
		36.518211, 34.791458, 27.385393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132225, 34.426476, 26.955235>,  <36.908760, 35.075089, 26.878416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132225, 34.426476, 26.955235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777985, 34.365105, 27.130581>,  <36.565441, 34.328281, 27.235788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777985, 34.365105, 27.130581>,  <37.132225, 34.426476, 26.955235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777985, 34.365105, 27.130581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113214, -0.844069, -0.524148,
		0.450431, -0.513816, 0.730140,
		-0.885604, -0.153431, 0.438366,
		36.512302, 34.319077, 27.262091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143059, 33.808849, 27.350580>,  <37.132225, 34.426476, 26.955235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143059, 33.808849, 27.350580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763264, 33.896801, 27.261021>,  <36.535389, 33.949574, 27.207285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763264, 33.896801, 27.261021>,  <37.143059, 33.808849, 27.350580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763264, 33.896801, 27.261021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078994, -0.857975, -0.507582,
		-0.303707, -0.464255, 0.832003,
		-0.949485, 0.219879, -0.223899,
		36.478416, 33.962765, 27.193851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821232, 33.202301, 27.485529>,  <37.143059, 33.808849, 27.350580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821232, 33.202301, 27.485529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589817, 33.395527, 27.222637>,  <36.450970, 33.511463, 27.064901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589817, 33.395527, 27.222637>,  <36.821232, 33.202301, 27.485529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589817, 33.395527, 27.222637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073188, -0.833259, -0.548017,
		-0.812367, -0.268945, 0.517424,
		-0.578535, 0.483061, -0.657229,
		36.416256, 33.540443, 27.025469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300480, 32.749866, 27.357191>,  <36.821232, 33.202301, 27.485529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300480, 32.749866, 27.357191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262077, 32.995377, 27.043743>,  <36.239037, 33.142681, 26.855675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262077, 32.995377, 27.043743>,  <36.300480, 32.749866, 27.357191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262077, 32.995377, 27.043743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290178, -0.770321, -0.567804,
		-0.952144, 0.172876, 0.252062,
		-0.096010, 0.613774, -0.783622,
		36.233276, 33.179508, 26.808657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687637, 32.693493, 26.919359>,  <36.300480, 32.749866, 27.357191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687637, 32.693493, 26.919359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959068, 32.823196, 26.655727>,  <36.121929, 32.901020, 26.497549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959068, 32.823196, 26.655727>,  <35.687637, 32.693493, 26.919359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959068, 32.823196, 26.655727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253463, -0.738801, -0.624443,
		-0.689410, 0.590786, -0.419148,
		0.678579, 0.324259, -0.659080,
		36.162643, 32.920475, 26.458004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483700, 32.359188, 26.255283>,  <35.687637, 32.693493, 26.919359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483700, 32.359188, 26.255283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816292, 32.548462, 26.138844>,  <36.015846, 32.662025, 26.068979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816292, 32.548462, 26.138844>,  <35.483700, 32.359188, 26.255283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816292, 32.548462, 26.138844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009999, -0.536636, -0.843754,
		-0.555470, 0.698651, -0.450932,
		0.831477, 0.473189, -0.291100,
		36.065735, 32.690418, 26.051514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369995, 32.619457, 25.609037>,  <35.483700, 32.359188, 26.255283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369995, 32.619457, 25.609037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769077, 32.633152, 25.632378>,  <36.008526, 32.641369, 25.646381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769077, 32.633152, 25.632378>,  <35.369995, 32.619457, 25.609037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769077, 32.633152, 25.632378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067654, -0.503578, -0.861296,
		-0.000106, 0.863271, -0.504741,
		0.997709, 0.034239, 0.058350,
		36.068390, 32.643425, 25.649883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657101, 32.872780, 24.966028>,  <35.369995, 32.619457, 25.609037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657101, 32.872780, 24.966028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952892, 32.671051, 25.144386>,  <36.130367, 32.550014, 25.251402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952892, 32.671051, 25.144386>,  <35.657101, 32.872780, 24.966028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952892, 32.671051, 25.144386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188671, -0.480559, -0.856426,
		0.646195, 0.717441, -0.260214,
		0.739483, -0.504323, 0.445895,
		36.174736, 32.519753, 25.278154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225555, 32.883835, 24.457821>,  <35.657101, 32.872780, 24.966028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225555, 32.883835, 24.457821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325439, 32.594788, 24.715649>,  <36.385368, 32.421360, 24.870346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325439, 32.594788, 24.715649>,  <36.225555, 32.883835, 24.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325439, 32.594788, 24.715649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523501, -0.459250, -0.717660,
		0.814613, 0.516638, 0.263612,
		0.249707, -0.722616, 0.644571,
		36.400352, 32.378002, 24.909019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898811, 32.717876, 24.268545>,  <36.225555, 32.883835, 24.457821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898811, 32.717876, 24.268545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774628, 32.402786, 24.481377>,  <36.700115, 32.213734, 24.609076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774628, 32.402786, 24.481377>,  <36.898811, 32.717876, 24.268545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774628, 32.402786, 24.481377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627296, -0.590332, -0.507944,
		0.714222, 0.176074, 0.677410,
		-0.310461, -0.787722, 0.532079,
		36.681488, 32.166470, 24.641001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515274, 32.222218, 24.461201>,  <36.898811, 32.717876, 24.268545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515274, 32.222218, 24.461201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183823, 31.999535, 24.484699>,  <36.984951, 31.865925, 24.498798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183823, 31.999535, 24.484699>,  <37.515274, 32.222218, 24.461201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183823, 31.999535, 24.484699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444773, -0.718454, -0.534790,
		0.339930, -0.417012, 0.842941,
		-0.828628, -0.556709, 0.058748,
		36.935234, 31.832521, 24.502323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719765, 31.487558, 24.606533>,  <37.515274, 32.222218, 24.461201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719765, 31.487558, 24.606533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363190, 31.478657, 24.425491>,  <37.149246, 31.473316, 24.316866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363190, 31.478657, 24.425491>,  <37.719765, 31.487558, 24.606533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363190, 31.478657, 24.425491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320614, -0.736816, -0.595239,
		-0.320240, -0.675727, 0.663957,
		-0.891433, -0.022255, -0.452605,
		37.095760, 31.471981, 24.289709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582989, 30.816671, 24.624937>,  <37.719765, 31.487558, 24.606533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582989, 30.816671, 24.624937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359436, 30.981243, 24.336945>,  <37.225304, 31.079987, 24.164148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359436, 30.981243, 24.336945>,  <37.582989, 30.816671, 24.624937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359436, 30.981243, 24.336945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247048, -0.746202, -0.618183,
		-0.791593, -0.523362, 0.315394,
		-0.558881, 0.411432, -0.719983,
		37.191772, 31.104673, 24.120949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455086, 30.231773, 24.359594>,  <37.582989, 30.816671, 24.624937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455086, 30.231773, 24.359594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311050, 30.499508, 24.099648>,  <37.224628, 30.660149, 23.943680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311050, 30.499508, 24.099648>,  <37.455086, 30.231773, 24.359594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311050, 30.499508, 24.099648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322639, -0.564263, -0.759942,
		-0.875352, -0.483318, -0.012770,
		-0.360088, 0.669337, -0.649866,
		37.203026, 30.700310, 23.904688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032219, 29.827543, 23.882929>,  <37.455086, 30.231773, 24.359594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032219, 29.827543, 23.882929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158783, 30.159470, 23.699062>,  <37.234722, 30.358625, 23.588743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158783, 30.159470, 23.699062>,  <37.032219, 29.827543, 23.882929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158783, 30.159470, 23.699062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344022, -0.551951, -0.759604,
		-0.884043, 0.082212, -0.460118,
		0.316412, 0.829814, -0.459666,
		37.253708, 30.408413, 23.561163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898106, 29.743830, 23.174438>,  <37.032219, 29.827543, 23.882929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898106, 29.743830, 23.174438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166592, 30.040325, 23.171974>,  <37.327682, 30.218224, 23.170496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166592, 30.040325, 23.171974>,  <36.898106, 29.743830, 23.174438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166592, 30.040325, 23.171974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550469, -0.503996, -0.665561,
		-0.496447, 0.443339, -0.746318,
		0.671211, 0.741241, -0.006163,
		37.367954, 30.262697, 23.170126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927227, 29.968307, 22.555029>,  <36.898106, 29.743830, 23.174438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927227, 29.968307, 22.555029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285839, 30.060680, 22.706238>,  <37.501007, 30.116104, 22.796963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285839, 30.060680, 22.706238>,  <36.927227, 29.968307, 22.555029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285839, 30.060680, 22.706238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441552, -0.534329, -0.720780,
		0.035538, 0.813119, -0.581011,
		0.896532, 0.230931, 0.378023,
		37.554798, 30.129959, 22.819645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248650, 30.334978, 21.956659>,  <36.927227, 29.968307, 22.555029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248650, 30.334978, 21.956659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447395, 30.118690, 22.228172>,  <37.566643, 29.988918, 22.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447395, 30.118690, 22.228172>,  <37.248650, 30.334978, 21.956659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447395, 30.118690, 22.228172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259832, -0.653591, -0.710849,
		0.828015, 0.529568, -0.184253,
		0.496869, -0.540719, 0.678782,
		37.596455, 29.956474, 22.431807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716789, 30.709553, 21.649696>,  <37.248650, 30.334978, 21.956659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716789, 30.709553, 21.649696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728130, 31.096569, 21.549244>,  <36.734936, 31.328779, 21.488974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728130, 31.096569, 21.549244>,  <36.716789, 30.709553, 21.649696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728130, 31.096569, 21.549244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694979, 0.199651, 0.690755,
		0.718471, 0.154947, 0.678079,
		0.028349, 0.967539, -0.251129,
		36.736633, 31.386831, 21.473906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953770, 31.246040, 22.159256>,  <36.716789, 30.709553, 21.649696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953770, 31.246040, 22.159256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654495, 31.368027, 21.923557>,  <36.474930, 31.441219, 21.782137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654495, 31.368027, 21.923557>,  <36.953770, 31.246040, 22.159256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654495, 31.368027, 21.923557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575051, 0.144944, 0.805175,
		0.330959, 0.941269, 0.066926,
		-0.748186, 0.304966, -0.589248,
		36.430038, 31.459517, 21.746782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683571, 31.992313, 22.258972>,  <36.953770, 31.246040, 22.159256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683571, 31.992313, 22.258972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382446, 31.781517, 22.101208>,  <36.201771, 31.655039, 22.006548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382446, 31.781517, 22.101208>,  <36.683571, 31.992313, 22.258972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382446, 31.781517, 22.101208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404669, -0.102061, 0.908750,
		-0.519157, 0.843720, -0.136425,
		-0.752807, -0.526991, -0.394413,
		36.156605, 31.623419, 21.982883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152691, 32.335037, 22.575417>,  <36.683571, 31.992313, 22.258972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152691, 32.335037, 22.575417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098614, 31.951107, 22.477058>,  <36.066166, 31.720749, 22.418043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098614, 31.951107, 22.477058>,  <36.152691, 32.335037, 22.575417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098614, 31.951107, 22.477058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427210, -0.167453, 0.888511,
		-0.893988, 0.225170, -0.387407,
		-0.135194, -0.959822, -0.245895,
		36.058056, 31.663160, 22.403290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482468, 32.124249, 22.737085>,  <36.152691, 32.335037, 22.575417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482468, 32.124249, 22.737085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760201, 31.838524, 22.772083>,  <35.926842, 31.667089, 22.793081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760201, 31.838524, 22.772083>,  <35.482468, 32.124249, 22.737085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760201, 31.838524, 22.772083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414623, -0.297696, 0.859921,
		-0.588206, -0.633351, -0.502872,
		0.694335, -0.714314, 0.087495,
		35.968502, 31.624229, 22.798332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114864, 31.608107, 22.798567>,  <35.482468, 32.124249, 22.737085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114864, 31.608107, 22.798567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465103, 31.504795, 22.961845>,  <35.675247, 31.442808, 23.059813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465103, 31.504795, 22.961845>,  <35.114864, 31.608107, 22.798567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465103, 31.504795, 22.961845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477622, -0.336635, 0.811514,
		-0.072182, -0.905522, -0.418115,
		0.875596, -0.258277, 0.408198,
		35.727783, 31.427311, 23.084305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824829, 32.317692, 22.918343>,  <35.114864, 31.608107, 22.798567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824829, 32.317692, 22.918343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478951, 32.500553, 23.001591>,  <34.271423, 32.610271, 23.051540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478951, 32.500553, 23.001591>,  <34.824829, 32.317692, 22.918343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478951, 32.500553, 23.001591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459429, -0.887304, 0.040219,
		0.203052, -0.060840, 0.977276,
		-0.864693, 0.457155, 0.208120,
		34.219543, 32.637699, 23.064028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494511, 31.946201, 23.469366>,  <34.824829, 32.317692, 22.918343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494511, 31.946201, 23.469366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182335, 32.137817, 23.308655>,  <33.995029, 32.252789, 23.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182335, 32.137817, 23.308655>,  <34.494511, 31.946201, 23.469366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182335, 32.137817, 23.308655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537404, -0.842400, 0.039497,
		-0.319538, 0.246742, 0.914885,
		-0.780444, 0.479042, -0.401779,
		33.948200, 32.281528, 23.188122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945568, 31.659657, 23.826342>,  <34.494511, 31.946201, 23.469366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945568, 31.659657, 23.826342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760715, 31.836205, 23.518673>,  <33.649803, 31.942133, 23.334072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760715, 31.836205, 23.518673>,  <33.945568, 31.659657, 23.826342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760715, 31.836205, 23.518673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410783, -0.875225, -0.255419,
		-0.785934, 0.197926, 0.585776,
		-0.462132, 0.441369, -0.769173,
		33.622078, 31.968615, 23.287920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245853, 31.363916, 23.813513>,  <33.945568, 31.659657, 23.826342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245853, 31.363916, 23.813513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301407, 31.535950, 23.456696>,  <33.334740, 31.639170, 23.242605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301407, 31.535950, 23.456696>,  <33.245853, 31.363916, 23.813513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301407, 31.535950, 23.456696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468827, -0.764880, -0.441769,
		-0.872303, 0.479568, 0.095406,
		0.138884, 0.430085, -0.892041,
		33.343071, 31.664976, 23.189083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625690, 31.361145, 23.501566>,  <33.245853, 31.363916, 23.813513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625690, 31.361145, 23.501566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882896, 31.392258, 23.196808>,  <33.037220, 31.410925, 23.013954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882896, 31.392258, 23.196808>,  <32.625690, 31.361145, 23.501566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882896, 31.392258, 23.196808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338748, -0.863336, -0.374033,
		-0.686864, 0.498598, -0.528789,
		0.643015, 0.077783, -0.761894,
		33.075802, 31.415592, 22.968239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235676, 31.317333, 22.873093>,  <32.625690, 31.361145, 23.501566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235676, 31.317333, 22.873093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597706, 31.196411, 22.753460>,  <32.814922, 31.123857, 22.681681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597706, 31.196411, 22.753460>,  <32.235676, 31.317333, 22.873093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597706, 31.196411, 22.753460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384691, -0.881800, -0.272839,
		-0.181250, 0.361994, -0.914389,
		0.905075, -0.302305, -0.299083,
		32.869228, 31.105721, 22.663734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118118, 31.050331, 22.280159>,  <32.235676, 31.317333, 22.873093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118118, 31.050331, 22.280159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482517, 30.902683, 22.353729>,  <32.701157, 30.814095, 22.397871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482517, 30.902683, 22.353729>,  <32.118118, 31.050331, 22.280159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482517, 30.902683, 22.353729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283368, -0.884289, -0.371127,
		0.299635, 0.285978, -0.910184,
		0.911000, -0.369120, 0.183927,
		32.755817, 30.791946, 22.408907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514259, 30.873281, 21.631531>,  <32.118118, 31.050331, 22.280159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514259, 30.873281, 21.631531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650578, 30.647346, 21.932148>,  <32.732368, 30.511786, 22.112518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650578, 30.647346, 21.932148>,  <32.514259, 30.873281, 21.631531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650578, 30.647346, 21.932148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284393, -0.823881, -0.490245,
		0.896092, -0.046663, -0.441408,
		0.340791, -0.564838, 0.751544,
		32.752815, 30.477896, 22.157612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890816, 30.238426, 21.331007>,  <32.514259, 30.873281, 21.631531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890816, 30.238426, 21.331007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797344, 30.174744, 21.714684>,  <32.741261, 30.136534, 21.944889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797344, 30.174744, 21.714684>,  <32.890816, 30.238426, 21.331007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797344, 30.174744, 21.714684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320250, -0.918855, -0.230532,
		0.918060, -0.361051, 0.163733,
		-0.233681, -0.159206, 0.959191,
		32.727242, 30.126982, 22.002441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976509, 29.552546, 21.380762>,  <32.890816, 30.238426, 21.331007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976509, 29.552546, 21.380762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785179, 29.620911, 21.725319>,  <32.670380, 29.661930, 21.932053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785179, 29.620911, 21.725319>,  <32.976509, 29.552546, 21.380762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785179, 29.620911, 21.725319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317455, -0.948199, 0.011856,
		0.818797, -0.267783, 0.507803,
		-0.478323, 0.170912, 0.861392,
		32.641682, 29.672184, 21.983736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182861, 29.066380, 21.801668>,  <32.976509, 29.552546, 21.380762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182861, 29.066380, 21.801668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834316, 29.170692, 21.967911>,  <32.625191, 29.233280, 22.067656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834316, 29.170692, 21.967911>,  <33.182861, 29.066380, 21.801668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834316, 29.170692, 21.967911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275303, -0.961011, 0.025813,
		0.406132, -0.091925, 0.909179,
		-0.871358, 0.260784, 0.415604,
		32.572910, 29.248928, 22.092592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197498, 28.703369, 22.435310>,  <33.182861, 29.066380, 21.801668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197498, 28.703369, 22.435310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816574, 28.797539, 22.357662>,  <32.588020, 28.854040, 22.311073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816574, 28.797539, 22.357662>,  <33.197498, 28.703369, 22.435310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816574, 28.797539, 22.357662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280711, -0.925332, 0.254875,
		-0.119621, 0.297212, 0.947289,
		-0.952309, 0.235426, -0.194119,
		32.530880, 28.868166, 22.299427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854504, 28.509104, 23.000910>,  <33.197498, 28.703369, 22.435310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854504, 28.509104, 23.000910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598560, 28.507587, 22.693516>,  <32.444996, 28.506678, 22.509079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598560, 28.507587, 22.693516>,  <32.854504, 28.509104, 23.000910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598560, 28.507587, 22.693516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296905, -0.921123, 0.251754,
		-0.708826, 0.389253, 0.588258,
		-0.639854, -0.003793, -0.768487,
		32.406605, 28.506449, 22.462969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613525, 27.835962, 23.127914>,  <32.854504, 28.509104, 23.000910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613525, 27.835962, 23.127914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408936, 27.922932, 22.795380>,  <32.286182, 27.975113, 22.595860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408936, 27.922932, 22.795380>,  <32.613525, 27.835962, 23.127914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408936, 27.922932, 22.795380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367217, -0.929974, -0.017291,
		-0.776880, 0.296436, 0.555503,
		-0.511478, 0.217424, -0.831335,
		32.255493, 27.988159, 22.545979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940336, 27.844398, 23.264460>,  <32.613525, 27.835962, 23.127914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940336, 27.844398, 23.264460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943762, 27.741180, 22.878021>,  <31.945818, 27.679251, 22.646158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943762, 27.741180, 22.878021>,  <31.940336, 27.844398, 23.264460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943762, 27.741180, 22.878021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244983, -0.937229, 0.248162,
		-0.969489, 0.234551, -0.071245,
		0.008566, -0.258044, -0.966095,
		31.946331, 27.663767, 22.588192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379274, 27.499655, 23.172987>,  <31.940336, 27.844398, 23.264460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379274, 27.499655, 23.172987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593369, 27.391514, 22.852879>,  <31.721825, 27.326630, 22.660814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593369, 27.391514, 22.852879>,  <31.379274, 27.499655, 23.172987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593369, 27.391514, 22.852879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253859, -0.955085, 0.152867,
		-0.805653, 0.121335, -0.579829,
		0.535237, -0.270353, -0.800269,
		31.753941, 27.310408, 22.612799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042093, 26.891546, 22.801355>,  <31.379274, 27.499655, 23.172987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042093, 26.891546, 22.801355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424675, 26.864414, 22.687798>,  <31.654224, 26.848135, 22.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424675, 26.864414, 22.687798>,  <31.042093, 26.891546, 22.801355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424675, 26.864414, 22.687798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024262, -0.987732, 0.154264,
		-0.290875, -0.140658, -0.946365,
		0.956453, -0.067832, -0.283894,
		31.711611, 26.844065, 22.602629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066900, 26.294790, 22.511372>,  <31.042093, 26.891546, 22.801355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066900, 26.294790, 22.511372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452223, 26.375309, 22.582390>,  <31.683416, 26.423620, 22.625002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452223, 26.375309, 22.582390>,  <31.066900, 26.294790, 22.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452223, 26.375309, 22.582390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164064, -0.965112, 0.204063,
		0.212429, -0.167446, -0.962723,
		0.963305, 0.201297, 0.177546,
		31.741215, 26.435698, 22.635654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441895, 25.771824, 22.249981>,  <31.066900, 26.294790, 22.511372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441895, 25.771824, 22.249981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694326, 25.936897, 22.512714>,  <31.845785, 26.035942, 22.670355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694326, 25.936897, 22.512714>,  <31.441895, 25.771824, 22.249981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694326, 25.936897, 22.512714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152476, -0.896217, 0.416590,
		0.760586, -0.162749, -0.628508,
		0.631079, 0.412685, 0.656834,
		31.883650, 26.060703, 22.709764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130737, 25.389696, 22.222036>,  <31.441895, 25.771824, 22.249981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130737, 25.389696, 22.222036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089321, 25.561539, 22.580860>,  <32.064472, 25.664644, 22.796154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089321, 25.561539, 22.580860>,  <32.130737, 25.389696, 22.222036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089321, 25.561539, 22.580860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380805, -0.816065, 0.434771,
		0.918839, 0.386623, -0.079098,
		-0.103543, 0.429605, 0.897061,
		32.058258, 25.690420, 22.849977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785034, 25.235952, 22.545704>,  <32.130737, 25.389696, 22.222036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785034, 25.235952, 22.545704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556305, 25.368336, 22.845966>,  <32.419067, 25.447765, 23.026123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556305, 25.368336, 22.845966>,  <32.785034, 25.235952, 22.545704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556305, 25.368336, 22.845966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411803, -0.675584, 0.611559,
		0.709531, 0.658827, 0.250026,
		-0.571825, 0.330958, 0.750655,
		32.384758, 25.467623, 23.071163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137108, 25.328983, 23.136450>,  <32.785034, 25.235952, 22.545704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137108, 25.328983, 23.136450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759678, 25.270157, 23.255135>,  <32.533218, 25.234861, 23.326345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759678, 25.270157, 23.255135>,  <33.137108, 25.328983, 23.136450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759678, 25.270157, 23.255135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302120, -0.749190, 0.589438,
		0.135605, 0.645821, 0.751349,
		-0.943575, -0.147067, 0.296710,
		32.476604, 25.226036, 23.344147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144909, 25.212864, 23.787802>,  <33.137108, 25.328983, 23.136450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144909, 25.212864, 23.787802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781586, 25.062443, 23.714531>,  <32.563591, 24.972191, 23.670568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781586, 25.062443, 23.714531>,  <33.144909, 25.212864, 23.787802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781586, 25.062443, 23.714531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205835, -0.783057, 0.586902,
		-0.364143, 0.495386, 0.788665,
		-0.908313, -0.376051, -0.183177,
		32.509090, 24.949627, 23.659578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820545, 25.165579, 24.454777>,  <33.144909, 25.212864, 23.787802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820545, 25.165579, 24.454777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638050, 24.904499, 24.212841>,  <32.528553, 24.747850, 24.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638050, 24.904499, 24.212841>,  <32.820545, 25.165579, 24.454777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638050, 24.904499, 24.212841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124689, -0.719887, 0.682800,
		-0.881079, 0.236102, 0.409824,
		-0.456237, -0.652701, -0.604838,
		32.501179, 24.708689, 24.031389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461266, 24.717379, 24.916182>,  <32.820545, 25.165579, 24.454777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461266, 24.717379, 24.916182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427845, 24.513969, 24.573387>,  <32.407795, 24.391924, 24.367710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427845, 24.513969, 24.573387>,  <32.461266, 24.717379, 24.916182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427845, 24.513969, 24.573387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058565, -0.855999, 0.513650,
		-0.994781, 0.093105, 0.041737,
		-0.083550, -0.508525, -0.856984,
		32.402779, 24.361412, 24.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978008, 24.273954, 25.044096>,  <32.461266, 24.717379, 24.916182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978008, 24.273954, 25.044096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143074, 24.110256, 24.718586>,  <32.242111, 24.012037, 24.523279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143074, 24.110256, 24.718586>,  <31.978008, 24.273954, 25.044096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143074, 24.110256, 24.718586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074084, -0.875351, 0.477779,
		-0.907867, -0.257449, -0.330905,
		0.412661, -0.409245, -0.813775,
		32.266872, 23.987482, 24.474453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621510, 23.705456, 24.827452>,  <31.978008, 24.273954, 25.044096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621510, 23.705456, 24.827452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989183, 23.646523, 24.681358>,  <32.209785, 23.611162, 24.593702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989183, 23.646523, 24.681358>,  <31.621510, 23.705456, 24.827452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989183, 23.646523, 24.681358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001008, -0.926503, 0.376287,
		-0.393829, -0.346245, -0.851477,
		0.919183, -0.147334, -0.365233,
		32.264938, 23.602322, 24.571789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660347, 23.076927, 24.589685>,  <31.621510, 23.705456, 24.827452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660347, 23.076927, 24.589685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055012, 23.136806, 24.615269>,  <32.291809, 23.172735, 24.630619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055012, 23.136806, 24.615269>,  <31.660347, 23.076927, 24.589685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055012, 23.136806, 24.615269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138613, -0.978590, 0.152142,
		0.085364, -0.141248, -0.986287,
		0.986661, 0.149700, 0.063958,
		32.351009, 23.181717, 24.634457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842222, 22.435621, 24.503275>,  <31.660347, 23.076927, 24.589685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842222, 22.435621, 24.503275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181507, 22.617252, 24.612343>,  <32.385078, 22.726231, 24.677784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181507, 22.617252, 24.612343>,  <31.842222, 22.435621, 24.503275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181507, 22.617252, 24.612343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387649, -0.883015, 0.264599,
		0.360921, -0.118735, -0.925007,
		0.848213, 0.454077, 0.272671,
		32.435970, 22.753475, 24.694143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391514, 22.081034, 24.182966>,  <31.842222, 22.435621, 24.503275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391514, 22.081034, 24.182966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558971, 22.269306, 24.493629>,  <32.659447, 22.382269, 24.680027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558971, 22.269306, 24.493629>,  <32.391514, 22.081034, 24.182966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558971, 22.269306, 24.493629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347877, -0.873091, 0.341604,
		0.838878, 0.127169, -0.529256,
		0.418648, 0.470680, 0.776656,
		32.684566, 22.410511, 24.726625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109470, 21.988920, 24.208824>,  <32.391514, 22.081034, 24.182966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109470, 21.988920, 24.208824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012753, 22.076866, 24.586861>,  <32.954723, 22.129633, 24.813683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012753, 22.076866, 24.586861>,  <33.109470, 21.988920, 24.208824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012753, 22.076866, 24.586861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377879, -0.875763, 0.300412,
		0.893724, 0.429768, 0.128672,
		-0.241793, 0.219863, 0.945091,
		32.940216, 22.142824, 24.870388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700668, 21.856030, 24.596355>,  <33.109470, 21.988920, 24.208824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700668, 21.856030, 24.596355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384865, 21.817490, 24.838806>,  <33.195381, 21.794365, 24.984278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384865, 21.817490, 24.838806>,  <33.700668, 21.856030, 24.596355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384865, 21.817490, 24.838806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354568, -0.877720, 0.322316,
		0.500956, 0.469386, 0.727132,
		-0.789509, -0.096352, 0.606128,
		33.148010, 21.788584, 25.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096008, 21.591282, 25.209713>,  <33.700668, 21.856030, 24.596355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096008, 21.591282, 25.209713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704208, 21.519432, 25.246201>,  <33.469128, 21.476322, 25.268093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704208, 21.519432, 25.246201>,  <34.096008, 21.591282, 25.209713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704208, 21.519432, 25.246201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200180, -0.918755, 0.340320,
		0.022679, 0.351603, 0.935874,
		-0.979497, -0.179625, 0.091221,
		33.410358, 21.465544, 25.273567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886650, 21.397272, 25.903040>,  <34.096008, 21.591282, 25.209713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886650, 21.397272, 25.903040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614098, 21.201675, 25.685192>,  <33.450565, 21.084318, 25.554483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614098, 21.201675, 25.685192>,  <33.886650, 21.397272, 25.903040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614098, 21.201675, 25.685192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041367, -0.768622, 0.638364,
		-0.730760, 0.412439, 0.543951,
		-0.681379, -0.488992, -0.544618,
		33.409683, 21.054977, 25.521807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778038, 20.767216, 26.201418>,  <33.886650, 21.397272, 25.903040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778038, 20.767216, 26.201418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519958, 20.709442, 25.901321>,  <33.365112, 20.674778, 25.721264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519958, 20.709442, 25.901321>,  <33.778038, 20.767216, 26.201418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519958, 20.709442, 25.901321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114833, -0.952481, 0.282124,
		-0.755339, 0.268177, 0.597950,
		-0.645195, -0.144434, -0.750242,
		33.326401, 20.666111, 25.676249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169067, 20.526085, 26.498339>,  <33.778038, 20.767216, 26.201418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169067, 20.526085, 26.498339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185467, 20.406269, 26.117058>,  <33.195305, 20.334379, 25.888288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185467, 20.406269, 26.117058>,  <33.169067, 20.526085, 26.498339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185467, 20.406269, 26.117058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051333, -0.953376, 0.297388,
		-0.997840, 0.036739, -0.054462,
		0.040997, -0.299541, -0.953202,
		33.197765, 20.316406, 25.831097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540733, 20.154619, 26.425119>,  <33.169067, 20.526085, 26.498339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540733, 20.154619, 26.425119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806416, 20.062737, 26.140568>,  <32.965824, 20.007607, 25.969837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806416, 20.062737, 26.140568>,  <32.540733, 20.154619, 26.425119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806416, 20.062737, 26.140568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105900, -0.970935, 0.214638,
		-0.740007, -0.067230, -0.669231,
		0.664210, -0.229705, -0.711380,
		33.005680, 19.993826, 25.927155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255417, 19.561749, 25.955357>,  <32.540733, 20.154619, 26.425119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255417, 19.561749, 25.955357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655083, 19.559944, 25.971577>,  <32.894882, 19.558863, 25.981308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655083, 19.559944, 25.971577>,  <32.255417, 19.561749, 25.955357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655083, 19.559944, 25.971577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009086, -0.993506, 0.113418,
		0.039773, -0.113692, -0.992720,
		0.999167, -0.004509, 0.040548,
		32.954834, 19.558592, 25.983742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399364, 18.945036, 25.816309>,  <32.255417, 19.561749, 25.955357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399364, 18.945036, 25.816309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782829, 19.032887, 25.888668>,  <33.012909, 19.085596, 25.932083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782829, 19.032887, 25.888668>,  <32.399364, 18.945036, 25.816309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782829, 19.032887, 25.888668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162404, -0.944393, 0.285915,
		0.233631, -0.244719, -0.941026,
		0.958667, 0.219625, 0.180896,
		33.070431, 19.098774, 25.942936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804722, 18.428682, 25.544594>,  <32.399364, 18.945036, 25.816309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804722, 18.428682, 25.544594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042358, 18.587563, 25.824390>,  <33.184940, 18.682890, 25.992268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042358, 18.587563, 25.824390>,  <32.804722, 18.428682, 25.544594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042358, 18.587563, 25.824390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117099, -0.903026, 0.413319,
		0.795828, -0.163640, -0.582992,
		0.594093, 0.397198, 0.699491,
		33.220585, 18.706722, 26.034237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385849, 17.938791, 25.662487>,  <32.804722, 18.428682, 25.544594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385849, 17.938791, 25.662487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375790, 18.168381, 25.989883>,  <33.369755, 18.306133, 26.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375790, 18.168381, 25.989883>,  <33.385849, 17.938791, 25.662487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375790, 18.168381, 25.989883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126880, -0.810294, 0.572123,
		0.991599, 0.118238, -0.052448,
		-0.025149, 0.573972, 0.818489,
		33.368244, 18.340572, 26.235430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014797, 17.825493, 26.030867>,  <33.385849, 17.938791, 25.662487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014797, 17.825493, 26.030867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774063, 17.975403, 26.312954>,  <33.629623, 18.065350, 26.482206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774063, 17.975403, 26.312954>,  <34.014797, 17.825493, 26.030867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774063, 17.975403, 26.312954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228648, -0.765221, 0.601794,
		0.765187, 0.523430, 0.374847,
		-0.601838, 0.374777, 0.705219,
		33.593513, 18.087835, 26.524519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335541, 18.023287, 26.633991>,  <34.014797, 17.825493, 26.030867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335541, 18.023287, 26.633991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960403, 17.901745, 26.701073>,  <33.735321, 17.828819, 26.741322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960403, 17.901745, 26.701073>,  <34.335541, 18.023287, 26.633991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960403, 17.901745, 26.701073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340350, -0.710636, 0.615759,
		-0.067923, 0.634563, 0.769881,
		-0.937843, -0.303853, 0.167705,
		33.679050, 17.810589, 26.751385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191471, 18.000120, 27.402143>,  <34.335541, 18.023287, 26.633991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191471, 18.000120, 27.402143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938046, 17.763573, 27.202591>,  <33.785992, 17.621645, 27.082859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938046, 17.763573, 27.202591>,  <34.191471, 18.000120, 27.402143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938046, 17.763573, 27.202591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302151, -0.782721, 0.544107,
		-0.712254, 0.193986, 0.674584,
		-0.633560, -0.591369, -0.498883,
		33.747978, 17.586163, 27.052925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861320, 17.473297, 27.903936>,  <34.191471, 18.000120, 27.402143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861320, 17.473297, 27.903936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829578, 17.333054, 27.530674>,  <33.810532, 17.248907, 27.306717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829578, 17.333054, 27.530674>,  <33.861320, 17.473297, 27.903936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829578, 17.333054, 27.530674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039436, -0.936478, 0.348503,
		-0.996066, -0.009144, 0.088143,
		-0.079357, -0.350608, -0.933154,
		33.805771, 17.227871, 27.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384499, 16.870876, 27.853825>,  <33.861320, 17.473297, 27.903936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384499, 16.870876, 27.853825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682018, 16.882980, 27.586735>,  <33.860531, 16.890244, 27.426481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682018, 16.882980, 27.586735>,  <33.384499, 16.870876, 27.853825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682018, 16.882980, 27.586735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228125, -0.950485, 0.211039,
		-0.628274, -0.309293, -0.713869,
		0.743795, 0.030261, -0.667723,
		33.905155, 16.892059, 27.386417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488605, 16.062042, 28.016459>,  <33.384499, 16.870876, 27.853825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488605, 16.062042, 28.016459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831276, 16.254009, 27.940788>,  <34.036877, 16.369190, 27.895386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831276, 16.254009, 27.940788>,  <33.488605, 16.062042, 28.016459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831276, 16.254009, 27.940788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500971, 0.686521, -0.526988,
		-0.123038, 0.546229, 0.828550,
		0.856674, 0.479919, -0.189176,
		34.088280, 16.397985, 27.884035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753380, 16.041004, 27.850334>,  <33.488605, 16.062042, 28.016459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753380, 16.041004, 27.850334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412262, 15.959499, 28.042679>,  <32.207592, 15.910596, 28.158085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412262, 15.959499, 28.042679>,  <32.753380, 16.041004, 27.850334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412262, 15.959499, 28.042679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512819, -0.500923, 0.697204,
		0.098811, 0.841164, 0.531676,
		-0.852791, -0.203762, 0.480862,
		32.156425, 15.898371, 28.186937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442390, 16.604458, 27.807232>,  <32.753380, 16.041004, 27.850334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442390, 16.604458, 27.807232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367130, 16.516644, 28.190147>,  <32.321976, 16.463955, 28.419897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367130, 16.516644, 28.190147>,  <32.442390, 16.604458, 27.807232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367130, 16.516644, 28.190147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510835, 0.854355, 0.095527,
		-0.838836, -0.471044, -0.272893,
		-0.188150, -0.219535, 0.957290,
		32.310684, 16.450783, 28.477335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817507, 16.647150, 28.007961>,  <32.442390, 16.604458, 27.807232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817507, 16.647150, 28.007961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021866, 16.740467, 28.338913>,  <32.144482, 16.796457, 28.537485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021866, 16.740467, 28.338913>,  <31.817507, 16.647150, 28.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021866, 16.740467, 28.338913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477686, 0.877240, 0.047614,
		-0.714703, -0.419553, 0.559620,
		0.510897, 0.233293, 0.827380,
		32.175137, 16.810455, 28.587128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421040, 17.052696, 28.364614>,  <31.817507, 16.647150, 28.007961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421040, 17.052696, 28.364614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777067, 17.154758, 28.515701>,  <31.990685, 17.215996, 28.606354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777067, 17.154758, 28.515701>,  <31.421040, 17.052696, 28.364614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777067, 17.154758, 28.515701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320430, 0.939594, 0.120363,
		-0.324190, -0.228163, 0.918064,
		0.890070, 0.255155, 0.377718,
		32.044086, 17.231304, 28.629017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260509, 17.516529, 28.915567>,  <31.421040, 17.052696, 28.364614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260509, 17.516529, 28.915567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639360, 17.558533, 28.794292>,  <31.866671, 17.583735, 28.721527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639360, 17.558533, 28.794292>,  <31.260509, 17.516529, 28.915567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639360, 17.558533, 28.794292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070977, 0.990089, 0.121190,
		0.312909, -0.093263, 0.945193,
		0.947127, 0.105008, -0.303188,
		31.923498, 17.590034, 28.703337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499109, 17.871458, 29.428810>,  <31.260509, 17.516529, 28.915567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499109, 17.871458, 29.428810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680996, 17.944351, 29.080093>,  <31.790129, 17.988087, 28.870863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680996, 17.944351, 29.080093>,  <31.499109, 17.871458, 29.428810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680996, 17.944351, 29.080093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343423, 0.939024, 0.017164,
		0.821762, 0.291589, 0.489573,
		0.454716, 0.182235, -0.871793,
		31.817411, 17.999022, 28.818556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012241, 18.453428, 29.503042>,  <31.499109, 17.871458, 29.428810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012241, 18.453428, 29.503042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924101, 18.447731, 29.112915>,  <31.871218, 18.444313, 28.878839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924101, 18.447731, 29.112915>,  <32.012241, 18.453428, 29.503042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924101, 18.447731, 29.112915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328119, 0.942706, 0.060366,
		0.918577, 0.333321, -0.212397,
		-0.220349, -0.014241, -0.975317,
		31.857996, 18.443459, 28.820320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192543, 19.044090, 29.203239>,  <32.012241, 18.453428, 29.503042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192543, 19.044090, 29.203239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932970, 18.926891, 28.922375>,  <31.777225, 18.856573, 28.753855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932970, 18.926891, 28.922375>,  <32.192543, 19.044090, 29.203239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932970, 18.926891, 28.922375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288874, 0.948653, -0.128874,
		0.703870, 0.119206, -0.700255,
		-0.648937, -0.292996, -0.702164,
		31.738289, 18.838993, 28.711725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183319, 19.628054, 28.805727>,  <32.192543, 19.044090, 29.203239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183319, 19.628054, 28.805727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858820, 19.422852, 28.693504>,  <31.664122, 19.299730, 28.626171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858820, 19.422852, 28.693504>,  <32.183319, 19.628054, 28.805727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858820, 19.422852, 28.693504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481572, 0.858345, -0.177011,
		0.331621, -0.008491, -0.943374,
		-0.811243, -0.513003, -0.280557,
		31.615446, 19.268951, 28.609337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089832, 19.769655, 28.141998>,  <32.183319, 19.628054, 28.805727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089832, 19.769655, 28.141998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750174, 19.675896, 28.331318>,  <31.546379, 19.619640, 28.444910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750174, 19.675896, 28.331318>,  <32.089832, 19.769655, 28.141998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750174, 19.675896, 28.331318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392184, 0.880049, -0.267781,
		-0.353758, -0.413004, -0.839216,
		-0.849145, -0.234398, 0.473298,
		31.495430, 19.605576, 28.473307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523096, 20.067423, 27.794909>,  <32.089832, 19.769655, 28.141998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523096, 20.067423, 27.794909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344919, 19.997433, 28.146126>,  <31.238012, 19.955439, 28.356857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344919, 19.997433, 28.146126>,  <31.523096, 20.067423, 27.794909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344919, 19.997433, 28.146126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565846, 0.815036, -0.124640,
		-0.693829, -0.552358, -0.462062,
		-0.445443, -0.174977, 0.878045,
		31.211287, 19.944941, 28.409540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910583, 20.501081, 27.793375>,  <31.523096, 20.067423, 27.794909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910583, 20.501081, 27.793375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917582, 20.392170, 28.178200>,  <30.921780, 20.326822, 28.409094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917582, 20.392170, 28.178200>,  <30.910583, 20.501081, 27.793375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917582, 20.392170, 28.178200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345741, 0.901201, 0.261341,
		-0.938167, -0.337196, -0.078372,
		0.017495, -0.272278, 0.962060,
		30.922831, 20.310486, 28.466818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305504, 20.792221, 28.089411>,  <30.910583, 20.501081, 27.793375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305504, 20.792221, 28.089411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556398, 20.744827, 28.397316>,  <30.706936, 20.716391, 28.582060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556398, 20.744827, 28.397316>,  <30.305504, 20.792221, 28.089411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556398, 20.744827, 28.397316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054868, 0.979182, 0.195428,
		-0.776894, -0.164815, 0.607677,
		0.627236, -0.118485, 0.769764,
		30.744570, 20.709282, 28.628244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937523, 21.025402, 28.599054>,  <30.305504, 20.792221, 28.089411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937523, 21.025402, 28.599054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308050, 21.071281, 28.742596>,  <30.530367, 21.098808, 28.828720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308050, 21.071281, 28.742596>,  <29.937523, 21.025402, 28.599054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308050, 21.071281, 28.742596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228645, 0.928201, 0.293539,
		-0.299419, -0.353961, 0.886036,
		0.926321, 0.114696, 0.358853,
		30.585947, 21.105690, 28.850252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892862, 21.306017, 29.280159>,  <29.937523, 21.025402, 28.599054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892862, 21.306017, 29.280159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260763, 21.382656, 29.143135>,  <30.481504, 21.428640, 29.060921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260763, 21.382656, 29.143135>,  <29.892862, 21.306017, 29.280159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260763, 21.382656, 29.143135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094577, 0.955230, 0.280341,
		0.380937, -0.225446, 0.896695,
		0.919752, 0.191599, -0.342560,
		30.536688, 21.440136, 29.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936920, 21.824068, 29.539177>,  <29.892862, 21.306017, 29.280159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936920, 21.824068, 29.539177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264729, 21.856022, 29.312195>,  <30.461412, 21.875195, 29.176006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264729, 21.856022, 29.312195>,  <29.936920, 21.824068, 29.539177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264729, 21.856022, 29.312195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081821, 0.963779, 0.253843,
		0.567180, -0.254459, 0.783299,
		0.819520, 0.079884, -0.567456,
		30.510584, 21.879988, 29.141958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376242, 22.200321, 29.934069>,  <29.936920, 21.824068, 29.539177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376242, 22.200321, 29.934069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497858, 22.247604, 29.555950>,  <30.570827, 22.275974, 29.329079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497858, 22.247604, 29.555950>,  <30.376242, 22.200321, 29.934069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497858, 22.247604, 29.555950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100609, 0.990707, 0.091527,
		0.947332, 0.067278, 0.313108,
		0.304041, 0.118208, -0.945297,
		30.589071, 22.283066, 29.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907682, 22.725885, 29.836306>,  <30.376242, 22.200321, 29.934069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907682, 22.725885, 29.836306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754114, 22.719547, 29.467014>,  <30.661974, 22.715744, 29.245440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754114, 22.719547, 29.467014>,  <30.907682, 22.725885, 29.836306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754114, 22.719547, 29.467014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165114, 0.982559, -0.085526,
		0.908484, -0.185273, -0.374608,
		-0.383920, -0.015846, -0.923230,
		30.638939, 22.714794, 29.190044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238907, 23.234072, 29.417820>,  <30.907682, 22.725885, 29.836306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238907, 23.234072, 29.417820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954105, 23.157516, 29.147583>,  <30.783224, 23.111584, 28.985441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954105, 23.157516, 29.147583>,  <31.238907, 23.234072, 29.417820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954105, 23.157516, 29.147583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079537, 0.977928, -0.193210,
		0.697657, -0.083832, -0.711511,
		-0.712004, -0.191386, -0.675590,
		30.740505, 23.100101, 28.944906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455381, 23.659298, 28.802826>,  <31.238907, 23.234072, 29.417820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455381, 23.659298, 28.802826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063288, 23.593048, 28.759533>,  <30.828032, 23.553299, 28.733557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063288, 23.593048, 28.759533>,  <31.455381, 23.659298, 28.802826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063288, 23.593048, 28.759533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111577, 0.914502, -0.388892,
		0.163386, -0.369128, -0.914904,
		-0.980232, -0.165622, -0.108231,
		30.769218, 23.543362, 28.727064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373999, 23.838976, 28.129038>,  <31.455381, 23.659298, 28.802826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373999, 23.838976, 28.129038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015751, 23.895569, 28.297726>,  <30.800802, 23.929525, 28.398937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015751, 23.895569, 28.297726>,  <31.373999, 23.838976, 28.129038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015751, 23.895569, 28.297726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038104, 0.968985, -0.244162,
		-0.443183, -0.202608, -0.873235,
		-0.895621, 0.141482, 0.421717,
		30.747065, 23.938013, 28.424240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879852, 24.101042, 27.588293>,  <31.373999, 23.838976, 28.129038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879852, 24.101042, 27.588293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772078, 24.205074, 27.959187>,  <30.707413, 24.267494, 28.181723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772078, 24.205074, 27.959187>,  <30.879852, 24.101042, 27.588293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772078, 24.205074, 27.959187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155411, 0.961963, -0.224664,
		-0.950395, 0.083569, -0.299608,
		-0.269437, 0.260082, 0.927233,
		30.691246, 24.283098, 28.237356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386106, 24.591801, 27.461227>,  <30.879852, 24.101042, 27.588293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386106, 24.591801, 27.461227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467512, 24.656853, 27.847416>,  <30.516356, 24.695883, 28.079128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467512, 24.656853, 27.847416>,  <30.386106, 24.591801, 27.461227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467512, 24.656853, 27.847416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046143, 0.986606, -0.156462,
		-0.977984, -0.012707, 0.208294,
		0.203516, 0.162628, 0.965470,
		30.528566, 24.705641, 28.137056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824116, 25.096384, 27.705978>,  <30.386106, 24.591801, 27.461227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824116, 25.096384, 27.705978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111229, 25.111500, 27.984074>,  <30.283497, 25.120569, 28.150930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111229, 25.111500, 27.984074>,  <29.824116, 25.096384, 27.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111229, 25.111500, 27.984074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072645, 0.989012, -0.128758,
		-0.692465, 0.142926, 0.707152,
		0.717784, 0.037789, 0.695239,
		30.326565, 25.122837, 28.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648539, 25.687586, 28.154789>,  <29.824116, 25.096384, 27.705978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648539, 25.687586, 28.154789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042074, 25.628479, 28.195236>,  <30.278196, 25.593016, 28.219505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042074, 25.628479, 28.195236>,  <29.648539, 25.687586, 28.154789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042074, 25.628479, 28.195236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172504, 0.933560, -0.314177,
		-0.047976, 0.326543, 0.943964,
		0.983840, -0.147765, 0.101118,
		30.337227, 25.584150, 28.225573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848087, 26.279379, 28.512354>,  <29.648539, 25.687586, 28.154789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848087, 26.279379, 28.512354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180021, 26.138016, 28.339622>,  <30.379181, 26.053198, 28.235983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180021, 26.138016, 28.339622>,  <29.848087, 26.279379, 28.512354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180021, 26.138016, 28.339622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177656, 0.900934, -0.395926,
		0.528973, 0.251836, 0.810411,
		0.829835, -0.353409, -0.431829,
		30.428972, 26.031994, 28.210073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455641, 26.755440, 28.769308>,  <29.848087, 26.279379, 28.512354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455641, 26.755440, 28.769308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551754, 26.558708, 28.434555>,  <30.609423, 26.440670, 28.233704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551754, 26.558708, 28.434555>,  <30.455641, 26.755440, 28.769308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551754, 26.558708, 28.434555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380010, 0.840990, -0.385134,
		0.893228, -0.225482, 0.388975,
		0.240283, -0.491827, -0.836881,
		30.623838, 26.411160, 28.183491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218943, 26.828924, 28.665606>,  <30.455641, 26.755440, 28.769308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218943, 26.828924, 28.665606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047136, 26.723507, 28.320107>,  <30.944052, 26.660257, 28.112806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047136, 26.723507, 28.320107>,  <31.218943, 26.828924, 28.665606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047136, 26.723507, 28.320107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288890, 0.866108, -0.407921,
		0.855601, -0.424739, -0.295879,
		-0.429523, -0.263541, -0.863746,
		30.918282, 26.644444, 28.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710463, 26.953596, 28.127827>,  <31.218943, 26.828924, 28.665606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710463, 26.953596, 28.127827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368841, 26.925957, 27.921597>,  <31.163868, 26.909374, 27.797859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368841, 26.925957, 27.921597>,  <31.710463, 26.953596, 28.127827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368841, 26.925957, 27.921597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260854, 0.800624, -0.539404,
		0.450053, -0.595169, -0.665752,
		-0.854054, -0.069096, -0.515575,
		31.112625, 26.905228, 27.766924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960083, 26.977705, 27.352039>,  <31.710463, 26.953596, 28.127827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960083, 26.977705, 27.352039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564661, 27.034306, 27.331104>,  <31.327408, 27.068266, 27.318542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564661, 27.034306, 27.331104>,  <31.960083, 26.977705, 27.352039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564661, 27.034306, 27.331104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140165, 0.733017, -0.665612,
		-0.055819, -0.665330, -0.744460,
		-0.988554, 0.141501, -0.052340,
		31.268095, 27.076756, 27.315403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825552, 27.100052, 26.649614>,  <31.960083, 26.977705, 27.352039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825552, 27.100052, 26.649614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505434, 27.255836, 26.831974>,  <31.313362, 27.349308, 26.941391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505434, 27.255836, 26.831974>,  <31.825552, 27.100052, 26.649614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505434, 27.255836, 26.831974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057924, 0.806996, -0.587710,
		-0.596801, -0.443934, -0.668395,
		-0.800296, 0.389462, 0.455901,
		31.265345, 27.372675, 26.968744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405853, 27.416458, 26.132381>,  <31.825552, 27.100052, 26.649614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405853, 27.416458, 26.132381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296835, 27.603348, 26.468815>,  <31.231424, 27.715481, 26.670675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296835, 27.603348, 26.468815>,  <31.405853, 27.416458, 26.132381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296835, 27.603348, 26.468815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019822, 0.876718, -0.480596,
		-0.961939, -0.114312, -0.248206,
		-0.272545, 0.467224, 0.841083,
		31.215071, 27.743515, 26.721140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079063, 28.066813, 25.945919>,  <31.405853, 27.416458, 26.132381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079063, 28.066813, 25.945919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113188, 28.149338, 26.335823>,  <31.133663, 28.198853, 26.569765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113188, 28.149338, 26.335823>,  <31.079063, 28.066813, 25.945919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113188, 28.149338, 26.335823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003934, 0.978389, -0.206738,
		-0.996347, 0.013803, 0.084279,
		0.085311, 0.206314, 0.974760,
		31.138781, 28.211231, 26.628250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593052, 28.564585, 26.094757>,  <31.079063, 28.066813, 25.945919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593052, 28.564585, 26.094757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896671, 28.626820, 26.347626>,  <31.078842, 28.664160, 26.499346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896671, 28.626820, 26.347626>,  <30.593052, 28.564585, 26.094757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896671, 28.626820, 26.347626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016008, 0.966270, -0.257034,
		-0.650837, 0.205221, 0.730955,
		0.759048, 0.155586, 0.632170,
		31.124386, 28.673496, 26.537277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416746, 29.210245, 26.367872>,  <30.593052, 28.564585, 26.094757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416746, 29.210245, 26.367872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809093, 29.142765, 26.406738>,  <31.044502, 29.102278, 26.430058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809093, 29.142765, 26.406738>,  <30.416746, 29.210245, 26.367872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809093, 29.142765, 26.406738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186505, 0.957383, -0.220530,
		-0.055819, 0.234432, 0.970528,
		0.980867, -0.168699, 0.097163,
		31.103354, 29.092155, 26.435886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684244, 29.749964, 26.747938>,  <30.416746, 29.210245, 26.367872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684244, 29.749964, 26.747938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004086, 29.574654, 26.583717>,  <31.195990, 29.469467, 26.485186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004086, 29.574654, 26.583717>,  <30.684244, 29.749964, 26.747938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004086, 29.574654, 26.583717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431908, 0.894695, -0.113913,
		0.417244, -0.086235, 0.904694,
		0.799602, -0.438274, -0.410552,
		31.243967, 29.443171, 26.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207027, 30.211706, 26.906822>,  <30.684244, 29.749964, 26.747938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207027, 30.211706, 26.906822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385715, 29.986130, 26.628998>,  <31.492928, 29.850784, 26.462303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385715, 29.986130, 26.628998>,  <31.207027, 30.211706, 26.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385715, 29.986130, 26.628998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306518, 0.825814, -0.473369,
		0.840529, -0.001431, 0.541764,
		0.446719, -0.563941, -0.694560,
		31.519732, 29.816948, 26.420630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881790, 30.478159, 26.776033>,  <31.207027, 30.211706, 26.906822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881790, 30.478159, 26.776033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824240, 30.263599, 26.443390>,  <31.789709, 30.134863, 26.243803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824240, 30.263599, 26.443390>,  <31.881790, 30.478159, 26.776033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824240, 30.263599, 26.443390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329276, 0.766520, -0.551384,
		0.933208, -0.353161, 0.066339,
		-0.143878, -0.536400, -0.831610,
		31.781076, 30.102680, 26.193907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500156, 30.516899, 26.398998>,  <31.881790, 30.478159, 26.776033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500156, 30.516899, 26.398998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222977, 30.400284, 26.135231>,  <32.056671, 30.330315, 25.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222977, 30.400284, 26.135231>,  <32.500156, 30.516899, 26.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222977, 30.400284, 26.135231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234763, 0.773522, -0.588685,
		0.681700, -0.562733, -0.467565,
		-0.692945, -0.291539, -0.659419,
		32.015095, 30.312822, 25.937405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863350, 30.435303, 25.816628>,  <32.500156, 30.516899, 26.398998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863350, 30.435303, 25.816628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476501, 30.498989, 25.737297>,  <32.244392, 30.537201, 25.689699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476501, 30.498989, 25.737297>,  <32.863350, 30.435303, 25.816628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476501, 30.498989, 25.737297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246422, 0.779547, -0.575832,
		0.062923, -0.605769, -0.793148,
		-0.967118, 0.159216, -0.198326,
		32.186367, 30.546753, 25.677799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903183, 30.730043, 25.253237>,  <32.863350, 30.435303, 25.816628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903183, 30.730043, 25.253237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518291, 30.812737, 25.324097>,  <32.287357, 30.862352, 25.366611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518291, 30.812737, 25.324097>,  <32.903183, 30.730043, 25.253237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518291, 30.812737, 25.324097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079393, 0.835477, -0.543759,
		-0.260416, -0.509156, -0.820332,
		-0.962227, 0.206732, 0.177148,
		32.229622, 30.874756, 25.377241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605129, 30.770929, 24.555874>,  <32.903183, 30.730043, 25.253237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605129, 30.770929, 24.555874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342274, 30.949650, 24.798702>,  <32.184559, 31.056883, 24.944399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342274, 30.949650, 24.798702>,  <32.605129, 30.770929, 24.555874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342274, 30.949650, 24.798702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122606, 0.731295, -0.670951,
		-0.743730, -0.515340, -0.425783,
		-0.657141, 0.446803, 0.607070,
		32.145130, 31.083691, 24.980824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956478, 30.834881, 24.235655>,  <32.605129, 30.770929, 24.555874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956478, 30.834881, 24.235655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999971, 31.119831, 24.512985>,  <32.026070, 31.290800, 24.679382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999971, 31.119831, 24.512985>,  <31.956478, 30.834881, 24.235655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999971, 31.119831, 24.512985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274806, 0.691821, -0.667732,
		-0.955332, -0.117924, 0.270990,
		0.108735, 0.712374, 0.693325,
		32.032593, 31.333544, 24.720984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398298, 31.223328, 24.131247>,  <31.956478, 30.834881, 24.235655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398298, 31.223328, 24.131247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624826, 31.476261, 24.342693>,  <31.760744, 31.628021, 24.469561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624826, 31.476261, 24.342693>,  <31.398298, 31.223328, 24.131247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624826, 31.476261, 24.342693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173794, 0.718580, -0.673378,
		-0.805653, 0.289477, 0.516842,
		0.566320, 0.632334, 0.528617,
		31.794722, 31.665960, 24.501278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070255, 31.996323, 24.166748>,  <31.398298, 31.223328, 24.131247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070255, 31.996323, 24.166748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456261, 32.059669, 24.250340>,  <31.687864, 32.097679, 24.300493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456261, 32.059669, 24.250340>,  <31.070255, 31.996323, 24.166748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456261, 32.059669, 24.250340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052648, 0.897799, -0.437248,
		-0.256865, 0.410947, 0.874725,
		0.965012, 0.158366, 0.208977,
		31.745764, 32.107178, 24.313032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634300, 31.590973, 23.866302>,  <31.070255, 31.996323, 24.166748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634300, 31.590973, 23.866302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281511, 31.508793, 23.696636>,  <30.069838, 31.459484, 23.594835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281511, 31.508793, 23.696636>,  <30.634300, 31.590973, 23.866302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281511, 31.508793, 23.696636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362016, -0.280959, 0.888823,
		-0.301783, 0.937471, 0.173421,
		-0.881970, -0.205450, -0.424168,
		30.016920, 31.447157, 23.569386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108475, 31.855078, 24.343071>,  <30.634300, 31.590973, 23.866302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108475, 31.855078, 24.343071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908056, 31.601959, 24.106930>,  <29.787806, 31.450089, 23.965244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908056, 31.601959, 24.106930>,  <30.108475, 31.855078, 24.343071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908056, 31.601959, 24.106930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473758, -0.370303, 0.799017,
		-0.724227, 0.680031, -0.114254,
		-0.501048, -0.632798, -0.590353,
		29.757742, 31.412119, 23.929823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470669, 31.940126, 24.601366>,  <30.108475, 31.855078, 24.343071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470669, 31.940126, 24.601366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467405, 31.591759, 24.404823>,  <29.465446, 31.382738, 24.286898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467405, 31.591759, 24.404823>,  <29.470669, 31.940126, 24.601366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467405, 31.591759, 24.404823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517048, -0.416914, 0.747559,
		-0.855918, 0.260156, -0.446905,
		-0.008161, -0.870920, -0.491358,
		29.464956, 31.330482, 24.257416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764200, 31.691156, 24.570515>,  <29.470669, 31.940126, 24.601366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764200, 31.691156, 24.570515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007999, 31.375965, 24.535637>,  <29.154280, 31.186850, 24.514711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007999, 31.375965, 24.535637>,  <28.764200, 31.691156, 24.570515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007999, 31.375965, 24.535637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551156, -0.500217, 0.667839,
		-0.569860, -0.358988, -0.739180,
		0.609497, -0.787979, -0.087195,
		29.190849, 31.139572, 24.509480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287025, 31.189564, 24.619719>,  <28.764200, 31.691156, 24.570515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287025, 31.189564, 24.619719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638611, 31.010296, 24.684914>,  <28.849564, 30.902735, 24.724031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638611, 31.010296, 24.684914>,  <28.287025, 31.189564, 24.619719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638611, 31.010296, 24.684914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431694, -0.602538, 0.671258,
		-0.202630, -0.660374, -0.723082,
		0.878966, -0.448167, 0.162987,
		28.902300, 30.875845, 24.733810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141821, 30.517038, 24.593472>,  <28.287025, 31.189564, 24.619719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141821, 30.517038, 24.593472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481928, 30.552460, 24.801010>,  <28.685991, 30.573711, 24.925533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481928, 30.552460, 24.801010>,  <28.141821, 30.517038, 24.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481928, 30.552460, 24.801010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306082, -0.718755, 0.624264,
		0.428204, -0.689602, -0.584030,
		0.850267, 0.088552, 0.518849,
		28.737009, 30.579025, 24.956665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359861, 29.952858, 24.620111>,  <28.141821, 30.517038, 24.593472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359861, 29.952858, 24.620111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559563, 30.104404, 24.931805>,  <28.679384, 30.195332, 25.118820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559563, 30.104404, 24.931805>,  <28.359861, 29.952858, 24.620111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559563, 30.104404, 24.931805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265017, -0.789465, 0.553635,
		0.824932, -0.482915, -0.293737,
		0.499254, 0.378865, 0.779235,
		28.709339, 30.218063, 25.165575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694880, 29.374100, 24.947121>,  <28.359861, 29.952858, 24.620111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694880, 29.374100, 24.947121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688934, 29.665089, 25.221512>,  <28.685368, 29.839682, 25.386147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688934, 29.665089, 25.221512>,  <28.694880, 29.374100, 24.947121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688934, 29.665089, 25.221512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100553, -0.683662, 0.722839,
		0.994821, -0.058234, 0.083311,
		-0.014863, 0.727472, 0.685976,
		28.684475, 29.883329, 25.427305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075314, 29.107368, 25.479954>,  <28.694880, 29.374100, 24.947121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075314, 29.107368, 25.479954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860672, 29.387997, 25.667507>,  <28.731888, 29.556374, 25.780039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860672, 29.387997, 25.667507>,  <29.075314, 29.107368, 25.479954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860672, 29.387997, 25.667507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275550, -0.670884, 0.688467,
		0.797577, 0.240232, 0.553317,
		-0.536604, 0.701572, 0.468885,
		28.699692, 29.598469, 25.808172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362013, 29.094702, 26.160717>,  <29.075314, 29.107368, 25.479954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362013, 29.094702, 26.160717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994684, 29.245522, 26.208920>,  <28.774288, 29.336014, 26.237841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994684, 29.245522, 26.208920>,  <29.362013, 29.094702, 26.160717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994684, 29.245522, 26.208920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233799, -0.762312, 0.603505,
		0.319416, 0.526036, 0.788200,
		-0.918320, 0.377049, 0.120508,
		28.719189, 29.358637, 26.245071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267216, 29.105650, 26.845310>,  <29.362013, 29.094702, 26.160717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267216, 29.105650, 26.845310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898329, 29.133404, 26.693150>,  <28.676996, 29.150057, 26.601854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898329, 29.133404, 26.693150>,  <29.267216, 29.105650, 26.845310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898329, 29.133404, 26.693150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321314, -0.684803, 0.654065,
		-0.215117, 0.725417, 0.653831,
		-0.922216, 0.069384, -0.380400,
		28.621664, 29.154219, 26.579029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686911, 28.920671, 27.300957>,  <29.267216, 29.105650, 26.845310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686911, 28.920671, 27.300957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445393, 28.866062, 26.986813>,  <28.300482, 28.833298, 26.798326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445393, 28.866062, 26.986813>,  <28.686911, 28.920671, 27.300957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445393, 28.866062, 26.986813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492482, -0.710822, 0.502189,
		-0.626812, 0.689995, 0.361957,
		-0.603795, -0.136521, -0.785362,
		28.264254, 28.825106, 26.751204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045258, 28.872004, 27.556395>,  <28.686911, 28.920671, 27.300957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045258, 28.872004, 27.556395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043343, 28.684086, 27.203289>,  <28.042192, 28.571335, 26.991426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043343, 28.684086, 27.203289>,  <28.045258, 28.872004, 27.556395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043343, 28.684086, 27.203289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436090, -0.793426, 0.424618,
		-0.899890, 0.386998, -0.201073,
		-0.004789, -0.469796, -0.882762,
		28.041906, 28.543148, 26.938461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353531, 28.466898, 27.546839>,  <28.045258, 28.872004, 27.556395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353531, 28.466898, 27.546839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568665, 28.298279, 27.254803>,  <27.697744, 28.197107, 27.079580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568665, 28.298279, 27.254803>,  <27.353531, 28.466898, 27.546839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568665, 28.298279, 27.254803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267669, -0.906587, 0.326271,
		-0.799428, 0.019942, -0.600430,
		0.537836, -0.421547, -0.730089,
		27.730015, 28.171814, 27.035776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962835, 27.935850, 27.293745>,  <27.353531, 28.466898, 27.546839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962835, 27.935850, 27.293745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331463, 27.861343, 27.157501>,  <27.552639, 27.816639, 27.075756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331463, 27.861343, 27.157501>,  <26.962835, 27.935850, 27.293745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331463, 27.861343, 27.157501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122981, -0.972263, 0.198948,
		-0.368218, -0.141457, -0.918916,
		0.921570, -0.186265, -0.340608,
		27.607933, 27.805464, 27.055319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925400, 27.264000, 26.831911>,  <26.962835, 27.935850, 27.293745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925400, 27.264000, 26.831911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299818, 27.291653, 26.969917>,  <27.524469, 27.308245, 27.052721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299818, 27.291653, 26.969917>,  <26.925400, 27.264000, 26.831911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299818, 27.291653, 26.969917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006198, -0.977119, 0.212605,
		0.351821, -0.201147, -0.914200,
		0.936047, 0.069133, 0.345017,
		27.580631, 27.312393, 27.073423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187845, 26.633440, 26.626509>,  <26.925400, 27.264000, 26.831911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187845, 26.633440, 26.626509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464725, 26.756298, 26.887741>,  <27.630854, 26.830013, 27.044481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464725, 26.756298, 26.887741>,  <27.187845, 26.633440, 26.626509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464725, 26.756298, 26.887741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373324, -0.926829, 0.040205,
		0.617644, 0.215981, -0.756219,
		0.692202, 0.307147, 0.653082,
		27.672386, 26.848442, 27.083666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747828, 26.212467, 26.412306>,  <27.187845, 26.633440, 26.626509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747828, 26.212467, 26.412306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812798, 26.352016, 26.781502>,  <27.851780, 26.435745, 27.003019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812798, 26.352016, 26.781502>,  <27.747828, 26.212467, 26.412306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812798, 26.352016, 26.781502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305120, -0.907322, 0.289256,
		0.938360, 0.234640, -0.253820,
		0.162426, 0.348872, 0.922988,
		27.861525, 26.456678, 27.058397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459312, 26.073788, 26.703583>,  <27.747828, 26.212467, 26.412306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459312, 26.073788, 26.703583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238800, 26.121788, 27.033840>,  <28.106493, 26.150589, 27.231995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238800, 26.121788, 27.033840>,  <28.459312, 26.073788, 26.703583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238800, 26.121788, 27.033840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274868, -0.908232, 0.315534,
		0.787743, 0.400891, 0.467705,
		-0.551279, 0.120002, 0.825645,
		28.073416, 26.157789, 27.281534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881594, 25.829494, 27.227913>,  <28.459312, 26.073788, 26.703583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881594, 25.829494, 27.227913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503317, 25.826214, 27.357895>,  <28.276350, 25.824245, 27.435884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503317, 25.826214, 27.357895>,  <28.881594, 25.829494, 27.227913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503317, 25.826214, 27.357895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136163, -0.917742, 0.373109,
		0.295165, 0.397094, 0.869019,
		-0.945694, -0.008200, 0.324955,
		28.219608, 25.823753, 27.455381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957912, 25.594603, 27.902386>,  <28.881594, 25.829494, 27.227913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957912, 25.594603, 27.902386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581839, 25.520084, 27.788300>,  <28.356194, 25.475374, 27.719847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581839, 25.520084, 27.788300>,  <28.957912, 25.594603, 27.902386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581839, 25.520084, 27.788300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096097, -0.948260, 0.302604,
		-0.326833, 0.257095, 0.909441,
		-0.940184, -0.186295, -0.285216,
		28.299784, 25.464195, 27.702734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717621, 25.212227, 28.458670>,  <28.957912, 25.594603, 27.902386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717621, 25.212227, 28.458670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484732, 25.140495, 28.141468>,  <28.344997, 25.097456, 27.951147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484732, 25.140495, 28.141468>,  <28.717621, 25.212227, 28.458670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484732, 25.140495, 28.141468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084963, -0.956611, 0.278707,
		-0.808577, 0.229646, 0.541724,
		-0.582223, -0.179330, -0.793005,
		28.310064, 25.086697, 27.903566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306826, 24.678164, 28.702530>,  <28.717621, 25.212227, 28.458670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306826, 24.678164, 28.702530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243582, 24.661926, 28.307896>,  <28.205635, 24.652184, 28.071115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243582, 24.661926, 28.307896>,  <28.306826, 24.678164, 28.702530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243582, 24.661926, 28.307896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310622, -0.946384, 0.088721,
		-0.937292, 0.320483, 0.137024,
		-0.158110, -0.040595, -0.986587,
		28.196148, 24.649748, 28.011919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587084, 24.385574, 28.586926>,  <28.306826, 24.678164, 28.702530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587084, 24.385574, 28.586926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822283, 24.326302, 28.268856>,  <27.963402, 24.290737, 28.078014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822283, 24.326302, 28.268856>,  <27.587084, 24.385574, 28.586926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822283, 24.326302, 28.268856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261411, -0.965134, -0.013448,
		-0.765455, 0.215774, -0.606235,
		0.588000, -0.148182, -0.795172,
		27.998682, 24.281847, 28.030304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272039, 23.941736, 28.181976>,  <27.587084, 24.385574, 28.586926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272039, 23.941736, 28.181976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645031, 23.916779, 28.039658>,  <27.868826, 23.901804, 27.954268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645031, 23.916779, 28.039658>,  <27.272039, 23.941736, 28.181976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645031, 23.916779, 28.039658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167590, -0.947274, -0.273102,
		-0.319995, 0.314290, -0.893770,
		0.932479, -0.062395, -0.355795,
		27.924774, 23.898060, 27.932919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148991, 23.451725, 27.747316>,  <27.272039, 23.941736, 28.181976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148991, 23.451725, 27.747316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548462, 23.453842, 27.767761>,  <27.788145, 23.455112, 27.780027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548462, 23.453842, 27.767761>,  <27.148991, 23.451725, 27.747316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548462, 23.453842, 27.767761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020578, -0.952631, -0.303430,
		0.047084, 0.304081, -0.951482,
		0.998679, 0.005293, 0.051111,
		27.848066, 23.455431, 27.783094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446835, 23.257101, 27.097843>,  <27.148991, 23.451725, 27.747316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446835, 23.257101, 27.097843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713190, 23.162552, 27.380890>,  <27.873003, 23.105822, 27.550718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713190, 23.162552, 27.380890>,  <27.446835, 23.257101, 27.097843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713190, 23.162552, 27.380890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023478, -0.941373, -0.336551,
		0.745683, 0.240718, -0.621298,
		0.665887, -0.236373, 0.707617,
		27.912956, 23.091640, 27.593176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038752, 22.846296, 26.744650>,  <27.446835, 23.257101, 27.097843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038752, 22.846296, 26.744650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110100, 22.768253, 27.130421>,  <28.152908, 22.721428, 27.361883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110100, 22.768253, 27.130421>,  <28.038752, 22.846296, 26.744650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110100, 22.768253, 27.130421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304752, -0.920995, -0.242682,
		0.935580, 0.337198, -0.104818,
		0.178369, -0.195105, 0.964427,
		28.163610, 22.709723, 27.419748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745731, 22.585878, 26.813168>,  <28.038752, 22.846296, 26.744650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745731, 22.585878, 26.813168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543409, 22.470119, 27.138229>,  <28.422016, 22.400663, 27.333267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543409, 22.470119, 27.138229>,  <28.745731, 22.585878, 26.813168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543409, 22.470119, 27.138229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397805, -0.914153, -0.077944,
		0.765449, 0.283854, 0.577508,
		-0.505806, -0.289397, 0.812656,
		28.391668, 22.383301, 27.382027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191044, 22.204468, 27.148766>,  <28.745731, 22.585878, 26.813168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191044, 22.204468, 27.148766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848154, 22.085415, 27.316853>,  <28.642420, 22.013983, 27.417706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848154, 22.085415, 27.316853>,  <29.191044, 22.204468, 27.148766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848154, 22.085415, 27.316853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329277, -0.944229, 0.002930,
		0.395910, 0.140880, 0.907418,
		-0.857224, -0.297632, 0.420218,
		28.590986, 21.996126, 27.442919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433050, 21.656172, 27.565165>,  <29.191044, 22.204468, 27.148766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433050, 21.656172, 27.565165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038544, 21.600052, 27.530296>,  <28.801840, 21.566380, 27.509375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038544, 21.600052, 27.530296>,  <29.433050, 21.656172, 27.565165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038544, 21.600052, 27.530296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143971, -0.988877, -0.037345,
		-0.080963, -0.049382, 0.995493,
		-0.986264, -0.140298, -0.087172,
		28.742664, 21.557962, 27.504145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159950, 21.167431, 28.178736>,  <29.433050, 21.656172, 27.565165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159950, 21.167431, 28.178736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937624, 21.151958, 27.846573>,  <28.804228, 21.142675, 27.647276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937624, 21.151958, 27.846573>,  <29.159950, 21.167431, 28.178736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937624, 21.151958, 27.846573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093159, -0.995523, -0.015982,
		-0.826071, -0.086243, 0.556929,
		-0.555814, -0.038681, -0.830406,
		28.770880, 21.140354, 27.597450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732725, 20.573954, 28.362423>,  <29.159950, 21.167431, 28.178736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732725, 20.573954, 28.362423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705935, 20.622692, 27.966309>,  <28.689859, 20.651936, 27.728640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705935, 20.622692, 27.966309>,  <28.732725, 20.573954, 28.362423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705935, 20.622692, 27.966309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018933, -0.992492, -0.120837,
		-0.997575, 0.010656, 0.068781,
		-0.066977, 0.121846, -0.990287,
		28.685841, 20.659246, 27.669222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230780, 20.125938, 28.114408>,  <28.732725, 20.573954, 28.362423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230780, 20.125938, 28.114408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446898, 20.231045, 27.794651>,  <28.576569, 20.294109, 27.602797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446898, 20.231045, 27.794651>,  <28.230780, 20.125938, 28.114408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446898, 20.231045, 27.794651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061414, -0.935147, -0.348897,
		-0.839231, 0.237602, -0.489119,
		0.540296, 0.262766, -0.799396,
		28.608986, 20.309875, 27.554832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900883, 19.979673, 27.550381>,  <28.230780, 20.125938, 28.114408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900883, 19.979673, 27.550381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261271, 20.007664, 27.379101>,  <28.477503, 20.024458, 27.276333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261271, 20.007664, 27.379101>,  <27.900883, 19.979673, 27.550381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261271, 20.007664, 27.379101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178877, -0.839227, -0.513518,
		-0.395289, 0.539260, -0.743603,
		0.900972, 0.069975, -0.428198,
		28.531563, 20.028656, 27.250641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807850, 19.829309, 26.803682>,  <27.900883, 19.979673, 27.550381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807850, 19.829309, 26.803682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178886, 19.759434, 26.935780>,  <28.401508, 19.717508, 27.015038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178886, 19.759434, 26.935780>,  <27.807850, 19.829309, 26.803682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178886, 19.759434, 26.935780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026397, -0.851092, -0.524352,
		0.372664, 0.495101, -0.784854,
		0.927591, -0.174690, 0.330241,
		28.457163, 19.707027, 27.034851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104553, 19.283915, 26.285053>,  <27.807850, 19.829309, 26.803682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104553, 19.283915, 26.285053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360756, 19.249699, 26.590324>,  <28.514477, 19.229170, 26.773487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360756, 19.249699, 26.590324>,  <28.104553, 19.283915, 26.285053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360756, 19.249699, 26.590324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100986, -0.975766, -0.194121,
		0.761286, 0.201405, -0.616344,
		0.640504, -0.085540, 0.763176,
		28.552908, 19.224037, 26.819277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732132, 18.919962, 26.071888>,  <28.104553, 19.283915, 26.285053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732132, 18.919962, 26.071888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748896, 18.906178, 26.471298>,  <28.758953, 18.897907, 26.710945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748896, 18.906178, 26.471298>,  <28.732132, 18.919962, 26.071888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748896, 18.906178, 26.471298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333348, -0.941657, -0.046488,
		0.941872, 0.334805, -0.027977,
		0.041909, -0.034460, 0.998527,
		28.761469, 18.895840, 26.770857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195906, 18.420601, 25.725367>,  <28.732132, 18.919962, 26.071888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195906, 18.420601, 25.725367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029003, 18.266491, 25.396133>,  <28.928862, 18.174025, 25.198593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029003, 18.266491, 25.396133>,  <29.195906, 18.420601, 25.725367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029003, 18.266491, 25.396133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079195, 0.917659, -0.389398,
		0.905333, -0.097294, -0.413408,
		-0.417253, -0.385274, -0.823082,
		28.903828, 18.150909, 25.149210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603689, 18.745388, 25.211208>,  <29.195906, 18.420601, 25.725367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603689, 18.745388, 25.211208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253994, 18.628418, 25.056187>,  <29.044176, 18.558237, 24.963175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253994, 18.628418, 25.056187>,  <29.603689, 18.745388, 25.211208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253994, 18.628418, 25.056187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090071, 0.882090, -0.462390,
		0.477070, -0.369331, -0.797495,
		-0.874238, -0.292424, -0.387552,
		28.991722, 18.540691, 24.939920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715824, 18.924818, 24.559940>,  <29.603689, 18.745388, 25.211208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715824, 18.924818, 24.559940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317986, 18.889645, 24.582031>,  <29.079283, 18.868540, 24.595285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317986, 18.889645, 24.582031>,  <29.715824, 18.924818, 24.559940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317986, 18.889645, 24.582031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102062, 0.729838, -0.675958,
		0.019131, -0.677941, -0.734868,
		-0.994594, -0.087934, 0.055229,
		29.019608, 18.863264, 24.598600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530334, 18.953083, 23.891869>,  <29.715824, 18.924818, 24.559940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530334, 18.953083, 23.891869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221262, 19.067596, 24.118500>,  <29.035818, 19.136305, 24.254478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221262, 19.067596, 24.118500>,  <29.530334, 18.953083, 23.891869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221262, 19.067596, 24.118500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206926, 0.730191, -0.651154,
		-0.600124, -0.620373, -0.504964,
		-0.772679, 0.286283, 0.566577,
		28.989458, 19.153481, 24.288473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056463, 19.291172, 23.428141>,  <29.530334, 18.953083, 23.891869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056463, 19.291172, 23.428141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913521, 19.394646, 23.787113>,  <28.827755, 19.456730, 24.002497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913521, 19.394646, 23.787113>,  <29.056463, 19.291172, 23.428141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913521, 19.394646, 23.787113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318665, 0.869448, -0.377509,
		-0.877923, -0.420884, -0.228269,
		-0.357356, 0.258682, 0.897430,
		28.806314, 19.472250, 24.056343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384392, 19.592796, 23.308218>,  <29.056463, 19.291172, 23.428141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384392, 19.592796, 23.308218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538437, 19.738396, 23.647438>,  <28.630865, 19.825756, 23.850971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538437, 19.738396, 23.647438>,  <28.384392, 19.592796, 23.308218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538437, 19.738396, 23.647438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147137, 0.931393, -0.332953,
		-0.911064, 0.003445, 0.412250,
		0.385114, 0.363999, 0.848052,
		28.653971, 19.847595, 23.901854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987829, 20.139841, 23.440472>,  <28.384392, 19.592796, 23.308218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987829, 20.139841, 23.440472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303099, 20.215878, 23.674618>,  <28.492260, 20.261499, 23.815105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303099, 20.215878, 23.674618>,  <27.987829, 20.139841, 23.440472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303099, 20.215878, 23.674618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040251, 0.964991, -0.259175,
		-0.614138, 0.180713, 0.768230,
		0.788172, 0.190091, 0.585364,
		28.539551, 20.272905, 23.850227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737030, 20.636507, 23.938053>,  <27.987829, 20.139841, 23.440472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737030, 20.636507, 23.938053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131472, 20.679298, 23.988892>,  <28.368137, 20.704973, 24.019396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131472, 20.679298, 23.988892>,  <27.737030, 20.636507, 23.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131472, 20.679298, 23.988892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100789, 0.993431, -0.054188,
		-0.132061, 0.040625, 0.990409,
		0.986104, 0.106978, 0.127099,
		28.427303, 20.711391, 24.027021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772800, 20.992357, 24.507542>,  <27.737030, 20.636507, 23.938053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772800, 20.992357, 24.507542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123674, 21.061958, 24.328537>,  <28.334200, 21.103720, 24.221134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123674, 21.061958, 24.328537>,  <27.772800, 20.992357, 24.507542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123674, 21.061958, 24.328537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077788, 0.971213, 0.225153,
		0.473807, -0.162690, 0.865471,
		0.877187, 0.174002, -0.447512,
		28.386829, 21.114159, 24.194283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246973, 21.369654, 25.023458>,  <27.772800, 20.992357, 24.507542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246973, 21.369654, 25.023458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370443, 21.442230, 24.649979>,  <28.444525, 21.485777, 24.425890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370443, 21.442230, 24.649979>,  <28.246973, 21.369654, 25.023458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370443, 21.442230, 24.649979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061854, 0.983389, 0.170648,
		0.949154, 0.005078, 0.314772,
		0.308677, 0.181442, -0.933701,
		28.463047, 21.496662, 24.369869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922310, 21.808964, 25.137508>,  <28.246973, 21.369654, 25.023458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922310, 21.808964, 25.137508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745110, 21.861649, 24.782791>,  <28.638788, 21.893259, 24.569962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745110, 21.861649, 24.782791>,  <28.922310, 21.808964, 25.137508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745110, 21.861649, 24.782791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043296, 0.991138, 0.125584,
		0.895474, 0.017240, -0.444780,
		-0.443003, 0.131714, -0.886792,
		28.612209, 21.901163, 24.516754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421532, 22.192776, 24.602531>,  <28.922310, 21.808964, 25.137508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421532, 22.192776, 24.602531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035295, 22.261929, 24.524815>,  <28.803555, 22.303419, 24.478186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035295, 22.261929, 24.524815>,  <29.421532, 22.192776, 24.602531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035295, 22.261929, 24.524815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204529, 0.966235, -0.156712,
		0.160638, -0.191058, -0.968345,
		-0.965590, 0.172881, -0.194291,
		28.745619, 22.313793, 24.466528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430058, 22.795599, 24.119967>,  <29.421532, 22.192776, 24.602531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430058, 22.795599, 24.119967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044552, 22.764915, 24.222160>,  <28.813248, 22.746506, 24.283478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044552, 22.764915, 24.222160>,  <29.430058, 22.795599, 24.119967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044552, 22.764915, 24.222160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076192, 0.997022, 0.011937,
		-0.255641, -0.007961, -0.966739,
		-0.963765, -0.076709, 0.255486,
		28.755423, 22.741903, 24.298805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154884, 23.362844, 23.943668>,  <29.430058, 22.795599, 24.119967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154884, 23.362844, 23.943668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840763, 23.249325, 24.163761>,  <28.652290, 23.181213, 24.295816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840763, 23.249325, 24.163761>,  <29.154884, 23.362844, 23.943668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840763, 23.249325, 24.163761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251373, 0.958354, 0.135532,
		-0.565781, -0.031880, -0.823939,
		-0.785305, -0.283797, 0.550232,
		28.605171, 23.164186, 24.328831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520130, 23.768057, 23.740915>,  <29.154884, 23.362844, 23.943668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520130, 23.768057, 23.740915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433338, 23.646809, 24.112083>,  <28.381262, 23.574060, 24.334784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433338, 23.646809, 24.112083>,  <28.520130, 23.768057, 23.740915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433338, 23.646809, 24.112083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426416, 0.884512, 0.189229,
		-0.878116, -0.354621, -0.321179,
		-0.216982, -0.303121, 0.927920,
		28.368244, 23.555872, 24.390459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821346, 23.894335, 23.831249>,  <28.520130, 23.768057, 23.740915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821346, 23.894335, 23.831249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957863, 23.866791, 24.206223>,  <28.039772, 23.850264, 24.431206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957863, 23.866791, 24.206223>,  <27.821346, 23.894335, 23.831249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957863, 23.866791, 24.206223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383337, 0.900410, 0.205703,
		-0.858238, -0.429557, 0.280905,
		0.341291, -0.068861, 0.937432,
		28.060249, 23.846132, 24.487452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247900, 23.931684, 24.297169>,  <27.821346, 23.894335, 23.831249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247900, 23.931684, 24.297169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580938, 24.052513, 24.482872>,  <27.780762, 24.125011, 24.594294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580938, 24.052513, 24.482872>,  <27.247900, 23.931684, 24.297169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580938, 24.052513, 24.482872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399431, 0.908139, 0.125449,
		-0.383714, -0.289887, 0.876772,
		0.832597, 0.302073, 0.464256,
		27.830717, 24.143135, 24.622149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957180, 24.383484, 24.758413>,  <27.247900, 23.931684, 24.297169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957180, 24.383484, 24.758413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342196, 24.480797, 24.806305>,  <27.573204, 24.539185, 24.835039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342196, 24.480797, 24.806305>,  <26.957180, 24.383484, 24.758413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342196, 24.480797, 24.806305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262286, 0.947355, 0.183641,
		-0.068750, -0.208165, 0.975675,
		0.962538, 0.243280, 0.119729,
		27.630957, 24.553782, 24.842224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957308, 24.623278, 25.340765>,  <26.957180, 24.383484, 24.758413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957308, 24.623278, 25.340765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257751, 24.771065, 25.121922>,  <27.438019, 24.859737, 24.990616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257751, 24.771065, 25.121922>,  <26.957308, 24.623278, 25.340765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257751, 24.771065, 25.121922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272718, 0.928363, 0.252521,
		0.601214, -0.040465, 0.798063,
		0.751110, 0.369466, -0.547109,
		27.483084, 24.881905, 24.957788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166206, 25.226194, 25.782793>,  <26.957308, 24.623278, 25.340765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166206, 25.226194, 25.782793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305584, 25.298801, 25.414959>,  <27.389212, 25.342365, 25.194258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305584, 25.298801, 25.414959>,  <27.166206, 25.226194, 25.782793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305584, 25.298801, 25.414959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152440, 0.978983, 0.135479,
		0.924850, 0.092974, 0.368793,
		0.348446, 0.181516, -0.919585,
		27.410118, 25.353256, 25.139084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578959, 25.859081, 25.811077>,  <27.166206, 25.226194, 25.782793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578959, 25.859081, 25.811077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523912, 25.838596, 25.415413>,  <27.490885, 25.826305, 25.178015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523912, 25.838596, 25.415413>,  <27.578959, 25.859081, 25.811077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523912, 25.838596, 25.415413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131377, 0.988895, -0.069474,
		0.981734, -0.139514, -0.129359,
		-0.137616, -0.051210, -0.989161,
		27.482628, 25.823233, 25.118664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083235, 26.288479, 25.586737>,  <27.578959, 25.859081, 25.811077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083235, 26.288479, 25.586737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836441, 26.263657, 25.272926>,  <27.688364, 26.248764, 25.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836441, 26.263657, 25.272926>,  <28.083235, 26.288479, 25.586737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836441, 26.263657, 25.272926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042383, 0.992819, -0.111864,
		0.785832, -0.102269, -0.609925,
		-0.616986, -0.062056, -0.784524,
		27.651346, 26.245039, 25.037569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334249, 26.726742, 25.131008>,  <28.083235, 26.288479, 25.586737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334249, 26.726742, 25.131008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967667, 26.671032, 24.980965>,  <27.747717, 26.637606, 24.890938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967667, 26.671032, 24.980965>,  <28.334249, 26.726742, 25.131008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967667, 26.671032, 24.980965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018909, 0.951495, -0.307083,
		0.399683, -0.274335, -0.874639,
		-0.916458, -0.139275, -0.375109,
		27.692730, 26.629250, 24.868431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291269, 26.930246, 24.480116>,  <28.334249, 26.726742, 25.131008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291269, 26.930246, 24.480116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911461, 26.972683, 24.598202>,  <27.683575, 26.998146, 24.669054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911461, 26.972683, 24.598202>,  <28.291269, 26.930246, 24.480116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911461, 26.972683, 24.598202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011299, 0.928898, -0.370164,
		-0.313497, -0.354815, -0.880810,
		-0.949522, 0.106093, 0.295215,
		27.626604, 27.004511, 24.686766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039040, 27.276039, 23.924927>,  <28.291269, 26.930246, 24.480116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039040, 27.276039, 23.924927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778009, 27.338890, 24.221428>,  <27.621391, 27.376600, 24.399328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778009, 27.338890, 24.221428>,  <28.039040, 27.276039, 23.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778009, 27.338890, 24.221428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179715, 0.918254, -0.352863,
		-0.736101, -0.363484, -0.570994,
		-0.652578, 0.157127, 0.741252,
		27.582235, 27.386028, 24.443804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431015, 27.483044, 23.584835>,  <28.039040, 27.276039, 23.924927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431015, 27.483044, 23.584835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365557, 27.606514, 23.959629>,  <27.326283, 27.680595, 24.184505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365557, 27.606514, 23.959629>,  <27.431015, 27.483044, 23.584835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365557, 27.606514, 23.959629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397997, 0.848406, -0.349006,
		-0.902673, -0.430030, -0.015986,
		-0.163646, 0.308676, 0.936984,
		27.316463, 27.699116, 24.240725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790800, 27.774239, 23.643227>,  <27.431015, 27.483044, 23.584835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790800, 27.774239, 23.643227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041399, 27.927071, 23.914967>,  <27.191759, 28.018770, 24.078011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041399, 27.927071, 23.914967>,  <26.790800, 27.774239, 23.643227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041399, 27.927071, 23.914967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362592, 0.914418, -0.179904,
		-0.689947, -0.133617, 0.711421,
		0.626498, 0.382080, 0.679349,
		27.229349, 28.041695, 24.118771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369987, 28.246401, 23.986166>,  <26.790800, 27.774239, 23.643227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369987, 28.246401, 23.986166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731363, 28.379440, 24.094368>,  <26.948189, 28.459265, 24.159288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731363, 28.379440, 24.094368>,  <26.369987, 28.246401, 23.986166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731363, 28.379440, 24.094368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308944, 0.942550, -0.127091,
		-0.297236, 0.031248, 0.954293,
		0.903440, 0.332599, 0.270506,
		27.002396, 28.479219, 24.175520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297693, 28.695051, 24.468609>,  <26.369987, 28.246401, 23.986166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297693, 28.695051, 24.468609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673140, 28.815353, 24.401024>,  <26.898407, 28.887535, 24.360474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673140, 28.815353, 24.401024>,  <26.297693, 28.695051, 24.468609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673140, 28.815353, 24.401024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311563, 0.949343, -0.040934,
		0.148093, 0.091064, 0.984772,
		0.938615, 0.300756, -0.168963,
		26.954723, 28.905581, 24.350334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415741, 29.311886, 24.847687>,  <26.297693, 28.695051, 24.468609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415741, 29.311886, 24.847687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675907, 29.314426, 24.543865>,  <26.832006, 29.315950, 24.361572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675907, 29.314426, 24.543865>,  <26.415741, 29.311886, 24.847687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675907, 29.314426, 24.543865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304008, 0.918558, -0.252647,
		0.696089, 0.395235, 0.599374,
		0.650414, 0.006349, -0.759553,
		26.871031, 29.316332, 24.316000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708185, 29.979212, 24.848770>,  <26.415741, 29.311886, 24.847687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708185, 29.979212, 24.848770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735147, 29.826191, 24.480183>,  <26.751326, 29.734379, 24.259029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735147, 29.826191, 24.480183>,  <26.708185, 29.979212, 24.848770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735147, 29.826191, 24.480183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238346, 0.890657, -0.387197,
		0.968838, 0.245728, -0.031144,
		0.067406, -0.382555, -0.921471,
		26.755369, 29.711424, 24.203741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987799, 30.542292, 24.500692>,  <26.708185, 29.979212, 24.848770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987799, 30.542292, 24.500692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907892, 30.299564, 24.192963>,  <26.859947, 30.153927, 24.008324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907892, 30.299564, 24.192963>,  <26.987799, 30.542292, 24.500692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907892, 30.299564, 24.192963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202943, 0.793751, -0.573387,
		0.958596, 0.041585, -0.281716,
		-0.199768, -0.606819, -0.769327,
		26.847961, 30.117519, 23.962164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289112, 30.830006, 23.981428>,  <26.987799, 30.542292, 24.500692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289112, 30.830006, 23.981428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031921, 30.582848, 23.800415>,  <26.877607, 30.434553, 23.691807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031921, 30.582848, 23.800415>,  <27.289112, 30.830006, 23.981428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031921, 30.582848, 23.800415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120592, 0.665169, -0.736891,
		0.756332, -0.419232, -0.502201,
		-0.642977, -0.617895, -0.452533,
		26.839027, 30.397480, 23.664656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482306, 30.918858, 23.259010>,  <27.289112, 30.830006, 23.981428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482306, 30.918858, 23.259010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112133, 30.774738, 23.305931>,  <26.890030, 30.688267, 23.334084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112133, 30.774738, 23.305931>,  <27.482306, 30.918858, 23.259010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112133, 30.774738, 23.305931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331990, 0.621786, -0.709341,
		0.182638, -0.695390, -0.695037,
		-0.925433, -0.360298, 0.117301,
		26.834503, 30.666649, 23.341122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278334, 30.681753, 22.536722>,  <27.482306, 30.918858, 23.259010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278334, 30.681753, 22.536722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945705, 30.743065, 22.750263>,  <26.746128, 30.779852, 22.878387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945705, 30.743065, 22.750263>,  <27.278334, 30.681753, 22.536722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945705, 30.743065, 22.750263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375991, 0.552098, -0.744190,
		-0.408806, -0.819569, -0.401477,
		-0.831570, 0.153277, 0.533852,
		26.696234, 30.789047, 22.910419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739437, 30.641733, 22.055899>,  <27.278334, 30.681753, 22.536722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739437, 30.641733, 22.055899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552681, 30.814537, 22.364544>,  <26.440628, 30.918219, 22.549730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552681, 30.814537, 22.364544>,  <26.739437, 30.641733, 22.055899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552681, 30.814537, 22.364544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512624, 0.578774, -0.634222,
		-0.720578, -0.691657, -0.048765,
		-0.466888, 0.432008, 0.771611,
		26.412615, 30.944139, 22.596027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005989, 30.411709, 21.977509>,  <26.739437, 30.641733, 22.055899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005989, 30.411709, 21.977509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055277, 30.747715, 22.188862>,  <26.084850, 30.949320, 22.315674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055277, 30.747715, 22.188862>,  <26.005989, 30.411709, 21.977509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055277, 30.747715, 22.188862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574415, 0.494551, -0.652278,
		-0.809237, -0.223137, 0.543457,
		0.123219, 0.840018, 0.528382,
		26.092243, 30.999720, 22.347376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351313, 30.719969, 21.976330>,  <26.005989, 30.411709, 21.977509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351313, 30.719969, 21.976330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588406, 31.019989, 22.093697>,  <25.730661, 31.200001, 22.164116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588406, 31.019989, 22.093697>,  <25.351313, 30.719969, 21.976330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588406, 31.019989, 22.093697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619618, 0.657409, -0.428820,
		-0.514531, 0.072370, 0.854413,
		0.592732, 0.750051, 0.293416,
		25.766226, 31.245005, 22.181721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958738, 31.153109, 22.419031>,  <25.351313, 30.719969, 21.976330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958738, 31.153109, 22.419031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252245, 31.368397, 22.253185>,  <25.428349, 31.497570, 22.153677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252245, 31.368397, 22.253185>,  <24.958738, 31.153109, 22.419031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252245, 31.368397, 22.253185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670194, 0.473270, -0.571713,
		-0.111481, 0.697377, 0.707981,
		0.733766, 0.538220, -0.414617,
		25.472374, 31.529863, 22.128799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640543, 31.836466, 22.327362>,  <24.958738, 31.153109, 22.419031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640543, 31.836466, 22.327362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951979, 31.812370, 22.077507>,  <25.138840, 31.797913, 21.927593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951979, 31.812370, 22.077507>,  <24.640543, 31.836466, 22.327362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951979, 31.812370, 22.077507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504701, 0.531424, -0.680343,
		0.372931, 0.844962, 0.383357,
		0.778588, -0.060240, -0.624637,
		25.185555, 31.794298, 21.890116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833307, 32.554901, 22.216471>,  <24.640543, 31.836466, 22.327362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833307, 32.554901, 22.216471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925116, 32.294201, 21.927322>,  <24.980202, 32.137779, 21.753834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925116, 32.294201, 21.927322>,  <24.833307, 32.554901, 22.216471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925116, 32.294201, 21.927322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328824, 0.647102, -0.687847,
		0.916075, 0.395573, -0.065787,
		0.229522, -0.651752, -0.722869,
		24.993973, 32.098675, 21.710463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.500303, 33.185089, 21.878899>,  <24.833307, 32.554901, 22.216471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.500303, 33.185089, 21.878899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191166, 33.300968, 22.104744>,  <24.005684, 33.370495, 22.240252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191166, 33.300968, 22.104744>,  <24.500303, 33.185089, 21.878899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.191166, 33.300968, 22.104744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163161, 0.769096, -0.617956,
		-0.613265, -0.569705, -0.547122,
		-0.772842, 0.289702, 0.564613,
		23.959312, 33.387878, 22.274128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935755, 33.172031, 21.508947>,  <24.500303, 33.185089, 21.878899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935755, 33.172031, 21.508947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.892742, 33.438019, 21.804585>,  <23.866934, 33.597610, 21.981966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.892742, 33.438019, 21.804585>,  <23.935755, 33.172031, 21.508947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.892742, 33.438019, 21.804585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405528, 0.649412, -0.643282,
		-0.907736, -0.368896, 0.199828,
		-0.107533, 0.664966, 0.739092,
		23.860481, 33.637508, 22.026312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.144243, 33.449841, 21.734039>,  <23.935755, 33.172031, 21.508947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.144243, 33.449841, 21.734039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.436508, 33.712185, 21.809914>,  <23.611868, 33.869591, 21.855438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.436508, 33.712185, 21.809914>,  <23.144243, 33.449841, 21.734039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.436508, 33.712185, 21.809914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487878, 0.695921, -0.526942,
		-0.477605, 0.292475, 0.828463,
		0.730663, 0.655860, 0.189684,
		23.655706, 33.908943, 21.866819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899769, 33.858932, 21.170372>,  <23.144243, 33.449841, 21.734039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899769, 33.858932, 21.170372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044258, 34.115246, 20.899399>,  <23.130951, 34.269032, 20.736814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044258, 34.115246, 20.899399>,  <22.899769, 33.858932, 21.170372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044258, 34.115246, 20.899399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931591, 0.216296, -0.292153,
		-0.040679, 0.736625, 0.675076,
		0.361224, 0.640780, -0.677436,
		23.152626, 34.307480, 20.696169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684948, 34.521610, 21.222094>,  <22.899769, 33.858932, 21.170372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684948, 34.521610, 21.222094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755362, 34.467247, 20.832111>,  <22.797609, 34.434628, 20.598122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755362, 34.467247, 20.832111>,  <22.684948, 34.521610, 21.222094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.755362, 34.467247, 20.832111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977916, 0.089205, -0.189003,
		0.112658, 0.986697, -0.117207,
		0.176034, -0.135911, -0.974957,
		22.808172, 34.426476, 20.539625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.431278, 35.142593, 20.804741>,  <22.684948, 34.521610, 21.222094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.431278, 35.142593, 20.804741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.429068, 34.787682, 20.620258>,  <22.427742, 34.574734, 20.509569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.429068, 34.787682, 20.620258>,  <22.431278, 35.142593, 20.804741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429068, 34.787682, 20.620258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982515, 0.090651, -0.162624,
		0.186101, 0.452244, -0.872263,
		-0.005526, -0.887276, -0.461206,
		22.427410, 34.521500, 20.481897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.722458, 34.969215, 20.170437>,  <22.431278, 35.142593, 20.804741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.722458, 34.969215, 20.170437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402576, 35.203568, 20.222923>,  <22.210648, 35.344177, 20.254416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402576, 35.203568, 20.222923>,  <22.722458, 34.969215, 20.170437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402576, 35.203568, 20.222923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233817, 0.505208, -0.830720,
		-0.552992, -0.633650, -0.541006,
		-0.799706, 0.585878, 0.131217,
		22.162664, 35.379330, 20.262289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507452, 35.113121, 19.466322>,  <22.722458, 34.969215, 20.170437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507452, 35.113121, 19.466322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344261, 35.405823, 19.684715>,  <22.246346, 35.581444, 19.815750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344261, 35.405823, 19.684715>,  <22.507452, 35.113121, 19.466322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344261, 35.405823, 19.684715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262576, 0.666790, -0.697456,
		-0.874419, -0.141186, -0.464175,
		-0.407978, 0.731750, 0.545982,
		22.221869, 35.625347, 19.848509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131821, 35.422489, 19.017326>,  <22.507452, 35.113121, 19.466322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131821, 35.422489, 19.017326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.197149, 35.697697, 19.300156>,  <22.236347, 35.862823, 19.469852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.197149, 35.697697, 19.300156>,  <22.131821, 35.422489, 19.017326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.197149, 35.697697, 19.300156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447690, 0.586972, -0.674564,
		-0.879147, 0.426721, -0.212156,
		0.163321, 0.688022, 0.707073,
		22.246145, 35.904102, 19.512278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966845, 36.015812, 18.695656>,  <22.131821, 35.422489, 19.017326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966845, 36.015812, 18.695656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.193464, 36.147327, 18.997894>,  <22.329435, 36.226234, 19.179237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.193464, 36.147327, 18.997894>,  <21.966845, 36.015812, 18.695656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.193464, 36.147327, 18.997894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457234, 0.637411, -0.620197,
		-0.685536, 0.696855, 0.210792,
		0.566548, 0.328786, 0.755594,
		22.363428, 36.245964, 19.224573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895605, 36.806499, 18.725954>,  <21.966845, 36.015812, 18.695656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895605, 36.806499, 18.725954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225773, 36.742874, 18.942612>,  <22.423874, 36.704697, 19.072607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225773, 36.742874, 18.942612>,  <21.895605, 36.806499, 18.725954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225773, 36.742874, 18.942612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419425, 0.814998, -0.399826,
		-0.377839, 0.557204, 0.739433,
		0.825421, -0.159067, 0.541644,
		22.473400, 36.695152, 19.105104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.971218, 37.339622, 19.079632>,  <21.895605, 36.806499, 18.725954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.971218, 37.339622, 19.079632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.333183, 37.174610, 19.037766>,  <22.550362, 37.075603, 19.012646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.333183, 37.174610, 19.037766>,  <21.971218, 37.339622, 19.079632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.333183, 37.174610, 19.037766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286835, 0.772828, -0.566094,
		0.314418, 0.482244, 0.817669,
		0.904913, -0.412526, -0.104666,
		22.604656, 37.050854, 19.006365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.423389, 37.930351, 18.939543>,  <21.971218, 37.339622, 19.079632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.423389, 37.930351, 18.939543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661510, 37.625137, 18.838829>,  <22.804382, 37.442009, 18.778400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661510, 37.625137, 18.838829>,  <22.423389, 37.930351, 18.939543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661510, 37.625137, 18.838829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545412, 0.613842, -0.570723,
		0.590036, 0.202427, 0.781589,
		0.595301, -0.763035, -0.251783,
		22.840101, 37.396229, 18.763294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.057039, 38.121998, 19.109989>,  <22.423389, 37.930351, 18.939543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.057039, 38.121998, 19.109989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080111, 37.834492, 18.832848>,  <23.093954, 37.661987, 18.666563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080111, 37.834492, 18.832848>,  <23.057039, 38.121998, 19.109989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080111, 37.834492, 18.832848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619341, 0.570077, -0.539841,
		0.783000, -0.397976, 0.478043,
		0.057677, -0.718767, -0.692854,
		23.097414, 37.618862, 18.624990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.764048, 38.126614, 18.965094>,  <23.057039, 38.121998, 19.109989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.764048, 38.126614, 18.965094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.551178, 37.985928, 18.657043>,  <23.423456, 37.901516, 18.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.551178, 37.985928, 18.657043>,  <23.764048, 38.126614, 18.965094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.551178, 37.985928, 18.657043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628896, 0.444770, -0.637706,
		0.566817, -0.823698, -0.015505,
		-0.532174, -0.351712, -0.770123,
		23.391525, 37.880413, 18.426006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.255186, 37.676193, 18.563202>,  <23.764048, 38.126614, 18.965094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.255186, 37.676193, 18.563202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.950670, 37.804737, 18.337933>,  <23.767960, 37.881863, 18.202772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.950670, 37.804737, 18.337933>,  <24.255186, 37.676193, 18.563202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.950670, 37.804737, 18.337933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647106, 0.431615, -0.628460,
		0.041110, -0.842873, -0.536540,
		-0.761291, 0.321362, -0.563172,
		23.722282, 37.901146, 18.168982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437094, 37.554916, 17.915428>,  <24.255186, 37.676193, 18.563202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437094, 37.554916, 17.915428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144033, 37.825542, 17.885822>,  <23.968197, 37.987919, 17.868059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144033, 37.825542, 17.885822>,  <24.437094, 37.554916, 17.915428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144033, 37.825542, 17.885822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476063, 0.431712, -0.766152,
		-0.486400, -0.596558, -0.638383,
		-0.732652, 0.676567, -0.074014,
		23.924238, 38.028511, 17.863619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455153, 37.806496, 17.171261>,  <24.437094, 37.554916, 17.915428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455153, 37.806496, 17.171261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213846, 38.080360, 17.334873>,  <24.069063, 38.244678, 17.433041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213846, 38.080360, 17.334873>,  <24.455153, 37.806496, 17.171261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213846, 38.080360, 17.334873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246253, 0.647709, -0.720994,
		-0.758573, -0.334224, -0.559341,
		-0.603264, 0.684666, 0.409030,
		24.032867, 38.285759, 17.457582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.138159, 38.147533, 16.604080>,  <24.455153, 37.806496, 17.171261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.138159, 38.147533, 16.604080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.129082, 38.439869, 16.876949>,  <24.123636, 38.615269, 17.040670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.129082, 38.439869, 16.876949>,  <24.138159, 38.147533, 16.604080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.129082, 38.439869, 16.876949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286205, 0.658540, -0.695997,
		-0.957900, 0.179449, -0.224113,
		-0.022691, 0.730838, 0.682174,
		24.122274, 38.659119, 17.081602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850555, 38.686272, 16.292328>,  <24.138159, 38.147533, 16.604080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850555, 38.686272, 16.292328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999090, 38.869358, 16.615463>,  <24.088211, 38.979210, 16.809345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999090, 38.869358, 16.615463>,  <23.850555, 38.686272, 16.292328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999090, 38.869358, 16.615463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123176, 0.838074, -0.531469,
		-0.920291, 0.296861, 0.254829,
		0.371338, 0.457718, 0.807838,
		24.110491, 39.006672, 16.857815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.520967, 39.372559, 16.388367>,  <23.850555, 38.686272, 16.292328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.520967, 39.372559, 16.388367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860424, 39.403316, 16.597706>,  <24.064098, 39.421772, 16.723310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860424, 39.403316, 16.597706>,  <23.520967, 39.372559, 16.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.860424, 39.403316, 16.597706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202120, 0.867162, -0.455168,
		-0.488830, 0.492054, 0.720367,
		0.848642, 0.076899, 0.523349,
		24.115017, 39.426388, 16.754711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.564884, 40.132576, 16.635927>,  <23.520967, 39.372559, 16.388367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.564884, 40.132576, 16.635927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.917946, 39.944626, 16.631310>,  <24.129784, 39.831856, 16.628540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.917946, 39.944626, 16.631310>,  <23.564884, 40.132576, 16.635927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917946, 39.944626, 16.631310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389110, 0.744271, -0.542821,
		0.263650, 0.474633, 0.839769,
		0.882656, -0.469877, -0.011543,
		24.182743, 39.803661, 16.627846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.060938, 40.705494, 16.757849>,  <23.564884, 40.132576, 16.635927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.060938, 40.705494, 16.757849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292315, 40.407871, 16.624115>,  <24.431141, 40.229298, 16.543875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292315, 40.407871, 16.624115>,  <24.060938, 40.705494, 16.757849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292315, 40.407871, 16.624115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408153, 0.618866, -0.671130,
		0.706269, 0.251751, 0.661669,
		0.578443, -0.744060, -0.334333,
		24.465847, 40.184654, 16.523815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747019, 41.034641, 16.775940>,  <24.060938, 40.705494, 16.757849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747019, 41.034641, 16.775940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743002, 40.730003, 16.516750>,  <24.740591, 40.547218, 16.361237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743002, 40.730003, 16.516750>,  <24.747019, 41.034641, 16.775940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743002, 40.730003, 16.516750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481597, 0.564216, -0.670615,
		0.876335, -0.318797, 0.361117,
		-0.010043, -0.761597, -0.647974,
		24.739988, 40.501526, 16.322359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489645, 40.987011, 16.521683>,  <24.747019, 41.034641, 16.775940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489645, 40.987011, 16.521683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271669, 40.786034, 16.253178>,  <25.140884, 40.665447, 16.092073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271669, 40.786034, 16.253178>,  <25.489645, 40.987011, 16.521683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271669, 40.786034, 16.253178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439183, 0.510932, -0.738963,
		0.714255, -0.697498, -0.057763,
		-0.544938, -0.502440, -0.671265,
		25.108189, 40.635303, 16.051798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945267, 40.921833, 16.014183>,  <25.489645, 40.987011, 16.521683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945267, 40.921833, 16.014183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597387, 40.843914, 15.832776>,  <25.388660, 40.797161, 15.723931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597387, 40.843914, 15.832776>,  <25.945267, 40.921833, 16.014183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597387, 40.843914, 15.832776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309410, 0.500723, -0.808419,
		0.384567, -0.843403, -0.375205,
		-0.869698, -0.194799, -0.453519,
		25.336477, 40.785473, 15.696720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254713, 40.688549, 15.447618>,  <25.945267, 40.921833, 16.014183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254713, 40.688549, 15.447618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879059, 40.778492, 15.343724>,  <25.653666, 40.832458, 15.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879059, 40.778492, 15.343724>,  <26.254713, 40.688549, 15.447618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879059, 40.778492, 15.343724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333559, 0.415849, -0.846055,
		-0.082229, -0.881198, -0.465541,
		-0.939136, 0.224855, -0.259737,
		25.597319, 40.845947, 15.265803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957304, 40.310593, 14.808223>,  <26.254713, 40.688549, 15.447618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957304, 40.310593, 14.808223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790880, 40.672676, 14.842860>,  <25.691027, 40.889927, 14.863643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790880, 40.672676, 14.842860>,  <25.957304, 40.310593, 14.808223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790880, 40.672676, 14.842860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492376, 0.304318, -0.815449,
		-0.764500, -0.296639, -0.572316,
		-0.416060, 0.905205, 0.086593,
		25.666061, 40.944237, 14.868838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563473, 40.456493, 14.188553>,  <25.957304, 40.310593, 14.808223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563473, 40.456493, 14.188553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683842, 40.786343, 14.380153>,  <25.756063, 40.984253, 14.495112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683842, 40.786343, 14.380153>,  <25.563473, 40.456493, 14.188553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683842, 40.786343, 14.380153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411481, 0.340843, -0.845287,
		-0.860307, 0.451466, -0.236749,
		0.300924, 0.824624, 0.478999,
		25.774118, 41.033730, 14.523852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938578, 40.857288, 13.848511>,  <25.563473, 40.456493, 14.188553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938578, 40.857288, 13.848511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676073, 40.557167, 13.816600>,  <24.518570, 40.377094, 13.797453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676073, 40.557167, 13.816600>,  <24.938578, 40.857288, 13.848511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676073, 40.557167, 13.816600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748834, 0.634679, 0.190865,
		-0.092574, 0.184998, -0.978369,
		-0.656260, -0.750306, -0.079778,
		24.479195, 40.332077, 13.792666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427536, 41.032848, 13.427235>,  <24.938578, 40.857288, 13.848511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427536, 41.032848, 13.427235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272394, 40.749229, 13.662803>,  <24.179308, 40.579060, 13.804143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272394, 40.749229, 13.662803>,  <24.427536, 41.032848, 13.427235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272394, 40.749229, 13.662803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717987, 0.633069, 0.289340,
		-0.577981, -0.310614, -0.754624,
		-0.387856, -0.709043, 0.588919,
		24.156038, 40.536518, 13.839478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424942, 41.774387, 13.494407>,  <24.427536, 41.032848, 13.427235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424942, 41.774387, 13.494407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246180, 42.126759, 13.432118>,  <24.138922, 42.338181, 13.394746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246180, 42.126759, 13.432118>,  <24.424942, 41.774387, 13.494407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246180, 42.126759, 13.432118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888780, -0.457021, -0.034680,
		-0.101718, 0.122902, 0.987192,
		-0.446906, 0.880924, -0.155720,
		24.112108, 42.391037, 13.385403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980867, 42.107334, 14.081821>,  <24.424942, 41.774387, 13.494407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980867, 42.107334, 14.081821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.838421, 42.163425, 13.712277>,  <23.752953, 42.197079, 13.490551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.838421, 42.163425, 13.712277>,  <23.980867, 42.107334, 14.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.838421, 42.163425, 13.712277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784018, -0.582773, 0.213756,
		-0.508425, 0.800445, 0.317477,
		-0.356117, 0.140229, -0.923860,
		23.731586, 42.205494, 13.435120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117262, 42.286430, 13.987427>,  <23.980867, 42.107334, 14.081821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117262, 42.286430, 13.987427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256327, 42.114902, 13.653901>,  <23.339766, 42.011986, 13.453785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256327, 42.114902, 13.653901>,  <23.117262, 42.286430, 13.987427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256327, 42.114902, 13.653901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642887, -0.756355, 0.120926,
		-0.682515, 0.494008, -0.538636,
		0.347662, -0.428816, -0.833815,
		23.360626, 41.986259, 13.403756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554111, 42.161297, 13.466847>,  <23.117262, 42.286430, 13.987427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554111, 42.161297, 13.466847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.835302, 41.877991, 13.440963>,  <23.004017, 41.708008, 13.425432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.835302, 41.877991, 13.440963>,  <22.554111, 42.161297, 13.466847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.835302, 41.877991, 13.440963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699892, -0.705085, 0.114043,
		-0.126399, -0.034879, -0.991366,
		0.702975, -0.708264, -0.064711,
		23.046194, 41.665512, 13.421550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.173449, 42.708046, 13.966396>,  <22.554111, 42.161297, 13.466847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.173449, 42.708046, 13.966396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833506, 42.497345, 13.972966>,  <21.629539, 42.370922, 13.976908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833506, 42.497345, 13.972966>,  <22.173449, 42.708046, 13.966396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833506, 42.497345, 13.972966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211303, -0.312029, 0.926277,
		-0.482798, 0.790674, 0.376486,
		-0.849857, -0.526757, 0.016424,
		21.578548, 42.339317, 13.977894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665358, 42.933399, 14.470881>,  <22.173449, 42.708046, 13.966396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665358, 42.933399, 14.470881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629543, 42.541615, 14.398612>,  <21.608055, 42.306545, 14.355250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629543, 42.541615, 14.398612>,  <21.665358, 42.933399, 14.470881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629543, 42.541615, 14.398612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065902, -0.186829, 0.980179,
		-0.993801, 0.075857, 0.081277,
		-0.089538, -0.979459, -0.180672,
		21.602682, 42.247776, 14.344410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003456, 42.544720, 14.931954>,  <21.665358, 42.933399, 14.470881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003456, 42.544720, 14.931954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278015, 42.271133, 14.833117>,  <21.442751, 42.106983, 14.773815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278015, 42.271133, 14.833117>,  <21.003456, 42.544720, 14.931954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278015, 42.271133, 14.833117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147912, -0.463974, 0.873413,
		-0.712026, -0.562961, -0.419637,
		0.686397, -0.683962, -0.247093,
		21.483934, 42.065945, 14.758989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.668625, 41.887367, 14.860867>,  <21.003456, 42.544720, 14.931954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.668625, 41.887367, 14.860867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056147, 41.814114, 14.927657>,  <21.288660, 41.770161, 14.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056147, 41.814114, 14.927657>,  <20.668625, 41.887367, 14.860867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056147, 41.814114, 14.927657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231737, -0.430600, 0.872285,
		-0.087841, -0.883768, -0.459605,
		0.968804, -0.183130, 0.166977,
		21.346788, 41.759174, 14.977750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692390, 41.254921, 15.148858>,  <20.668625, 41.887367, 14.860867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692390, 41.254921, 15.148858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049196, 41.405407, 15.249076>,  <21.263279, 41.495697, 15.309207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049196, 41.405407, 15.249076>,  <20.692390, 41.254921, 15.148858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049196, 41.405407, 15.249076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089959, -0.395447, 0.914073,
		0.442964, -0.837905, -0.318901,
		0.892015, 0.376213, 0.250546,
		21.316801, 41.518272, 15.324240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.094055, 40.695702, 15.311545>,  <20.692390, 41.254921, 15.148858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.094055, 40.695702, 15.311545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292170, 40.992599, 15.492106>,  <21.411037, 41.170738, 15.600443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292170, 40.992599, 15.492106>,  <21.094055, 40.695702, 15.311545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292170, 40.992599, 15.492106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035716, -0.536570, 0.843099,
		0.867996, -0.401452, -0.292266,
		0.495285, 0.742245, 0.451402,
		21.440756, 41.215275, 15.627527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702305, 40.362762, 15.589331>,  <21.094055, 40.695702, 15.311545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702305, 40.362762, 15.589331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629038, 40.699940, 15.791677>,  <21.585077, 40.902245, 15.913084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629038, 40.699940, 15.791677>,  <21.702305, 40.362762, 15.589331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629038, 40.699940, 15.791677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143595, -0.486110, 0.862019,
		0.972538, 0.230535, -0.032002,
		-0.183169, 0.842942, 0.505864,
		21.574087, 40.952824, 15.943436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.202623, 40.412491, 16.102430>,  <21.702305, 40.362762, 15.589331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.202623, 40.412491, 16.102430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.926882, 40.664658, 16.245186>,  <21.761436, 40.815956, 16.330839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.926882, 40.664658, 16.245186>,  <22.202623, 40.412491, 16.102430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.926882, 40.664658, 16.245186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009863, -0.500770, 0.865524,
		0.724359, 0.593132, 0.351425,
		-0.689353, 0.630416, 0.356887,
		21.720076, 40.853783, 16.352251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.416828, 40.497654, 16.756439>,  <22.202623, 40.412491, 16.102430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.416828, 40.497654, 16.756439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.026678, 40.585850, 16.754387>,  <21.792587, 40.638767, 16.753155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.026678, 40.585850, 16.754387>,  <22.416828, 40.497654, 16.756439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.026678, 40.585850, 16.754387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130872, -0.559905, 0.818156,
		0.177518, 0.798682, 0.574974,
		-0.975377, 0.220485, -0.005132,
		21.734064, 40.651997, 16.752848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.259253, 40.667557, 17.424498>,  <22.416828, 40.497654, 16.756439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.259253, 40.667557, 17.424498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906982, 40.576496, 17.258324>,  <21.695621, 40.521858, 17.158619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906982, 40.576496, 17.258324>,  <22.259253, 40.667557, 17.424498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906982, 40.576496, 17.258324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235628, -0.550275, 0.801048,
		-0.410967, 0.803350, 0.430970,
		-0.880673, -0.227656, -0.415436,
		21.642780, 40.508198, 17.133694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885269, 40.796139, 17.911121>,  <22.259253, 40.667557, 17.424498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885269, 40.796139, 17.911121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.633909, 40.579098, 17.688160>,  <21.483093, 40.448872, 17.554382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.633909, 40.579098, 17.688160>,  <21.885269, 40.796139, 17.911121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.633909, 40.579098, 17.688160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328557, -0.464371, 0.822442,
		-0.705100, 0.699960, 0.113534,
		-0.628398, -0.542601, -0.557405,
		21.445391, 40.416317, 17.520939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.263809, 40.874886, 18.213470>,  <21.885269, 40.796139, 17.911121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.263809, 40.874886, 18.213470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225199, 40.529766, 18.014969>,  <21.202032, 40.322697, 17.895868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225199, 40.529766, 18.014969>,  <21.263809, 40.874886, 18.213470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225199, 40.529766, 18.014969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373957, -0.430619, 0.821416,
		-0.922409, 0.264865, -0.281083,
		-0.096525, -0.862794, -0.496255,
		21.196241, 40.270927, 17.866093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.623579, 40.601856, 18.467741>,  <21.263809, 40.874886, 18.213470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.623579, 40.601856, 18.467741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846514, 40.306778, 18.315331>,  <20.980274, 40.129730, 18.223885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846514, 40.306778, 18.315331>,  <20.623579, 40.601856, 18.467741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846514, 40.306778, 18.315331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209666, -0.569080, 0.795102,
		-0.803379, -0.363251, -0.471839,
		0.557336, -0.737697, -0.381026,
		21.013714, 40.085468, 18.201023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.288210, 40.047283, 18.737005>,  <20.623579, 40.601856, 18.467741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.288210, 40.047283, 18.737005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635757, 39.907230, 18.597019>,  <20.844286, 39.823200, 18.513027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635757, 39.907230, 18.597019>,  <20.288210, 40.047283, 18.737005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635757, 39.907230, 18.597019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029419, -0.669169, 0.742527,
		-0.494167, -0.655455, -0.571120,
		0.868869, -0.350131, -0.349964,
		20.896418, 39.802193, 18.492029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278309, 39.273552, 18.763784>,  <20.288210, 40.047283, 18.737005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278309, 39.273552, 18.763784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661877, 39.386040, 18.778683>,  <20.892017, 39.453533, 18.787622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661877, 39.386040, 18.778683>,  <20.278309, 39.273552, 18.763784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661877, 39.386040, 18.778683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151282, -0.618028, 0.771463,
		0.239968, -0.734137, -0.635184,
		0.958921, 0.281219, 0.037245,
		20.949553, 39.470406, 18.789856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613569, 38.687038, 18.925905>,  <20.278309, 39.273552, 18.763784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613569, 38.687038, 18.925905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883444, 38.967793, 19.017258>,  <21.045368, 39.136246, 19.072069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883444, 38.967793, 19.017258>,  <20.613569, 38.687038, 18.925905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883444, 38.967793, 19.017258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163030, -0.443481, 0.881332,
		0.719875, -0.557390, -0.413639,
		0.674686, 0.701884, 0.228380,
		21.085850, 39.178356, 19.085772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237026, 38.359207, 18.867777>,  <20.613569, 38.687038, 18.925905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237026, 38.359207, 18.867777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241812, 38.660957, 19.130310>,  <21.244682, 38.842007, 19.287830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241812, 38.660957, 19.130310>,  <21.237026, 38.359207, 18.867777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241812, 38.660957, 19.130310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199258, -0.645012, 0.737736,
		0.979874, 0.121953, -0.158033,
		0.011964, 0.754378, 0.656331,
		21.245401, 38.887272, 19.327209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.820395, 38.334579, 19.296791>,  <21.237026, 38.359207, 18.867777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.820395, 38.334579, 19.296791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.578659, 38.560181, 19.521885>,  <21.433619, 38.695541, 19.656942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.578659, 38.560181, 19.521885>,  <21.820395, 38.334579, 19.296791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.578659, 38.560181, 19.521885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097409, -0.648705, 0.754780,
		0.790751, 0.510957, 0.337098,
		-0.604338, 0.564007, 0.562736,
		21.397358, 38.729382, 19.690706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.982155, 38.103821, 19.904982>,  <21.820395, 38.334579, 19.296791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.982155, 38.103821, 19.904982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654562, 38.295399, 20.031395>,  <21.458006, 38.410347, 20.107243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654562, 38.295399, 20.031395>,  <21.982155, 38.103821, 19.904982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.654562, 38.295399, 20.031395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070473, -0.630539, 0.772951,
		0.569473, 0.610762, 0.550154,
		-0.818983, 0.478946, 0.316033,
		21.408867, 38.439083, 20.126205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.099152, 38.190689, 20.637661>,  <21.982155, 38.103821, 19.904982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.099152, 38.190689, 20.637661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.706680, 38.244179, 20.581940>,  <21.471197, 38.276272, 20.548508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.706680, 38.244179, 20.581940>,  <22.099152, 38.190689, 20.637661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.706680, 38.244179, 20.581940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187098, -0.479944, 0.857116,
		0.047758, 0.867048, 0.495931,
		-0.981180, 0.133722, -0.139302,
		21.412327, 38.284294, 20.540150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811329, 38.469097, 21.246613>,  <22.099152, 38.190689, 20.637661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811329, 38.469097, 21.246613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484282, 38.317120, 21.073574>,  <21.288054, 38.225933, 20.969751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484282, 38.317120, 21.073574>,  <21.811329, 38.469097, 21.246613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.484282, 38.317120, 21.073574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244544, -0.451043, 0.858347,
		-0.521244, 0.807590, 0.275869,
		-0.817621, -0.379946, -0.432594,
		21.238995, 38.203136, 20.943796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204597, 38.632328, 21.618950>,  <21.811329, 38.469097, 21.246613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204597, 38.632328, 21.618950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099815, 38.301064, 21.420750>,  <21.036945, 38.102303, 21.301830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099815, 38.301064, 21.420750>,  <21.204597, 38.632328, 21.618950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099815, 38.301064, 21.420750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267855, -0.430867, 0.861747,
		-0.927164, 0.358462, -0.108960,
		-0.261956, -0.828166, -0.495500,
		21.021229, 38.052612, 21.272100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493862, 38.417137, 21.838720>,  <21.204597, 38.632328, 21.618950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493862, 38.417137, 21.838720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.671782, 38.092922, 21.686306>,  <20.778532, 37.898396, 21.594858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.671782, 38.092922, 21.686306>,  <20.493862, 38.417137, 21.838720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671782, 38.092922, 21.686306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239895, -0.517713, 0.821233,
		-0.862906, -0.273873, -0.424721,
		0.444797, -0.810535, -0.381037,
		20.805222, 37.849762, 21.571995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.171846, 37.787086, 21.668343>,  <20.493862, 38.417137, 21.838720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.171846, 37.787086, 21.668343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537062, 37.678715, 21.790298>,  <20.756191, 37.613693, 21.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537062, 37.678715, 21.790298>,  <20.171846, 37.787086, 21.668343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537062, 37.678715, 21.790298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382224, -0.307442, 0.871427,
		-0.142361, -0.912182, -0.384262,
		0.913038, -0.270931, 0.304890,
		20.810974, 37.597435, 21.881765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.121920, 37.110130, 22.012129>,  <20.171846, 37.787086, 21.668343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.121920, 37.110130, 22.012129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439178, 37.296356, 22.169186>,  <20.629534, 37.408092, 22.263420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439178, 37.296356, 22.169186>,  <20.121920, 37.110130, 22.012129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439178, 37.296356, 22.169186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266895, -0.313791, 0.911209,
		0.547435, -0.827517, -0.124625,
		0.793147, 0.465566, 0.392640,
		20.677122, 37.436028, 22.286978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834339, 37.082611, 22.695810>,  <20.121920, 37.110130, 22.012129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834339, 37.082611, 22.695810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.613974, 37.402905, 22.789886>,  <19.481754, 37.595081, 22.846333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.613974, 37.402905, 22.789886>,  <19.834339, 37.082611, 22.695810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613974, 37.402905, 22.789886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814160, -0.577594, 0.059392,
		0.183401, -0.158761, 0.970133,
		-0.550914, 0.800737, 0.235189,
		19.448700, 37.643127, 22.860443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.570026, 36.918568, 23.336658>,  <19.834339, 37.082611, 22.695810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.570026, 36.918568, 23.336658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.349886, 37.186520, 23.137310>,  <19.217802, 37.347290, 23.017700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.349886, 37.186520, 23.137310>,  <19.570026, 36.918568, 23.336658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349886, 37.186520, 23.137310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794029, -0.604463, 0.064364,
		-0.258132, 0.431145, 0.864570,
		-0.550351, 0.669879, -0.498373,
		19.184780, 37.387482, 22.987799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884281, 37.038174, 23.712729>,  <19.570026, 36.918568, 23.336658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884281, 37.038174, 23.712729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822075, 37.207222, 23.355583>,  <18.784752, 37.308651, 23.141296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822075, 37.207222, 23.355583>,  <18.884281, 37.038174, 23.712729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822075, 37.207222, 23.355583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900496, -0.432236, -0.047749,
		-0.406107, 0.796593, 0.447790,
		-0.155514, 0.422624, -0.892863,
		18.775421, 37.334011, 23.087725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.520882, 23.346909, 20.478725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.870089, 23.414509, 20.661713>,  <31.079613, 23.455069, 20.771505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.870089, 23.414509, 20.661713>,  <30.520882, 23.346909, 20.478725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870089, 23.414509, 20.661713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007411, 0.933330, -0.358943,
		-0.487630, 0.316754, 0.813562,
		0.873019, 0.169002, 0.457468,
		31.131994, 23.465210, 20.798952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435381, 23.996841, 20.806063>,  <30.520882, 23.346909, 20.478725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435381, 23.996841, 20.806063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.828079, 23.938301, 20.757477>,  <31.063698, 23.903177, 20.728325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.828079, 23.938301, 20.757477>,  <30.435381, 23.996841, 20.806063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828079, 23.938301, 20.757477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116995, 0.968234, -0.220988,
		0.149949, 0.202743, 0.967683,
		0.981747, -0.146351, -0.121465,
		31.122602, 23.894396, 20.721037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688599, 24.503342, 21.227373>,  <30.435381, 23.996841, 20.806063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688599, 24.503342, 21.227373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.949619, 24.414497, 20.937588>,  <31.106232, 24.361191, 20.763718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.949619, 24.414497, 20.937588>,  <30.688599, 24.503342, 21.227373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949619, 24.414497, 20.937588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228016, 0.969320, -0.091799,
		0.722626, -0.105285, 0.683174,
		0.652550, -0.222111, -0.724462,
		31.145384, 24.347864, 20.720249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289900, 24.953209, 21.376194>,  <30.688599, 24.503342, 21.227373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289900, 24.953209, 21.376194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321432, 24.850380, 20.990925>,  <31.340351, 24.788683, 20.759764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321432, 24.850380, 20.990925>,  <31.289900, 24.953209, 21.376194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321432, 24.850380, 20.990925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297286, 0.928278, -0.223429,
		0.951529, -0.268725, 0.149601,
		0.078830, -0.257073, -0.963171,
		31.345081, 24.773258, 20.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918280, 25.234369, 21.191420>,  <31.289900, 24.953209, 21.376194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918280, 25.234369, 21.191420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.742304, 25.158566, 20.840298>,  <31.636719, 25.113083, 20.629625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.742304, 25.158566, 20.840298>,  <31.918280, 25.234369, 21.191420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742304, 25.158566, 20.840298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205451, 0.930315, -0.303816,
		0.874209, -0.314007, -0.370348,
		-0.439940, -0.189511, -0.877803,
		31.610321, 25.101711, 20.576956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342571, 25.474464, 20.629805>,  <31.918280, 25.234369, 21.191420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342571, 25.474464, 20.629805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974981, 25.474724, 20.472076>,  <31.754429, 25.474880, 20.377439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974981, 25.474724, 20.472076>,  <32.342571, 25.474464, 20.629805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974981, 25.474724, 20.472076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101399, 0.966759, -0.234723,
		0.381061, -0.255688, -0.888491,
		-0.918972, 0.000649, -0.394321,
		31.699289, 25.474918, 20.353781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419380, 25.905849, 20.105042>,  <32.342571, 25.474464, 20.629805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419380, 25.905849, 20.105042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022293, 25.899628, 20.152824>,  <31.784040, 25.895895, 20.181494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022293, 25.899628, 20.152824>,  <32.419380, 25.905849, 20.105042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022293, 25.899628, 20.152824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037276, 0.982625, -0.181822,
		-0.114553, -0.184950, -0.976049,
		-0.992718, -0.015555, 0.119457,
		31.724478, 25.894960, 20.188662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121410, 26.329557, 19.641006>,  <32.419380, 25.905849, 20.105042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121410, 26.329557, 19.641006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.810003, 26.295910, 19.889790>,  <31.623159, 26.275721, 20.039059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.810003, 26.295910, 19.889790>,  <32.121410, 26.329557, 19.641006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810003, 26.295910, 19.889790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265608, 0.942020, -0.205063,
		-0.568647, -0.324843, -0.755724,
		-0.778520, -0.084118, 0.621957,
		31.576447, 26.270674, 20.076376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515379, 26.646328, 19.284323>,  <32.121410, 26.329557, 19.641006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515379, 26.646328, 19.284323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411121, 26.644943, 19.670494>,  <31.348566, 26.644112, 19.902197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411121, 26.644943, 19.670494>,  <31.515379, 26.646328, 19.284323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411121, 26.644943, 19.670494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335490, 0.937998, -0.087211,
		-0.905269, -0.346623, -0.245644,
		-0.260643, -0.003462, 0.965429,
		31.332928, 26.643904, 19.960123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879011, 26.832560, 19.315674>,  <31.515379, 26.646328, 19.284323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879011, 26.832560, 19.315674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.980373, 26.917496, 19.693180>,  <31.041191, 26.968456, 19.919683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.980373, 26.917496, 19.693180>,  <30.879011, 26.832560, 19.315674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980373, 26.917496, 19.693180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481150, 0.874039, -0.067460,
		-0.839214, -0.436999, 0.323654,
		0.253406, 0.212339, 0.943768,
		31.056395, 26.981197, 19.976311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224131, 27.030348, 19.683638>,  <30.879011, 26.832560, 19.315674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224131, 27.030348, 19.683638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.515032, 27.186764, 19.909271>,  <30.689573, 27.280613, 20.044651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.515032, 27.186764, 19.909271>,  <30.224131, 27.030348, 19.683638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515032, 27.186764, 19.909271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548924, 0.824738, 0.135977,
		-0.412048, -0.408528, 0.814446,
		0.727254, 0.391040, 0.564082,
		30.733208, 27.304075, 20.078495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877081, 27.398037, 20.205572>,  <30.224131, 27.030348, 19.683638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877081, 27.398037, 20.205572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250244, 27.541889, 20.198132>,  <30.474142, 27.628201, 20.193666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250244, 27.541889, 20.198132>,  <29.877081, 27.398037, 20.205572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250244, 27.541889, 20.198132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346100, 0.909687, 0.229532,
		0.099467, -0.207695, 0.973123,
		0.932910, 0.359628, -0.018601,
		30.530117, 27.649778, 20.192551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982767, 27.765629, 20.783062>,  <29.877081, 27.398037, 20.205572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982767, 27.765629, 20.783062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250866, 27.930786, 20.536392>,  <30.411726, 28.029881, 20.388390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250866, 27.930786, 20.536392>,  <29.982767, 27.765629, 20.783062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250866, 27.930786, 20.536392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288943, 0.910560, 0.295622,
		0.683580, -0.019956, 0.729603,
		0.670247, 0.412895, -0.616674,
		30.451941, 28.054655, 20.351389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142773, 28.242989, 21.154673>,  <29.982767, 27.765629, 20.783062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142773, 28.242989, 21.154673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.311329, 28.348591, 20.807632>,  <30.412462, 28.411953, 20.599407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.311329, 28.348591, 20.807632>,  <30.142773, 28.242989, 21.154673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311329, 28.348591, 20.807632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045466, 0.961635, 0.270537,
		0.905739, -0.074555, 0.417226,
		0.421389, 0.264006, -0.867601,
		30.437746, 28.427794, 20.547352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710909, 28.749683, 21.283152>,  <30.142773, 28.242989, 21.154673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710909, 28.749683, 21.283152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586386, 28.797535, 20.906052>,  <30.511671, 28.826246, 20.679792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586386, 28.797535, 20.906052>,  <30.710909, 28.749683, 21.283152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586386, 28.797535, 20.906052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306041, 0.926574, 0.218633,
		0.899681, 0.356582, -0.251840,
		-0.311309, 0.119627, -0.942749,
		30.492992, 28.833424, 20.623226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855888, 29.458487, 21.069994>,  <30.710909, 28.749683, 21.283152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855888, 29.458487, 21.069994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.562916, 29.345554, 20.822178>,  <30.387133, 29.277794, 20.673489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.562916, 29.345554, 20.822178>,  <30.855888, 29.458487, 21.069994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562916, 29.345554, 20.822178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405877, 0.911657, 0.064382,
		0.546633, 0.298613, -0.782319,
		-0.732432, -0.282331, -0.619542,
		30.343185, 29.260855, 20.636314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751925, 30.037445, 20.637566>,  <30.855888, 29.458487, 21.069994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751925, 30.037445, 20.637566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.407677, 29.840473, 20.585644>,  <30.201128, 29.722290, 20.554491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.407677, 29.840473, 20.585644>,  <30.751925, 30.037445, 20.637566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407677, 29.840473, 20.585644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495699, 0.868457, -0.008069,
		0.116702, 0.057399, -0.991507,
		-0.860618, -0.492431, -0.129803,
		30.149490, 29.692743, 20.546703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399702, 30.246086, 20.000793>,  <30.751925, 30.037445, 20.637566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399702, 30.246086, 20.000793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.109461, 30.093868, 20.230118>,  <29.935316, 30.002537, 20.367712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.109461, 30.093868, 20.230118>,  <30.399702, 30.246086, 20.000793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109461, 30.093868, 20.230118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447699, 0.893787, 0.026641,
		-0.522557, -0.237340, -0.818904,
		-0.725603, -0.380544, 0.573312,
		29.891781, 29.979706, 20.402111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889544, 30.551180, 19.698500>,  <30.399702, 30.246086, 20.000793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889544, 30.551180, 19.698500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.723362, 30.416264, 20.036407>,  <29.623653, 30.335314, 20.239151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.723362, 30.416264, 20.036407>,  <29.889544, 30.551180, 19.698500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723362, 30.416264, 20.036407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553445, 0.830756, 0.059516,
		-0.721870, -0.442806, -0.531814,
		-0.415453, -0.337293, 0.844768,
		29.598726, 30.315075, 20.289837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240805, 30.491781, 19.594950>,  <29.889544, 30.551180, 19.698500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240805, 30.491781, 19.594950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.270477, 30.519234, 19.992901>,  <29.288280, 30.535706, 20.231672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.270477, 30.519234, 19.992901>,  <29.240805, 30.491781, 19.594950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270477, 30.519234, 19.992901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583165, 0.812257, -0.012550,
		-0.808959, -0.579248, 0.100281,
		0.074184, 0.068633, 0.994880,
		29.292732, 30.539824, 20.291365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722038, 30.880682, 19.780651>,  <29.240805, 30.491781, 19.594950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722038, 30.880682, 19.780651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.856056, 30.848843, 20.156185>,  <28.936466, 30.829739, 20.381506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.856056, 30.848843, 20.156185>,  <28.722038, 30.880682, 19.780651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856056, 30.848843, 20.156185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630776, 0.721235, 0.286255,
		-0.699905, -0.688102, 0.191438,
		0.335045, -0.079597, 0.938834,
		28.956570, 30.824965, 20.437836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095072, 30.798840, 20.294304>,  <28.722038, 30.880682, 19.780651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095072, 30.798840, 20.294304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.416273, 30.956924, 20.472740>,  <28.608994, 31.051775, 20.579802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.416273, 30.956924, 20.472740>,  <28.095072, 30.798840, 20.294304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416273, 30.956924, 20.472740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573319, 0.716676, 0.397089,
		-0.162768, -0.574615, 0.802075,
		0.803001, 0.395212, 0.446090,
		28.657173, 31.075487, 20.606567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903263, 30.946804, 21.021936>,  <28.095072, 30.798840, 20.294304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903263, 30.946804, 21.021936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.202089, 31.190571, 20.915726>,  <28.381386, 31.336830, 20.851999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.202089, 31.190571, 20.915726>,  <27.903263, 30.946804, 21.021936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202089, 31.190571, 20.915726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452707, 0.758913, 0.468089,
		0.486772, -0.229488, 0.842845,
		0.747067, 0.609414, -0.265526,
		28.426208, 31.373396, 20.836067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205576, 31.279852, 20.687029>,  <27.903263, 30.946804, 21.021936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205576, 31.279852, 20.687029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985992, 31.117256, 20.394890>,  <26.854242, 31.019699, 20.219606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985992, 31.117256, 20.394890>,  <27.205576, 31.279852, 20.687029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985992, 31.117256, 20.394890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463787, -0.875065, 0.138431,
		-0.695373, -0.262734, 0.668900,
		-0.548960, -0.406488, -0.730349,
		26.821304, 30.995310, 20.175785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895718, 30.635815, 20.985332>,  <27.205576, 31.279852, 20.687029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895718, 30.635815, 20.985332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.888538, 30.605343, 20.586559>,  <26.884232, 30.587059, 20.347296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.888538, 30.605343, 20.586559>,  <26.895718, 30.635815, 20.985332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888538, 30.605343, 20.586559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293340, -0.953616, 0.067589,
		-0.955840, -0.291227, 0.039461,
		-0.017946, -0.076180, -0.996933,
		26.883154, 30.582489, 20.287479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589033, 30.018347, 20.845495>,  <26.895718, 30.635815, 20.985332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589033, 30.018347, 20.845495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.767870, 30.081898, 20.493389>,  <26.875172, 30.120028, 20.282125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.767870, 30.081898, 20.493389>,  <26.589033, 30.018347, 20.845495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767870, 30.081898, 20.493389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413798, -0.909202, 0.046071,
		-0.793018, -0.384849, -0.472242,
		0.447094, 0.158878, -0.880264,
		26.901999, 30.129560, 20.229309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414801, 29.517431, 20.418810>,  <26.589033, 30.018347, 20.845495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414801, 29.517431, 20.418810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.744204, 29.659519, 20.241879>,  <26.941845, 29.744772, 20.135719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.744204, 29.659519, 20.241879>,  <26.414801, 29.517431, 20.418810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744204, 29.659519, 20.241879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370744, -0.927145, -0.054323,
		-0.429398, -0.119254, -0.895207,
		0.823509, 0.355219, -0.442327,
		26.991257, 29.766085, 20.109180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552273, 29.057514, 19.932886>,  <26.414801, 29.517431, 20.418810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552273, 29.057514, 19.932886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892551, 29.258415, 19.994926>,  <27.096720, 29.378956, 20.032150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892551, 29.258415, 19.994926>,  <26.552273, 29.057514, 19.932886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892551, 29.258415, 19.994926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511475, -0.858968, -0.023816,
		0.121264, 0.099589, -0.987612,
		0.850699, 0.502251, 0.155099,
		27.147760, 29.409090, 20.041456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051006, 28.784939, 19.493319>,  <26.552273, 29.057514, 19.932886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051006, 28.784939, 19.493319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.238636, 28.954762, 19.803085>,  <27.351213, 29.056654, 19.988945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.238636, 28.954762, 19.803085>,  <27.051006, 28.784939, 19.493319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238636, 28.954762, 19.803085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453686, -0.868164, 0.201147,
		0.757720, 0.256990, -0.599847,
		0.469073, 0.424555, 0.774418,
		27.379358, 29.082129, 20.035410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628336, 28.375608, 19.561892>,  <27.051006, 28.784939, 19.493319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628336, 28.375608, 19.561892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.653557, 28.565788, 19.912884>,  <27.668690, 28.679895, 20.123480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.653557, 28.565788, 19.912884>,  <27.628336, 28.375608, 19.561892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653557, 28.565788, 19.912884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287314, -0.850655, 0.440269,
		0.955759, 0.224352, -0.190239,
		0.063052, 0.475449, 0.877481,
		27.672472, 28.708424, 20.176128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373528, 28.363392, 19.818502>,  <27.628336, 28.375608, 19.561892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373528, 28.363392, 19.818502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.107882, 28.407955, 20.114216>,  <27.948494, 28.434692, 20.291643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.107882, 28.407955, 20.114216>,  <28.373528, 28.363392, 19.818502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107882, 28.407955, 20.114216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418003, -0.764510, 0.490711,
		0.619858, 0.634911, 0.461155,
		-0.664116, 0.111407, 0.739282,
		27.908648, 28.441378, 20.336000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844370, 28.177246, 20.325130>,  <28.373528, 28.363392, 19.818502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844370, 28.177246, 20.325130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.466309, 28.156033, 20.454048>,  <28.239471, 28.143305, 20.531399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.466309, 28.156033, 20.454048>,  <28.844370, 28.177246, 20.325130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466309, 28.156033, 20.454048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183275, -0.902869, 0.388893,
		0.270365, 0.426632, 0.863069,
		-0.945152, -0.053036, 0.322295,
		28.182762, 28.140121, 20.550737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938629, 27.940790, 20.999407>,  <28.844370, 28.177246, 20.325130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938629, 27.940790, 20.999407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.550505, 27.863007, 20.941875>,  <28.317631, 27.816338, 20.907356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.550505, 27.863007, 20.941875>,  <28.938629, 27.940790, 20.999407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550505, 27.863007, 20.941875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076680, -0.811298, 0.579582,
		-0.229391, 0.551345, 0.802121,
		-0.970309, -0.194457, -0.143828,
		28.259413, 27.804670, 20.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674257, 27.752758, 21.675003>,  <28.938629, 27.940790, 20.999407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674257, 27.752758, 21.675003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.429678, 27.613781, 21.390633>,  <28.282930, 27.530396, 21.220011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.429678, 27.613781, 21.390633>,  <28.674257, 27.752758, 21.675003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429678, 27.613781, 21.390633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003067, -0.899479, 0.436954,
		-0.791277, 0.264995, 0.551052,
		-0.611450, -0.347441, -0.710924,
		28.246243, 27.509548, 21.177355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117546, 27.391640, 21.993387>,  <28.674257, 27.752758, 21.675003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117546, 27.391640, 21.993387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.139496, 27.246078, 21.621460>,  <28.152666, 27.158741, 21.398304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.139496, 27.246078, 21.621460>,  <28.117546, 27.391640, 21.993387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139496, 27.246078, 21.621460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082488, -0.926386, 0.367429,
		-0.995080, -0.096862, -0.020816,
		0.054874, -0.363905, -0.929818,
		28.155958, 27.136908, 21.342514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796740, 26.795633, 22.060436>,  <28.117546, 27.391640, 21.993387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796740, 26.795633, 22.060436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.983900, 26.733601, 21.712410>,  <28.096197, 26.696381, 21.503593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.983900, 26.733601, 21.712410>,  <27.796740, 26.795633, 22.060436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983900, 26.733601, 21.712410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154499, -0.954971, 0.253299,
		-0.870170, -0.252944, -0.422875,
		0.467904, -0.155079, -0.870067,
		28.124271, 26.687077, 21.451389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434723, 26.197781, 21.697136>,  <27.796740, 26.795633, 22.060436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434723, 26.197781, 21.697136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.814264, 26.225235, 21.573868>,  <28.041988, 26.241707, 21.499907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.814264, 26.225235, 21.573868>,  <27.434723, 26.197781, 21.697136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814264, 26.225235, 21.573868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097373, -0.992120, 0.078849,
		-0.300329, -0.104823, -0.948058,
		0.948852, 0.068635, -0.308170,
		28.098921, 26.245825, 21.481417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537041, 25.573400, 21.345652>,  <27.434723, 26.197781, 21.697136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537041, 25.573400, 21.345652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.915504, 25.694168, 21.392345>,  <28.142584, 25.766628, 21.420361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.915504, 25.694168, 21.392345>,  <27.537041, 25.573400, 21.345652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915504, 25.694168, 21.392345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278813, -0.943334, 0.179955,
		0.164449, -0.137719, -0.976724,
		0.946160, 0.301917, 0.116732,
		28.199352, 25.784742, 21.427364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885878, 25.285236, 20.886770>,  <27.537041, 25.573400, 21.345652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885878, 25.285236, 20.886770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.194563, 25.389507, 21.118805>,  <28.379774, 25.452070, 21.258026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.194563, 25.389507, 21.118805>,  <27.885878, 25.285236, 20.886770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194563, 25.389507, 21.118805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366547, -0.927706, -0.070741,
		0.519711, 0.267222, -0.811476,
		0.771715, 0.260679, 0.580088,
		28.426077, 25.467710, 21.292831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500416, 24.963882, 20.598310>,  <27.885878, 25.285236, 20.886770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500416, 24.963882, 20.598310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.601793, 25.021648, 20.980915>,  <28.662619, 25.056309, 21.210478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.601793, 25.021648, 20.980915>,  <28.500416, 24.963882, 20.598310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601793, 25.021648, 20.980915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286775, -0.955561, 0.068288,
		0.923865, 0.256996, -0.283595,
		0.253443, 0.144417, 0.956510,
		28.677826, 25.064974, 21.267868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.151644, 24.609768, 20.667721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011616, 24.672276, 21.037159>,  <28.927599, 24.709780, 21.258821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011616, 24.672276, 21.037159>,  <29.151644, 24.609768, 20.667721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011616, 24.672276, 21.037159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338048, -0.898466, 0.280145,
		0.873599, 0.410291, 0.261699,
		-0.350069, 0.156267, 0.923597,
		28.906595, 24.719156, 21.314238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687677, 24.368633, 21.160828>,  <29.151644, 24.609768, 20.667721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687677, 24.368633, 21.160828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325817, 24.339684, 21.328812>,  <29.108702, 24.322313, 21.429602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325817, 24.339684, 21.328812>,  <29.687677, 24.368633, 21.160828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325817, 24.339684, 21.328812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207328, -0.935730, 0.285348,
		0.372319, 0.345211, 0.861515,
		-0.904651, -0.072376, 0.419962,
		29.054422, 24.317970, 21.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818230, 23.959465, 21.748724>,  <29.687677, 24.368633, 21.160828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818230, 23.959465, 21.748724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425615, 23.946712, 21.673286>,  <29.190046, 23.939062, 21.628025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425615, 23.946712, 21.673286>,  <29.818230, 23.959465, 21.748724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425615, 23.946712, 21.673286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008505, -0.977762, 0.209544,
		-0.191078, 0.207280, 0.959439,
		-0.981538, -0.031879, -0.188592,
		29.131153, 23.937149, 21.616709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566971, 23.484119, 22.270031>,  <29.818230, 23.959465, 21.748724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566971, 23.484119, 22.270031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.279655, 23.482609, 21.991737>,  <29.107265, 23.481703, 21.824760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.279655, 23.482609, 21.991737>,  <29.566971, 23.484119, 22.270031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279655, 23.482609, 21.991737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225706, -0.944638, 0.238150,
		-0.658115, 0.328091, 0.677673,
		-0.718290, -0.003775, -0.695733,
		29.064169, 23.481476, 21.783018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071634, 23.173233, 22.582468>,  <29.566971, 23.484119, 22.270031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071634, 23.173233, 22.582468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999739, 23.109283, 22.194214>,  <28.956602, 23.070913, 21.961262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999739, 23.109283, 22.194214>,  <29.071634, 23.173233, 22.582468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999739, 23.109283, 22.194214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172140, -0.966368, 0.191049,
		-0.968536, 0.201424, 0.146172,
		-0.179738, -0.159876, -0.970636,
		28.945818, 23.061321, 21.903023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612902, 22.587889, 22.633472>,  <29.071634, 23.173233, 22.582468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612902, 22.587889, 22.633472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707430, 22.606869, 22.245266>,  <28.764147, 22.618256, 22.012342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707430, 22.606869, 22.245266>,  <28.612902, 22.587889, 22.633472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707430, 22.606869, 22.245266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009352, -0.998872, -0.046558,
		-0.971630, 0.001926, -0.236497,
		0.236320, 0.047449, -0.970516,
		28.778326, 22.621103, 21.954111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312784, 21.975035, 22.340767>,  <28.612902, 22.587889, 22.633472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312784, 21.975035, 22.340767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.533051, 22.065453, 22.019352>,  <28.665211, 22.119703, 21.826504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.533051, 22.065453, 22.019352>,  <28.312784, 21.975035, 22.340767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533051, 22.065453, 22.019352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305052, -0.950546, -0.058349,
		-0.776988, -0.212990, -0.592389,
		0.550665, 0.226046, -0.803536,
		28.698250, 22.133266, 21.778292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078426, 21.510958, 21.830862>,  <28.312784, 21.975035, 22.340767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078426, 21.510958, 21.830862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.446041, 21.625923, 21.722961>,  <28.666611, 21.694902, 21.658222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.446041, 21.625923, 21.722961>,  <28.078426, 21.510958, 21.830862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446041, 21.625923, 21.722961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257900, -0.955986, -0.139920,
		-0.298091, 0.059023, -0.952711,
		0.919037, 0.287413, -0.269749,
		28.721752, 21.712147, 21.642036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215441, 21.241480, 21.142609>,  <28.078426, 21.510958, 21.830862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215441, 21.241480, 21.142609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584846, 21.303143, 21.283096>,  <28.806490, 21.340141, 21.367390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584846, 21.303143, 21.283096>,  <28.215441, 21.241480, 21.142609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584846, 21.303143, 21.283096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254513, -0.931340, -0.260443,
		0.286955, 0.329913, -0.899341,
		0.923515, 0.154159, 0.351219,
		28.861900, 21.349390, 21.388462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732117, 20.976915, 20.602711>,  <28.215441, 21.241480, 21.142609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732117, 20.976915, 20.602711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.928598, 20.986816, 20.950989>,  <29.046488, 20.992756, 21.159956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.928598, 20.986816, 20.950989>,  <28.732117, 20.976915, 20.602711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928598, 20.986816, 20.950989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482235, -0.840156, -0.248170,
		0.725375, 0.541780, -0.424623,
		0.491203, 0.024752, 0.870693,
		29.075960, 20.994242, 21.212196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366692, 20.754932, 20.434193>,  <28.732117, 20.976915, 20.602711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366692, 20.754932, 20.434193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365164, 20.718620, 20.832539>,  <29.364246, 20.696833, 21.071547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365164, 20.718620, 20.832539>,  <29.366692, 20.754932, 20.434193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365164, 20.718620, 20.832539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561764, -0.824074, -0.072963,
		0.827289, 0.559161, 0.054145,
		-0.003821, -0.090778, 0.995864,
		29.364017, 20.691387, 21.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973785, 20.545647, 20.661955>,  <29.366692, 20.754932, 20.434193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973785, 20.545647, 20.661955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.737516, 20.432621, 20.964283>,  <29.595755, 20.364805, 21.145679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.737516, 20.432621, 20.964283>,  <29.973785, 20.545647, 20.661955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737516, 20.432621, 20.964283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572351, -0.806978, 0.145606,
		0.568787, 0.518599, 0.638386,
		-0.590675, -0.282562, 0.755819,
		29.560314, 20.347853, 21.191029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467825, 20.284826, 21.082561>,  <29.973785, 20.545647, 20.661955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467825, 20.284826, 21.082561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103996, 20.146755, 21.175114>,  <29.885700, 20.063913, 21.230644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103996, 20.146755, 21.175114>,  <30.467825, 20.284826, 21.082561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103996, 20.146755, 21.175114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399788, -0.878777, 0.260617,
		0.113371, 0.329552, 0.937306,
		-0.909570, -0.345177, 0.231378,
		29.831125, 20.043201, 21.244528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566050, 19.988420, 21.665749>,  <30.467825, 20.284826, 21.082561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566050, 19.988420, 21.665749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.213717, 19.823349, 21.572945>,  <30.002317, 19.724306, 21.517262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.213717, 19.823349, 21.572945>,  <30.566050, 19.988420, 21.665749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213717, 19.823349, 21.572945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344581, -0.894904, 0.283568,
		-0.324648, 0.169830, 0.930463,
		-0.880833, -0.412680, -0.232009,
		29.949467, 19.699545, 21.503342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258434, 19.671595, 22.353933>,  <30.566050, 19.988420, 21.665749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258434, 19.671595, 22.353933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122101, 19.491455, 22.023838>,  <30.040300, 19.383371, 21.825781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122101, 19.491455, 22.023838>,  <30.258434, 19.671595, 22.353933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122101, 19.491455, 22.023838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188007, -0.892716, 0.409525,
		-0.921133, -0.015570, 0.388936,
		-0.340833, -0.450350, -0.825238,
		30.019852, 19.356350, 21.776266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756804, 19.178844, 22.593849>,  <30.258434, 19.671595, 22.353933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756804, 19.178844, 22.593849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877785, 19.053543, 22.233761>,  <29.950373, 18.978363, 22.017708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877785, 19.053543, 22.233761>,  <29.756804, 19.178844, 22.593849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877785, 19.053543, 22.233761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036790, -0.939913, 0.339425,
		-0.952454, -0.135779, -0.272755,
		0.302452, -0.313252, -0.900220,
		29.968521, 18.959568, 21.963696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420305, 18.545227, 22.601215>,  <29.756804, 19.178844, 22.593849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420305, 18.545227, 22.601215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708588, 18.534904, 22.324112>,  <29.881557, 18.528711, 22.157850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708588, 18.534904, 22.324112>,  <29.420305, 18.545227, 22.601215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708588, 18.534904, 22.324112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254607, -0.919615, 0.299138,
		-0.644790, -0.391972, -0.656204,
		0.720708, -0.025807, -0.692758,
		29.924801, 18.527163, 22.116285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422112, 17.927408, 22.280195>,  <29.420305, 18.545227, 22.601215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422112, 17.927408, 22.280195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783520, 18.035995, 22.147556>,  <30.000364, 18.101149, 22.067972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783520, 18.035995, 22.147556>,  <29.422112, 17.927408, 22.280195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783520, 18.035995, 22.147556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357948, -0.903522, 0.235629,
		-0.235641, -0.331590, -0.913521,
		0.903519, 0.271469, -0.331599,
		30.054575, 18.117435, 22.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611969, 17.394499, 21.820620>,  <29.422112, 17.927408, 22.280195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611969, 17.394499, 21.820620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943806, 17.586464, 21.934788>,  <30.142908, 17.701643, 22.003288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943806, 17.586464, 21.934788>,  <29.611969, 17.394499, 21.820620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943806, 17.586464, 21.934788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475045, -0.875251, 0.090925,
		0.293449, 0.060156, -0.954080,
		0.829590, 0.479913, 0.285419,
		30.192682, 17.730438, 22.020412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163040, 17.109999, 21.469669>,  <29.611969, 17.394499, 21.820620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163040, 17.109999, 21.469669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320335, 17.253071, 21.808475>,  <30.414713, 17.338913, 22.011759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320335, 17.253071, 21.808475>,  <30.163040, 17.109999, 21.469669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320335, 17.253071, 21.808475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585608, -0.807637, 0.069175,
		0.708822, 0.468816, -0.527052,
		0.393236, 0.357679, 0.847013,
		30.438307, 17.360374, 22.062580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927229, 17.058538, 21.395720>,  <30.163040, 17.109999, 21.469669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927229, 17.058538, 21.395720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836220, 17.086792, 21.784203>,  <30.781614, 17.103745, 22.017292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836220, 17.086792, 21.784203>,  <30.927229, 17.058538, 21.395720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836220, 17.086792, 21.784203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415782, -0.894832, 0.162482,
		0.880545, 0.440779, 0.174227,
		-0.227523, 0.070632, 0.971208,
		30.767963, 17.107981, 22.075565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425261, 16.697264, 21.684397>,  <30.927229, 17.058538, 21.395720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425261, 16.697264, 21.684397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164253, 16.723564, 21.986362>,  <31.007648, 16.739346, 22.167542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164253, 16.723564, 21.986362>,  <31.425261, 16.697264, 21.684397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164253, 16.723564, 21.986362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326732, -0.874453, 0.358577,
		0.683716, 0.480633, 0.549112,
		-0.652517, 0.065752, 0.754916,
		30.968498, 16.743290, 22.212837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798670, 16.724407, 22.374811>,  <31.425261, 16.697264, 21.684397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798670, 16.724407, 22.374811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429699, 16.569939, 22.375305>,  <31.208317, 16.477257, 22.375601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429699, 16.569939, 22.375305>,  <31.798670, 16.724407, 22.374811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429699, 16.569939, 22.375305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340936, -0.812860, 0.472251,
		-0.181368, 0.436037, 0.881463,
		-0.922425, -0.386174, 0.001234,
		31.152971, 16.454086, 22.375675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401970, 16.355139, 22.149672>,  <31.798670, 16.724407, 22.374811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401970, 16.355139, 22.149672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616692, 16.210537, 22.454605>,  <32.745525, 16.123775, 22.637566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616692, 16.210537, 22.454605>,  <32.401970, 16.355139, 22.149672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616692, 16.210537, 22.454605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005285, 0.904977, 0.425427,
		-0.843688, -0.224344, 0.487710,
		0.536808, -0.361505, 0.762333,
		32.777733, 16.102085, 22.683306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121010, 16.388357, 22.925116>,  <32.401970, 16.355139, 22.149672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121010, 16.388357, 22.925116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516102, 16.446770, 22.902973>,  <32.753159, 16.481817, 22.889687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516102, 16.446770, 22.902973>,  <32.121010, 16.388357, 22.925116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516102, 16.446770, 22.902973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091611, 0.828861, 0.551904,
		0.126478, -0.540061, 0.832068,
		0.987730, 0.146030, -0.055357,
		32.812420, 16.490580, 22.886366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321209, 16.650984, 23.637934>,  <32.121010, 16.388357, 22.925116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321209, 16.650984, 23.637934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.641914, 16.745171, 23.418213>,  <32.834335, 16.801682, 23.286381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.641914, 16.745171, 23.418213>,  <32.321209, 16.650984, 23.637934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641914, 16.745171, 23.418213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043518, 0.893674, 0.446601,
		0.596057, -0.381972, 0.706266,
		0.801762, 0.235465, -0.549304,
		32.882442, 16.815809, 23.253422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734306, 16.983969, 24.074398>,  <32.321209, 16.650984, 23.637934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734306, 16.983969, 24.074398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857273, 17.115448, 23.717197>,  <32.931053, 17.194336, 23.502876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857273, 17.115448, 23.717197>,  <32.734306, 16.983969, 24.074398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857273, 17.115448, 23.717197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077683, 0.943983, 0.320720,
		0.948399, -0.029223, 0.315730,
		0.307416, 0.328697, -0.893003,
		32.949497, 17.214058, 23.449297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238560, 17.573395, 24.215515>,  <32.734306, 16.983969, 24.074398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238560, 17.573395, 24.215515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116852, 17.608547, 23.836105>,  <33.043827, 17.629639, 23.608459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116852, 17.608547, 23.836105>,  <33.238560, 17.573395, 24.215515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116852, 17.608547, 23.836105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225202, 0.960873, 0.161266,
		0.925582, 0.262678, -0.272577,
		-0.304273, 0.087880, -0.948523,
		33.025570, 17.634911, 23.551548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558067, 18.213745, 24.062374>,  <33.238560, 17.573395, 24.215515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558067, 18.213745, 24.062374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298782, 18.128536, 23.769951>,  <33.143211, 18.077412, 23.594498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298782, 18.128536, 23.769951>,  <33.558067, 18.213745, 24.062374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298782, 18.128536, 23.769951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130041, 0.976937, -0.169362,
		0.750275, -0.014715, -0.660962,
		-0.648211, -0.213020, -0.731057,
		33.104321, 18.064631, 23.550634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819263, 18.456177, 23.509037>,  <33.558067, 18.213745, 24.062374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819263, 18.456177, 23.509037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422832, 18.440144, 23.458187>,  <33.184975, 18.430525, 23.427677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422832, 18.440144, 23.458187>,  <33.819263, 18.456177, 23.509037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422832, 18.440144, 23.458187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019887, 0.987506, -0.156321,
		0.131802, -0.152398, -0.979491,
		-0.991077, -0.040082, -0.127125,
		33.125511, 18.428120, 23.420050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629368, 18.831179, 22.857891>,  <33.819263, 18.456177, 23.509037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629368, 18.831179, 22.857891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279114, 18.801418, 23.048775>,  <33.068962, 18.783562, 23.163305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279114, 18.801418, 23.048775>,  <33.629368, 18.831179, 22.857891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279114, 18.801418, 23.048775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281469, 0.881538, -0.379032,
		-0.392477, -0.466213, -0.792847,
		-0.875635, -0.074401, 0.477208,
		33.016422, 18.779099, 23.191936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136288, 19.078384, 22.455263>,  <33.629368, 18.831179, 22.857891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136288, 19.078384, 22.455263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931854, 19.106926, 22.797890>,  <32.809193, 19.124052, 23.003466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931854, 19.106926, 22.797890>,  <33.136288, 19.078384, 22.455263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931854, 19.106926, 22.797890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355656, 0.889679, -0.286322,
		-0.782499, -0.450976, -0.429321,
		-0.511082, 0.071356, 0.856565,
		32.778530, 19.128332, 23.054859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421829, 19.220484, 22.325510>,  <33.136288, 19.078384, 22.455263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421829, 19.220484, 22.325510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455803, 19.318626, 22.711792>,  <32.476189, 19.377512, 22.943562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455803, 19.318626, 22.711792>,  <32.421829, 19.220484, 22.325510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455803, 19.318626, 22.711792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552038, 0.818444, -0.159387,
		-0.829481, -0.519568, 0.204964,
		0.084939, 0.245356, 0.965705,
		32.481285, 19.392233, 23.001503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799158, 19.468342, 22.466208>,  <32.421829, 19.220484, 22.325510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799158, 19.468342, 22.466208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.038509, 19.603035, 22.757015>,  <32.182121, 19.683851, 22.931499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.038509, 19.603035, 22.757015>,  <31.799158, 19.468342, 22.466208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038509, 19.603035, 22.757015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485949, 0.873974, -0.004833,
		-0.637022, -0.350401, 0.686602,
		0.598378, 0.336732, 0.727018,
		32.218021, 19.704054, 22.975121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347755, 19.830338, 22.984396>,  <31.799158, 19.468342, 22.466208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347755, 19.830338, 22.984396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718834, 19.972633, 23.029705>,  <31.941481, 20.058010, 23.056890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718834, 19.972633, 23.029705>,  <31.347755, 19.830338, 22.984396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718834, 19.972633, 23.029705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352053, 0.934550, -0.051727,
		-0.124262, 0.008108, 0.992216,
		0.927695, 0.355740, 0.113275,
		31.997143, 20.079355, 23.063688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313227, 20.350723, 23.465290>,  <31.347755, 19.830338, 22.984396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313227, 20.350723, 23.465290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626465, 20.416878, 23.225487>,  <31.814407, 20.456570, 23.081604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626465, 20.416878, 23.225487>,  <31.313227, 20.350723, 23.465290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626465, 20.416878, 23.225487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336231, 0.923546, -0.184419,
		0.523174, 0.345991, 0.778832,
		0.783095, 0.165385, -0.599508,
		31.861393, 20.466494, 23.045635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359724, 21.169821, 23.544872>,  <31.313227, 20.350723, 23.465290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359724, 21.169821, 23.544872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.583260, 21.058220, 23.232498>,  <31.717381, 20.991261, 23.045074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.583260, 21.058220, 23.232498>,  <31.359724, 21.169821, 23.544872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583260, 21.058220, 23.232498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319913, 0.796280, -0.513413,
		0.765086, 0.536746, 0.355735,
		0.558837, -0.279001, -0.780935,
		31.750910, 20.974520, 22.998219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694056, 21.744728, 23.442974>,  <31.359724, 21.169821, 23.544872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694056, 21.744728, 23.442974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712440, 21.570507, 23.083378>,  <31.723471, 21.465975, 22.867620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712440, 21.570507, 23.083378>,  <31.694056, 21.744728, 23.442974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712440, 21.570507, 23.083378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264905, 0.862405, -0.431373,
		0.963179, 0.257973, -0.075743,
		0.045962, -0.435554, -0.898989,
		31.726229, 21.439840, 22.813681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101894, 22.192760, 23.079529>,  <31.694056, 21.744728, 23.442974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101894, 22.192760, 23.079529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944906, 21.955235, 22.798573>,  <31.850714, 21.812719, 22.629999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944906, 21.955235, 22.798573>,  <32.101894, 22.192760, 23.079529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944906, 21.955235, 22.798573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015747, 0.767887, -0.640391,
		0.919631, -0.240273, -0.310722,
		-0.392468, -0.593817, -0.702389,
		31.827166, 21.777090, 22.587856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384476, 22.492771, 22.415789>,  <32.101894, 22.192760, 23.079529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384476, 22.492771, 22.415789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089752, 22.255878, 22.285332>,  <31.912918, 22.113743, 22.207058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089752, 22.255878, 22.285332>,  <32.384476, 22.492771, 22.415789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089752, 22.255878, 22.285332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109010, 0.580137, -0.807191,
		0.667254, -0.559194, -0.492011,
		-0.736810, -0.592235, -0.326141,
		31.868708, 22.078209, 22.187490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532623, 22.243149, 21.667023>,  <32.384476, 22.492771, 22.415789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532623, 22.243149, 21.667023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141949, 22.224472, 21.750843>,  <31.907545, 22.213266, 21.801134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141949, 22.224472, 21.750843>,  <32.532623, 22.243149, 21.667023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141949, 22.224472, 21.750843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194980, 0.601439, -0.774760,
		-0.089856, -0.797553, -0.596519,
		-0.976683, -0.046693, 0.209550,
		31.848944, 22.210464, 21.813707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221493, 22.121719, 21.012423>,  <32.532623, 22.243149, 21.667023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221493, 22.121719, 21.012423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917799, 22.262917, 21.231133>,  <31.735584, 22.347635, 21.362358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917799, 22.262917, 21.231133>,  <32.221493, 22.121719, 21.012423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917799, 22.262917, 21.231133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244789, 0.623554, -0.742468,
		-0.603030, -0.697550, -0.387013,
		-0.759232, 0.352994, 0.546775,
		31.690029, 22.368814, 21.395164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696646, 22.287628, 20.477316>,  <32.221493, 22.121719, 21.012423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696646, 22.287628, 20.477316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.622452, 22.494122, 20.811764>,  <31.577936, 22.618017, 21.012432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.622452, 22.494122, 20.811764>,  <31.696646, 22.287628, 20.477316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622452, 22.494122, 20.811764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252757, 0.797192, -0.548269,
		-0.949583, -0.313032, -0.017386,
		-0.185485, 0.516232, 0.836122,
		31.566807, 22.648991, 21.062601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065128, 22.685247, 20.360901>,  <31.696646, 22.287628, 20.477316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065128, 22.685247, 20.360901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245201, 22.860970, 20.671860>,  <31.353245, 22.966402, 20.858435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245201, 22.860970, 20.671860>,  <31.065128, 22.685247, 20.360901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245201, 22.860970, 20.671860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141929, 0.894744, -0.423425,
		-0.881584, 0.080284, 0.465149,
		0.450184, 0.439303, 0.777398,
		31.380257, 22.992760, 20.905079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.403704, 41.348316, 15.194089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.752216, 41.153473, 15.170081>,  <24.961323, 41.036568, 15.155677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.752216, 41.153473, 15.170081>,  <24.403704, 41.348316, 15.194089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752216, 41.153473, 15.170081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288353, -0.607019, 0.740528,
		-0.397146, -0.627900, -0.669340,
		0.871280, -0.487103, -0.060018,
		25.013599, 41.007343, 15.152076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.255732, 40.612370, 15.101383>,  <24.403704, 41.348316, 15.194089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.255732, 40.612370, 15.101383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.616470, 40.658344, 15.267980>,  <24.832912, 40.685928, 15.367937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.616470, 40.658344, 15.267980>,  <24.255732, 40.612370, 15.101383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.616470, 40.658344, 15.267980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268343, -0.606502, 0.748430,
		0.338626, -0.786731, -0.516128,
		0.901845, 0.114938, 0.416491,
		24.887024, 40.692825, 15.392927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405613, 39.962906, 15.150844>,  <24.255732, 40.612370, 15.101383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405613, 39.962906, 15.150844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.622053, 40.162720, 15.421451>,  <24.751917, 40.282608, 15.583815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.622053, 40.162720, 15.421451>,  <24.405613, 39.962906, 15.150844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622053, 40.162720, 15.421451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185669, -0.713646, 0.675453,
		0.820206, -0.491096, -0.293406,
		0.541100, 0.499534, 0.676518,
		24.784384, 40.312580, 15.624406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956589, 39.480194, 15.470078>,  <24.405613, 39.962906, 15.150844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956589, 39.480194, 15.470078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.862104, 39.773479, 15.725139>,  <24.805414, 39.949451, 15.878175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.862104, 39.773479, 15.725139>,  <24.956589, 39.480194, 15.470078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862104, 39.773479, 15.725139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190696, -0.678439, 0.709476,
		0.952807, 0.045987, 0.300075,
		-0.236209, 0.733216, 0.637652,
		24.791243, 39.993443, 15.916434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337103, 39.316063, 16.070427>,  <24.956589, 39.480194, 15.470078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337103, 39.316063, 16.070427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.041971, 39.567116, 16.169769>,  <24.864893, 39.717747, 16.229374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.041971, 39.567116, 16.169769>,  <25.337103, 39.316063, 16.070427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041971, 39.567116, 16.169769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177928, -0.535775, 0.825401,
		0.651114, 0.564816, 0.506985,
		-0.737830, 0.627636, 0.248354,
		24.820621, 39.755405, 16.244276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333172, 39.255219, 16.700665>,  <25.337103, 39.316063, 16.070427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333172, 39.255219, 16.700665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.985384, 39.452801, 16.698330>,  <24.776711, 39.571350, 16.696930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.985384, 39.452801, 16.698330>,  <25.333172, 39.255219, 16.700665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985384, 39.452801, 16.698330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292320, -0.504956, 0.812138,
		0.398211, 0.707835, 0.583436,
		-0.869469, 0.493952, -0.005835,
		24.724543, 39.600986, 16.696579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255041, 39.388348, 17.408514>,  <25.333172, 39.255219, 16.700665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255041, 39.388348, 17.408514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.904125, 39.409176, 17.217663>,  <24.693575, 39.421673, 17.103153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.904125, 39.409176, 17.217663>,  <25.255041, 39.388348, 17.408514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904125, 39.409176, 17.217663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416584, -0.576321, 0.703072,
		-0.238366, 0.815562, 0.527295,
		-0.877291, 0.052074, -0.477126,
		24.640938, 39.424797, 17.074526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.750040, 39.535019, 17.916384>,  <25.255041, 39.388348, 17.408514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.750040, 39.535019, 17.916384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.569389, 39.365337, 17.602421>,  <24.460999, 39.263527, 17.414043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.569389, 39.365337, 17.602421>,  <24.750040, 39.535019, 17.916384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569389, 39.365337, 17.602421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488530, -0.618565, 0.615399,
		-0.746572, 0.661383, 0.072125,
		-0.451628, -0.424205, -0.784909,
		24.433901, 39.238075, 17.366947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105650, 39.430283, 18.183149>,  <24.750040, 39.535019, 17.916384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105650, 39.430283, 18.183149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.095350, 39.194759, 17.860004>,  <24.089170, 39.053444, 17.666119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.095350, 39.194759, 17.860004>,  <24.105650, 39.430283, 18.183149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.095350, 39.194759, 17.860004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585245, -0.646284, 0.489699,
		-0.810447, 0.485406, -0.327957,
		-0.025750, -0.588810, -0.807861,
		24.087626, 39.018116, 17.617645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.391712, 39.213554, 18.140440>,  <24.105650, 39.430283, 18.183149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.391712, 39.213554, 18.140440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.572435, 38.929199, 17.924847>,  <23.680870, 38.758587, 17.795490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.572435, 38.929199, 17.924847>,  <23.391712, 39.213554, 18.140440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.572435, 38.929199, 17.924847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582464, -0.692684, 0.425353,
		-0.675722, 0.121757, -0.727031,
		0.451813, -0.710890, -0.538981,
		23.707979, 38.715931, 17.763151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.877754, 38.802216, 17.852289>,  <23.391712, 39.213554, 18.140440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.877754, 38.802216, 17.852289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.203390, 38.571228, 17.827686>,  <23.398771, 38.432636, 17.812925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.203390, 38.571228, 17.827686>,  <22.877754, 38.802216, 17.852289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.203390, 38.571228, 17.827686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545442, -0.796673, 0.260396,
		-0.199370, -0.178438, -0.963541,
		0.814091, -0.577471, -0.061505,
		23.447617, 38.397987, 17.809235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.713737, 38.123890, 17.427198>,  <22.877754, 38.802216, 17.852289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.713737, 38.123890, 17.427198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.026989, 38.050919, 17.664997>,  <23.214941, 38.007137, 17.807676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.026989, 38.050919, 17.664997>,  <22.713737, 38.123890, 17.427198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.026989, 38.050919, 17.664997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517516, -0.721253, 0.460403,
		0.344794, -0.668218, -0.659244,
		0.783131, -0.182425, 0.594497,
		23.261929, 37.996193, 17.843346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717365, 37.377716, 17.468897>,  <22.713737, 38.123890, 17.427198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717365, 37.377716, 17.468897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.953047, 37.518658, 17.759739>,  <23.094456, 37.603222, 17.934244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.953047, 37.518658, 17.759739>,  <22.717365, 37.377716, 17.468897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953047, 37.518658, 17.759739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251599, -0.775149, 0.579519,
		0.767814, -0.524394, -0.368066,
		0.589202, 0.352358, 0.727107,
		23.129808, 37.624367, 17.977871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.148958, 36.801220, 17.639610>,  <22.717365, 37.377716, 17.468897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.148958, 36.801220, 17.639610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.131693, 37.045319, 17.956024>,  <23.121334, 37.191776, 18.145872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.131693, 37.045319, 17.956024>,  <23.148958, 36.801220, 17.639610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.131693, 37.045319, 17.956024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128710, -0.788573, 0.601320,
		0.990742, -0.075858, 0.112584,
		-0.043166, 0.610244, 0.791037,
		23.118744, 37.228394, 18.193335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490919, 36.416527, 18.074579>,  <23.148958, 36.801220, 17.639610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490919, 36.416527, 18.074579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.274223, 36.682838, 18.279812>,  <23.144205, 36.842625, 18.402952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.274223, 36.682838, 18.279812>,  <23.490919, 36.416527, 18.074579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274223, 36.682838, 18.279812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258694, -0.712853, 0.651857,
		0.799746, 0.220406, 0.558415,
		-0.541741, 0.665779, 0.513084,
		23.111700, 36.882572, 18.433737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.710602, 36.373634, 18.853569>,  <23.490919, 36.416527, 18.074579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.710602, 36.373634, 18.853569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.378468, 36.593529, 18.890076>,  <23.179186, 36.725464, 18.911980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.378468, 36.593529, 18.890076>,  <23.710602, 36.373634, 18.853569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.378468, 36.593529, 18.890076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310240, -0.592076, 0.743773,
		0.462915, 0.589268, 0.662173,
		-0.830338, 0.549736, 0.091266,
		23.129366, 36.758450, 18.917456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.628689, 36.463829, 19.585657>,  <23.710602, 36.373634, 18.853569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.628689, 36.463829, 19.585657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.266939, 36.538971, 19.432388>,  <23.049891, 36.584057, 19.340427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.266939, 36.538971, 19.432388>,  <23.628689, 36.463829, 19.585657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.266939, 36.538971, 19.432388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426262, -0.440275, 0.790227,
		-0.020256, 0.877992, 0.478246,
		-0.904373, 0.187851, -0.383173,
		22.995626, 36.595325, 19.317436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.156904, 36.688503, 20.139114>,  <23.628689, 36.463829, 19.585657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.156904, 36.688503, 20.139114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.907967, 36.553768, 19.856491>,  <22.758604, 36.472927, 19.686916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.907967, 36.553768, 19.856491>,  <23.156904, 36.688503, 20.139114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.907967, 36.553768, 19.856491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636804, -0.307009, 0.707267,
		-0.455155, 0.890104, -0.023436,
		-0.622346, -0.336840, -0.706558,
		22.721264, 36.452717, 19.644524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.514645, 36.716660, 20.516514>,  <23.156904, 36.688503, 20.139114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.514645, 36.716660, 20.516514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.409082, 36.472439, 20.217831>,  <22.345745, 36.325905, 20.038620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.409082, 36.472439, 20.217831>,  <22.514645, 36.716660, 20.516514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.409082, 36.472439, 20.217831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575323, -0.521722, 0.629928,
		-0.774181, 0.595841, -0.213581,
		-0.263907, -0.610556, -0.746709,
		22.329910, 36.289272, 19.993818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796230, 36.583694, 20.685637>,  <22.514645, 36.716660, 20.516514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796230, 36.583694, 20.685637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.909908, 36.280800, 20.450409>,  <21.978115, 36.099064, 20.309273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.909908, 36.280800, 20.450409>,  <21.796230, 36.583694, 20.685637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909908, 36.280800, 20.450409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458927, -0.645970, 0.610007,
		-0.841795, 0.096521, -0.531097,
		0.284194, -0.757236, -0.588070,
		21.995167, 36.053631, 20.273989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176941, 36.196396, 20.592440>,  <21.796230, 36.583694, 20.685637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176941, 36.196396, 20.592440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.492226, 35.964848, 20.508881>,  <21.681396, 35.825920, 20.458746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.492226, 35.964848, 20.508881>,  <21.176941, 36.196396, 20.592440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492226, 35.964848, 20.508881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412410, -0.748798, 0.518864,
		-0.456775, -0.322823, -0.828941,
		0.788210, -0.578867, -0.208897,
		21.728689, 35.791187, 20.446211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051880, 36.753391, 20.989363>,  <21.176941, 36.196396, 20.592440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051880, 36.753391, 20.989363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.971210, 37.095272, 21.180698>,  <20.922808, 37.300400, 21.295500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.971210, 37.095272, 21.180698>,  <21.051880, 36.753391, 20.989363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.971210, 37.095272, 21.180698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049348, 0.478889, -0.876487,
		-0.978208, -0.200371, -0.054402,
		-0.201676, 0.854703, 0.478341,
		20.910707, 37.351685, 21.324202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.642220, 37.059151, 20.481966>,  <21.051880, 36.753391, 20.989363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.642220, 37.059151, 20.481966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769381, 37.351925, 20.723034>,  <20.845676, 37.527588, 20.867674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769381, 37.351925, 20.723034>,  <20.642220, 37.059151, 20.481966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769381, 37.351925, 20.723034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049510, 0.621960, -0.781482,
		-0.946830, 0.278273, 0.161485,
		0.317903, 0.731936, 0.602668,
		20.864752, 37.571507, 20.903833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203672, 37.633949, 20.329269>,  <20.642220, 37.059151, 20.481966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203672, 37.633949, 20.329269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508522, 37.821583, 20.507763>,  <20.691433, 37.934162, 20.614859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508522, 37.821583, 20.507763>,  <20.203672, 37.633949, 20.329269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508522, 37.821583, 20.507763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098313, 0.597395, -0.795898,
		-0.639921, 0.650445, 0.409173,
		0.762125, 0.469085, 0.446233,
		20.737160, 37.962307, 20.641632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115349, 38.385239, 20.307083>,  <20.203672, 37.633949, 20.329269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115349, 38.385239, 20.307083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.504328, 38.357971, 20.396255>,  <20.737715, 38.341610, 20.449759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.504328, 38.357971, 20.396255>,  <20.115349, 38.385239, 20.307083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504328, 38.357971, 20.396255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197777, 0.747463, -0.634180,
		-0.123401, 0.660797, 0.740351,
		0.972448, -0.068166, 0.222929,
		20.796062, 38.337521, 20.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.322861, 39.050648, 20.492424>,  <20.115349, 38.385239, 20.307083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.322861, 39.050648, 20.492424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.671919, 38.882206, 20.393501>,  <20.881353, 38.781143, 20.334148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.671919, 38.882206, 20.393501>,  <20.322861, 39.050648, 20.492424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671919, 38.882206, 20.393501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112651, 0.666331, -0.737098,
		0.475182, 0.615367, 0.628909,
		0.872647, -0.421102, -0.247307,
		20.933712, 38.755875, 20.319309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.817804, 39.632744, 20.355305>,  <20.322861, 39.050648, 20.492424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.817804, 39.632744, 20.355305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.989801, 39.329254, 20.159573>,  <21.093000, 39.147160, 20.042133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.989801, 39.329254, 20.159573>,  <20.817804, 39.632744, 20.355305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989801, 39.329254, 20.159573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163658, 0.598520, -0.784213,
		0.887875, 0.257124, 0.381531,
		0.429994, -0.758724, -0.489330,
		21.118799, 39.101639, 20.012774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470264, 39.947712, 20.134600>,  <20.817804, 39.632744, 20.355305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470264, 39.947712, 20.134600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.411514, 39.636181, 19.890678>,  <21.376265, 39.449265, 19.744326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.411514, 39.636181, 19.890678>,  <21.470264, 39.947712, 20.134600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411514, 39.636181, 19.890678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140607, 0.593789, -0.792240,
		0.979111, -0.202101, 0.022297,
		-0.146873, -0.778826, -0.609802,
		21.367453, 39.402534, 19.707737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.980677, 39.982826, 19.538090>,  <21.470264, 39.947712, 20.134600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.980677, 39.982826, 19.538090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.709665, 39.729702, 19.388153>,  <21.547058, 39.577827, 19.298191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.709665, 39.729702, 19.388153>,  <21.980677, 39.982826, 19.538090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709665, 39.729702, 19.388153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090436, 0.434102, -0.896313,
		0.729915, -0.641177, -0.236888,
		-0.677529, -0.632809, -0.374843,
		21.506407, 39.539860, 19.275700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230709, 39.719650, 18.889248>,  <21.980677, 39.982826, 19.538090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230709, 39.719650, 18.889248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.835737, 39.667233, 18.853901>,  <21.598755, 39.635780, 18.832693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.835737, 39.667233, 18.853901>,  <22.230709, 39.719650, 18.889248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835737, 39.667233, 18.853901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034887, 0.364607, -0.930508,
		0.154158, -0.921894, -0.355452,
		-0.987430, -0.131045, -0.088370,
		21.539509, 39.627918, 18.827391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.124401, 39.388355, 18.199730>,  <22.230709, 39.719650, 18.889248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.124401, 39.388355, 18.199730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.779846, 39.559994, 18.308460>,  <21.573112, 39.662975, 18.373699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.779846, 39.559994, 18.308460>,  <22.124401, 39.388355, 18.199730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.779846, 39.559994, 18.308460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153703, 0.289867, -0.944644,
		-0.484137, -0.855484, -0.183734,
		-0.861387, 0.429096, 0.271826,
		21.521431, 39.688725, 18.390007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.677933, 39.073387, 17.653179>,  <22.124401, 39.388355, 18.199730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.677933, 39.073387, 17.653179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473955, 39.381165, 17.807014>,  <21.351568, 39.565830, 17.899315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473955, 39.381165, 17.807014>,  <21.677933, 39.073387, 17.653179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473955, 39.381165, 17.807014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004796, 0.444536, -0.895748,
		-0.860195, -0.458625, -0.222998,
		-0.509943, 0.769448, 0.384587,
		21.320972, 39.612000, 17.922390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090433, 39.158775, 17.210526>,  <21.677933, 39.073387, 17.653179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090433, 39.158775, 17.210526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.146900, 39.502068, 17.407913>,  <21.180780, 39.708042, 17.526346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.146900, 39.502068, 17.407913>,  <21.090433, 39.158775, 17.210526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.146900, 39.502068, 17.407913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128209, 0.510110, -0.850500,
		-0.981649, 0.056796, 0.182044,
		0.141168, 0.858232, 0.493467,
		21.189251, 39.759537, 17.555954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776148, 39.575874, 16.840803>,  <21.090433, 39.158775, 17.210526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776148, 39.575874, 16.840803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.979107, 39.845463, 17.055580>,  <21.100883, 40.007217, 17.184446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.979107, 39.845463, 17.055580>,  <20.776148, 39.575874, 16.840803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979107, 39.845463, 17.055580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100786, 0.665250, -0.739787,
		-0.855797, 0.321251, 0.405474,
		0.507399, 0.673974, 0.536941,
		21.131327, 40.047653, 17.216663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451387, 40.148819, 16.714928>,  <20.776148, 39.575874, 16.840803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451387, 40.148819, 16.714928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819542, 40.248257, 16.835651>,  <21.040434, 40.307919, 16.908085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819542, 40.248257, 16.835651>,  <20.451387, 40.148819, 16.714928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819542, 40.248257, 16.835651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025139, 0.732649, -0.680142,
		-0.390202, 0.633581, 0.668070,
		0.920386, 0.248598, 0.301809,
		21.095657, 40.322838, 16.926193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483519, 40.930374, 16.755640>,  <20.451387, 40.148819, 16.714928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483519, 40.930374, 16.755640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.871342, 40.833897, 16.738735>,  <21.104036, 40.776012, 16.728592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.871342, 40.833897, 16.738735>,  <20.483519, 40.930374, 16.755640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871342, 40.833897, 16.738735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157961, 0.747951, -0.644684,
		0.187103, 0.618382, 0.763280,
		0.969557, -0.241191, -0.042264,
		21.162209, 40.761539, 16.726057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812273, 41.629566, 16.733774>,  <20.483519, 40.930374, 16.755640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812273, 41.629566, 16.733774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.088413, 41.362720, 16.621792>,  <21.254097, 41.202614, 16.554602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.088413, 41.362720, 16.621792>,  <20.812273, 41.629566, 16.733774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088413, 41.362720, 16.621792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286211, 0.607223, -0.741190,
		0.664454, 0.431555, 0.610133,
		0.690351, -0.667114, -0.279956,
		21.295519, 41.162586, 16.537806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334417, 42.037357, 16.566700>,  <20.812273, 41.629566, 16.733774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334417, 42.037357, 16.566700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.421495, 41.699112, 16.371742>,  <21.473742, 41.496166, 16.254768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.421495, 41.699112, 16.371742>,  <21.334417, 42.037357, 16.566700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.421495, 41.699112, 16.371742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409571, 0.532420, -0.740797,
		0.885924, -0.038354, 0.462243,
		0.217695, -0.845611, -0.487392,
		21.486803, 41.445427, 16.225525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063330, 42.138451, 16.318136>,  <21.334417, 42.037357, 16.566700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063330, 42.138451, 16.318136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.875000, 41.864464, 16.095734>,  <21.762001, 41.700073, 15.962292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.875000, 41.864464, 16.095734>,  <22.063330, 42.138451, 16.318136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.875000, 41.864464, 16.095734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292981, 0.473067, -0.830885,
		0.832157, -0.554102, -0.022050,
		-0.470826, -0.684967, -0.556007,
		21.733751, 41.658974, 15.928931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388186, 42.096962, 15.723076>,  <22.063330, 42.138451, 16.318136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388186, 42.096962, 15.723076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056101, 41.918674, 15.589162>,  <21.856850, 41.811703, 15.508813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056101, 41.918674, 15.589162>,  <22.388186, 42.096962, 15.723076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056101, 41.918674, 15.589162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240232, 0.255869, -0.936387,
		0.503026, -0.857826, -0.105350,
		-0.830213, -0.445718, -0.334786,
		21.807037, 41.784958, 15.488726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636961, 41.634590, 15.250428>,  <22.388186, 42.096962, 15.723076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636961, 41.634590, 15.250428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.250418, 41.682110, 15.159181>,  <22.018492, 41.710621, 15.104432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.250418, 41.682110, 15.159181>,  <22.636961, 41.634590, 15.250428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250418, 41.682110, 15.159181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247759, 0.191887, -0.949629,
		-0.069041, -0.974200, -0.214865,
		-0.966358, 0.118798, -0.228119,
		21.960510, 41.717751, 15.090745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604914, 41.239086, 14.588201>,  <22.636961, 41.634590, 15.250428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604914, 41.239086, 14.588201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.299002, 41.492226, 14.636554>,  <22.115454, 41.644108, 14.665565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.299002, 41.492226, 14.636554>,  <22.604914, 41.239086, 14.588201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299002, 41.492226, 14.636554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084774, 0.284831, -0.954822,
		-0.638689, -0.719982, -0.271482,
		-0.764781, 0.632849, 0.120883,
		22.069567, 41.682079, 14.672818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.401930, 27.023592, 20.288492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655956, 27.171017, 20.560036>,  <27.808372, 27.259472, 20.722961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655956, 27.171017, 20.560036>,  <27.401930, 27.023592, 20.288492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655956, 27.171017, 20.560036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349163, 0.920892, -0.173327,
		-0.689039, -0.126959, 0.713517,
		0.635067, 0.368563, 0.678860,
		27.846476, 27.281586, 20.763693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057425, 27.495533, 20.664337>,  <27.401930, 27.023592, 20.288492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057425, 27.495533, 20.664337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430096, 27.604042, 20.760990>,  <27.653698, 27.669147, 20.818981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430096, 27.604042, 20.760990>,  <27.057425, 27.495533, 20.664337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430096, 27.604042, 20.760990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245532, 0.960426, -0.131518,
		-0.267748, 0.063204, 0.961414,
		0.931679, 0.271271, 0.241633,
		27.709599, 27.685423, 20.833481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006847, 28.003605, 21.147221>,  <27.057425, 27.495533, 20.664337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006847, 28.003605, 21.147221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359306, 28.064537, 20.968166>,  <27.570782, 28.101097, 20.860733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359306, 28.064537, 20.968166>,  <27.006847, 28.003605, 21.147221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359306, 28.064537, 20.968166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274310, 0.935781, -0.221512,
		0.385146, 0.317975, 0.866345,
		0.881145, 0.152332, -0.447636,
		27.623650, 28.110237, 20.833876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192413, 28.599710, 21.382248>,  <27.006847, 28.003605, 21.147221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192413, 28.599710, 21.382248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439476, 28.563267, 21.069786>,  <27.587713, 28.541401, 20.882309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439476, 28.563267, 21.069786>,  <27.192413, 28.599710, 21.382248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439476, 28.563267, 21.069786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038796, 0.995587, -0.085446,
		0.785491, 0.022471, 0.618465,
		0.617656, -0.091111, -0.781153,
		27.624773, 28.535933, 20.835440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583282, 29.274836, 21.326099>,  <27.192413, 28.599710, 21.382248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583282, 29.274836, 21.326099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634029, 29.095428, 20.972210>,  <27.664478, 28.987783, 20.759876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634029, 29.095428, 20.972210>,  <27.583282, 29.274836, 21.326099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634029, 29.095428, 20.972210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023674, 0.890308, -0.454744,
		0.991637, 0.078638, 0.102333,
		0.126868, -0.448518, -0.884724,
		27.672091, 28.960873, 20.706793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073313, 29.709421, 20.969391>,  <27.583282, 29.274836, 21.326099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073313, 29.709421, 20.969391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862738, 29.509487, 20.694283>,  <27.736393, 29.389526, 20.529217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862738, 29.509487, 20.694283>,  <28.073313, 29.709421, 20.969391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862738, 29.509487, 20.694283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268020, 0.865256, -0.423672,
		0.806863, -0.038701, -0.589470,
		-0.526438, -0.499835, -0.687770,
		27.704805, 29.359537, 20.487951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277185, 30.031317, 20.307293>,  <28.073313, 29.709421, 20.969391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277185, 30.031317, 20.307293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942196, 29.843300, 20.195797>,  <27.741201, 29.730490, 20.128901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942196, 29.843300, 20.195797>,  <28.277185, 30.031317, 20.307293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942196, 29.843300, 20.195797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366121, 0.861272, -0.352371,
		0.405700, -0.193049, -0.893387,
		-0.837474, -0.470044, -0.278738,
		27.690954, 29.702286, 20.112175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095558, 30.185417, 19.575333>,  <28.277185, 30.031317, 20.307293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095558, 30.185417, 19.575333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764879, 30.089985, 19.779156>,  <27.566471, 30.032726, 19.901449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764879, 30.089985, 19.779156>,  <28.095558, 30.185417, 19.575333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764879, 30.089985, 19.779156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410304, 0.875328, -0.255834,
		-0.384991, -0.420571, -0.821524,
		-0.826699, -0.238581, 0.509556,
		27.516869, 30.018412, 19.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609173, 30.396147, 19.118088>,  <28.095558, 30.185417, 19.575333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609173, 30.396147, 19.118088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403067, 30.333233, 19.455078>,  <27.279404, 30.295485, 19.657272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403067, 30.333233, 19.455078>,  <27.609173, 30.396147, 19.118088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403067, 30.333233, 19.455078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542820, 0.820597, -0.178795,
		-0.663211, -0.549439, -0.508200,
		-0.515265, -0.157283, 0.842475,
		27.248487, 30.286049, 19.707821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793270, 30.509569, 18.971113>,  <27.609173, 30.396147, 19.118088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793270, 30.509569, 18.971113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819618, 30.525692, 19.369919>,  <26.835426, 30.535366, 19.609201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819618, 30.525692, 19.369919>,  <26.793270, 30.509569, 18.971113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819618, 30.525692, 19.369919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660302, 0.750883, 0.013268,
		-0.748106, -0.659204, 0.076075,
		0.065870, 0.040307, 0.997014,
		26.839378, 30.537785, 19.669024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126074, 30.552588, 19.194641>,  <26.793270, 30.509569, 18.971113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126074, 30.552588, 19.194641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361874, 30.692848, 19.485718>,  <26.503353, 30.777004, 19.660364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361874, 30.692848, 19.485718>,  <26.126074, 30.552588, 19.194641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361874, 30.692848, 19.485718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590433, 0.801835, 0.091927,
		-0.551253, -0.483843, 0.679718,
		0.589500, 0.350653, 0.727690,
		26.538723, 30.798044, 19.704025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808157, 30.899670, 19.850033>,  <26.126074, 30.552588, 19.194641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808157, 30.899670, 19.850033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166910, 31.062439, 19.780735>,  <26.382162, 31.160101, 19.739157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166910, 31.062439, 19.780735>,  <25.808157, 30.899670, 19.850033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166910, 31.062439, 19.780735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412926, 0.910763, 0.001533,
		0.158407, 0.070162, 0.984878,
		0.896883, 0.406925, -0.173243,
		26.435976, 31.184517, 19.728762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058750, 31.454811, 20.344271>,  <25.808157, 30.899670, 19.850033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058750, 31.454811, 20.344271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225487, 31.527699, 19.988060>,  <26.325529, 31.571432, 19.774334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225487, 31.527699, 19.988060>,  <26.058750, 31.454811, 20.344271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225487, 31.527699, 19.988060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384775, 0.922969, 0.008750,
		0.823522, 0.339005, 0.454847,
		0.416843, 0.182220, -0.890527,
		26.350540, 31.582365, 19.720901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021959, 32.138870, 20.369015>,  <26.058750, 31.454811, 20.344271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021959, 32.138870, 20.369015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181732, 32.062366, 20.010380>,  <26.277596, 32.016464, 19.795198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181732, 32.062366, 20.010380>,  <26.021959, 32.138870, 20.369015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181732, 32.062366, 20.010380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085583, 0.981503, -0.171250,
		0.912758, -0.008330, 0.408415,
		0.399434, -0.191263, -0.896588,
		26.301563, 32.004986, 19.741404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162725, 32.062130, 21.112867>,  <26.021959, 32.138870, 20.369015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162725, 32.062130, 21.112867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882580, 31.974094, 21.384472>,  <25.714493, 31.921274, 21.547434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882580, 31.974094, 21.384472>,  <26.162725, 32.062130, 21.112867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882580, 31.974094, 21.384472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710912, -0.300388, 0.635902,
		0.064013, 0.928078, 0.366842,
		-0.700362, -0.220086, 0.679011,
		25.672472, 31.908068, 21.588175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507925, 32.205540, 21.692247>,  <26.162725, 32.062130, 21.112867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507925, 32.205540, 21.692247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183861, 32.005730, 21.814957>,  <25.989422, 31.885843, 21.888582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183861, 32.005730, 21.814957>,  <26.507925, 32.205540, 21.692247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183861, 32.005730, 21.814957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516555, -0.360931, 0.776466,
		-0.277143, 0.787528, 0.550446,
		-0.810162, -0.499528, 0.306772,
		25.940813, 31.855871, 21.906988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445982, 32.317558, 22.443779>,  <26.507925, 32.205540, 21.692247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445982, 32.317558, 22.443779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261215, 31.977070, 22.344139>,  <26.150356, 31.772776, 22.284355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261215, 31.977070, 22.344139>,  <26.445982, 32.317558, 22.443779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261215, 31.977070, 22.344139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379391, -0.443502, 0.812015,
		-0.801684, 0.280575, 0.527807,
		-0.461915, -0.851225, -0.249101,
		26.122641, 31.721703, 22.269409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238369, 32.033833, 23.151520>,  <26.445982, 32.317558, 22.443779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238369, 32.033833, 23.151520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197306, 31.732742, 22.891407>,  <26.172667, 31.552088, 22.735340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197306, 31.732742, 22.891407>,  <26.238369, 32.033833, 23.151520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197306, 31.732742, 22.891407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309875, -0.645405, 0.698161,
		-0.945219, -0.129832, 0.299508,
		-0.102661, -0.752725, -0.650281,
		26.166508, 31.506926, 22.696323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031031, 31.664654, 23.584002>,  <26.238369, 32.033833, 23.151520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031031, 31.664654, 23.584002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151039, 31.437721, 23.277245>,  <26.223043, 31.301561, 23.093191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151039, 31.437721, 23.277245>,  <26.031031, 31.664654, 23.584002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151039, 31.437721, 23.277245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267894, -0.721466, 0.638530,
		-0.915544, -0.397018, -0.064470,
		0.300021, -0.567331, -0.766892,
		26.241045, 31.267523, 23.047176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656805, 31.076260, 23.582628>,  <26.031031, 31.664654, 23.584002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656805, 31.076260, 23.582628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004633, 31.007339, 23.397518>,  <26.213329, 30.965988, 23.286451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004633, 31.007339, 23.397518>,  <25.656805, 31.076260, 23.582628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004633, 31.007339, 23.397518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174900, -0.768939, 0.614933,
		-0.461800, -0.615667, -0.638510,
		0.869570, -0.172301, -0.462776,
		26.265503, 30.955648, 23.258686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579880, 30.288288, 23.440578>,  <25.656805, 31.076260, 23.582628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579880, 30.288288, 23.440578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963272, 30.379723, 23.372387>,  <26.193308, 30.434584, 23.331472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963272, 30.379723, 23.372387>,  <25.579880, 30.288288, 23.440578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963272, 30.379723, 23.372387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282979, -0.836190, 0.469797,
		-0.035163, -0.498533, -0.866157,
		0.958481, 0.228585, -0.170477,
		26.250816, 30.448298, 23.321243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894390, 29.708494, 23.121540>,  <25.579880, 30.288288, 23.440578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894390, 29.708494, 23.121540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192629, 29.913628, 23.291756>,  <26.371572, 30.036709, 23.393885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192629, 29.913628, 23.291756>,  <25.894390, 29.708494, 23.121540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192629, 29.913628, 23.291756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371066, -0.849912, 0.374111,
		0.553529, -0.121033, -0.823988,
		0.745598, 0.512835, 0.425540,
		26.416307, 30.067478, 23.419418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483093, 29.358742, 22.984083>,  <25.894390, 29.708494, 23.121540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483093, 29.358742, 22.984083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580423, 29.594242, 23.292412>,  <26.638821, 29.735542, 23.477409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580423, 29.594242, 23.292412>,  <26.483093, 29.358742, 22.984083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580423, 29.594242, 23.292412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508102, -0.754310, 0.415750,
		0.826211, 0.290493, -0.482688,
		0.243324, 0.588752, 0.770820,
		26.653421, 29.770868, 23.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113945, 29.287231, 23.038389>,  <26.483093, 29.358742, 22.984083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113945, 29.287231, 23.038389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017431, 29.426941, 23.400558>,  <26.959524, 29.510767, 23.617861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017431, 29.426941, 23.400558>,  <27.113945, 29.287231, 23.038389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017431, 29.426941, 23.400558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507252, -0.750001, 0.424493,
		0.827332, 0.561700, 0.003792,
		-0.241282, 0.349273, 0.905423,
		26.945047, 29.531723, 23.672186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714844, 29.315426, 23.345337>,  <27.113945, 29.287231, 23.038389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714844, 29.315426, 23.345337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447313, 29.310680, 23.642666>,  <27.286795, 29.307833, 23.821064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447313, 29.310680, 23.642666>,  <27.714844, 29.315426, 23.345337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447313, 29.310680, 23.642666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534735, -0.702296, 0.469934,
		0.516460, 0.711786, 0.476057,
		-0.668826, -0.011862, 0.743325,
		27.246666, 29.307121, 23.865664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106903, 29.287977, 23.952370>,  <27.714844, 29.315426, 23.345337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106903, 29.287977, 23.952370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745665, 29.157932, 24.064594>,  <27.528921, 29.079905, 24.131929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745665, 29.157932, 24.064594>,  <28.106903, 29.287977, 23.952370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745665, 29.157932, 24.064594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426627, -0.753839, 0.499716,
		0.049034, 0.570988, 0.819493,
		-0.903098, -0.325114, 0.280563,
		27.474735, 29.060398, 24.148764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272007, 28.862547, 24.493055>,  <28.106903, 29.287977, 23.952370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272007, 28.862547, 24.493055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900673, 28.743134, 24.404446>,  <27.677872, 28.671486, 24.351280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900673, 28.743134, 24.404446>,  <28.272007, 28.862547, 24.493055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900673, 28.743134, 24.404446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246237, -0.940239, 0.235195,
		-0.278500, 0.163792, 0.946367,
		-0.928335, -0.298533, -0.221524,
		27.622173, 28.653574, 24.337988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043591, 28.457079, 25.030365>,  <28.272007, 28.862547, 24.493055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043591, 28.457079, 25.030365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792854, 28.347225, 24.738708>,  <27.642412, 28.281313, 24.563715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792854, 28.347225, 24.738708>,  <28.043591, 28.457079, 25.030365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792854, 28.347225, 24.738708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121709, -0.958845, 0.256523,
		-0.769582, 0.072056, 0.634469,
		-0.626841, -0.274636, -0.729140,
		27.604801, 28.264833, 24.519966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609596, 28.710623, 25.671495>,  <28.043591, 28.457079, 25.030365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609596, 28.710623, 25.671495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776627, 28.754234, 26.032326>,  <27.876844, 28.780401, 26.248823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776627, 28.754234, 26.032326>,  <27.609596, 28.710623, 25.671495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776627, 28.754234, 26.032326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325761, 0.908816, -0.260642,
		-0.848239, 0.402699, 0.343983,
		0.417577, 0.109030, 0.902076,
		27.901899, 28.786943, 26.302948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401028, 29.358896, 25.941534>,  <27.609596, 28.710623, 25.671495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401028, 29.358896, 25.941534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753363, 29.272537, 26.110062>,  <27.964764, 29.220722, 26.211178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753363, 29.272537, 26.110062>,  <27.401028, 29.358896, 25.941534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753363, 29.272537, 26.110062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385790, 0.843158, -0.374501,
		-0.274386, 0.492416, 0.825977,
		0.880840, -0.215896, 0.421320,
		28.017614, 29.207767, 26.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533493, 29.918716, 26.412148>,  <27.401028, 29.358896, 25.941534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533493, 29.918716, 26.412148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889391, 29.746529, 26.351418>,  <28.102930, 29.643215, 26.314980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889391, 29.746529, 26.351418>,  <27.533493, 29.918716, 26.412148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889391, 29.746529, 26.351418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357565, 0.864039, -0.354378,
		0.283732, 0.261019, 0.922695,
		0.889744, -0.430471, -0.151824,
		28.156315, 29.617388, 26.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976070, 30.480820, 26.490574>,  <27.533493, 29.918716, 26.412148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976070, 30.480820, 26.490574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194973, 30.202797, 26.304066>,  <28.326315, 30.035984, 26.192162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194973, 30.202797, 26.304066>,  <27.976070, 30.480820, 26.490574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194973, 30.202797, 26.304066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382134, 0.703138, -0.599643,
		0.744636, 0.149982, 0.650402,
		0.547257, -0.695056, -0.466269,
		28.359150, 29.994280, 26.164185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529331, 30.880445, 26.270622>,  <27.976070, 30.480820, 26.490574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529331, 30.880445, 26.270622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586660, 30.565231, 26.031136>,  <28.621058, 30.376102, 25.887444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586660, 30.565231, 26.031136>,  <28.529331, 30.880445, 26.270622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586660, 30.565231, 26.031136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559430, 0.563546, -0.607827,
		0.816393, -0.247825, 0.521619,
		0.143321, -0.788035, -0.598715,
		28.629656, 30.328821, 25.851521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330297, 30.759867, 26.176237>,  <28.529331, 30.880445, 26.270622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330297, 30.759867, 26.176237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118551, 30.603420, 25.875092>,  <28.991505, 30.509552, 25.694405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118551, 30.603420, 25.875092>,  <29.330297, 30.759867, 26.176237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118551, 30.603420, 25.875092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549735, 0.517767, -0.655521,
		0.646193, -0.760884, -0.059076,
		-0.529364, -0.391117, -0.752863,
		28.959742, 30.486086, 25.649233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825012, 30.552345, 25.679785>,  <29.330297, 30.759867, 26.176237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825012, 30.552345, 25.679785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491144, 30.582928, 25.461617>,  <29.290823, 30.601278, 25.330715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491144, 30.582928, 25.461617>,  <29.825012, 30.552345, 25.679785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491144, 30.582928, 25.461617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527573, 0.395282, -0.751944,
		0.158104, -0.915372, -0.370265,
		-0.834668, 0.076457, -0.545421,
		29.240744, 30.605865, 25.297991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045263, 30.350491, 25.010723>,  <29.825012, 30.552345, 25.679785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045263, 30.350491, 25.010723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699865, 30.529755, 24.918175>,  <29.492626, 30.637314, 24.862646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699865, 30.529755, 24.918175>,  <30.045263, 30.350491, 25.010723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699865, 30.529755, 24.918175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393806, 0.312480, -0.864450,
		-0.315115, -0.837560, -0.446313,
		-0.863493, 0.448162, -0.231369,
		29.440817, 30.664204, 24.848764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018646, 30.198465, 24.258400>,  <30.045263, 30.350491, 25.010723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018646, 30.198465, 24.258400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739496, 30.474144, 24.336353>,  <29.572006, 30.639551, 24.383125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739496, 30.474144, 24.336353>,  <30.018646, 30.198465, 24.258400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739496, 30.474144, 24.336353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198774, 0.447784, -0.871767,
		-0.688082, -0.569649, -0.449492,
		-0.697876, 0.689195, 0.194881,
		29.530132, 30.680902, 24.394817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514845, 30.165443, 23.707481>,  <30.018646, 30.198465, 24.258400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514845, 30.165443, 23.707481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500431, 30.527660, 23.876572>,  <29.491783, 30.744989, 23.978025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500431, 30.527660, 23.876572>,  <29.514845, 30.165443, 23.707481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500431, 30.527660, 23.876572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091456, 0.424215, -0.900931,
		-0.995157, 0.006195, -0.098104,
		-0.036036, 0.905540, 0.422727,
		29.489620, 30.799322, 24.003389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058819, 30.507906, 23.305946>,  <29.514845, 30.165443, 23.707481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058819, 30.507906, 23.305946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276674, 30.788761, 23.489410>,  <29.407389, 30.957273, 23.599489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276674, 30.788761, 23.489410>,  <29.058819, 30.507906, 23.305946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276674, 30.788761, 23.489410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096733, 0.490646, -0.865973,
		-0.833072, 0.516012, 0.199306,
		0.544641, 0.702139, 0.458659,
		29.440067, 30.999403, 23.627008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826929, 31.195095, 22.999016>,  <29.058819, 30.507906, 23.305946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826929, 31.195095, 22.999016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197718, 31.214916, 23.147755>,  <29.420191, 31.226809, 23.236998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197718, 31.214916, 23.147755>,  <28.826929, 31.195095, 22.999016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197718, 31.214916, 23.147755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300154, 0.496603, -0.814428,
		-0.225016, 0.866562, 0.445464,
		0.926971, 0.049551, 0.371846,
		29.475809, 31.229782, 23.259308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.067207, 25.174894, 27.319885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.440712, 25.267998, 27.428635>,  <27.664814, 25.323860, 27.493885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.440712, 25.267998, 27.428635>,  <27.067207, 25.174894, 27.319885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440712, 25.267998, 27.428635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225049, 0.972519, -0.059665,
		-0.278292, -0.005473, 0.960481,
		0.933760, 0.232760, 0.271876,
		27.720840, 25.337826, 27.510197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942480, 25.794260, 27.812689>,  <27.067207, 25.174894, 27.319885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942480, 25.794260, 27.812689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.329567, 25.790432, 27.711945>,  <27.561819, 25.788136, 27.651499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.329567, 25.790432, 27.711945>,  <26.942480, 25.794260, 27.812689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329567, 25.790432, 27.711945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038349, 0.982052, -0.184672,
		0.249106, 0.188368, 0.949981,
		0.967717, -0.009572, -0.251858,
		27.619883, 25.787561, 27.636387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231752, 26.349977, 28.224295>,  <26.942480, 25.794260, 27.812689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231752, 26.349977, 28.224295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.503050, 26.276096, 27.939796>,  <27.665829, 26.231768, 27.769098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.503050, 26.276096, 27.939796>,  <27.231752, 26.349977, 28.224295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503050, 26.276096, 27.939796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061236, 0.978735, -0.195775,
		0.732281, 0.089230, 0.675131,
		0.678243, -0.184705, -0.711245,
		27.706522, 26.220684, 27.726423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852312, 26.788935, 28.321074>,  <27.231752, 26.349977, 28.224295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852312, 26.788935, 28.321074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.852856, 26.701088, 27.930840>,  <27.853182, 26.648380, 27.696699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.852856, 26.701088, 27.930840>,  <27.852312, 26.788935, 28.321074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852856, 26.701088, 27.930840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214677, 0.952904, -0.214214,
		0.976684, -0.209145, 0.048443,
		0.001359, -0.219619, -0.975585,
		27.853264, 26.635202, 27.638165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415741, 27.165352, 28.095558>,  <27.852312, 26.788935, 28.321074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415741, 27.165352, 28.095558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.185171, 27.087803, 27.778030>,  <28.046829, 27.041273, 27.587513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.185171, 27.087803, 27.778030>,  <28.415741, 27.165352, 28.095558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185171, 27.087803, 27.778030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283786, 0.863489, -0.416955,
		0.766289, -0.465618, -0.442719,
		-0.576425, -0.193871, -0.793819,
		28.012243, 27.029642, 27.539885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753775, 27.471441, 27.538584>,  <28.415741, 27.165352, 28.095558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753775, 27.471441, 27.538584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.400152, 27.415344, 27.360249>,  <28.187979, 27.381685, 27.253246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.400152, 27.415344, 27.360249>,  <28.753775, 27.471441, 27.538584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400152, 27.415344, 27.360249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210221, 0.732659, -0.647316,
		0.417430, -0.665990, -0.618231,
		-0.884059, -0.140244, -0.445838,
		28.134935, 27.373270, 27.226498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865128, 27.521893, 26.821247>,  <28.753775, 27.471441, 27.538584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865128, 27.521893, 26.821247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.473089, 27.587296, 26.866283>,  <28.237865, 27.626537, 26.893305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.473089, 27.587296, 26.866283>,  <28.865128, 27.521893, 26.821247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473089, 27.587296, 26.866283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070953, 0.818186, -0.570559,
		-0.185411, -0.551214, -0.813502,
		-0.980096, 0.163508, 0.112591,
		28.179060, 27.636349, 26.900061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616646, 27.743284, 26.176367>,  <28.865128, 27.521893, 26.821247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616646, 27.743284, 26.176367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.326071, 27.867676, 26.421505>,  <28.151726, 27.942310, 26.568588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.326071, 27.867676, 26.421505>,  <28.616646, 27.743284, 26.176367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326071, 27.867676, 26.421505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123349, 0.818277, -0.561433,
		-0.676073, -0.483440, -0.556067,
		-0.726437, 0.310979, 0.612848,
		28.108139, 27.960970, 26.605360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012604, 28.013489, 25.774988>,  <28.616646, 27.743284, 26.176367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012604, 28.013489, 25.774988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.984484, 28.195732, 26.129948>,  <27.967611, 28.305079, 26.342924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.984484, 28.195732, 26.129948>,  <28.012604, 28.013489, 25.774988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984484, 28.195732, 26.129948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066298, 0.885501, -0.459884,
		-0.995320, -0.091163, -0.032045,
		-0.070301, 0.455607, 0.887401,
		27.963394, 28.332415, 26.396168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266994, 28.099180, 25.464767>,  <28.012604, 28.013489, 25.774988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266994, 28.099180, 25.464767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.261889, 27.977821, 25.083656>,  <27.258825, 27.905006, 24.854990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.261889, 27.977821, 25.083656>,  <27.266994, 28.099180, 25.464767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261889, 27.977821, 25.083656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122288, -0.946177, 0.299655,
		-0.992413, -0.112688, 0.049181,
		-0.012767, -0.303396, -0.952779,
		27.258059, 27.886803, 24.797823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772326, 27.577711, 25.509514>,  <27.266994, 28.099180, 25.464767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772326, 27.577711, 25.509514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.012026, 27.516464, 25.195202>,  <27.155846, 27.479715, 25.006615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.012026, 27.516464, 25.195202>,  <26.772326, 27.577711, 25.509514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012026, 27.516464, 25.195202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005568, -0.980718, 0.195351,
		-0.800542, -0.121439, -0.586843,
		0.599250, -0.153119, -0.785782,
		27.191801, 27.470528, 24.959467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444950, 27.041861, 25.097818>,  <26.772326, 27.577711, 25.509514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444950, 27.041861, 25.097818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.820427, 27.033394, 24.960175>,  <27.045713, 27.028313, 24.877588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.820427, 27.033394, 24.960175>,  <26.444950, 27.041861, 25.097818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820427, 27.033394, 24.960175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026207, -0.999607, -0.009995,
		-0.343764, 0.018400, -0.938876,
		0.938690, -0.021169, -0.344111,
		27.102034, 27.027042, 24.856941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438492, 26.552050, 24.558510>,  <26.444950, 27.041861, 25.097818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438492, 26.552050, 24.558510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.826567, 26.572876, 24.653191>,  <27.059412, 26.585371, 24.709999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.826567, 26.572876, 24.653191>,  <26.438492, 26.552050, 24.558510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826567, 26.572876, 24.653191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061665, -0.997541, -0.033324,
		0.234383, 0.046926, -0.971011,
		0.970187, 0.052066, 0.236700,
		27.117622, 26.588495, 24.724201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729269, 26.068216, 24.090651>,  <26.438492, 26.552050, 24.558510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729269, 26.068216, 24.090651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.001020, 26.126736, 24.378273>,  <27.164072, 26.161848, 24.550846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.001020, 26.126736, 24.378273>,  <26.729269, 26.068216, 24.090651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001020, 26.126736, 24.378273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106136, -0.989211, 0.100983,
		0.726070, 0.007712, -0.687578,
		0.679381, 0.146298, 0.719055,
		27.204834, 26.170626, 24.593988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241999, 25.664043, 23.891943>,  <26.729269, 26.068216, 24.090651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241999, 25.664043, 23.891943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.339613, 25.740326, 24.272274>,  <27.398182, 25.786097, 24.500473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.339613, 25.740326, 24.272274>,  <27.241999, 25.664043, 23.891943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339613, 25.740326, 24.272274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471201, -0.880270, 0.055619,
		0.847594, 0.434459, -0.304679,
		0.244035, 0.190708, 0.950830,
		27.412823, 25.797539, 24.557524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022387, 25.530300, 23.975803>,  <27.241999, 25.664043, 23.891943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022387, 25.530300, 23.975803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.836357, 25.477203, 24.325909>,  <27.724739, 25.445345, 24.535973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.836357, 25.477203, 24.325909>,  <28.022387, 25.530300, 23.975803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836357, 25.477203, 24.325909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492044, -0.860670, 0.130921,
		0.735934, 0.491556, 0.465590,
		-0.465074, -0.132742, 0.875263,
		27.696835, 25.437382, 24.588488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576832, 25.411617, 24.506563>,  <28.022387, 25.530300, 23.975803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576832, 25.411617, 24.506563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.233431, 25.261074, 24.645893>,  <28.027391, 25.170748, 24.729490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.233431, 25.261074, 24.645893>,  <28.576832, 25.411617, 24.506563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233431, 25.261074, 24.645893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383831, -0.922036, -0.050234,
		0.340073, 0.090572, 0.936027,
		-0.858501, -0.376360, 0.348324,
		27.975880, 25.148167, 24.750391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847412, 24.919994, 24.993536>,  <28.576832, 25.411617, 24.506563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847412, 24.919994, 24.993536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.469810, 24.794930, 24.951393>,  <28.243250, 24.719891, 24.926107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.469810, 24.794930, 24.951393>,  <28.847412, 24.919994, 24.993536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469810, 24.794930, 24.951393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321300, -0.943744, -0.078187,
		-0.074986, -0.107661, 0.991356,
		-0.944004, -0.312660, -0.105359,
		28.186609, 24.701132, 24.919785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869349, 24.284245, 25.395962>,  <28.847412, 24.919994, 24.993536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869349, 24.284245, 25.395962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.546646, 24.264679, 25.160419>,  <28.353024, 24.252939, 25.019094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.546646, 24.264679, 25.160419>,  <28.869349, 24.284245, 25.395962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546646, 24.264679, 25.160419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088294, -0.995358, -0.038287,
		-0.584249, -0.082881, 0.807332,
		-0.806758, -0.048913, -0.588855,
		28.304619, 24.250006, 24.983763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534578, 23.654099, 25.685675>,  <28.869349, 24.284245, 25.395962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534578, 23.654099, 25.685675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.361567, 23.707211, 25.328960>,  <28.257759, 23.739079, 25.114931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.361567, 23.707211, 25.328960>,  <28.534578, 23.654099, 25.685675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361567, 23.707211, 25.328960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055997, -0.983231, -0.173556,
		-0.899878, -0.125006, 0.417843,
		-0.432532, 0.132781, -0.891788,
		28.231808, 23.747046, 25.061424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211706, 23.061745, 25.565680>,  <28.534578, 23.654099, 25.685675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211706, 23.061745, 25.565680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.231195, 23.212719, 25.195778>,  <28.242889, 23.303303, 24.973837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.231195, 23.212719, 25.195778>,  <28.211706, 23.061745, 25.565680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231195, 23.212719, 25.195778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014140, -0.926021, -0.377209,
		-0.998712, 0.005303, -0.050456,
		0.048723, 0.377436, -0.924753,
		28.245813, 23.325951, 24.918352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694864, 22.704090, 25.158737>,  <28.211706, 23.061745, 25.565680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694864, 22.704090, 25.158737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.981897, 22.849735, 24.921249>,  <28.154118, 22.937122, 24.778757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.981897, 22.849735, 24.921249>,  <27.694864, 22.704090, 25.158737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981897, 22.849735, 24.921249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114365, -0.902490, -0.415251,
		-0.687022, 0.230075, -0.689251,
		0.717581, 0.364112, -0.593717,
		28.197172, 22.958969, 24.743134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479317, 22.659210, 24.469236>,  <27.694864, 22.704090, 25.158737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479317, 22.659210, 24.469236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.879013, 22.655685, 24.454041>,  <28.118830, 22.653570, 24.444923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.879013, 22.655685, 24.454041>,  <27.479317, 22.659210, 24.469236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879013, 22.655685, 24.454041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021190, -0.940471, -0.339213,
		-0.032741, 0.339760, -0.939942,
		0.999239, -0.008811, -0.037991,
		28.178785, 22.653042, 24.442644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.612480, 23.332708, 24.735422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215832, 23.288330, 24.708954>,  <32.977844, 23.261703, 24.693073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215832, 23.288330, 24.708954>,  <33.612480, 23.332708, 24.735422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215832, 23.288330, 24.708954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044352, 0.773488, -0.632257,
		0.121328, -0.624025, -0.771927,
		-0.991621, -0.110948, -0.066169,
		32.918346, 23.255045, 24.689102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467232, 23.550756, 24.075424>,  <33.612480, 23.332708, 24.735422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467232, 23.550756, 24.075424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.105305, 23.563740, 24.245251>,  <32.888149, 23.571529, 24.347147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.105305, 23.563740, 24.245251>,  <33.467232, 23.550756, 24.075424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105305, 23.563740, 24.245251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244682, 0.776396, -0.580810,
		-0.348484, -0.629409, -0.694552,
		-0.904814, 0.032459, 0.424567,
		32.833858, 23.573477, 24.372622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029526, 23.554476, 23.536253>,  <33.467232, 23.550756, 24.075424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029526, 23.554476, 23.536253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780331, 23.674030, 23.825405>,  <32.630814, 23.745762, 23.998898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780331, 23.674030, 23.825405>,  <33.029526, 23.554476, 23.536253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780331, 23.674030, 23.825405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410228, 0.662016, -0.627254,
		-0.666036, -0.687316, -0.289814,
		-0.622984, 0.298884, 0.722883,
		32.593437, 23.763695, 24.042271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400639, 23.645670, 23.247494>,  <33.029526, 23.554476, 23.536253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400639, 23.645670, 23.247494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403908, 23.872612, 23.576866>,  <32.405869, 24.008778, 23.774490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403908, 23.872612, 23.576866>,  <32.400639, 23.645670, 23.247494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403908, 23.872612, 23.576866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514246, 0.708609, -0.483140,
		-0.857604, -0.419500, 0.297550,
		0.008170, 0.567356, 0.823432,
		32.406357, 24.042818, 23.823896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693617, 24.002712, 23.247286>,  <32.400639, 23.645670, 23.247494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693617, 24.002712, 23.247286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.952963, 24.197929, 23.481018>,  <32.108570, 24.315060, 23.621258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.952963, 24.197929, 23.481018>,  <31.693617, 24.002712, 23.247286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952963, 24.197929, 23.481018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333516, 0.872019, -0.358260,
		-0.684391, 0.037400, 0.728155,
		0.648364, 0.488041, 0.584329,
		32.147472, 24.344341, 23.656317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340784, 24.473446, 23.373957>,  <31.693617, 24.002712, 23.247286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340784, 24.473446, 23.373957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706656, 24.604584, 23.468513>,  <31.926178, 24.683266, 23.525248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706656, 24.604584, 23.468513>,  <31.340784, 24.473446, 23.373957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706656, 24.604584, 23.468513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250560, 0.918855, -0.304835,
		-0.317148, 0.219596, 0.922602,
		0.914679, 0.327845, 0.236391,
		31.981060, 24.702938, 23.539431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271767, 25.137941, 23.838163>,  <31.340784, 24.473446, 23.373957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271767, 25.137941, 23.838163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.644365, 25.143684, 23.692776>,  <31.867924, 25.147129, 23.605543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.644365, 25.143684, 23.692776>,  <31.271767, 25.137941, 23.838163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644365, 25.143684, 23.692776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084294, 0.980541, -0.177296,
		0.353853, 0.195789, 0.914579,
		0.931495, 0.014357, -0.363471,
		31.923813, 25.147991, 23.583735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509327, 25.866852, 23.939632>,  <31.271767, 25.137941, 23.838163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509327, 25.866852, 23.939632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769640, 25.721924, 23.672737>,  <31.925827, 25.634968, 23.512600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769640, 25.721924, 23.672737>,  <31.509327, 25.866852, 23.939632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769640, 25.721924, 23.672737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043039, 0.894987, -0.444012,
		0.758045, 0.260237, 0.598034,
		0.650781, -0.362320, -0.667240,
		31.964874, 25.613228, 23.472565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048389, 26.326319, 24.022476>,  <31.509327, 25.866852, 23.939632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048389, 26.326319, 24.022476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059925, 26.132809, 23.672588>,  <32.066845, 26.016703, 23.462656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059925, 26.132809, 23.672588>,  <32.048389, 26.326319, 24.022476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059925, 26.132809, 23.672588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146824, 0.867640, -0.475020,
		0.988742, -0.114731, 0.096050,
		0.028837, -0.483775, -0.874717,
		32.068577, 25.987677, 23.410173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684025, 26.613850, 23.590534>,  <32.048389, 26.326319, 24.022476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684025, 26.613850, 23.590534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430855, 26.426159, 23.344208>,  <32.278954, 26.313545, 23.196413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430855, 26.426159, 23.344208>,  <32.684025, 26.613850, 23.590534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430855, 26.426159, 23.344208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115110, 0.729537, -0.674185,
		0.765603, -0.497599, -0.407734,
		-0.632931, -0.469224, -0.615814,
		32.240974, 26.285391, 23.159464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949532, 26.848234, 23.032463>,  <32.684025, 26.613850, 23.590534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949532, 26.848234, 23.032463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608665, 26.694336, 22.890598>,  <32.404144, 26.601997, 22.805479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608665, 26.694336, 22.890598>,  <32.949532, 26.848234, 23.032463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608665, 26.694336, 22.890598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101520, 0.786455, -0.609247,
		0.513330, -0.483174, -0.709249,
		-0.852166, -0.384748, -0.354660,
		32.353016, 26.578911, 22.784201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934689, 26.929411, 22.342299>,  <32.949532, 26.848234, 23.032463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934689, 26.929411, 22.342299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544243, 26.879078, 22.413147>,  <32.309975, 26.848877, 22.455656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544243, 26.879078, 22.413147>,  <32.934689, 26.929411, 22.342299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544243, 26.879078, 22.413147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207486, 0.781748, -0.588065,
		-0.064465, -0.610767, -0.789182,
		-0.976112, -0.125835, 0.177121,
		32.251408, 26.841328, 22.466284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610435, 26.931665, 21.690107>,  <32.934689, 26.929411, 22.342299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610435, 26.931665, 21.690107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354515, 27.058899, 21.969955>,  <32.200962, 27.135239, 22.137865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354515, 27.058899, 21.969955>,  <32.610435, 26.931665, 21.690107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354515, 27.058899, 21.969955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049122, 0.891543, -0.450265,
		-0.766965, -0.322449, -0.554789,
		-0.639806, 0.318085, 0.699622,
		32.162575, 27.154325, 22.179842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177868, 27.440752, 21.321121>,  <32.610435, 26.931665, 21.690107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177868, 27.440752, 21.321121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126919, 27.503345, 21.712894>,  <32.096348, 27.540901, 21.947958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126919, 27.503345, 21.712894>,  <32.177868, 27.440752, 21.321121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126919, 27.503345, 21.712894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158055, 0.971655, -0.175796,
		-0.979180, -0.177197, -0.099032,
		-0.127375, 0.156484, 0.979433,
		32.088707, 27.550291, 22.006723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466730, 27.214043, 21.175301>,  <32.177868, 27.440752, 21.321121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466730, 27.214043, 21.175301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312643, 27.134193, 20.814911>,  <31.220190, 27.086283, 20.598677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312643, 27.134193, 20.814911>,  <31.466730, 27.214043, 21.175301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312643, 27.134193, 20.814911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156668, -0.976297, 0.149329,
		-0.909429, -0.083630, 0.407363,
		-0.385219, -0.199625, -0.900975,
		31.197077, 27.074306, 20.544619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963051, 26.662413, 21.268276>,  <31.466730, 27.214043, 21.175301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963051, 26.662413, 21.268276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.072336, 26.654583, 20.883575>,  <31.137907, 26.649885, 20.652754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.072336, 26.654583, 20.883575>,  <30.963051, 26.662413, 21.268276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072336, 26.654583, 20.883575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171871, -0.982712, 0.068825,
		-0.946475, -0.184102, -0.265126,
		0.273213, -0.019573, -0.961754,
		31.154301, 26.648710, 20.595049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557093, 26.172220, 20.887703>,  <30.963051, 26.662413, 21.268276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557093, 26.172220, 20.887703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.865423, 26.197830, 20.634174>,  <31.050421, 26.213196, 20.482058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.865423, 26.197830, 20.634174>,  <30.557093, 26.172220, 20.887703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865423, 26.197830, 20.634174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085363, -0.975583, -0.202365,
		-0.631302, 0.210093, -0.746538,
		0.770825, 0.064027, -0.633821,
		31.096670, 26.217039, 20.444029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422155, 25.791695, 20.227047>,  <30.557093, 26.172220, 20.887703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422155, 25.791695, 20.227047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.820543, 25.826225, 20.217316>,  <31.059576, 25.846943, 20.211477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.820543, 25.826225, 20.217316>,  <30.422155, 25.791695, 20.227047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820543, 25.826225, 20.217316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078818, -0.971877, -0.221907,
		-0.042800, 0.219095, -0.974764,
		0.995970, 0.086326, -0.024328,
		31.119335, 25.852123, 20.210018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529203, 25.306440, 19.860044>,  <30.422155, 25.791695, 20.227047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529203, 25.306440, 19.860044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891737, 25.375072, 20.014507>,  <31.109257, 25.416252, 20.107185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891737, 25.375072, 20.014507>,  <30.529203, 25.306440, 19.860044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891737, 25.375072, 20.014507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200329, -0.979098, -0.035139,
		0.372057, 0.109206, -0.921763,
		0.906334, 0.171582, 0.386157,
		31.163637, 25.426548, 20.130354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915218, 24.815704, 19.525829>,  <30.529203, 25.306440, 19.860044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915218, 24.815704, 19.525829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130692, 24.912590, 19.848606>,  <31.259975, 24.970722, 20.042273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130692, 24.912590, 19.848606>,  <30.915218, 24.815704, 19.525829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130692, 24.912590, 19.848606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087626, -0.968696, 0.232271,
		0.837940, -0.054411, -0.543044,
		0.538683, 0.242214, 0.806941,
		31.292295, 24.985254, 20.090689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541725, 24.388018, 19.425636>,  <30.915218, 24.815704, 19.525829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541725, 24.388018, 19.425636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509956, 24.495831, 19.809521>,  <31.490896, 24.560518, 20.039852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509956, 24.495831, 19.809521>,  <31.541725, 24.388018, 19.425636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509956, 24.495831, 19.809521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083098, -0.957611, 0.275820,
		0.993372, 0.101655, 0.053656,
		-0.079420, 0.269533, 0.959711,
		31.486130, 24.576691, 20.097433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126686, 24.038361, 19.955948>,  <31.541725, 24.388018, 19.425636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126686, 24.038361, 19.955948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819250, 24.115078, 20.200073>,  <31.634789, 24.161108, 20.346548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819250, 24.115078, 20.200073>,  <32.126686, 24.038361, 19.955948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819250, 24.115078, 20.200073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239092, -0.798755, 0.552110,
		0.593381, 0.570268, 0.568061,
		-0.768592, 0.191792, 0.610313,
		31.588673, 24.172615, 20.383167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400997, 23.657459, 20.595833>,  <32.126686, 24.038361, 19.955948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400997, 23.657459, 20.595833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007553, 23.722343, 20.627331>,  <31.771486, 23.761274, 20.646229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007553, 23.722343, 20.627331>,  <32.400997, 23.657459, 20.595833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007553, 23.722343, 20.627331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068616, -0.740574, 0.668462,
		0.166749, 0.652102, 0.739566,
		-0.983609, 0.162211, 0.078745,
		31.712471, 23.771008, 20.650955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345348, 23.653852, 21.277412>,  <32.400997, 23.657459, 20.595833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345348, 23.653852, 21.277412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979425, 23.603565, 21.123878>,  <31.759872, 23.573393, 21.031759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979425, 23.603565, 21.123878>,  <32.345348, 23.653852, 21.277412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979425, 23.603565, 21.123878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163794, -0.753197, 0.637076,
		-0.369196, 0.645670, 0.668435,
		-0.914804, -0.125720, -0.383834,
		31.704985, 23.565849, 21.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881454, 23.678928, 21.869444>,  <32.345348, 23.653852, 21.277412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881454, 23.678928, 21.869444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.710102, 23.471352, 21.573555>,  <31.607290, 23.346806, 21.396023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.710102, 23.471352, 21.573555>,  <31.881454, 23.678928, 21.869444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710102, 23.471352, 21.573555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004007, -0.819723, 0.572747,
		-0.903588, 0.242391, 0.353235,
		-0.428383, -0.518942, -0.739721,
		31.581587, 23.315668, 21.351639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300335, 23.350447, 22.174852>,  <31.881454, 23.678928, 21.869444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300335, 23.350447, 22.174852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378963, 23.155262, 21.834675>,  <31.426140, 23.038151, 21.630569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378963, 23.155262, 21.834675>,  <31.300335, 23.350447, 22.174852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378963, 23.155262, 21.834675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018910, -0.869090, 0.494293,
		-0.980307, -0.081082, -0.180066,
		0.196572, -0.487964, -0.850442,
		31.437935, 23.008873, 21.579542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797653, 22.898531, 22.164902>,  <31.300335, 23.350447, 22.174852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797653, 22.898531, 22.164902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087404, 22.727665, 21.948456>,  <31.261255, 22.625145, 21.818588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087404, 22.727665, 21.948456>,  <30.797653, 22.898531, 22.164902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087404, 22.727665, 21.948456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043159, -0.755268, 0.653994,
		-0.688050, -0.497093, -0.528664,
		0.724379, -0.427164, -0.541116,
		31.304718, 22.599516, 21.786121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555260, 22.145437, 22.057789>,  <30.797653, 22.898531, 22.164902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555260, 22.145437, 22.057789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947241, 22.194618, 21.995087>,  <31.182430, 22.224127, 21.957466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947241, 22.194618, 21.995087>,  <30.555260, 22.145437, 22.057789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947241, 22.194618, 21.995087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190907, -0.804505, 0.562429,
		-0.056959, -0.581081, -0.811850,
		0.979954, 0.122953, -0.156756,
		31.241226, 22.231504, 21.948059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972403, 22.142061, 21.537901>,  <30.555260, 22.145437, 22.057789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972403, 22.142061, 21.537901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591896, 22.023251, 21.571041>,  <29.363592, 21.951963, 21.590925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591896, 22.023251, 21.571041>,  <29.972403, 22.142061, 21.537901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591896, 22.023251, 21.571041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305525, 0.944239, -0.122751,
		-0.041769, -0.142081, -0.988973,
		-0.951268, -0.297029, 0.082850,
		29.306517, 21.934141, 21.595896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672337, 22.498049, 21.049204>,  <29.972403, 22.142061, 21.537901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672337, 22.498049, 21.049204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.382494, 22.380253, 21.298435>,  <29.208590, 22.309576, 21.447973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.382494, 22.380253, 21.298435>,  <29.672337, 22.498049, 21.049204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382494, 22.380253, 21.298435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382526, 0.923908, -0.008185,
		-0.573256, -0.244274, -0.782118,
		-0.724605, -0.294488, 0.623077,
		29.165113, 22.291906, 21.485359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076612, 22.658520, 20.696959>,  <29.672337, 22.498049, 21.049204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076612, 22.658520, 20.696959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.998316, 22.640724, 21.088818>,  <28.951338, 22.630047, 21.323933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.998316, 22.640724, 21.088818>,  <29.076612, 22.658520, 20.696959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998316, 22.640724, 21.088818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385486, 0.922044, -0.035150,
		-0.901713, -0.384520, -0.197630,
		-0.195740, -0.044488, 0.979646,
		28.939594, 22.627378, 21.382711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336838, 22.964439, 20.766394>,  <29.076612, 22.658520, 20.696959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336838, 22.964439, 20.766394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.552755, 23.007187, 21.100388>,  <28.682306, 23.032835, 21.300783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.552755, 23.007187, 21.100388>,  <28.336838, 22.964439, 20.766394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552755, 23.007187, 21.100388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103193, 0.992828, -0.060362,
		-0.835448, -0.053581, 0.546952,
		0.539795, 0.106871, 0.834985,
		28.714693, 23.039248, 21.350883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095505, 23.529573, 20.955994>,  <28.336838, 22.964439, 20.766394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095505, 23.529573, 20.955994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.375237, 23.502113, 21.240593>,  <28.543076, 23.485638, 21.411352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.375237, 23.502113, 21.240593>,  <28.095505, 23.529573, 20.955994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375237, 23.502113, 21.240593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067839, 0.997259, 0.029544,
		-0.711574, 0.027606, 0.702068,
		0.699328, -0.068651, 0.711496,
		28.585035, 23.481518, 21.454042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855726, 23.891630, 21.471344>,  <28.095505, 23.529573, 20.955994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855726, 23.891630, 21.471344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.242651, 23.901077, 21.572342>,  <28.474806, 23.906746, 21.632940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.242651, 23.901077, 21.572342>,  <27.855726, 23.891630, 21.471344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242651, 23.901077, 21.572342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003810, 0.996894, -0.078660,
		-0.253569, 0.075127, 0.964395,
		0.967310, 0.023620, 0.252495,
		28.532845, 23.908163, 21.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894201, 24.327467, 22.015871>,  <27.855726, 23.891630, 21.471344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894201, 24.327467, 22.015871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.253342, 24.322300, 21.839828>,  <28.468826, 24.319201, 21.734203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.253342, 24.322300, 21.839828>,  <27.894201, 24.327467, 22.015871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253342, 24.322300, 21.839828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090898, 0.972598, -0.213987,
		0.430810, 0.232133, 0.872076,
		0.897853, -0.012918, -0.440105,
		28.522697, 24.318424, 21.707796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367039, 24.835135, 22.501245>,  <27.894201, 24.327467, 22.015871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367039, 24.835135, 22.501245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.529503, 24.760689, 22.143387>,  <28.626982, 24.716021, 21.928671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.529503, 24.760689, 22.143387>,  <28.367039, 24.835135, 22.501245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529503, 24.760689, 22.143387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020098, 0.980622, -0.194876,
		0.913582, 0.061170, 0.402029,
		0.406159, -0.186115, -0.894649,
		28.651350, 24.704855, 21.874992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937925, 25.311600, 22.517128>,  <28.367039, 24.835135, 22.501245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937925, 25.311600, 22.517128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843643, 25.235950, 22.135830>,  <28.787073, 25.190559, 21.907051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843643, 25.235950, 22.135830>,  <28.937925, 25.311600, 22.517128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843643, 25.235950, 22.135830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032105, 0.978830, -0.202140,
		0.971294, -0.078250, -0.224644,
		-0.235705, -0.189126, -0.953244,
		28.772932, 25.179213, 21.849857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409615, 25.724274, 22.111517>,  <28.937925, 25.311600, 22.517128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409615, 25.724274, 22.111517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.093037, 25.642754, 21.881012>,  <28.903090, 25.593842, 21.742708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.093037, 25.642754, 21.881012>,  <29.409615, 25.724274, 22.111517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093037, 25.642754, 21.881012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126171, 0.976944, -0.172224,
		0.598078, -0.063598, -0.798911,
		-0.791444, -0.203802, -0.576264,
		28.855604, 25.581614, 21.708132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341867, 26.300114, 21.702482>,  <29.409615, 25.724274, 22.111517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341867, 26.300114, 21.702482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003790, 26.122845, 21.582985>,  <28.800943, 26.016483, 21.511286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003790, 26.122845, 21.582985>,  <29.341867, 26.300114, 21.702482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003790, 26.122845, 21.582985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333449, 0.874077, -0.353272,
		0.417685, -0.198967, -0.886539,
		-0.845193, -0.443172, -0.298744,
		28.750233, 25.989893, 21.493362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247181, 26.427071, 20.985088>,  <29.341867, 26.300114, 21.702482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247181, 26.427071, 20.985088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.877012, 26.348888, 21.114948>,  <28.654911, 26.301979, 21.192863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.877012, 26.348888, 21.114948>,  <29.247181, 26.427071, 20.985088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877012, 26.348888, 21.114948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322952, 0.854981, -0.405844,
		-0.198245, -0.480422, -0.854338,
		-0.925419, -0.195454, 0.324649,
		28.599386, 26.290253, 21.212343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845987, 26.491774, 20.407509>,  <29.247181, 26.427071, 20.985088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845987, 26.491774, 20.407509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601006, 26.551014, 20.718113>,  <28.454018, 26.586559, 20.904474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601006, 26.551014, 20.718113>,  <28.845987, 26.491774, 20.407509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601006, 26.551014, 20.718113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484866, 0.705438, -0.516974,
		-0.624345, -0.693125, -0.360238,
		-0.612453, 0.148102, 0.776509,
		28.417269, 26.595444, 20.951065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082741, 26.692522, 20.133169>,  <28.845987, 26.491774, 20.407509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082741, 26.692522, 20.133169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.160271, 26.835854, 20.498470>,  <28.206789, 26.921852, 20.717651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.160271, 26.835854, 20.498470>,  <28.082741, 26.692522, 20.133169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160271, 26.835854, 20.498470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386175, 0.883618, -0.264741,
		-0.901832, -0.301362, 0.309646,
		0.193826, 0.358329, 0.913253,
		28.218418, 26.943352, 20.772446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.776047, 34.608379, 29.629110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102551, 34.752666, 29.448620>,  <39.298454, 34.839237, 29.340326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102551, 34.752666, 29.448620>,  <38.776047, 34.608379, 29.629110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102551, 34.752666, 29.448620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250260, -0.483191, -0.838986,
		-0.520661, 0.797755, -0.304137,
		0.816261, 0.360714, -0.451224,
		39.347427, 34.860882, 29.313253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537399, 34.744938, 29.086733>,  <38.776047, 34.608379, 29.629110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537399, 34.744938, 29.086733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.931877, 34.705589, 29.033463>,  <39.168564, 34.681980, 29.001499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.931877, 34.705589, 29.033463>,  <38.537399, 34.744938, 29.086733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931877, 34.705589, 29.033463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164160, -0.685641, -0.709188,
		-0.021549, 0.721263, -0.692326,
		0.986198, -0.098370, -0.133178,
		39.227737, 34.676079, 28.993509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701786, 34.851254, 28.318647>,  <38.537399, 34.744938, 29.086733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701786, 34.851254, 28.318647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011940, 34.651642, 28.473434>,  <39.198032, 34.531876, 28.566307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011940, 34.651642, 28.473434>,  <38.701786, 34.851254, 28.318647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011940, 34.651642, 28.473434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089011, -0.693035, -0.715387,
		0.625183, 0.520257, -0.581789,
		0.775386, -0.499034, 0.386965,
		39.244556, 34.501930, 28.589523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193436, 34.848553, 27.799141>,  <38.701786, 34.851254, 28.318647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193436, 34.848553, 27.799141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271561, 34.552464, 28.056488>,  <39.318436, 34.374809, 28.210896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271561, 34.552464, 28.056488>,  <39.193436, 34.848553, 27.799141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271561, 34.552464, 28.056488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184593, -0.672022, -0.717156,
		0.963213, 0.021308, -0.267894,
		0.195312, -0.740225, 0.643366,
		39.330154, 34.330395, 28.249498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830608, 34.422146, 27.592764>,  <39.193436, 34.848553, 27.799141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830608, 34.422146, 27.592764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.599136, 34.182983, 27.814625>,  <39.460251, 34.039486, 27.947741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.599136, 34.182983, 27.814625>,  <39.830608, 34.422146, 27.592764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599136, 34.182983, 27.814625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131168, -0.739473, -0.660284,
		0.804935, -0.309343, 0.506346,
		-0.578683, -0.597903, 0.554652,
		39.425533, 34.003613, 27.981020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161819, 33.731747, 27.460926>,  <39.830608, 34.422146, 27.592764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161819, 33.731747, 27.460926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825691, 33.650455, 27.661945>,  <39.624012, 33.601681, 27.782557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825691, 33.650455, 27.661945>,  <40.161819, 33.731747, 27.460926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825691, 33.650455, 27.661945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092508, -0.859709, -0.502338,
		0.534133, -0.468616, 0.703634,
		-0.840324, -0.203223, 0.502550,
		39.573593, 33.589489, 27.812710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228283, 33.053074, 27.788006>,  <40.161819, 33.731747, 27.460926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228283, 33.053074, 27.788006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.837994, 33.131393, 27.748768>,  <39.603821, 33.178387, 27.725225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.837994, 33.131393, 27.748768>,  <40.228283, 33.053074, 27.788006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837994, 33.131393, 27.748768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100122, -0.797204, -0.595350,
		-0.194774, -0.571076, 0.797456,
		-0.975725, 0.195802, -0.098097,
		39.545277, 33.190132, 27.719339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897930, 32.508224, 27.909275>,  <40.228283, 33.053074, 27.788006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897930, 32.508224, 27.909275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626469, 32.698151, 27.685139>,  <39.463593, 32.812107, 27.550657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626469, 32.698151, 27.685139>,  <39.897930, 32.508224, 27.909275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626469, 32.698151, 27.685139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052309, -0.792241, -0.607963,
		-0.732592, -0.383286, 0.562495,
		-0.678655, 0.474812, -0.560340,
		39.422874, 32.840595, 27.517036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459621, 31.963762, 27.628351>,  <39.897930, 32.508224, 27.909275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459621, 31.963762, 27.628351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400772, 32.274689, 27.383686>,  <39.365463, 32.461246, 27.236887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400772, 32.274689, 27.383686>,  <39.459621, 31.963762, 27.628351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400772, 32.274689, 27.383686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025416, -0.621159, -0.783272,
		-0.988791, -0.099695, 0.111145,
		-0.147127, 0.777317, -0.611663,
		39.356632, 32.507885, 27.200188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947472, 31.685158, 27.219872>,  <39.459621, 31.963762, 27.628351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947472, 31.685158, 27.219872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082657, 32.009010, 27.027924>,  <39.163769, 32.203323, 26.912754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082657, 32.009010, 27.027924>,  <38.947472, 31.685158, 27.219872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082657, 32.009010, 27.027924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047534, -0.494536, -0.867856,
		-0.939957, 0.316116, -0.128652,
		0.337966, 0.809632, -0.479869,
		39.184048, 32.251900, 26.883963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415749, 31.844610, 26.674341>,  <38.947472, 31.685158, 27.219872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415749, 31.844610, 26.674341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.761856, 32.000347, 26.548023>,  <38.969521, 32.093788, 26.472233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.761856, 32.000347, 26.548023>,  <38.415749, 31.844610, 26.674341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761856, 32.000347, 26.548023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174649, -0.356357, -0.917882,
		-0.469906, 0.849366, -0.240346,
		0.865267, 0.389342, -0.315795,
		39.021435, 32.117149, 26.453285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275780, 32.134727, 25.920948>,  <38.415749, 31.844610, 26.674341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275780, 32.134727, 25.920948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.671928, 32.101521, 25.965260>,  <38.909618, 32.081596, 25.991846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.671928, 32.101521, 25.965260>,  <38.275780, 32.134727, 25.920948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671928, 32.101521, 25.965260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096022, -0.164450, -0.981701,
		0.099718, 0.982885, -0.154895,
		0.990372, -0.083020, 0.110777,
		38.969040, 32.076614, 25.998493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593006, 32.573959, 25.402439>,  <38.275780, 32.134727, 25.920948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593006, 32.573959, 25.402439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916245, 32.349388, 25.473736>,  <39.110188, 32.214645, 25.516514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916245, 32.349388, 25.473736>,  <38.593006, 32.573959, 25.402439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916245, 32.349388, 25.473736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175801, -0.058931, -0.982660,
		0.562201, 0.825422, 0.051078,
		0.808099, -0.561432, 0.178241,
		39.158676, 32.180958, 25.527208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210644, 32.706539, 24.903862>,  <38.593006, 32.573959, 25.402439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210644, 32.706539, 24.903862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300926, 32.349892, 25.060871>,  <39.355095, 32.135902, 25.155077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300926, 32.349892, 25.060871>,  <39.210644, 32.706539, 24.903862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300926, 32.349892, 25.060871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172702, -0.359918, -0.916861,
		0.958765, 0.274732, 0.072747,
		0.225708, -0.891617, 0.392523,
		39.368637, 32.082405, 25.178629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652550, 32.443249, 24.416828>,  <39.210644, 32.706539, 24.903862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652550, 32.443249, 24.416828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552818, 32.093723, 24.583820>,  <39.492981, 31.884008, 24.684015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552818, 32.093723, 24.583820>,  <39.652550, 32.443249, 24.416828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552818, 32.093723, 24.583820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115588, -0.454865, -0.883027,
		0.961496, -0.171906, 0.214412,
		-0.249326, -0.873811, 0.417480,
		39.478020, 31.831579, 24.709064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147385, 31.984486, 24.284962>,  <39.652550, 32.443249, 24.416828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147385, 31.984486, 24.284962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.837738, 31.749447, 24.379177>,  <39.651951, 31.608423, 24.435707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.837738, 31.749447, 24.379177>,  <40.147385, 31.984486, 24.284962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837738, 31.749447, 24.379177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040206, -0.416955, -0.908037,
		0.631768, -0.693454, 0.346396,
		-0.774114, -0.587596, 0.235538,
		39.605503, 31.573168, 24.449839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272861, 31.325607, 23.934982>,  <40.147385, 31.984486, 24.284962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272861, 31.325607, 23.934982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.881397, 31.334801, 24.016663>,  <39.646519, 31.340317, 24.065672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.881397, 31.334801, 24.016663>,  <40.272861, 31.325607, 23.934982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881397, 31.334801, 24.016663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182956, -0.549901, -0.814945,
		0.093560, -0.834913, 0.542371,
		-0.978659, 0.022984, 0.204202,
		39.587799, 31.341696, 24.077923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049107, 30.640648, 23.921568>,  <40.272861, 31.325607, 23.934982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049107, 30.640648, 23.921568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.730209, 30.871605, 23.851120>,  <39.538872, 31.010180, 23.808851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.730209, 30.871605, 23.851120>,  <40.049107, 30.640648, 23.921568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730209, 30.871605, 23.851120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175384, -0.500722, -0.847655,
		-0.577617, -0.644900, 0.500463,
		-0.797245, 0.577392, -0.176120,
		39.491035, 31.044823, 23.798285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434311, 30.152328, 23.806469>,  <40.049107, 30.640648, 23.921568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434311, 30.152328, 23.806469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368858, 30.519508, 23.661919>,  <39.329586, 30.739817, 23.575190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368858, 30.519508, 23.661919>,  <39.434311, 30.152328, 23.806469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368858, 30.519508, 23.661919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091516, -0.378857, -0.920919,
		-0.982268, -0.117619, 0.146000,
		-0.163631, 0.917950, -0.361375,
		39.319771, 30.794893, 23.553507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147888, 30.000671, 23.251186>,  <39.434311, 30.152328, 23.806469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147888, 30.000671, 23.251186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265129, 30.379307, 23.197426>,  <39.335472, 30.606487, 23.165171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265129, 30.379307, 23.197426>,  <39.147888, 30.000671, 23.251186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265129, 30.379307, 23.197426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258646, -0.213836, -0.942007,
		-0.920432, 0.241339, -0.307506,
		0.293099, 0.946588, -0.134400,
		39.353058, 30.663284, 23.157106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692848, 30.385981, 22.695559>,  <39.147888, 30.000671, 23.251186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692848, 30.385981, 22.695559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060024, 30.542458, 22.721977>,  <39.280331, 30.636343, 22.737829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060024, 30.542458, 22.721977>,  <38.692848, 30.385981, 22.695559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060024, 30.542458, 22.721977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164488, -0.223774, -0.960661,
		-0.361022, 0.892690, -0.269757,
		0.917936, 0.391191, 0.066049,
		39.335403, 30.659815, 22.741793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628033, 30.728796, 23.355011>,  <38.692848, 30.385981, 22.695559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628033, 30.728796, 23.355011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.312767, 30.577503, 23.160801>,  <38.123608, 30.486727, 23.044275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.312767, 30.577503, 23.160801>,  <38.628033, 30.728796, 23.355011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312767, 30.577503, 23.160801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614679, 0.523617, 0.589911,
		0.031106, 0.763390, -0.645189,
		-0.788164, -0.378234, -0.485527,
		38.076317, 30.464033, 23.015142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192062, 31.231339, 23.126038>,  <38.628033, 30.728796, 23.355011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192062, 31.231339, 23.126038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.938858, 30.923988, 23.163761>,  <37.786934, 30.739578, 23.186396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.938858, 30.923988, 23.163761>,  <38.192062, 31.231339, 23.126038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938858, 30.923988, 23.163761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666580, 0.602950, 0.438318,
		-0.393655, 0.214598, -0.893859,
		-0.633014, -0.768374, 0.094307,
		37.748955, 30.693476, 23.192053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616165, 31.575039, 23.148449>,  <38.192062, 31.231339, 23.126038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616165, 31.575039, 23.148449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.513954, 31.205750, 23.263248>,  <37.452629, 30.984177, 23.332129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.513954, 31.205750, 23.263248>,  <37.616165, 31.575039, 23.148449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513954, 31.205750, 23.263248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710549, 0.380636, 0.591808,
		-0.655612, -0.052705, -0.753256,
		-0.255525, -0.923221, 0.286999,
		37.437298, 30.928783, 23.349348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964996, 31.666298, 23.081434>,  <37.616165, 31.575039, 23.148449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964996, 31.666298, 23.081434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034882, 31.351093, 23.317574>,  <37.076813, 31.161970, 23.459257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034882, 31.351093, 23.317574>,  <36.964996, 31.666298, 23.081434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034882, 31.351093, 23.317574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734912, 0.294650, 0.610808,
		-0.655270, -0.540571, -0.527640,
		0.174716, -0.788013, 0.590347,
		37.087296, 31.114689, 23.494678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349266, 31.457167, 23.240898>,  <36.964996, 31.666298, 23.081434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349266, 31.457167, 23.240898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604801, 31.327969, 23.520199>,  <36.758121, 31.250450, 23.687778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604801, 31.327969, 23.520199>,  <36.349266, 31.457167, 23.240898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604801, 31.327969, 23.520199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565609, 0.418042, 0.710863,
		-0.521504, -0.849067, 0.084374,
		0.638842, -0.322995, 0.698251,
		36.796455, 31.231070, 23.729673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884441, 31.200420, 23.777349>,  <36.349266, 31.457167, 23.240898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884441, 31.200420, 23.777349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.235355, 31.238594, 23.965500>,  <36.445904, 31.261499, 24.078390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.235355, 31.238594, 23.965500>,  <35.884441, 31.200420, 23.777349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235355, 31.238594, 23.965500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472122, 0.348001, 0.809936,
		-0.086395, -0.932624, 0.350355,
		0.877290, 0.095436, 0.470378,
		36.498543, 31.267225, 24.106613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801838, 31.163975, 24.543898>,  <35.884441, 31.200420, 23.777349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801838, 31.163975, 24.543898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163612, 31.334618, 24.544357>,  <36.380676, 31.437004, 24.544634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163612, 31.334618, 24.544357>,  <35.801838, 31.163975, 24.543898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163612, 31.334618, 24.544357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280477, 0.592594, 0.755092,
		0.321448, -0.683255, 0.655618,
		0.904436, 0.426609, 0.001149,
		36.434944, 31.462601, 24.544703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137424, 31.148729, 25.225842>,  <35.801838, 31.163975, 24.543898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137424, 31.148729, 25.225842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311920, 31.458916, 25.043262>,  <36.416618, 31.645027, 24.933716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311920, 31.458916, 25.043262>,  <36.137424, 31.148729, 25.225842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311920, 31.458916, 25.043262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150811, 0.563094, 0.812515,
		0.887102, -0.285614, 0.362593,
		0.436240, 0.775467, -0.456448,
		36.442791, 31.691555, 24.906328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720284, 31.331825, 25.634819>,  <36.137424, 31.148729, 25.225842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720284, 31.331825, 25.634819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.607151, 31.650536, 25.421219>,  <36.539272, 31.841763, 25.293058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.607151, 31.650536, 25.421219>,  <36.720284, 31.331825, 25.634819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607151, 31.650536, 25.421219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190884, 0.498839, 0.845413,
		0.939984, 0.341041, 0.011005,
		-0.282831, 0.796775, -0.534000,
		36.522301, 31.889568, 25.261019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137157, 31.830635, 25.832731>,  <36.720284, 31.331825, 25.634819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137157, 31.830635, 25.832731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838604, 32.035805, 25.663109>,  <36.659473, 32.158905, 25.561335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838604, 32.035805, 25.663109>,  <37.137157, 31.830635, 25.832731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838604, 32.035805, 25.663109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069888, 0.694068, 0.716509,
		0.661837, 0.505154, -0.553888,
		-0.746383, 0.512922, -0.424055,
		36.614689, 32.189682, 25.535892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374283, 32.500439, 25.773682>,  <37.137157, 31.830635, 25.832731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374283, 32.500439, 25.773682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975464, 32.524239, 25.754253>,  <36.736172, 32.538517, 25.742596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975464, 32.524239, 25.754253>,  <37.374283, 32.500439, 25.773682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975464, 32.524239, 25.754253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027017, 0.863656, 0.503357,
		0.071897, 0.500558, -0.862712,
		-0.997046, 0.059498, -0.048571,
		36.676350, 32.542088, 25.739681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220585, 33.166908, 25.856869>,  <37.374283, 32.500439, 25.773682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220585, 33.166908, 25.856869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849510, 33.021561, 25.891205>,  <36.626865, 32.934353, 25.911806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849510, 33.021561, 25.891205>,  <37.220585, 33.166908, 25.856869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849510, 33.021561, 25.891205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289840, 0.845783, 0.447934,
		-0.235367, 0.390660, -0.889936,
		-0.927683, -0.363368, 0.085841,
		36.571205, 32.912552, 25.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794254, 33.734303, 25.679798>,  <37.220585, 33.166908, 25.856869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794254, 33.734303, 25.679798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590210, 33.484108, 25.915955>,  <36.467785, 33.333992, 26.057648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590210, 33.484108, 25.915955>,  <36.794254, 33.734303, 25.679798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590210, 33.484108, 25.915955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266463, 0.767563, 0.582962,
		-0.817795, 0.140056, -0.558208,
		-0.510107, -0.625485, 0.590389,
		36.437180, 33.296463, 26.093071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240540, 34.038631, 25.851557>,  <36.794254, 33.734303, 25.679798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240540, 34.038631, 25.851557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228111, 33.751007, 26.129257>,  <36.220654, 33.578434, 26.295877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228111, 33.751007, 26.129257>,  <36.240540, 34.038631, 25.851557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228111, 33.751007, 26.129257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147011, 0.690321, 0.708410,
		-0.988647, -0.080053, -0.127157,
		-0.031069, -0.719061, 0.694252,
		36.218792, 33.535290, 26.337532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660870, 34.279007, 26.223759>,  <36.240540, 34.038631, 25.851557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660870, 34.279007, 26.223759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871544, 34.041645, 26.467224>,  <35.997948, 33.899227, 26.613304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871544, 34.041645, 26.467224>,  <35.660870, 34.279007, 26.223759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871544, 34.041645, 26.467224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220493, 0.596151, 0.772002,
		-0.820968, -0.540806, 0.183139,
		0.526682, -0.593408, 0.608665,
		36.029549, 33.863621, 26.649824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211971, 34.241241, 26.902306>,  <35.660870, 34.279007, 26.223759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211971, 34.241241, 26.902306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590328, 34.143623, 26.987839>,  <35.817345, 34.085052, 27.039160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590328, 34.143623, 26.987839>,  <35.211971, 34.241241, 26.902306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590328, 34.143623, 26.987839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000125, 0.658752, 0.752360,
		-0.324471, -0.711681, 0.623080,
		0.945896, -0.244041, 0.213835,
		35.874096, 34.070412, 27.051989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309277, 34.271439, 27.622868>,  <35.211971, 34.241241, 26.902306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309277, 34.271439, 27.622868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.701801, 34.276867, 27.546082>,  <35.937317, 34.280125, 27.500010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.701801, 34.276867, 27.546082>,  <35.309277, 34.271439, 27.622868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701801, 34.276867, 27.546082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119082, 0.740771, 0.661118,
		0.151175, -0.671620, 0.725309,
		0.981308, 0.013573, -0.191964,
		35.996193, 34.280937, 27.488493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738651, 34.224663, 28.238020>,  <35.309277, 34.271439, 27.622868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738651, 34.224663, 28.238020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979591, 34.413616, 27.980640>,  <36.124157, 34.526989, 27.826212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979591, 34.413616, 27.980640>,  <35.738651, 34.224663, 28.238020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979591, 34.413616, 27.980640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261538, 0.644806, 0.718208,
		0.754167, -0.600903, 0.264856,
		0.602354, 0.472379, -0.643450,
		36.160297, 34.555328, 27.787605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327557, 34.277950, 28.599430>,  <35.738651, 34.224663, 28.238020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327557, 34.277950, 28.599430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349953, 34.548119, 28.305309>,  <36.363392, 34.710220, 28.128836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349953, 34.548119, 28.305309>,  <36.327557, 34.277950, 28.599430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349953, 34.548119, 28.305309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269804, 0.698825, 0.662457,
		0.961286, -0.235479, -0.143104,
		0.055990, 0.675420, -0.735304,
		36.366749, 34.750744, 28.084719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980267, 34.537281, 28.660387>,  <36.327557, 34.277950, 28.599430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980267, 34.537281, 28.660387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792961, 34.807060, 28.432053>,  <36.680580, 34.968929, 28.295052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792961, 34.807060, 28.432053>,  <36.980267, 34.537281, 28.660387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792961, 34.807060, 28.432053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285277, 0.726841, 0.624755,
		0.836272, 0.129701, -0.532755,
		-0.468259, 0.674448, -0.570836,
		36.652485, 35.009396, 28.260801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399681, 35.016319, 28.619947>,  <36.980267, 34.537281, 28.660387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399681, 35.016319, 28.619947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.059345, 35.206730, 28.530983>,  <36.855145, 35.320976, 28.477604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.059345, 35.206730, 28.530983>,  <37.399681, 35.016319, 28.619947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059345, 35.206730, 28.530983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175917, 0.656958, 0.733116,
		0.495099, 0.584639, -0.642708,
		-0.850841, 0.476028, -0.222411,
		36.804092, 35.349537, 28.464260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.620314, 22.343466, 23.838942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.964491, 22.359997, 24.042088>,  <28.170998, 22.369915, 24.163975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.964491, 22.359997, 24.042088>,  <27.620314, 22.343466, 23.838942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964491, 22.359997, 24.042088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193270, -0.948695, -0.250248,
		0.471469, 0.313480, -0.824286,
		0.860444, 0.041325, 0.507867,
		28.222624, 22.372395, 24.194448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134340, 22.002836, 23.329330>,  <27.620314, 22.343466, 23.838942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134340, 22.002836, 23.329330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.298388, 21.979561, 23.693401>,  <28.396816, 21.965595, 23.911844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.298388, 21.979561, 23.693401>,  <28.134340, 22.002836, 23.329330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298388, 21.979561, 23.693401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230649, -0.958906, -0.165230,
		0.882387, 0.277694, -0.379842,
		0.410116, -0.058187, 0.910175,
		28.421423, 21.962105, 23.966454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845840, 21.736410, 23.170425>,  <28.134340, 22.002836, 23.329330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845840, 21.736410, 23.170425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.722595, 21.645489, 23.539944>,  <28.648649, 21.590937, 23.761656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.722595, 21.645489, 23.539944>,  <28.845840, 21.736410, 23.170425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722595, 21.645489, 23.539944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177147, -0.967763, -0.179037,
		0.934712, 0.108485, 0.338445,
		-0.308111, -0.227303, 0.923797,
		28.630161, 21.577297, 23.817083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508917, 21.359661, 23.519274>,  <28.845840, 21.736410, 23.170425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508917, 21.359661, 23.519274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.163221, 21.293713, 23.709393>,  <28.955803, 21.254143, 23.823463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.163221, 21.293713, 23.709393>,  <29.508917, 21.359661, 23.519274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163221, 21.293713, 23.709393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230436, -0.969568, 0.082680,
		0.447199, 0.180981, 0.875933,
		-0.864241, -0.164872, 0.475295,
		28.903950, 21.244251, 23.851980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714502, 20.771049, 23.929197>,  <29.508917, 21.359661, 23.519274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714502, 20.771049, 23.929197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319847, 20.767685, 23.994278>,  <29.083054, 20.765667, 24.033327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319847, 20.767685, 23.994278>,  <29.714502, 20.771049, 23.929197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319847, 20.767685, 23.994278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049253, -0.967333, 0.248677,
		0.155296, 0.253368, 0.954823,
		-0.986639, -0.008409, 0.162702,
		29.023855, 20.765162, 24.043089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608868, 20.430698, 24.605322>,  <29.714502, 20.771049, 23.929197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608868, 20.430698, 24.605322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.276115, 20.394569, 24.386299>,  <29.076464, 20.372892, 24.254885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.276115, 20.394569, 24.386299>,  <29.608868, 20.430698, 24.605322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276115, 20.394569, 24.386299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084711, -0.954438, 0.286134,
		-0.548454, 0.284413, 0.786326,
		-0.831879, -0.090321, -0.547558,
		29.026552, 20.367474, 24.222033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008791, 20.207108, 25.132959>,  <29.608868, 20.430698, 24.605322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008791, 20.207108, 25.132959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929216, 20.099319, 24.756065>,  <28.881472, 20.034647, 24.529928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929216, 20.099319, 24.756065>,  <29.008791, 20.207108, 25.132959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929216, 20.099319, 24.756065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122549, -0.947066, 0.296727,
		-0.972320, 0.174500, 0.155383,
		-0.198937, -0.269472, -0.942236,
		28.869535, 20.018478, 24.473394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373201, 19.929159, 25.197639>,  <29.008791, 20.207108, 25.132959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373201, 19.929159, 25.197639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.505985, 19.787209, 24.848042>,  <28.585655, 19.702038, 24.638283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.505985, 19.787209, 24.848042>,  <28.373201, 19.929159, 25.197639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505985, 19.787209, 24.848042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114063, -0.934837, 0.336258,
		-0.936379, -0.011926, -0.350787,
		0.331938, -0.354877, -0.874002,
		28.605574, 19.680746, 24.585842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861208, 19.409660, 24.967089>,  <28.373201, 19.929159, 25.197639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861208, 19.409660, 24.967089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.205654, 19.348614, 24.773106>,  <28.412323, 19.311987, 24.656715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.205654, 19.348614, 24.773106>,  <27.861208, 19.409660, 24.967089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205654, 19.348614, 24.773106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032700, -0.935281, 0.352393,
		-0.507353, -0.319310, -0.800396,
		0.861118, -0.152615, -0.484959,
		28.463989, 19.302830, 24.627619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699524, 18.691736, 24.856855>,  <27.861208, 19.409660, 24.967089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699524, 18.691736, 24.856855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.083115, 18.755093, 24.762814>,  <28.313269, 18.793106, 24.706388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.083115, 18.755093, 24.762814>,  <27.699524, 18.691736, 24.856855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083115, 18.755093, 24.762814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176442, -0.982619, 0.057692,
		-0.221881, -0.096808, -0.970256,
		0.958977, 0.158393, -0.235106,
		28.370808, 18.802610, 24.692282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958113, 18.239965, 24.200079>,  <27.699524, 18.691736, 24.856855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958113, 18.239965, 24.200079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.261497, 18.319344, 24.448387>,  <28.443529, 18.366970, 24.597372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.261497, 18.319344, 24.448387>,  <27.958113, 18.239965, 24.200079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261497, 18.319344, 24.448387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278028, -0.960013, -0.032803,
		0.589437, 0.197471, -0.783306,
		0.758462, 0.198446, 0.620770,
		28.489037, 18.378878, 24.634619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425337, 17.751577, 23.998869>,  <27.958113, 18.239965, 24.200079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425337, 17.751577, 23.998869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.567316, 17.852444, 24.358963>,  <28.652504, 17.912964, 24.575020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.567316, 17.852444, 24.358963>,  <28.425337, 17.751577, 23.998869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567316, 17.852444, 24.358963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301914, -0.942259, 0.144897,
		0.884794, 0.220364, -0.410584,
		0.354946, 0.252165, 0.900237,
		28.673800, 17.928093, 24.629034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164972, 17.504786, 23.995960>,  <28.425337, 17.751577, 23.998869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164972, 17.504786, 23.995960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.996191, 17.559387, 24.354473>,  <28.894922, 17.592148, 24.569580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.996191, 17.559387, 24.354473>,  <29.164972, 17.504786, 23.995960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996191, 17.559387, 24.354473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255914, -0.930464, 0.262191,
		0.869749, 0.340004, 0.357679,
		-0.421954, 0.136505, 0.896282,
		28.869604, 17.600338, 24.623358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805445, 17.145502, 23.815113>,  <29.164972, 17.504786, 23.995960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805445, 17.145502, 23.815113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689337, 17.217422, 24.191074>,  <29.619673, 17.260574, 24.416651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689337, 17.217422, 24.191074>,  <29.805445, 17.145502, 23.815113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689337, 17.217422, 24.191074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944297, 0.105347, -0.311777,
		-0.155073, -0.978046, 0.139205,
		-0.290268, 0.179800, 0.939903,
		29.602257, 17.271362, 24.473045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152227, 16.866562, 23.199749>,  <29.805445, 17.145502, 23.815113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152227, 16.866562, 23.199749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431305, 16.828934, 22.915672>,  <30.598751, 16.806356, 22.745226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431305, 16.828934, 22.915672>,  <30.152227, 16.866562, 23.199749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431305, 16.828934, 22.915672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277200, 0.878672, -0.388709,
		0.660592, 0.468066, 0.586969,
		0.697695, -0.094070, -0.710192,
		30.640614, 16.800713, 22.702616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470867, 17.412571, 23.342686>,  <30.152227, 16.866562, 23.199749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470867, 17.412571, 23.342686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.559895, 17.307461, 22.967152>,  <30.613312, 17.244394, 22.741831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.559895, 17.307461, 22.967152>,  <30.470867, 17.412571, 23.342686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559895, 17.307461, 22.967152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278152, 0.905848, -0.319484,
		0.934395, 0.332246, 0.128521,
		0.222568, -0.262776, -0.938836,
		30.626665, 17.228628, 22.685501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892639, 17.996161, 23.102579>,  <30.470867, 17.412571, 23.342686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892639, 17.996161, 23.102579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771841, 17.791920, 22.780563>,  <30.699362, 17.669376, 22.587355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771841, 17.791920, 22.780563>,  <30.892639, 17.996161, 23.102579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771841, 17.791920, 22.780563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090792, 0.856032, -0.508886,
		0.948976, -0.080591, -0.304878,
		-0.301997, -0.510601, -0.805037,
		30.681242, 17.638739, 22.539053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259748, 18.273613, 22.475300>,  <30.892639, 17.996161, 23.102579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259748, 18.273613, 22.475300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917690, 18.107803, 22.350788>,  <30.712456, 18.008318, 22.276081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917690, 18.107803, 22.350788>,  <31.259748, 18.273613, 22.475300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917690, 18.107803, 22.350788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205200, 0.822110, -0.531063,
		0.476044, -0.390262, -0.788085,
		-0.855147, -0.414524, -0.311279,
		30.661146, 17.983446, 22.257404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281261, 18.536594, 21.803673>,  <31.259748, 18.273613, 22.475300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281261, 18.536594, 21.803673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908045, 18.399136, 21.846275>,  <30.684114, 18.316660, 21.871838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908045, 18.399136, 21.846275>,  <31.281261, 18.536594, 21.803673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908045, 18.399136, 21.846275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357870, 0.856093, -0.372872,
		0.036956, -0.386020, -0.921750,
		-0.933040, -0.343646, 0.106507,
		30.628132, 18.296041, 21.878227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923233, 18.575336, 21.173658>,  <31.281261, 18.536594, 21.803673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923233, 18.575336, 21.173658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.633720, 18.567299, 21.449554>,  <30.460012, 18.562477, 21.615091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.633720, 18.567299, 21.449554>,  <30.923233, 18.575336, 21.173658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633720, 18.567299, 21.449554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476465, 0.737580, -0.478495,
		-0.499124, -0.674961, -0.543418,
		-0.723779, -0.020092, 0.689739,
		30.416586, 18.561272, 21.656477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266747, 18.596346, 20.769564>,  <30.923233, 18.575336, 21.173658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266747, 18.596346, 20.769564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188875, 18.713028, 21.144157>,  <30.142153, 18.783037, 21.368914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188875, 18.713028, 21.144157>,  <30.266747, 18.596346, 20.769564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188875, 18.713028, 21.144157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380306, 0.857620, -0.346200,
		-0.904139, -0.423550, -0.056024,
		-0.194681, 0.291706, 0.936487,
		30.130470, 18.800539, 21.425104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601377, 18.752735, 20.736856>,  <30.266747, 18.596346, 20.769564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601377, 18.752735, 20.736856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750389, 18.935970, 21.059689>,  <29.839796, 19.045912, 21.253387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750389, 18.935970, 21.059689>,  <29.601377, 18.752735, 20.736856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750389, 18.935970, 21.059689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539979, 0.814296, -0.212945,
		-0.754749, -0.356478, 0.550706,
		0.372527, 0.458090, 0.807079,
		29.862148, 19.073397, 21.301813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950348, 19.030046, 21.061079>,  <29.601377, 18.752735, 20.736856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950348, 19.030046, 21.061079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251289, 19.247437, 21.209995>,  <29.431854, 19.377871, 21.299345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251289, 19.247437, 21.209995>,  <28.950348, 19.030046, 21.061079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251289, 19.247437, 21.209995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551930, 0.828558, -0.094153,
		-0.359636, -0.134643, 0.923327,
		0.752353, 0.543473, 0.372293,
		29.476995, 19.410479, 21.321684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609308, 19.716501, 21.371126>,  <28.950348, 19.030046, 21.061079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609308, 19.716501, 21.371126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.000742, 19.797688, 21.384830>,  <29.235603, 19.846399, 21.393053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.000742, 19.797688, 21.384830>,  <28.609308, 19.716501, 21.371126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000742, 19.797688, 21.384830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205817, 0.962627, 0.176037,
		0.002750, -0.179319, 0.983787,
		0.978586, 0.202965, 0.034259,
		29.294317, 19.858578, 21.395109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732073, 19.915173, 22.103760>,  <28.609308, 19.716501, 21.371126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732073, 19.915173, 22.103760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.994438, 20.069134, 21.844028>,  <29.151857, 20.161510, 21.688190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.994438, 20.069134, 21.844028>,  <28.732073, 19.915173, 22.103760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994438, 20.069134, 21.844028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421918, 0.900245, 0.107444,
		0.625909, 0.203488, 0.752882,
		0.655915, 0.384904, -0.649327,
		29.191212, 20.184605, 21.649231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218836, 20.449253, 22.386833>,  <28.732073, 19.915173, 22.103760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218836, 20.449253, 22.386833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.266031, 20.540413, 22.000229>,  <29.294348, 20.595108, 21.768267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.266031, 20.540413, 22.000229>,  <29.218836, 20.449253, 22.386833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266031, 20.540413, 22.000229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166557, 0.964061, 0.206990,
		0.978947, 0.136557, 0.151706,
		0.117988, 0.227900, -0.966510,
		29.301428, 20.608782, 21.710276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650232, 21.089682, 22.385876>,  <29.218836, 20.449253, 22.386833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650232, 21.089682, 22.385876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499657, 21.052227, 22.017197>,  <29.409311, 21.029755, 21.795990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499657, 21.052227, 22.017197>,  <29.650232, 21.089682, 22.385876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499657, 21.052227, 22.017197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075886, 0.994653, -0.070052,
		0.923329, 0.043574, -0.381530,
		-0.376437, -0.093634, -0.921698,
		29.386726, 21.024137, 21.740686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996176, 21.601830, 21.985655>,  <29.650232, 21.089682, 22.385876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996176, 21.601830, 21.985655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651058, 21.516094, 21.802505>,  <29.443989, 21.464653, 21.692616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651058, 21.516094, 21.802505>,  <29.996176, 21.601830, 21.985655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651058, 21.516094, 21.802505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184793, 0.976714, -0.109002,
		0.470576, -0.009434, -0.882309,
		-0.862792, -0.214338, -0.457874,
		29.392221, 21.451794, 21.665144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812458, 21.398046, 21.904009>,  <29.996176, 21.601830, 21.985655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812458, 21.398046, 21.904009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147791, 21.602417, 21.980064>,  <31.348991, 21.725039, 22.025698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147791, 21.602417, 21.980064>,  <30.812458, 21.398046, 21.904009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147791, 21.602417, 21.980064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267353, -0.689268, 0.673373,
		0.475099, -0.513677, -0.714434,
		0.838334, 0.510925, 0.190138,
		31.399290, 21.755695, 22.037106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346388, 20.934526, 21.806290>,  <30.812458, 21.398046, 21.904009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346388, 20.934526, 21.806290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507572, 21.230511, 22.021725>,  <31.604282, 21.408102, 22.150986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507572, 21.230511, 22.021725>,  <31.346388, 20.934526, 21.806290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507572, 21.230511, 22.021725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439918, -0.672642, 0.594999,
		0.802554, -0.002828, -0.596573,
		0.402963, 0.739962, 0.538587,
		31.628462, 21.452499, 22.183300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019222, 20.792551, 21.731268>,  <31.346388, 20.934526, 21.806290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019222, 20.792551, 21.731268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924276, 20.994465, 22.063255>,  <31.867308, 21.115612, 22.262447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924276, 20.994465, 22.063255>,  <32.019222, 20.792551, 21.731268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924276, 20.994465, 22.063255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325148, -0.763822, 0.557544,
		0.915388, 0.402207, 0.017178,
		-0.237369, 0.504783, 0.829970,
		31.853065, 21.145901, 22.312246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613350, 20.855127, 22.064779>,  <32.019222, 20.792551, 21.731268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613350, 20.855127, 22.064779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344212, 20.866486, 22.360474>,  <32.182728, 20.873301, 22.537889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344212, 20.866486, 22.360474>,  <32.613350, 20.855127, 22.064779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344212, 20.866486, 22.360474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580125, -0.599817, 0.551067,
		0.459055, 0.799633, 0.387112,
		-0.672848, 0.028397, 0.739236,
		32.142357, 20.875004, 22.582245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001621, 20.684557, 22.550030>,  <32.613350, 20.855127, 22.064779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001621, 20.684557, 22.550030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645412, 20.623867, 22.721584>,  <32.431686, 20.587452, 22.824516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645412, 20.623867, 22.721584>,  <33.001621, 20.684557, 22.550030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645412, 20.623867, 22.721584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376258, -0.775566, 0.506879,
		0.255724, 0.612761, 0.747750,
		-0.890525, -0.151726, 0.428887,
		32.378254, 20.578350, 22.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146942, 20.606401, 23.221567>,  <33.001621, 20.684557, 22.550030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146942, 20.606401, 23.221567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784504, 20.447514, 23.163319>,  <32.567039, 20.352180, 23.128370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784504, 20.447514, 23.163319>,  <33.146942, 20.606401, 23.221567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784504, 20.447514, 23.163319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306749, -0.853875, 0.420478,
		-0.291363, 0.336326, 0.895541,
		-0.906098, -0.397218, -0.145620,
		32.512676, 20.328348, 23.119633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891663, 20.361937, 23.859402>,  <33.146942, 20.606401, 23.221567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891663, 20.361937, 23.859402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692013, 20.138439, 23.594471>,  <32.572224, 20.004341, 23.435513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692013, 20.138439, 23.594471>,  <32.891663, 20.361937, 23.859402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692013, 20.138439, 23.594471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314350, -0.829031, 0.462485,
		-0.807500, 0.022636, 0.589433,
		-0.499127, -0.558745, -0.662327,
		32.542274, 19.970816, 23.395773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569057, 20.351019, 24.575583>,  <32.891663, 20.361937, 23.859402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569057, 20.351019, 24.575583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774864, 20.439148, 24.907059>,  <32.898350, 20.492025, 25.105944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774864, 20.439148, 24.907059>,  <32.569057, 20.351019, 24.575583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774864, 20.439148, 24.907059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160720, 0.974078, -0.159191,
		-0.842282, -0.051280, 0.536593,
		0.514520, 0.220324, 0.828690,
		32.929218, 20.505245, 25.155666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258648, 20.886200, 24.832224>,  <32.569057, 20.351019, 24.575583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258648, 20.886200, 24.832224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603821, 20.916214, 25.032112>,  <32.810925, 20.934223, 25.152044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603821, 20.916214, 25.032112>,  <32.258648, 20.886200, 24.832224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603821, 20.916214, 25.032112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141399, 0.985265, 0.096229,
		-0.485135, -0.153699, 0.860825,
		0.862931, 0.075036, 0.499719,
		32.862701, 20.938725, 25.182028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142998, 21.225687, 25.486320>,  <32.258648, 20.886200, 24.832224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142998, 21.225687, 25.486320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528980, 21.296810, 25.409130>,  <32.760571, 21.339483, 25.362816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528980, 21.296810, 25.409130>,  <32.142998, 21.225687, 25.486320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528980, 21.296810, 25.409130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150023, 0.977204, 0.150220,
		0.215286, -0.116005, 0.969636,
		0.964958, 0.177808, -0.192975,
		32.818466, 21.350153, 25.351238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231899, 21.758738, 25.945620>,  <32.142998, 21.225687, 25.486320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231899, 21.758738, 25.945620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510326, 21.755829, 25.658443>,  <32.677383, 21.754084, 25.486137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510326, 21.755829, 25.658443>,  <32.231899, 21.758738, 25.945620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510326, 21.755829, 25.658443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017177, 0.999494, -0.026779,
		0.717771, 0.030972, 0.695590,
		0.696067, -0.007273, -0.717940,
		32.719147, 21.753647, 25.443062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531269, 22.373426, 26.113123>,  <32.231899, 21.758738, 25.945620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531269, 22.373426, 26.113123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651703, 22.300129, 25.738792>,  <32.723965, 22.256149, 25.514194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651703, 22.300129, 25.738792>,  <32.531269, 22.373426, 26.113123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651703, 22.300129, 25.738792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105414, 0.968953, -0.223648,
		0.947752, 0.165986, 0.272423,
		0.301088, -0.183245, -0.935824,
		32.742027, 22.245155, 25.458046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963173, 22.947176, 25.969471>,  <32.531269, 22.373426, 26.113123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963173, 22.947176, 25.969471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900288, 22.820797, 25.595207>,  <32.862556, 22.744968, 25.370649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900288, 22.820797, 25.595207>,  <32.963173, 22.947176, 25.969471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900288, 22.820797, 25.595207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021033, 0.948298, -0.316683,
		0.987340, -0.030108, -0.155732,
		-0.157215, -0.315949, -0.935660,
		32.853123, 22.726013, 25.314508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320866, 23.362490, 25.473911>,  <32.963173, 22.947176, 25.969471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320866, 23.362490, 25.473911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068317, 23.176659, 25.225544>,  <32.916790, 23.065159, 25.076523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068317, 23.176659, 25.225544>,  <33.320866, 23.362490, 25.473911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068317, 23.176659, 25.225544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016890, 0.792258, -0.609953,
		0.775290, -0.395599, -0.492369,
		-0.631380, -0.464573, -0.620911,
		32.878906, 23.037285, 25.039268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.912636, 18.832678, 28.088251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.835360, 18.844002, 27.695950>,  <28.788994, 18.850796, 27.460569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.835360, 18.844002, 27.695950>,  <28.912636, 18.832678, 28.088251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835360, 18.844002, 27.695950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042432, 0.998890, 0.020473,
		0.980243, -0.037660, -0.194179,
		-0.193192, 0.028308, -0.980753,
		28.777403, 18.852493, 27.401724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449118, 19.250666, 27.883915>,  <28.912636, 18.832678, 28.088251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449118, 19.250666, 27.883915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.195431, 19.254166, 27.574673>,  <29.043219, 19.256266, 27.389128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.195431, 19.254166, 27.574673>,  <29.449118, 19.250666, 27.883915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195431, 19.254166, 27.574673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090652, 0.993880, -0.063120,
		0.767822, -0.110115, -0.631129,
		-0.634218, 0.008748, -0.773105,
		29.005165, 19.256790, 27.342741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756842, 19.527807, 27.246859>,  <29.449118, 19.250666, 27.883915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756842, 19.527807, 27.246859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365271, 19.577744, 27.182220>,  <29.130327, 19.607706, 27.143436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365271, 19.577744, 27.182220>,  <29.756842, 19.527807, 27.246859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365271, 19.577744, 27.182220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109086, 0.988684, 0.102980,
		0.172624, 0.083182, -0.981469,
		-0.978929, 0.124841, -0.161597,
		29.071592, 19.615196, 27.133741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748377, 20.046665, 26.826097>,  <29.756842, 19.527807, 27.246859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748377, 20.046665, 26.826097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.368223, 20.041454, 26.950420>,  <29.140131, 20.038328, 27.025013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.368223, 20.041454, 26.950420>,  <29.748377, 20.046665, 26.826097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368223, 20.041454, 26.950420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060286, 0.972470, 0.225097,
		-0.305182, 0.232666, -0.923434,
		-0.950384, -0.013025, 0.310806,
		29.083107, 20.037546, 27.043663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240112, 20.509470, 26.431761>,  <29.748377, 20.046665, 26.826097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240112, 20.509470, 26.431761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.037136, 20.449810, 26.771233>,  <28.915350, 20.414013, 26.974916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.037136, 20.449810, 26.771233>,  <29.240112, 20.509470, 26.431761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037136, 20.449810, 26.771233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230802, 0.972444, 0.032903,
		-0.830202, -0.179181, -0.527881,
		-0.507439, -0.149152, 0.848681,
		28.884905, 20.405064, 27.025837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566586, 20.926643, 26.415663>,  <29.240112, 20.509470, 26.431761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566586, 20.926643, 26.415663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.636059, 20.839249, 26.799767>,  <28.677742, 20.786812, 27.030230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.636059, 20.839249, 26.799767>,  <28.566586, 20.926643, 26.415663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636059, 20.839249, 26.799767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306258, 0.914747, 0.263524,
		-0.935970, -0.339857, 0.091962,
		0.173682, -0.218486, 0.960259,
		28.688164, 20.773703, 27.087845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868305, 21.039408, 26.710989>,  <28.566586, 20.926643, 26.415663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868305, 21.039408, 26.710989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.159193, 21.077129, 26.982948>,  <28.333725, 21.099762, 27.146124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.159193, 21.077129, 26.982948>,  <27.868305, 21.039408, 26.710989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159193, 21.077129, 26.982948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405657, 0.858078, 0.314873,
		-0.553711, -0.504786, 0.662265,
		0.727219, 0.094304, 0.679897,
		28.377359, 21.105421, 27.186918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494678, 21.231461, 27.293613>,  <27.868305, 21.039408, 26.710989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494678, 21.231461, 27.293613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876017, 21.315697, 27.380131>,  <28.104820, 21.366238, 27.432041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876017, 21.315697, 27.380131>,  <27.494678, 21.231461, 27.293613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876017, 21.315697, 27.380131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275555, 0.899683, 0.338586,
		-0.123293, -0.382390, 0.915738,
		0.953346, 0.210591, 0.216295,
		28.162020, 21.378874, 27.445019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467819, 21.573399, 27.929842>,  <27.494678, 21.231461, 27.293613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467819, 21.573399, 27.929842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.815523, 21.689877, 27.770046>,  <28.024145, 21.759764, 27.674170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.815523, 21.689877, 27.770046>,  <27.467819, 21.573399, 27.929842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815523, 21.689877, 27.770046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089957, 0.887783, 0.451386,
		0.486101, -0.356435, 0.797910,
		0.869261, 0.291197, -0.399488,
		28.076302, 21.777235, 27.650200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762932, 22.001707, 28.437048>,  <27.467819, 21.573399, 27.929842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762932, 22.001707, 28.437048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.998045, 22.099171, 28.128468>,  <28.139112, 22.157648, 27.943319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.998045, 22.099171, 28.128468>,  <27.762932, 22.001707, 28.437048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998045, 22.099171, 28.128468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035183, 0.960364, 0.276520,
		0.808252, -0.135393, 0.573060,
		0.587785, 0.243660, -0.771453,
		28.174381, 22.172268, 27.897032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303326, 22.456461, 28.738539>,  <27.762932, 22.001707, 28.437048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303326, 22.456461, 28.738539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.286852, 22.531075, 28.345905>,  <28.276968, 22.575842, 28.110325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.286852, 22.531075, 28.345905>,  <28.303326, 22.456461, 28.738539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286852, 22.531075, 28.345905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066262, 0.980766, 0.183596,
		0.996952, -0.057481, -0.052751,
		-0.041183, 0.186532, -0.981585,
		28.274496, 22.587034, 28.051430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885525, 22.905424, 28.479673>,  <28.303326, 22.456461, 28.738539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885525, 22.905424, 28.479673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.570211, 22.957260, 28.239067>,  <28.381023, 22.988361, 28.094704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.570211, 22.957260, 28.239067>,  <28.885525, 22.905424, 28.479673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570211, 22.957260, 28.239067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151868, 0.988303, 0.013900,
		0.596279, -0.080394, -0.798742,
		-0.788281, 0.129592, -0.601514,
		28.333727, 22.996138, 28.058613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656841, 22.952902, 28.258928>,  <28.885525, 22.905424, 28.479673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656841, 22.952902, 28.258928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.993900, 23.003304, 28.468334>,  <30.196136, 23.033545, 28.593977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.993900, 23.003304, 28.468334>,  <29.656841, 22.952902, 28.258928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993900, 23.003304, 28.468334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125977, -0.991385, 0.035846,
		0.523521, 0.035746, -0.851263,
		0.842648, 0.126006, 0.523514,
		30.246695, 23.041105, 28.625389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139385, 22.653336, 28.014383>,  <29.656841, 22.952902, 28.258928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139385, 22.653336, 28.014383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.295959, 22.657425, 28.382442>,  <30.389904, 22.659878, 28.603279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.295959, 22.657425, 28.382442>,  <30.139385, 22.653336, 28.014383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295959, 22.657425, 28.382442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300176, -0.946659, -0.117177,
		0.869870, 0.322074, -0.373624,
		0.391434, 0.010224, 0.920149,
		30.413389, 22.660492, 28.658487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711514, 22.169399, 28.001263>,  <30.139385, 22.653336, 28.014383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711514, 22.169399, 28.001263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.708212, 22.247185, 28.393612>,  <30.706230, 22.293856, 28.629023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.708212, 22.247185, 28.393612>,  <30.711514, 22.169399, 28.001263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708212, 22.247185, 28.393612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335011, -0.923684, 0.185947,
		0.942178, 0.330139, -0.057524,
		-0.008254, 0.194466, 0.980874,
		30.705736, 22.305525, 28.687874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402035, 22.026073, 28.273689>,  <30.711514, 22.169399, 28.001263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402035, 22.026073, 28.273689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118910, 21.976852, 28.551929>,  <30.949034, 21.947321, 28.718874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118910, 21.976852, 28.551929>,  <31.402035, 22.026073, 28.273689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118910, 21.976852, 28.551929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287906, -0.949465, 0.125001,
		0.645065, 0.288745, 0.707472,
		-0.707814, -0.123052, 0.695599,
		30.906565, 21.939938, 28.760609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768318, 21.714573, 28.709951>,  <31.402035, 22.026073, 28.273689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768318, 21.714573, 28.709951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392017, 21.640533, 28.823601>,  <31.166237, 21.596109, 28.891790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392017, 21.640533, 28.823601>,  <31.768318, 21.714573, 28.709951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392017, 21.640533, 28.823601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244399, -0.950934, 0.189718,
		0.235068, 0.247917, 0.939830,
		-0.940751, -0.185097, 0.284125,
		31.109793, 21.585005, 28.908838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814245, 21.251232, 29.274452>,  <31.768318, 21.714573, 28.709951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814245, 21.251232, 29.274452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430595, 21.200821, 29.173107>,  <31.200405, 21.170574, 29.112299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430595, 21.200821, 29.173107>,  <31.814245, 21.251232, 29.274452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430595, 21.200821, 29.173107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079746, -0.979440, 0.185304,
		-0.271508, 0.157525, 0.949458,
		-0.959127, -0.126027, -0.253364,
		31.142857, 21.163013, 29.097097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411947, 20.805367, 29.746061>,  <31.814245, 21.251232, 29.274452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411947, 20.805367, 29.746061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213930, 20.762100, 29.401218>,  <31.095119, 20.736139, 29.194313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213930, 20.762100, 29.401218>,  <31.411947, 20.805367, 29.746061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213930, 20.762100, 29.401218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158575, -0.986803, 0.032756,
		-0.854275, -0.120494, 0.505663,
		-0.495043, -0.108168, -0.862109,
		31.065416, 20.729650, 29.142586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050243, 20.116154, 29.770868>,  <31.411947, 20.805367, 29.746061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050243, 20.116154, 29.770868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.980202, 20.172867, 29.381153>,  <30.938177, 20.206894, 29.147324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.980202, 20.172867, 29.381153>,  <31.050243, 20.116154, 29.770868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980202, 20.172867, 29.381153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192482, -0.965551, -0.175106,
		-0.965551, -0.218195, 0.141783,
		0.175106, -0.141783, 0.974287,
		30.927670, 20.215403, 29.088867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468952, 19.647850, 29.451941>,  <31.050243, 20.116154, 29.770868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468952, 19.647850, 29.451941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704067, 19.742668, 29.142536>,  <30.845137, 19.799559, 28.956894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704067, 19.742668, 29.142536>,  <30.468952, 19.647850, 29.451941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704067, 19.742668, 29.142536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138556, -0.971481, -0.192425,
		-0.797062, 0.005931, -0.603868,
		0.587787, 0.237044, -0.773509,
		30.880404, 19.813782, 28.910484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466032, 19.077513, 29.036211>,  <30.468952, 19.647850, 29.451941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466032, 19.077513, 29.036211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.767376, 19.260895, 28.847630>,  <30.948183, 19.370924, 28.734482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.767376, 19.260895, 28.847630>,  <30.466032, 19.077513, 29.036211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767376, 19.260895, 28.847630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358900, -0.887376, -0.289403,
		-0.551033, 0.048821, -0.833054,
		0.753361, 0.458454, -0.471452,
		30.993383, 19.398432, 28.706194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511324, 18.628649, 28.449961>,  <30.466032, 19.077513, 29.036211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511324, 18.628649, 28.449961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.860033, 18.824059, 28.464687>,  <31.069260, 18.941303, 28.473524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.860033, 18.824059, 28.464687>,  <30.511324, 18.628649, 28.449961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860033, 18.824059, 28.464687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484123, -0.847526, -0.217543,
		-0.075070, 0.207473, -0.975356,
		0.871774, 0.488524, 0.036818,
		31.121565, 18.970615, 28.475733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918915, 18.352188, 27.867620>,  <30.511324, 18.628649, 28.449961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918915, 18.352188, 27.867620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.168165, 18.505630, 28.140255>,  <31.317717, 18.597696, 28.303835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.168165, 18.505630, 28.140255>,  <30.918915, 18.352188, 27.867620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168165, 18.505630, 28.140255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537852, -0.842861, -0.017348,
		0.567826, 0.377401, -0.731534,
		0.623128, 0.383607, 0.681584,
		31.355104, 18.620712, 28.344730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459532, 18.163023, 27.556211>,  <30.918915, 18.352188, 27.867620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459532, 18.163023, 27.556211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567266, 18.264893, 27.927715>,  <31.631908, 18.326014, 28.150618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567266, 18.264893, 27.927715>,  <31.459532, 18.163023, 27.556211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567266, 18.264893, 27.927715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592405, -0.804166, 0.048712,
		0.759285, 0.537083, -0.367462,
		0.269338, 0.254672, 0.928762,
		31.648067, 18.341295, 28.206345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230461, 18.252592, 27.633951>,  <31.459532, 18.163023, 27.556211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230461, 18.252592, 27.633951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.095818, 18.139168, 27.993126>,  <32.015030, 18.071114, 28.208630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.095818, 18.139168, 27.993126>,  <32.230461, 18.252592, 27.633951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095818, 18.139168, 27.993126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642358, -0.766404, -0.001226,
		0.688529, 0.576383, 0.440126,
		-0.336608, -0.283563, 0.897935,
		31.994835, 18.054098, 28.262506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697823, 18.584227, 27.280588>,  <32.230461, 18.252592, 27.633951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697823, 18.584227, 27.280588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.009838, 18.446640, 27.071503>,  <33.197048, 18.364088, 26.946051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.009838, 18.446640, 27.071503>,  <32.697823, 18.584227, 27.280588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009838, 18.446640, 27.071503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018541, 0.847699, -0.530153,
		0.625460, 0.403846, 0.667614,
		0.780036, -0.343967, -0.522714,
		33.243851, 18.343451, 26.914688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233437, 19.114235, 27.250683>,  <32.697823, 18.584227, 27.280588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233437, 19.114235, 27.250683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.316975, 18.875664, 26.940674>,  <33.367100, 18.732521, 26.754669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.316975, 18.875664, 26.940674>,  <33.233437, 19.114235, 27.250683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316975, 18.875664, 26.940674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107207, 0.801684, -0.588056,
		0.972054, 0.039726, 0.231371,
		0.208848, -0.596427, -0.775021,
		33.379627, 18.696735, 26.708168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827328, 19.354244, 26.974413>,  <33.233437, 19.114235, 27.250683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827328, 19.354244, 26.974413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.652905, 19.154911, 26.674675>,  <33.548252, 19.035311, 26.494831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.652905, 19.154911, 26.674675>,  <33.827328, 19.354244, 26.974413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652905, 19.154911, 26.674675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005117, 0.831296, -0.555807,
		0.899905, -0.246198, -0.359942,
		-0.436057, -0.498331, -0.749347,
		33.522087, 19.005411, 26.449871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256752, 19.474052, 26.370403>,  <33.827328, 19.354244, 26.974413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256752, 19.474052, 26.370403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891029, 19.371990, 26.244587>,  <33.671597, 19.310753, 26.169098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891029, 19.371990, 26.244587>,  <34.256752, 19.474052, 26.370403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891029, 19.371990, 26.244587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058573, 0.851746, -0.520671,
		0.400760, -0.457631, -0.793704,
		-0.914309, -0.255154, -0.314541,
		33.616737, 19.295444, 26.150225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199924, 19.582731, 25.718319>,  <34.256752, 19.474052, 26.370403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199924, 19.582731, 25.718319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.806450, 19.577320, 25.790073>,  <33.570366, 19.574074, 25.833126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.806450, 19.577320, 25.790073>,  <34.199924, 19.582731, 25.718319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806450, 19.577320, 25.790073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125057, 0.768232, -0.627838,
		-0.129316, -0.640029, -0.757391,
		-0.983686, -0.013527, 0.179384,
		33.511345, 19.573261, 25.843889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856705, 19.661913, 25.025322>,  <34.199924, 19.582731, 25.718319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856705, 19.661913, 25.025322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574196, 19.753731, 25.293198>,  <33.404690, 19.808821, 25.453924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574196, 19.753731, 25.293198>,  <33.856705, 19.661913, 25.025322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574196, 19.753731, 25.293198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274997, 0.782732, -0.558308,
		-0.652345, -0.578481, -0.489700,
		-0.706274, 0.229543, 0.669691,
		33.362312, 19.822594, 25.494104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344509, 19.942818, 24.602049>,  <33.856705, 19.661913, 25.025322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344509, 19.942818, 24.602049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275795, 20.065948, 24.976372>,  <33.234566, 20.139826, 25.200966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275795, 20.065948, 24.976372>,  <33.344509, 19.942818, 24.602049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275795, 20.065948, 24.976372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209093, 0.916891, -0.339987,
		-0.962689, -0.254076, -0.093145,
		-0.171786, 0.307825, 0.935806,
		33.224258, 20.158297, 25.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692734, 19.710999, 24.240084>,  <33.344509, 19.942818, 24.602049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692734, 19.710999, 24.240084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.618229, 19.624710, 23.856674>,  <32.573524, 19.572937, 23.626629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.618229, 19.624710, 23.856674>,  <32.692734, 19.710999, 24.240084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618229, 19.624710, 23.856674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175084, -0.967271, 0.183665,
		-0.966773, -0.133612, 0.217939,
		-0.186266, -0.215721, -0.958525,
		32.562347, 19.559994, 23.569117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188709, 19.157238, 24.220793>,  <32.692734, 19.710999, 24.240084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188709, 19.157238, 24.220793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.365013, 19.163227, 23.861794>,  <32.470795, 19.166821, 23.646393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.365013, 19.163227, 23.861794>,  <32.188709, 19.157238, 24.220793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365013, 19.163227, 23.861794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165960, -0.983982, 0.065089,
		-0.882149, -0.177638, -0.436185,
		0.440761, 0.014971, -0.897500,
		32.497242, 19.167719, 23.592543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832859, 18.652737, 23.721786>,  <32.188709, 19.157238, 24.220793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832859, 18.652737, 23.721786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199177, 18.698265, 23.567715>,  <32.418968, 18.725582, 23.475271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199177, 18.698265, 23.567715>,  <31.832859, 18.652737, 23.721786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199177, 18.698265, 23.567715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155182, -0.984806, 0.077946,
		-0.370456, -0.131155, -0.919544,
		0.915795, 0.113821, -0.385180,
		32.473915, 18.732412, 23.452160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845942, 18.120159, 23.287697>,  <31.832859, 18.652737, 23.721786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845942, 18.120159, 23.287697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.229683, 18.233044, 23.287651>,  <32.459927, 18.300774, 23.287624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.229683, 18.233044, 23.287651>,  <31.845942, 18.120159, 23.287697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229683, 18.233044, 23.287651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278071, -0.945344, -0.170300,
		-0.048168, 0.163346, -0.985392,
		0.959352, 0.282212, -0.000114,
		32.517490, 18.317707, 23.287617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139622, 17.885908, 22.686522>,  <31.845942, 18.120159, 23.287697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139622, 17.885908, 22.686522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454201, 17.944050, 22.926647>,  <32.642948, 17.978935, 23.070723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454201, 17.944050, 22.926647>,  <32.139622, 17.885908, 22.686522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454201, 17.944050, 22.926647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353376, -0.903021, -0.244291,
		0.506590, 0.404258, -0.761539,
		0.786443, 0.145354, 0.600317,
		32.690132, 17.987656, 23.106743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739498, 17.764837, 22.294323>,  <32.139622, 17.885908, 22.686522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739498, 17.764837, 22.294323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862812, 17.721561, 22.672371>,  <32.936802, 17.695595, 22.899200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862812, 17.721561, 22.672371>,  <32.739498, 17.764837, 22.294323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862812, 17.721561, 22.672371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416396, -0.877932, -0.236324,
		0.855320, 0.466401, -0.225606,
		0.308289, -0.108191, 0.945121,
		32.955299, 17.689104, 22.955908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428333, 17.547647, 22.237741>,  <32.739498, 17.764837, 22.294323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428333, 17.547647, 22.237741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280273, 17.435757, 22.592083>,  <33.191437, 17.368622, 22.804688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280273, 17.435757, 22.592083>,  <33.428333, 17.547647, 22.237741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280273, 17.435757, 22.592083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338865, -0.928539, -0.151613,
		0.864961, 0.244065, 0.438492,
		-0.370153, -0.279728, 0.885854,
		33.169228, 17.351839, 22.857840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923046, 17.130869, 22.438454>,  <33.428333, 17.547647, 22.237741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923046, 17.130869, 22.438454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603325, 17.049656, 22.664688>,  <33.411491, 17.000929, 22.800430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603325, 17.049656, 22.664688>,  <33.923046, 17.130869, 22.438454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603325, 17.049656, 22.664688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063147, -0.964362, -0.256940,
		0.597599, -0.169659, 0.783640,
		-0.799304, -0.203032, 0.565589,
		33.363533, 16.988747, 22.834364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054665, 16.606262, 22.772921>,  <33.923046, 17.130869, 22.438454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054665, 16.606262, 22.772921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655628, 16.580826, 22.784050>,  <33.416206, 16.565563, 22.790728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655628, 16.580826, 22.784050>,  <34.054665, 16.606262, 22.772921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655628, 16.580826, 22.784050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060432, -0.992892, -0.102534,
		0.034148, -0.100606, 0.994340,
		-0.997588, -0.063592, 0.027825,
		33.356350, 16.561749, 22.792398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.725653, 31.593115, 21.358082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416372, 31.439507, 21.156216>,  <29.230804, 31.347342, 21.035097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416372, 31.439507, 21.156216>,  <29.725653, 31.593115, 21.358082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416372, 31.439507, 21.156216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452135, -0.891838, -0.014082,
		-0.444671, -0.239065, 0.863201,
		-0.773202, -0.384021, -0.504664,
		29.184412, 31.324301, 21.004816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669409, 30.885599, 21.511143>,  <29.725653, 31.593115, 21.358082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669409, 30.885599, 21.511143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436403, 30.890667, 21.186054>,  <29.296600, 30.893707, 20.991001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436403, 30.890667, 21.186054>,  <29.669409, 30.885599, 21.511143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436403, 30.890667, 21.186054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193835, -0.968866, -0.154036,
		-0.789369, -0.247262, 0.561922,
		-0.582515, 0.012671, -0.812721,
		29.261648, 30.894468, 20.942238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440022, 30.321381, 21.614954>,  <29.669409, 30.885599, 21.511143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440022, 30.321381, 21.614954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365847, 30.397209, 21.229275>,  <29.321342, 30.442707, 20.997868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365847, 30.397209, 21.229275>,  <29.440022, 30.321381, 21.614954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365847, 30.397209, 21.229275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299821, -0.923512, -0.239236,
		-0.935799, -0.333449, 0.114416,
		-0.185438, 0.189573, -0.964196,
		29.310215, 30.454081, 20.940016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960356, 29.871504, 21.388235>,  <29.440022, 30.321381, 21.614954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960356, 29.871504, 21.388235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167253, 30.000187, 21.071007>,  <29.291393, 30.077396, 20.880671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167253, 30.000187, 21.071007>,  <28.960356, 29.871504, 21.388235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167253, 30.000187, 21.071007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137975, -0.945886, -0.293706,
		-0.844642, 0.042494, -0.533643,
		0.517246, 0.321706, -0.793071,
		29.322428, 30.096699, 20.833086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805767, 29.377684, 20.864294>,  <28.960356, 29.871504, 21.388235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805767, 29.377684, 20.864294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124996, 29.559139, 20.705654>,  <29.316534, 29.668013, 20.610470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124996, 29.559139, 20.705654>,  <28.805767, 29.377684, 20.864294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124996, 29.559139, 20.705654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329139, -0.879517, -0.343683,
		-0.504725, 0.143747, -0.851228,
		0.798073, 0.453638, -0.396602,
		29.364418, 29.695230, 20.586674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058426, 28.964640, 20.261522>,  <28.805767, 29.377684, 20.864294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058426, 28.964640, 20.261522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375309, 29.196598, 20.337547>,  <29.565439, 29.335773, 20.383162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375309, 29.196598, 20.337547>,  <29.058426, 28.964640, 20.261522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375309, 29.196598, 20.337547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605680, -0.709121, -0.360970,
		-0.074549, 0.401080, -0.913004,
		0.792209, 0.579898, 0.190062,
		29.612972, 29.370567, 20.394566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518536, 28.928169, 19.675610>,  <29.058426, 28.964640, 20.261522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518536, 28.928169, 19.675610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771675, 29.038475, 19.965012>,  <29.923559, 29.104658, 20.138653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771675, 29.038475, 19.965012>,  <29.518536, 28.928169, 19.675610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771675, 29.038475, 19.965012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661792, -0.677695, -0.320563,
		0.401914, 0.681676, -0.611377,
		0.632848, 0.275766, 0.723503,
		29.961529, 29.121204, 20.182062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215843, 28.977888, 19.343258>,  <29.518536, 28.928169, 19.675610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215843, 28.977888, 19.343258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284950, 28.920410, 19.733028>,  <30.326414, 28.885923, 19.966890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284950, 28.920410, 19.733028>,  <30.215843, 28.977888, 19.343258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284950, 28.920410, 19.733028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635601, -0.739487, -0.221743,
		0.752438, 0.657655, -0.036425,
		0.172767, -0.143696, 0.974424,
		30.336781, 28.877302, 20.025356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883562, 28.769175, 19.367825>,  <30.215843, 28.977888, 19.343258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883562, 28.769175, 19.367825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751493, 28.640869, 19.722923>,  <30.672253, 28.563885, 19.935982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751493, 28.640869, 19.722923>,  <30.883562, 28.769175, 19.367825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751493, 28.640869, 19.722923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620343, -0.782601, -0.052053,
		0.711449, 0.533522, 0.457379,
		-0.330173, -0.320765, 0.887747,
		30.652441, 28.544640, 19.989248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442709, 28.608007, 19.717108>,  <30.883562, 28.769175, 19.367825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442709, 28.608007, 19.717108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147453, 28.399918, 19.888931>,  <30.970301, 28.275064, 19.992025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147453, 28.399918, 19.888931>,  <31.442709, 28.608007, 19.717108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147453, 28.399918, 19.888931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614090, -0.781744, 0.108486,
		0.279367, 0.343865, 0.896499,
		-0.738138, -0.520224, 0.429558,
		30.926012, 28.243851, 20.017799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776867, 28.090073, 20.087788>,  <31.442709, 28.608007, 19.717108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776867, 28.090073, 20.087788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401609, 27.955044, 20.118591>,  <31.176455, 27.874027, 20.137074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401609, 27.955044, 20.118591>,  <31.776867, 28.090073, 20.087788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401609, 27.955044, 20.118591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346125, -0.920145, 0.183113,
		0.009045, 0.198441, 0.980071,
		-0.938145, -0.337571, 0.077008,
		31.120167, 27.853773, 20.141693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778646, 27.726025, 20.720182>,  <31.776867, 28.090073, 20.087788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778646, 27.726025, 20.720182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466803, 27.601406, 20.502872>,  <31.279697, 27.526634, 20.372486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466803, 27.601406, 20.502872>,  <31.778646, 27.726025, 20.720182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466803, 27.601406, 20.502872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289509, -0.948512, 0.128486,
		-0.555334, -0.057115, 0.829664,
		-0.779608, -0.311548, -0.543276,
		31.232920, 27.507942, 20.339890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642895, 27.968493, 21.382395>,  <31.778646, 27.726025, 20.720182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642895, 27.968493, 21.382395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878538, 27.984886, 21.705200>,  <32.019924, 27.994722, 21.898884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878538, 27.984886, 21.705200>,  <31.642895, 27.968493, 21.382395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878538, 27.984886, 21.705200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087724, 0.996054, 0.013452,
		-0.803277, -0.078719, 0.590380,
		0.589109, 0.040985, 0.807013,
		32.055271, 27.997181, 21.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432135, 28.536154, 21.625977>,  <31.642895, 27.968493, 21.382395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432135, 28.536154, 21.625977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743666, 28.531158, 21.876823>,  <31.930584, 28.528160, 22.027330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743666, 28.531158, 21.876823>,  <31.432135, 28.536154, 21.625977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743666, 28.531158, 21.876823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016962, 0.999017, 0.040962,
		-0.627010, -0.042539, 0.777849,
		0.778826, -0.012490, 0.627115,
		31.977314, 28.527412, 22.064959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304049, 29.107889, 21.935957>,  <31.432135, 28.536154, 21.625977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304049, 29.107889, 21.935957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680708, 29.038765, 22.051498>,  <31.906704, 28.997292, 22.120823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680708, 29.038765, 22.051498>,  <31.304049, 29.107889, 21.935957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680708, 29.038765, 22.051498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121138, 0.974635, 0.188179,
		-0.314046, -0.142207, 0.938697,
		0.941648, -0.172809, 0.288853,
		31.963202, 28.986923, 22.138155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440145, 29.452894, 22.613770>,  <31.304049, 29.107889, 21.935957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440145, 29.452894, 22.613770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806704, 29.385639, 22.468468>,  <32.026638, 29.345287, 22.381287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806704, 29.385639, 22.468468>,  <31.440145, 29.452894, 22.613770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806704, 29.385639, 22.468468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242526, 0.955185, 0.169713,
		0.318440, -0.243623, 0.916103,
		0.916394, -0.168135, -0.363254,
		32.081623, 29.335199, 22.359491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922239, 29.896999, 23.068014>,  <31.440145, 29.452894, 22.613770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922239, 29.896999, 23.068014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138203, 29.833664, 22.737335>,  <32.267780, 29.795664, 22.538927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138203, 29.833664, 22.737335>,  <31.922239, 29.896999, 23.068014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138203, 29.833664, 22.737335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591572, 0.770057, 0.238861,
		0.598784, -0.618014, 0.509427,
		0.539907, -0.158337, -0.826698,
		32.300175, 29.786163, 22.489326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617325, 29.894680, 23.275591>,  <31.922239, 29.896999, 23.068014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617325, 29.894680, 23.275591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630630, 29.949997, 22.879658>,  <32.638615, 29.983187, 22.642097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630630, 29.949997, 22.879658>,  <32.617325, 29.894680, 23.275591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630630, 29.949997, 22.879658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630813, 0.765285, 0.128117,
		0.775222, -0.628661, -0.061782,
		0.033261, 0.138292, -0.989833,
		32.640610, 29.991484, 22.582708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351185, 29.865082, 23.188843>,  <32.617325, 29.894680, 23.275591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351185, 29.865082, 23.188843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166225, 30.028713, 22.874176>,  <33.055248, 30.126892, 22.685377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166225, 30.028713, 22.874176>,  <33.351185, 29.865082, 23.188843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166225, 30.028713, 22.874176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563776, 0.820417, 0.095243,
		0.684356, -0.399463, -0.609988,
		-0.462399, 0.409077, -0.786666,
		33.027504, 30.151436, 22.638176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931644, 30.287987, 22.801310>,  <33.351185, 29.865082, 23.188843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931644, 30.287987, 22.801310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571747, 30.426178, 22.694641>,  <33.355808, 30.509092, 22.630640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571747, 30.426178, 22.694641>,  <33.931644, 30.287987, 22.801310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571747, 30.426178, 22.694641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298532, 0.932915, 0.201365,
		0.318349, 0.101566, -0.942517,
		-0.899740, 0.345476, -0.266672,
		33.301826, 30.529821, 22.614639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090961, 30.895565, 22.247864>,  <33.931644, 30.287987, 22.801310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090961, 30.895565, 22.247864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718628, 30.954666, 22.381561>,  <33.495228, 30.990128, 22.461781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718628, 30.954666, 22.381561>,  <34.090961, 30.895565, 22.247864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718628, 30.954666, 22.381561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180789, 0.981042, 0.069803,
		-0.317593, 0.125402, -0.939899,
		-0.930833, 0.147755, 0.334243,
		33.439377, 30.998993, 22.481834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904301, 31.529961, 21.975222>,  <34.090961, 30.895565, 22.247864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904301, 31.529961, 21.975222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652752, 31.498035, 22.284584>,  <33.501823, 31.478880, 22.470201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652752, 31.498035, 22.284584>,  <33.904301, 31.529961, 21.975222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652752, 31.498035, 22.284584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256311, 0.917833, 0.303130,
		-0.734050, 0.388861, -0.556739,
		-0.628868, -0.079814, 0.773404,
		33.464092, 31.474091, 22.516605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490196, 32.138691, 22.013981>,  <33.904301, 31.529961, 21.975222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490196, 32.138691, 22.013981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441483, 31.982590, 22.379028>,  <33.412254, 31.888929, 22.598057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441483, 31.982590, 22.379028>,  <33.490196, 32.138691, 22.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441483, 31.982590, 22.379028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032447, 0.917407, 0.396625,
		-0.992027, 0.077913, -0.099060,
		-0.121780, -0.390249, 0.912620,
		33.404949, 31.865515, 22.652815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887840, 32.509159, 22.375208>,  <33.490196, 32.138691, 22.013981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887840, 32.509159, 22.375208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147530, 32.349815, 22.634380>,  <33.303345, 32.254208, 22.789885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147530, 32.349815, 22.634380>,  <32.887840, 32.509159, 22.375208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147530, 32.349815, 22.634380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171960, 0.906692, 0.385149,
		-0.740903, -0.138630, 0.657149,
		0.649225, -0.398361, 0.647932,
		33.342297, 32.230309, 22.828760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924534, 32.997066, 22.813671>,  <32.887840, 32.509159, 22.375208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924534, 32.997066, 22.813671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240463, 32.772457, 22.912361>,  <33.430019, 32.637691, 22.971575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240463, 32.772457, 22.912361>,  <32.924534, 32.997066, 22.813671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240463, 32.772457, 22.912361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442838, 0.800409, 0.404030,
		-0.424352, -0.209853, 0.880844,
		0.789823, -0.561522, 0.246724,
		33.477409, 32.604000, 22.986378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117836, 33.284763, 23.447628>,  <32.924534, 32.997066, 22.813671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117836, 33.284763, 23.447628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426228, 33.072945, 23.306114>,  <33.611263, 32.945854, 23.221207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426228, 33.072945, 23.306114>,  <33.117836, 33.284763, 23.447628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426228, 33.072945, 23.306114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636151, 0.666515, 0.388676,
		0.029978, -0.524722, 0.850746,
		0.770982, -0.529551, -0.353783,
		33.657524, 32.914078, 23.199980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826481, 32.573097, 23.470428>,  <33.117836, 33.284763, 23.447628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826481, 32.573097, 23.470428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451920, 32.509800, 23.345139>,  <32.227184, 32.471821, 23.269964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451920, 32.509800, 23.345139>,  <32.826481, 32.573097, 23.470428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451920, 32.509800, 23.345139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016589, -0.871607, 0.489924,
		-0.350537, 0.463962, 0.813550,
		-0.936402, -0.158240, -0.313227,
		32.170998, 32.462326, 23.251171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004436, 32.028503, 23.959440>,  <32.826481, 32.573097, 23.470428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004436, 32.028503, 23.959440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691772, 32.242188, 24.088203>,  <32.504173, 32.370399, 24.165461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691772, 32.242188, 24.088203>,  <33.004436, 32.028503, 23.959440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691772, 32.242188, 24.088203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217431, -0.717141, 0.662143,
		0.584577, 0.447578, 0.676715,
		-0.781660, 0.534212, 0.321906,
		32.457275, 32.402451, 24.184776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988316, 32.161549, 24.660645>,  <33.004436, 32.028503, 23.959440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988316, 32.161549, 24.660645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602623, 32.168674, 24.554867>,  <32.371208, 32.172951, 24.491400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602623, 32.168674, 24.554867>,  <32.988316, 32.161549, 24.660645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602623, 32.168674, 24.554867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220234, -0.608982, 0.761996,
		-0.147466, 0.792984, 0.591126,
		-0.964236, 0.017817, -0.264447,
		32.313351, 32.174019, 24.475533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570007, 32.410164, 25.245615>,  <32.988316, 32.161549, 24.660645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570007, 32.410164, 25.245615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341747, 32.184200, 25.007206>,  <32.204792, 32.048622, 24.864161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341747, 32.184200, 25.007206>,  <32.570007, 32.410164, 25.245615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341747, 32.184200, 25.007206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163905, -0.632843, 0.756733,
		-0.804670, 0.529519, 0.268541,
		-0.570649, -0.564905, -0.596021,
		32.170551, 32.014729, 24.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872786, 32.223125, 25.683468>,  <32.570007, 32.410164, 25.245615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872786, 32.223125, 25.683468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946669, 31.960411, 25.391026>,  <31.990999, 31.802782, 25.215561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946669, 31.960411, 25.391026>,  <31.872786, 32.223125, 25.683468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946669, 31.960411, 25.391026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139164, -0.753888, 0.642096,
		-0.972891, -0.016856, -0.230649,
		0.184707, -0.656787, -0.731105,
		32.002079, 31.763374, 25.171694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487715, 31.755217, 25.858913>,  <31.872786, 32.223125, 25.683468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487715, 31.755217, 25.858913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655952, 31.530163, 25.574226>,  <31.756895, 31.395130, 25.403414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655952, 31.530163, 25.574226>,  <31.487715, 31.755217, 25.858913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655952, 31.530163, 25.574226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176386, -0.820222, 0.544173,
		-0.889937, -0.103339, -0.444221,
		0.420594, -0.562634, -0.711718,
		31.782131, 31.361372, 25.360712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007271, 31.309221, 25.703850>,  <31.487715, 31.755217, 25.858913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007271, 31.309221, 25.703850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364611, 31.168842, 25.591595>,  <31.579016, 31.084614, 25.524240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364611, 31.168842, 25.591595>,  <31.007271, 31.309221, 25.703850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364611, 31.168842, 25.591595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191700, -0.862498, 0.468347,
		-0.406416, -0.364600, -0.837790,
		0.893351, -0.350948, -0.280639,
		31.632616, 31.063559, 25.507402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942968, 30.642893, 25.276962>,  <31.007271, 31.309221, 25.703850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942968, 30.642893, 25.276962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325413, 30.605801, 25.388142>,  <31.554880, 30.583546, 25.454849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325413, 30.605801, 25.388142>,  <30.942968, 30.642893, 25.276962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325413, 30.605801, 25.388142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174686, -0.941979, 0.286637,
		0.235240, -0.322610, -0.916834,
		0.956110, -0.092729, 0.277946,
		31.612246, 30.577982, 25.471525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128414, 30.009460, 25.040972>,  <30.942968, 30.642893, 25.276962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128414, 30.009460, 25.040972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394815, 30.089092, 25.328529>,  <31.554657, 30.136871, 25.501064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394815, 30.089092, 25.328529>,  <31.128414, 30.009460, 25.040972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394815, 30.089092, 25.328529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235868, -0.858081, 0.456140,
		0.707677, -0.473355, -0.524528,
		0.666003, 0.199080, 0.718893,
		31.594616, 30.148817, 25.544197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497751, 29.420715, 25.132269>,  <31.128414, 30.009460, 25.040972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497751, 29.420715, 25.132269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562105, 29.622593, 25.471539>,  <31.600718, 29.743719, 25.675100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562105, 29.622593, 25.471539>,  <31.497751, 29.420715, 25.132269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562105, 29.622593, 25.471539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168819, -0.832632, 0.527470,
		0.972428, -0.228051, -0.048757,
		0.160886, 0.504696, 0.848173,
		31.610371, 29.774002, 25.725990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958092, 29.033428, 25.476519>,  <31.497751, 29.420715, 25.132269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958092, 29.033428, 25.476519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849566, 29.281765, 25.770714>,  <31.784451, 29.430767, 25.947231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849566, 29.281765, 25.770714>,  <31.958092, 29.033428, 25.476519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849566, 29.281765, 25.770714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273536, -0.782378, 0.559520,
		0.922804, -0.049377, 0.382093,
		-0.271313, 0.620844, 0.735488,
		31.768171, 29.468018, 25.991360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343964, 28.813383, 26.092176>,  <31.958092, 29.033428, 25.476519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343964, 28.813383, 26.092176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012299, 29.008850, 26.200760>,  <31.813299, 29.126131, 26.265911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012299, 29.008850, 26.200760>,  <32.343964, 28.813383, 26.092176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012299, 29.008850, 26.200760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277133, -0.781079, 0.559565,
		0.485474, 0.388740, 0.783068,
		-0.829163, 0.488669, 0.271461,
		31.763550, 29.155451, 26.282198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209461, 28.599745, 26.646183>,  <32.343964, 28.813383, 26.092176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209461, 28.599745, 26.646183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858767, 28.789291, 26.613224>,  <31.648350, 28.903019, 26.593449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858767, 28.789291, 26.613224>,  <32.209461, 28.599745, 26.646183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858767, 28.789291, 26.613224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408122, -0.642285, 0.648773,
		0.254510, 0.602429, 0.756508,
		-0.876733, 0.473867, -0.082397,
		31.595747, 28.931452, 26.588505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098183, 28.764894, 27.364603>,  <32.209461, 28.599745, 26.646183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098183, 28.764894, 27.364603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774950, 28.738274, 27.130486>,  <31.581009, 28.722301, 26.990015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774950, 28.738274, 27.130486>,  <32.098183, 28.764894, 27.364603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774950, 28.738274, 27.130486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268686, -0.842577, 0.466768,
		-0.524219, 0.534449, 0.662992,
		-0.808085, -0.066552, -0.585294,
		31.532524, 28.718307, 26.954897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512844, 28.486734, 27.809303>,  <32.098183, 28.764894, 27.364603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512844, 28.486734, 27.809303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383669, 28.414562, 27.437679>,  <31.306164, 28.371260, 27.214705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383669, 28.414562, 27.437679>,  <31.512844, 28.486734, 27.809303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383669, 28.414562, 27.437679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370520, -0.879199, 0.299538,
		-0.870877, 0.440968, 0.217073,
		-0.322938, -0.180430, -0.929062,
		31.286787, 28.360434, 27.158960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826580, 28.396318, 27.792269>,  <31.512844, 28.486734, 27.809303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826580, 28.396318, 27.792269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979593, 28.186928, 27.487732>,  <31.071402, 28.061293, 27.305010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979593, 28.186928, 27.487732>,  <30.826580, 28.396318, 27.792269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979593, 28.186928, 27.487732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517122, -0.804164, 0.293096,
		-0.765672, 0.281587, -0.578321,
		0.382532, -0.523478, -0.761341,
		31.094353, 28.029884, 27.259329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280823, 27.928968, 27.600592>,  <30.826580, 28.396318, 27.792269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280823, 27.928968, 27.600592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585732, 27.758984, 27.405308>,  <30.768677, 27.656992, 27.288137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585732, 27.758984, 27.405308>,  <30.280823, 27.928968, 27.600592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585732, 27.758984, 27.405308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353295, -0.905179, 0.236292,
		-0.542332, -0.007637, -0.840130,
		0.762273, -0.424962, -0.488209,
		30.814413, 27.631495, 27.258844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012455, 27.376894, 27.144657>,  <30.280823, 27.928968, 27.600592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012455, 27.376894, 27.144657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393713, 27.289364, 27.228210>,  <30.622467, 27.236847, 27.278341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393713, 27.289364, 27.228210>,  <30.012455, 27.376894, 27.144657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393713, 27.289364, 27.228210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261500, -0.943134, 0.205221,
		0.152097, -0.250228, -0.956166,
		0.953145, -0.218824, 0.208882,
		30.679657, 27.223717, 27.290874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020340, 26.668673, 27.026798>,  <30.012455, 27.376894, 27.144657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020340, 26.668673, 27.026798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343878, 26.743057, 27.249935>,  <30.538000, 26.787687, 27.383818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343878, 26.743057, 27.249935>,  <30.020340, 26.668673, 27.026798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343878, 26.743057, 27.249935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079853, -0.905151, 0.417523,
		0.582573, -0.382257, -0.717278,
		0.808846, 0.185961, 0.557841,
		30.586531, 26.798845, 27.417288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586626, 26.146351, 26.855171>,  <30.020340, 26.668673, 27.026798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586626, 26.146351, 26.855171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669512, 26.293224, 27.217880>,  <30.719242, 26.381348, 27.435507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669512, 26.293224, 27.217880>,  <30.586626, 26.146351, 26.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669512, 26.293224, 27.217880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248332, -0.876789, 0.411791,
		0.946253, -0.310509, -0.090498,
		0.207212, 0.367184, 0.906774,
		30.731676, 26.403379, 27.489912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046333, 25.648109, 27.255188>,  <30.586626, 26.146351, 26.855171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046333, 25.648109, 27.255188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904072, 25.891724, 27.538761>,  <30.818714, 26.037891, 27.708904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904072, 25.891724, 27.538761>,  <31.046333, 25.648109, 27.255188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904072, 25.891724, 27.538761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041372, -0.768042, 0.639061,
		0.933701, 0.197955, 0.298355,
		-0.355655, 0.609036, 0.708932,
		30.797375, 26.074434, 27.751440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592003, 25.718554, 27.727148>,  <31.046333, 25.648109, 27.255188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592003, 25.718554, 27.727148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253475, 25.814281, 27.917503>,  <31.050358, 25.871717, 28.031717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253475, 25.814281, 27.917503>,  <31.592003, 25.718554, 27.727148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253475, 25.814281, 27.917503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029063, -0.912808, 0.407354,
		0.531882, 0.330921, 0.779483,
		-0.846320, 0.239318, 0.475888,
		30.999578, 25.886076, 28.060270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634432, 25.509111, 28.444904>,  <31.592003, 25.718554, 27.727148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634432, 25.509111, 28.444904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240320, 25.513382, 28.376659>,  <31.003853, 25.515945, 28.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240320, 25.513382, 28.376659>,  <31.634432, 25.509111, 28.444904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240320, 25.513382, 28.376659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090113, -0.880563, 0.465284,
		-0.145266, 0.473809, 0.868564,
		-0.985280, 0.010679, -0.170612,
		30.944736, 25.516586, 28.325476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345213, 25.207153, 29.006006>,  <31.634432, 25.509111, 28.444904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345213, 25.207153, 29.006006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040464, 25.186977, 28.747700>,  <30.857616, 25.174871, 28.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040464, 25.186977, 28.747700>,  <31.345213, 25.207153, 29.006006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040464, 25.186977, 28.747700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289999, -0.864899, 0.409695,
		-0.579186, 0.499405, 0.644313,
		-0.761869, -0.050440, -0.645764,
		30.811903, 25.171846, 28.553970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894981, 24.817072, 29.320860>,  <31.345213, 25.207153, 29.006006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894981, 24.817072, 29.320860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759567, 24.809807, 28.944550>,  <30.678318, 24.805449, 28.718763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759567, 24.809807, 28.944550>,  <30.894981, 24.817072, 29.320860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759567, 24.809807, 28.944550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391330, -0.906529, 0.158321,
		-0.855718, 0.421752, 0.299787,
		-0.338538, -0.018163, -0.940778,
		30.658007, 24.804358, 28.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182915, 24.574486, 29.401669>,  <30.894981, 24.817072, 29.320860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182915, 24.574486, 29.401669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332451, 24.503838, 29.037460>,  <30.422173, 24.461449, 28.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332451, 24.503838, 29.037460>,  <30.182915, 24.574486, 29.401669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332451, 24.503838, 29.037460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282470, -0.956747, 0.069613,
		-0.883433, 0.231170, -0.407563,
		0.373842, -0.176622, -0.910520,
		30.444603, 24.450851, 28.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663254, 24.114496, 29.039618>,  <30.182915, 24.574486, 29.401669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663254, 24.114496, 29.039618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019199, 24.062157, 28.864796>,  <30.232767, 24.030754, 28.759903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019199, 24.062157, 28.864796>,  <29.663254, 24.114496, 29.039618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019199, 24.062157, 28.864796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072001, -0.986261, 0.148675,
		-0.450504, -0.100832, -0.887062,
		0.889866, -0.130848, -0.437055,
		30.286160, 24.022902, 28.733679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511696, 23.528864, 28.677063>,  <29.663254, 24.114496, 29.039618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511696, 23.528864, 28.677063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911318, 23.521317, 28.692726>,  <30.151091, 23.516788, 28.702124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911318, 23.521317, 28.692726>,  <29.511696, 23.528864, 28.677063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911318, 23.521317, 28.692726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024882, -0.986919, 0.159287,
		0.035639, -0.160110, -0.986455,
		0.999055, -0.018868, 0.039157,
		30.211035, 23.515656, 28.704473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193624, 23.412127, 27.936136>,  <29.511696, 23.528864, 28.677063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193624, 23.412127, 27.936136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798000, 23.394711, 27.879765>,  <28.560625, 23.384260, 27.845942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798000, 23.394711, 27.879765>,  <29.193624, 23.412127, 27.936136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798000, 23.394711, 27.879765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033783, 0.996910, -0.070915,
		0.143580, -0.065379, -0.987477,
		-0.989062, -0.043541, -0.140927,
		28.501282, 23.381649, 27.837486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078173, 23.784039, 27.419716>,  <29.193624, 23.412127, 27.936136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078173, 23.784039, 27.419716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707996, 23.800297, 27.570396>,  <28.485889, 23.810051, 27.660805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707996, 23.800297, 27.570396>,  <29.078173, 23.784039, 27.419716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707996, 23.800297, 27.570396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099824, 0.932946, -0.345901,
		-0.365504, -0.357716, -0.859329,
		-0.925442, 0.040646, 0.376704,
		28.430365, 23.812490, 27.683407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719423, 24.165375, 26.965652>,  <29.078173, 23.784039, 27.419716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719423, 24.165375, 26.965652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468349, 24.203938, 27.274643>,  <28.317705, 24.227076, 27.460037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468349, 24.203938, 27.274643>,  <28.719423, 24.165375, 26.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468349, 24.203938, 27.274643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158403, 0.955725, -0.247989,
		-0.762181, -0.278021, -0.584623,
		-0.627685, 0.096406, 0.772475,
		28.280045, 24.232859, 27.506386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087587, 24.446545, 26.757137>,  <28.719423, 24.165375, 26.965652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087587, 24.446545, 26.757137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121965, 24.524487, 27.147961>,  <28.142591, 24.571251, 27.382456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121965, 24.524487, 27.147961>,  <28.087587, 24.446545, 26.757137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121965, 24.524487, 27.147961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282464, 0.945215, -0.163656,
		-0.955420, -0.261919, 0.136273,
		0.085943, 0.194853, 0.977060,
		28.147749, 24.582943, 27.441078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602482, 24.861910, 26.789959>,  <28.087587, 24.446545, 26.757137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602482, 24.861910, 26.789959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791269, 24.908287, 27.139542>,  <27.904543, 24.936113, 27.349291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791269, 24.908287, 27.139542>,  <27.602482, 24.861910, 26.789959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791269, 24.908287, 27.139542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032607, 0.988341, -0.148727,
		-0.881011, 0.098692, 0.462686,
		0.471970, 0.115943, 0.873958,
		27.932859, 24.943069, 27.401730>
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
