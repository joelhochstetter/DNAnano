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
	<42.915039, 32.746902, 22.892546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078018, 32.384487, 22.938297>,  <43.175804, 32.167038, 22.965748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078018, 32.384487, 22.938297>,  <42.915039, 32.746902, 22.892546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078018, 32.384487, 22.938297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912501, -0.408916, 0.011398,
		0.036445, -0.109017, -0.993372,
		0.407448, -0.906037, 0.114381,
		43.200253, 32.112675, 22.972612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945221, 32.249462, 22.414825>,  <42.915039, 32.746902, 22.892546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945221, 32.249462, 22.414825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867146, 32.018875, 22.732212>,  <42.820301, 31.880524, 22.922644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867146, 32.018875, 22.732212>,  <42.945221, 32.249462, 22.414825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867146, 32.018875, 22.732212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917048, -0.179573, -0.356057,
		0.347739, -0.797146, -0.493594,
		-0.195193, -0.576465, 0.793466,
		42.808586, 31.845936, 22.970251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543041, 31.686106, 22.206516>,  <42.945221, 32.249462, 22.414825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543041, 31.686106, 22.206516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425247, 31.707821, 22.588161>,  <42.354572, 31.720850, 22.817148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425247, 31.707821, 22.588161>,  <42.543041, 31.686106, 22.206516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425247, 31.707821, 22.588161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955041, -0.052538, -0.291783,
		0.034289, -0.997142, 0.067314,
		-0.294486, 0.054283, 0.954113,
		42.336903, 31.724108, 22.874395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923660, 31.980442, 22.429926>,  <42.543041, 31.686106, 22.206516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923660, 31.980442, 22.429926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193645, 32.113686, 22.166573>,  <42.355637, 32.193630, 22.008560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193645, 32.113686, 22.166573>,  <41.923660, 31.980442, 22.429926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193645, 32.113686, 22.166573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141600, 0.817231, 0.558644,
		0.724140, -0.470289, 0.504430,
		0.674960, 0.333109, -0.658383,
		42.396133, 32.213619, 21.969057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761883, 32.723339, 22.359129>,  <41.923660, 31.980442, 22.429926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761883, 32.723339, 22.359129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152092, 32.772465, 22.286167>,  <42.386219, 32.801941, 22.242390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152092, 32.772465, 22.286167>,  <41.761883, 32.723339, 22.359129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152092, 32.772465, 22.286167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123032, -0.382687, -0.915649,
		-0.182254, 0.915679, -0.358211,
		0.975524, 0.122810, -0.182404,
		42.444748, 32.809307, 22.231445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554203, 32.988598, 22.855082>,  <41.761883, 32.723339, 22.359129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554203, 32.988598, 22.855082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201542, 32.978760, 23.043587>,  <40.989944, 32.972858, 23.156691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201542, 32.978760, 23.043587>,  <41.554203, 32.988598, 22.855082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201542, 32.978760, 23.043587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296231, -0.806213, 0.512121,
		0.367343, 0.591114, 0.718083,
		-0.881650, -0.024594, 0.471263,
		40.937046, 32.971382, 23.184965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710369, 32.773743, 23.618860>,  <41.554203, 32.988598, 22.855082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710369, 32.773743, 23.618860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332893, 32.675468, 23.530235>,  <41.106407, 32.616505, 23.477060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332893, 32.675468, 23.530235>,  <41.710369, 32.773743, 23.618860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332893, 32.675468, 23.530235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021055, -0.712957, 0.700892,
		-0.330163, 0.656759, 0.677982,
		-0.943689, -0.245683, -0.221564,
		41.049786, 32.601765, 23.463766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320194, 32.726776, 24.243576>,  <41.710369, 32.773743, 23.618860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320194, 32.726776, 24.243576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145176, 32.492447, 23.970707>,  <41.040165, 32.351849, 23.806986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145176, 32.492447, 23.970707>,  <41.320194, 32.726776, 24.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145176, 32.492447, 23.970707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071590, -0.733543, 0.675862,
		-0.896341, 0.344558, 0.279021,
		-0.437548, -0.585828, -0.682171,
		41.013912, 32.316700, 23.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838387, 32.373116, 24.646290>,  <41.320194, 32.726776, 24.243576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838387, 32.373116, 24.646290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890022, 32.176533, 24.301777>,  <40.921001, 32.058582, 24.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890022, 32.176533, 24.301777>,  <40.838387, 32.373116, 24.646290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890022, 32.176533, 24.301777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077079, -0.870894, 0.485389,
		-0.988633, 0.003730, -0.150300,
		0.129085, -0.491457, -0.861282,
		40.928749, 32.029095, 24.043392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341675, 31.821671, 24.660198>,  <40.838387, 32.373116, 24.646290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341675, 31.821671, 24.660198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622787, 31.697060, 24.404369>,  <40.791454, 31.622293, 24.250872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622787, 31.697060, 24.404369>,  <40.341675, 31.821671, 24.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622787, 31.697060, 24.404369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115467, -0.937052, 0.329546,
		-0.701976, -0.157748, -0.694511,
		0.702778, -0.311527, -0.639574,
		40.833622, 31.603601, 24.212498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117855, 31.203630, 24.376440>,  <40.341675, 31.821671, 24.660198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117855, 31.203630, 24.376440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501736, 31.184799, 24.265617>,  <40.732063, 31.173500, 24.199123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501736, 31.184799, 24.265617>,  <40.117855, 31.203630, 24.376440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501736, 31.184799, 24.265617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009632, -0.979778, 0.199854,
		-0.280861, -0.194469, -0.939840,
		0.959700, -0.047078, -0.277054,
		40.789646, 31.170675, 24.182501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208813, 30.621441, 23.993181>,  <40.117855, 31.203630, 24.376440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208813, 30.621441, 23.993181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583652, 30.716137, 24.095791>,  <40.808556, 30.772955, 24.157356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583652, 30.716137, 24.095791>,  <40.208813, 30.621441, 23.993181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583652, 30.716137, 24.095791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197317, -0.965454, 0.170189,
		0.287952, -0.108867, -0.951437,
		0.937097, 0.236741, 0.256523,
		40.864780, 30.787159, 24.172749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632729, 30.171844, 23.628550>,  <40.208813, 30.621441, 23.993181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632729, 30.171844, 23.628550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819981, 30.315434, 23.951534>,  <40.932331, 30.401587, 24.145325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819981, 30.315434, 23.951534>,  <40.632729, 30.171844, 23.628550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819981, 30.315434, 23.951534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201368, -0.933063, 0.298066,
		0.860412, 0.023065, -0.509077,
		0.468126, 0.358971, 0.807464,
		40.960419, 30.423124, 24.193773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233719, 29.846603, 23.566723>,  <40.632729, 30.171844, 23.628550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233719, 29.846603, 23.566723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160229, 29.938694, 23.948978>,  <41.116135, 29.993948, 24.178331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160229, 29.938694, 23.948978>,  <41.233719, 29.846603, 23.566723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160229, 29.938694, 23.948978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206695, -0.941401, 0.266535,
		0.961001, 0.246494, 0.125372,
		-0.183725, 0.230226, 0.955636,
		41.105110, 30.007761, 24.235670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843788, 29.617674, 23.915270>,  <41.233719, 29.846603, 23.566723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843788, 29.617674, 23.915270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581196, 29.675415, 24.211430>,  <41.423641, 29.710060, 24.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581196, 29.675415, 24.211430>,  <41.843788, 29.617674, 23.915270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581196, 29.675415, 24.211430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204771, -0.910562, 0.359090,
		0.726015, 0.387349, 0.568210,
		-0.656484, 0.144351, 0.740400,
		41.384251, 29.718721, 24.433550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191841, 29.516781, 24.548128>,  <41.843788, 29.617674, 23.915270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191841, 29.516781, 24.548128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805752, 29.447495, 24.626446>,  <41.574097, 29.405922, 24.673437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805752, 29.447495, 24.626446>,  <42.191841, 29.516781, 24.548128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805752, 29.447495, 24.626446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227108, -0.926543, 0.299901,
		0.129465, 0.333939, 0.933661,
		-0.965226, -0.173215, 0.195795,
		41.516186, 29.395531, 24.685184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157085, 29.109985, 25.140072>,  <42.191841, 29.516781, 24.548128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157085, 29.109985, 25.140072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785416, 29.062607, 25.000015>,  <41.562412, 29.034180, 24.915981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785416, 29.062607, 25.000015>,  <42.157085, 29.109985, 25.140072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785416, 29.062607, 25.000015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003041, -0.944785, 0.327678,
		-0.369622, 0.305536, 0.877512,
		-0.929177, -0.118448, -0.350142,
		41.506664, 29.027073, 24.894972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790714, 28.790987, 25.666613>,  <42.157085, 29.109985, 25.140072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790714, 28.790987, 25.666613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593193, 28.704170, 25.329792>,  <41.474682, 28.652081, 25.127699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593193, 28.704170, 25.329792>,  <41.790714, 28.790987, 25.666613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593193, 28.704170, 25.329792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084132, -0.951882, 0.294690,
		-0.865495, 0.216362, 0.451780,
		-0.493801, -0.217043, -0.842053,
		41.445053, 28.639057, 25.077177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215900, 28.359600, 25.896400>,  <41.790714, 28.790987, 25.666613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215900, 28.359600, 25.896400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242397, 28.267815, 25.507977>,  <41.258293, 28.212744, 25.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242397, 28.267815, 25.507977>,  <41.215900, 28.359600, 25.896400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242397, 28.267815, 25.507977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293495, -0.934626, 0.200834,
		-0.953663, 0.271699, -0.129256,
		0.066239, -0.229464, -0.971061,
		41.262268, 28.198975, 25.216658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618271, 28.013161, 25.779686>,  <41.215900, 28.359600, 25.896400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618271, 28.013161, 25.779686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848099, 27.923500, 25.464821>,  <40.985996, 27.869703, 25.275902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848099, 27.923500, 25.464821>,  <40.618271, 28.013161, 25.779686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848099, 27.923500, 25.464821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231703, -0.966969, 0.106229,
		-0.784972, 0.121351, -0.607530,
		0.574572, -0.224153, -0.787161,
		41.020470, 27.856255, 25.228672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246708, 27.519033, 25.410196>,  <40.618271, 28.013161, 25.779686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246708, 27.519033, 25.410196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621658, 27.467987, 25.280552>,  <40.846626, 27.437359, 25.202766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621658, 27.467987, 25.280552>,  <40.246708, 27.519033, 25.410196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621658, 27.467987, 25.280552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180720, -0.973619, -0.139309,
		-0.297780, 0.189158, -0.935706,
		0.937373, -0.127617, -0.324109,
		40.902870, 27.429703, 25.183319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191433, 27.133961, 24.680300>,  <40.246708, 27.519033, 25.410196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191433, 27.133961, 24.680300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545799, 27.055058, 24.848228>,  <40.758419, 27.007715, 24.948986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545799, 27.055058, 24.848228>,  <40.191433, 27.133961, 24.680300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545799, 27.055058, 24.848228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082747, -0.957762, -0.275399,
		0.456413, 0.209241, -0.864815,
		0.885912, -0.197257, 0.419821,
		40.811573, 26.995880, 24.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441700, 26.556063, 24.369244>,  <40.191433, 27.133961, 24.680300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441700, 26.556063, 24.369244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696033, 26.562141, 24.677914>,  <40.848633, 26.565788, 24.863115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696033, 26.562141, 24.677914>,  <40.441700, 26.556063, 24.369244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696033, 26.562141, 24.677914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109495, -0.991470, -0.070696,
		0.764016, 0.129445, -0.632078,
		0.635838, 0.015197, 0.771673,
		40.886784, 26.566700, 24.909416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848774, 25.940960, 24.168451>,  <40.441700, 26.556063, 24.369244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848774, 25.940960, 24.168451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945198, 26.045574, 24.542294>,  <41.003052, 26.108343, 24.766600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945198, 26.045574, 24.542294>,  <40.848774, 25.940960, 24.168451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945198, 26.045574, 24.542294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160093, -0.960528, 0.227498,
		0.957214, 0.094783, -0.273419,
		0.241064, 0.261537, 0.934605,
		41.017517, 26.124035, 24.822676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558823, 25.600798, 24.399794>,  <40.848774, 25.940960, 24.168451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558823, 25.600798, 24.399794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348663, 25.683681, 24.729889>,  <41.222569, 25.733412, 24.927946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348663, 25.683681, 24.729889>,  <41.558823, 25.600798, 24.399794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348663, 25.683681, 24.729889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162348, -0.927660, 0.336287,
		0.835225, 0.310661, 0.453750,
		-0.525397, 0.207210, 0.825240,
		41.191044, 25.745844, 24.977461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988934, 25.346176, 25.048096>,  <41.558823, 25.600798, 24.399794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988934, 25.346176, 25.048096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597534, 25.355045, 25.130116>,  <41.362694, 25.360367, 25.179327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597534, 25.355045, 25.130116>,  <41.988934, 25.346176, 25.048096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597534, 25.355045, 25.130116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045137, -0.947083, 0.317800,
		0.201243, 0.320223, 0.925721,
		-0.978501, 0.022171, 0.205048,
		41.303986, 25.361696, 25.191629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814018, 25.141531, 25.873611>,  <41.988934, 25.346176, 25.048096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814018, 25.141531, 25.873611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558952, 25.058182, 25.576973>,  <41.405914, 25.008173, 25.398989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558952, 25.058182, 25.576973>,  <41.814018, 25.141531, 25.873611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558952, 25.058182, 25.576973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121505, -0.977875, 0.170283,
		-0.760672, 0.018475, 0.648873,
		-0.637663, -0.208371, -0.741598,
		41.367653, 24.995670, 25.354494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271469, 24.764738, 26.153337>,  <41.814018, 25.141531, 25.873611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271469, 24.764738, 26.153337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405300, 24.692051, 25.783466>,  <41.485600, 24.648438, 25.561543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405300, 24.692051, 25.783466>,  <41.271469, 24.764738, 26.153337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405300, 24.692051, 25.783466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201214, -0.944827, 0.258485,
		-0.920635, -0.272543, -0.279557,
		0.334582, -0.181719, -0.924680,
		41.505676, 24.637535, 25.506062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941929, 24.191240, 25.803459>,  <41.271469, 24.764738, 26.153337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941929, 24.191240, 25.803459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315037, 24.233509, 25.665600>,  <41.538902, 24.258871, 25.582884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315037, 24.233509, 25.665600>,  <40.941929, 24.191240, 25.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315037, 24.233509, 25.665600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217241, -0.927737, 0.303495,
		-0.287671, -0.357962, -0.888318,
		0.932765, 0.105673, -0.344648,
		41.594868, 24.265211, 25.562206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118519, 23.617146, 25.427404>,  <40.941929, 24.191240, 25.803459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118519, 23.617146, 25.427404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438820, 23.780869, 25.602341>,  <41.631001, 23.879103, 25.707302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438820, 23.780869, 25.602341>,  <41.118519, 23.617146, 25.427404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438820, 23.780869, 25.602341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253833, -0.893193, 0.371181,
		0.542559, -0.186211, -0.819119,
		0.800749, 0.409307, 0.437343,
		41.679043, 23.903660, 25.733543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665329, 23.160019, 25.122887>,  <41.118519, 23.617146, 25.427404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665329, 23.160019, 25.122887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517426, 23.016327, 24.780136>,  <40.428684, 22.930111, 24.574486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517426, 23.016327, 24.780136>,  <40.665329, 23.160019, 25.122887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517426, 23.016327, 24.780136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926125, 0.068395, 0.370964,
		-0.074657, 0.930739, -0.357983,
		-0.369755, -0.359232, -0.856874,
		40.406498, 22.908558, 24.523073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345776, 23.592979, 25.610426>,  <40.665329, 23.160019, 25.122887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345776, 23.592979, 25.610426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363777, 23.296150, 25.877949>,  <40.374577, 23.118053, 26.038464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363777, 23.296150, 25.877949>,  <40.345776, 23.592979, 25.610426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363777, 23.296150, 25.877949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462686, -0.577869, -0.672301,
		0.885379, 0.339702, 0.317343,
		0.044999, -0.742072, 0.668809,
		40.377277, 23.073528, 26.078590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621788, 23.207220, 25.638691>,  <40.345776, 23.592979, 25.610426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621788, 23.207220, 25.638691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250019, 23.141674, 25.770950>,  <39.026958, 23.102346, 25.850306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250019, 23.141674, 25.770950>,  <39.621788, 23.207220, 25.638691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250019, 23.141674, 25.770950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234896, 0.953743, -0.187613,
		-0.284609, -0.252039, -0.924919,
		-0.929420, -0.163864, 0.330646,
		38.971191, 23.092514, 25.870144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154041, 23.355852, 25.129354>,  <39.621788, 23.207220, 25.638691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154041, 23.355852, 25.129354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985992, 23.408833, 25.488453>,  <38.885162, 23.440620, 25.703913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985992, 23.408833, 25.488453>,  <39.154041, 23.355852, 25.129354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985992, 23.408833, 25.488453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171749, 0.959805, -0.221984,
		-0.891065, -0.247448, -0.380489,
		-0.420124, 0.132453, 0.897748,
		38.859955, 23.448568, 25.757778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445831, 23.608377, 25.015402>,  <39.154041, 23.355852, 25.129354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445831, 23.608377, 25.015402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573837, 23.769741, 25.358295>,  <38.650642, 23.866560, 25.564032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573837, 23.769741, 25.358295>,  <38.445831, 23.608377, 25.015402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573837, 23.769741, 25.358295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303740, 0.900741, -0.310496,
		-0.897403, -0.161012, 0.410782,
		0.320015, 0.403411, 0.857234,
		38.669842, 23.890764, 25.615465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865356, 24.084455, 25.328432>,  <38.445831, 23.608377, 25.015402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865356, 24.084455, 25.328432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231564, 24.200344, 25.440071>,  <38.451286, 24.269878, 25.507055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231564, 24.200344, 25.440071>,  <37.865356, 24.084455, 25.328432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231564, 24.200344, 25.440071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215644, 0.939117, -0.267502,
		-0.339607, 0.184716, 0.922251,
		0.915513, 0.289723, 0.279098,
		38.506218, 24.287262, 25.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026047, 24.625690, 25.857594>,  <37.865356, 24.084455, 25.328432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026047, 24.625690, 25.857594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353939, 24.652851, 25.630112>,  <38.550674, 24.669147, 25.493622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353939, 24.652851, 25.630112>,  <38.026047, 24.625690, 25.857594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353939, 24.652851, 25.630112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064018, 0.997588, 0.026837,
		0.569155, 0.014408, 0.822104,
		0.819735, 0.067904, -0.568704,
		38.599861, 24.673222, 25.459501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460648, 25.233313, 26.053017>,  <38.026047, 24.625690, 25.857594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460648, 25.233313, 26.053017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497620, 25.153786, 25.662750>,  <38.519802, 25.106070, 25.428591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497620, 25.153786, 25.662750>,  <38.460648, 25.233313, 26.053017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497620, 25.153786, 25.662750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023545, 0.980025, -0.197475,
		0.995441, -0.004720, 0.095265,
		0.092430, -0.198818, -0.975668,
		38.525349, 25.094141, 25.370050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048794, 25.741375, 25.920763>,  <38.460648, 25.233313, 26.053017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048794, 25.741375, 25.920763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865685, 25.638462, 25.580353>,  <38.755817, 25.576714, 25.376106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865685, 25.638462, 25.580353>,  <39.048794, 25.741375, 25.920763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865685, 25.638462, 25.580353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035382, 0.951182, -0.306594,
		0.888364, -0.170462, -0.426324,
		-0.457774, -0.257283, -0.851028,
		38.728352, 25.561277, 25.325045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365696, 26.153698, 25.456869>,  <39.048794, 25.741375, 25.920763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365696, 26.153698, 25.456869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030003, 26.032154, 25.276485>,  <38.828587, 25.959229, 25.168255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030003, 26.032154, 25.276485>,  <39.365696, 26.153698, 25.456869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030003, 26.032154, 25.276485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152458, 0.927527, -0.341247,
		0.521968, -0.217633, -0.824734,
		-0.839230, -0.303857, -0.450960,
		38.778233, 25.940996, 25.141197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410656, 26.317175, 24.812134>,  <39.365696, 26.153698, 25.456869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410656, 26.317175, 24.812134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014637, 26.285660, 24.858784>,  <38.777027, 26.266750, 24.886774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014637, 26.285660, 24.858784>,  <39.410656, 26.317175, 24.812134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014637, 26.285660, 24.858784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117231, 0.920181, -0.373530,
		-0.077886, -0.383483, -0.920258,
		-0.990046, -0.078790, 0.116626,
		38.717625, 26.262022, 24.893772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140884, 26.627348, 24.181473>,  <39.410656, 26.317175, 24.812134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140884, 26.627348, 24.181473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852768, 26.631390, 24.458912>,  <38.679897, 26.633814, 24.625376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852768, 26.631390, 24.458912>,  <39.140884, 26.627348, 24.181473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852768, 26.631390, 24.458912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299924, 0.897064, -0.324534,
		-0.625483, -0.441785, -0.643115,
		-0.720290, 0.010105, 0.693600,
		38.636681, 26.634420, 24.666992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520794, 26.782825, 23.861046>,  <39.140884, 26.627348, 24.181473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520794, 26.782825, 23.861046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447533, 26.884563, 24.240891>,  <38.403576, 26.945606, 24.468798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447533, 26.884563, 24.240891>,  <38.520794, 26.782825, 23.861046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447533, 26.884563, 24.240891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294511, 0.907391, -0.299839,
		-0.937932, -0.334589, -0.091288,
		-0.183157, 0.254344, 0.949612,
		38.392586, 26.960867, 24.525774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976562, 27.272257, 23.818270>,  <38.520794, 26.782825, 23.861046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976562, 27.272257, 23.818270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119633, 27.325062, 24.188057>,  <38.205475, 27.356745, 24.409929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119633, 27.325062, 24.188057>,  <37.976562, 27.272257, 23.818270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119633, 27.325062, 24.188057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204609, 0.976982, -0.060347,
		-0.911154, -0.167570, 0.376456,
		0.357678, 0.132011, 0.924467,
		38.226936, 27.364666, 24.465397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481560, 27.647797, 24.040344>,  <37.976562, 27.272257, 23.818270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481560, 27.647797, 24.040344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787926, 27.729080, 24.284340>,  <37.971745, 27.777851, 24.430737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787926, 27.729080, 24.284340>,  <37.481560, 27.647797, 24.040344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787926, 27.729080, 24.284340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166424, 0.979065, -0.117196,
		-0.621033, -0.011755, 0.783696,
		0.765912, 0.203209, 0.609988,
		38.017700, 27.790043, 24.467337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245564, 28.152399, 24.573175>,  <37.481560, 27.647797, 24.040344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245564, 28.152399, 24.573175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644268, 28.182297, 24.561317>,  <37.883492, 28.200235, 24.554203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644268, 28.182297, 24.561317>,  <37.245564, 28.152399, 24.573175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644268, 28.182297, 24.561317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077509, 0.991252, -0.106828,
		0.021399, 0.108780, 0.993835,
		0.996762, 0.074745, -0.029644,
		37.943298, 28.204720, 24.552423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330391, 28.735521, 25.014793>,  <37.245564, 28.152399, 24.573175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330391, 28.735521, 25.014793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635891, 28.690659, 24.760517>,  <37.819191, 28.663740, 24.607950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635891, 28.690659, 24.760517>,  <37.330391, 28.735521, 25.014793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635891, 28.690659, 24.760517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074930, 0.993536, -0.085270,
		0.641147, 0.017493, 0.767218,
		0.763751, -0.112158, -0.635692,
		37.865017, 28.657011, 24.569809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867779, 29.208834, 25.352238>,  <37.330391, 28.735521, 25.014793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867779, 29.208834, 25.352238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962318, 29.132683, 24.971104>,  <38.019043, 29.086992, 24.742422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962318, 29.132683, 24.971104>,  <37.867779, 29.208834, 25.352238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962318, 29.132683, 24.971104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252301, 0.959008, -0.129029,
		0.938341, -0.209905, 0.274692,
		0.236348, -0.190378, -0.952836,
		38.033222, 29.075569, 24.685253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391800, 29.680809, 25.286390>,  <37.867779, 29.208834, 25.352238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391800, 29.680809, 25.286390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284695, 29.576805, 24.915295>,  <38.220432, 29.514402, 24.692638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284695, 29.576805, 24.915295>,  <38.391800, 29.680809, 25.286390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284695, 29.576805, 24.915295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236875, 0.915580, -0.324968,
		0.933912, -0.306773, -0.183572,
		-0.267767, -0.260008, -0.927738,
		38.204365, 29.498802, 24.636972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983833, 29.886131, 24.918375>,  <38.391800, 29.680809, 25.286390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983833, 29.886131, 24.918375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662075, 29.885773, 24.680740>,  <38.469021, 29.885557, 24.538158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662075, 29.885773, 24.680740>,  <38.983833, 29.886131, 24.918375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662075, 29.885773, 24.680740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144990, 0.969464, -0.197780,
		0.576125, -0.245231, -0.779706,
		-0.804399, -0.000896, -0.594089,
		38.420753, 29.885504, 24.502514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158970, 30.192640, 24.352571>,  <38.983833, 29.886131, 24.918375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158970, 30.192640, 24.352571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760265, 30.205368, 24.323048>,  <38.521042, 30.213005, 24.305334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760265, 30.205368, 24.323048>,  <39.158970, 30.192640, 24.352571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760265, 30.205368, 24.323048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052990, 0.950613, -0.305820,
		0.060433, -0.308742, -0.949224,
		-0.996765, 0.031818, -0.073809,
		38.461235, 30.214912, 24.300905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075226, 30.446501, 23.748857>,  <39.158970, 30.192640, 24.352571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075226, 30.446501, 23.748857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718517, 30.496487, 23.922810>,  <38.504490, 30.526478, 24.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718517, 30.496487, 23.922810>,  <39.075226, 30.446501, 23.748857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718517, 30.496487, 23.922810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000716, 0.960715, -0.277536,
		-0.452477, -0.247812, -0.856653,
		-0.891776, 0.124965, 0.434879,
		38.450985, 30.533976, 24.053274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681442, 30.854708, 23.245625>,  <39.075226, 30.446501, 23.748857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681442, 30.854708, 23.245625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514618, 30.891361, 23.607323>,  <38.414524, 30.913353, 23.824341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514618, 30.891361, 23.607323>,  <38.681442, 30.854708, 23.245625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514618, 30.891361, 23.607323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036274, 0.995790, -0.084180,
		-0.908153, -0.002308, -0.418633,
		-0.417065, 0.091633, 0.904246,
		38.389500, 30.918852, 23.878597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245628, 31.468037, 23.147638>,  <38.681442, 30.854708, 23.245625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245628, 31.468037, 23.147638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314995, 31.426037, 23.539333>,  <38.356613, 31.400837, 23.774349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314995, 31.426037, 23.539333>,  <38.245628, 31.468037, 23.147638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314995, 31.426037, 23.539333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011793, 0.994451, 0.104541,
		-0.984779, -0.006581, 0.173688,
		0.173412, -0.104998, 0.979236,
		38.367020, 31.394537, 23.833105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728264, 31.902468, 23.567158>,  <38.245628, 31.468037, 23.147638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728264, 31.902468, 23.567158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016903, 31.858284, 23.840534>,  <38.190086, 31.831774, 24.004560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016903, 31.858284, 23.840534>,  <37.728264, 31.902468, 23.567158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016903, 31.858284, 23.840534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038013, 0.992022, 0.120201,
		-0.691266, -0.060757, 0.720042,
		0.721600, -0.110462, 0.683441,
		38.233383, 31.825146, 24.045567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424492, 32.135826, 24.164518>,  <37.728264, 31.902468, 23.567158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424492, 32.135826, 24.164518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821266, 32.169434, 24.202492>,  <38.059330, 32.189598, 24.225275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821266, 32.169434, 24.202492>,  <37.424492, 32.135826, 24.164518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821266, 32.169434, 24.202492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087288, 0.995705, 0.030846,
		-0.091934, -0.038883, 0.995006,
		0.991932, 0.084017, 0.094933,
		38.118847, 32.194637, 24.230972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515602, 32.466290, 24.804066>,  <37.424492, 32.135826, 24.164518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515602, 32.466290, 24.804066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819046, 32.510963, 24.547306>,  <38.001114, 32.537769, 24.393251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819046, 32.510963, 24.547306>,  <37.515602, 32.466290, 24.804066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819046, 32.510963, 24.547306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046220, 0.991941, 0.117965,
		0.649900, -0.059822, 0.757662,
		0.758613, 0.111684, -0.641898,
		38.046631, 32.544468, 24.354736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984089, 32.940613, 25.191525>,  <37.515602, 32.466290, 24.804066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984089, 32.940613, 25.191525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031448, 32.965645, 24.795128>,  <38.059864, 32.980663, 24.557289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031448, 32.965645, 24.795128>,  <37.984089, 32.940613, 25.191525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031448, 32.965645, 24.795128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017634, 0.997722, 0.065109,
		0.992810, -0.025184, 0.117023,
		0.118397, 0.062577, -0.990992,
		38.066967, 32.984417, 24.497829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586056, 33.524670, 25.415667>,  <37.984089, 32.940613, 25.191525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586056, 33.524670, 25.415667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237244, 33.714722, 25.368652>,  <37.027958, 33.828754, 25.340445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237244, 33.714722, 25.368652>,  <37.586056, 33.524670, 25.415667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237244, 33.714722, 25.368652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284100, -0.686892, -0.668929,
		-0.398563, -0.549934, 0.733976,
		-0.872029, 0.475133, -0.117533,
		36.975636, 33.857262, 25.333393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964241, 33.192314, 25.636030>,  <37.586056, 33.524670, 25.415667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964241, 33.192314, 25.636030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892670, 33.432163, 25.324020>,  <36.849728, 33.576073, 25.136814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892670, 33.432163, 25.324020>,  <36.964241, 33.192314, 25.636030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892670, 33.432163, 25.324020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409837, -0.766187, -0.494966,
		-0.894437, 0.231119, 0.382840,
		-0.178931, 0.599618, -0.780027,
		36.838989, 33.612049, 25.090012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281010, 33.142025, 25.428408>,  <36.964241, 33.192314, 25.636030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281010, 33.142025, 25.428408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532536, 33.248810, 25.136292>,  <36.683453, 33.312881, 24.961021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532536, 33.248810, 25.136292>,  <36.281010, 33.142025, 25.428408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532536, 33.248810, 25.136292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416234, -0.677741, -0.606149,
		-0.656762, 0.685128, -0.315059,
		0.628818, 0.266958, -0.730289,
		36.721180, 33.328896, 24.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564892, 32.903744, 25.153574>,  <36.281010, 33.142025, 25.428408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564892, 32.903744, 25.153574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692875, 32.772549, 24.798035>,  <35.769665, 32.693832, 24.584711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692875, 32.772549, 24.798035>,  <35.564892, 32.903744, 25.153574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692875, 32.772549, 24.798035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519439, -0.845323, 0.124950,
		-0.792345, 0.421723, -0.440839,
		0.319957, -0.327992, -0.888847,
		35.788860, 32.674152, 24.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969624, 32.633026, 24.645758>,  <35.564892, 32.903744, 25.153574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969624, 32.633026, 24.645758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310146, 32.428123, 24.600391>,  <35.514462, 32.305180, 24.573172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310146, 32.428123, 24.600391>,  <34.969624, 32.633026, 24.645758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310146, 32.428123, 24.600391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486782, -0.851815, 0.193531,
		-0.195746, -0.109547, -0.974517,
		0.851309, -0.512260, -0.113414,
		35.565540, 32.274445, 24.566366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932632, 32.128445, 24.107813>,  <34.969624, 32.633026, 24.645758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932632, 32.128445, 24.107813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186577, 32.014877, 24.395241>,  <35.338943, 31.946735, 24.567698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186577, 32.014877, 24.395241>,  <34.932632, 32.128445, 24.107813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186577, 32.014877, 24.395241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539224, -0.828897, 0.148891,
		0.553347, -0.481995, -0.679329,
		0.634858, -0.283922, 0.718571,
		35.377033, 31.929701, 24.610811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179760, 31.427883, 23.992300>,  <34.932632, 32.128445, 24.107813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179760, 31.427883, 23.992300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218323, 31.469788, 24.388226>,  <35.241459, 31.494930, 24.625780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218323, 31.469788, 24.388226>,  <35.179760, 31.427883, 23.992300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218323, 31.469788, 24.388226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492293, -0.859277, 0.138892,
		0.865074, -0.500668, -0.031268,
		0.096407, 0.104759, 0.989814,
		35.247246, 31.501215, 24.685169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304035, 30.727236, 24.299114>,  <35.179760, 31.427883, 23.992300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304035, 30.727236, 24.299114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200100, 30.927654, 24.629311>,  <35.137737, 31.047905, 24.827429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200100, 30.927654, 24.629311>,  <35.304035, 30.727236, 24.299114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200100, 30.927654, 24.629311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494276, -0.803389, 0.332049,
		0.829563, -0.321741, 0.456407,
		-0.259838, 0.501047, 0.825491,
		35.122147, 31.077969, 24.876959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558662, 30.373522, 24.830332>,  <35.304035, 30.727236, 24.299114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558662, 30.373522, 24.830332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276268, 30.580620, 25.023628>,  <35.106831, 30.704878, 25.139606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276268, 30.580620, 25.023628>,  <35.558662, 30.373522, 24.830332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276268, 30.580620, 25.023628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364812, -0.850693, 0.378463,
		0.607037, 0.090898, 0.789458,
		-0.705987, 0.517745, 0.483242,
		35.064472, 30.735943, 25.168600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575584, 30.110752, 25.562193>,  <35.558662, 30.373522, 24.830332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575584, 30.110752, 25.562193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217964, 30.272537, 25.485168>,  <35.003391, 30.369608, 25.438953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217964, 30.272537, 25.485168>,  <35.575584, 30.110752, 25.562193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217964, 30.272537, 25.485168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445401, -0.848507, 0.285750,
		-0.047813, 0.341242, 0.938758,
		-0.894053, 0.404461, -0.192560,
		34.949749, 30.393875, 25.427401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124653, 30.085890, 26.239195>,  <35.575584, 30.110752, 25.562193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124653, 30.085890, 26.239195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914867, 30.097645, 25.898827>,  <34.788994, 30.104698, 25.694605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914867, 30.097645, 25.898827>,  <35.124653, 30.085890, 26.239195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914867, 30.097645, 25.898827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552738, -0.771928, 0.314020,
		-0.647622, 0.635031, 0.421097,
		-0.524468, 0.029390, -0.850923,
		34.757526, 30.106462, 25.643549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529202, 29.842958, 26.417046>,  <35.124653, 30.085890, 26.239195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529202, 29.842958, 26.417046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471401, 29.818451, 26.022003>,  <34.436722, 29.803745, 25.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471401, 29.818451, 26.022003>,  <34.529202, 29.842958, 26.417046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471401, 29.818451, 26.022003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551198, -0.823905, 0.131763,
		-0.821766, 0.563406, 0.085285,
		-0.144503, -0.061270, -0.987606,
		34.428051, 29.800070, 25.725721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811817, 29.777683, 26.321379>,  <34.529202, 29.842958, 26.417046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811817, 29.777683, 26.321379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961342, 29.635345, 25.978767>,  <34.051056, 29.549942, 25.773201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961342, 29.635345, 25.978767>,  <33.811817, 29.777683, 26.321379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961342, 29.635345, 25.978767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667250, -0.744613, 0.018144,
		-0.644237, 0.564735, -0.515783,
		0.373812, -0.355845, -0.856527,
		34.073486, 29.528591, 25.721809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209621, 29.589453, 25.781494>,  <33.811817, 29.777683, 26.321379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209621, 29.589453, 25.781494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524864, 29.373699, 25.662872>,  <33.714012, 29.244247, 25.591700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524864, 29.373699, 25.662872>,  <33.209621, 29.589453, 25.781494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524864, 29.373699, 25.662872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507424, -0.842036, 0.183018,
		-0.348427, 0.006241, -0.937315,
		0.788111, -0.539385, -0.296555,
		33.761299, 29.211884, 25.573906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926548, 29.101751, 25.402361>,  <33.209621, 29.589453, 25.781494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926548, 29.101751, 25.402361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284798, 28.931858, 25.455208>,  <33.499748, 28.829922, 25.486916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284798, 28.931858, 25.455208>,  <32.926548, 29.101751, 25.402361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284798, 28.931858, 25.455208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426442, -0.904365, -0.016500,
		0.126491, -0.041563, -0.991097,
		0.895627, -0.424732, 0.132118,
		33.553486, 28.804438, 25.494843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021786, 28.512014, 24.801497>,  <32.926548, 29.101751, 25.402361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021786, 28.512014, 24.801497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250664, 28.440502, 25.121655>,  <33.387989, 28.397594, 25.313749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250664, 28.440502, 25.121655>,  <33.021786, 28.512014, 24.801497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250664, 28.440502, 25.121655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345181, -0.937795, 0.037293,
		0.743941, -0.297620, -0.598309,
		0.572191, -0.178781, 0.800397,
		33.422321, 28.386868, 25.361774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110439, 27.785721, 24.798046>,  <33.021786, 28.512014, 24.801497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110439, 27.785721, 24.798046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239738, 27.904018, 25.157612>,  <33.317318, 27.974997, 25.373352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239738, 27.904018, 25.157612>,  <33.110439, 27.785721, 24.798046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239738, 27.904018, 25.157612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138628, -0.924864, 0.354130,
		0.936105, -0.239087, -0.257963,
		0.323249, 0.295742, 0.898914,
		33.336712, 27.992741, 25.427286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649952, 27.323864, 25.064095>,  <33.110439, 27.785721, 24.798046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649952, 27.323864, 25.064095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489109, 27.505951, 25.381859>,  <33.392605, 27.615202, 25.572517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489109, 27.505951, 25.381859>,  <33.649952, 27.323864, 25.064095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489109, 27.505951, 25.381859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093241, -0.883495, 0.459067,
		0.910833, 0.110521, 0.397703,
		-0.402105, 0.455216, 0.794412,
		33.368477, 27.642515, 25.620182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742817, 26.877678, 25.639944>,  <33.649952, 27.323864, 25.064095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742817, 26.877678, 25.639944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483360, 27.133602, 25.804821>,  <33.327686, 27.287157, 25.903748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483360, 27.133602, 25.804821>,  <33.742817, 26.877678, 25.639944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483360, 27.133602, 25.804821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296937, -0.711402, 0.636974,
		0.700777, 0.290775, 0.651430,
		-0.648645, 0.639811, 0.412192,
		33.288769, 27.325546, 25.928478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926727, 26.770205, 26.343912>,  <33.742817, 26.877678, 25.639944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926727, 26.770205, 26.343912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557041, 26.919117, 26.309906>,  <33.335228, 27.008465, 26.289503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557041, 26.919117, 26.309906>,  <33.926727, 26.770205, 26.343912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557041, 26.919117, 26.309906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323500, -0.645018, 0.692315,
		0.202899, 0.667353, 0.716570,
		-0.924219, 0.372280, -0.085015,
		33.279774, 27.030802, 26.284401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768337, 26.802094, 26.978018>,  <33.926727, 26.770205, 26.343912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768337, 26.802094, 26.978018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428303, 26.781895, 26.768333>,  <33.224281, 26.769775, 26.642523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428303, 26.781895, 26.768333>,  <33.768337, 26.802094, 26.978018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428303, 26.781895, 26.768333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392442, -0.603049, 0.694493,
		-0.351194, 0.796104, 0.492829,
		-0.850089, -0.050495, -0.524212,
		33.173275, 26.766747, 26.611071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287125, 26.840683, 27.411057>,  <33.768337, 26.802094, 26.978018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287125, 26.840683, 27.411057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095512, 26.671181, 27.103561>,  <32.980545, 26.569479, 26.919064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095512, 26.671181, 27.103561>,  <33.287125, 26.840683, 27.411057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095512, 26.671181, 27.103561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489390, -0.598095, 0.634649,
		-0.728714, 0.680232, 0.079128,
		-0.479034, -0.423753, -0.768739,
		32.951801, 26.544054, 26.872940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561710, 26.901514, 27.546877>,  <33.287125, 26.840683, 27.411057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561710, 26.901514, 27.546877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614376, 26.604656, 27.284004>,  <32.645973, 26.426542, 27.126280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614376, 26.604656, 27.284004>,  <32.561710, 26.901514, 27.546877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614376, 26.604656, 27.284004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441633, -0.637441, 0.631371,
		-0.887483, 0.207107, -0.411681,
		0.131661, -0.742143, -0.657183,
		32.653873, 26.382013, 27.086849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936531, 26.566978, 27.446747>,  <32.561710, 26.901514, 27.546877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936531, 26.566978, 27.446747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205254, 26.300594, 27.317024>,  <32.366486, 26.140764, 27.239191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205254, 26.300594, 27.317024>,  <31.936531, 26.566978, 27.446747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205254, 26.300594, 27.317024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362149, -0.677229, 0.640476,
		-0.646158, -0.312830, -0.696145,
		0.671809, -0.665957, -0.324305,
		32.406796, 26.100807, 27.219732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613651, 25.880402, 27.421661>,  <31.936531, 26.566978, 27.446747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613651, 25.880402, 27.421661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978395, 25.719158, 27.390636>,  <32.197243, 25.622412, 27.372021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978395, 25.719158, 27.390636>,  <31.613651, 25.880402, 27.421661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978395, 25.719158, 27.390636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285522, -0.758564, 0.585711,
		-0.294942, -0.511940, -0.806801,
		0.911859, -0.403110, -0.077562,
		32.251953, 25.598225, 27.367369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612471, 25.250069, 27.085135>,  <31.613651, 25.880402, 27.421661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612471, 25.250069, 27.085135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949530, 25.231335, 27.299706>,  <32.151764, 25.220095, 27.428448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949530, 25.231335, 27.299706>,  <31.612471, 25.250069, 27.085135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949530, 25.231335, 27.299706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273774, -0.895101, 0.351912,
		0.463674, -0.443396, -0.767076,
		0.842647, -0.046833, 0.536426,
		32.202324, 25.217285, 27.460634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855064, 24.537230, 26.987701>,  <31.612471, 25.250069, 27.085135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855064, 24.537230, 26.987701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047657, 24.660721, 27.315815>,  <32.163212, 24.734816, 27.512682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047657, 24.660721, 27.315815>,  <31.855064, 24.537230, 26.987701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047657, 24.660721, 27.315815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169266, -0.885533, 0.432643,
		0.859957, -0.347155, -0.374109,
		0.481480, 0.308731, 0.820282,
		32.192101, 24.753340, 27.561899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315975, 24.019575, 27.095217>,  <31.855064, 24.537230, 26.987701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315975, 24.019575, 27.095217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276398, 24.212154, 27.443565>,  <32.252651, 24.327702, 27.652575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276398, 24.212154, 27.443565>,  <32.315975, 24.019575, 27.095217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276398, 24.212154, 27.443565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015953, -0.874285, 0.485150,
		0.994965, 0.061895, 0.078822,
		-0.098942, 0.481450, 0.870871,
		32.246716, 24.356590, 27.704826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743195, 23.732328, 27.475979>,  <32.315975, 24.019575, 27.095217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743195, 23.732328, 27.475979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506798, 23.913338, 27.743099>,  <32.364960, 24.021942, 27.903372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506798, 23.913338, 27.743099>,  <32.743195, 23.732328, 27.475979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506798, 23.913338, 27.743099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032685, -0.840590, 0.540684,
		0.806018, 0.297711, 0.511569,
		-0.590987, 0.452522, 0.667800,
		32.329502, 24.049095, 27.943439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076900, 23.674858, 28.227758>,  <32.743195, 23.732328, 27.475979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076900, 23.674858, 28.227758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679993, 23.716942, 28.254089>,  <32.441849, 23.742193, 28.269888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679993, 23.716942, 28.254089>,  <33.076900, 23.674858, 28.227758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679993, 23.716942, 28.254089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035162, -0.746988, 0.663907,
		0.119021, 0.656460, 0.744913,
		-0.992269, 0.105211, 0.065825,
		32.382313, 23.748505, 28.273836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896980, 23.468811, 28.954454>,  <33.076900, 23.674858, 28.227758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896980, 23.468811, 28.954454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537048, 23.524628, 28.789127>,  <32.321087, 23.558117, 28.689932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537048, 23.524628, 28.789127>,  <32.896980, 23.468811, 28.954454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537048, 23.524628, 28.789127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417912, -0.547465, 0.725004,
		-0.125110, 0.825112, 0.550942,
		-0.899832, 0.139541, -0.413318,
		32.267097, 23.566490, 28.665133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482983, 23.748899, 29.459938>,  <32.896980, 23.468811, 28.954454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482983, 23.748899, 29.459938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243855, 23.552994, 29.206089>,  <32.100380, 23.435450, 29.053780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243855, 23.552994, 29.206089>,  <32.482983, 23.748899, 29.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243855, 23.552994, 29.206089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562979, -0.307073, 0.767308,
		-0.570676, 0.815988, -0.092154,
		-0.597816, -0.489766, -0.634623,
		32.064510, 23.406065, 29.015701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838209, 23.767139, 29.785011>,  <32.482983, 23.748899, 29.459938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838209, 23.767139, 29.785011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804449, 23.464642, 29.525482>,  <31.784193, 23.283142, 29.369764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804449, 23.464642, 29.525482>,  <31.838209, 23.767139, 29.785011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804449, 23.464642, 29.525482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568521, -0.498213, 0.654651,
		-0.818328, 0.424122, -0.387892,
		-0.084399, -0.756244, -0.648823,
		31.779129, 23.237768, 29.330835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133167, 23.685364, 29.712931>,  <31.838209, 23.767139, 29.785011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133167, 23.685364, 29.712931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305365, 23.343903, 29.595657>,  <31.408684, 23.139027, 29.525293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305365, 23.343903, 29.595657>,  <31.133167, 23.685364, 29.712931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305365, 23.343903, 29.595657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721498, -0.520629, 0.456493,
		-0.542327, 0.015017, -0.840033,
		0.430490, -0.853651, -0.293186,
		31.434513, 23.087807, 29.507702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556030, 23.171471, 29.475702>,  <31.133167, 23.685364, 29.712931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556030, 23.171471, 29.475702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878008, 22.945435, 29.548077>,  <31.071196, 22.809813, 29.591501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878008, 22.945435, 29.548077>,  <30.556030, 23.171471, 29.475702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878008, 22.945435, 29.548077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584230, -0.701569, 0.408015,
		-0.103627, -0.434137, -0.894867,
		0.804945, -0.565089, 0.180934,
		31.119492, 22.775908, 29.602356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451422, 22.558140, 29.231470>,  <30.556030, 23.171471, 29.475702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451422, 22.558140, 29.231470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709408, 22.485382, 29.528370>,  <30.864201, 22.441727, 29.706509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709408, 22.485382, 29.528370>,  <30.451422, 22.558140, 29.231470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709408, 22.485382, 29.528370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549534, -0.785339, 0.285054,
		0.531066, -0.591741, -0.606475,
		0.644966, -0.181897, 0.742248,
		30.902897, 22.430813, 29.751045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406063, 21.894907, 29.394026>,  <30.451422, 22.558140, 29.231470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406063, 21.894907, 29.394026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609463, 21.981926, 29.727276>,  <30.731503, 22.034138, 29.927227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609463, 21.981926, 29.727276>,  <30.406063, 21.894907, 29.394026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609463, 21.981926, 29.727276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456636, -0.752163, 0.475115,
		0.730008, -0.622031, -0.283134,
		0.508499, 0.217549, 0.833127,
		30.762012, 22.047190, 29.977215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447121, 21.257910, 29.830851>,  <30.406063, 21.894907, 29.394026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447121, 21.257910, 29.830851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520428, 21.553406, 30.090290>,  <30.564411, 21.730703, 30.245955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520428, 21.553406, 30.090290>,  <30.447121, 21.257910, 29.830851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520428, 21.553406, 30.090290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579172, -0.451975, 0.678438,
		0.794338, -0.499985, 0.345025,
		0.183267, 0.738738, 0.648598,
		30.575407, 21.775026, 30.284870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681849, 20.891096, 30.492887>,  <30.447121, 21.257910, 29.830851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681849, 20.891096, 30.492887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581364, 21.259029, 30.613419>,  <30.521072, 21.479790, 30.685738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581364, 21.259029, 30.613419>,  <30.681849, 20.891096, 30.492887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581364, 21.259029, 30.613419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517070, -0.390698, 0.761573,
		0.818249, 0.035508, 0.573766,
		-0.251211, 0.919834, 0.301328,
		30.506001, 21.534979, 30.703817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842777, 20.952589, 31.218199>,  <30.681849, 20.891096, 30.492887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842777, 20.952589, 31.218199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572237, 21.239017, 31.149158>,  <30.409914, 21.410875, 31.107735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572237, 21.239017, 31.149158>,  <30.842777, 20.952589, 31.218199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572237, 21.239017, 31.149158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615808, -0.421139, 0.665899,
		0.404144, 0.556669, 0.725801,
		-0.676349, 0.716073, -0.172601,
		30.369333, 21.453840, 31.097378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637539, 21.139395, 31.870773>,  <30.842777, 20.952589, 31.218199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637539, 21.139395, 31.870773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342390, 21.277653, 31.638885>,  <30.165300, 21.360607, 31.499754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342390, 21.277653, 31.638885>,  <30.637539, 21.139395, 31.870773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342390, 21.277653, 31.638885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674708, -0.400258, 0.620132,
		-0.017690, 0.848718, 0.528549,
		-0.737873, 0.345646, -0.579718,
		30.121029, 21.381346, 31.464970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171196, 21.473053, 32.283920>,  <30.637539, 21.139395, 31.870773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171196, 21.473053, 32.283920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960526, 21.350155, 31.966881>,  <29.834124, 21.276417, 31.776657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960526, 21.350155, 31.966881>,  <30.171196, 21.473053, 32.283920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960526, 21.350155, 31.966881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652807, -0.451026, 0.608620,
		-0.544478, 0.837960, 0.036974,
		-0.526675, -0.307243, -0.792600,
		29.802523, 21.257982, 31.729101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438726, 21.660904, 32.375801>,  <30.171196, 21.473053, 32.283920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438726, 21.660904, 32.375801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427364, 21.373215, 32.098122>,  <29.420547, 21.200602, 31.931515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427364, 21.373215, 32.098122>,  <29.438726, 21.660904, 32.375801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427364, 21.373215, 32.098122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654547, -0.511499, 0.556719,
		-0.755487, 0.470199, -0.456236,
		-0.028405, -0.719223, -0.694199,
		29.418842, 21.157448, 31.889862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756407, 21.511463, 32.218086>,  <29.438726, 21.660904, 32.375801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756407, 21.511463, 32.218086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972834, 21.181625, 32.152004>,  <29.102690, 20.983723, 32.112354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972834, 21.181625, 32.152004>,  <28.756407, 21.511463, 32.218086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972834, 21.181625, 32.152004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607070, -0.518914, 0.601825,
		-0.581991, -0.225333, -0.781353,
		0.541066, -0.824593, -0.165210,
		29.135155, 20.934248, 32.102440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285084, 20.971123, 32.311871>,  <28.756407, 21.511463, 32.218086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285084, 20.971123, 32.311871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626451, 20.762928, 32.300808>,  <28.831272, 20.638012, 32.294170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626451, 20.762928, 32.300808>,  <28.285084, 20.971123, 32.311871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626451, 20.762928, 32.300808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447286, -0.758577, 0.473810,
		-0.267594, -0.391988, -0.880193,
		0.853422, -0.520487, -0.027659,
		28.882479, 20.606781, 32.292511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057783, 20.401661, 32.037518>,  <28.285084, 20.971123, 32.311871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057783, 20.401661, 32.037518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410330, 20.319992, 32.207932>,  <28.621859, 20.270990, 32.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410330, 20.319992, 32.207932>,  <28.057783, 20.401661, 32.037518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410330, 20.319992, 32.207932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412030, -0.773404, 0.481745,
		0.231138, -0.600133, -0.765778,
		0.881366, -0.204174, 0.426036,
		28.674740, 20.258739, 32.335743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999296, 19.616016, 32.214031>,  <28.057783, 20.401661, 32.037518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999296, 19.616016, 32.214031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286345, 19.758133, 32.453625>,  <28.458574, 19.843403, 32.597382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286345, 19.758133, 32.453625>,  <27.999296, 19.616016, 32.214031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286345, 19.758133, 32.453625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358033, -0.549507, 0.754887,
		0.597353, -0.756181, -0.267132,
		0.717622, 0.355292, 0.598988,
		28.501631, 19.864719, 32.633320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285383, 19.070654, 32.501621>,  <27.999296, 19.616016, 32.214031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285383, 19.070654, 32.501621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337700, 19.360367, 32.772415>,  <28.369089, 19.534195, 32.934891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337700, 19.360367, 32.772415>,  <28.285383, 19.070654, 32.501621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337700, 19.360367, 32.772415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355700, -0.603105, 0.713962,
		0.925403, -0.334183, 0.178747,
		0.130791, 0.724283, 0.676985,
		28.376938, 19.577652, 32.975510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695652, 18.798281, 33.034275>,  <28.285383, 19.070654, 32.501621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695652, 18.798281, 33.034275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476973, 19.106895, 33.164417>,  <28.345766, 19.292065, 33.242504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476973, 19.106895, 33.164417>,  <28.695652, 18.798281, 33.034275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476973, 19.106895, 33.164417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479380, -0.606977, 0.633856,
		0.686525, 0.190558, 0.701691,
		-0.546697, 0.771535, 0.325355,
		28.312963, 19.338356, 33.262024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594471, 18.486713, 33.726463>,  <28.695652, 18.798281, 33.034275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594471, 18.486713, 33.726463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361160, 18.787384, 33.603325>,  <28.221174, 18.967787, 33.529442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361160, 18.787384, 33.603325>,  <28.594471, 18.486713, 33.726463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361160, 18.787384, 33.603325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812164, -0.533510, 0.236127,
		0.013254, 0.387747, 0.921670,
		-0.583278, 0.751677, -0.307843,
		28.186176, 19.012888, 33.510971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168606, 18.668871, 34.153950>,  <28.594471, 18.486713, 33.726463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168606, 18.668871, 34.153950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973181, 18.782848, 33.824074>,  <27.855925, 18.851234, 33.626148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973181, 18.782848, 33.824074>,  <28.168606, 18.668871, 34.153950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973181, 18.782848, 33.824074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800269, -0.522954, 0.293407,
		-0.347669, 0.803321, 0.483529,
		-0.488564, 0.284945, -0.824689,
		27.826612, 18.868332, 33.576668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570358, 19.078331, 34.338535>,  <28.168606, 18.668871, 34.153950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570358, 19.078331, 34.338535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501507, 18.890293, 33.992268>,  <27.460196, 18.777470, 33.784508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501507, 18.890293, 33.992268>,  <27.570358, 19.078331, 34.338535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501507, 18.890293, 33.992268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787567, -0.462183, 0.407584,
		-0.591701, 0.751929, -0.290676,
		-0.172128, -0.470094, -0.865669,
		27.449869, 18.749264, 33.732567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819843, 19.231300, 34.004856>,  <27.570358, 19.078331, 34.338535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819843, 19.231300, 34.004856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976952, 18.874237, 33.916412>,  <27.071217, 18.659998, 33.863346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976952, 18.874237, 33.916412>,  <26.819843, 19.231300, 34.004856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976952, 18.874237, 33.916412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782615, -0.450709, 0.429390,
		-0.482958, 0.004398, -0.875633,
		0.392767, -0.892660, -0.221116,
		27.094782, 18.606440, 33.850079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211912, 19.587702, 34.192734>,  <26.819843, 19.231300, 34.004856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211912, 19.587702, 34.192734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223619, 19.722500, 33.816315>,  <26.230644, 19.803379, 33.590462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223619, 19.722500, 33.816315>,  <26.211912, 19.587702, 34.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223619, 19.722500, 33.816315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169109, 0.926214, 0.336943,
		0.985163, -0.169002, -0.029879,
		0.029270, 0.336996, -0.941051,
		26.232401, 19.823599, 33.534000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802183, 19.937260, 34.105022>,  <26.211912, 19.587702, 34.192734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802183, 19.937260, 34.105022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609350, 20.067513, 33.779678>,  <26.493650, 20.145664, 33.584473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609350, 20.067513, 33.779678>,  <26.802183, 19.937260, 34.105022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609350, 20.067513, 33.779678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329272, 0.927645, 0.176225,
		0.811897, -0.182863, -0.554423,
		-0.482082, 0.325633, -0.813363,
		26.464725, 20.165203, 33.535667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214146, 20.466291, 33.658642>,  <26.802183, 19.937260, 34.105022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214146, 20.466291, 33.658642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823427, 20.519138, 33.591221>,  <26.588995, 20.550846, 33.550766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823427, 20.519138, 33.591221>,  <27.214146, 20.466291, 33.658642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823427, 20.519138, 33.591221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118726, 0.989087, 0.087245,
		0.178243, 0.065208, -0.981824,
		-0.976798, 0.132119, -0.168555,
		26.530388, 20.558773, 33.540653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092760, 20.854536, 34.310139>,  <27.214146, 20.466291, 33.658642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092760, 20.854536, 34.310139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226316, 20.859138, 34.687157>,  <27.306450, 20.861900, 34.913368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226316, 20.859138, 34.687157>,  <27.092760, 20.854536, 34.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226316, 20.859138, 34.687157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858922, 0.408186, -0.309253,
		-0.388290, 0.912826, 0.126408,
		0.333892, 0.011505, 0.942541,
		27.326485, 20.862591, 34.969917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142128, 21.514780, 34.600895>,  <27.092760, 20.854536, 34.310139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142128, 21.514780, 34.600895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430162, 21.281681, 34.751564>,  <27.602983, 21.141823, 34.841965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430162, 21.281681, 34.751564>,  <27.142128, 21.514780, 34.600895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430162, 21.281681, 34.751564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662005, 0.739618, -0.121308,
		-0.207901, 0.336710, 0.918370,
		0.720088, -0.582745, 0.376671,
		27.646189, 21.106857, 34.864567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394901, 21.914131, 35.094563>,  <27.142128, 21.514780, 34.600895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394901, 21.914131, 35.094563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680767, 21.660980, 34.975422>,  <27.852287, 21.509089, 34.903938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680767, 21.660980, 34.975422>,  <27.394901, 21.914131, 35.094563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680767, 21.660980, 34.975422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630901, 0.767114, -0.116187,
		0.302020, -0.104881, 0.947514,
		0.714666, -0.632879, -0.297853,
		27.895166, 21.471117, 34.886066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015636, 22.171467, 35.438370>,  <27.394901, 21.914131, 35.094563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015636, 22.171467, 35.438370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144508, 21.942875, 35.136478>,  <28.221830, 21.805719, 34.955345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144508, 21.942875, 35.136478>,  <28.015636, 22.171467, 35.438370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144508, 21.942875, 35.136478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796566, 0.594446, -0.110076,
		0.511551, -0.565725, 0.646739,
		0.322179, -0.571479, -0.754727,
		28.241161, 21.771431, 34.910061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683924, 22.115725, 35.639484>,  <28.015636, 22.171467, 35.438370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683924, 22.115725, 35.639484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661652, 22.038834, 35.247578>,  <28.648289, 21.992699, 35.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661652, 22.038834, 35.247578>,  <28.683924, 22.115725, 35.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661652, 22.038834, 35.247578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656942, 0.731909, -0.180931,
		0.751882, -0.653726, 0.085529,
		-0.055680, -0.192227, -0.979770,
		28.644947, 21.981165, 34.953648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382051, 22.266748, 35.442871>,  <28.683924, 22.115725, 35.639484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382051, 22.266748, 35.442871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140106, 22.288925, 35.125111>,  <28.994940, 22.302231, 34.934456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140106, 22.288925, 35.125111>,  <29.382051, 22.266748, 35.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140106, 22.288925, 35.125111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434650, 0.858857, -0.271007,
		0.667249, -0.509207, -0.543587,
		-0.604862, 0.055441, -0.794398,
		28.958647, 22.305557, 34.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856104, 22.344006, 34.902020>,  <29.382051, 22.266748, 35.442871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856104, 22.344006, 34.902020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520628, 22.478592, 34.730724>,  <29.319342, 22.559343, 34.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520628, 22.478592, 34.730724>,  <29.856104, 22.344006, 34.902020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520628, 22.478592, 34.730724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490066, 0.809253, -0.323951,
		0.237551, -0.481559, -0.843606,
		-0.838692, 0.336468, -0.428235,
		29.269020, 22.579533, 34.602253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022631, 22.624493, 34.271015>,  <29.856104, 22.344006, 34.902020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022631, 22.624493, 34.271015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669767, 22.791039, 34.359047>,  <29.458050, 22.890966, 34.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669767, 22.791039, 34.359047>,  <30.022631, 22.624493, 34.271015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669767, 22.791039, 34.359047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296873, 0.854402, -0.426454,
		-0.365596, -0.310866, -0.877327,
		-0.882160, 0.416364, 0.220078,
		29.405119, 22.915947, 34.425072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798038, 22.838421, 33.670303>,  <30.022631, 22.624493, 34.271015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798038, 22.838421, 33.670303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633539, 23.075665, 33.947170>,  <29.534840, 23.218010, 34.113293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633539, 23.075665, 33.947170>,  <29.798038, 22.838421, 33.670303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633539, 23.075665, 33.947170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414786, 0.797947, -0.437302,
		-0.811682, 0.107263, -0.574166,
		-0.411248, 0.593107, 0.692170,
		29.510164, 23.253597, 34.154819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580935, 23.468594, 33.300930>,  <29.798038, 22.838421, 33.670303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580935, 23.468594, 33.300930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535280, 23.572128, 33.684593>,  <29.507887, 23.634249, 33.914791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535280, 23.572128, 33.684593>,  <29.580935, 23.468594, 33.300930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535280, 23.572128, 33.684593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228606, 0.946398, -0.228189,
		-0.966805, 0.193224, -0.167191,
		-0.114138, 0.258835, 0.959154,
		29.501040, 23.649778, 33.972340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160582, 24.065243, 33.346592>,  <29.580935, 23.468594, 33.300930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160582, 24.065243, 33.346592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365360, 24.072338, 33.690125>,  <29.488228, 24.076595, 33.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365360, 24.072338, 33.690125>,  <29.160582, 24.065243, 33.346592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365360, 24.072338, 33.690125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369332, 0.898116, -0.238708,
		-0.775566, 0.439401, 0.453238,
		0.511949, 0.017739, 0.858833,
		29.518946, 24.077660, 33.947773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944859, 24.653124, 33.682903>,  <29.160582, 24.065243, 33.346592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944859, 24.653124, 33.682903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299189, 24.546677, 33.834953>,  <29.511786, 24.482809, 33.926186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299189, 24.546677, 33.834953>,  <28.944859, 24.653124, 33.682903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299189, 24.546677, 33.834953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325718, 0.940066, -0.100914,
		-0.330490, 0.213206, 0.919413,
		0.885824, -0.266118, 0.380127,
		29.564936, 24.466841, 33.948990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077551, 25.199421, 34.052086>,  <28.944859, 24.653124, 33.682903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077551, 25.199421, 34.052086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438211, 25.026947, 34.038765>,  <29.654608, 24.923464, 34.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438211, 25.026947, 34.038765>,  <29.077551, 25.199421, 34.052086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438211, 25.026947, 34.038765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428876, 0.901410, -0.059385,
		0.055623, 0.039263, 0.997680,
		0.901649, -0.431184, -0.033300,
		29.708706, 24.897593, 34.028774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616840, 25.637304, 34.496552>,  <29.077551, 25.199421, 34.052086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616840, 25.637304, 34.496552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807995, 25.407722, 34.230560>,  <29.922688, 25.269974, 34.070965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807995, 25.407722, 34.230560>,  <29.616840, 25.637304, 34.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807995, 25.407722, 34.230560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350417, 0.818738, -0.454837,
		0.805500, -0.015659, 0.592389,
		0.477889, -0.573954, -0.664980,
		29.951361, 25.235537, 34.031067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293411, 25.735369, 34.549644>,  <29.616840, 25.637304, 34.496552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293411, 25.735369, 34.549644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268667, 25.593777, 34.176361>,  <30.253820, 25.508821, 33.952393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268667, 25.593777, 34.176361>,  <30.293411, 25.735369, 34.549644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268667, 25.593777, 34.176361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529481, 0.780945, -0.331323,
		0.846063, -0.514609, 0.139119,
		-0.061858, -0.353981, -0.933205,
		30.250111, 25.487583, 33.896400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900312, 25.971607, 34.228954>,  <30.293411, 25.735369, 34.549644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900312, 25.971607, 34.228954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688074, 25.898590, 33.897861>,  <30.560732, 25.854780, 33.699203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688074, 25.898590, 33.897861>,  <30.900312, 25.971607, 34.228954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688074, 25.898590, 33.897861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611565, 0.593717, -0.522961,
		0.586893, -0.783699, -0.203403,
		-0.530608, -0.182528, -0.827731,
		30.528894, 25.843828, 33.649540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384100, 25.855162, 33.743988>,  <30.900312, 25.971607, 34.228954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384100, 25.855162, 33.743988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056890, 25.984413, 33.553650>,  <30.860565, 26.061964, 33.439449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056890, 25.984413, 33.553650>,  <31.384100, 25.855162, 33.743988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056890, 25.984413, 33.553650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572438, 0.538079, -0.618697,
		0.056123, -0.778499, -0.625132,
		-0.818025, 0.323126, -0.475841,
		30.811483, 26.081350, 33.410896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649500, 25.917427, 33.160755>,  <31.384100, 25.855162, 33.743988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649500, 25.917427, 33.160755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299944, 26.107376, 33.119167>,  <31.090210, 26.221346, 33.094215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299944, 26.107376, 33.119167>,  <31.649500, 25.917427, 33.160755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299944, 26.107376, 33.119167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452499, 0.716468, -0.530960,
		-0.177650, -0.511047, -0.840995,
		-0.873891, 0.474874, -0.103968,
		31.037777, 26.249838, 33.087978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497393, 25.877619, 32.481819>,  <31.649500, 25.917427, 33.160755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497393, 25.877619, 32.481819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328417, 26.194408, 32.658146>,  <31.227032, 26.384481, 32.763943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328417, 26.194408, 32.658146>,  <31.497393, 25.877619, 32.481819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328417, 26.194408, 32.658146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380887, 0.596429, -0.706539,
		-0.822477, -0.130569, -0.553609,
		-0.422440, 0.791975, 0.440817,
		31.201685, 26.432001, 32.790390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274294, 26.184652, 31.978342>,  <31.497393, 25.877619, 32.481819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274294, 26.184652, 31.978342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260839, 26.465206, 32.263138>,  <31.252768, 26.633539, 32.434013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260839, 26.465206, 32.263138>,  <31.274294, 26.184652, 31.978342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260839, 26.465206, 32.263138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388254, 0.665610, -0.637356,
		-0.920938, 0.254995, -0.294704,
		-0.033635, 0.701385, 0.711988,
		31.250750, 26.675621, 32.476734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831223, 26.773726, 31.678827>,  <31.274294, 26.184652, 31.978342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831223, 26.773726, 31.678827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074335, 26.909290, 31.966087>,  <31.220203, 26.990629, 32.138443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074335, 26.909290, 31.966087>,  <30.831223, 26.773726, 31.678827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074335, 26.909290, 31.966087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191568, 0.815071, -0.546773,
		-0.770652, 0.469893, 0.430460,
		0.607781, 0.338910, 0.718152,
		31.256670, 27.010963, 32.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679861, 27.494417, 31.715431>,  <30.831223, 26.773726, 31.678827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679861, 27.494417, 31.715431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041256, 27.479290, 31.886211>,  <31.258093, 27.470215, 31.988680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041256, 27.479290, 31.886211>,  <30.679861, 27.494417, 31.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041256, 27.479290, 31.886211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307749, 0.750563, -0.584762,
		-0.298338, 0.659716, 0.689760,
		0.903485, -0.037816, 0.426948,
		31.312302, 27.467945, 32.014297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898893, 28.156305, 32.030624>,  <30.679861, 27.494417, 31.715431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898893, 28.156305, 32.030624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248161, 27.983845, 31.939686>,  <31.457722, 27.880369, 31.885124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248161, 27.983845, 31.939686>,  <30.898893, 28.156305, 32.030624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248161, 27.983845, 31.939686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278631, 0.824225, -0.492969,
		0.399924, 0.367101, 0.839820,
		0.873170, -0.431150, -0.227342,
		31.510113, 27.854500, 31.871483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285784, 28.757181, 31.901100>,  <30.898893, 28.156305, 32.030624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285784, 28.757181, 31.901100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555641, 28.475983, 31.811077>,  <31.717556, 28.307262, 31.757063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555641, 28.475983, 31.811077>,  <31.285784, 28.757181, 31.901100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555641, 28.475983, 31.811077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592715, 0.697651, -0.402458,
		0.439940, 0.138118, 0.887342,
		0.674642, -0.702999, -0.225060,
		31.758034, 28.265083, 31.743559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908247, 29.028103, 32.060448>,  <31.285784, 28.757181, 31.901100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908247, 29.028103, 32.060448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981291, 28.753151, 31.779263>,  <32.025116, 28.588179, 31.610552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981291, 28.753151, 31.779263>,  <31.908247, 29.028103, 32.060448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981291, 28.753151, 31.779263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538896, 0.667997, -0.513198,
		0.822341, -0.285109, 0.492410,
		0.182611, -0.687382, -0.702965,
		32.036076, 28.546936, 31.568373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687214, 28.888910, 31.935104>,  <31.908247, 29.028103, 32.060448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687214, 28.888910, 31.935104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495411, 28.797871, 31.596100>,  <32.380329, 28.743246, 31.392696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495411, 28.797871, 31.596100>,  <32.687214, 28.888910, 31.935104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495411, 28.797871, 31.596100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596083, 0.624303, -0.504907,
		0.644022, -0.747291, -0.163684,
		-0.479501, -0.227603, -0.847512,
		32.351559, 28.729591, 31.341846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169388, 28.939728, 31.542891>,  <32.687214, 28.888910, 31.935104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169388, 28.939728, 31.542891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892715, 28.898483, 31.256969>,  <32.726711, 28.873737, 31.085417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892715, 28.898483, 31.256969>,  <33.169388, 28.939728, 31.542891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892715, 28.898483, 31.256969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550342, 0.565652, -0.614135,
		0.467653, -0.818172, -0.334505,
		-0.691682, -0.103110, -0.714804,
		32.685211, 28.867550, 31.042528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574749, 28.857063, 30.889898>,  <33.169388, 28.939728, 31.542891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574749, 28.857063, 30.889898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216663, 29.010689, 30.799488>,  <33.001812, 29.102863, 30.745241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216663, 29.010689, 30.799488>,  <33.574749, 28.857063, 30.889898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216663, 29.010689, 30.799488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441048, 0.690964, -0.572752,
		-0.063798, -0.612424, -0.787951,
		-0.895213, 0.384065, -0.226027,
		32.948101, 29.125908, 30.731680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629593, 29.047106, 30.123508>,  <33.574749, 28.857063, 30.889898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629593, 29.047106, 30.123508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331776, 29.262211, 30.281734>,  <33.153088, 29.391273, 30.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331776, 29.262211, 30.281734>,  <33.629593, 29.047106, 30.123508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331776, 29.262211, 30.281734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346123, 0.817635, -0.460077,
		-0.570842, -0.205630, -0.794893,
		-0.744539, 0.537763, 0.395567,
		33.108414, 29.423540, 30.400404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231396, 29.267504, 29.441687>,  <33.629593, 29.047106, 30.123508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231396, 29.267504, 29.441687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163704, 29.485771, 29.769981>,  <33.123089, 29.616732, 29.966959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163704, 29.485771, 29.769981>,  <33.231396, 29.267504, 29.441687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163704, 29.485771, 29.769981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231477, 0.831460, -0.505067,
		-0.958008, 0.104508, -0.267019,
		-0.169232, 0.545667, 0.820736,
		33.112934, 29.649471, 30.016203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890564, 29.844538, 29.141544>,  <33.231396, 29.267504, 29.441687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890564, 29.844538, 29.141544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001076, 29.940590, 29.513783>,  <33.067383, 29.998220, 29.737125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001076, 29.940590, 29.513783>,  <32.890564, 29.844538, 29.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001076, 29.940590, 29.513783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128628, 0.950333, -0.283411,
		-0.952431, 0.198001, 0.231670,
		0.276279, 0.240130, 0.930595,
		33.083958, 30.012629, 29.792961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587223, 30.454422, 29.183598>,  <32.890564, 29.844538, 29.141544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587223, 30.454422, 29.183598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884922, 30.426735, 29.449322>,  <33.063541, 30.410124, 29.608755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884922, 30.426735, 29.449322>,  <32.587223, 30.454422, 29.183598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884922, 30.426735, 29.449322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301038, 0.922622, -0.241132,
		-0.596216, 0.379444, 0.707495,
		0.744247, -0.069216, 0.664309,
		33.108196, 30.405970, 29.648615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479496, 31.152403, 29.442293>,  <32.587223, 30.454422, 29.183598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479496, 31.152403, 29.442293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836014, 31.006092, 29.549473>,  <33.049927, 30.918306, 29.613781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836014, 31.006092, 29.549473>,  <32.479496, 31.152403, 29.442293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836014, 31.006092, 29.549473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435388, 0.855416, -0.280538,
		-0.126592, 0.366703, 0.921685,
		0.891298, -0.365776, 0.267947,
		33.103405, 30.896358, 29.629856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729549, 31.583059, 29.971508>,  <32.479496, 31.152403, 29.442293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729549, 31.583059, 29.971508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006336, 31.391579, 29.755348>,  <33.172409, 31.276690, 29.625652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006336, 31.391579, 29.755348>,  <32.729549, 31.583059, 29.971508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006336, 31.391579, 29.755348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242129, 0.859076, -0.450957,
		0.680116, 0.181200, 0.710358,
		0.691965, -0.478701, -0.540398,
		33.213924, 31.247969, 29.593229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264568, 32.173435, 29.967461>,  <32.729549, 31.583059, 29.971508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264568, 32.173435, 29.967461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325066, 31.896206, 29.685532>,  <33.361362, 31.729868, 29.516375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325066, 31.896206, 29.685532>,  <33.264568, 32.173435, 29.967461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325066, 31.896206, 29.685532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298849, 0.711718, -0.635725,
		0.942240, -0.114489, 0.314764,
		0.151240, -0.693073, -0.704824,
		33.370438, 31.688284, 29.474085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950108, 32.445896, 29.531532>,  <33.264568, 32.173435, 29.967461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950108, 32.445896, 29.531532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800468, 32.162601, 29.292049>,  <33.710686, 31.992624, 29.148359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800468, 32.162601, 29.292049>,  <33.950108, 32.445896, 29.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800468, 32.162601, 29.292049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286982, 0.525488, -0.800939,
		0.881870, -0.471446, 0.006669,
		-0.374095, -0.708238, -0.598709,
		33.688240, 31.950130, 29.112436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456997, 32.403702, 28.943443>,  <33.950108, 32.445896, 29.531532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456997, 32.403702, 28.943443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135670, 32.201729, 28.817127>,  <33.942875, 32.080544, 28.741337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135670, 32.201729, 28.817127>,  <34.456997, 32.403702, 28.943443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135670, 32.201729, 28.817127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217229, 0.245287, -0.944799,
		0.554520, -0.827573, -0.087357,
		-0.803318, -0.504934, -0.315790,
		33.894676, 32.050247, 28.722391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687492, 31.958168, 28.377821>,  <34.456997, 32.403702, 28.943443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687492, 31.958168, 28.377821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295811, 31.999100, 28.307758>,  <34.060802, 32.023659, 28.265720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295811, 31.999100, 28.307758>,  <34.687492, 31.958168, 28.377821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295811, 31.999100, 28.307758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197819, 0.290420, -0.936228,
		-0.044937, -0.951412, -0.304625,
		-0.979208, 0.102332, -0.175157,
		34.002048, 32.029800, 28.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606556, 31.684887, 27.779657>,  <34.687492, 31.958168, 28.377821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606556, 31.684887, 27.779657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292351, 31.928913, 27.821201>,  <34.103828, 32.075329, 27.846128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292351, 31.928913, 27.821201>,  <34.606556, 31.684887, 27.779657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292351, 31.928913, 27.821201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266461, 0.484907, -0.832985,
		-0.558538, -0.626646, -0.543460,
		-0.785514, 0.610065, 0.103862,
		34.056698, 32.111931, 27.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244308, 31.640675, 27.170511>,  <34.606556, 31.684887, 27.779657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244308, 31.640675, 27.170511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141418, 31.981335, 27.353172>,  <34.079685, 32.185730, 27.462769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141418, 31.981335, 27.353172>,  <34.244308, 31.640675, 27.170511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141418, 31.981335, 27.353172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033783, 0.480187, -0.876515,
		-0.965762, -0.210030, -0.152285,
		-0.257220, 0.851650, 0.456651,
		34.064251, 32.236828, 27.490168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816971, 31.903069, 26.702566>,  <34.244308, 31.640675, 27.170511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816971, 31.903069, 26.702566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909760, 32.232529, 26.909557>,  <33.965431, 32.430206, 27.033752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909760, 32.232529, 26.909557>,  <33.816971, 31.903069, 26.702566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909760, 32.232529, 26.909557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225504, 0.471962, -0.852291,
		-0.946222, 0.314402, -0.076254,
		0.231973, 0.823653, 0.517479,
		33.979351, 32.479626, 27.064800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491486, 32.590942, 26.272230>,  <33.816971, 31.903069, 26.702566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491486, 32.590942, 26.272230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788860, 32.685730, 26.522396>,  <33.967285, 32.742603, 26.672497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788860, 32.685730, 26.522396>,  <33.491486, 32.590942, 26.272230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788860, 32.685730, 26.522396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441479, 0.528564, -0.725064,
		-0.502391, 0.815148, 0.288336,
		0.743438, 0.236971, 0.625416,
		34.011890, 32.756821, 26.710020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877419, 32.303444, 26.583591>,  <33.491486, 32.590942, 26.272230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877419, 32.303444, 26.583591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663574, 32.633114, 26.508827>,  <32.535267, 32.830914, 26.463968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663574, 32.633114, 26.508827>,  <32.877419, 32.303444, 26.583591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663574, 32.633114, 26.508827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427487, -0.072943, 0.901074,
		0.729005, 0.561624, 0.391318,
		-0.534609, 0.824171, -0.186911,
		32.503193, 32.880363, 26.452753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937714, 32.813782, 27.096228>,  <32.877419, 32.303444, 26.583591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937714, 32.813782, 27.096228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581264, 32.891891, 26.932392>,  <32.367393, 32.938759, 26.834091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581264, 32.891891, 26.932392>,  <32.937714, 32.813782, 27.096228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581264, 32.891891, 26.932392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444283, -0.192009, 0.875069,
		0.092237, 0.961769, 0.257863,
		-0.891126, 0.195278, -0.409587,
		32.313927, 32.950474, 26.809517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582706, 33.131329, 27.593033>,  <32.937714, 32.813782, 27.096228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582706, 33.131329, 27.593033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305698, 32.995472, 27.338455>,  <32.139496, 32.913960, 27.185709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305698, 32.995472, 27.338455>,  <32.582706, 33.131329, 27.593033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305698, 32.995472, 27.338455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622717, -0.163958, 0.765076,
		-0.364200, 0.926155, -0.097956,
		-0.692518, -0.339639, -0.636446,
		32.097942, 32.893581, 27.147522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895933, 33.418022, 27.795448>,  <32.582706, 33.131329, 27.593033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895933, 33.418022, 27.795448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805323, 33.112522, 27.553665>,  <31.750957, 32.929222, 27.408596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805323, 33.112522, 27.553665>,  <31.895933, 33.418022, 27.795448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805323, 33.112522, 27.553665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691344, -0.311069, 0.652134,
		-0.686098, 0.565612, -0.457551,
		-0.226525, -0.763753, -0.604457,
		31.737366, 32.883396, 27.372328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199503, 33.476334, 27.718954>,  <31.895933, 33.418022, 27.795448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199503, 33.476334, 27.718954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318197, 33.103569, 27.635532>,  <31.389414, 32.879910, 27.585480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318197, 33.103569, 27.635532>,  <31.199503, 33.476334, 27.718954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318197, 33.103569, 27.635532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593671, -0.351080, 0.724084,
		-0.748000, -0.091047, -0.657425,
		0.296734, -0.931908, -0.208556,
		31.407217, 32.823997, 27.572966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511253, 33.181225, 27.374048>,  <31.199503, 33.476334, 27.718954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511253, 33.181225, 27.374048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721642, 32.863354, 27.495270>,  <30.847874, 32.672630, 27.568003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721642, 32.863354, 27.495270>,  <30.511253, 33.181225, 27.374048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721642, 32.863354, 27.495270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722218, -0.229137, 0.652609,
		-0.449175, -0.562121, -0.694451,
		0.525969, -0.794680, 0.303051,
		30.879433, 32.624950, 27.586185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046886, 32.641346, 27.351944>,  <30.511253, 33.181225, 27.374048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046886, 32.641346, 27.351944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339558, 32.530960, 27.601261>,  <30.515160, 32.464729, 27.750853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339558, 32.530960, 27.601261>,  <30.046886, 32.641346, 27.351944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339558, 32.530960, 27.601261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681592, -0.308324, 0.663603,
		0.009048, -0.910375, -0.413686,
		0.731676, -0.275961, 0.623294,
		30.559061, 32.448174, 27.788250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143156, 31.880600, 27.415649>,  <30.046886, 32.641346, 27.351944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143156, 31.880600, 27.415649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313007, 32.023369, 27.748466>,  <30.414919, 32.109028, 27.948156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313007, 32.023369, 27.748466>,  <30.143156, 31.880600, 27.415649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313007, 32.023369, 27.748466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646745, -0.523538, 0.554644,
		0.633570, -0.773638, 0.008527,
		0.424629, 0.356920, 0.832044,
		30.440395, 32.130444, 27.998079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118612, 31.365902, 27.907892>,  <30.143156, 31.880600, 27.415649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118612, 31.365902, 27.907892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157700, 31.683800, 28.147503>,  <30.181152, 31.874538, 28.291269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157700, 31.683800, 28.147503>,  <30.118612, 31.365902, 27.907892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157700, 31.683800, 28.147503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541447, -0.462578, 0.702038,
		0.835037, -0.392942, 0.385110,
		0.097717, 0.794744, 0.599027,
		30.187016, 31.922222, 28.327211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466015, 31.062613, 28.531586>,  <30.118612, 31.365902, 27.907892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466015, 31.062613, 28.531586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303886, 31.412388, 28.638226>,  <30.206610, 31.622253, 28.702209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303886, 31.412388, 28.638226>,  <30.466015, 31.062613, 28.531586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303886, 31.412388, 28.638226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415284, -0.435924, 0.798442,
		0.814403, 0.212913, 0.539829,
		-0.405323, 0.874436, 0.266599,
		30.182289, 31.674719, 28.718204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648937, 31.182695, 29.238825>,  <30.466015, 31.062613, 28.531586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648937, 31.182695, 29.238825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320307, 31.404282, 29.184956>,  <30.123129, 31.537233, 29.152634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320307, 31.404282, 29.184956>,  <30.648937, 31.182695, 29.238825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320307, 31.404282, 29.184956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409449, -0.408984, 0.815527,
		0.396695, 0.725157, 0.562832,
		-0.821574, 0.553967, -0.134673,
		30.073835, 31.570471, 29.144554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501778, 31.360069, 29.947367>,  <30.648937, 31.182695, 29.238825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501778, 31.360069, 29.947367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191700, 31.421898, 29.702358>,  <30.005653, 31.458994, 29.555353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191700, 31.421898, 29.702358>,  <30.501778, 31.360069, 29.947367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191700, 31.421898, 29.702358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565456, -0.602087, 0.563694,
		-0.281659, 0.783326, 0.554138,
		-0.775195, 0.154571, -0.612520,
		29.959141, 31.468269, 29.518602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920200, 31.484879, 30.384623>,  <30.501778, 31.360069, 29.947367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920200, 31.484879, 30.384623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800165, 31.324558, 30.038372>,  <29.728144, 31.228367, 29.830622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800165, 31.324558, 30.038372>,  <29.920200, 31.484879, 30.384623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800165, 31.324558, 30.038372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514501, -0.696135, 0.500685,
		-0.803266, 0.595614, 0.002690,
		-0.300087, -0.400799, -0.865626,
		29.710138, 31.204319, 29.778685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168686, 31.429638, 30.331728>,  <29.920200, 31.484879, 30.384623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168686, 31.429638, 30.331728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321051, 31.138218, 30.104000>,  <29.412470, 30.963366, 29.967363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321051, 31.138218, 30.104000>,  <29.168686, 31.429638, 30.331728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321051, 31.138218, 30.104000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419741, -0.684888, 0.595605,
		-0.823846, 0.012093, -0.566684,
		0.380913, -0.728548, -0.569318,
		29.435324, 30.919653, 29.933205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595184, 30.915585, 30.198378>,  <29.168686, 31.429638, 30.331728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595184, 30.915585, 30.198378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936146, 30.711800, 30.151287>,  <29.140722, 30.589529, 30.123032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936146, 30.711800, 30.151287>,  <28.595184, 30.915585, 30.198378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936146, 30.711800, 30.151287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405817, -0.786550, 0.465459,
		-0.329733, -0.348982, -0.877205,
		0.852402, -0.509462, -0.117728,
		29.191866, 30.558962, 30.115969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438017, 30.244818, 30.050179>,  <28.595184, 30.915585, 30.198378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438017, 30.244818, 30.050179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821243, 30.206318, 30.158134>,  <29.051180, 30.183218, 30.222908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821243, 30.206318, 30.158134>,  <28.438017, 30.244818, 30.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821243, 30.206318, 30.158134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208137, -0.881122, 0.424622,
		0.196938, -0.462991, -0.864208,
		0.958068, -0.096250, 0.269892,
		29.108664, 30.177443, 30.239101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526201, 29.527639, 29.925970>,  <28.438017, 30.244818, 30.050179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526201, 29.527639, 29.925970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822750, 29.641933, 30.168861>,  <29.000679, 29.710510, 30.314596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822750, 29.641933, 30.168861>,  <28.526201, 29.527639, 29.925970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822750, 29.641933, 30.168861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182336, -0.785030, 0.592015,
		0.645851, -0.549621, -0.529899,
		0.741370, 0.285734, 0.607228,
		29.045160, 29.727654, 30.351030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067226, 29.027300, 29.875740>,  <28.526201, 29.527639, 29.925970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067226, 29.027300, 29.875740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090631, 29.205643, 30.233017>,  <29.104675, 29.312649, 30.447382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090631, 29.205643, 30.233017>,  <29.067226, 29.027300, 29.875740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090631, 29.205643, 30.233017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192845, -0.872822, 0.448321,
		0.979483, -0.198480, 0.034910,
		0.058513, 0.445855, 0.893191,
		29.108185, 29.339399, 30.500975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563484, 28.533844, 30.216335>,  <29.067226, 29.027300, 29.875740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563484, 28.533844, 30.216335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383572, 28.756744, 30.495525>,  <29.275625, 28.890484, 30.663040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383572, 28.756744, 30.495525>,  <29.563484, 28.533844, 30.216335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383572, 28.756744, 30.495525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007442, -0.779120, 0.626830,
		0.893108, 0.287130, 0.346286,
		-0.449780, 0.557250, 0.697976,
		29.248638, 28.923920, 30.704918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925816, 28.361597, 30.784317>,  <29.563484, 28.533844, 30.216335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925816, 28.361597, 30.784317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581390, 28.514751, 30.918163>,  <29.374735, 28.606644, 30.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581390, 28.514751, 30.918163>,  <29.925816, 28.361597, 30.784317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581390, 28.514751, 30.918163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121186, -0.793605, 0.596243,
		0.493845, 0.472853, 0.729745,
		-0.861064, 0.382886, 0.334614,
		29.323071, 28.629618, 31.018547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004160, 28.263693, 31.507179>,  <29.925816, 28.361597, 30.784317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004160, 28.263693, 31.507179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616972, 28.322723, 31.425934>,  <29.384659, 28.358141, 31.377186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616972, 28.322723, 31.425934>,  <30.004160, 28.263693, 31.507179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616972, 28.322723, 31.425934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233712, -0.825196, 0.514228,
		-0.091724, 0.545228, 0.833255,
		-0.967970, 0.147575, -0.203116,
		29.326580, 28.366995, 31.365000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615753, 28.084057, 32.078411>,  <30.004160, 28.263693, 31.507179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615753, 28.084057, 32.078411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385395, 28.038052, 31.754654>,  <29.247179, 28.010448, 31.560400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385395, 28.038052, 31.754654>,  <29.615753, 28.084057, 32.078411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385395, 28.038052, 31.754654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335412, -0.869650, 0.362225,
		-0.745548, 0.480084, 0.462252,
		-0.575897, -0.115011, -0.809392,
		29.212626, 28.003548, 31.511837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092043, 27.797222, 32.292057>,  <29.615753, 28.084057, 32.078411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092043, 27.797222, 32.292057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050949, 27.698647, 31.906578>,  <29.026293, 27.639502, 31.675291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050949, 27.698647, 31.906578>,  <29.092043, 27.797222, 32.292057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050949, 27.698647, 31.906578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337708, -0.902638, 0.266829,
		-0.935627, 0.352861, 0.009509,
		-0.102736, -0.246441, -0.963697,
		29.020128, 27.624714, 31.617470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490108, 27.541485, 32.301418>,  <29.092043, 27.797222, 32.292057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490108, 27.541485, 32.301418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661510, 27.422581, 31.960121>,  <28.764353, 27.351238, 31.755344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661510, 27.422581, 31.960121>,  <28.490108, 27.541485, 32.301418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661510, 27.422581, 31.960121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320720, -0.932879, 0.163938,
		-0.844701, 0.203403, -0.495082,
		0.428507, -0.297261, -0.853239,
		28.790062, 27.333403, 31.704149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921915, 27.236137, 31.853649>,  <28.490108, 27.541485, 32.301418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921915, 27.236137, 31.853649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283030, 27.109158, 31.737579>,  <28.499699, 27.032969, 31.667936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283030, 27.109158, 31.737579>,  <27.921915, 27.236137, 31.853649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283030, 27.109158, 31.737579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337653, -0.941036, -0.021004,
		-0.266398, 0.116941, -0.956743,
		0.902786, -0.317452, -0.290176,
		28.553865, 27.013922, 31.650526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867043, 26.685303, 31.240068>,  <27.921915, 27.236137, 31.853649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867043, 26.685303, 31.240068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225361, 26.608646, 31.400478>,  <28.440351, 26.562653, 31.496725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225361, 26.608646, 31.400478>,  <27.867043, 26.685303, 31.240068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225361, 26.608646, 31.400478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263665, -0.955491, 0.132357,
		0.357812, -0.224302, -0.906455,
		0.895797, -0.191642, 0.401026,
		28.494101, 26.551153, 31.520786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109318, 26.180069, 30.873495>,  <27.867043, 26.685303, 31.240068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109318, 26.180069, 30.873495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300356, 26.135517, 31.222092>,  <28.414980, 26.108786, 31.431250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300356, 26.135517, 31.222092>,  <28.109318, 26.180069, 30.873495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300356, 26.135517, 31.222092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210973, -0.977448, -0.009302,
		0.852873, -0.179419, -0.490323,
		0.477596, -0.111378, 0.871491,
		28.443634, 26.102104, 31.483540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410599, 25.530994, 30.823460>,  <28.109318, 26.180069, 30.873495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410599, 25.530994, 30.823460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411135, 25.604378, 31.216671>,  <28.411457, 25.648407, 31.452597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411135, 25.604378, 31.216671>,  <28.410599, 25.530994, 30.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411135, 25.604378, 31.216671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252664, -0.951070, 0.177839,
		0.967553, -0.248614, 0.045079,
		0.001340, 0.183458, 0.983027,
		28.411537, 25.659414, 31.511580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694731, 25.003597, 31.094841>,  <28.410599, 25.530994, 30.823460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694731, 25.003597, 31.094841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532125, 25.145390, 31.431671>,  <28.434563, 25.230465, 31.633770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532125, 25.145390, 31.431671>,  <28.694731, 25.003597, 31.094841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532125, 25.145390, 31.431671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206903, -0.933439, 0.293058,
		0.889909, -0.055096, 0.452797,
		-0.406512, 0.354480, 0.842076,
		28.410172, 25.251734, 31.684294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032927, 24.642500, 31.625368>,  <28.694731, 25.003597, 31.094841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032927, 24.642500, 31.625368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691372, 24.775379, 31.785629>,  <28.486439, 24.855106, 31.881786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691372, 24.775379, 31.785629>,  <29.032927, 24.642500, 31.625368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691372, 24.775379, 31.785629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157084, -0.898400, 0.410124,
		0.496189, 0.287264, 0.819314,
		-0.853886, 0.332200, 0.400652,
		28.435205, 24.875040, 31.905825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031891, 24.334023, 32.233360>,  <29.032927, 24.642500, 31.625368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031891, 24.334023, 32.233360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649773, 24.430462, 32.164913>,  <28.420502, 24.488325, 32.123844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649773, 24.430462, 32.164913>,  <29.031891, 24.334023, 32.233360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649773, 24.430462, 32.164913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295542, -0.794424, 0.530609,
		-0.008008, 0.557460, 0.830165,
		-0.955296, 0.241099, -0.171115,
		28.363184, 24.502792, 32.113579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713861, 24.025942, 32.762890>,  <29.031891, 24.334023, 32.233360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713861, 24.025942, 32.762890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403023, 24.097515, 32.521526>,  <28.216518, 24.140459, 32.376709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403023, 24.097515, 32.521526>,  <28.713861, 24.025942, 32.762890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403023, 24.097515, 32.521526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495312, -0.765382, 0.410921,
		-0.388309, 0.618201, 0.683406,
		-0.777098, 0.178935, -0.603408,
		28.169893, 24.151196, 32.340504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994728, 23.907413, 33.119743>,  <28.713861, 24.025942, 32.762890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994728, 23.907413, 33.119743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924662, 23.861225, 32.728645>,  <27.882622, 23.833513, 32.493988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924662, 23.861225, 32.728645>,  <27.994728, 23.907413, 33.119743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924662, 23.861225, 32.728645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675949, -0.707947, 0.204705,
		-0.715828, 0.696762, 0.045957,
		-0.175166, -0.115469, -0.977744,
		27.872112, 23.826584, 32.435322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262852, 23.814869, 33.021221>,  <27.994728, 23.907413, 33.119743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262852, 23.814869, 33.021221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402628, 23.676182, 32.673042>,  <27.486494, 23.592970, 32.464134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402628, 23.676182, 32.673042>,  <27.262852, 23.814869, 33.021221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402628, 23.676182, 32.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684854, -0.728521, 0.015252,
		-0.639427, 0.590799, -0.492026,
		0.349440, -0.346718, -0.870447,
		27.507460, 23.572166, 32.411907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664907, 23.704054, 32.633686>,  <27.262852, 23.814869, 33.021221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664907, 23.704054, 32.633686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973558, 23.485332, 32.503704>,  <27.158749, 23.354099, 32.425713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973558, 23.485332, 32.503704>,  <26.664907, 23.704054, 32.633686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973558, 23.485332, 32.503704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574883, -0.818153, 0.011606,
		-0.272211, 0.177857, -0.945658,
		0.771628, -0.546802, -0.324957,
		27.205048, 23.321291, 32.406216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312742, 23.123116, 32.293880>,  <26.664907, 23.704054, 32.633686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312742, 23.123116, 32.293880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683041, 22.976871, 32.332493>,  <26.905220, 22.889124, 32.355659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683041, 22.976871, 32.332493>,  <26.312742, 23.123116, 32.293880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683041, 22.976871, 32.332493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377357, -0.909655, 0.173580,
		0.024349, -0.197119, -0.980077,
		0.925748, -0.365612, 0.096534,
		26.960766, 22.867188, 32.361454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240585, 22.471855, 32.098392>,  <26.312742, 23.123116, 32.293880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240585, 22.471855, 32.098392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591507, 22.446362, 32.288666>,  <26.802059, 22.431067, 32.402828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591507, 22.446362, 32.288666>,  <26.240585, 22.471855, 32.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591507, 22.446362, 32.288666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185161, -0.959356, 0.212958,
		0.442777, -0.274907, -0.853449,
		0.877305, -0.063733, 0.475683,
		26.854698, 22.427242, 32.431370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543835, 21.879423, 31.845140>,  <26.240585, 22.471855, 32.098392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543835, 21.879423, 31.845140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685402, 21.963905, 32.209587>,  <26.770342, 22.014595, 32.428257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685402, 21.963905, 32.209587>,  <26.543835, 21.879423, 31.845140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685402, 21.963905, 32.209587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238427, -0.921609, 0.306252,
		0.904375, -0.325623, -0.275818,
		0.353919, 0.211204, 0.911117,
		26.791578, 22.027266, 32.482922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978941, 21.724024, 31.460932>,  <26.543835, 21.879423, 31.845140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978941, 21.724024, 31.460932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580608, 21.727001, 31.424572>,  <25.341608, 21.728788, 31.402756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580608, 21.727001, 31.424572>,  <25.978941, 21.724024, 31.460932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580608, 21.727001, 31.424572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057299, 0.826492, -0.560025,
		0.070959, -0.562900, -0.823474,
		-0.995832, 0.007445, -0.090901,
		25.281858, 21.729235, 31.397301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760649, 21.579315, 30.732611>,  <25.978941, 21.724024, 31.460932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760649, 21.579315, 30.732611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478170, 21.809330, 30.897835>,  <25.308683, 21.947338, 30.996969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478170, 21.809330, 30.897835>,  <25.760649, 21.579315, 30.732611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478170, 21.809330, 30.897835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135137, 0.682154, -0.718613,
		-0.694999, -0.451663, -0.559444,
		-0.706198, 0.575036, 0.413060,
		25.266312, 21.981840, 31.021753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732620, 22.075783, 30.217913>,  <25.760649, 21.579315, 30.732611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732620, 22.075783, 30.217913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475760, 22.244766, 30.473778>,  <25.321642, 22.346155, 30.627296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475760, 22.244766, 30.473778>,  <25.732620, 22.075783, 30.217913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475760, 22.244766, 30.473778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003770, 0.832692, -0.553724,
		-0.766567, -0.357987, -0.533123,
		-0.642154, 0.422457, 0.639663,
		25.283113, 22.371504, 30.665676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150972, 22.263987, 29.895794>,  <25.732620, 22.075783, 30.217913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150972, 22.263987, 29.895794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180693, 22.498650, 30.218361>,  <25.198524, 22.639448, 30.411901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180693, 22.498650, 30.218361>,  <25.150972, 22.263987, 29.895794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180693, 22.498650, 30.218361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061040, 0.804462, -0.590860,
		-0.995366, 0.093124, 0.023962,
		0.074300, 0.586660, 0.806418,
		25.202982, 22.674648, 30.460287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700890, 22.901569, 29.775124>,  <25.150972, 22.263987, 29.895794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700890, 22.901569, 29.775124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960836, 23.003616, 30.061504>,  <25.116804, 23.064844, 30.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960836, 23.003616, 30.061504>,  <24.700890, 22.901569, 29.775124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960836, 23.003616, 30.061504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210021, 0.845031, -0.491745,
		-0.730455, 0.469934, 0.495578,
		0.649866, 0.255116, 0.715954,
		25.155796, 23.080151, 30.276291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709995, 23.607641, 29.667961>,  <24.700890, 22.901569, 29.775124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709995, 23.607641, 29.667961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038778, 23.521893, 29.879028>,  <25.236048, 23.470444, 30.005669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038778, 23.521893, 29.879028>,  <24.709995, 23.607641, 29.667961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038778, 23.521893, 29.879028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416558, 0.858088, -0.300273,
		-0.388417, 0.466616, 0.794608,
		0.821956, -0.214369, 0.527669,
		25.285364, 23.457582, 30.037329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797571, 24.181114, 30.084864>,  <24.709995, 23.607641, 29.667961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797571, 24.181114, 30.084864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170218, 24.040337, 30.048588>,  <25.393806, 23.955870, 30.026823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170218, 24.040337, 30.048588>,  <24.797571, 24.181114, 30.084864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170218, 24.040337, 30.048588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320411, 0.913114, -0.252109,
		0.171536, 0.205812, 0.963440,
		0.931618, -0.351942, -0.090688,
		25.449703, 23.934753, 30.021381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138071, 24.740353, 30.221235>,  <24.797571, 24.181114, 30.084864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.138071, 24.740353, 30.221235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392921, 24.498554, 30.029964>,  <25.545832, 24.353476, 29.915201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392921, 24.498554, 30.029964>,  <25.138071, 24.740353, 30.221235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392921, 24.498554, 30.029964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504484, 0.796107, -0.334230,
		0.582722, -0.028287, 0.812179,
		0.637127, -0.604495, -0.478179,
		25.584059, 24.317205, 29.886511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756973, 24.893017, 30.458830>,  <25.138071, 24.740353, 30.221235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756973, 24.893017, 30.458830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805910, 24.734955, 30.094658>,  <25.835272, 24.640118, 29.876154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805910, 24.734955, 30.094658>,  <25.756973, 24.893017, 30.458830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805910, 24.734955, 30.094658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540113, 0.796099, -0.272955,
		0.832653, -0.458342, 0.310824,
		0.122340, -0.395156, -0.910431,
		25.842611, 24.616407, 29.821529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444881, 25.103251, 30.373430>,  <25.756973, 24.893017, 30.458830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444881, 25.103251, 30.373430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336128, 24.982632, 30.007885>,  <26.270876, 24.910261, 29.788557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336128, 24.982632, 30.007885>,  <26.444881, 25.103251, 30.373430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336128, 24.982632, 30.007885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488117, 0.775199, -0.401009,
		0.829350, -0.555101, -0.063576,
		-0.271884, -0.301545, -0.913865,
		26.254562, 24.892168, 29.733725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047026, 24.945969, 29.893942>,  <26.444881, 25.103251, 30.373430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047026, 24.945969, 29.893942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762217, 25.029171, 29.625687>,  <26.591331, 25.079092, 29.464733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762217, 25.029171, 29.625687>,  <27.047026, 24.945969, 29.893942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762217, 25.029171, 29.625687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617813, 0.639459, -0.457603,
		0.333662, -0.740152, -0.583819,
		-0.712024, 0.208006, -0.670638,
		26.548609, 25.091574, 29.424496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365942, 24.924200, 29.210972>,  <27.047026, 24.945969, 29.893942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365942, 24.924200, 29.210972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036417, 25.149345, 29.184078>,  <26.838701, 25.284431, 29.167942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036417, 25.149345, 29.184078>,  <27.365942, 24.924200, 29.210972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036417, 25.149345, 29.184078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559197, 0.787493, -0.259140,
		-0.092915, -0.251078, -0.963497,
		-0.823812, 0.562862, -0.067232,
		26.789274, 25.318205, 29.163908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547655, 25.327564, 28.711882>,  <27.365942, 24.924200, 29.210972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547655, 25.327564, 28.711882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239859, 25.480999, 28.916134>,  <27.055180, 25.573059, 29.038685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239859, 25.480999, 28.916134>,  <27.547655, 25.327564, 28.711882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239859, 25.480999, 28.916134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385998, 0.916313, -0.106657,
		-0.508809, 0.115030, -0.853160,
		-0.769493, 0.383586, 0.510630,
		27.009010, 25.596075, 29.069323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351290, 25.847908, 28.203131>,  <27.547655, 25.327564, 28.711882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351290, 25.847908, 28.203131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211367, 25.927132, 28.569389>,  <27.127413, 25.974665, 28.789145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211367, 25.927132, 28.569389>,  <27.351290, 25.847908, 28.203131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211367, 25.927132, 28.569389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371545, 0.926571, -0.058478,
		-0.859993, 0.319748, -0.397711,
		-0.349809, 0.198058, 0.915645,
		27.106424, 25.986549, 28.844084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199934, 26.558010, 28.269583>,  <27.351290, 25.847908, 28.203131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199934, 26.558010, 28.269583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233231, 26.451160, 28.653606>,  <27.253208, 26.387051, 28.884020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233231, 26.451160, 28.653606>,  <27.199934, 26.558010, 28.269583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233231, 26.451160, 28.653606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414325, 0.885465, 0.210446,
		-0.906314, 0.380258, 0.184386,
		0.083243, -0.267126, 0.960060,
		27.258204, 26.371023, 28.941624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887909, 27.030134, 28.539999>,  <27.199934, 26.558010, 28.269583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887909, 27.030134, 28.539999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125578, 26.905674, 28.836685>,  <27.268179, 26.830997, 29.014696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125578, 26.905674, 28.836685>,  <26.887909, 27.030134, 28.539999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125578, 26.905674, 28.836685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286913, 0.943474, 0.165947,
		-0.751424, 0.114206, 0.649861,
		0.594174, -0.311150, 0.741716,
		27.303831, 26.812328, 29.059200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675074, 27.318714, 29.129318>,  <26.887909, 27.030134, 28.539999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675074, 27.318714, 29.129318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063969, 27.239910, 29.179817>,  <27.297306, 27.192627, 29.210117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063969, 27.239910, 29.179817>,  <26.675074, 27.318714, 29.129318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063969, 27.239910, 29.179817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196690, 0.980349, 0.015121,
		-0.126747, 0.010130, 0.991883,
		0.972239, -0.197010, 0.126249,
		27.355640, 27.180807, 29.217691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981564, 27.828794, 29.546574>,  <26.675074, 27.318714, 29.129318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981564, 27.828794, 29.546574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308451, 27.659164, 29.390465>,  <27.504583, 27.557386, 29.296799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308451, 27.659164, 29.390465>,  <26.981564, 27.828794, 29.546574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308451, 27.659164, 29.390465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333275, 0.900201, -0.280295,
		0.470191, 0.098994, 0.876995,
		0.817220, -0.424073, -0.390274,
		27.553617, 27.531942, 29.273382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473894, 28.192368, 29.850550>,  <26.981564, 27.828794, 29.546574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473894, 28.192368, 29.850550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643311, 28.044846, 29.519588>,  <27.744961, 27.956333, 29.321011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643311, 28.044846, 29.519588>,  <27.473894, 28.192368, 29.850550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643311, 28.044846, 29.519588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472187, 0.869358, -0.145796,
		0.773080, -0.328940, 0.542352,
		0.423540, -0.368803, -0.827404,
		27.770372, 27.934204, 29.271368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110893, 28.444181, 29.914387>,  <27.473894, 28.192368, 29.850550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110893, 28.444181, 29.914387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079111, 28.310581, 29.538700>,  <28.060041, 28.230421, 29.313288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079111, 28.310581, 29.538700>,  <28.110893, 28.444181, 29.914387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079111, 28.310581, 29.538700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670613, 0.679202, -0.298268,
		0.737540, -0.653550, 0.170020,
		-0.079455, -0.334002, -0.939217,
		28.055275, 28.210381, 29.256935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822824, 28.387659, 29.529951>,  <28.110893, 28.444181, 29.914387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822824, 28.387659, 29.529951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556496, 28.415077, 29.232769>,  <28.396698, 28.431528, 29.054461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556496, 28.415077, 29.232769>,  <28.822824, 28.387659, 29.529951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556496, 28.415077, 29.232769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478453, 0.803302, -0.354667,
		0.572504, -0.591614, -0.567655,
		-0.665824, 0.068548, -0.742953,
		28.356749, 28.435642, 29.009884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178791, 28.411602, 28.843237>,  <28.822824, 28.387659, 29.529951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178791, 28.411602, 28.843237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813314, 28.570274, 28.807877>,  <28.594028, 28.665478, 28.786661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813314, 28.570274, 28.807877>,  <29.178791, 28.411602, 28.843237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813314, 28.570274, 28.807877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406410, 0.890944, -0.202609,
		-0.001612, -0.221048, -0.975262,
		-0.913689, 0.396683, -0.088400,
		28.539207, 28.689280, 28.781357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330999, 28.880486, 28.356745>,  <29.178791, 28.411602, 28.843237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330999, 28.880486, 28.356745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964350, 28.998062, 28.465111>,  <28.744360, 29.068609, 28.530130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964350, 28.998062, 28.465111>,  <29.330999, 28.880486, 28.356745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964350, 28.998062, 28.465111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122710, 0.851896, -0.509132,
		-0.380447, -0.433440, -0.816940,
		-0.916626, 0.293944, 0.270914,
		28.689362, 29.086245, 28.546385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191589, 29.303631, 27.826323>,  <29.330999, 28.880486, 28.356745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191589, 29.303631, 27.826323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921349, 29.400402, 28.104900>,  <28.759205, 29.458464, 28.272047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921349, 29.400402, 28.104900>,  <29.191589, 29.303631, 27.826323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921349, 29.400402, 28.104900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015070, 0.939901, -0.341115,
		-0.737115, -0.240953, -0.631351,
		-0.675600, 0.241927, 0.696446,
		28.718668, 29.472980, 28.313833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733250, 29.708216, 27.518389>,  <29.191589, 29.303631, 27.826323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733250, 29.708216, 27.518389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597124, 29.812202, 27.879852>,  <28.515448, 29.874594, 28.096731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597124, 29.812202, 27.879852>,  <28.733250, 29.708216, 27.518389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597124, 29.812202, 27.879852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207967, 0.916415, -0.341955,
		-0.917025, -0.304305, -0.257805,
		-0.340315, 0.259967, 0.903661,
		28.495029, 29.890192, 28.150951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047129, 29.903173, 27.469957>,  <28.733250, 29.708216, 27.518389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047129, 29.903173, 27.469957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243425, 30.097195, 27.759480>,  <28.361204, 30.213608, 27.933193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243425, 30.097195, 27.759480>,  <28.047129, 29.903173, 27.469957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243425, 30.097195, 27.759480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245000, 0.874016, -0.419607,
		-0.836150, 0.028586, 0.547755,
		0.490742, 0.485055, 0.723805,
		28.390648, 30.242712, 27.976622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542410, 30.368826, 27.671328>,  <28.047129, 29.903173, 27.469957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542410, 30.368826, 27.671328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889032, 30.519241, 27.802586>,  <28.097006, 30.609491, 27.881340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889032, 30.519241, 27.802586>,  <27.542410, 30.368826, 27.671328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889032, 30.519241, 27.802586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270696, 0.906512, -0.323974,
		-0.419294, 0.191913, 0.887334,
		0.866554, 0.376038, 0.328145,
		28.148998, 30.632053, 27.901030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349987, 30.982748, 27.867769>,  <27.542410, 30.368826, 27.671328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349987, 30.982748, 27.867769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745779, 31.026321, 27.829685>,  <27.983253, 31.052465, 27.806835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745779, 31.026321, 27.829685>,  <27.349987, 30.982748, 27.867769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745779, 31.026321, 27.829685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141215, 0.870277, -0.471885,
		0.031455, 0.480366, 0.876504,
		0.989479, 0.108932, -0.095209,
		28.042624, 31.059002, 27.801123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584833, 31.700754, 28.061279>,  <27.349987, 30.982748, 27.867769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584833, 31.700754, 28.061279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859884, 31.534874, 27.822887>,  <28.024914, 31.435345, 27.679852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859884, 31.534874, 27.822887>,  <27.584833, 31.700754, 28.061279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859884, 31.534874, 27.822887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042137, 0.842245, -0.537446,
		0.724841, 0.344449, 0.596625,
		0.687627, -0.414703, -0.595979,
		28.066172, 31.410463, 27.644094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202269, 32.171703, 28.017004>,  <27.584833, 31.700754, 28.061279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202269, 32.171703, 28.017004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186825, 31.939621, 27.691582>,  <28.177559, 31.800373, 27.496328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186825, 31.939621, 27.691582>,  <28.202269, 32.171703, 28.017004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186825, 31.939621, 27.691582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080857, 0.813308, -0.576188,
		0.995978, 0.043536, -0.078314,
		-0.038609, -0.580202, -0.813557,
		28.175241, 31.765560, 27.447515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592863, 32.639103, 27.398703>,  <28.202269, 32.171703, 28.017004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592863, 32.639103, 27.398703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449718, 32.326447, 27.194359>,  <28.363832, 32.138855, 27.071753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449718, 32.326447, 27.194359>,  <28.592863, 32.639103, 27.398703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449718, 32.326447, 27.194359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176499, 0.593850, -0.784978,
		0.916942, -0.190748, -0.350474,
		-0.357862, -0.781638, -0.510859,
		28.342360, 32.091957, 27.041101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861486, 32.777054, 26.793318>,  <28.592863, 32.639103, 27.398703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861486, 32.777054, 26.793318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575628, 32.505173, 26.727245>,  <28.404114, 32.342045, 26.687601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575628, 32.505173, 26.727245>,  <28.861486, 32.777054, 26.793318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575628, 32.505173, 26.727245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319790, 0.527504, -0.787066,
		0.622107, -0.509649, -0.594341,
		-0.714645, -0.679704, -0.165183,
		28.361235, 32.301262, 26.677691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914618, 32.570183, 26.060513>,  <28.861486, 32.777054, 26.793318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914618, 32.570183, 26.060513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537504, 32.474552, 26.153465>,  <28.311235, 32.417175, 26.209236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537504, 32.474552, 26.153465>,  <28.914618, 32.570183, 26.060513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537504, 32.474552, 26.153465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277840, 0.178119, -0.943969,
		0.184313, -0.954518, -0.234359,
		-0.942780, -0.239100, 0.232373,
		28.254669, 32.402832, 26.223179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729898, 32.341187, 25.435278>,  <28.914618, 32.570183, 26.060513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729898, 32.341187, 25.435278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384626, 32.379227, 25.633621>,  <28.177464, 32.402050, 25.752626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384626, 32.379227, 25.633621>,  <28.729898, 32.341187, 25.435278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384626, 32.379227, 25.633621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474677, 0.181811, -0.861177,
		-0.172047, -0.978724, -0.111795,
		-0.863181, 0.095097, 0.495858,
		28.125671, 32.407757, 25.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098719, 31.917135, 25.071421>,  <28.729898, 32.341187, 25.435278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098719, 31.917135, 25.071421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925173, 32.195095, 25.300812>,  <27.821045, 32.361870, 25.438446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925173, 32.195095, 25.300812>,  <28.098719, 31.917135, 25.071421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925173, 32.195095, 25.300812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585169, 0.266649, -0.765817,
		-0.685084, -0.667841, 0.290945,
		-0.433864, 0.694901, 0.573477,
		27.795013, 32.403564, 25.472855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330738, 31.901459, 25.039509>,  <28.098719, 31.917135, 25.071421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330738, 31.901459, 25.039509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425497, 32.277840, 25.136242>,  <27.482353, 32.503670, 25.194283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425497, 32.277840, 25.136242>,  <27.330738, 31.901459, 25.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425497, 32.277840, 25.136242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608778, 0.337763, -0.717848,
		-0.757145, 0.022835, 0.652848,
		0.236900, 0.940954, 0.241834,
		27.496567, 32.560127, 25.208792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685392, 32.158592, 24.943995>,  <27.330738, 31.901459, 25.039509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685392, 32.158592, 24.943995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904554, 32.493004, 24.955654>,  <27.036051, 32.693653, 24.962650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904554, 32.493004, 24.955654>,  <26.685392, 32.158592, 24.943995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904554, 32.493004, 24.955654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563296, 0.394474, -0.726008,
		-0.618466, 0.381364, 0.687068,
		0.547903, 0.836034, 0.029148,
		27.068926, 32.743813, 24.964399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178957, 32.753117, 24.971193>,  <26.685392, 32.158592, 24.943995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178957, 32.753117, 24.971193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538532, 32.852894, 24.827145>,  <26.754278, 32.912758, 24.740715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538532, 32.852894, 24.827145>,  <26.178957, 32.753117, 24.971193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538532, 32.852894, 24.827145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437927, 0.532839, -0.724087,
		0.011271, 0.808618, 0.588226,
		0.898940, 0.249439, -0.360121,
		26.808214, 32.927727, 24.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114014, 33.553185, 24.900560>,  <26.178957, 32.753117, 24.971193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114014, 33.553185, 24.900560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420101, 33.447727, 24.665638>,  <26.603754, 33.384453, 24.524685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420101, 33.447727, 24.665638>,  <26.114014, 33.553185, 24.900560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420101, 33.447727, 24.665638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323329, 0.631490, -0.704755,
		0.556684, 0.729185, 0.397984,
		0.765219, -0.263646, -0.587307,
		26.649668, 33.368633, 24.489447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457794, 34.166454, 24.707247>,  <26.114014, 33.553185, 24.900560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457794, 34.166454, 24.707247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583981, 33.901917, 24.435040>,  <26.659693, 33.743195, 24.271715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583981, 33.901917, 24.435040>,  <26.457794, 34.166454, 24.707247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583981, 33.901917, 24.435040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385541, 0.565956, -0.728733,
		0.867086, 0.492260, -0.076433,
		0.315468, -0.661342, -0.680519,
		26.678621, 33.703514, 24.230885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608435, 34.557701, 24.243660>,  <26.457794, 34.166454, 24.707247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608435, 34.557701, 24.243660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556370, 34.220463, 24.034950>,  <26.525131, 34.018120, 23.909725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556370, 34.220463, 24.034950>,  <26.608435, 34.557701, 24.243660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556370, 34.220463, 24.034950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381914, 0.528276, -0.758331,
		0.914986, 0.100566, -0.390752,
		-0.130162, -0.843096, -0.521773,
		26.517321, 33.967533, 23.878418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781334, 34.693832, 23.584099>,  <26.608435, 34.557701, 24.243660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781334, 34.693832, 23.584099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533411, 34.379951, 23.587746>,  <26.384657, 34.191624, 23.589933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533411, 34.379951, 23.587746>,  <26.781334, 34.693832, 23.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533411, 34.379951, 23.587746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524425, 0.405524, -0.748685,
		0.583799, -0.468818, -0.662864,
		-0.619804, -0.784703, 0.009115,
		26.347469, 34.144539, 23.590481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538349, 34.654400, 22.922682>,  <26.781334, 34.693832, 23.584099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538349, 34.654400, 22.922682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262255, 34.488335, 23.159733>,  <26.096598, 34.388695, 23.301964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262255, 34.488335, 23.159733>,  <26.538349, 34.654400, 22.922682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262255, 34.488335, 23.159733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719576, 0.479905, -0.501898,
		-0.076033, -0.772869, -0.629994,
		-0.690238, -0.415167, 0.592627,
		26.055183, 34.363785, 23.337521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773474, 35.020039, 22.988083>,  <26.538349, 34.654400, 22.922682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773474, 35.020039, 22.988083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435019, 34.883625, 22.824257>,  <25.231945, 34.801777, 22.725962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435019, 34.883625, 22.824257>,  <25.773474, 35.020039, 22.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435019, 34.883625, 22.824257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402304, -0.095348, 0.910527,
		-0.349574, 0.935202, -0.056523,
		-0.846138, -0.341036, -0.409567,
		25.181177, 34.781315, 22.701387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061100, 35.357311, 23.169363>,  <25.773474, 35.020039, 22.988083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061100, 35.357311, 23.169363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957115, 34.983383, 23.072590>,  <24.894724, 34.759026, 23.014526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957115, 34.983383, 23.072590>,  <25.061100, 35.357311, 23.169363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957115, 34.983383, 23.072590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578996, -0.049605, 0.813820,
		-0.772776, 0.351643, -0.528361,
		-0.259964, -0.934819, -0.241933,
		24.879126, 34.702938, 23.000010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266159, 35.237343, 23.084641>,  <25.061100, 35.357311, 23.169363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266159, 35.237343, 23.084641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536312, 34.983589, 23.235062>,  <24.698404, 34.831337, 23.325314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536312, 34.983589, 23.235062>,  <24.266159, 35.237343, 23.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.536312, 34.983589, 23.235062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282390, 0.248589, 0.926531,
		-0.681259, -0.731956, -0.011251,
		0.675383, -0.634385, 0.376051,
		24.738928, 34.793274, 23.347878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.308311, 34.804928, 23.663141>,  <24.266159, 35.237343, 23.084641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.308311, 34.804928, 23.663141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.909002, 34.806774, 23.639709>,  <23.669416, 34.807880, 23.625650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.909002, 34.806774, 23.639709>,  <24.308311, 34.804928, 23.663141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.909002, 34.806774, 23.639709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052001, 0.533630, -0.844118,
		0.027367, -0.845705, -0.532948,
		-0.998272, 0.004613, -0.058581,
		23.609520, 34.808159, 23.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119129, 34.384460, 23.053213>,  <24.308311, 34.804928, 23.663141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119129, 34.384460, 23.053213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.839630, 34.658413, 23.135860>,  <23.671930, 34.822784, 23.185450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.839630, 34.658413, 23.135860>,  <24.119129, 34.384460, 23.053213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.839630, 34.658413, 23.135860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100414, 0.379873, -0.919573,
		-0.708284, -0.621804, -0.334207,
		-0.698750, 0.684877, 0.206620,
		23.630005, 34.863876, 23.197847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.643332, 34.332504, 22.485224>,  <24.119129, 34.384460, 23.053213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.643332, 34.332504, 22.485224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.595240, 34.687958, 22.662258>,  <23.566385, 34.901230, 22.768478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.595240, 34.687958, 22.662258>,  <23.643332, 34.332504, 22.485224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.595240, 34.687958, 22.662258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041556, 0.449933, -0.892095,
		-0.991876, -0.088865, -0.091023,
		-0.120230, 0.888630, 0.442585,
		23.559170, 34.954548, 22.795034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.059284, 34.544209, 22.198544>,  <23.643332, 34.332504, 22.485224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.059284, 34.544209, 22.198544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290127, 34.851467, 22.309464>,  <23.428633, 35.035824, 22.376015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290127, 34.851467, 22.309464>,  <23.059284, 34.544209, 22.198544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.290127, 34.851467, 22.309464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082868, 0.392879, -0.915849,
		-0.812453, 0.505564, 0.290389,
		0.577108, 0.768148, 0.277300,
		23.463259, 35.081913, 22.392654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.577856, 35.197067, 22.041704>,  <23.059284, 34.544209, 22.198544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.577856, 35.197067, 22.041704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952213, 35.334457, 22.073025>,  <23.176826, 35.416893, 22.091816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952213, 35.334457, 22.073025>,  <22.577856, 35.197067, 22.041704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952213, 35.334457, 22.073025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161111, 0.614956, -0.771928,
		-0.313291, 0.709825, 0.630870,
		0.935891, 0.343479, 0.078299,
		23.232981, 35.437500, 22.096514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532309, 35.853191, 21.912359>,  <22.577856, 35.197067, 22.041704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532309, 35.853191, 21.912359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.931847, 35.847816, 21.893902>,  <23.171570, 35.844593, 21.882828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.931847, 35.847816, 21.893902>,  <22.532309, 35.853191, 21.912359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.931847, 35.847816, 21.893902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031509, 0.541854, -0.839882,
		0.036289, 0.840366, 0.540804,
		0.998845, -0.013438, -0.046142,
		23.231501, 35.843784, 21.880058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.755468, 36.573765, 21.828308>,  <22.532309, 35.853191, 21.912359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.755468, 36.573765, 21.828308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067295, 36.362377, 21.693851>,  <23.254391, 36.235546, 21.613176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067295, 36.362377, 21.693851>,  <22.755468, 36.573765, 21.828308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.067295, 36.362377, 21.693851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168325, 0.693734, -0.700285,
		0.603274, 0.489339, 0.629768,
		0.779568, -0.528470, -0.336144,
		23.301167, 36.203835, 21.593008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362610, 36.986679, 21.806257>,  <22.755468, 36.573765, 21.828308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362610, 36.986679, 21.806257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.425512, 36.696213, 21.538540>,  <23.463253, 36.521935, 21.377909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.425512, 36.696213, 21.538540>,  <23.362610, 36.986679, 21.806257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.425512, 36.696213, 21.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103303, 0.686105, -0.720131,
		0.982140, 0.044105, 0.182909,
		0.157256, -0.726165, -0.669295,
		23.472689, 36.478363, 21.337751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.835363, 37.304161, 21.278776>,  <23.362610, 36.986679, 21.806257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.835363, 37.304161, 21.278776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.702734, 36.990280, 21.069279>,  <23.623156, 36.801952, 20.943581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.702734, 36.990280, 21.069279>,  <23.835363, 37.304161, 21.278776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.702734, 36.990280, 21.069279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183468, 0.490919, -0.851668,
		0.925418, -0.378481, -0.018809,
		-0.331574, -0.784698, -0.523744,
		23.603262, 36.754871, 20.912155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.402512, 37.103077, 20.804262>,  <23.835363, 37.304161, 21.278776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.402512, 37.103077, 20.804262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049049, 36.974041, 20.668568>,  <23.836971, 36.896618, 20.587151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049049, 36.974041, 20.668568>,  <24.402512, 37.103077, 20.804262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.049049, 36.974041, 20.668568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159495, 0.473839, -0.866047,
		0.440121, -0.819398, -0.367261,
		-0.883660, -0.322589, -0.339237,
		23.783953, 36.877262, 20.566795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544601, 36.950401, 20.048571>,  <24.402512, 37.103077, 20.804262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544601, 36.950401, 20.048571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.146147, 36.975319, 20.073326>,  <23.907074, 36.990269, 20.088179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.146147, 36.975319, 20.073326>,  <24.544601, 36.950401, 20.048571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.146147, 36.975319, 20.073326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014287, 0.580390, -0.814213,
		-0.086643, -0.811952, -0.577258,
		-0.996137, 0.062298, 0.061887,
		23.847305, 36.994007, 20.091892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345327, 36.846264, 19.358704>,  <24.544601, 36.950401, 20.048571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345327, 36.846264, 19.358704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029902, 37.031479, 19.520576>,  <23.840647, 37.142609, 19.617701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029902, 37.031479, 19.520576>,  <24.345327, 36.846264, 19.358704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029902, 37.031479, 19.520576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161742, 0.478729, -0.862935,
		-0.593302, -0.745933, -0.302616,
		-0.788563, 0.463035, 0.404680,
		23.793333, 37.170391, 19.641981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928703, 36.881088, 18.797939>,  <24.345327, 36.846264, 19.358704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928703, 36.881088, 18.797939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.813608, 37.150280, 19.070499>,  <23.744551, 37.311794, 19.234035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.813608, 37.150280, 19.070499>,  <23.928703, 36.881088, 18.797939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.813608, 37.150280, 19.070499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228642, 0.642644, -0.731254,
		-0.930016, -0.366207, -0.031042,
		-0.287739, 0.672980, 0.681399,
		23.727287, 37.352173, 19.274920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216082, 37.066498, 18.699802>,  <23.928703, 36.881088, 18.797939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216082, 37.066498, 18.699802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.370483, 37.381008, 18.892784>,  <23.463125, 37.569714, 19.008574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.370483, 37.381008, 18.892784>,  <23.216082, 37.066498, 18.699802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.370483, 37.381008, 18.892784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417736, 0.615280, -0.668525,
		-0.822493, 0.056516, 0.565960,
		0.386006, 0.786280, 0.482455,
		23.486286, 37.616894, 19.037521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.730120, 37.534126, 18.656731>,  <23.216082, 37.066498, 18.699802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.730120, 37.534126, 18.656731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.043068, 37.768688, 18.740662>,  <23.230837, 37.909424, 18.791019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.043068, 37.768688, 18.740662>,  <22.730120, 37.534126, 18.656731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.043068, 37.768688, 18.740662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350012, 0.692644, -0.630663,
		-0.515159, 0.419970, 0.747152,
		0.782370, 0.586404, 0.209827,
		23.277779, 37.944611, 18.803610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.443998, 38.160824, 18.708229>,  <22.730120, 37.534126, 18.656731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.443998, 38.160824, 18.708229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.833683, 38.226639, 18.646473>,  <23.067493, 38.266129, 18.609419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.833683, 38.226639, 18.646473>,  <22.443998, 38.160824, 18.708229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.833683, 38.226639, 18.646473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225023, 0.658252, -0.718380,
		-0.016571, 0.734597, 0.678302,
		0.974213, 0.164538, -0.154393,
		23.125946, 38.276001, 18.600155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506943, 38.847988, 18.844097>,  <22.443998, 38.160824, 18.708229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506943, 38.847988, 18.844097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824532, 38.754364, 18.619659>,  <23.015085, 38.698189, 18.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824532, 38.754364, 18.619659>,  <22.506943, 38.847988, 18.844097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824532, 38.754364, 18.619659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334579, 0.602363, -0.724718,
		0.507607, 0.763136, 0.399949,
		0.793972, -0.234057, -0.561093,
		23.062723, 38.684147, 18.451332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.700468, 39.533634, 18.614429>,  <22.506943, 38.847988, 18.844097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.700468, 39.533634, 18.614429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920631, 39.297279, 18.378494>,  <23.052729, 39.155468, 18.236933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920631, 39.297279, 18.378494>,  <22.700468, 39.533634, 18.614429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920631, 39.297279, 18.378494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114681, 0.646277, -0.754437,
		0.826982, 0.482891, 0.287953,
		0.550408, -0.590883, -0.589838,
		23.085754, 39.120014, 18.201544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.227518, 39.985306, 18.241432>,  <22.700468, 39.533634, 18.614429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.227518, 39.985306, 18.241432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.140171, 39.653809, 18.035328>,  <23.087763, 39.454910, 17.911665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.140171, 39.653809, 18.035328>,  <23.227518, 39.985306, 18.241432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.140171, 39.653809, 18.035328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379926, 0.558544, -0.737350,
		0.898873, 0.034748, -0.436830,
		-0.218367, -0.828746, -0.515262,
		23.074661, 39.405186, 17.880749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.431326, 40.144634, 17.654844>,  <23.227518, 39.985306, 18.241432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.431326, 40.144634, 17.654844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.204441, 39.829880, 17.557617>,  <23.068310, 39.641026, 17.499281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.204441, 39.829880, 17.557617>,  <23.431326, 40.144634, 17.654844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.204441, 39.829880, 17.557617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425436, 0.532664, -0.731624,
		0.705178, -0.311575, -0.636903,
		-0.567211, -0.786886, -0.243068,
		23.034277, 39.593815, 17.484697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.502012, 39.976387, 16.849747>,  <23.431326, 40.144634, 17.654844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.502012, 39.976387, 16.849747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.159929, 39.821072, 16.987064>,  <22.954679, 39.727882, 17.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.159929, 39.821072, 16.987064>,  <23.502012, 39.976387, 16.849747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159929, 39.821072, 16.987064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509954, 0.512148, -0.691123,
		0.092537, -0.766118, -0.636003,
		-0.855210, -0.388287, 0.343292,
		22.903366, 39.704586, 17.090052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.134411, 39.716084, 16.310371>,  <23.502012, 39.976387, 16.849747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.134411, 39.716084, 16.310371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.864012, 39.784988, 16.596966>,  <22.701773, 39.826332, 16.768923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.864012, 39.784988, 16.596966>,  <23.134411, 39.716084, 16.310371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.864012, 39.784988, 16.596966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623445, 0.384671, -0.680695,
		-0.392868, -0.906838, -0.152642,
		-0.675997, 0.172260, 0.716488,
		22.661213, 39.836666, 16.811913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479134, 39.508030, 16.027704>,  <23.134411, 39.716084, 16.310371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479134, 39.508030, 16.027704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.413483, 39.799923, 16.293201>,  <22.374092, 39.975060, 16.452499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.413483, 39.799923, 16.293201>,  <22.479134, 39.508030, 16.027704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413483, 39.799923, 16.293201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421231, 0.556589, -0.716082,
		-0.891979, -0.397120, 0.216033,
		-0.164129, 0.729729, 0.663744,
		22.364244, 40.018841, 16.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.765785, 39.583103, 16.172485>,  <22.479134, 39.508030, 16.027704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.765785, 39.583103, 16.172485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981007, 39.919266, 16.198444>,  <22.110140, 40.120964, 16.214020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981007, 39.919266, 16.198444>,  <21.765785, 39.583103, 16.172485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981007, 39.919266, 16.198444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538907, 0.402180, -0.740156,
		-0.648133, 0.363271, 0.669297,
		0.538055, 0.840408, 0.064896,
		22.142424, 40.171387, 16.217913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353016, 40.202526, 16.154188>,  <21.765785, 39.583103, 16.172485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353016, 40.202526, 16.154188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.715099, 40.305794, 16.019165>,  <21.932350, 40.367756, 15.938151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.715099, 40.305794, 16.019165>,  <21.353016, 40.202526, 16.154188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.715099, 40.305794, 16.019165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424325, 0.505447, -0.751313,
		-0.023350, 0.823329, 0.567084,
		0.905209, 0.258171, -0.337557,
		21.986662, 40.383244, 15.917898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453501, 40.944271, 16.040897>,  <21.353016, 40.202526, 16.154188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453501, 40.944271, 16.040897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.703758, 40.747528, 15.798692>,  <21.853912, 40.629482, 15.653368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.703758, 40.747528, 15.798692>,  <21.453501, 40.944271, 16.040897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703758, 40.747528, 15.798692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382926, 0.482621, -0.787683,
		0.679660, 0.724677, 0.113606,
		0.625644, -0.491854, -0.605516,
		21.891451, 40.599972, 15.617037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343988, 41.299931, 16.622137>,  <21.453501, 40.944271, 16.040897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343988, 41.299931, 16.622137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431997, 41.689434, 16.598843>,  <21.484802, 41.923134, 16.584866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431997, 41.689434, 16.598843>,  <21.343988, 41.299931, 16.622137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431997, 41.689434, 16.598843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044495, -0.049620, -0.997777,
		-0.974479, 0.222125, 0.032409,
		0.220023, 0.973755, -0.058237,
		21.498005, 41.981560, 16.581371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.903679, 41.469284, 16.037025>,  <21.343988, 41.299931, 16.622137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.903679, 41.469284, 16.037025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.194441, 41.729702, 16.124428>,  <21.368898, 41.885952, 16.176868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.194441, 41.729702, 16.124428>,  <20.903679, 41.469284, 16.037025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.194441, 41.729702, 16.124428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149700, 0.160305, -0.975650,
		-0.670222, 0.741916, 0.019064,
		0.726906, 0.651048, 0.218505,
		21.412512, 41.925014, 16.189980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139374, 41.496025, 16.161747>,  <20.903679, 41.469284, 16.037025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139374, 41.496025, 16.161747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047148, 41.165291, 15.956544>,  <19.991812, 40.966850, 15.833422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047148, 41.165291, 15.956544>,  <20.139374, 41.496025, 16.161747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047148, 41.165291, 15.956544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310637, -0.437083, 0.844075,
		-0.922141, 0.353975, -0.156070,
		-0.230566, -0.826837, -0.513010,
		19.977978, 40.917240, 15.802641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344282, 41.331963, 16.197519>,  <20.139374, 41.496025, 16.161747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344282, 41.331963, 16.197519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571362, 41.005711, 16.152843>,  <19.707609, 40.809959, 16.126038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571362, 41.005711, 16.152843>,  <19.344282, 41.331963, 16.197519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571362, 41.005711, 16.152843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419424, -0.403297, 0.813287,
		-0.708381, -0.414856, -0.571043,
		0.567697, -0.815627, -0.111688,
		19.741671, 40.761024, 16.119337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941240, 40.711552, 16.226294>,  <19.344282, 41.331963, 16.197519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941240, 40.711552, 16.226294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.306257, 40.596294, 16.342388>,  <19.525267, 40.527138, 16.412045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.306257, 40.596294, 16.342388>,  <18.941240, 40.711552, 16.226294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306257, 40.596294, 16.342388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397295, -0.456135, 0.796302,
		-0.097065, -0.841969, -0.530722,
		0.912543, -0.288146, 0.290236,
		19.580021, 40.509850, 16.429459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697111, 40.484447, 16.806711>,  <18.941240, 40.711552, 16.226294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697111, 40.484447, 16.806711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089083, 40.404770, 16.809803>,  <19.324266, 40.356964, 16.811659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089083, 40.404770, 16.809803>,  <18.697111, 40.484447, 16.806711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089083, 40.404770, 16.809803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089401, -0.404482, 0.910166,
		-0.178173, -0.892590, -0.414172,
		0.979929, -0.199194, 0.007730,
		19.383062, 40.345013, 16.812122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847057, 40.159229, 17.419529>,  <18.697111, 40.484447, 16.806711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847057, 40.159229, 17.419529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242804, 40.147991, 17.362442>,  <19.480251, 40.141251, 17.328190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242804, 40.147991, 17.362442>,  <18.847057, 40.159229, 17.419529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242804, 40.147991, 17.362442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107962, -0.515704, 0.849938,
		-0.097477, -0.856306, -0.507186,
		0.989364, -0.028093, -0.142718,
		19.539614, 40.139565, 17.319626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.133682, 39.455128, 17.480356>,  <18.847057, 40.159229, 17.419529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.133682, 39.455128, 17.480356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464775, 39.677547, 17.510479>,  <19.663431, 39.810997, 17.528553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464775, 39.677547, 17.510479>,  <19.133682, 39.455128, 17.480356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464775, 39.677547, 17.510479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287132, -0.535030, 0.794543,
		0.482094, -0.636046, -0.602520,
		0.827732, 0.556047, 0.075305,
		19.713095, 39.844360, 17.533070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606642, 38.915787, 17.672005>,  <19.133682, 39.455128, 17.480356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606642, 38.915787, 17.672005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754232, 39.275085, 17.767517>,  <19.842787, 39.490665, 17.824825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754232, 39.275085, 17.767517>,  <19.606642, 38.915787, 17.672005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754232, 39.275085, 17.767517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216162, -0.332798, 0.917889,
		0.903953, -0.287062, -0.316960,
		0.368975, 0.898243, 0.238782,
		19.864925, 39.544559, 17.839151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148685, 38.738811, 18.070093>,  <19.606642, 38.915787, 17.672005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148685, 38.738811, 18.070093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094698, 39.122589, 18.169090>,  <20.062305, 39.352856, 18.228489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094698, 39.122589, 18.169090>,  <20.148685, 38.738811, 18.070093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094698, 39.122589, 18.169090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140418, -0.228739, 0.963307,
		0.980850, 0.164768, -0.103851,
		-0.134968, 0.959443, 0.247495,
		20.054207, 39.410423, 18.243340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650316, 38.845459, 18.538889>,  <20.148685, 38.738811, 18.070093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650316, 38.845459, 18.538889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373138, 39.129402, 18.589378>,  <20.206831, 39.299767, 18.619673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373138, 39.129402, 18.589378>,  <20.650316, 38.845459, 18.538889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373138, 39.129402, 18.589378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061628, -0.116113, 0.991322,
		0.718351, 0.694712, 0.036713,
		-0.692946, 0.709855, 0.126224,
		20.165255, 39.342358, 18.627245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972847, 39.261700, 18.936041>,  <20.650316, 38.845459, 18.538889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972847, 39.261700, 18.936041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.587629, 39.353317, 18.992725>,  <20.356499, 39.408287, 19.026735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.587629, 39.353317, 18.992725>,  <20.972847, 39.261700, 18.936041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.587629, 39.353317, 18.992725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141893, -0.015761, 0.989757,
		0.228935, 0.973288, -0.017322,
		-0.963045, 0.229048, 0.141711,
		20.298716, 39.422031, 19.035238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019815, 39.662773, 19.524843>,  <20.972847, 39.261700, 18.936041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019815, 39.662773, 19.524843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628845, 39.586716, 19.487999>,  <20.394262, 39.541080, 19.465893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628845, 39.586716, 19.487999>,  <21.019815, 39.662773, 19.524843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628845, 39.586716, 19.487999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033663, -0.290231, 0.956364,
		-0.208581, 0.937876, 0.277278,
		-0.977425, -0.190146, -0.092109,
		20.335617, 39.529671, 19.460367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598162, 39.999584, 20.079487>,  <21.019815, 39.662773, 19.524843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598162, 39.999584, 20.079487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398062, 39.682262, 19.940681>,  <20.278002, 39.491871, 19.857399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398062, 39.682262, 19.940681>,  <20.598162, 39.999584, 20.079487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.398062, 39.682262, 19.940681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013167, -0.393746, 0.919125,
		-0.865781, 0.464361, 0.186526,
		-0.500250, -0.793305, -0.347012,
		20.247988, 39.444271, 19.836578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053116, 39.904644, 20.522268>,  <20.598162, 39.999584, 20.079487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053116, 39.904644, 20.522268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.140650, 39.554756, 20.349308>,  <20.193171, 39.344822, 20.245531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.140650, 39.554756, 20.349308>,  <20.053116, 39.904644, 20.522268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140650, 39.554756, 20.349308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058776, -0.430521, 0.900665,
		-0.973990, -0.222511, -0.042800,
		0.218834, -0.874723, -0.432401,
		20.206301, 39.292339, 20.219587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.630772, 39.507263, 20.876516>,  <20.053116, 39.904644, 20.522268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.630772, 39.507263, 20.876516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.849937, 39.231499, 20.686993>,  <19.981438, 39.066040, 20.573278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.849937, 39.231499, 20.686993>,  <19.630772, 39.507263, 20.876516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849937, 39.231499, 20.686993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017056, -0.557073, 0.830289,
		-0.836361, -0.463007, -0.293469,
		0.547913, -0.689416, -0.473811,
		20.014311, 39.024673, 20.544849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392990, 38.835571, 21.147514>,  <19.630772, 39.507263, 20.876516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392990, 38.835571, 21.147514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757088, 38.781265, 20.991039>,  <19.975546, 38.748684, 20.897154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757088, 38.781265, 20.991039>,  <19.392990, 38.835571, 21.147514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757088, 38.781265, 20.991039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251303, -0.569725, 0.782470,
		-0.329098, -0.810544, -0.484471,
		0.910243, -0.135760, -0.391187,
		20.030161, 38.740536, 20.873682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531750, 38.139732, 21.227251>,  <19.392990, 38.835571, 21.147514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531750, 38.139732, 21.227251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.898430, 38.287811, 21.167095>,  <20.118437, 38.376659, 21.131001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.898430, 38.287811, 21.167095>,  <19.531750, 38.139732, 21.227251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.898430, 38.287811, 21.167095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344478, -0.541459, 0.766914,
		0.202478, -0.754836, -0.623879,
		0.916699, 0.370195, -0.150391,
		20.173439, 38.398869, 21.121979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927176, 37.629639, 21.474419>,  <19.531750, 38.139732, 21.227251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927176, 37.629639, 21.474419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193333, 37.924660, 21.428337>,  <20.353027, 38.101673, 21.400688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193333, 37.924660, 21.428337>,  <19.927176, 37.629639, 21.474419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193333, 37.924660, 21.428337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565956, -0.397798, 0.722115,
		0.486768, -0.545691, -0.682114,
		0.665395, 0.737549, -0.115202,
		20.392952, 38.145924, 21.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555500, 37.319897, 21.366356>,  <19.927176, 37.629639, 21.474419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555500, 37.319897, 21.366356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635208, 37.670738, 21.541164>,  <20.683033, 37.881241, 21.646049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635208, 37.670738, 21.541164>,  <20.555500, 37.319897, 21.366356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635208, 37.670738, 21.541164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613368, -0.459440, 0.642413,
		0.764246, 0.140043, -0.629537,
		0.199269, 0.877100, 0.437022,
		20.694988, 37.933868, 21.672272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313139, 37.378529, 21.479118>,  <20.555500, 37.319897, 21.366356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313139, 37.378529, 21.479118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127142, 37.617142, 21.740784>,  <21.015545, 37.760311, 21.897783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127142, 37.617142, 21.740784>,  <21.313139, 37.378529, 21.479118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127142, 37.617142, 21.740784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332992, -0.566800, 0.753561,
		0.820304, 0.568231, 0.064916,
		-0.464991, 0.596533, 0.654165,
		20.987644, 37.796101, 21.937033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.774099, 37.464539, 22.025677>,  <21.313139, 37.378529, 21.479118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.774099, 37.464539, 22.025677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427858, 37.589092, 22.182529>,  <21.220114, 37.663826, 22.276642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427858, 37.589092, 22.182529>,  <21.774099, 37.464539, 22.025677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.427858, 37.589092, 22.182529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314955, -0.270229, 0.909824,
		0.389272, 0.911052, 0.135839,
		-0.865604, 0.311386, 0.392133,
		21.168177, 37.682507, 22.300169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.949739, 37.928272, 22.593630>,  <21.774099, 37.464539, 22.025677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.949739, 37.928272, 22.593630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.582230, 37.781982, 22.653099>,  <21.361725, 37.694210, 22.688780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.582230, 37.781982, 22.653099>,  <21.949739, 37.928272, 22.593630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.582230, 37.781982, 22.653099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268911, -0.304040, 0.913918,
		-0.289038, 0.879663, 0.377691,
		-0.918773, -0.365722, 0.148672,
		21.306597, 37.672264, 22.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.855165, 37.995163, 23.329967>,  <21.949739, 37.928272, 22.593630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.855165, 37.995163, 23.329967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574806, 37.736584, 23.209408>,  <21.406591, 37.581436, 23.137072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574806, 37.736584, 23.209408>,  <21.855165, 37.995163, 23.329967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574806, 37.736584, 23.209408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052668, -0.468317, 0.881989,
		-0.711313, 0.602311, 0.362290,
		-0.700899, -0.646452, -0.301398,
		21.364536, 37.542648, 23.118988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.361326, 38.047344, 23.804951>,  <21.855165, 37.995163, 23.329967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.361326, 38.047344, 23.804951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.272806, 37.692272, 23.643433>,  <21.219694, 37.479229, 23.546522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.272806, 37.692272, 23.643433>,  <21.361326, 38.047344, 23.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.272806, 37.692272, 23.643433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033124, -0.420666, 0.906611,
		-0.974643, 0.187258, 0.122497,
		-0.221300, -0.887679, -0.403796,
		21.206417, 37.425968, 23.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931293, 37.665089, 24.235716>,  <21.361326, 38.047344, 23.804951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931293, 37.665089, 24.235716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.060289, 37.380505, 23.985973>,  <21.137686, 37.209755, 23.836128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.060289, 37.380505, 23.985973>,  <20.931293, 37.665089, 24.235716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.060289, 37.380505, 23.985973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076178, -0.637952, 0.766299,
		-0.943503, -0.294685, -0.151534,
		0.322488, -0.711462, -0.624358,
		21.157036, 37.167065, 23.798666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460854, 37.038315, 24.336042>,  <20.931293, 37.665089, 24.235716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460854, 37.038315, 24.336042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828114, 36.946018, 24.207195>,  <21.048470, 36.890640, 24.129887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828114, 36.946018, 24.207195>,  <20.460854, 37.038315, 24.336042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828114, 36.946018, 24.207195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134263, -0.583683, 0.800804,
		-0.372793, -0.778506, -0.504929,
		0.918150, -0.230741, -0.322117,
		21.103558, 36.876797, 24.110559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.511837, 36.376995, 24.613489>,  <20.460854, 37.038315, 24.336042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.511837, 36.376995, 24.613489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.899551, 36.454063, 24.552353>,  <21.132181, 36.500305, 24.515671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.899551, 36.454063, 24.552353>,  <20.511837, 36.376995, 24.613489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899551, 36.454063, 24.552353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242260, -0.641062, 0.728251,
		0.042332, -0.742912, -0.668049,
		0.969288, 0.192670, -0.152841,
		21.190338, 36.511864, 24.506500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735996, 36.385994, 24.587587>,  <20.511837, 36.376995, 24.613489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735996, 36.385994, 24.587587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645350, 36.356449, 24.199116>,  <19.590961, 36.338722, 23.966032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645350, 36.356449, 24.199116>,  <19.735996, 36.385994, 24.587587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645350, 36.356449, 24.199116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781905, -0.580748, 0.226617,
		-0.580748, 0.810726, 0.073858,
		-0.226617, -0.073858, -0.971179,
		19.577364, 36.334293, 23.907763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024071, 36.577171, 24.443306>,  <19.735996, 36.385994, 24.587587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024071, 36.577171, 24.443306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.115032, 36.329346, 24.142792>,  <19.169609, 36.180649, 23.962482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.115032, 36.329346, 24.142792>,  <19.024071, 36.577171, 24.443306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115032, 36.329346, 24.142792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860992, -0.488358, 0.142125,
		-0.454952, 0.614530, -0.644493,
		0.227403, -0.619564, -0.751285,
		19.183252, 36.143478, 23.917406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.438568, 36.556580, 23.921663>,  <19.024071, 36.577171, 24.443306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.438568, 36.556580, 23.921663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670650, 36.233353, 23.962437>,  <18.809900, 36.039417, 23.986900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670650, 36.233353, 23.962437>,  <18.438568, 36.556580, 23.921663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670650, 36.233353, 23.962437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791685, -0.530139, 0.303625,
		-0.191309, -0.256864, -0.947323,
		0.580204, -0.808068, 0.101935,
		18.844711, 35.990932, 23.993017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954710, 37.073116, 23.659035>,  <18.438568, 36.556580, 23.921663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954710, 37.073116, 23.659035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186966, 37.397488, 23.688000>,  <18.326321, 37.592110, 23.705379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186966, 37.397488, 23.688000>,  <17.954710, 37.073116, 23.659035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186966, 37.397488, 23.688000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329287, 0.315254, -0.890048,
		-0.744597, 0.492954, 0.450079,
		0.580642, 0.810932, 0.072414,
		18.361158, 37.640766, 23.709724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.001842, 23.864628, 25.846321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.372616, 23.834198, 25.993294>,  <29.595079, 23.815941, 26.081478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.372616, 23.834198, 25.993294>,  <29.001842, 23.864628, 25.846321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372616, 23.834198, 25.993294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185393, 0.944211, -0.272204,
		-0.326225, 0.320435, 0.889325,
		0.926934, -0.076075, 0.367432,
		29.650696, 23.811375, 26.103523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182730, 24.479990, 26.189970>,  <29.001842, 23.864628, 25.846321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182730, 24.479990, 26.189970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.542376, 24.321243, 26.116116>,  <29.758163, 24.225994, 26.071802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.542376, 24.321243, 26.116116>,  <29.182730, 24.479990, 26.189970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542376, 24.321243, 26.116116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306744, 0.872199, -0.381021,
		0.312254, 0.285945, 0.905943,
		0.899114, -0.396868, -0.184636,
		29.812109, 24.202183, 26.060724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664062, 24.959873, 26.426373>,  <29.182730, 24.479990, 26.189970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664062, 24.959873, 26.426373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.864838, 24.726112, 26.171333>,  <29.985302, 24.585855, 26.018311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.864838, 24.726112, 26.171333>,  <29.664062, 24.959873, 26.426373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864838, 24.726112, 26.171333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566580, 0.779163, -0.268127,
		0.653487, -0.226667, 0.722203,
		0.501938, -0.584403, -0.637598,
		30.015419, 24.550791, 25.980055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351860, 25.259371, 26.496632>,  <29.664062, 24.959873, 26.426373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351860, 25.259371, 26.496632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.387074, 25.043537, 26.161705>,  <30.408201, 24.914036, 25.960749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.387074, 25.043537, 26.161705>,  <30.351860, 25.259371, 26.496632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387074, 25.043537, 26.161705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374173, 0.796935, -0.474225,
		0.923171, -0.271552, 0.272056,
		0.088034, -0.539587, -0.837315,
		30.413485, 24.881660, 25.910511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993330, 25.299068, 26.168455>,  <30.351860, 25.259371, 26.496632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993330, 25.299068, 26.168455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.751854, 25.205132, 25.863716>,  <30.606968, 25.148769, 25.680874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.751854, 25.205132, 25.863716>,  <30.993330, 25.299068, 26.168455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751854, 25.205132, 25.863716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363573, 0.769365, -0.525254,
		0.709488, -0.594077, -0.379077,
		-0.603690, -0.234840, -0.761845,
		30.570747, 25.134680, 25.635162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457666, 25.207897, 25.670092>,  <30.993330, 25.299068, 26.168455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457666, 25.207897, 25.670092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.099232, 25.277870, 25.506908>,  <30.884171, 25.319853, 25.408998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.099232, 25.277870, 25.506908>,  <31.457666, 25.207897, 25.670092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099232, 25.277870, 25.506908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372128, 0.797072, -0.475601,
		0.241976, -0.577992, -0.779341,
		-0.896085, 0.174931, -0.407959,
		30.830406, 25.330349, 25.384521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606775, 25.517069, 25.026754>,  <31.457666, 25.207897, 25.670092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606775, 25.517069, 25.026754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.214409, 25.594845, 25.027096>,  <30.978989, 25.641510, 25.027300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.214409, 25.594845, 25.027096>,  <31.606775, 25.517069, 25.026754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214409, 25.594845, 25.027096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173613, 0.877805, -0.446449,
		-0.087557, -0.437780, -0.894809,
		-0.980914, 0.194440, 0.000853,
		30.920135, 25.653177, 25.027351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440327, 25.781452, 24.433609>,  <31.606775, 25.517069, 25.026754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440327, 25.781452, 24.433609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145460, 25.922279, 24.664307>,  <30.968540, 26.006775, 24.802725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145460, 25.922279, 24.664307>,  <31.440327, 25.781452, 24.433609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145460, 25.922279, 24.664307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155573, 0.919038, -0.362170,
		-0.657556, -0.177254, -0.732257,
		-0.737168, 0.352067, 0.576743,
		30.924311, 26.027899, 24.837330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161278, 26.469843, 24.098104>,  <31.440327, 25.781452, 24.433609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161278, 26.469843, 24.098104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.018433, 26.491463, 24.471104>,  <30.932726, 26.504435, 24.694902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.018433, 26.491463, 24.471104>,  <31.161278, 26.469843, 24.098104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018433, 26.491463, 24.471104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028798, 0.997212, -0.068831,
		-0.933618, -0.051435, -0.354558,
		-0.357110, 0.054052, 0.932497,
		30.911299, 26.507679, 24.750853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461617, 26.886337, 24.022694>,  <31.161278, 26.469843, 24.098104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461617, 26.886337, 24.022694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.625238, 26.900425, 24.387424>,  <30.723412, 26.908876, 24.606264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.625238, 26.900425, 24.387424>,  <30.461617, 26.886337, 24.022694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625238, 26.900425, 24.387424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002319, 0.999292, -0.037555,
		-0.912506, 0.013248, 0.408848,
		0.409056, 0.035217, 0.911830,
		30.747955, 26.910990, 24.660973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091492, 27.247156, 24.474020>,  <30.461617, 26.886337, 24.022694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091492, 27.247156, 24.474020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.466139, 27.289894, 24.607487>,  <30.690928, 27.315536, 24.687567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.466139, 27.289894, 24.607487>,  <30.091492, 27.247156, 24.474020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466139, 27.289894, 24.607487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057168, 0.986208, -0.155326,
		-0.345660, 0.126406, 0.929807,
		0.936617, 0.106845, 0.333667,
		30.747124, 27.321947, 24.707586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033308, 27.796230, 24.918602>,  <30.091492, 27.247156, 24.474020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033308, 27.796230, 24.918602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.429945, 27.760857, 24.880821>,  <30.667927, 27.739632, 24.858152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.429945, 27.760857, 24.880821>,  <30.033308, 27.796230, 24.918602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429945, 27.760857, 24.880821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092614, 0.994865, 0.040812,
		0.090359, -0.049216, 0.994692,
		0.991594, -0.088435, -0.094453,
		30.727423, 27.734325, 24.852486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234970, 28.311466, 25.291464>,  <30.033308, 27.796230, 24.918602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234970, 28.311466, 25.291464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.574417, 28.223667, 25.098938>,  <30.778086, 28.170988, 24.983421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.574417, 28.223667, 25.098938>,  <30.234970, 28.311466, 25.291464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574417, 28.223667, 25.098938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299108, 0.949545, 0.094334,
		0.436325, -0.224019, 0.871456,
		0.848619, -0.219499, -0.481316,
		30.829002, 28.157818, 24.954544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897289, 28.545908, 25.706221>,  <30.234970, 28.311466, 25.291464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897289, 28.545908, 25.706221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.974010, 28.523754, 25.314274>,  <31.020044, 28.510462, 25.079105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.974010, 28.523754, 25.314274>,  <30.897289, 28.545908, 25.706221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974010, 28.523754, 25.314274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365954, 0.930438, 0.019043,
		0.910653, -0.362240, 0.198730,
		0.191804, -0.055385, -0.979869,
		31.031551, 28.507139, 25.020313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196249, 29.242256, 25.613428>,  <30.897289, 28.545908, 25.706221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196249, 29.242256, 25.613428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.166126, 29.067036, 25.255112>,  <31.148052, 28.961903, 25.040123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.166126, 29.067036, 25.255112>,  <31.196249, 29.242256, 25.613428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166126, 29.067036, 25.255112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311155, 0.843163, -0.438475,
		0.947371, -0.311748, 0.072808,
		-0.075305, -0.438053, -0.895790,
		31.143536, 28.935619, 24.986374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926189, 29.341887, 25.160700>,  <31.196249, 29.242256, 25.613428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926189, 29.341887, 25.160700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619396, 29.300114, 24.907455>,  <31.435320, 29.275049, 24.755508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619396, 29.300114, 24.907455>,  <31.926189, 29.341887, 25.160700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619396, 29.300114, 24.907455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151993, 0.929019, -0.337375,
		0.623407, -0.354990, -0.696668,
		-0.766982, -0.104433, -0.633113,
		31.389301, 29.268784, 24.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122082, 29.662609, 24.661116>,  <31.926189, 29.341887, 25.160700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122082, 29.662609, 24.661116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.734291, 29.641830, 24.565266>,  <31.501617, 29.629364, 24.507755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.734291, 29.641830, 24.565266>,  <32.122082, 29.662609, 24.661116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734291, 29.641830, 24.565266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069214, 0.879576, -0.470696,
		0.235220, -0.472913, -0.849131,
		-0.969474, -0.051945, -0.239626,
		31.443449, 29.626247, 24.493378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957520, 29.828753, 23.896114>,  <32.122082, 29.662609, 24.661116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957520, 29.828753, 23.896114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616188, 29.931576, 24.077553>,  <31.411388, 29.993271, 24.186417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616188, 29.931576, 24.077553>,  <31.957520, 29.828753, 23.896114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616188, 29.931576, 24.077553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045156, 0.830296, -0.555491,
		-0.519414, -0.494499, -0.696907,
		-0.853329, 0.257060, 0.453597,
		31.360189, 30.008694, 24.213633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618353, 30.225508, 23.385704>,  <31.957520, 29.828753, 23.896114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618353, 30.225508, 23.385704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437984, 30.321140, 23.729683>,  <31.329763, 30.378521, 23.936069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437984, 30.321140, 23.729683>,  <31.618353, 30.225508, 23.385704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437984, 30.321140, 23.729683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270764, 0.881416, -0.387030,
		-0.850503, -0.407364, -0.332715,
		-0.450923, 0.239083, 0.859947,
		31.302708, 30.392866, 23.987667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942419, 30.366615, 23.178993>,  <31.618353, 30.225508, 23.385704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942419, 30.366615, 23.178993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.023247, 30.547073, 23.526703>,  <31.071743, 30.655348, 23.735329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.023247, 30.547073, 23.526703>,  <30.942419, 30.366615, 23.178993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023247, 30.547073, 23.526703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371485, 0.856562, -0.358192,
		-0.906183, -0.250543, 0.340678,
		0.202069, 0.451144, 0.869274,
		31.083868, 30.682417, 23.787485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491972, 30.971855, 23.140192>,  <30.942419, 30.366615, 23.178993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491972, 30.971855, 23.140192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705526, 31.078556, 23.461143>,  <30.833658, 31.142576, 23.653713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705526, 31.078556, 23.461143>,  <30.491972, 30.971855, 23.140192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705526, 31.078556, 23.461143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232520, 0.958666, -0.163996,
		-0.812958, -0.099014, 0.573843,
		0.533886, 0.266752, 0.802378,
		30.865692, 31.158581, 23.701857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077095, 31.514788, 23.498610>,  <30.491972, 30.971855, 23.140192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077095, 31.514788, 23.498610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.445967, 31.545353, 23.650265>,  <30.667290, 31.563692, 23.741259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.445967, 31.545353, 23.650265>,  <30.077095, 31.514788, 23.498610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445967, 31.545353, 23.650265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098037, 0.994456, 0.038025,
		-0.374132, -0.072236, 0.924558,
		0.922179, 0.076414, 0.379140,
		30.722620, 31.568277, 23.764008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208488, 32.104301, 23.052864>,  <30.077095, 31.514788, 23.498610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208488, 32.104301, 23.052864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.832485, 32.240276, 23.041348>,  <29.606884, 32.321861, 23.034437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.832485, 32.240276, 23.041348>,  <30.208488, 32.104301, 23.052864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832485, 32.240276, 23.041348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287748, -0.744698, 0.602185,
		0.183263, 0.574343, 0.797837,
		-0.940008, 0.339934, -0.028791,
		29.550482, 32.342258, 23.032711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916136, 32.163727, 23.740540>,  <30.208488, 32.104301, 23.052864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916136, 32.163727, 23.740540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.598112, 32.140209, 23.499069>,  <29.407299, 32.126099, 23.354187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.598112, 32.140209, 23.499069>,  <29.916136, 32.163727, 23.740540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598112, 32.140209, 23.499069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344265, -0.775687, 0.528953,
		-0.499365, 0.628374, 0.596474,
		-0.795057, -0.058795, -0.603678,
		29.359594, 32.122570, 23.317966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374620, 32.040146, 24.129707>,  <29.916136, 32.163727, 23.740540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374620, 32.040146, 24.129707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.236536, 31.915958, 23.775433>,  <29.153687, 31.841446, 23.562868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.236536, 31.915958, 23.775433>,  <29.374620, 32.040146, 24.129707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236536, 31.915958, 23.775433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481248, -0.751632, 0.451053,
		-0.805748, 0.581943, 0.110058,
		-0.345210, -0.310469, -0.885685,
		29.132973, 31.822817, 23.509727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598738, 31.956659, 24.197126>,  <29.374620, 32.040146, 24.129707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598738, 31.956659, 24.197126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.713896, 31.745510, 23.877510>,  <28.782990, 31.618820, 23.685740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.713896, 31.745510, 23.877510>,  <28.598738, 31.956659, 24.197126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713896, 31.745510, 23.877510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341891, -0.836036, 0.429131,
		-0.894554, 0.149642, -0.421165,
		0.287893, -0.527874, -0.799041,
		28.800264, 31.587149, 23.637798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982050, 31.519966, 24.092157>,  <28.598738, 31.956659, 24.197126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982050, 31.519966, 24.092157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.296310, 31.362991, 23.900848>,  <28.484867, 31.268806, 23.786062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.296310, 31.362991, 23.900848>,  <27.982050, 31.519966, 24.092157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296310, 31.362991, 23.900848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279096, -0.914755, 0.292111,
		-0.552137, -0.096014, -0.828207,
		0.785653, -0.392435, -0.478273,
		28.532005, 31.245260, 23.757366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690653, 30.916182, 23.735889>,  <27.982050, 31.519966, 24.092157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690653, 30.916182, 23.735889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.086908, 30.863266, 23.749374>,  <28.324661, 30.831516, 23.757465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.086908, 30.863266, 23.749374>,  <27.690653, 30.916182, 23.735889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086908, 30.863266, 23.749374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134480, -0.988128, 0.074289,
		0.023483, -0.078127, -0.996667,
		0.990638, -0.132287, 0.033711,
		28.384100, 30.823580, 23.759487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789696, 30.340050, 23.351961>,  <27.690653, 30.916182, 23.735889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789696, 30.340050, 23.351961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.117958, 30.342205, 23.580521>,  <28.314915, 30.343498, 23.717657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.117958, 30.342205, 23.580521>,  <27.789696, 30.340050, 23.351961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117958, 30.342205, 23.580521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102612, -0.982311, 0.156636,
		0.562137, -0.187177, -0.805585,
		0.820654, 0.005388, 0.571400,
		28.364155, 30.343822, 23.751940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328241, 29.972486, 23.034201>,  <27.789696, 30.340050, 23.351961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328241, 29.972486, 23.034201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.441479, 29.961555, 23.417683>,  <28.509420, 29.954998, 23.647772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.441479, 29.961555, 23.417683>,  <28.328241, 29.972486, 23.034201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441479, 29.961555, 23.417683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219822, -0.974833, 0.037125,
		0.933562, -0.221254, -0.281974,
		0.283092, -0.027325, 0.958703,
		28.526407, 29.953358, 23.705294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762995, 29.324148, 23.160795>,  <28.328241, 29.972486, 23.034201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762995, 29.324148, 23.160795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.664324, 29.444981, 23.529121>,  <28.605122, 29.517479, 23.750116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.664324, 29.444981, 23.529121>,  <28.762995, 29.324148, 23.160795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664324, 29.444981, 23.529121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118269, -0.952458, 0.280777,
		0.961853, -0.039642, 0.270679,
		-0.246679, 0.302079, 0.920813,
		28.590321, 29.535604, 23.805365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105743, 28.968723, 23.577253>,  <28.762995, 29.324148, 23.160795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105743, 28.968723, 23.577253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.819023, 29.079403, 23.833263>,  <28.646990, 29.145811, 23.986870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.819023, 29.079403, 23.833263>,  <29.105743, 28.968723, 23.577253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819023, 29.079403, 23.833263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080579, -0.944615, 0.318135,
		0.692605, 0.176467, 0.699399,
		-0.716803, 0.276699, 0.640025,
		28.603983, 29.162413, 24.025270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329647, 28.639910, 24.141392>,  <29.105743, 28.968723, 23.577253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329647, 28.639910, 24.141392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.941751, 28.731384, 24.175591>,  <28.709015, 28.786268, 24.196110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.941751, 28.731384, 24.175591>,  <29.329647, 28.639910, 24.141392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941751, 28.731384, 24.175591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175716, -0.896869, 0.405894,
		0.169503, 0.378588, 0.909912,
		-0.969738, 0.228687, 0.085498,
		28.650829, 28.799990, 24.201241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155151, 28.461344, 24.822218>,  <29.329647, 28.639910, 24.141392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155151, 28.461344, 24.822218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.795160, 28.485695, 24.649551>,  <28.579166, 28.500305, 24.545952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.795160, 28.485695, 24.649551>,  <29.155151, 28.461344, 24.822218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795160, 28.485695, 24.649551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288701, -0.825169, 0.485538,
		-0.326641, 0.561596, 0.760208,
		-0.899976, 0.060876, -0.431667,
		28.525167, 28.503958, 24.520052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670349, 28.310913, 25.296137>,  <29.155151, 28.461344, 24.822218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670349, 28.310913, 25.296137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476528, 28.250557, 24.951477>,  <28.360235, 28.214344, 24.744680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476528, 28.250557, 24.951477>,  <28.670349, 28.310913, 25.296137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476528, 28.250557, 24.951477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480666, -0.777057, 0.406379,
		-0.730869, 0.611078, 0.303997,
		-0.484552, -0.150889, -0.861651,
		28.331163, 28.205290, 24.692982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096350, 28.023279, 25.516357>,  <28.670349, 28.310913, 25.296137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096350, 28.023279, 25.516357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.084047, 27.911182, 25.132584>,  <28.076666, 27.843924, 24.902319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.084047, 27.911182, 25.132584>,  <28.096350, 28.023279, 25.516357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084047, 27.911182, 25.132584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446116, -0.855128, 0.264076,
		-0.894447, 0.436141, -0.098723,
		-0.030754, -0.280244, -0.959436,
		28.074821, 27.827110, 24.844753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396402, 27.712484, 25.384153>,  <28.096350, 28.023279, 25.516357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396402, 27.712484, 25.384153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.654451, 27.574932, 25.111225>,  <27.809280, 27.492401, 24.947468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.654451, 27.574932, 25.111225>,  <27.396402, 27.712484, 25.384153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654451, 27.574932, 25.111225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324641, -0.931748, 0.162647,
		-0.691683, 0.116583, -0.712729,
		0.645122, -0.343881, -0.682322,
		27.847988, 27.471767, 24.906528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076096, 27.261801, 24.860994>,  <27.396402, 27.712484, 25.384153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076096, 27.261801, 24.860994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.463820, 27.164143, 24.849483>,  <27.696455, 27.105547, 24.842577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.463820, 27.164143, 24.849483>,  <27.076096, 27.261801, 24.860994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463820, 27.164143, 24.849483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239977, -0.965106, 0.104793,
		-0.053356, -0.094671, -0.994078,
		0.969311, -0.244147, -0.028775,
		27.754612, 27.090899, 24.840851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093069, 26.626064, 24.607048>,  <27.076096, 27.261801, 24.860994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093069, 26.626064, 24.607048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.462212, 26.625065, 24.761105>,  <27.683697, 26.624466, 24.853539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.462212, 26.625065, 24.761105>,  <27.093069, 26.626064, 24.607048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462212, 26.625065, 24.761105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017984, -0.999168, 0.036610,
		0.384728, -0.040712, -0.922132,
		0.922855, -0.002498, 0.385140,
		27.739067, 26.624315, 24.876646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438435, 26.025532, 24.229427>,  <27.093069, 26.626064, 24.607048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438435, 26.025532, 24.229427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.595974, 26.083096, 24.592564>,  <27.690498, 26.117634, 24.810446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.595974, 26.083096, 24.592564>,  <27.438435, 26.025532, 24.229427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595974, 26.083096, 24.592564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069197, -0.989507, 0.126837,
		0.916567, 0.012865, -0.399674,
		0.393848, 0.143911, 0.907840,
		27.714128, 26.126268, 24.864916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.083441, 25.415155, 24.417118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989584, 25.581314, 24.768661>,  <27.933270, 25.681009, 24.979588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989584, 25.581314, 24.768661>,  <28.083441, 25.415155, 24.417118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989584, 25.581314, 24.768661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151882, -0.908660, 0.388933,
		0.960143, -0.042222, 0.276302,
		-0.234643, 0.415397, 0.878856,
		27.919191, 25.705933, 25.032318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407816, 24.992609, 24.921038>,  <28.083441, 25.415155, 24.417118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407816, 24.992609, 24.921038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164213, 25.200314, 25.160866>,  <28.018051, 25.324936, 25.304762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164213, 25.200314, 25.160866>,  <28.407816, 24.992609, 24.921038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164213, 25.200314, 25.160866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121370, -0.808024, 0.576513,
		0.783825, 0.278330, 0.555113,
		-0.609006, 0.519259, 0.599568,
		27.981512, 25.356091, 25.340736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623688, 24.920324, 25.578976>,  <28.407816, 24.992609, 24.921038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623688, 24.920324, 25.578976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230921, 24.995514, 25.587971>,  <27.995260, 25.040628, 25.593369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230921, 24.995514, 25.587971>,  <28.623688, 24.920324, 25.578976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230921, 24.995514, 25.587971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133728, -0.772772, 0.620436,
		0.134006, 0.606208, 0.783935,
		-0.981916, 0.187976, 0.022489,
		27.936346, 25.051907, 25.594717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359171, 24.794107, 26.228189>,  <28.623688, 24.920324, 25.578976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359171, 24.794107, 26.228189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.988667, 24.812481, 26.078560>,  <27.766363, 24.823505, 25.988783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.988667, 24.812481, 26.078560>,  <28.359171, 24.794107, 26.228189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988667, 24.812481, 26.078560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272411, -0.767503, 0.580285,
		-0.260448, 0.639397, 0.723421,
		-0.926261, 0.045933, -0.374073,
		27.710789, 24.826262, 25.966337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922192, 24.826883, 26.852795>,  <28.359171, 24.794107, 26.228189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922192, 24.826883, 26.852795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.723972, 24.681137, 26.537411>,  <27.605042, 24.593689, 26.348181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.723972, 24.681137, 26.537411>,  <27.922192, 24.826883, 26.852795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723972, 24.681137, 26.537411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444728, -0.673302, 0.590662,
		-0.746089, 0.643351, 0.171610,
		-0.495549, -0.364367, -0.788459,
		27.575308, 24.571827, 26.300873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149035, 24.727417, 26.987177>,  <27.922192, 24.826883, 26.852795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149035, 24.727417, 26.987177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.229635, 24.471317, 26.690670>,  <27.277996, 24.317657, 26.512766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.229635, 24.471317, 26.690670>,  <27.149035, 24.727417, 26.987177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229635, 24.471317, 26.690670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433870, -0.736839, 0.518483,
		-0.878154, 0.217141, -0.426258,
		0.201500, -0.640248, -0.741269,
		27.290085, 24.279243, 26.468288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598154, 24.342316, 27.056105>,  <27.149035, 24.727417, 26.987177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598154, 24.342316, 27.056105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.834913, 24.131546, 26.812134>,  <26.976969, 24.005085, 26.665751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.834913, 24.131546, 26.812134>,  <26.598154, 24.342316, 27.056105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834913, 24.131546, 26.812134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464469, -0.841424, 0.276178,
		-0.658732, 0.119824, -0.742775,
		0.591896, -0.526923, -0.609927,
		27.012482, 23.973469, 26.629156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176338, 23.848097, 26.761415>,  <26.598154, 24.342316, 27.056105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176338, 23.848097, 26.761415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547758, 23.706562, 26.716530>,  <26.770611, 23.621641, 26.689598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547758, 23.706562, 26.716530>,  <26.176338, 23.848097, 26.761415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547758, 23.706562, 26.716530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314517, -0.910501, 0.268452,
		-0.197161, -0.213977, -0.956735,
		0.928550, -0.353838, -0.112216,
		26.826323, 23.600410, 26.682865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018744, 23.227974, 26.453821>,  <26.176338, 23.848097, 26.761415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018744, 23.227974, 26.453821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.386099, 23.184261, 26.605938>,  <26.606512, 23.158033, 26.697208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.386099, 23.184261, 26.605938>,  <26.018744, 23.227974, 26.453821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386099, 23.184261, 26.605938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280762, -0.857209, 0.431701,
		0.278815, -0.503241, -0.817931,
		0.918387, -0.109279, 0.380293,
		26.661615, 23.151478, 26.720026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312757, 22.714664, 26.270302>,  <26.018744, 23.227974, 26.453821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312757, 22.714664, 26.270302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.535017, 22.747124, 26.601280>,  <26.668373, 22.766600, 26.799868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.535017, 22.747124, 26.601280>,  <26.312757, 22.714664, 26.270302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535017, 22.747124, 26.601280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201412, -0.952444, 0.228656,
		0.806653, -0.293710, -0.512880,
		0.555648, 0.081146, 0.827448,
		26.701712, 22.771467, 26.849514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453514, 22.045404, 26.401749>,  <26.312757, 22.714664, 26.270302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453514, 22.045404, 26.401749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.537628, 22.230690, 26.746124>,  <26.588097, 22.341862, 26.952749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.537628, 22.230690, 26.746124>,  <26.453514, 22.045404, 26.401749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537628, 22.230690, 26.746124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316668, -0.800880, 0.508244,
		0.924934, -0.379507, -0.021728,
		0.210284, 0.463212, 0.860939,
		26.600714, 22.369654, 27.004406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828329, 21.586924, 26.813744>,  <26.453514, 22.045404, 26.401749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828329, 21.586924, 26.813744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.700563, 21.838345, 27.097404>,  <26.623903, 21.989197, 27.267601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.700563, 21.838345, 27.097404>,  <26.828329, 21.586924, 26.813744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700563, 21.838345, 27.097404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196700, -0.776034, 0.599234,
		0.926976, 0.051913, 0.371512,
		-0.319414, 0.628551, 0.709153,
		26.604740, 22.026911, 27.310150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201475, 21.395689, 27.392687>,  <26.828329, 21.586924, 26.813744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201475, 21.395689, 27.392687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.873142, 21.585560, 27.519756>,  <26.676142, 21.699482, 27.595997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.873142, 21.585560, 27.519756>,  <27.201475, 21.395689, 27.392687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873142, 21.585560, 27.519756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174593, -0.738079, 0.651734,
		0.543831, 0.479500, 0.688715,
		-0.820832, 0.474678, 0.317672,
		26.626892, 21.727962, 27.615059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183035, 21.462425, 28.224323>,  <27.201475, 21.395689, 27.392687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183035, 21.462425, 28.224323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.802156, 21.522987, 28.118191>,  <26.573629, 21.559324, 28.054512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.802156, 21.522987, 28.118191>,  <27.183035, 21.462425, 28.224323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802156, 21.522987, 28.118191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296793, -0.664242, 0.686073,
		-0.072367, 0.732023, 0.677425,
		-0.952196, 0.151406, -0.265329,
		26.516499, 21.568409, 28.038591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795053, 21.286026, 28.815849>,  <27.183035, 21.462425, 28.224323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795053, 21.286026, 28.815849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.490643, 21.323345, 28.559059>,  <26.307995, 21.345736, 28.404985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.490643, 21.323345, 28.559059>,  <26.795053, 21.286026, 28.815849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490643, 21.323345, 28.559059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539884, -0.639750, 0.547033,
		-0.359667, 0.762900, 0.537237,
		-0.761029, 0.093296, -0.641974,
		26.262333, 21.351334, 28.366467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207956, 21.614082, 29.212595>,  <26.795053, 21.286026, 28.815849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207956, 21.614082, 29.212595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.070511, 21.408119, 28.898449>,  <25.988043, 21.284542, 28.709961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.070511, 21.408119, 28.898449>,  <26.207956, 21.614082, 29.212595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070511, 21.408119, 28.898449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580188, -0.541201, 0.608673,
		-0.738451, 0.664809, -0.112779,
		-0.343615, -0.514909, -0.785365,
		25.967426, 21.253647, 28.662840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464199, 21.593498, 29.263762>,  <26.207956, 21.614082, 29.212595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464199, 21.593498, 29.263762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.513618, 21.295277, 29.001804>,  <25.543270, 21.116344, 28.844629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.513618, 21.295277, 29.001804>,  <25.464199, 21.593498, 29.263762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513618, 21.295277, 29.001804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534355, -0.606082, 0.589177,
		-0.836182, 0.277152, -0.473272,
		0.123550, -0.745554, -0.654893,
		25.550684, 21.071609, 28.805336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820347, 21.289940, 29.217157>,  <25.464199, 21.593498, 29.263762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820347, 21.289940, 29.217157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.059690, 21.010685, 29.059898>,  <25.203297, 20.843132, 28.965542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.059690, 21.010685, 29.059898>,  <24.820347, 21.289940, 29.217157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059690, 21.010685, 29.059898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477523, -0.704749, 0.524692,
		-0.643379, -0.126217, -0.755072,
		0.598361, -0.698139, -0.393148,
		25.239199, 20.801243, 28.941954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384604, 20.802359, 28.903345>,  <24.820347, 21.289940, 29.217157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384604, 20.802359, 28.903345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.736647, 20.638847, 28.999935>,  <24.947872, 20.540741, 29.057888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.736647, 20.638847, 28.999935>,  <24.384604, 20.802359, 28.903345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736647, 20.638847, 28.999935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474592, -0.743438, 0.471236,
		-0.013110, -0.529340, -0.848308,
		0.880109, -0.408778, 0.241474,
		25.000679, 20.516214, 29.072378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.288580, 20.134493, 28.733381>,  <24.384604, 20.802359, 28.903345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.288580, 20.134493, 28.733381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.610371, 20.123634, 28.970726>,  <24.803446, 20.117119, 29.113132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.610371, 20.123634, 28.970726>,  <24.288580, 20.134493, 28.733381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610371, 20.123634, 28.970726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397231, -0.767292, 0.503458,
		0.441614, -0.640722, -0.628054,
		0.804478, -0.027148, 0.593362,
		24.851713, 20.115490, 29.148735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440142, 19.450655, 28.914358>,  <24.288580, 20.134493, 28.733381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440142, 19.450655, 28.914358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.624901, 19.661587, 29.199615>,  <24.735756, 19.788147, 29.370770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.624901, 19.661587, 29.199615>,  <24.440142, 19.450655, 28.914358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.624901, 19.661587, 29.199615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188592, -0.727272, 0.659931,
		0.866650, -0.439315, -0.236476,
		0.461899, 0.527331, 0.713142,
		24.763472, 19.819786, 29.413557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933987, 18.986040, 29.149576>,  <24.440142, 19.450655, 28.914358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933987, 18.986040, 29.149576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.849705, 19.261093, 29.427502>,  <24.799135, 19.426125, 29.594257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.849705, 19.261093, 29.427502>,  <24.933987, 18.986040, 29.149576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849705, 19.261093, 29.427502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221682, -0.725863, 0.651137,
		0.952083, -0.016831, 0.305377,
		-0.210703, 0.687633, 0.694813,
		24.786493, 19.467382, 29.635946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716269, 19.046972, 28.958065>,  <24.933987, 18.986040, 29.149576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716269, 19.046972, 28.958065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.588419, 18.764820, 28.704994>,  <25.511709, 18.595530, 28.553152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.588419, 18.764820, 28.704994>,  <25.716269, 19.046972, 28.958065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588419, 18.764820, 28.704994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581858, -0.673094, 0.456493,
		-0.747852, -0.222221, 0.625568,
		-0.319624, -0.705381, -0.632676,
		25.492531, 18.553205, 28.515192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763998, 18.389343, 29.321009>,  <25.716269, 19.046972, 28.958065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763998, 18.389343, 29.321009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.707848, 18.295750, 28.936188>,  <25.674158, 18.239594, 28.705296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.707848, 18.295750, 28.936188>,  <25.763998, 18.389343, 29.321009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707848, 18.295750, 28.936188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516076, -0.846530, 0.130586,
		-0.844962, -0.478161, 0.239586,
		-0.140376, -0.233985, -0.962053,
		25.665735, 18.225554, 28.647572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935743, 18.698158, 29.972082>,  <25.763998, 18.389343, 29.321009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935743, 18.698158, 29.972082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.218847, 18.548782, 30.211956>,  <26.388710, 18.459158, 30.355881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.218847, 18.548782, 30.211956>,  <25.935743, 18.698158, 29.972082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218847, 18.548782, 30.211956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405837, 0.909743, 0.087543,
		-0.578251, 0.181415, 0.795433,
		0.707759, -0.373438, 0.599685,
		26.431175, 18.436750, 30.391861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054989, 19.128796, 30.547916>,  <25.935743, 18.698158, 29.972082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054989, 19.128796, 30.547916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.399925, 18.928722, 30.579380>,  <26.606888, 18.808680, 30.598259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.399925, 18.928722, 30.579380>,  <26.054989, 19.128796, 30.547916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399925, 18.928722, 30.579380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494516, 0.865358, 0.081295,
		-0.108732, -0.031205, 0.993581,
		0.862341, -0.500181, 0.078661,
		26.658627, 18.778667, 30.602978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439735, 19.434681, 31.131336>,  <26.054989, 19.128796, 30.547916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439735, 19.434681, 31.131336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696695, 19.229446, 30.903629>,  <26.850872, 19.106306, 30.767006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696695, 19.229446, 30.903629>,  <26.439735, 19.434681, 31.131336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696695, 19.229446, 30.903629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697975, 0.698445, 0.158131,
		0.316467, -0.498918, 0.806802,
		0.642402, -0.513084, -0.569267,
		26.889416, 19.075521, 30.732849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225624, 19.678883, 31.378716>,  <26.439735, 19.434681, 31.131336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225624, 19.678883, 31.378716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.235388, 19.534412, 31.005844>,  <27.241247, 19.447731, 30.782122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.235388, 19.534412, 31.005844>,  <27.225624, 19.678883, 31.378716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235388, 19.534412, 31.005844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664012, 0.702912, -0.254957,
		0.747324, -0.612754, 0.256984,
		0.024411, -0.361176, -0.932178,
		27.242712, 19.426060, 30.726191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922262, 19.598976, 31.209465>,  <27.225624, 19.678883, 31.378716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922262, 19.598976, 31.209465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.741783, 19.599777, 30.852497>,  <27.633495, 19.600258, 30.638315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.741783, 19.599777, 30.852497>,  <27.922262, 19.598976, 31.209465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741783, 19.599777, 30.852497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713419, 0.601584, -0.359347,
		0.536146, -0.798807, -0.272862,
		-0.451199, 0.002002, -0.892421,
		27.606424, 19.600378, 30.584770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433075, 19.453520, 30.690647>,  <27.922262, 19.598976, 31.209465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433075, 19.453520, 30.690647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137304, 19.624454, 30.482559>,  <27.959841, 19.727016, 30.357706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137304, 19.624454, 30.482559>,  <28.433075, 19.453520, 30.690647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137304, 19.624454, 30.482559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656692, 0.628068, -0.417476,
		0.148331, -0.650318, -0.745040,
		-0.739428, 0.427338, -0.520220,
		27.915476, 19.752655, 30.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749023, 19.599810, 29.997292>,  <28.433075, 19.453520, 30.690647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749023, 19.599810, 29.997292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.406239, 19.805298, 29.980762>,  <28.200567, 19.928591, 29.970844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.406239, 19.805298, 29.980762>,  <28.749023, 19.599810, 29.997292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406239, 19.805298, 29.980762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415874, 0.641921, -0.644194,
		-0.304411, -0.569234, -0.763745,
		-0.856961, 0.513721, -0.041322,
		28.149151, 19.959414, 29.968367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777800, 19.678776, 29.364902>,  <28.749023, 19.599810, 29.997292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777800, 19.678776, 29.364902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.539480, 19.964188, 29.512360>,  <28.396488, 20.135435, 29.600834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.539480, 19.964188, 29.512360>,  <28.777800, 19.678776, 29.364902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539480, 19.964188, 29.512360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341120, 0.640371, -0.688159,
		-0.727090, -0.284253, -0.624932,
		-0.595799, 0.713530, 0.368643,
		28.360741, 20.178247, 29.622952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618635, 20.147129, 28.827717>,  <28.777800, 19.678776, 29.364902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618635, 20.147129, 28.827717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530163, 20.400963, 29.123928>,  <28.477079, 20.553263, 29.301655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530163, 20.400963, 29.123928>,  <28.618635, 20.147129, 28.827717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530163, 20.400963, 29.123928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163223, 0.772713, -0.613411,
		-0.961477, -0.014803, -0.274487,
		-0.221180, 0.634584, 0.740529,
		28.463808, 20.591337, 29.346087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169273, 20.669106, 28.565516>,  <28.618635, 20.147129, 28.827717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169273, 20.669106, 28.565516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.358191, 20.830406, 28.879032>,  <28.471540, 20.927187, 29.067142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.358191, 20.830406, 28.879032>,  <28.169273, 20.669106, 28.565516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358191, 20.830406, 28.879032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271905, 0.779197, -0.564730,
		-0.838455, 0.479834, 0.258363,
		0.472292, 0.403251, 0.783791,
		28.499878, 20.951382, 29.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028769, 21.390265, 28.499203>,  <28.169273, 20.669106, 28.565516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028769, 21.390265, 28.499203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.334692, 21.386181, 28.756874>,  <28.518246, 21.383730, 28.911476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.334692, 21.386181, 28.756874>,  <28.028769, 21.390265, 28.499203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334692, 21.386181, 28.756874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288976, 0.899087, -0.328841,
		-0.575814, 0.437652, 0.690579,
		0.764808, -0.010209, 0.644178,
		28.564135, 21.383118, 28.950127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045887, 22.017647, 28.852465>,  <28.028769, 21.390265, 28.499203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045887, 22.017647, 28.852465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419569, 21.876278, 28.871864>,  <28.643778, 21.791456, 28.883503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419569, 21.876278, 28.871864>,  <28.045887, 22.017647, 28.852465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419569, 21.876278, 28.871864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326300, 0.791626, -0.516582,
		0.144180, 0.498418, 0.854863,
		0.934206, -0.353422, 0.048498,
		28.699831, 21.770250, 28.886414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453642, 22.625023, 28.978413>,  <28.045887, 22.017647, 28.852465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453642, 22.625023, 28.978413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.711470, 22.356541, 28.831982>,  <28.866167, 22.195452, 28.744123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.711470, 22.356541, 28.831982>,  <28.453642, 22.625023, 28.978413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711470, 22.356541, 28.831982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428902, 0.713825, -0.553621,
		0.632908, 0.199837, 0.747992,
		0.644570, -0.671207, -0.366075,
		28.904840, 22.155178, 28.722158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187288, 22.917547, 28.970818>,  <28.453642, 22.625023, 28.978413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187288, 22.917547, 28.970818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208035, 22.614120, 28.711006>,  <29.220482, 22.432064, 28.555119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208035, 22.614120, 28.711006>,  <29.187288, 22.917547, 28.970818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208035, 22.614120, 28.711006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430616, 0.603821, -0.670798,
		0.901044, -0.244906, 0.357968,
		0.051866, -0.758565, -0.649530,
		29.223595, 22.386551, 28.516148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915144, 22.943035, 28.735926>,  <29.187288, 22.917547, 28.970818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915144, 22.943035, 28.735926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670044, 22.763386, 28.475826>,  <29.522984, 22.655596, 28.319767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670044, 22.763386, 28.475826>,  <29.915144, 22.943035, 28.735926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670044, 22.763386, 28.475826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330310, 0.601942, -0.727022,
		0.717935, -0.660268, -0.220490,
		-0.612751, -0.449125, -0.650248,
		29.486217, 22.628649, 28.280752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302046, 22.714376, 28.115452>,  <29.915144, 22.943035, 28.735926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302046, 22.714376, 28.115452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924416, 22.723370, 27.983864>,  <29.697838, 22.728765, 27.904911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924416, 22.723370, 27.983864>,  <30.302046, 22.714376, 28.115452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924416, 22.723370, 27.983864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315167, 0.354802, -0.880219,
		0.096927, -0.934671, -0.342045,
		-0.944073, 0.022484, -0.328968,
		29.641193, 22.730114, 27.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244324, 22.447706, 27.530624>,  <30.302046, 22.714376, 28.115452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244324, 22.447706, 27.530624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.909479, 22.663963, 27.497284>,  <29.708572, 22.793716, 27.477280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.909479, 22.663963, 27.497284>,  <30.244324, 22.447706, 27.530624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909479, 22.663963, 27.497284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271304, 0.278013, -0.921468,
		-0.475011, -0.793987, -0.379406,
		-0.837113, 0.540642, -0.083353,
		29.658344, 22.826157, 27.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971979, 22.215714, 26.869320>,  <30.244324, 22.447706, 27.530624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971979, 22.215714, 26.869320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.819401, 22.569862, 26.975613>,  <29.727854, 22.782352, 27.039389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.819401, 22.569862, 26.975613>,  <29.971979, 22.215714, 26.869320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819401, 22.569862, 26.975613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234631, 0.370785, -0.898591,
		-0.894119, -0.280413, -0.349170,
		-0.381444, 0.885374, 0.265732,
		29.704967, 22.835474, 27.055332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724165, 22.528061, 26.330065>,  <29.971979, 22.215714, 26.869320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724165, 22.528061, 26.330065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730467, 22.854778, 26.560753>,  <29.734249, 23.050808, 26.699165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730467, 22.854778, 26.560753>,  <29.724165, 22.528061, 26.330065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730467, 22.854778, 26.560753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101544, 0.572500, -0.813592,
		-0.994706, 0.071381, -0.073920,
		0.015756, 0.816791, 0.576718,
		29.735193, 23.099815, 26.733768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285383, 23.005487, 25.884193>,  <29.724165, 22.528061, 26.330065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285383, 23.005487, 25.884193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.503944, 23.217289, 26.143753>,  <29.635080, 23.344370, 26.299488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.503944, 23.217289, 26.143753>,  <29.285383, 23.005487, 25.884193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503944, 23.217289, 26.143753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133497, 0.709815, -0.691622,
		-0.826815, 0.464530, 0.317158,
		0.546402, 0.529503, 0.648899,
		29.667866, 23.376141, 26.338423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.848959, 39.922279, 17.745340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.030367, 39.796993, 17.411583>,  <22.139212, 39.721821, 17.211329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.030367, 39.796993, 17.411583>,  <21.848959, 39.922279, 17.745340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030367, 39.796993, 17.411583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384984, -0.775513, 0.500367,
		-0.803809, -0.548154, -0.231123,
		0.453517, -0.313221, -0.834395,
		22.166422, 39.703026, 17.161264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808271, 39.201893, 17.646402>,  <21.848959, 39.922279, 17.745340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808271, 39.201893, 17.646402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.129335, 39.331993, 17.446423>,  <22.321974, 39.410053, 17.326435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.129335, 39.331993, 17.446423>,  <21.808271, 39.201893, 17.646402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129335, 39.331993, 17.446423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556686, -0.709419, 0.432233,
		-0.214091, -0.625252, -0.750484,
		0.802662, 0.325246, -0.499949,
		22.370134, 39.429565, 17.296438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.164917, 38.680405, 17.304453>,  <21.808271, 39.201893, 17.646402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.164917, 38.680405, 17.304453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.448332, 38.959858, 17.344234>,  <22.618380, 39.127529, 17.368103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.448332, 38.959858, 17.344234>,  <22.164917, 38.680405, 17.304453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.448332, 38.959858, 17.344234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651470, -0.701750, 0.288330,
		0.271228, -0.139501, -0.952352,
		0.708535, 0.698632, 0.099453,
		22.660892, 39.169449, 17.374071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.868134, 38.422676, 17.056553>,  <22.164917, 38.680405, 17.304453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.868134, 38.422676, 17.056553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.928505, 38.715828, 17.321918>,  <22.964727, 38.891720, 17.481138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.928505, 38.715828, 17.321918>,  <22.868134, 38.422676, 17.056553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.928505, 38.715828, 17.321918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669186, -0.569699, 0.477110,
		0.727607, 0.371937, -0.576412,
		0.150927, 0.732875, 0.663412,
		22.973783, 38.935692, 17.520943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.544561, 38.292282, 17.281176>,  <22.868134, 38.422676, 17.056553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.544561, 38.292282, 17.281176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.413746, 38.540817, 17.565987>,  <23.335257, 38.689938, 17.736874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.413746, 38.540817, 17.565987>,  <23.544561, 38.292282, 17.281176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.413746, 38.540817, 17.565987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538400, -0.496713, 0.680736,
		0.776640, 0.605985, -0.172082,
		-0.327040, 0.621336, 0.712030,
		23.315634, 38.727219, 17.779596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128815, 38.422474, 17.794609>,  <23.544561, 38.292282, 17.281176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128815, 38.422474, 17.794609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.808405, 38.527344, 18.009876>,  <23.616159, 38.590263, 18.139036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.808405, 38.527344, 18.009876>,  <24.128815, 38.422474, 17.794609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.808405, 38.527344, 18.009876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418825, -0.396891, 0.816740,
		0.427720, 0.879627, 0.208115,
		-0.801025, 0.262172, 0.538168,
		23.568098, 38.605995, 18.171326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311623, 38.804035, 18.374428>,  <24.128815, 38.422474, 17.794609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311623, 38.804035, 18.374428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961021, 38.621155, 18.434711>,  <23.750660, 38.511429, 18.470882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961021, 38.621155, 18.434711>,  <24.311623, 38.804035, 18.374428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961021, 38.621155, 18.434711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360615, -0.416190, 0.834711,
		-0.318903, 0.785975, 0.529664,
		-0.876503, -0.457196, 0.150710,
		23.698071, 38.483997, 18.479925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.390360, 38.620235, 19.057610>,  <24.311623, 38.804035, 18.374428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.390360, 38.620235, 19.057610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.038876, 38.437424, 19.002491>,  <23.827984, 38.327736, 18.969419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.038876, 38.437424, 19.002491>,  <24.390360, 38.620235, 19.057610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.038876, 38.437424, 19.002491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151336, -0.540495, 0.827625,
		-0.452726, 0.706391, 0.544105,
		-0.878713, -0.457030, -0.137794,
		23.775261, 38.300316, 18.961153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962437, 38.599773, 19.720018>,  <24.390360, 38.620235, 19.057610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962437, 38.599773, 19.720018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.788500, 38.310749, 19.505051>,  <23.684137, 38.137337, 19.376070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.788500, 38.310749, 19.505051>,  <23.962437, 38.599773, 19.720018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.788500, 38.310749, 19.505051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176881, -0.653708, 0.735784,
		-0.882963, 0.224891, 0.412067,
		-0.434843, -0.722558, -0.537422,
		23.658047, 38.093983, 19.343824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.315033, 38.294964, 20.056700>,  <23.962437, 38.599773, 19.720018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.315033, 38.294964, 20.056700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.446787, 37.994373, 19.828037>,  <23.525839, 37.814018, 19.690840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.446787, 37.994373, 19.828037>,  <23.315033, 38.294964, 20.056700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.446787, 37.994373, 19.828037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235122, -0.651653, 0.721156,
		-0.914453, -0.103128, -0.391332,
		0.329384, -0.751474, -0.571658,
		23.545603, 37.768932, 19.656540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711456, 37.823925, 20.011333>,  <23.315033, 38.294964, 20.056700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711456, 37.823925, 20.011333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.048531, 37.632118, 19.913399>,  <23.250774, 37.517033, 19.854639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.048531, 37.632118, 19.913399>,  <22.711456, 37.823925, 20.011333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.048531, 37.632118, 19.913399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261787, -0.762288, 0.591933,
		-0.470477, -0.434718, -0.767901,
		0.842686, -0.479518, -0.244835,
		23.301336, 37.488262, 19.839949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.543760, 37.134270, 20.204453>,  <22.711456, 37.823925, 20.011333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.543760, 37.134270, 20.204453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936169, 37.077522, 20.151581>,  <23.171614, 37.043476, 20.119858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936169, 37.077522, 20.151581>,  <22.543760, 37.134270, 20.204453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936169, 37.077522, 20.151581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020653, -0.754262, 0.656248,
		-0.192794, -0.641064, -0.742878,
		0.981022, -0.141864, -0.132178,
		23.230474, 37.034962, 20.111927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.716837, 36.333366, 20.015720>,  <22.543760, 37.134270, 20.204453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.716837, 36.333366, 20.015720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.026423, 36.514408, 20.192867>,  <23.212173, 36.623032, 20.299154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.026423, 36.514408, 20.192867>,  <22.716837, 36.333366, 20.015720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.026423, 36.514408, 20.192867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051170, -0.652387, 0.756157,
		0.631159, -0.607899, -0.481764,
		0.773964, 0.452603, 0.442866,
		23.258612, 36.650188, 20.325727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.990065, 35.802498, 20.377018>,  <22.716837, 36.333366, 20.015720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.990065, 35.802498, 20.377018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206257, 36.098736, 20.536713>,  <23.335972, 36.276478, 20.632530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206257, 36.098736, 20.536713>,  <22.990065, 35.802498, 20.377018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206257, 36.098736, 20.536713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094863, -0.525134, 0.845716,
		0.835991, -0.419222, -0.354081,
		0.540482, 0.740599, 0.399239,
		23.368402, 36.320915, 20.656485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.626411, 35.475632, 20.498577>,  <22.990065, 35.802498, 20.377018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.626411, 35.475632, 20.498577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.573801, 35.764053, 20.770691>,  <23.542234, 35.937107, 20.933960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.573801, 35.764053, 20.770691>,  <23.626411, 35.475632, 20.498577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573801, 35.764053, 20.770691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155279, -0.662791, 0.732528,
		0.979076, 0.201981, -0.024789,
		-0.131527, 0.721050, 0.680286,
		23.534344, 35.980370, 20.974777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195492, 35.454601, 21.024923>,  <23.626411, 35.475632, 20.498577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195492, 35.454601, 21.024923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.908707, 35.669846, 21.202190>,  <23.736635, 35.798992, 21.308552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.908707, 35.669846, 21.202190>,  <24.195492, 35.454601, 21.024923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.908707, 35.669846, 21.202190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148983, -0.502756, 0.851493,
		0.681005, 0.676514, 0.280288,
		-0.716963, 0.538113, 0.443169,
		23.693617, 35.831280, 21.335140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496233, 35.646233, 21.748201>,  <24.195492, 35.454601, 21.024923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496233, 35.646233, 21.748201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.099461, 35.687977, 21.776989>,  <23.861397, 35.713024, 21.794262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.099461, 35.687977, 21.776989>,  <24.496233, 35.646233, 21.748201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.099461, 35.687977, 21.776989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029334, -0.363359, 0.931188,
		0.123332, 0.925786, 0.357366,
		-0.991932, 0.104362, 0.071970,
		23.801882, 35.719284, 21.798580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370209, 36.019588, 22.351549>,  <24.496233, 35.646233, 21.748201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370209, 36.019588, 22.351549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.029617, 35.829163, 22.263596>,  <23.825262, 35.714905, 22.210823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.029617, 35.829163, 22.263596>,  <24.370209, 36.019588, 22.351549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029617, 35.829163, 22.263596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153483, -0.174696, 0.972586,
		-0.501428, 0.861883, 0.075682,
		-0.851477, -0.476066, -0.219882,
		23.774174, 35.686344, 22.197632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.811401, 36.296261, 22.886459>,  <24.370209, 36.019588, 22.351549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.811401, 36.296261, 22.886459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.701929, 35.941597, 22.737362>,  <23.636246, 35.728798, 22.647903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.701929, 35.941597, 22.737362>,  <23.811401, 36.296261, 22.886459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.701929, 35.941597, 22.737362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086815, -0.363186, 0.927663,
		-0.957895, 0.286242, 0.022421,
		-0.273680, -0.886657, -0.372744,
		23.619825, 35.675598, 22.625538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.424086, 36.119812, 23.386194>,  <23.811401, 36.296261, 22.886459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.424086, 36.119812, 23.386194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.465534, 35.772655, 23.191864>,  <23.490404, 35.564362, 23.075266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.465534, 35.772655, 23.191864>,  <23.424086, 36.119812, 23.386194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465534, 35.772655, 23.191864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165407, -0.496692, 0.852019,
		-0.980766, -0.007929, -0.195024,
		0.103622, -0.867891, -0.485827,
		23.496620, 35.512287, 23.046116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.742283, 35.756718, 23.462498>,  <23.424086, 36.119812, 23.386194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.742283, 35.756718, 23.462498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.015692, 35.476120, 23.381798>,  <23.179737, 35.307762, 23.333378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.015692, 35.476120, 23.381798>,  <22.742283, 35.756718, 23.462498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.015692, 35.476120, 23.381798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220561, -0.461969, 0.859033,
		-0.695810, -0.542669, -0.470488,
		0.683521, -0.701495, -0.201751,
		23.220749, 35.265671, 23.321272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.119059, 36.288460, 23.575132>,  <22.742283, 35.756718, 23.462498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.119059, 36.288460, 23.575132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.786020, 36.453655, 23.722767>,  <21.586197, 36.552773, 23.811348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.786020, 36.453655, 23.722767>,  <22.119059, 36.288460, 23.575132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786020, 36.453655, 23.722767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164886, 0.451342, -0.876985,
		-0.528771, -0.791030, -0.307689,
		-0.832595, 0.412991, 0.369087,
		21.536242, 36.577553, 23.833492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.560947, 36.118603, 23.063095>,  <22.119059, 36.288460, 23.575132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.560947, 36.118603, 23.063095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.422346, 36.428413, 23.274773>,  <21.339186, 36.614300, 23.401779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.422346, 36.428413, 23.274773>,  <21.560947, 36.118603, 23.063095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422346, 36.428413, 23.274773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309530, 0.438139, -0.843935,
		-0.885509, -0.456227, 0.087922,
		-0.346504, 0.774526, 0.529192,
		21.318396, 36.660770, 23.433531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.005245, 36.354218, 22.765593>,  <21.560947, 36.118603, 23.063095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.005245, 36.354218, 22.765593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056398, 36.666512, 23.010250>,  <21.087090, 36.853886, 23.157043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056398, 36.666512, 23.010250>,  <21.005245, 36.354218, 22.765593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056398, 36.666512, 23.010250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319050, 0.616309, -0.719980,
		-0.939070, -0.103071, 0.327908,
		0.127883, 0.780730, 0.611642,
		21.094763, 36.900730, 23.193743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440088, 36.780315, 22.665005>,  <21.005245, 36.354218, 22.765593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440088, 36.780315, 22.665005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.718206, 37.016190, 22.829361>,  <20.885077, 37.157715, 22.927975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.718206, 37.016190, 22.829361>,  <20.440088, 36.780315, 22.665005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.718206, 37.016190, 22.829361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271657, 0.744906, -0.609358,
		-0.665408, 0.312061, 0.678123,
		0.695295, 0.589688, 0.410893,
		20.926794, 37.193096, 22.952629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035189, 37.383480, 22.902113>,  <20.440088, 36.780315, 22.665005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035189, 37.383480, 22.902113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423769, 37.466846, 22.856781>,  <20.656918, 37.516865, 22.829582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423769, 37.466846, 22.856781>,  <20.035189, 37.383480, 22.902113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423769, 37.466846, 22.856781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226521, 0.672953, -0.704147,
		-0.070488, 0.709716, 0.700952,
		0.971452, 0.208414, -0.113331,
		20.715204, 37.529369, 22.822783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125723, 38.109989, 22.834028>,  <20.035189, 37.383480, 22.902113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125723, 38.109989, 22.834028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.459930, 37.987278, 22.651688>,  <20.660454, 37.913651, 22.542282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.459930, 37.987278, 22.651688>,  <20.125723, 38.109989, 22.834028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.459930, 37.987278, 22.651688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109245, 0.720321, -0.684984,
		0.538495, 0.622115, 0.568327,
		0.835517, -0.306774, -0.455852,
		20.710585, 37.895245, 22.514933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527634, 38.756199, 22.752304>,  <20.125723, 38.109989, 22.834028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527634, 38.756199, 22.752304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.634203, 38.461292, 22.503963>,  <20.698145, 38.284348, 22.354959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.634203, 38.461292, 22.503963>,  <20.527634, 38.756199, 22.752304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.634203, 38.461292, 22.503963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061199, 0.655774, -0.752473,
		0.961911, 0.162481, 0.219834,
		0.266424, -0.737266, -0.620852,
		20.714130, 38.240112, 22.317707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895090, 39.105293, 22.260302>,  <20.527634, 38.756199, 22.752304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895090, 39.105293, 22.260302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829052, 38.750748, 22.087276>,  <20.789429, 38.538021, 21.983461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829052, 38.750748, 22.087276>,  <20.895090, 39.105293, 22.260302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829052, 38.750748, 22.087276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003341, 0.439081, -0.898441,
		0.986272, -0.146882, -0.075451,
		-0.165094, -0.886360, -0.432562,
		20.779524, 38.484840, 21.957508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244999, 39.093414, 21.620222>,  <20.895090, 39.105293, 22.260302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244999, 39.093414, 21.620222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.987116, 38.800655, 21.531975>,  <20.832386, 38.625000, 21.479027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.987116, 38.800655, 21.531975>,  <21.244999, 39.093414, 21.620222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987116, 38.800655, 21.531975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060111, 0.239173, -0.969114,
		0.762061, -0.638058, -0.110202,
		-0.644709, -0.731900, -0.220619,
		20.793703, 38.581085, 21.465790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384003, 38.884445, 20.995356>,  <21.244999, 39.093414, 21.620222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384003, 38.884445, 20.995356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.017302, 38.725590, 21.012524>,  <20.797281, 38.630276, 21.022825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.017302, 38.725590, 21.012524>,  <21.384003, 38.884445, 20.995356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.017302, 38.725590, 21.012524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163150, 0.274186, -0.947737,
		0.364616, -0.875844, -0.316154,
		-0.916754, -0.397140, 0.042921,
		20.742275, 38.606449, 21.025400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.195763, 38.554211, 20.341562>,  <21.384003, 38.884445, 20.995356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.195763, 38.554211, 20.341562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.838789, 38.604897, 20.514771>,  <20.624605, 38.635307, 20.618696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.838789, 38.604897, 20.514771>,  <21.195763, 38.554211, 20.341562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838789, 38.604897, 20.514771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392849, 0.253766, -0.883896,
		-0.221887, -0.958930, -0.176690,
		-0.892433, 0.126713, 0.433022,
		20.571058, 38.642910, 20.644676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734806, 38.125809, 19.905832>,  <21.195763, 38.554211, 20.341562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734806, 38.125809, 19.905832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.516958, 38.400089, 20.098999>,  <20.386250, 38.564655, 20.214899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.516958, 38.400089, 20.098999>,  <20.734806, 38.125809, 19.905832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516958, 38.400089, 20.098999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404252, 0.289875, -0.867498,
		-0.734827, -0.667676, 0.119323,
		-0.544619, 0.685698, 0.482918,
		20.353573, 38.605797, 20.243874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206865, 38.181305, 19.496853>,  <20.734806, 38.125809, 19.905832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206865, 38.181305, 19.496853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.174417, 38.509514, 19.723183>,  <20.154949, 38.706440, 19.858980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.174417, 38.509514, 19.723183>,  <20.206865, 38.181305, 19.496853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174417, 38.509514, 19.723183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396458, 0.494289, -0.773627,
		-0.914462, -0.287083, 0.285207,
		-0.081120, 0.820525, 0.565825,
		20.150082, 38.755672, 19.892931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574223, 38.377380, 19.377178>,  <20.206865, 38.181305, 19.496853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574223, 38.377380, 19.377178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.770903, 38.691841, 19.526947>,  <19.888910, 38.880520, 19.616808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.770903, 38.691841, 19.526947>,  <19.574223, 38.377380, 19.377178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770903, 38.691841, 19.526947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298147, 0.555999, -0.775870,
		-0.818131, 0.269864, 0.507775,
		0.491702, 0.786154, 0.374421,
		19.918413, 38.927689, 19.639273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122017, 39.017277, 19.440351>,  <19.574223, 38.377380, 19.377178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122017, 39.017277, 19.440351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.488754, 39.174946, 19.414986>,  <19.708797, 39.269547, 19.399767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.488754, 39.174946, 19.414986>,  <19.122017, 39.017277, 19.440351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488754, 39.174946, 19.414986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307104, 0.594800, -0.742900,
		-0.255114, 0.700598, 0.666392,
		0.916844, 0.394176, -0.063415,
		19.763807, 39.293198, 19.395962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031523, 39.726517, 19.237785>,  <19.122017, 39.017277, 19.440351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031523, 39.726517, 19.237785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.412645, 39.644154, 19.148552>,  <19.641319, 39.594734, 19.095013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.412645, 39.644154, 19.148552>,  <19.031523, 39.726517, 19.237785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412645, 39.644154, 19.148552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094193, 0.498053, -0.862016,
		0.288601, 0.842345, 0.455152,
		0.952805, -0.205907, -0.223081,
		19.698486, 39.582382, 19.081627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225590, 40.266514, 18.799208>,  <19.031523, 39.726517, 19.237785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225590, 40.266514, 18.799208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.506006, 39.988834, 18.733940>,  <19.674257, 39.822227, 18.694780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.506006, 39.988834, 18.733940>,  <19.225590, 40.266514, 18.799208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506006, 39.988834, 18.733940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164888, 0.380405, -0.910002,
		0.693794, 0.611046, 0.381146,
		0.701043, -0.694201, -0.163168,
		19.716320, 39.780575, 18.684990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882681, 40.671547, 18.581177>,  <19.225590, 40.266514, 18.799208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882681, 40.671547, 18.581177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.932207, 40.288452, 18.477329>,  <19.961924, 40.058594, 18.415020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.932207, 40.288452, 18.477329>,  <19.882681, 40.671547, 18.581177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932207, 40.288452, 18.477329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383838, 0.287493, -0.877506,
		0.915062, 0.008999, 0.403213,
		0.123818, -0.957741, -0.259619,
		19.969353, 40.001129, 18.399443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455385, 40.670837, 18.293829>,  <19.882681, 40.671547, 18.581177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455385, 40.670837, 18.293829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.267118, 40.348614, 18.149864>,  <20.154158, 40.155277, 18.063484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.267118, 40.348614, 18.149864>,  <20.455385, 40.670837, 18.293829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267118, 40.348614, 18.149864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240331, 0.275444, -0.930791,
		0.848947, -0.524593, 0.063959,
		-0.470669, -0.805564, -0.359914,
		20.125917, 40.106945, 18.041889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811359, 40.536854, 17.658915>,  <20.455385, 40.670837, 18.293829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811359, 40.536854, 17.658915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467573, 40.334721, 17.628025>,  <20.261301, 40.213440, 17.609491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467573, 40.334721, 17.628025>,  <20.811359, 40.536854, 17.658915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.467573, 40.334721, 17.628025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050045, 0.233515, -0.971065,
		0.508742, -0.830730, -0.225987,
		-0.859464, -0.505331, -0.077225,
		20.209734, 40.183121, 17.604858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.901169, 40.223511, 17.057877>,  <20.811359, 40.536854, 17.658915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.901169, 40.223511, 17.057877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508232, 40.205307, 17.130463>,  <20.272470, 40.194386, 17.174015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508232, 40.205307, 17.130463>,  <20.901169, 40.223511, 17.057877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508232, 40.205307, 17.130463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180770, -0.018985, -0.983342,
		0.048192, -0.998784, 0.010424,
		-0.982344, -0.045505, 0.181465,
		20.213530, 40.191654, 17.184902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.435490, 28.521641, 23.870420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780300, 28.516251, 24.073093>,  <27.987186, 28.513016, 24.194696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780300, 28.516251, 24.073093>,  <27.435490, 28.521641, 23.870420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780300, 28.516251, 24.073093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000402, 0.999664, 0.025902,
		-0.506861, -0.022125, 0.861744,
		0.862028, -0.013475, 0.506682,
		28.038908, 28.512209, 24.225098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382126, 29.020876, 24.429789>,  <27.435490, 28.521641, 23.870420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382126, 29.020876, 24.429789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775640, 28.973454, 24.375965>,  <28.011749, 28.945000, 24.343672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775640, 28.973454, 24.375965>,  <27.382126, 29.020876, 24.429789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775640, 28.973454, 24.375965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122928, 0.992110, 0.024644,
		0.130574, -0.040785, 0.990600,
		0.983788, -0.118555, -0.134557,
		28.070778, 28.937887, 24.335598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713261, 29.587610, 24.809059>,  <27.382126, 29.020876, 24.429789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713261, 29.587610, 24.809059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990078, 29.448406, 24.556087>,  <28.156168, 29.364883, 24.404305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990078, 29.448406, 24.556087>,  <27.713261, 29.587610, 24.809059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990078, 29.448406, 24.556087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415225, 0.908575, -0.045602,
		0.590479, -0.231042, 0.773275,
		0.692042, -0.348010, -0.632429,
		28.197691, 29.344004, 24.366360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307634, 29.874691, 25.011354>,  <27.713261, 29.587610, 24.809059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307634, 29.874691, 25.011354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382078, 29.767754, 24.633171>,  <28.426744, 29.703592, 24.406261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382078, 29.767754, 24.633171>,  <28.307634, 29.874691, 25.011354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382078, 29.767754, 24.633171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535388, 0.834454, -0.130565,
		0.823847, -0.481887, 0.298432,
		0.186110, -0.267342, -0.945458,
		28.437912, 29.687551, 24.349533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098862, 30.012650, 24.866213>,  <28.307634, 29.874691, 25.011354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098862, 30.012650, 24.866213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878889, 30.011456, 24.532131>,  <28.746906, 30.010738, 24.331682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878889, 30.011456, 24.532131>,  <29.098862, 30.012650, 24.866213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878889, 30.011456, 24.532131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446816, 0.843812, -0.297216,
		0.705644, -0.536631, -0.462703,
		-0.549930, -0.002985, -0.835205,
		28.713911, 30.010559, 24.281570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390581, 30.500008, 24.545389>,  <29.098862, 30.012650, 24.866213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390581, 30.500008, 24.545389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083239, 30.430260, 24.299065>,  <28.898834, 30.388411, 24.151270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083239, 30.430260, 24.299065>,  <29.390581, 30.500008, 24.545389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083239, 30.430260, 24.299065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061983, 0.937376, -0.342761,
		0.637015, -0.301532, -0.709430,
		-0.768355, -0.174371, -0.615812,
		28.852732, 30.377949, 24.114321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676558, 30.738211, 23.940607>,  <29.390581, 30.500008, 24.545389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676558, 30.738211, 23.940607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279659, 30.746223, 23.891533>,  <29.041521, 30.751030, 23.862089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279659, 30.746223, 23.891533>,  <29.676558, 30.738211, 23.940607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279659, 30.746223, 23.891533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088274, 0.808428, -0.581938,
		0.087526, -0.588254, -0.803926,
		-0.992243, 0.020031, -0.122686,
		28.981987, 30.752234, 23.854727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605917, 30.793629, 23.187229>,  <29.676558, 30.738211, 23.940607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605917, 30.793629, 23.187229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265036, 30.919682, 23.354294>,  <29.060507, 30.995314, 23.454533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265036, 30.919682, 23.354294>,  <29.605917, 30.793629, 23.187229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265036, 30.919682, 23.354294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079440, 0.866945, -0.492032,
		-0.517143, -0.386133, -0.763848,
		-0.852204, 0.315132, 0.417660,
		29.009375, 31.014221, 23.479591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133337, 30.948971, 22.567980>,  <29.605917, 30.793629, 23.187229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133337, 30.948971, 22.567980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041737, 31.147194, 22.903118>,  <28.986776, 31.266127, 23.104200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041737, 31.147194, 22.903118>,  <29.133337, 30.948971, 22.567980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041737, 31.147194, 22.903118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011152, 0.859325, -0.511309,
		-0.973362, -0.126435, -0.191261,
		-0.229003, 0.495555, 0.837844,
		28.973036, 31.295860, 23.154470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693682, 31.454538, 22.364269>,  <29.133337, 30.948971, 22.567980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693682, 31.454538, 22.364269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825850, 31.585644, 22.718307>,  <28.905149, 31.664307, 22.930731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825850, 31.585644, 22.718307>,  <28.693682, 31.454538, 22.364269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825850, 31.585644, 22.718307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119624, 0.944746, -0.305198,
		-0.936223, -0.005035, 0.351371,
		0.330420, 0.327766, 0.885095,
		28.924976, 31.683973, 22.983835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233322, 31.984423, 22.701920>,  <28.693682, 31.454538, 22.364269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233322, 31.984423, 22.701920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595442, 32.025646, 22.866753>,  <28.812714, 32.050381, 22.965652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595442, 32.025646, 22.866753>,  <28.233322, 31.984423, 22.701920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595442, 32.025646, 22.866753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120601, 0.867839, -0.481987,
		-0.407295, 0.486040, 0.773224,
		0.905299, 0.103059, 0.412084,
		28.867031, 32.056564, 22.990377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796041, 32.443916, 22.183712>,  <28.233322, 31.984423, 22.701920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796041, 32.443916, 22.183712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421274, 32.498257, 22.312542>,  <27.196415, 32.530861, 22.389839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421274, 32.498257, 22.312542>,  <27.796041, 32.443916, 22.183712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421274, 32.498257, 22.312542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297777, 0.792750, 0.531861,
		-0.183071, 0.594216, -0.783194,
		-0.936917, 0.135848, 0.322073,
		27.140200, 32.539013, 22.409164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516447, 33.164665, 22.075962>,  <27.796041, 32.443916, 22.183712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516447, 33.164665, 22.075962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345146, 32.982796, 22.388340>,  <27.242365, 32.873672, 22.575766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345146, 32.982796, 22.388340>,  <27.516447, 33.164665, 22.075962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345146, 32.982796, 22.388340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278095, 0.755950, 0.592623,
		-0.859804, 0.470969, -0.197296,
		-0.428253, -0.454672, 0.780943,
		27.216671, 32.846394, 22.622623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274094, 33.445953, 22.704634>,  <27.516447, 33.164665, 22.075962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274094, 33.445953, 22.704634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304699, 33.844521, 22.719028>,  <27.323061, 34.083660, 22.727665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304699, 33.844521, 22.719028>,  <27.274094, 33.445953, 22.704634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304699, 33.844521, 22.719028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819948, 0.083413, -0.566328,
		-0.567302, 0.013824, 0.823394,
		0.076511, 0.996419, 0.035985,
		27.327652, 34.143448, 22.729824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081512, 32.909210, 23.254189>,  <27.274094, 33.445953, 22.704634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081512, 32.909210, 23.254189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956297, 33.149712, 23.548264>,  <26.881168, 33.294010, 23.724709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956297, 33.149712, 23.548264>,  <27.081512, 32.909210, 23.254189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956297, 33.149712, 23.548264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557110, -0.510679, 0.654856,
		0.769179, 0.614576, -0.175100,
		-0.313039, 0.601251, 0.735190,
		26.862385, 33.330086, 23.768820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617195, 32.984543, 23.727135>,  <27.081512, 32.909210, 23.254189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617195, 32.984543, 23.727135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359304, 33.141232, 23.989700>,  <27.204571, 33.235245, 24.147240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359304, 33.141232, 23.989700>,  <27.617195, 32.984543, 23.727135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359304, 33.141232, 23.989700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662734, -0.141490, 0.735367,
		0.380936, 0.909139, -0.168385,
		-0.644726, 0.391723, 0.656416,
		27.165886, 33.258747, 24.186625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920506, 33.476711, 24.213572>,  <27.617195, 32.984543, 23.727135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920506, 33.476711, 24.213572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608755, 33.283970, 24.373768>,  <27.421705, 33.168327, 24.469887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608755, 33.283970, 24.373768>,  <27.920506, 33.476711, 24.213572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608755, 33.283970, 24.373768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559147, -0.246468, 0.791586,
		-0.282718, 0.840876, 0.461517,
		-0.779375, -0.481851, 0.400493,
		27.374943, 33.139416, 24.493916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926876, 33.693089, 24.981548>,  <27.920506, 33.476711, 24.213572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926876, 33.693089, 24.981548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632393, 33.423206, 25.002613>,  <27.455704, 33.261276, 25.015251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632393, 33.423206, 25.002613>,  <27.926876, 33.693089, 24.981548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632393, 33.423206, 25.002613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348432, -0.311182, 0.884172,
		-0.580167, 0.669283, 0.464183,
		-0.736207, -0.674704, 0.052662,
		27.411531, 33.220795, 25.018412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756121, 33.743271, 25.717178>,  <27.926876, 33.693089, 24.981548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756121, 33.743271, 25.717178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668604, 33.383213, 25.566513>,  <27.616093, 33.167179, 25.476114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668604, 33.383213, 25.566513>,  <27.756121, 33.743271, 25.717178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668604, 33.383213, 25.566513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350760, -0.432766, 0.830470,
		-0.910547, 0.049583, 0.410420,
		-0.218793, -0.900142, -0.376662,
		27.602966, 33.113171, 25.453514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321104, 33.451546, 26.200932>,  <27.756121, 33.743271, 25.717178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321104, 33.451546, 26.200932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438961, 33.145859, 25.971443>,  <27.509676, 32.962448, 25.833750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438961, 33.145859, 25.971443>,  <27.321104, 33.451546, 26.200932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438961, 33.145859, 25.971443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209521, -0.534103, 0.819045,
		-0.932355, -0.361533, 0.002750,
		0.294643, -0.764217, -0.573722,
		27.527353, 32.916595, 25.799326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984905, 32.752941, 26.404484>,  <27.321104, 33.451546, 26.200932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984905, 32.752941, 26.404484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339081, 32.669189, 26.238514>,  <27.551586, 32.618938, 26.138933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339081, 32.669189, 26.238514>,  <26.984905, 32.752941, 26.404484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339081, 32.669189, 26.238514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281814, -0.468042, 0.837566,
		-0.369568, -0.858544, -0.355418,
		0.885438, -0.209376, -0.414923,
		27.604712, 32.606377, 26.114037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113684, 32.219299, 26.830763>,  <26.984905, 32.752941, 26.404484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113684, 32.219299, 26.830763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448961, 32.249310, 26.614689>,  <27.650127, 32.267315, 26.485044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448961, 32.249310, 26.614689>,  <27.113684, 32.219299, 26.830763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448961, 32.249310, 26.614689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397434, -0.762307, 0.510817,
		-0.373464, -0.642852, -0.668780,
		0.838195, 0.075024, -0.540185,
		27.700420, 32.271816, 26.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363935, 31.503853, 26.519041>,  <27.113684, 32.219299, 26.830763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363935, 31.503853, 26.519041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687651, 31.736309, 26.553291>,  <27.881880, 31.875782, 26.573841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687651, 31.736309, 26.553291>,  <27.363935, 31.503853, 26.519041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687651, 31.736309, 26.553291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422468, -0.677101, 0.602540,
		0.408138, -0.451453, -0.793482,
		0.809286, 0.581140, 0.085627,
		27.930437, 31.910650, 26.578979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932451, 31.099403, 26.330360>,  <27.363935, 31.503853, 26.519041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932451, 31.099403, 26.330360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059031, 31.408352, 26.550652>,  <28.134979, 31.593721, 26.682827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059031, 31.408352, 26.550652>,  <27.932451, 31.099403, 26.330360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059031, 31.408352, 26.550652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534768, -0.624771, 0.568933,
		0.783507, 0.114473, -0.610748,
		0.316450, 0.772371, 0.550729,
		28.153965, 31.640064, 26.715870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554390, 30.940071, 26.493067>,  <27.932451, 31.099403, 26.330360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554390, 30.940071, 26.493067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452744, 31.207806, 26.772327>,  <28.391756, 31.368446, 26.939884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452744, 31.207806, 26.772327>,  <28.554390, 30.940071, 26.493067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452744, 31.207806, 26.772327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544426, -0.497630, 0.675252,
		0.799391, 0.551684, -0.237948,
		-0.254115, 0.669335, 0.698152,
		28.376509, 31.408606, 26.981773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163633, 31.004877, 27.053259>,  <28.554390, 30.940071, 26.493067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163633, 31.004877, 27.053259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827204, 31.128208, 27.231037>,  <28.625347, 31.202206, 27.337704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827204, 31.128208, 27.231037>,  <29.163633, 31.004877, 27.053259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827204, 31.128208, 27.231037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206244, -0.576785, 0.790432,
		0.500059, 0.756475, 0.421528,
		-0.841073, 0.308325, 0.444445,
		28.574883, 31.220705, 27.364370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324389, 31.027740, 27.666603>,  <29.163633, 31.004877, 27.053259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324389, 31.027740, 27.666603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928598, 31.052090, 27.719109>,  <28.691124, 31.066700, 27.750612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928598, 31.052090, 27.719109>,  <29.324389, 31.027740, 27.666603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928598, 31.052090, 27.719109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049661, -0.709209, 0.703247,
		0.135904, 0.702365, 0.698723,
		-0.989477, 0.060875, 0.131264,
		28.631756, 31.070353, 27.758488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255196, 31.060394, 28.424185>,  <29.324389, 31.027740, 27.666603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255196, 31.060394, 28.424185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910833, 30.941582, 28.258965>,  <28.704216, 30.870295, 28.159832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910833, 30.941582, 28.258965>,  <29.255196, 31.060394, 28.424185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910833, 30.941582, 28.258965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011754, -0.800045, 0.599825,
		-0.508626, 0.521249, 0.685273,
		-0.860907, -0.297032, -0.413050,
		28.652561, 30.852472, 28.135050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968792, 31.680496, 28.777365>,  <29.255196, 31.060394, 28.424185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968792, 31.680496, 28.777365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280094, 31.605263, 29.017014>,  <29.466875, 31.560122, 29.160803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280094, 31.605263, 29.017014>,  <28.968792, 31.680496, 28.777365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280094, 31.605263, 29.017014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466340, 0.812059, -0.350838,
		-0.420534, 0.552435, 0.719699,
		0.778253, -0.188085, 0.599121,
		29.513571, 31.548838, 29.196751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134895, 32.358490, 28.914444>,  <28.968792, 31.680496, 28.777365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134895, 32.358490, 28.914444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432997, 32.097664, 28.970165>,  <29.611858, 31.941168, 29.003597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432997, 32.097664, 28.970165>,  <29.134895, 32.358490, 28.914444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432997, 32.097664, 28.970165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629695, 0.619574, -0.468628,
		0.219267, 0.436966, 0.872343,
		0.745255, -0.652065, 0.139303,
		29.656574, 31.902044, 29.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599909, 32.765423, 29.175980>,  <29.134895, 32.358490, 28.914444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599909, 32.765423, 29.175980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789522, 32.444946, 29.029892>,  <29.903290, 32.252659, 28.942240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789522, 32.444946, 29.029892>,  <29.599909, 32.765423, 29.175980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789522, 32.444946, 29.029892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651227, 0.598181, -0.466994,
		0.592619, -0.016470, 0.805315,
		0.474032, -0.801192, -0.365219,
		29.931732, 32.204590, 28.920326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318752, 32.923080, 29.110378>,  <29.599909, 32.765423, 29.175980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318752, 32.923080, 29.110378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290524, 32.608513, 28.864918>,  <30.273586, 32.419773, 28.717642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290524, 32.608513, 28.864918>,  <30.318752, 32.923080, 29.110378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290524, 32.608513, 28.864918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685400, 0.408732, -0.602632,
		0.724739, -0.463124, 0.510166,
		-0.070573, -0.786419, -0.613649,
		30.269352, 32.372589, 28.680822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118439, 32.619446, 28.969934>,  <30.318752, 32.923080, 29.110378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118439, 32.619446, 28.969934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927658, 32.423470, 28.678051>,  <30.813190, 32.305885, 28.502920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927658, 32.423470, 28.678051>,  <31.118439, 32.619446, 28.969934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927658, 32.423470, 28.678051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766478, 0.174465, -0.618121,
		0.430151, -0.854120, 0.292317,
		-0.476950, -0.489940, -0.729710,
		30.784573, 32.276489, 28.459137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507025, 32.113949, 28.631187>,  <31.118439, 32.619446, 28.969934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507025, 32.113949, 28.631187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222448, 32.205883, 28.365547>,  <31.051702, 32.261044, 28.206163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222448, 32.205883, 28.365547>,  <31.507025, 32.113949, 28.631187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222448, 32.205883, 28.365547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695237, 0.092411, -0.712815,
		-0.102462, -0.968832, -0.225537,
		-0.711440, 0.229838, -0.664099,
		31.009016, 32.274834, 28.166317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486095, 31.579460, 28.013985>,  <31.507025, 32.113949, 28.631187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486095, 31.579460, 28.013985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317286, 31.912056, 27.869473>,  <31.216000, 32.111614, 27.782766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317286, 31.912056, 27.869473>,  <31.486095, 31.579460, 28.013985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317286, 31.912056, 27.869473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656170, 0.005171, -0.754595,
		-0.625569, -0.555517, -0.547781,
		-0.422023, 0.831489, -0.361279,
		31.190678, 32.161503, 27.761089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600443, 31.546383, 27.249468>,  <31.486095, 31.579460, 28.013985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600443, 31.546383, 27.249468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518736, 31.929573, 27.330025>,  <31.469711, 32.159489, 27.378359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518736, 31.929573, 27.330025>,  <31.600443, 31.546383, 27.249468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518736, 31.929573, 27.330025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567188, 0.283498, -0.773257,
		-0.797855, -0.043723, -0.601262,
		-0.204266, 0.957976, 0.201392,
		31.457457, 32.216965, 27.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472078, 31.828672, 26.601009>,  <31.600443, 31.546383, 27.249468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472078, 31.828672, 26.601009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542009, 32.159737, 26.814331>,  <31.583967, 32.358376, 26.942324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542009, 32.159737, 26.814331>,  <31.472078, 31.828672, 26.601009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542009, 32.159737, 26.814331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431839, 0.422311, -0.796975,
		-0.884845, 0.369634, -0.283585,
		0.174828, 0.827662, 0.533302,
		31.594458, 32.408035, 26.974321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189953, 32.438969, 26.232449>,  <31.472078, 31.828672, 26.601009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189953, 32.438969, 26.232449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455103, 32.579773, 26.496777>,  <31.614193, 32.664257, 26.655375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455103, 32.579773, 26.496777>,  <31.189953, 32.438969, 26.232449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455103, 32.579773, 26.496777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406680, 0.571772, -0.712522,
		-0.628657, 0.741055, 0.235855,
		0.662874, 0.352014, 0.660821,
		31.653965, 32.685379, 26.695023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221024, 33.177456, 26.137402>,  <31.189953, 32.438969, 26.232449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221024, 33.177456, 26.137402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555552, 33.096130, 26.341061>,  <31.756268, 33.047333, 26.463257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555552, 33.096130, 26.341061>,  <31.221024, 33.177456, 26.137402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555552, 33.096130, 26.341061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521629, 0.580935, -0.624834,
		-0.168744, 0.788148, 0.591903,
		0.836318, -0.203317, 0.509150,
		31.806448, 33.035137, 26.493805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499533, 33.902710, 26.319431>,  <31.221024, 33.177456, 26.137402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499533, 33.902710, 26.319431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776510, 33.614120, 26.319588>,  <31.942696, 33.440968, 26.319681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776510, 33.614120, 26.319588>,  <31.499533, 33.902710, 26.319431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776510, 33.614120, 26.319588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643999, 0.617840, -0.451154,
		0.325255, 0.312649, 0.892446,
		0.692442, -0.721474, 0.000390,
		31.984243, 33.397678, 26.319704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.092827, 28.584671, 30.913170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.457592, 28.491199, 31.048111>,  <28.676451, 28.435116, 31.129076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.457592, 28.491199, 31.048111>,  <28.092827, 28.584671, 30.913170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457592, 28.491199, 31.048111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264626, 0.963147, -0.048168,
		-0.313662, 0.133197, 0.940146,
		0.911915, -0.233679, 0.337350,
		28.731167, 28.421095, 31.149317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185522, 29.062805, 31.377123>,  <28.092827, 28.584671, 30.913170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185522, 29.062805, 31.377123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.550995, 28.938004, 31.272938>,  <28.770279, 28.863123, 31.210426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.550995, 28.938004, 31.272938>,  <28.185522, 29.062805, 31.377123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550995, 28.938004, 31.272938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311851, 0.949156, -0.043026,
		0.260644, -0.041913, 0.964525,
		0.913682, -0.312003, -0.260462,
		28.825100, 28.844402, 31.194799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695709, 29.532743, 31.717417>,  <28.185522, 29.062805, 31.377123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695709, 29.532743, 31.717417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.879393, 29.355423, 31.409492>,  <28.989603, 29.249031, 31.224737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.879393, 29.355423, 31.409492>,  <28.695709, 29.532743, 31.717417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879393, 29.355423, 31.409492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381064, 0.881106, -0.280075,
		0.802444, -0.164735, 0.573539,
		0.459211, -0.443300, -0.769812,
		29.017157, 29.222433, 31.178549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289083, 29.808723, 31.683983>,  <28.695709, 29.532743, 31.717417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289083, 29.808723, 31.683983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.203400, 29.687603, 31.312515>,  <29.151989, 29.614931, 31.089634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.203400, 29.687603, 31.312515>,  <29.289083, 29.808723, 31.683983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203400, 29.687603, 31.312515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466806, 0.803408, -0.369632,
		0.858025, -0.512688, -0.030749,
		-0.214210, -0.302800, -0.928669,
		29.139137, 29.596764, 31.033915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910303, 29.962929, 31.292419>,  <29.289083, 29.808723, 31.683983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910303, 29.962929, 31.292419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.617907, 29.918579, 31.023090>,  <29.442469, 29.891970, 30.861494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.617907, 29.918579, 31.023090>,  <29.910303, 29.962929, 31.292419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617907, 29.918579, 31.023090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369234, 0.765524, -0.526915,
		0.573865, -0.633782, -0.518651,
		-0.730989, -0.110874, -0.673321,
		29.398609, 29.885317, 30.821095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279184, 30.014019, 30.634510>,  <29.910303, 29.962929, 31.292419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279184, 30.014019, 30.634510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.898203, 30.066601, 30.524567>,  <29.669613, 30.098150, 30.458601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.898203, 30.066601, 30.524567>,  <30.279184, 30.014019, 30.634510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898203, 30.066601, 30.524567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275127, 0.758666, -0.590535,
		0.130898, -0.638080, -0.758762,
		-0.952455, 0.131456, -0.274860,
		29.612467, 30.106037, 30.442108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394045, 30.009615, 29.875420>,  <30.279184, 30.014019, 30.634510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394045, 30.009615, 29.875420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.026653, 30.152699, 29.942875>,  <29.806217, 30.238548, 29.983349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.026653, 30.152699, 29.942875>,  <30.394045, 30.009615, 29.875420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026653, 30.152699, 29.942875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112099, 0.644436, -0.756397,
		-0.379246, -0.675831, -0.632001,
		-0.918480, 0.357707, 0.168640,
		29.751110, 30.260010, 29.993467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125349, 30.105970, 29.240759>,  <30.394045, 30.009615, 29.875420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125349, 30.105970, 29.240759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.912079, 30.350822, 29.474346>,  <29.784117, 30.497734, 29.614498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.912079, 30.350822, 29.474346>,  <30.125349, 30.105970, 29.240759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912079, 30.350822, 29.474346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133511, 0.742499, -0.656407,
		-0.835404, -0.272013, -0.477607,
		-0.533174, 0.612131, 0.583970,
		29.752127, 30.534462, 29.649538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723877, 30.369165, 28.819460>,  <30.125349, 30.105970, 29.240759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723877, 30.369165, 28.819460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.718262, 30.633469, 29.119648>,  <29.714893, 30.792049, 29.299761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.718262, 30.633469, 29.119648>,  <29.723877, 30.369165, 28.819460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718262, 30.633469, 29.119648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000953, 0.750534, -0.660831,
		-0.999901, -0.009992, -0.009906,
		-0.014038, 0.660756, 0.750470,
		29.714050, 30.831696, 29.344790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026651, 30.664640, 29.018908>,  <29.723877, 30.369165, 28.819460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026651, 30.664640, 29.018908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.798441, 30.558041, 28.708172>,  <28.661514, 30.494081, 28.521730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.798441, 30.558041, 28.708172>,  <29.026651, 30.664640, 29.018908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798441, 30.558041, 28.708172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162774, -0.890434, 0.425009,
		-0.804989, 0.368927, 0.464635,
		-0.570524, -0.266497, -0.776841,
		28.627283, 30.478092, 28.475121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456812, 30.408417, 29.294914>,  <29.026651, 30.664640, 29.018908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456812, 30.408417, 29.294914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.452234, 30.236858, 28.933601>,  <28.449488, 30.133923, 28.716814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.452234, 30.236858, 28.933601>,  <28.456812, 30.408417, 29.294914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452234, 30.236858, 28.933601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123751, -0.895788, 0.426908,
		-0.992247, 0.116668, -0.042823,
		-0.011446, -0.428898, -0.903281,
		28.448801, 30.108189, 28.662617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025349, 29.848410, 29.309469>,  <28.456812, 30.408417, 29.294914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025349, 29.848410, 29.309469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.213028, 29.739094, 28.973572>,  <28.325636, 29.673504, 28.772034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.213028, 29.739094, 28.973572>,  <28.025349, 29.848410, 29.309469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213028, 29.739094, 28.973572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238925, -0.954730, 0.177216,
		-0.850159, 0.117486, -0.513252,
		0.469196, -0.273291, -0.839742,
		28.353786, 29.657106, 28.721649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542309, 29.412058, 28.999393>,  <28.025349, 29.848410, 29.309469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542309, 29.412058, 28.999393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.899288, 29.327698, 28.839867>,  <28.113476, 29.277082, 28.744150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.899288, 29.327698, 28.839867>,  <27.542309, 29.412058, 28.999393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899288, 29.327698, 28.839867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200513, -0.977320, 0.068119,
		-0.404137, 0.019175, -0.914497,
		0.892450, -0.210898, -0.398816,
		28.167023, 29.264429, 28.720222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376978, 29.055222, 28.402220>,  <27.542309, 29.412058, 28.999393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376978, 29.055222, 28.402220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.730221, 28.947777, 28.556087>,  <27.942167, 28.883310, 28.648407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.730221, 28.947777, 28.556087>,  <27.376978, 29.055222, 28.402220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730221, 28.947777, 28.556087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333717, -0.935925, 0.112589,
		0.329777, -0.227798, -0.916163,
		0.883108, -0.268610, 0.384667,
		27.995153, 28.867193, 28.671488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576742, 28.416088, 27.971184>,  <27.376978, 29.055222, 28.402220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576742, 28.416088, 27.971184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.829578, 28.406677, 28.280998>,  <27.981281, 28.401031, 28.466887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.829578, 28.406677, 28.280998>,  <27.576742, 28.416088, 27.971184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829578, 28.406677, 28.280998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155789, -0.982988, 0.097279,
		0.759071, -0.182154, -0.625005,
		0.632093, -0.023528, 0.774536,
		28.019207, 28.399618, 28.513359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897196, 27.777260, 28.040699>,  <27.576742, 28.416088, 27.971184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897196, 27.777260, 28.040699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.961180, 27.912205, 28.411774>,  <27.999569, 27.993172, 28.634418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.961180, 27.912205, 28.411774>,  <27.897196, 27.777260, 28.040699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961180, 27.912205, 28.411774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094745, -0.930201, 0.354612,
		0.982566, -0.144617, -0.116830,
		0.159958, 0.337360, 0.927686,
		28.009167, 28.013412, 28.690079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495337, 27.453588, 28.348852>,  <27.897196, 27.777260, 28.040699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495337, 27.453588, 28.348852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.261576, 27.593487, 28.641743>,  <28.121319, 27.677425, 28.817476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.261576, 27.593487, 28.641743>,  <28.495337, 27.453588, 28.348852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261576, 27.593487, 28.641743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045191, -0.914976, 0.400970,
		0.810206, 0.201237, 0.550518,
		-0.584401, 0.349747, 0.732225,
		28.086256, 27.698410, 28.861410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634045, 26.938623, 28.837513>,  <28.495337, 27.453588, 28.348852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634045, 26.938623, 28.837513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.321568, 27.132000, 28.995510>,  <28.134081, 27.248026, 29.090309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.321568, 27.132000, 28.995510>,  <28.634045, 26.938623, 28.837513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321568, 27.132000, 28.995510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336179, -0.858902, 0.386357,
		0.526043, 0.169030, 0.833491,
		-0.781193, 0.483443, 0.394995,
		28.087210, 27.277033, 29.114008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567150, 26.733681, 29.576456>,  <28.634045, 26.938623, 28.837513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567150, 26.733681, 29.576456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210447, 26.863861, 29.450695>,  <27.996426, 26.941969, 29.375238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210447, 26.863861, 29.450695>,  <28.567150, 26.733681, 29.576456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210447, 26.863861, 29.450695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426534, -0.836567, 0.343838,
		-0.151116, 0.440724, 0.884831,
		-0.891758, 0.325452, -0.314403,
		27.942921, 26.961496, 29.356375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071270, 26.393810, 30.032433>,  <28.567150, 26.733681, 29.576456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071270, 26.393810, 30.032433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.838572, 26.528702, 29.736366>,  <27.698952, 26.609636, 29.558725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.838572, 26.528702, 29.736366>,  <28.071270, 26.393810, 30.032433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838572, 26.528702, 29.736366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509164, -0.860632, 0.008075,
		-0.634288, 0.381564, 0.672374,
		-0.581748, 0.337227, -0.740167,
		27.664047, 26.629869, 29.514317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419830, 26.264408, 30.236498>,  <28.071270, 26.393810, 30.032433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419830, 26.264408, 30.236498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.379044, 26.267792, 29.838596>,  <27.354572, 26.269821, 29.599855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.379044, 26.267792, 29.838596>,  <27.419830, 26.264408, 30.236498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379044, 26.267792, 29.838596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399981, -0.915922, 0.033212,
		-0.910834, 0.401268, 0.096777,
		-0.101967, 0.008459, -0.994752,
		27.348454, 26.270329, 29.540171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730133, 26.125765, 30.143282>,  <27.419830, 26.264408, 30.236498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730133, 26.125765, 30.143282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.866690, 26.094414, 29.768623>,  <26.948624, 26.075603, 29.543827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.866690, 26.094414, 29.768623>,  <26.730133, 26.125765, 30.143282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866690, 26.094414, 29.768623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661528, -0.727948, -0.180202,
		-0.667708, 0.681138, -0.300362,
		0.341390, -0.078376, -0.936648,
		26.969107, 26.070902, 29.487629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076315, 26.079361, 29.833706>,  <26.730133, 26.125765, 30.143282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076315, 26.079361, 29.833706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.383585, 25.934788, 29.622322>,  <26.567947, 25.848043, 29.495491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.383585, 25.934788, 29.622322>,  <26.076315, 26.079361, 29.833706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383585, 25.934788, 29.622322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516365, -0.837745, -0.177627,
		-0.378514, 0.409327, -0.830168,
		0.768176, -0.361435, -0.528460,
		26.614038, 25.826357, 29.463783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.085037, 22.028091, 29.103031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883150, 22.345722, 29.238503>,  <31.762018, 22.536301, 29.319786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883150, 22.345722, 29.238503>,  <32.085037, 22.028091, 29.103031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883150, 22.345722, 29.238503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366448, 0.552280, -0.748801,
		-0.781653, -0.253822, -0.569731,
		-0.504713, 0.794079, 0.338678,
		31.731735, 22.583946, 29.340105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815722, 22.260653, 28.489996>,  <32.085037, 22.028091, 29.103031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815722, 22.260653, 28.489996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.765306, 22.568024, 28.740955>,  <31.735058, 22.752447, 28.891531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.765306, 22.568024, 28.740955>,  <31.815722, 22.260653, 28.489996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765306, 22.568024, 28.740955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314008, 0.630828, -0.709546,
		-0.941017, 0.107579, -0.320802,
		-0.126039, 0.768429, 0.627400,
		31.727495, 22.798552, 28.929176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550560, 22.752794, 28.040861>,  <31.815722, 22.260653, 28.489996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550560, 22.752794, 28.040861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696529, 22.948315, 28.357822>,  <31.784111, 23.065626, 28.548000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696529, 22.948315, 28.357822>,  <31.550560, 22.752794, 28.040861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696529, 22.948315, 28.357822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228303, 0.778134, -0.585136,
		-0.902611, 0.394439, 0.172366,
		0.364925, 0.488799, 0.792405,
		31.806007, 23.094954, 28.595543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115726, 23.380466, 28.249342>,  <31.550560, 22.752794, 28.040861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115726, 23.380466, 28.249342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500696, 23.432625, 28.344616>,  <31.731678, 23.463921, 28.401781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500696, 23.432625, 28.344616>,  <31.115726, 23.380466, 28.249342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500696, 23.432625, 28.344616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017257, 0.846010, -0.532888,
		-0.270995, 0.516976, 0.811972,
		0.962426, 0.130398, 0.238186,
		31.789425, 23.471745, 28.416071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116396, 24.011818, 28.533838>,  <31.115726, 23.380466, 28.249342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116396, 24.011818, 28.533838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504644, 23.936317, 28.474144>,  <31.737593, 23.891016, 28.438328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504644, 23.936317, 28.474144>,  <31.116396, 24.011818, 28.533838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504644, 23.936317, 28.474144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098215, 0.876966, -0.470410,
		0.219665, 0.441931, 0.869738,
		0.970619, -0.188753, -0.149235,
		31.795830, 23.879692, 28.429373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581360, 24.614870, 28.808723>,  <31.116396, 24.011818, 28.533838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581360, 24.614870, 28.808723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812845, 24.440502, 28.533024>,  <31.951736, 24.335882, 28.367603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812845, 24.440502, 28.533024>,  <31.581360, 24.614870, 28.808723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812845, 24.440502, 28.533024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272113, 0.899935, -0.340694,
		0.768796, 0.009609, 0.639422,
		0.578712, -0.435919, -0.689251,
		31.986460, 24.309727, 28.326248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153839, 25.200214, 28.766529>,  <31.581360, 24.614870, 28.808723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153839, 25.200214, 28.766529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188946, 24.925541, 28.477875>,  <32.210011, 24.760736, 28.304682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188946, 24.925541, 28.477875>,  <32.153839, 25.200214, 28.766529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188946, 24.925541, 28.477875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495253, 0.658637, -0.566500,
		0.864304, -0.307671, 0.397891,
		0.087770, -0.686684, -0.721638,
		32.215279, 24.719536, 28.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830448, 25.257219, 28.558973>,  <32.153839, 25.200214, 28.766529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830448, 25.257219, 28.558973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643265, 25.099556, 28.242580>,  <32.530952, 25.004957, 28.052744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643265, 25.099556, 28.242580>,  <32.830448, 25.257219, 28.558973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643265, 25.099556, 28.242580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444937, 0.668240, -0.596227,
		0.763573, -0.630948, -0.137335,
		-0.467961, -0.394158, -0.790982,
		32.502876, 24.981308, 28.005285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373707, 25.182089, 27.978952>,  <32.830448, 25.257219, 28.558973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373707, 25.182089, 27.978952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.008377, 25.168747, 27.816605>,  <32.789181, 25.160742, 27.719196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.008377, 25.168747, 27.816605>,  <33.373707, 25.182089, 27.978952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008377, 25.168747, 27.816605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225731, 0.788053, -0.572729,
		0.338949, -0.614703, -0.712217,
		-0.913323, -0.033356, -0.405867,
		32.734379, 25.158741, 27.694845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527225, 25.326057, 27.233475>,  <33.373707, 25.182089, 27.978952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527225, 25.326057, 27.233475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135201, 25.389919, 27.280796>,  <32.899986, 25.428236, 27.309189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135201, 25.389919, 27.280796>,  <33.527225, 25.326057, 27.233475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135201, 25.389919, 27.280796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061211, 0.808977, -0.584645,
		-0.189047, -0.565745, -0.802617,
		-0.980058, 0.159654, 0.118305,
		32.841183, 25.437815, 27.316288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134274, 25.258066, 26.622417>,  <33.527225, 25.326057, 27.233475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134274, 25.258066, 26.622417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890411, 25.513229, 26.810627>,  <32.744095, 25.666328, 26.923553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890411, 25.513229, 26.810627>,  <33.134274, 25.258066, 26.622417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890411, 25.513229, 26.810627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202473, 0.699228, -0.685627,
		-0.766373, -0.322726, -0.555446,
		-0.609654, 0.637909, 0.470526,
		32.707516, 25.704601, 26.951784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729382, 25.531597, 26.107044>,  <33.134274, 25.258066, 26.622417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729382, 25.531597, 26.107044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.690491, 25.794701, 26.405815>,  <32.667156, 25.952562, 26.585077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.690491, 25.794701, 26.405815>,  <32.729382, 25.531597, 26.107044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690491, 25.794701, 26.405815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034004, 0.747851, -0.662995,
		-0.994681, -0.089857, -0.050342,
		-0.097223, 0.657757, 0.746929,
		32.661324, 25.992027, 26.629894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399372, 26.055527, 25.811655>,  <32.729382, 25.531597, 26.107044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399372, 26.055527, 25.811655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566010, 26.214294, 26.138802>,  <32.665993, 26.309555, 26.335089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566010, 26.214294, 26.138802>,  <32.399372, 26.055527, 25.811655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566010, 26.214294, 26.138802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083849, 0.879038, -0.469320,
		-0.905218, 0.264092, 0.332919,
		0.416593, 0.396922, 0.817865,
		32.690987, 26.333370, 26.384161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050201, 26.709246, 25.871487>,  <32.399372, 26.055527, 25.811655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050201, 26.709246, 25.871487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390324, 26.733841, 26.080559>,  <32.594398, 26.748598, 26.206001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390324, 26.733841, 26.080559>,  <32.050201, 26.709246, 25.871487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390324, 26.733841, 26.080559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232650, 0.846924, -0.478115,
		-0.472067, 0.528147, 0.705843,
		0.850310, 0.061488, 0.522678,
		32.645416, 26.752287, 26.237362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298166, 26.838459, 25.827679>,  <32.050201, 26.709246, 25.871487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298166, 26.838459, 25.827679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128212, 26.886555, 25.468788>,  <31.026239, 26.915413, 25.253454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128212, 26.886555, 25.468788>,  <31.298166, 26.838459, 25.827679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128212, 26.886555, 25.468788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314089, -0.949149, 0.021538,
		-0.849012, 0.290960, 0.441045,
		-0.424885, 0.120241, -0.897227,
		31.000746, 26.922626, 25.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650873, 26.636837, 25.990131>,  <31.298166, 26.838459, 25.827679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650873, 26.636837, 25.990131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719822, 26.597843, 25.598053>,  <30.761190, 26.574446, 25.362806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719822, 26.597843, 25.598053>,  <30.650873, 26.636837, 25.990131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719822, 26.597843, 25.598053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486907, -0.873453, 0.001246,
		-0.856277, 0.477050, -0.198024,
		0.172370, -0.097486, -0.980196,
		30.771534, 26.568598, 25.303993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957352, 26.399580, 25.619320>,  <30.650873, 26.636837, 25.990131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957352, 26.399580, 25.619320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263441, 26.295639, 25.383724>,  <30.447096, 26.233274, 25.242367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263441, 26.295639, 25.383724>,  <29.957352, 26.399580, 25.619320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263441, 26.295639, 25.383724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344022, -0.938383, -0.032959,
		-0.544131, 0.227846, -0.807470,
		0.765226, -0.259853, -0.588987,
		30.493010, 26.217684, 25.207027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651802, 25.993782, 25.138950>,  <29.957352, 26.399580, 25.619320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651802, 25.993782, 25.138950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038013, 25.892651, 25.114174>,  <30.269739, 25.831972, 25.099308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038013, 25.892651, 25.114174>,  <29.651802, 25.993782, 25.138950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038013, 25.892651, 25.114174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245366, -0.963424, 0.107751,
		-0.086917, -0.088839, -0.992247,
		0.965526, -0.252829, -0.061940,
		30.327671, 25.816801, 25.095592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682367, 25.390314, 24.663769>,  <29.651802, 25.993782, 25.138950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682367, 25.390314, 24.663769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005459, 25.392246, 24.899582>,  <30.199314, 25.393406, 25.041069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005459, 25.392246, 24.899582>,  <29.682367, 25.390314, 24.663769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005459, 25.392246, 24.899582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205553, -0.934910, 0.289296,
		0.552557, -0.354853, -0.754162,
		0.807731, 0.004832, 0.589532,
		30.247778, 25.393696, 25.076441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036097, 24.761726, 24.509010>,  <29.682367, 25.390314, 24.663769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036097, 24.761726, 24.509010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.196199, 24.874668, 24.857738>,  <30.292261, 24.942434, 25.066975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.196199, 24.874668, 24.857738>,  <30.036097, 24.761726, 24.509010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196199, 24.874668, 24.857738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184213, -0.907140, 0.378367,
		0.897697, -0.312045, -0.311075,
		0.400257, 0.282355, 0.871820,
		30.316277, 24.959375, 25.119284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329582, 24.196518, 24.766434>,  <30.036097, 24.761726, 24.509010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329582, 24.196518, 24.766434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346735, 24.417969, 25.099098>,  <30.357027, 24.550838, 25.298697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346735, 24.417969, 25.099098>,  <30.329582, 24.196518, 24.766434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346735, 24.417969, 25.099098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143581, -0.820370, 0.553514,
		0.988709, -0.143147, 0.044310,
		0.042883, 0.553626, 0.831660,
		30.359600, 24.584057, 25.348597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868906, 23.908590, 25.297138>,  <30.329582, 24.196518, 24.766434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868906, 23.908590, 25.297138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596025, 24.113510, 25.505810>,  <30.432297, 24.236462, 25.631012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596025, 24.113510, 25.505810>,  <30.868906, 23.908590, 25.297138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596025, 24.113510, 25.505810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221978, -0.824931, 0.519823,
		0.696653, 0.238824, 0.676489,
		-0.682203, 0.512301, 0.521677,
		30.391365, 24.267200, 25.662313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982555, 23.739206, 25.986198>,  <30.868906, 23.908590, 25.297138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982555, 23.739206, 25.986198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.610794, 23.886826, 25.987312>,  <30.387737, 23.975397, 25.987980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.610794, 23.886826, 25.987312>,  <30.982555, 23.739206, 25.986198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610794, 23.886826, 25.987312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256383, -0.651061, 0.714414,
		0.265467, 0.663266, 0.699718,
		-0.929406, 0.369050, 0.002785,
		30.331972, 23.997540, 25.988148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887850, 23.766958, 26.660475>,  <30.982555, 23.739206, 25.986198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887850, 23.766958, 26.660475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521219, 23.795673, 26.503128>,  <30.301241, 23.812902, 26.408720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521219, 23.795673, 26.503128>,  <30.887850, 23.766958, 26.660475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521219, 23.795673, 26.503128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365999, -0.546816, 0.753019,
		-0.161040, 0.834170, 0.527472,
		-0.916575, 0.071789, -0.393365,
		30.246246, 23.817209, 26.385118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543989, 23.924423, 27.185783>,  <30.887850, 23.766958, 26.660475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543989, 23.924423, 27.185783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.267885, 23.786739, 26.931206>,  <30.102222, 23.704130, 26.778460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.267885, 23.786739, 26.931206>,  <30.543989, 23.924423, 27.185783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267885, 23.786739, 26.931206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416956, -0.529649, 0.738661,
		-0.591345, 0.775238, 0.222075,
		-0.690260, -0.344208, -0.636445,
		30.060808, 23.683477, 26.740273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879181, 24.136881, 27.468668>,  <30.543989, 23.924423, 27.185783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879181, 24.136881, 27.468668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.820133, 23.819973, 27.231850>,  <29.784704, 23.629827, 27.089758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.820133, 23.819973, 27.231850>,  <29.879181, 24.136881, 27.468668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820133, 23.819973, 27.231850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436790, -0.484844, 0.757721,
		-0.887369, 0.370454, -0.274483,
		-0.147620, -0.792269, -0.592046,
		29.775846, 23.582293, 27.054235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132299, 23.982498, 27.424778>,  <29.879181, 24.136881, 27.468668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132299, 23.982498, 27.424778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.288275, 23.639900, 27.289505>,  <29.381859, 23.434341, 27.208342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.288275, 23.639900, 27.289505>,  <29.132299, 23.982498, 27.424778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288275, 23.639900, 27.289505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545884, -0.510771, 0.664172,
		-0.741593, -0.074377, -0.666714,
		0.389937, -0.856494, -0.338183,
		29.405256, 23.382952, 27.188051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607273, 23.501385, 27.254221>,  <29.132299, 23.982498, 27.424778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607273, 23.501385, 27.254221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.936607, 23.288197, 27.332256>,  <29.134209, 23.160284, 27.379078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.936607, 23.288197, 27.332256>,  <28.607273, 23.501385, 27.254221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936607, 23.288197, 27.332256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520343, -0.571600, 0.634442,
		-0.226625, -0.623874, -0.747946,
		0.823337, -0.532969, 0.195090,
		29.183609, 23.128305, 27.390783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093180, 23.297436, 26.687613>,  <28.607273, 23.501385, 27.254221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093180, 23.297436, 26.687613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701313, 23.377460, 26.681595>,  <27.466192, 23.425474, 26.677984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701313, 23.377460, 26.681595>,  <28.093180, 23.297436, 26.687613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701313, 23.377460, 26.681595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170253, 0.789339, -0.589880,
		-0.106136, -0.580448, -0.807351,
		-0.979668, 0.200061, -0.015046,
		27.407413, 23.437479, 26.677080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925087, 23.324600, 25.981359>,  <28.093180, 23.297436, 26.687613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925087, 23.324600, 25.981359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.624104, 23.511017, 26.167526>,  <27.443514, 23.622866, 26.279226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.624104, 23.511017, 26.167526>,  <27.925087, 23.324600, 25.981359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624104, 23.511017, 26.167526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088652, 0.771867, -0.629573,
		-0.652648, -0.432466, -0.622113,
		-0.752457, 0.466041, 0.465418,
		27.398367, 23.650829, 26.307152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474688, 23.587275, 25.371819>,  <27.925087, 23.324600, 25.981359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474688, 23.587275, 25.371819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403215, 23.790413, 25.708904>,  <27.360332, 23.912296, 25.911156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403215, 23.790413, 25.708904>,  <27.474688, 23.587275, 25.371819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403215, 23.790413, 25.708904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069228, 0.860862, -0.504107,
		-0.981469, -0.031734, -0.188975,
		-0.178679, 0.507848, 0.842712,
		27.349611, 23.942768, 25.961718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999279, 24.103233, 25.218771>,  <27.474688, 23.587275, 25.371819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999279, 24.103233, 25.218771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.136610, 24.260460, 25.559975>,  <27.219009, 24.354795, 25.764698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.136610, 24.260460, 25.559975>,  <26.999279, 24.103233, 25.218771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136610, 24.260460, 25.559975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054644, 0.898318, -0.435935,
		-0.937625, 0.196280, 0.286939,
		0.343327, 0.393064, 0.853010,
		27.239609, 24.378380, 25.815878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666275, 24.769941, 25.263800>,  <26.999279, 24.103233, 25.218771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666275, 24.769941, 25.263800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.979008, 24.789150, 25.512455>,  <27.166647, 24.800674, 25.661648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.979008, 24.789150, 25.512455>,  <26.666275, 24.769941, 25.263800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979008, 24.789150, 25.512455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272486, 0.870458, -0.409943,
		-0.560798, 0.489894, 0.667465,
		0.781829, 0.048021, 0.621640,
		27.213556, 24.803556, 25.698948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694477, 25.438061, 25.556963>,  <26.666275, 24.769941, 25.263800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694477, 25.438061, 25.556963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.069967, 25.303684, 25.587788>,  <27.295261, 25.223057, 25.606283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.069967, 25.303684, 25.587788>,  <26.694477, 25.438061, 25.556963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069967, 25.303684, 25.587788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344665, 0.913907, -0.214427,
		0.001607, 0.227849, 0.973695,
		0.938724, -0.335944, 0.077063,
		27.351585, 25.202902, 25.610907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053257, 25.964264, 25.906927>,  <26.694477, 25.438061, 25.556963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053257, 25.964264, 25.906927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.342928, 25.743160, 25.741993>,  <27.516731, 25.610498, 25.643032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.342928, 25.743160, 25.741993>,  <27.053257, 25.964264, 25.906927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342928, 25.743160, 25.741993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487432, 0.833255, -0.260954,
		0.487826, -0.012008, 0.872858,
		0.724180, -0.552759, -0.412337,
		27.560183, 25.577333, 25.618292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683693, 26.281834, 26.166451>,  <27.053257, 25.964264, 25.906927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683693, 26.281834, 26.166451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.719986, 26.108524, 25.807777>,  <27.741762, 26.004539, 25.592573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.719986, 26.108524, 25.807777>,  <27.683693, 26.281834, 26.166451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719986, 26.108524, 25.807777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444231, 0.823462, -0.352942,
		0.891306, -0.366311, 0.267189,
		0.090733, -0.433273, -0.896684,
		27.747206, 25.978542, 25.538773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334061, 26.518572, 26.000187>,  <27.683693, 26.281834, 26.166451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334061, 26.518572, 26.000187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.163858, 26.389778, 25.661892>,  <28.061737, 26.312502, 25.458916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.163858, 26.389778, 25.661892>,  <28.334061, 26.518572, 26.000187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163858, 26.389778, 25.661892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307365, 0.827585, -0.469713,
		0.851160, -0.459814, -0.253174,
		-0.425504, -0.321984, -0.845738,
		28.036207, 26.293182, 25.408171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891300, 26.567514, 25.467714>,  <28.334061, 26.518572, 26.000187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891300, 26.567514, 25.467714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.532679, 26.584873, 25.291393>,  <28.317505, 26.595287, 25.185600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.532679, 26.584873, 25.291393>,  <28.891300, 26.567514, 25.467714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532679, 26.584873, 25.291393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309659, 0.772984, -0.553721,
		0.316706, -0.632940, -0.706459,
		-0.896554, 0.043395, -0.440804,
		28.263712, 26.597891, 25.159151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972792, 26.705019, 24.720039>,  <28.891300, 26.567514, 25.467714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972792, 26.705019, 24.720039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.593542, 26.823006, 24.767460>,  <28.365992, 26.893797, 24.795912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.593542, 26.823006, 24.767460>,  <28.972792, 26.705019, 24.720039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593542, 26.823006, 24.767460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201663, 0.846351, -0.492973,
		-0.245745, -0.443492, -0.861930,
		-0.948125, 0.294965, 0.118551,
		28.309105, 26.911495, 24.803024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932465, 27.266134, 24.185505>,  <28.972792, 26.705019, 24.720039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932465, 27.266134, 24.185505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.600557, 27.305450, 24.405258>,  <28.401413, 27.329041, 24.537109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.600557, 27.305450, 24.405258>,  <28.932465, 27.266134, 24.185505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600557, 27.305450, 24.405258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051779, 0.966566, -0.251137,
		-0.555700, -0.236832, -0.796937,
		-0.829769, 0.098292, 0.549384,
		28.351627, 27.334938, 24.570074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370047, 27.414503, 23.672173>,  <28.932465, 27.266134, 24.185505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370047, 27.414503, 23.672173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.266006, 27.551945, 24.033123>,  <28.203583, 27.634411, 24.249693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.266006, 27.551945, 24.033123>,  <28.370047, 27.414503, 23.672173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266006, 27.551945, 24.033123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011464, 0.935575, -0.352942,
		-0.965513, -0.081456, -0.247285,
		-0.260102, 0.343605, 0.902376,
		28.187975, 27.655025, 24.303835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824080, 27.922792, 23.574810>,  <28.370047, 27.414503, 23.672173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824080, 27.922792, 23.574810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.995235, 28.004295, 23.927036>,  <28.097929, 28.053196, 24.138372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.995235, 28.004295, 23.927036>,  <27.824080, 27.922792, 23.574810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995235, 28.004295, 23.927036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092264, 0.979015, -0.181704,
		-0.899110, -0.003496, 0.437708,
		0.427888, 0.203756, 0.880565,
		28.123602, 28.065422, 24.191206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.079464, 25.441538, 25.650352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.451309, 25.411915, 25.505939>,  <40.674416, 25.394142, 25.419292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.451309, 25.411915, 25.505939>,  <40.079464, 25.441538, 25.650352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451309, 25.411915, 25.505939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065350, 0.997203, -0.036284,
		0.362707, 0.010136, 0.931848,
		0.929609, -0.074057, -0.361030,
		40.730190, 25.389698, 25.397631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559448, 25.852680, 26.075947>,  <40.079464, 25.441538, 25.650352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559448, 25.852680, 26.075947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721912, 25.826260, 25.711384>,  <40.819393, 25.810408, 25.492645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721912, 25.826260, 25.711384>,  <40.559448, 25.852680, 26.075947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721912, 25.826260, 25.711384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145015, 0.989404, -0.007080,
		0.902220, -0.129293, 0.411439,
		0.406164, -0.066052, -0.911410,
		40.843761, 25.806444, 25.437962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240410, 26.202328, 26.115541>,  <40.559448, 25.852680, 26.075947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240410, 26.202328, 26.115541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.157982, 26.193226, 25.724232>,  <41.108524, 26.187765, 25.489447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.157982, 26.193226, 25.724232>,  <41.240410, 26.202328, 26.115541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157982, 26.193226, 25.724232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266531, 0.960625, -0.078489,
		0.941540, -0.276914, -0.191887,
		-0.206067, -0.022756, -0.978273,
		41.096161, 26.186399, 25.430750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685719, 26.671705, 25.959736>,  <41.240410, 26.202328, 26.115541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685719, 26.671705, 25.959736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.453938, 26.613068, 25.639050>,  <41.314869, 26.577885, 25.446638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.453938, 26.613068, 25.639050>,  <41.685719, 26.671705, 25.959736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453938, 26.613068, 25.639050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196141, 0.929695, -0.311762,
		0.791054, -0.337900, -0.509959,
		-0.579450, -0.146596, -0.801715,
		41.280102, 26.569088, 25.398535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059025, 27.026899, 25.509230>,  <41.685719, 26.671705, 25.959736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059025, 27.026899, 25.509230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712540, 27.004902, 25.310577>,  <41.504646, 26.991703, 25.191385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712540, 27.004902, 25.310577>,  <42.059025, 27.026899, 25.509230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712540, 27.004902, 25.310577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035646, 0.984591, -0.171202,
		0.498395, -0.166001, -0.850909,
		-0.866217, -0.054995, -0.496633,
		41.452675, 26.988403, 25.161587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138309, 27.236103, 24.869379>,  <42.059025, 27.026899, 25.509230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138309, 27.236103, 24.869379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.750622, 27.289734, 24.951973>,  <41.518009, 27.321913, 25.001530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.750622, 27.289734, 24.951973>,  <42.138309, 27.236103, 24.869379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750622, 27.289734, 24.951973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080357, 0.965051, -0.249439,
		-0.232713, -0.225169, -0.946120,
		-0.969220, 0.134076, 0.206486,
		41.459854, 27.329956, 25.013918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747356, 27.473249, 24.245153>,  <42.138309, 27.236103, 24.869379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747356, 27.473249, 24.245153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.524330, 27.598278, 24.552769>,  <41.390514, 27.673294, 24.737339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.524330, 27.598278, 24.552769>,  <41.747356, 27.473249, 24.245153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524330, 27.598278, 24.552769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126262, 0.947558, -0.293586,
		-0.820475, -0.066593, -0.567790,
		-0.557565, 0.312570, 0.769040,
		41.357059, 27.692049, 24.783480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410973, 27.980228, 23.936792>,  <41.747356, 27.473249, 24.245153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410973, 27.980228, 23.936792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340927, 28.064022, 24.321594>,  <41.298901, 28.114298, 24.552475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340927, 28.064022, 24.321594>,  <41.410973, 27.980228, 23.936792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340927, 28.064022, 24.321594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006851, 0.976819, -0.213957,
		-0.984525, -0.044057, -0.169618,
		-0.175112, 0.209484, 0.962004,
		41.288395, 28.126867, 24.610195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751919, 28.458721, 24.036243>,  <41.410973, 27.980228, 23.936792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751919, 28.458721, 24.036243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.985863, 28.497131, 24.358418>,  <41.126228, 28.520178, 24.551722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.985863, 28.497131, 24.358418>,  <40.751919, 28.458721, 24.036243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985863, 28.497131, 24.358418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088126, 0.979568, -0.180775,
		-0.806336, 0.176707, 0.564444,
		0.584855, 0.096024, 0.805434,
		41.161320, 28.525938, 24.600048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319935, 28.732960, 24.491341>,  <40.751919, 28.458721, 24.036243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319935, 28.732960, 24.491341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.677956, 28.828182, 24.642181>,  <40.892769, 28.885315, 24.732687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.677956, 28.828182, 24.642181>,  <40.319935, 28.732960, 24.491341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677956, 28.828182, 24.642181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235011, 0.970446, -0.054819,
		-0.379008, -0.039558, 0.924547,
		0.895054, 0.238055, 0.377103,
		40.946472, 28.899599, 24.755312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243111, 29.205166, 25.001884>,  <40.319935, 28.732960, 24.491341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243111, 29.205166, 25.001884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.620049, 29.254826, 24.877583>,  <40.846210, 29.284622, 24.803001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.620049, 29.254826, 24.877583>,  <40.243111, 29.205166, 25.001884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620049, 29.254826, 24.877583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132177, 0.991214, -0.004822,
		0.307428, 0.045618, 0.950477,
		0.942347, 0.124149, -0.310757,
		40.902752, 29.292070, 24.784355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481136, 29.779505, 25.405544>,  <40.243111, 29.205166, 25.001884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481136, 29.779505, 25.405544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740051, 29.745476, 25.102551>,  <40.895401, 29.725058, 24.920753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740051, 29.745476, 25.102551>,  <40.481136, 29.779505, 25.405544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740051, 29.745476, 25.102551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165819, 0.954238, -0.248865,
		0.743994, 0.286692, 0.603557,
		0.647285, -0.085073, -0.757486,
		40.934238, 29.719954, 24.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938522, 30.423002, 25.485102>,  <40.481136, 29.779505, 25.405544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938522, 30.423002, 25.485102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013512, 30.291492, 25.114857>,  <41.058506, 30.212587, 24.892710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013512, 30.291492, 25.114857>,  <40.938522, 30.423002, 25.485102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013512, 30.291492, 25.114857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197654, 0.935674, -0.292313,
		0.962178, -0.128150, 0.240397,
		0.187473, -0.328772, -0.925615,
		41.069752, 30.192862, 24.837172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572327, 30.684530, 25.297962>,  <40.938522, 30.423002, 25.485102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572327, 30.684530, 25.297962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397568, 30.611130, 24.945724>,  <41.292713, 30.567089, 24.734381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397568, 30.611130, 24.945724>,  <41.572327, 30.684530, 25.297962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397568, 30.611130, 24.945724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120715, 0.958155, -0.259553,
		0.891375, -0.219699, -0.396465,
		-0.436898, -0.183499, -0.880596,
		41.266499, 30.556080, 24.681545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927120, 31.099417, 24.859102>,  <41.572327, 30.684530, 25.297962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927120, 31.099417, 24.859102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.612846, 30.989956, 24.637177>,  <41.424282, 30.924278, 24.504021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.612846, 30.989956, 24.637177>,  <41.927120, 31.099417, 24.859102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612846, 30.989956, 24.637177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010396, 0.902555, -0.430450,
		0.618544, -0.332429, -0.711966,
		-0.785682, -0.273654, -0.554813,
		41.377140, 30.907860, 24.470732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068130, 31.205179, 24.104362>,  <41.927120, 31.099417, 24.859102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068130, 31.205179, 24.104362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.668983, 31.187031, 24.123135>,  <41.429497, 31.176142, 24.134398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.668983, 31.187031, 24.123135>,  <42.068130, 31.205179, 24.104362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668983, 31.187031, 24.123135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063334, 0.847016, -0.527782,
		-0.015804, -0.529629, -0.848083,
		-0.997867, -0.045371, 0.046930,
		41.369625, 31.173420, 24.137213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691761, 31.089144, 23.368492>,  <42.068130, 31.205179, 24.104362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691761, 31.089144, 23.368492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.456642, 31.272766, 23.634956>,  <41.315571, 31.382938, 23.794834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.456642, 31.272766, 23.634956>,  <41.691761, 31.089144, 23.368492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456642, 31.272766, 23.634956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249444, 0.680468, -0.689015,
		-0.769595, -0.571167, -0.285466,
		-0.587793, 0.459055, 0.666159,
		41.280304, 31.410482, 23.834805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179489, 31.403709, 22.951023>,  <41.691761, 31.089144, 23.368492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179489, 31.403709, 22.951023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110153, 31.587917, 23.299248>,  <41.068550, 31.698442, 23.508183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110153, 31.587917, 23.299248>,  <41.179489, 31.403709, 22.951023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110153, 31.587917, 23.299248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364544, 0.791155, -0.491102,
		-0.914910, -0.402487, 0.030738,
		-0.173344, 0.460519, 0.870560,
		41.058151, 31.726072, 23.560415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584965, 31.683378, 22.782946>,  <41.179489, 31.403709, 22.951023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584965, 31.683378, 22.782946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.715271, 31.882797, 23.104275>,  <40.793457, 32.002449, 23.297071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.715271, 31.882797, 23.104275>,  <40.584965, 31.683378, 22.782946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715271, 31.882797, 23.104275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192041, 0.866852, -0.460095,
		-0.925740, -0.004385, 0.378136,
		0.325770, 0.498546, 0.803322,
		40.813004, 32.032360, 23.345272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964893, 32.052288, 22.910471>,  <40.584965, 31.683378, 22.782946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964893, 32.052288, 22.910471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284866, 32.230995, 23.070721>,  <40.476849, 32.338219, 23.166870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284866, 32.230995, 23.070721>,  <39.964893, 32.052288, 22.910471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284866, 32.230995, 23.070721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290053, 0.872308, -0.393635,
		-0.525334, 0.198679, 0.827376,
		0.799934, 0.446772, 0.400626,
		40.524845, 32.365028, 23.190908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680397, 32.547539, 23.240835>,  <39.964893, 32.052288, 22.910471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680397, 32.547539, 23.240835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.062466, 32.652470, 23.185944>,  <40.291706, 32.715427, 23.153008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.062466, 32.652470, 23.185944>,  <39.680397, 32.547539, 23.240835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062466, 32.652470, 23.185944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291190, 0.916148, -0.275466,
		0.053460, 0.303077, 0.951465,
		0.955170, 0.262331, -0.137231,
		40.349018, 32.731171, 23.144773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311111, 32.643810, 23.830406>,  <39.680397, 32.547539, 23.240835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311111, 32.643810, 23.830406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.968487, 32.622372, 24.035706>,  <38.762913, 32.609509, 24.158886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.968487, 32.622372, 24.035706>,  <39.311111, 32.643810, 23.830406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968487, 32.622372, 24.035706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108592, -0.991042, 0.077745,
		0.504483, 0.122328, 0.854712,
		-0.856566, -0.053594, 0.513248,
		38.711517, 32.606293, 24.189680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357014, 32.238426, 24.461264>,  <39.311111, 32.643810, 23.830406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357014, 32.238426, 24.461264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.968933, 32.226742, 24.365051>,  <38.736084, 32.219730, 24.307323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.968933, 32.226742, 24.365051>,  <39.357014, 32.238426, 24.461264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968933, 32.226742, 24.365051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004379, -0.994658, 0.103131,
		-0.242260, 0.099005, 0.965147,
		-0.970201, -0.029211, -0.240532,
		38.677872, 32.217979, 24.292892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222786, 31.587524, 24.789948>,  <39.357014, 32.238426, 24.461264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222786, 31.587524, 24.789948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908916, 31.663834, 24.554020>,  <38.720592, 31.709620, 24.412462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908916, 31.663834, 24.554020>,  <39.222786, 31.587524, 24.789948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908916, 31.663834, 24.554020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273752, -0.960306, 0.053589,
		-0.556185, 0.203515, 0.805754,
		-0.784677, 0.190771, -0.589821,
		38.673512, 31.721066, 24.377073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571598, 31.268497, 25.089897>,  <39.222786, 31.587524, 24.789948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571598, 31.268497, 25.089897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.519131, 31.315647, 24.696167>,  <38.487652, 31.343937, 24.459929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.519131, 31.315647, 24.696167>,  <38.571598, 31.268497, 25.089897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519131, 31.315647, 24.696167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419334, -0.906304, -0.052654,
		-0.898307, 0.405855, 0.168306,
		-0.131167, 0.117876, -0.984328,
		38.479782, 31.351009, 24.400869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881935, 31.187006, 25.022060>,  <38.571598, 31.268497, 25.089897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881935, 31.187006, 25.022060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028313, 31.096970, 24.660858>,  <38.116138, 31.042948, 24.444138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028313, 31.096970, 24.660858>,  <37.881935, 31.187006, 25.022060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028313, 31.096970, 24.660858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324667, -0.940226, 0.102798,
		-0.872166, 0.255557, -0.417153,
		0.365947, -0.225092, -0.903004,
		38.138096, 31.029442, 24.389957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374672, 30.670401, 24.791901>,  <37.881935, 31.187006, 25.022060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374672, 30.670401, 24.791901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698380, 30.646378, 24.558155>,  <37.892605, 30.631964, 24.417908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698380, 30.646378, 24.558155>,  <37.374672, 30.670401, 24.791901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698380, 30.646378, 24.558155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116532, -0.991404, -0.059489,
		-0.575769, 0.116239, -0.809307,
		0.809265, -0.060058, -0.584365,
		37.941158, 30.628361, 24.382845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166492, 30.241549, 24.245825>,  <37.374672, 30.670401, 24.791901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166492, 30.241549, 24.245825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565994, 30.240143, 24.225933>,  <37.805695, 30.239300, 24.213997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565994, 30.240143, 24.225933>,  <37.166492, 30.241549, 24.245825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565994, 30.240143, 24.225933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004420, -0.999827, -0.018085,
		-0.049659, 0.018282, -0.998599,
		0.998756, -0.003516, -0.049731,
		37.865620, 30.239088, 24.211014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368679, 29.782290, 23.687424>,  <37.166492, 30.241549, 24.245825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368679, 29.782290, 23.687424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.690559, 29.815865, 23.922508>,  <37.883690, 29.836010, 24.063559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.690559, 29.815865, 23.922508>,  <37.368679, 29.782290, 23.687424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690559, 29.815865, 23.922508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004033, -0.990704, 0.135974,
		0.593661, -0.107049, -0.797563,
		0.804705, 0.083938, 0.587711,
		37.931973, 29.841045, 24.098822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734459, 29.231037, 23.445433>,  <37.368679, 29.782290, 23.687424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734459, 29.231037, 23.445433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902164, 29.320423, 23.797405>,  <38.002789, 29.374056, 24.008589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902164, 29.320423, 23.797405>,  <37.734459, 29.231037, 23.445433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902164, 29.320423, 23.797405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080392, -0.974564, 0.209194,
		0.904298, -0.016968, -0.426565,
		0.419264, 0.223466, 0.879932,
		38.027943, 29.387463, 24.061384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336693, 28.838026, 23.458151>,  <37.734459, 29.231037, 23.445433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336693, 28.838026, 23.458151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251095, 28.919022, 23.840397>,  <38.199734, 28.967619, 24.069744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251095, 28.919022, 23.840397>,  <38.336693, 28.838026, 23.458151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251095, 28.919022, 23.840397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168023, -0.956068, 0.240212,
		0.962275, 0.211970, 0.170574,
		-0.213998, 0.202489, 0.955617,
		38.186897, 28.979769, 24.127083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957741, 28.516087, 23.895985>,  <38.336693, 28.838026, 23.458151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957741, 28.516087, 23.895985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623127, 28.554520, 24.111755>,  <38.422359, 28.577579, 24.241219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623127, 28.554520, 24.111755>,  <38.957741, 28.516087, 23.895985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623127, 28.554520, 24.111755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062111, -0.961530, 0.267587,
		0.544385, 0.257349, 0.798383,
		-0.836533, 0.096082, 0.539427,
		38.372166, 28.583344, 24.273582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242725, 28.253605, 24.562387>,  <38.957741, 28.516087, 23.895985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242725, 28.253605, 24.562387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843033, 28.259659, 24.576862>,  <38.603218, 28.263292, 24.585548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843033, 28.259659, 24.576862>,  <39.242725, 28.253605, 24.562387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843033, 28.259659, 24.576862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001043, -0.932474, 0.361236,
		0.039214, 0.360920, 0.931772,
		-0.999230, 0.015137, 0.036189,
		38.543262, 28.264200, 24.587719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014217, 28.019720, 25.233299>,  <39.242725, 28.253605, 24.562387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014217, 28.019720, 25.233299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700203, 27.938911, 24.999065>,  <38.511795, 27.890427, 24.858526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700203, 27.938911, 24.999065>,  <39.014217, 28.019720, 25.233299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700203, 27.938911, 24.999065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003390, -0.946711, 0.322066,
		-0.619443, 0.250848, 0.743885,
		-0.785034, -0.202023, -0.585583,
		38.464691, 27.878304, 24.823391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626839, 27.573069, 25.652245>,  <39.014217, 28.019720, 25.233299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626839, 27.573069, 25.652245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510857, 27.499897, 25.276485>,  <38.441269, 27.455994, 25.051031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510857, 27.499897, 25.276485>,  <38.626839, 27.573069, 25.652245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510857, 27.499897, 25.276485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058154, -0.983116, 0.173494,
		-0.955273, -0.004325, 0.295695,
		-0.289952, -0.182930, -0.939396,
		38.423870, 27.445019, 24.994667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973785, 27.162285, 25.712904>,  <38.626839, 27.573069, 25.652245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973785, 27.162285, 25.712904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.134785, 27.115051, 25.349796>,  <38.231384, 27.086710, 25.131931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.134785, 27.115051, 25.349796>,  <37.973785, 27.162285, 25.712904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134785, 27.115051, 25.349796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032135, -0.992857, 0.114905,
		-0.914854, -0.017078, -0.403423,
		0.402503, -0.118086, -0.907770,
		38.255535, 27.079626, 25.077465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594009, 26.614510, 25.452087>,  <37.973785, 27.162285, 25.712904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594009, 26.614510, 25.452087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909374, 26.629074, 25.206459>,  <38.098595, 26.637812, 25.059082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909374, 26.629074, 25.206459>,  <37.594009, 26.614510, 25.452087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909374, 26.629074, 25.206459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090254, -0.994291, 0.056923,
		-0.608491, -0.100301, -0.787196,
		0.788411, 0.036410, -0.614069,
		38.145897, 26.639997, 25.022238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409401, 26.095879, 25.009624>,  <37.594009, 26.614510, 25.452087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409401, 26.095879, 25.009624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802769, 26.164822, 24.987057>,  <38.038788, 26.206188, 24.973516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802769, 26.164822, 24.987057>,  <37.409401, 26.095879, 25.009624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802769, 26.164822, 24.987057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175528, -0.982817, 0.057100,
		-0.045609, -0.066056, -0.996773,
		0.983417, 0.172357, -0.056420,
		38.097794, 26.216528, 24.970131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656536, 25.573645, 24.586050>,  <37.409401, 26.095879, 25.009624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656536, 25.573645, 24.586050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.996780, 25.696926, 24.756447>,  <38.200928, 25.770895, 24.858685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.996780, 25.696926, 24.756447>,  <37.656536, 25.573645, 24.586050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996780, 25.696926, 24.756447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291479, -0.950707, 0.105810,
		0.437606, 0.034165, -0.898518,
		0.850612, 0.308203, 0.425993,
		38.251965, 25.789387, 24.884245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164822, 25.191319, 24.229443>,  <37.656536, 25.573645, 24.586050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164822, 25.191319, 24.229443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.365585, 25.307392, 24.555359>,  <38.486042, 25.377035, 24.750910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.365585, 25.307392, 24.555359>,  <38.164822, 25.191319, 24.229443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365585, 25.307392, 24.555359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449305, -0.892434, 0.041065,
		0.739065, 0.345479, -0.578297,
		0.501905, 0.290182, 0.814792,
		38.516155, 25.394447, 24.799797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805729, 24.845715, 24.106686>,  <38.164822, 25.191319, 24.229443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805729, 24.845715, 24.106686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753262, 24.916882, 24.496792>,  <38.721783, 24.959581, 24.730856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753262, 24.916882, 24.496792>,  <38.805729, 24.845715, 24.106686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753262, 24.916882, 24.496792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163368, -0.966435, 0.198278,
		0.977807, 0.185334, 0.097697,
		-0.131165, 0.177917, 0.975265,
		38.713913, 24.970257, 24.789371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290840, 24.463081, 24.394964>,  <38.805729, 24.845715, 24.106686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290840, 24.463081, 24.394964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049309, 24.544502, 24.703239>,  <38.904388, 24.593355, 24.888205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049309, 24.544502, 24.703239>,  <39.290840, 24.463081, 24.394964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049309, 24.544502, 24.703239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150976, -0.920141, 0.361312,
		0.782686, 0.334525, 0.524876,
		-0.603828, 0.203550, 0.770687,
		38.868160, 24.605568, 24.934446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.735651, 25.945732, 28.897676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.057856, 25.712879, 28.941990>,  <26.251179, 25.573168, 28.968578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.057856, 25.712879, 28.941990>,  <25.735651, 25.945732, 28.897676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057856, 25.712879, 28.941990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574933, -0.722454, 0.384073,
		-0.143545, -0.373069, -0.916632,
		0.805511, -0.582133, 0.110785,
		26.299509, 25.538239, 28.975225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572605, 25.297667, 28.622051>,  <25.735651, 25.945732, 28.897676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572605, 25.297667, 28.622051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.859966, 25.250648, 28.896301>,  <26.032383, 25.222437, 29.060852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.859966, 25.250648, 28.896301>,  <25.572605, 25.297667, 28.622051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859966, 25.250648, 28.896301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533205, -0.726048, 0.434220,
		0.446757, -0.677523, -0.584269,
		0.718401, -0.117544, 0.685626,
		26.075487, 25.215385, 29.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796570, 24.625483, 28.559343>,  <25.572605, 25.297667, 28.622051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796570, 24.625483, 28.559343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.938986, 24.706062, 28.924343>,  <26.024435, 24.754410, 29.143343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.938986, 24.706062, 28.924343>,  <25.796570, 24.625483, 28.559343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938986, 24.706062, 28.924343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297856, -0.901090, 0.315150,
		0.885730, -0.383999, -0.260820,
		0.356039, 0.201451, 0.912498,
		26.045797, 24.766499, 29.198093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168180, 24.092571, 28.687792>,  <25.796570, 24.625483, 28.559343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168180, 24.092571, 28.687792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.074884, 24.239075, 29.048115>,  <26.018908, 24.326977, 29.264309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.074884, 24.239075, 29.048115>,  <26.168180, 24.092571, 28.687792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074884, 24.239075, 29.048115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167774, -0.927621, 0.333723,
		0.957837, -0.073295, 0.277808,
		-0.233240, 0.366261, 0.900806,
		26.004911, 24.348953, 29.318357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407907, 23.559587, 29.139364>,  <26.168180, 24.092571, 28.687792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407907, 23.559587, 29.139364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.170469, 23.782940, 29.371178>,  <26.028006, 23.916950, 29.510265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.170469, 23.782940, 29.371178>,  <26.407907, 23.559587, 29.139364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170469, 23.782940, 29.371178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268716, -0.816320, 0.511286,
		0.758575, 0.147767, 0.634609,
		-0.593595, 0.558379, 0.579532,
		25.992392, 23.950453, 29.545038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548780, 23.373800, 29.883915>,  <26.407907, 23.559587, 29.139364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548780, 23.373800, 29.883915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.194237, 23.557076, 29.910542>,  <25.981510, 23.667040, 29.926517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.194237, 23.557076, 29.910542>,  <26.548780, 23.373800, 29.883915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194237, 23.557076, 29.910542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270307, -0.628821, 0.729053,
		0.375900, 0.628210, 0.681213,
		-0.886360, 0.458187, 0.066564,
		25.928329, 23.694532, 29.930511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395302, 23.256079, 30.613041>,  <26.548780, 23.373800, 29.883915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395302, 23.256079, 30.613041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.033493, 23.349300, 30.470200>,  <25.816408, 23.405233, 30.384495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.033493, 23.349300, 30.470200>,  <26.395302, 23.256079, 30.613041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033493, 23.349300, 30.470200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421041, -0.620771, 0.661338,
		-0.067551, 0.748551, 0.659627,
		-0.904523, 0.233056, -0.357104,
		25.762136, 23.419218, 30.363068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933952, 23.475971, 31.230612>,  <26.395302, 23.256079, 30.613041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933952, 23.475971, 31.230612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.711519, 23.357174, 30.920113>,  <25.578058, 23.285894, 30.733812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.711519, 23.357174, 30.920113>,  <25.933952, 23.475971, 31.230612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711519, 23.357174, 30.920113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523275, -0.600516, 0.604619,
		-0.645719, 0.742411, 0.178528,
		-0.556085, -0.296995, -0.776250,
		25.544693, 23.268076, 30.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238274, 23.455027, 31.536606>,  <25.933952, 23.475971, 31.230612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238274, 23.455027, 31.536606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.249369, 23.216213, 31.215912>,  <25.256025, 23.072926, 31.023495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.249369, 23.216213, 31.215912>,  <25.238274, 23.455027, 31.536606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249369, 23.216213, 31.215912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471606, -0.714989, 0.516119,
		-0.881373, 0.363786, -0.301399,
		0.027740, -0.597035, -0.801736,
		25.257690, 23.037104, 30.975391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682686, 22.920126, 31.676735>,  <25.238274, 23.455027, 31.536606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682686, 22.920126, 31.676735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.847818, 22.754398, 31.352287>,  <24.946898, 22.654963, 31.157619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.847818, 22.754398, 31.352287>,  <24.682686, 22.920126, 31.676735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847818, 22.754398, 31.352287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357107, -0.892872, 0.274325,
		-0.837883, 0.176406, -0.516560,
		0.412829, -0.414319, -0.811118,
		24.971666, 22.630102, 31.108952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195017, 22.527159, 31.392839>,  <24.682686, 22.920126, 31.676735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195017, 22.527159, 31.392839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.539968, 22.356277, 31.284176>,  <24.746939, 22.253748, 31.218977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.539968, 22.356277, 31.284176>,  <24.195017, 22.527159, 31.392839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539968, 22.356277, 31.284176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336915, -0.884804, 0.321885,
		-0.377877, -0.186060, -0.906968,
		0.862379, -0.427204, -0.271660,
		24.798681, 22.228117, 31.202679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.020340, 21.886007, 31.196133>,  <24.195017, 22.527159, 31.392839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.020340, 21.886007, 31.196133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.410284, 21.838432, 31.271500>,  <24.644251, 21.809887, 31.316719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.410284, 21.838432, 31.271500>,  <24.020340, 21.886007, 31.196133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.410284, 21.838432, 31.271500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199961, -0.840053, 0.504309,
		0.098301, -0.529307, -0.842717,
		0.974860, -0.118937, 0.188418,
		24.702742, 21.802752, 31.328026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.198187, 21.201553, 31.154739>,  <24.020340, 21.886007, 31.196133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.198187, 21.201553, 31.154739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.485254, 21.340919, 31.395924>,  <24.657495, 21.424540, 31.540634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.485254, 21.340919, 31.395924>,  <24.198187, 21.201553, 31.154739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485254, 21.340919, 31.395924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054670, -0.834981, 0.547556,
		0.694237, -0.425927, -0.580191,
		0.717668, 0.348414, 0.602960,
		24.700554, 21.445444, 31.576811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772953, 20.666655, 31.074265>,  <24.198187, 21.201553, 31.154739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772953, 20.666655, 31.074265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.747805, 20.871754, 31.416759>,  <24.732716, 20.994812, 31.622255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.747805, 20.871754, 31.416759>,  <24.772953, 20.666655, 31.074265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747805, 20.871754, 31.416759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126465, -0.846924, 0.516456,
		0.989977, 0.140754, -0.011599,
		-0.062870, 0.512746, 0.856235,
		24.728943, 21.025578, 31.673630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520178, 20.423765, 30.463140>,  <24.772953, 20.666655, 31.074265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520178, 20.423765, 30.463140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.640417, 20.111294, 30.244270>,  <24.712561, 19.923811, 30.112949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.640417, 20.111294, 30.244270>,  <24.520178, 20.423765, 30.463140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.640417, 20.111294, 30.244270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522015, 0.614903, -0.591096,
		0.798211, -0.107950, 0.592627,
		0.300600, -0.781179, -0.547174,
		24.730597, 19.876940, 30.080118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199873, 20.491041, 30.386961>,  <24.520178, 20.423765, 30.463140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199873, 20.491041, 30.386961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.124266, 20.250935, 30.076103>,  <25.078901, 20.106871, 29.889589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.124266, 20.250935, 30.076103>,  <25.199873, 20.491041, 30.386961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124266, 20.250935, 30.076103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489806, 0.628295, -0.604430,
		0.851095, -0.494897, 0.175256,
		-0.189018, -0.600268, -0.777142,
		25.067560, 20.070854, 29.842960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826736, 20.105967, 30.017136>,  <25.199873, 20.491041, 30.386961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826736, 20.105967, 30.017136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.543737, 20.093143, 29.734741>,  <25.373938, 20.085449, 29.565304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.543737, 20.093143, 29.734741>,  <25.826736, 20.105967, 30.017136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543737, 20.093143, 29.734741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568167, 0.568274, -0.595189,
		0.420273, -0.822215, -0.383841,
		-0.707500, -0.032056, -0.705986,
		25.331488, 20.083527, 29.522945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153351, 19.942076, 29.418936>,  <25.826736, 20.105967, 30.017136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153351, 19.942076, 29.418936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.810986, 20.088032, 29.272366>,  <25.605566, 20.175606, 29.184423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.810986, 20.088032, 29.272366>,  <26.153351, 19.942076, 29.418936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810986, 20.088032, 29.272366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510955, 0.487664, -0.707890,
		-0.079610, -0.793120, -0.603841,
		-0.855913, 0.364891, -0.366426,
		25.554213, 20.197498, 29.162437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190088, 19.944174, 28.703690>,  <26.153351, 19.942076, 29.418936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190088, 19.944174, 28.703690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.890833, 20.202957, 28.762657>,  <25.711279, 20.358227, 28.798038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.890833, 20.202957, 28.762657>,  <26.190088, 19.944174, 28.703690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890833, 20.202957, 28.762657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278131, 0.507463, -0.815552,
		-0.602439, -0.569144, -0.559592,
		-0.748139, 0.646960, 0.147419,
		25.666391, 20.397045, 28.806883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838055, 20.022631, 28.047421>,  <26.190088, 19.944174, 28.703690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838055, 20.022631, 28.047421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.770746, 20.334892, 28.288174>,  <25.730362, 20.522249, 28.432625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.770746, 20.334892, 28.288174>,  <25.838055, 20.022631, 28.047421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770746, 20.334892, 28.288174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403203, 0.611682, -0.680641,
		-0.899507, 0.128148, -0.417691,
		-0.168271, 0.780656, 0.601882,
		25.720264, 20.569090, 28.468739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480553, 20.510406, 27.697123>,  <25.838055, 20.022631, 28.047421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480553, 20.510406, 27.697123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.615269, 20.761822, 27.977554>,  <25.696098, 20.912670, 28.145813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.615269, 20.761822, 27.977554>,  <25.480553, 20.510406, 27.697123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615269, 20.761822, 27.977554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207596, 0.676689, -0.706397,
		-0.918410, 0.383448, 0.097420,
		0.336789, 0.628538, 0.701080,
		25.716305, 20.950382, 28.187878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396858, 21.151775, 27.456165>,  <25.480553, 20.510406, 27.697123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396858, 21.151775, 27.456165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.643721, 21.236725, 27.759220>,  <25.791838, 21.287695, 27.941053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.643721, 21.236725, 27.759220>,  <25.396858, 21.151775, 27.456165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643721, 21.236725, 27.759220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353797, 0.785159, -0.508285,
		-0.702812, 0.581742, 0.409429,
		0.617157, 0.212374, 0.757637,
		25.828867, 21.300438, 27.986511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275457, 21.728069, 27.812943>,  <25.396858, 21.151775, 27.456165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275457, 21.728069, 27.812943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.669090, 21.678631, 27.864025>,  <25.905270, 21.648968, 27.894674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.669090, 21.678631, 27.864025>,  <25.275457, 21.728069, 27.812943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669090, 21.678631, 27.864025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174013, 0.816118, -0.551063,
		-0.036112, 0.564513, 0.824633,
		0.984081, -0.123597, 0.127705,
		25.964315, 21.641552, 27.902336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596483, 22.387737, 28.015261>,  <25.275457, 21.728069, 27.812943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596483, 22.387737, 28.015261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.917402, 22.177113, 27.902798>,  <26.109955, 22.050737, 27.835320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.917402, 22.177113, 27.902798>,  <25.596483, 22.387737, 28.015261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917402, 22.177113, 27.902798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375382, 0.811283, -0.448226,
		0.464116, 0.254071, 0.848554,
		0.802299, -0.526561, -0.281156,
		26.158092, 22.019144, 27.818451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100496, 22.827560, 28.249601>,  <25.596483, 22.387737, 28.015261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100496, 22.827560, 28.249601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.243765, 22.585732, 27.965008>,  <26.329725, 22.440634, 27.794252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.243765, 22.585732, 27.965008>,  <26.100496, 22.827560, 28.249601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243765, 22.585732, 27.965008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456523, 0.778134, -0.431386,
		0.814433, -0.170299, 0.554705,
		0.358170, -0.604570, -0.711483,
		26.351215, 22.404360, 27.751562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766912, 22.987921, 28.113787>,  <26.100496, 22.827560, 28.249601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766912, 22.987921, 28.113787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.690973, 22.796761, 27.770725>,  <26.645411, 22.682064, 27.564888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.690973, 22.796761, 27.770725>,  <26.766912, 22.987921, 28.113787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690973, 22.796761, 27.770725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440545, 0.739200, -0.509415,
		0.877427, -0.474545, 0.070202,
		-0.189848, -0.477902, -0.857652,
		26.634018, 22.653391, 27.513430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398167, 23.038645, 27.859224>,  <26.766912, 22.987921, 28.113787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398167, 23.038645, 27.859224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.150753, 22.956562, 27.555828>,  <27.002304, 22.907312, 27.373791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.150753, 22.956562, 27.555828>,  <27.398167, 23.038645, 27.859224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150753, 22.956562, 27.555828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438959, 0.710382, -0.550157,
		0.651714, -0.673236, -0.349317,
		-0.618534, -0.205209, -0.758488,
		26.965193, 22.894999, 27.328281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822990, 23.137205, 27.352163>,  <27.398167, 23.038645, 27.859224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822990, 23.137205, 27.352163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.479462, 23.145344, 27.147415>,  <27.273344, 23.150227, 27.024567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.479462, 23.145344, 27.147415>,  <27.822990, 23.137205, 27.352163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479462, 23.145344, 27.147415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336405, 0.775967, -0.533579,
		0.386340, -0.630445, -0.673262,
		-0.858821, 0.020346, -0.511872,
		27.221815, 23.151447, 26.993855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404381, 22.618113, 27.421972>,  <27.822990, 23.137205, 27.352163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404381, 22.618113, 27.421972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.771147, 22.670799, 27.572662>,  <28.991205, 22.702412, 27.663076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.771147, 22.670799, 27.572662>,  <28.404381, 22.618113, 27.421972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771147, 22.670799, 27.572662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152789, -0.756190, 0.636265,
		0.368680, -0.640959, -0.673236,
		0.916914, 0.131715, 0.376723,
		29.046221, 22.710314, 27.685678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752502, 21.957577, 27.314651>,  <28.404381, 22.618113, 27.421972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752502, 21.957577, 27.314651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.954800, 22.147804, 27.602558>,  <29.076178, 22.261940, 27.775301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.954800, 22.147804, 27.602558>,  <28.752502, 21.957577, 27.314651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954800, 22.147804, 27.602558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156763, -0.769779, 0.618761,
		0.848322, -0.425766, -0.314758,
		0.505742, 0.475567, 0.719765,
		29.106522, 22.290474, 27.818487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159052, 21.425262, 27.655180>,  <28.752502, 21.957577, 27.314651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159052, 21.425262, 27.655180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176832, 21.718594, 27.926548>,  <29.187500, 21.894592, 28.089369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176832, 21.718594, 27.926548>,  <29.159052, 21.425262, 27.655180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176832, 21.718594, 27.926548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007558, -0.678826, 0.734260,
		0.998983, -0.037766, -0.024632,
		0.044450, 0.733327, 0.678421,
		29.190166, 21.938591, 28.130074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633236, 21.188787, 28.117195>,  <29.159052, 21.425262, 27.655180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633236, 21.188787, 28.117195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429132, 21.471218, 28.313599>,  <29.306669, 21.640676, 28.431440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429132, 21.471218, 28.313599>,  <29.633236, 21.188787, 28.117195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429132, 21.471218, 28.313599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130878, -0.628029, 0.767105,
		0.850003, 0.327161, 0.412868,
		-0.510260, 0.706077, 0.491009,
		29.276054, 21.683041, 28.460901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828676, 21.247173, 28.948259>,  <29.633236, 21.188787, 28.117195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828676, 21.247173, 28.948259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470457, 21.425026, 28.941349>,  <29.255526, 21.531738, 28.937202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470457, 21.425026, 28.941349>,  <29.828676, 21.247173, 28.948259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470457, 21.425026, 28.941349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300582, -0.575871, 0.760278,
		0.328094, 0.686058, 0.649368,
		-0.895547, 0.444632, -0.017277,
		29.201794, 21.558414, 28.936167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648136, 21.335793, 29.647087>,  <29.828676, 21.247173, 28.948259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648136, 21.335793, 29.647087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.315897, 21.323200, 29.424694>,  <29.116554, 21.315645, 29.291258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.315897, 21.323200, 29.424694>,  <29.648136, 21.335793, 29.647087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315897, 21.323200, 29.424694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423387, -0.612841, 0.667211,
		-0.361732, 0.789579, 0.495696,
		-0.830599, -0.031480, -0.555981,
		29.066717, 21.313757, 29.257900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194887, 21.411673, 30.064428>,  <29.648136, 21.335793, 29.647087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194887, 21.411673, 30.064428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.979580, 21.248100, 29.769661>,  <28.850395, 21.149958, 29.592800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.979580, 21.248100, 29.769661>,  <29.194887, 21.411673, 30.064428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979580, 21.248100, 29.769661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490652, -0.558877, 0.668519,
		-0.685223, 0.721411, 0.100182,
		-0.538266, -0.408929, -0.736917,
		28.818100, 21.125422, 29.548586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134727, 21.783264, 30.741034>,  <29.194887, 21.411673, 30.064428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134727, 21.783264, 30.741034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432571, 21.678440, 30.986595>,  <29.611279, 21.615545, 31.133932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432571, 21.678440, 30.986595>,  <29.134727, 21.783264, 30.741034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432571, 21.678440, 30.986595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585561, 0.697950, -0.412291,
		-0.320430, 0.666475, 0.673154,
		0.744609, -0.262062, 0.613906,
		29.655954, 21.599821, 31.170767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443115, 22.330837, 30.865515>,  <29.134727, 21.783264, 30.741034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443115, 22.330837, 30.865515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.732609, 22.068768, 30.952194>,  <29.906305, 21.911526, 31.004202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.732609, 22.068768, 30.952194>,  <29.443115, 22.330837, 30.865515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732609, 22.068768, 30.952194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657043, 0.558228, -0.506632,
		0.210964, 0.509047, 0.834485,
		0.723733, -0.655174, 0.216699,
		29.949728, 21.872215, 31.017204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099169, 22.682007, 31.108160>,  <29.443115, 22.330837, 30.865515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099169, 22.682007, 31.108160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218412, 22.327450, 30.966488>,  <30.289959, 22.114716, 30.881485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218412, 22.327450, 30.966488>,  <30.099169, 22.682007, 31.108160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218412, 22.327450, 30.966488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731658, 0.450492, -0.511599,
		0.613031, -0.106625, 0.782831,
		0.298110, -0.886390, -0.354179,
		30.307846, 22.061533, 30.860233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734549, 22.764824, 31.103155>,  <30.099169, 22.682007, 31.108160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734549, 22.764824, 31.103155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684803, 22.453777, 30.856628>,  <30.654955, 22.267149, 30.708712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684803, 22.453777, 30.856628>,  <30.734549, 22.764824, 31.103155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684803, 22.453777, 30.856628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745087, 0.337011, -0.575560,
		0.655270, -0.530789, 0.537479,
		-0.124365, -0.777616, -0.616317,
		30.647493, 22.220493, 30.671734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423119, 22.391394, 31.006376>,  <30.734549, 22.764824, 31.103155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423119, 22.391394, 31.006376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211317, 22.311310, 30.676640>,  <31.084236, 22.263260, 30.478798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211317, 22.311310, 30.676640>,  <31.423119, 22.391394, 31.006376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211317, 22.311310, 30.676640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772275, 0.288335, -0.566087,
		0.351024, -0.936365, 0.001943,
		-0.529504, -0.200211, -0.824343,
		31.052465, 22.251247, 30.429337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934919, 22.151901, 30.503796>,  <31.423119, 22.391394, 31.006376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934919, 22.151901, 30.503796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616375, 22.284725, 30.301590>,  <31.425247, 22.364420, 30.180267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616375, 22.284725, 30.301590>,  <31.934919, 22.151901, 30.503796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616375, 22.284725, 30.301590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604731, 0.422820, -0.674925,
		-0.010376, -0.843183, -0.537526,
		-0.796362, 0.332062, -0.505512,
		31.377466, 22.384344, 30.149937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175369, 22.078924, 29.881393>,  <31.934919, 22.151901, 30.503796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175369, 22.078924, 29.881393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.854280, 22.305099, 29.805588>,  <31.661627, 22.440805, 29.760103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.854280, 22.305099, 29.805588>,  <32.175369, 22.078924, 29.881393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854280, 22.305099, 29.805588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480839, 0.425701, -0.766533,
		-0.352751, -0.706438, -0.613605,
		-0.802721, 0.565441, -0.189516,
		31.613464, 22.474731, 29.748734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.439920, 22.283684, 33.571819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.255066, 22.190720, 33.229492>,  <27.144154, 22.134941, 33.024097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.255066, 22.190720, 33.229492>,  <27.439920, 22.283684, 33.571819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255066, 22.190720, 33.229492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344670, 0.842103, -0.414807,
		0.817088, -0.486670, -0.309061,
		-0.462136, -0.232410, -0.855813,
		27.116426, 22.120996, 32.972748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982586, 22.348391, 33.063015>,  <27.439920, 22.283684, 33.571819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982586, 22.348391, 33.063015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.642605, 22.368614, 32.853245>,  <27.438616, 22.380749, 32.727383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.642605, 22.368614, 32.853245>,  <27.982586, 22.348391, 33.063015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642605, 22.368614, 32.853245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317032, 0.844088, -0.432441,
		0.420799, -0.533815, -0.733464,
		-0.849952, 0.050561, -0.524428,
		27.387619, 22.383783, 32.695915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175207, 22.453936, 32.391045>,  <27.982586, 22.348391, 33.063015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175207, 22.453936, 32.391045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.800997, 22.594719, 32.378944>,  <27.576471, 22.679190, 32.371685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.800997, 22.594719, 32.378944>,  <28.175207, 22.453936, 32.391045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800997, 22.594719, 32.378944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318407, 0.803050, -0.503715,
		-0.152996, -0.480870, -0.863341,
		-0.935526, 0.351960, -0.030250,
		27.520338, 22.700308, 32.369869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003645, 22.571415, 31.721781>,  <28.175207, 22.453936, 32.391045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003645, 22.571415, 31.721781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.764837, 22.814095, 31.931728>,  <27.621553, 22.959702, 32.057697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.764837, 22.814095, 31.931728>,  <28.003645, 22.571415, 31.721781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764837, 22.814095, 31.931728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387937, 0.791014, -0.473076,
		-0.702193, -0.078819, -0.707611,
		-0.597017, 0.606699, 0.524868,
		27.585732, 22.996105, 32.089188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015156, 23.095068, 31.282804>,  <28.003645, 22.571415, 31.721781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015156, 23.095068, 31.282804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.842136, 23.235088, 31.615158>,  <27.738325, 23.319101, 31.814569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.842136, 23.235088, 31.615158>,  <28.015156, 23.095068, 31.282804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842136, 23.235088, 31.615158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412812, 0.896175, -0.162655,
		-0.801555, 0.272643, -0.532142,
		-0.432546, 0.350051, 0.830884,
		27.712372, 23.340103, 31.864424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791502, 23.776724, 31.091291>,  <28.015156, 23.095068, 31.282804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791502, 23.776724, 31.091291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.780388, 23.779568, 31.491127>,  <27.773720, 23.781275, 31.731028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.780388, 23.779568, 31.491127>,  <27.791502, 23.776724, 31.091291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780388, 23.779568, 31.491127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192378, 0.981320, -0.001634,
		-0.980927, 0.192253, -0.028635,
		-0.027786, 0.007111, 0.999589,
		27.772053, 23.781702, 31.791004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313421, 24.374340, 31.398500>,  <27.791502, 23.776724, 31.091291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313421, 24.374340, 31.398500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.579384, 24.286583, 31.684093>,  <27.738960, 24.233929, 31.855450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.579384, 24.286583, 31.684093>,  <27.313421, 24.374340, 31.398500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579384, 24.286583, 31.684093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249382, 0.966243, 0.064670,
		-0.704067, 0.135054, 0.697173,
		0.664905, -0.219394, 0.713980,
		27.778854, 24.220764, 31.898287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143925, 24.895510, 31.947104>,  <27.313421, 24.374340, 31.398500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143925, 24.895510, 31.947104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.519054, 24.779560, 32.023479>,  <27.744133, 24.709991, 32.069305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.519054, 24.779560, 32.023479>,  <27.143925, 24.895510, 31.947104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519054, 24.779560, 32.023479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284103, 0.957065, 0.057542,
		-0.199421, 0.000282, 0.979914,
		0.937826, -0.289872, 0.190939,
		27.800402, 24.692598, 32.080761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386930, 25.363230, 32.421032>,  <27.143925, 24.895510, 31.947104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386930, 25.363230, 32.421032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.725531, 25.210358, 32.272778>,  <27.928692, 25.118635, 32.183823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.725531, 25.210358, 32.272778>,  <27.386930, 25.363230, 32.421032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725531, 25.210358, 32.272778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375931, 0.922052, -0.092172,
		0.376976, -0.061312, 0.924191,
		0.846501, -0.382179, -0.370640,
		27.979481, 25.095703, 32.161587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880014, 25.725237, 32.775623>,  <27.386930, 25.363230, 32.421032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880014, 25.725237, 32.775623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.015293, 25.585758, 32.425987>,  <28.096460, 25.502071, 32.216206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.015293, 25.585758, 32.425987>,  <27.880014, 25.725237, 32.775623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015293, 25.585758, 32.425987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472805, 0.866043, -0.162555,
		0.813682, -0.358299, 0.457758,
		0.338195, -0.348699, -0.874090,
		28.116751, 25.481148, 32.163761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483343, 25.993433, 32.784382>,  <27.880014, 25.725237, 32.775623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483343, 25.993433, 32.784382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.466263, 25.878796, 32.401543>,  <28.456015, 25.810013, 32.171837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.466263, 25.878796, 32.401543>,  <28.483343, 25.993433, 32.784382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466263, 25.878796, 32.401543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563827, 0.783935, -0.259894,
		0.824788, -0.550737, 0.128114,
		-0.042700, -0.286592, -0.957101,
		28.453453, 25.792818, 32.114414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163660, 25.922266, 32.542763>,  <28.483343, 25.993433, 32.784382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163660, 25.922266, 32.542763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.932970, 26.003696, 32.226295>,  <28.794556, 26.052555, 32.036415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.932970, 26.003696, 32.226295>,  <29.163660, 25.922266, 32.542763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932970, 26.003696, 32.226295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638054, 0.717039, -0.280610,
		0.510173, -0.666642, -0.543426,
		-0.576724, 0.203576, -0.791168,
		28.759953, 26.064770, 31.988945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886684, 25.645283, 32.526363>,  <29.163660, 25.922266, 32.542763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886684, 25.645283, 32.526363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.080481, 25.701836, 32.871681>,  <30.196758, 25.735767, 33.078873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.080481, 25.701836, 32.871681>,  <29.886684, 25.645283, 32.526363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080481, 25.701836, 32.871681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384552, -0.851969, 0.355344,
		0.785740, -0.504143, -0.358403,
		0.484492, 0.141384, 0.863295,
		30.225828, 25.744251, 33.130669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185410, 25.056713, 32.639355>,  <29.886684, 25.645283, 32.526363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185410, 25.056713, 32.639355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193916, 25.194324, 33.014843>,  <30.199020, 25.276892, 33.240135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193916, 25.194324, 33.014843>,  <30.185410, 25.056713, 32.639355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193916, 25.194324, 33.014843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129115, -0.930122, 0.343806,
		0.991401, -0.128514, 0.024639,
		0.021267, 0.344031, 0.938717,
		30.200296, 25.297533, 33.296459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656231, 24.635004, 33.105110>,  <30.185410, 25.056713, 32.639355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656231, 24.635004, 33.105110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.409193, 24.804058, 33.370426>,  <30.260971, 24.905491, 33.529617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.409193, 24.804058, 33.370426>,  <30.656231, 24.635004, 33.105110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409193, 24.804058, 33.370426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138009, -0.888500, 0.437631,
		0.774293, 0.178738, 0.607061,
		-0.617595, 0.422635, 0.663292,
		30.223915, 24.930849, 33.569412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860851, 24.367840, 33.840149>,  <30.656231, 24.635004, 33.105110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860851, 24.367840, 33.840149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492416, 24.515034, 33.891041>,  <30.271355, 24.603350, 33.921574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492416, 24.515034, 33.891041>,  <30.860851, 24.367840, 33.840149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492416, 24.515034, 33.891041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239673, -0.793379, 0.559559,
		0.306848, 0.484910, 0.818967,
		-0.921087, 0.367984, 0.127227,
		30.216091, 24.625429, 33.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706879, 24.194479, 34.522560>,  <30.860851, 24.367840, 33.840149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706879, 24.194479, 34.522560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.357944, 24.287254, 34.350407>,  <30.148584, 24.342920, 34.247112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.357944, 24.287254, 34.350407>,  <30.706879, 24.194479, 34.522560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357944, 24.287254, 34.350407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458946, -0.691902, 0.557351,
		-0.168514, 0.683723, 0.710019,
		-0.872337, 0.231939, -0.430387,
		30.096243, 24.356836, 34.221291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187325, 24.087030, 35.041538>,  <30.706879, 24.194479, 34.522560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187325, 24.087030, 35.041538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.975140, 24.083572, 34.702473>,  <29.847828, 24.081497, 34.499035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.975140, 24.083572, 34.702473>,  <30.187325, 24.087030, 35.041538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975140, 24.083572, 34.702473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482847, -0.818803, 0.310515,
		-0.696754, 0.574009, 0.430172,
		-0.530464, -0.008645, -0.847663,
		29.816000, 24.080978, 34.448174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517366, 23.899910, 35.257015>,  <30.187325, 24.087030, 35.041538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517366, 23.899910, 35.257015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.512890, 23.833359, 34.862617>,  <29.510204, 23.793428, 34.625977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.512890, 23.833359, 34.862617>,  <29.517366, 23.899910, 35.257015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512890, 23.833359, 34.862617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441657, -0.883842, 0.154154,
		-0.897114, 0.437198, -0.063590,
		-0.011192, -0.166379, -0.985998,
		29.509533, 23.783445, 34.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851162, 23.978357, 34.955940>,  <29.517366, 23.899910, 35.257015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851162, 23.978357, 34.955940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.056391, 23.740803, 34.708050>,  <29.179527, 23.598270, 34.559315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.056391, 23.740803, 34.708050>,  <28.851162, 23.978357, 34.955940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056391, 23.740803, 34.708050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703745, -0.704416, 0.092416,
		-0.491428, 0.388712, -0.779360,
		0.513071, -0.593886, -0.619724,
		29.210312, 23.562637, 34.522133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336294, 23.681589, 34.616741>,  <28.851162, 23.978357, 34.955940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336294, 23.681589, 34.616741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.648268, 23.438484, 34.556965>,  <28.835451, 23.292622, 34.521099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.648268, 23.438484, 34.556965>,  <28.336294, 23.681589, 34.616741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648268, 23.438484, 34.556965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606819, -0.792782, 0.057166,
		-0.153217, 0.046097, -0.987117,
		0.779933, -0.607760, -0.149440,
		28.882248, 23.256157, 34.512135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137827, 23.103821, 34.203899>,  <28.336294, 23.681589, 34.616741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137827, 23.103821, 34.203899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.478304, 22.959476, 34.356346>,  <28.682590, 22.872869, 34.447815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.478304, 22.959476, 34.356346>,  <28.137827, 23.103821, 34.203899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478304, 22.959476, 34.356346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422445, -0.901961, 0.089476,
		0.311466, -0.237163, -0.920186,
		0.851193, -0.360859, 0.381119,
		28.733662, 22.851219, 34.470680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157419, 22.456371, 33.873363>,  <28.137827, 23.103821, 34.203899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157419, 22.456371, 33.873363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.412945, 22.410748, 34.177708>,  <28.566261, 22.383373, 34.360313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.412945, 22.410748, 34.177708>,  <28.157419, 22.456371, 33.873363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412945, 22.410748, 34.177708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340758, -0.928604, 0.146895,
		0.689781, -0.353108, -0.632073,
		0.638816, -0.114059, 0.760858,
		28.604589, 22.376530, 34.405964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468493, 21.746138, 33.685978>,  <28.157419, 22.456371, 33.873363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468493, 21.746138, 33.685978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.532717, 21.815388, 34.074669>,  <28.571251, 21.856937, 34.307884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.532717, 21.815388, 34.074669>,  <28.468493, 21.746138, 33.685978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532717, 21.815388, 34.074669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464405, -0.855464, 0.229150,
		0.870946, -0.488066, -0.056953,
		0.160562, 0.173128, 0.971723,
		28.580885, 21.867327, 34.366184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848682, 21.201231, 33.968910>,  <28.468493, 21.746138, 33.685978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848682, 21.201231, 33.968910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.636206, 21.373062, 34.261021>,  <28.508720, 21.476160, 34.436287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.636206, 21.373062, 34.261021>,  <28.848682, 21.201231, 33.968910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636206, 21.373062, 34.261021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414118, -0.883598, 0.218543,
		0.739150, -0.186332, 0.647254,
		-0.531191, 0.429576, 0.730275,
		28.476849, 21.501934, 34.480103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811867, 20.653013, 34.464157>,  <28.848682, 21.201231, 33.968910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811867, 20.653013, 34.464157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.537437, 20.919296, 34.581554>,  <28.372780, 21.079067, 34.651993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.537437, 20.919296, 34.581554>,  <28.811867, 20.653013, 34.464157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537437, 20.919296, 34.581554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594823, -0.745540, 0.300593,
		0.418915, 0.031654, 0.907474,
		-0.686073, 0.665709, 0.293489,
		28.331615, 21.119009, 34.669601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783081, 20.490351, 33.791248>,  <28.811867, 20.653013, 34.464157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783081, 20.490351, 33.791248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.676655, 20.188438, 33.551411>,  <28.612799, 20.007292, 33.407509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.676655, 20.188438, 33.551411>,  <28.783081, 20.490351, 33.791248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676655, 20.188438, 33.551411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444151, 0.456066, -0.771189,
		0.855535, -0.471497, 0.213894,
		-0.266063, -0.754781, -0.599597,
		28.596836, 19.962004, 33.371532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424894, 20.164122, 33.497570>,  <28.783081, 20.490351, 33.791248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424894, 20.164122, 33.497570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.138060, 20.104210, 33.225292>,  <28.965958, 20.068262, 33.061924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.138060, 20.104210, 33.225292>,  <29.424894, 20.164122, 33.497570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138060, 20.104210, 33.225292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603503, 0.355132, -0.713909,
		0.348668, -0.922739, -0.164267,
		-0.717087, -0.149782, -0.680699,
		28.922934, 20.059275, 33.021084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791485, 19.883137, 32.846863>,  <29.424894, 20.164122, 33.497570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791485, 19.883137, 32.846863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444668, 20.017624, 32.699787>,  <29.236578, 20.098316, 32.611542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444668, 20.017624, 32.699787>,  <29.791485, 19.883137, 32.846863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444668, 20.017624, 32.699787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493247, 0.475063, -0.728713,
		-0.070329, -0.813187, -0.577737,
		-0.867042, 0.336217, -0.367691,
		29.184555, 20.118488, 32.589481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007362, 19.911026, 32.157925>,  <29.791485, 19.883137, 32.846863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007362, 19.911026, 32.157925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.664694, 20.114170, 32.194122>,  <29.459093, 20.236057, 32.215843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.664694, 20.114170, 32.194122>,  <30.007362, 19.911026, 32.157925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664694, 20.114170, 32.194122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224668, 0.525232, -0.820765,
		-0.464366, -0.682795, -0.564052,
		-0.856673, 0.507860, 0.090498,
		29.407692, 20.266527, 32.221272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611744, 19.886572, 31.544483>,  <30.007362, 19.911026, 32.157925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611744, 19.886572, 31.544483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.516472, 20.218399, 31.746506>,  <29.459309, 20.417496, 31.867720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.516472, 20.218399, 31.746506>,  <29.611744, 19.886572, 31.544483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516472, 20.218399, 31.746506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228745, 0.553311, -0.800951,
		-0.943899, -0.075243, -0.321549,
		-0.238183, 0.829570, 0.505058,
		29.445017, 20.467270, 31.898024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372740, 20.246393, 30.966166>,  <29.611744, 19.886572, 31.544483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372740, 20.246393, 30.966166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.393232, 20.520969, 31.256317>,  <29.405527, 20.685715, 31.430408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.393232, 20.520969, 31.256317>,  <29.372740, 20.246393, 30.966166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393232, 20.520969, 31.256317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220415, 0.700652, -0.678604,
		-0.974060, 0.194650, -0.115407,
		0.051230, 0.686438, 0.725381,
		29.408602, 20.726900, 31.473932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076580, 20.923534, 30.753429>,  <29.372740, 20.246393, 30.966166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076580, 20.923534, 30.753429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.328783, 21.003731, 31.053368>,  <29.480104, 21.051849, 31.233330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.328783, 21.003731, 31.053368>,  <29.076580, 20.923534, 30.753429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328783, 21.003731, 31.053368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500787, 0.633015, -0.590342,
		-0.593022, 0.747726, 0.298716,
		0.630506, 0.200493, 0.749843,
		29.517935, 21.063879, 31.278320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411570, 21.295671, 30.416519>,  <29.076580, 20.923534, 30.753429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411570, 21.295671, 30.416519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.383226, 21.088398, 30.075588>,  <28.366220, 20.964033, 29.871029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.383226, 21.088398, 30.075588>,  <28.411570, 21.295671, 30.416519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383226, 21.088398, 30.075588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556704, -0.688475, 0.464848,
		-0.827684, 0.507433, -0.239690,
		-0.070859, -0.518183, -0.852329,
		28.361969, 20.932943, 29.819889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706963, 21.156466, 30.224524>,  <28.411570, 21.295671, 30.416519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706963, 21.156466, 30.224524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.890081, 20.855358, 30.035309>,  <27.999952, 20.674694, 29.921780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.890081, 20.855358, 30.035309>,  <27.706963, 21.156466, 30.224524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890081, 20.855358, 30.035309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692557, -0.635578, 0.341181,
		-0.557480, 0.171410, -0.812302,
		0.457800, -0.752768, -0.473033,
		28.027422, 20.629528, 29.893398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186819, 20.782797, 29.925703>,  <27.706963, 21.156466, 30.224524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186819, 20.782797, 29.925703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.494375, 20.528709, 29.954838>,  <27.678909, 20.376257, 29.972319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.494375, 20.528709, 29.954838>,  <27.186819, 20.782797, 29.925703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494375, 20.528709, 29.954838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614918, -0.703446, 0.356427,
		-0.175173, -0.318842, -0.931480,
		0.768889, -0.635219, 0.072837,
		27.725042, 20.338144, 29.976688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818558, 20.298761, 29.744215>,  <27.186819, 20.782797, 29.925703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818558, 20.298761, 29.744215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.141706, 20.156410, 29.932125>,  <27.335596, 20.070999, 30.044872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.141706, 20.156410, 29.932125>,  <26.818558, 20.298761, 29.744215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141706, 20.156410, 29.932125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508714, -0.823548, 0.250956,
		0.297574, -0.441724, -0.846363,
		0.807873, -0.355878, 0.469778,
		27.384069, 20.049646, 30.073059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963045, 19.647339, 29.440453>,  <26.818558, 20.298761, 29.744215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963045, 19.647339, 29.440453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.146406, 19.643360, 29.795929>,  <27.256422, 19.640974, 30.009214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.146406, 19.643360, 29.795929>,  <26.963045, 19.647339, 29.440453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146406, 19.643360, 29.795929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412001, -0.888379, 0.202577,
		0.787478, -0.459002, -0.411333,
		0.458403, -0.009944, 0.888689,
		27.283928, 19.640377, 30.062536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268627, 18.973185, 29.538904>,  <26.963045, 19.647339, 29.440453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268627, 18.973185, 29.538904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.273275, 19.099503, 29.918407>,  <27.276064, 19.175293, 30.146109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.273275, 19.099503, 29.918407>,  <27.268627, 18.973185, 29.538904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273275, 19.099503, 29.918407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310436, -0.900797, 0.303635,
		0.950523, -0.298055, 0.087568,
		0.011619, 0.315796, 0.948756,
		27.276760, 19.194241, 30.203033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771616, 18.446398, 29.978514>,  <27.268627, 18.973185, 29.538904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771616, 18.446398, 29.978514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.499479, 18.649292, 30.190117>,  <27.336197, 18.771029, 30.317080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.499479, 18.649292, 30.190117>,  <27.771616, 18.446398, 29.978514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499479, 18.649292, 30.190117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290118, -0.849236, 0.441170,
		0.673028, 0.146672, 0.724928,
		-0.680342, 0.507234, 0.529007,
		27.295376, 18.801462, 30.348820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762840, 18.169920, 30.683340>,  <27.771616, 18.446398, 29.978514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762840, 18.169920, 30.683340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.423950, 18.376202, 30.632332>,  <27.220617, 18.499969, 30.601727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.423950, 18.376202, 30.632332>,  <27.762840, 18.169920, 30.683340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423950, 18.376202, 30.632332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530685, -0.810668, 0.247369,
		0.024190, 0.277251, 0.960493,
		-0.847224, 0.515703, -0.127522,
		27.169783, 18.530912, 30.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333336, 18.103140, 31.213146>,  <27.762840, 18.169920, 30.683340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333336, 18.103140, 31.213146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.070810, 18.184944, 30.922649>,  <26.913296, 18.234026, 30.748352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.070810, 18.184944, 30.922649>,  <27.333336, 18.103140, 31.213146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070810, 18.184944, 30.922649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599696, -0.725506, 0.337648,
		-0.457841, 0.657127, 0.598804,
		-0.656313, 0.204511, -0.726243,
		26.873917, 18.246298, 30.704777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.004589, 31.714298, 24.063940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608961, 31.680664, 24.015495>,  <31.371584, 31.660484, 23.986429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608961, 31.680664, 24.015495>,  <32.004589, 31.714298, 24.063940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608961, 31.680664, 24.015495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024019, -0.902348, 0.430338,
		-0.145468, 0.422726, 0.894506,
		-0.989071, -0.084086, -0.121110,
		31.312241, 31.655437, 23.979162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658451, 31.568697, 24.698154>,  <32.004589, 31.714298, 24.063940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658451, 31.568697, 24.698154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425568, 31.424618, 24.406597>,  <31.285837, 31.338169, 24.231663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425568, 31.424618, 24.406597>,  <31.658451, 31.568697, 24.698154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425568, 31.424618, 24.406597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089504, -0.919453, 0.382876,
		-0.808097, 0.157675, 0.567554,
		-0.582210, -0.360200, -0.728895,
		31.250904, 31.316557, 24.187929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099876, 31.172934, 25.004257>,  <31.658451, 31.568697, 24.698154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099876, 31.172934, 25.004257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121868, 31.016270, 24.636871>,  <31.135063, 30.922272, 24.416439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121868, 31.016270, 24.636871>,  <31.099876, 31.172934, 25.004257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121868, 31.016270, 24.636871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057243, -0.917108, 0.394507,
		-0.996845, -0.074266, -0.028004,
		0.054981, -0.391660, -0.918466,
		31.138363, 30.898771, 24.361332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670637, 30.678587, 25.114237>,  <31.099876, 31.172934, 25.004257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670637, 30.678587, 25.114237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851219, 30.594597, 24.767342>,  <30.959568, 30.544203, 24.559204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851219, 30.594597, 24.767342>,  <30.670637, 30.678587, 25.114237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851219, 30.594597, 24.767342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051339, -0.976420, 0.209686,
		-0.890816, -0.050141, -0.451590,
		0.451455, -0.209975, -0.867236,
		30.986656, 30.531605, 24.507172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254702, 30.266380, 24.811361>,  <30.670637, 30.678587, 25.114237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254702, 30.266380, 24.811361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610729, 30.197056, 24.642723>,  <30.824347, 30.155462, 24.541540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610729, 30.197056, 24.642723>,  <30.254702, 30.266380, 24.811361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610729, 30.197056, 24.642723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171534, -0.984262, 0.042472,
		-0.422319, 0.034514, -0.905790,
		0.890069, -0.173310, -0.421593,
		30.877750, 30.145063, 24.516245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154247, 29.591593, 24.363209>,  <30.254702, 30.266380, 24.811361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154247, 29.591593, 24.363209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552561, 29.606804, 24.396587>,  <30.791550, 29.615931, 24.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552561, 29.606804, 24.396587>,  <30.154247, 29.591593, 24.363209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552561, 29.606804, 24.396587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054266, -0.977897, -0.201925,
		0.073926, 0.205602, -0.975839,
		0.995786, 0.038028, 0.083449,
		30.851297, 29.618212, 24.421621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460630, 29.187952, 23.824394>,  <30.154247, 29.591593, 24.363209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460630, 29.187952, 23.824394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741287, 29.209122, 24.108620>,  <30.909681, 29.221823, 24.279156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741287, 29.209122, 24.108620>,  <30.460630, 29.187952, 23.824394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741287, 29.209122, 24.108620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083399, -0.996483, -0.008132,
		0.707634, 0.064967, -0.703586,
		0.701640, 0.052924, 0.710563,
		30.951778, 29.224998, 24.321789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834183, 28.602522, 23.681711>,  <30.460630, 29.187952, 23.824394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834183, 28.602522, 23.681711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935297, 28.714615, 24.052132>,  <30.995966, 28.781870, 24.274384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935297, 28.714615, 24.052132>,  <30.834183, 28.602522, 23.681711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935297, 28.714615, 24.052132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087083, -0.959841, 0.266687,
		0.963595, 0.013229, -0.267038,
		0.252786, 0.280233, 0.926050,
		31.011133, 28.798685, 24.329947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441046, 28.320438, 23.867754>,  <30.834183, 28.602522, 23.681711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441046, 28.320438, 23.867754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293125, 28.395962, 24.231644>,  <31.204372, 28.441277, 24.449978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293125, 28.395962, 24.231644>,  <31.441046, 28.320438, 23.867754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293125, 28.395962, 24.231644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097159, -0.965908, 0.239964,
		0.924017, 0.177127, 0.338850,
		-0.369802, 0.188808, 0.909724,
		31.182184, 28.452604, 24.504560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800751, 27.877348, 24.150856>,  <31.441046, 28.320438, 23.867754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800751, 27.877348, 24.150856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519899, 27.964661, 24.421963>,  <31.351389, 28.017048, 24.584627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519899, 27.964661, 24.421963>,  <31.800751, 27.877348, 24.150856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519899, 27.964661, 24.421963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009802, -0.954726, 0.297325,
		0.711982, 0.202117, 0.672481,
		-0.702129, 0.218281, 0.677767,
		31.309261, 28.030146, 24.625292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034946, 27.609743, 24.813719>,  <31.800751, 27.877348, 24.150856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034946, 27.609743, 24.813719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638058, 27.650318, 24.842587>,  <31.399925, 27.674664, 24.859907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638058, 27.650318, 24.842587>,  <32.034946, 27.609743, 24.813719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638058, 27.650318, 24.842587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076596, -0.954432, 0.288432,
		0.098140, 0.280660, 0.954777,
		-0.992220, 0.101439, 0.072170,
		31.340391, 27.680750, 24.864237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827410, 27.327511, 25.501873>,  <32.034946, 27.609743, 24.813719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827410, 27.327511, 25.501873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513838, 27.324459, 25.253551>,  <31.325695, 27.322628, 25.104559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513838, 27.324459, 25.253551>,  <31.827410, 27.327511, 25.501873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513838, 27.324459, 25.253551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207436, -0.939242, 0.273487,
		-0.585172, 0.343171, 0.734716,
		-0.783929, -0.007630, -0.620804,
		31.278660, 27.322170, 25.067310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077011, 27.478886, 26.100439>,  <31.827410, 27.327511, 25.501873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077011, 27.478886, 26.100439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444374, 27.344006, 26.183220>,  <32.664791, 27.263077, 26.232889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444374, 27.344006, 26.183220>,  <32.077011, 27.478886, 26.100439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444374, 27.344006, 26.183220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384272, 0.884749, -0.263730,
		-0.094172, 0.321738, 0.942134,
		0.918404, -0.337200, 0.206954,
		32.719894, 27.242846, 26.245306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344784, 27.941616, 26.497635>,  <32.077011, 27.478886, 26.100439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344784, 27.941616, 26.497635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645279, 27.744495, 26.322006>,  <32.825577, 27.626223, 26.216629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645279, 27.744495, 26.322006>,  <32.344784, 27.941616, 26.497635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645279, 27.744495, 26.322006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432914, 0.870044, -0.235813,
		0.498220, -0.012927, 0.866954,
		0.751241, -0.492804, -0.439069,
		32.870651, 27.596655, 26.190285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924442, 28.418240, 26.565046>,  <32.344784, 27.941616, 26.497635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924442, 28.418240, 26.565046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057854, 28.162216, 26.288181>,  <33.137901, 28.008602, 26.122063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057854, 28.162216, 26.288181>,  <32.924442, 28.418240, 26.565046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057854, 28.162216, 26.288181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593186, 0.713125, -0.373608,
		0.732728, -0.285973, 0.617518,
		0.333526, -0.640056, -0.692162,
		33.157913, 27.970200, 26.080532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720676, 28.444250, 26.593988>,  <32.924442, 28.418240, 26.565046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720676, 28.444250, 26.593988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596416, 28.308620, 26.238792>,  <33.521862, 28.227242, 26.025675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596416, 28.308620, 26.238792>,  <33.720676, 28.444250, 26.593988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596416, 28.308620, 26.238792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518314, 0.722670, -0.457272,
		0.796774, -0.602308, -0.048747,
		-0.310647, -0.339076, -0.887990,
		33.503223, 28.206898, 25.972395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296375, 28.146870, 26.305183>,  <33.720676, 28.444250, 26.593988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296375, 28.146870, 26.305183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047153, 28.237827, 26.005825>,  <33.897621, 28.292402, 25.826210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047153, 28.237827, 26.005825>,  <34.296375, 28.146870, 26.305183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047153, 28.237827, 26.005825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660984, 0.664654, -0.348332,
		0.418214, -0.711706, -0.564422,
		-0.623055, 0.227396, -0.748394,
		33.860237, 28.306046, 25.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713207, 28.216715, 25.731892>,  <34.296375, 28.146870, 26.305183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713207, 28.216715, 25.731892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364101, 28.402630, 25.672226>,  <34.154636, 28.514179, 25.636427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364101, 28.402630, 25.672226>,  <34.713207, 28.216715, 25.731892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364101, 28.402630, 25.672226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486612, 0.852561, -0.190652,
		0.038557, -0.238979, -0.970259,
		-0.872767, 0.464788, -0.149162,
		34.102272, 28.542067, 25.627478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800072, 28.537237, 25.094362>,  <34.713207, 28.216715, 25.731892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800072, 28.537237, 25.094362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493343, 28.738461, 25.253822>,  <34.309307, 28.859194, 25.349499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493343, 28.738461, 25.253822>,  <34.800072, 28.537237, 25.094362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493343, 28.738461, 25.253822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402446, 0.860657, -0.311941,
		-0.500024, -0.078768, -0.862422,
		-0.766821, 0.503056, 0.398649,
		34.263298, 28.889378, 25.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670319, 29.133953, 24.680302>,  <34.800072, 28.537237, 25.094362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670319, 29.133953, 24.680302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492378, 29.260395, 25.015488>,  <34.385616, 29.336260, 25.216600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492378, 29.260395, 25.015488>,  <34.670319, 29.133953, 24.680302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492378, 29.260395, 25.015488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396006, 0.908633, -0.132534,
		-0.803298, 0.272883, -0.529383,
		-0.444849, 0.316103, 0.837967,
		34.358925, 29.355227, 25.266878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324272, 29.662090, 24.428684>,  <34.670319, 29.133953, 24.680302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324272, 29.662090, 24.428684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349514, 29.697250, 24.826336>,  <34.364658, 29.718346, 25.064926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349514, 29.697250, 24.826336>,  <34.324272, 29.662090, 24.428684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349514, 29.697250, 24.826336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327459, 0.939144, -0.103824,
		-0.942756, 0.332088, 0.030478,
		0.063102, 0.087900, 0.994129,
		34.368446, 29.723621, 25.124575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940918, 30.266434, 24.604172>,  <34.324272, 29.662090, 24.428684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940918, 30.266434, 24.604172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193504, 30.216560, 24.910297>,  <34.345055, 30.186636, 25.093973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193504, 30.216560, 24.910297>,  <33.940918, 30.266434, 24.604172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193504, 30.216560, 24.910297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255613, 0.965290, -0.053646,
		-0.732061, 0.229500, 0.641417,
		0.631465, -0.124682, 0.765315,
		34.382942, 30.179155, 25.139893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742790, 30.812164, 25.157333>,  <33.940918, 30.266434, 24.604172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742790, 30.812164, 25.157333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114254, 30.684044, 25.232174>,  <34.337132, 30.607172, 25.277079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114254, 30.684044, 25.232174>,  <33.742790, 30.812164, 25.157333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114254, 30.684044, 25.232174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331845, 0.942751, -0.033175,
		-0.165764, 0.092897, 0.981780,
		0.928656, -0.320299, 0.187102,
		34.392849, 30.587954, 25.288305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068855, 31.396393, 25.597044>,  <33.742790, 30.812164, 25.157333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068855, 31.396393, 25.597044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372616, 31.192230, 25.435654>,  <34.554871, 31.069733, 25.338820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372616, 31.192230, 25.435654>,  <34.068855, 31.396393, 25.597044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372616, 31.192230, 25.435654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464562, 0.859548, -0.212977,
		0.455511, -0.025703, 0.889859,
		0.759402, -0.510408, -0.403474,
		34.600437, 31.039108, 25.314611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631660, 31.762705, 25.864353>,  <34.068855, 31.396393, 25.597044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631660, 31.762705, 25.864353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778980, 31.561619, 25.551525>,  <34.867374, 31.440968, 25.363829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778980, 31.561619, 25.551525>,  <34.631660, 31.762705, 25.864353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778980, 31.561619, 25.551525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643606, 0.744909, -0.175734,
		0.670914, -0.438620, 0.597903,
		0.368302, -0.502716, -0.782068,
		34.889469, 31.410805, 25.316904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244118, 31.757101, 25.961990>,  <34.631660, 31.762705, 25.864353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244118, 31.757101, 25.961990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212967, 31.695541, 25.567986>,  <35.194279, 31.658606, 25.331583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212967, 31.695541, 25.567986>,  <35.244118, 31.757101, 25.961990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212967, 31.695541, 25.567986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589585, 0.789617, -0.169982,
		0.803943, -0.593986, 0.029246,
		-0.077874, -0.153899, -0.985013,
		35.189606, 31.649372, 25.272482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977261, 32.381443, 26.289804>,  <35.244118, 31.757101, 25.961990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977261, 32.381443, 26.289804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817360, 32.747684, 26.307079>,  <34.721420, 32.967430, 26.317444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817360, 32.747684, 26.307079>,  <34.977261, 32.381443, 26.289804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817360, 32.747684, 26.307079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493740, -0.254784, 0.831448,
		0.772280, 0.311054, 0.553922,
		-0.399756, 0.915604, 0.043185,
		34.697433, 33.022366, 26.320034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084377, 32.688881, 26.896515>,  <34.977261, 32.381443, 26.289804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084377, 32.688881, 26.896515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759243, 32.887447, 26.774620>,  <34.564163, 33.006588, 26.701483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759243, 32.887447, 26.774620>,  <35.084377, 32.688881, 26.896515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759243, 32.887447, 26.774620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406587, -0.108908, 0.907098,
		0.417112, 0.861224, 0.290362,
		-0.812837, 0.496419, -0.304736,
		34.515392, 33.036373, 26.683199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986572, 33.173935, 27.490290>,  <35.084377, 32.688881, 26.896515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986572, 33.173935, 27.490290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674877, 33.072254, 27.261143>,  <34.487862, 33.011246, 27.123655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674877, 33.072254, 27.261143>,  <34.986572, 33.173935, 27.490290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674877, 33.072254, 27.261143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562823, -0.118297, 0.818068,
		-0.275724, 0.959889, -0.050890,
		-0.779234, -0.254204, -0.572865,
		34.441109, 32.995995, 27.089283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366562, 33.452545, 27.784456>,  <34.986572, 33.173935, 27.490290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366562, 33.452545, 27.784456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243889, 33.146820, 27.557556>,  <34.170284, 32.963387, 27.421415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243889, 33.146820, 27.557556>,  <34.366562, 33.452545, 27.784456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243889, 33.146820, 27.557556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466517, -0.398769, 0.789522,
		-0.829642, 0.506768, -0.234266,
		-0.306686, -0.764310, -0.567251,
		34.151882, 32.917526, 27.387381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653492, 33.357498, 27.941441>,  <34.366562, 33.452545, 27.784456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653492, 33.357498, 27.941441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784290, 33.008774, 27.795555>,  <33.862770, 32.799538, 27.708023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784290, 33.008774, 27.795555>,  <33.653492, 33.357498, 27.941441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784290, 33.008774, 27.795555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392253, -0.476328, 0.786924,
		-0.859774, -0.114261, -0.497728,
		0.326997, -0.871812, -0.364715,
		33.882389, 32.747231, 27.686140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094028, 32.950916, 28.043127>,  <33.653492, 33.357498, 27.941441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094028, 32.950916, 28.043127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393326, 32.691994, 27.984997>,  <33.572906, 32.536640, 27.950119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393326, 32.691994, 27.984997>,  <33.094028, 32.950916, 28.043127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393326, 32.691994, 27.984997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354695, -0.575449, 0.736919,
		-0.560646, -0.499846, -0.660174,
		0.748242, -0.647312, -0.145330,
		33.617798, 32.497803, 27.941399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734646, 32.338932, 28.057549>,  <33.094028, 32.950916, 28.043127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734646, 32.338932, 28.057549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122952, 32.278648, 28.132290>,  <33.355934, 32.242477, 28.177134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122952, 32.278648, 28.132290>,  <32.734646, 32.338932, 28.057549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122952, 32.278648, 28.132290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239985, -0.627925, 0.740349,
		0.005753, -0.763542, -0.645732,
		0.970759, -0.150707, 0.186851,
		33.414181, 32.233437, 28.188345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718777, 31.658594, 28.340368>,  <32.734646, 32.338932, 28.057549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718777, 31.658594, 28.340368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085964, 31.773090, 28.450203>,  <33.306278, 31.841787, 28.516104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085964, 31.773090, 28.450203>,  <32.718777, 31.658594, 28.340368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085964, 31.773090, 28.450203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056537, -0.590770, 0.804856,
		0.392599, -0.754358, -0.526127,
		0.917970, 0.286240, 0.274585,
		33.361355, 31.858963, 28.532578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125660, 31.056942, 28.405313>,  <32.718777, 31.658594, 28.340368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125660, 31.056942, 28.405313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303669, 31.334202, 28.632118>,  <33.410473, 31.500557, 28.768202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303669, 31.334202, 28.632118>,  <33.125660, 31.056942, 28.405313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303669, 31.334202, 28.632118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086620, -0.663512, 0.743134,
		0.891322, -0.281595, -0.355316,
		0.445019, 0.693149, 0.567011,
		33.437176, 31.542147, 28.802221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823051, 30.875689, 28.605093>,  <33.125660, 31.056942, 28.405313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823051, 30.875689, 28.605093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662266, 31.117821, 28.879902>,  <33.565796, 31.263100, 29.044786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662266, 31.117821, 28.879902>,  <33.823051, 30.875689, 28.605093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662266, 31.117821, 28.879902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099619, -0.716942, 0.689978,
		0.910221, 0.345785, 0.227881,
		-0.401962, 0.605331, 0.687023,
		33.541676, 31.299419, 29.086008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214348, 30.618977, 29.131363>,  <33.823051, 30.875689, 28.605093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214348, 30.618977, 29.131363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901855, 30.822132, 29.276539>,  <33.714359, 30.944025, 29.363644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901855, 30.822132, 29.276539>,  <34.214348, 30.618977, 29.131363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901855, 30.822132, 29.276539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052075, -0.632406, 0.772884,
		0.622065, 0.584902, 0.520504,
		-0.781232, 0.507889, 0.362939,
		33.667484, 30.974499, 29.385420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299732, 30.427845, 29.824057>,  <34.214348, 30.618977, 29.131363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299732, 30.427845, 29.824057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929970, 30.574959, 29.783634>,  <33.708115, 30.663227, 29.759380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929970, 30.574959, 29.783634>,  <34.299732, 30.427845, 29.824057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929970, 30.574959, 29.783634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301431, -0.542108, 0.784384,
		0.233702, 0.755548, 0.611988,
		-0.924404, 0.367784, -0.101054,
		33.652649, 30.685293, 29.753319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073452, 30.497919, 30.525837>,  <34.299732, 30.427845, 29.824057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073452, 30.497919, 30.525837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759895, 30.486645, 30.277733>,  <33.571762, 30.479879, 30.128870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759895, 30.486645, 30.277733>,  <34.073452, 30.497919, 30.525837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759895, 30.486645, 30.277733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405265, -0.733605, 0.545513,
		-0.470402, 0.678992, 0.563643,
		-0.783890, -0.028186, -0.620260,
		33.524727, 30.478189, 30.091654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368065, 30.538631, 30.988312>,  <34.073452, 30.497919, 30.525837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368065, 30.538631, 30.988312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321266, 30.368324, 30.629417>,  <33.293186, 30.266140, 30.414082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321266, 30.368324, 30.629417>,  <33.368065, 30.538631, 30.988312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321266, 30.368324, 30.629417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534474, -0.734459, 0.418219,
		-0.837048, 0.528480, -0.141632,
		-0.116998, -0.425768, -0.897236,
		33.286167, 30.240593, 30.360247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655922, 30.453850, 30.859104>,  <33.368065, 30.538631, 30.988312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655922, 30.453850, 30.859104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833183, 30.180000, 30.627621>,  <32.939541, 30.015690, 30.488731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833183, 30.180000, 30.627621>,  <32.655922, 30.453850, 30.859104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833183, 30.180000, 30.627621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638853, -0.694062, 0.331882,
		-0.628873, 0.222634, -0.744951,
		0.443154, -0.684626, -0.578707,
		32.966129, 29.974613, 30.454008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117104, 29.992292, 30.958479>,  <32.655922, 30.453850, 30.859104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117104, 29.992292, 30.958479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416920, 29.819180, 30.758121>,  <32.596809, 29.715311, 30.637907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416920, 29.819180, 30.758121>,  <32.117104, 29.992292, 30.958479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416920, 29.819180, 30.758121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409468, -0.897668, 0.162874,
		-0.520124, 0.083020, -0.850046,
		0.749538, -0.432782, -0.500893,
		32.641781, 29.689344, 30.607853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823662, 29.679974, 30.407610>,  <32.117104, 29.992292, 30.958479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823662, 29.679974, 30.407610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163326, 29.501469, 30.520588>,  <32.367126, 29.394365, 30.588375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163326, 29.501469, 30.520588>,  <31.823662, 29.679974, 30.407610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163326, 29.501469, 30.520588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509789, -0.832326, 0.217597,
		0.137983, -0.328763, -0.934278,
		0.849162, -0.446260, 0.282446,
		32.418076, 29.367590, 30.605322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615709, 28.999586, 30.289701>,  <31.823662, 29.679974, 30.407610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615709, 28.999586, 30.289701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953154, 28.934097, 30.494255>,  <32.155621, 28.894804, 30.616987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953154, 28.934097, 30.494255>,  <31.615709, 28.999586, 30.289701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953154, 28.934097, 30.494255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413240, -0.806077, 0.423641,
		0.342856, -0.568713, -0.747673,
		0.843613, -0.163721, 0.511384,
		32.206238, 28.884981, 30.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746138, 28.265226, 30.248075>,  <31.615709, 28.999586, 30.289701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746138, 28.265226, 30.248075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931765, 28.415009, 30.569180>,  <32.043140, 28.504879, 30.761841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931765, 28.415009, 30.569180>,  <31.746138, 28.265226, 30.248075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931765, 28.415009, 30.569180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367743, -0.743021, 0.559182,
		0.805857, -0.554708, -0.207109,
		0.464069, 0.374458, 0.802759,
		32.070984, 28.527346, 30.810007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223038, 27.760475, 30.563822>,  <31.746138, 28.265226, 30.248075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223038, 27.760475, 30.563822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148174, 27.996578, 30.877911>,  <32.103256, 28.138239, 31.066364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148174, 27.996578, 30.877911>,  <32.223038, 27.760475, 30.563822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148174, 27.996578, 30.877911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226639, -0.803724, 0.550148,
		0.955828, -0.074999, 0.284196,
		-0.187155, 0.590257, 0.785220,
		32.092030, 28.173655, 31.113476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438808, 27.341166, 31.130882>,  <32.223038, 27.760475, 30.563822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438808, 27.341166, 31.130882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222145, 27.628159, 31.306076>,  <32.092148, 27.800354, 31.411192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222145, 27.628159, 31.306076>,  <32.438808, 27.341166, 31.130882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222145, 27.628159, 31.306076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289706, -0.648448, 0.703979,
		0.789102, 0.254427, 0.559093,
		-0.541654, 0.717483, 0.437983,
		32.059650, 27.843403, 31.437471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540230, 27.114004, 31.750536>,  <32.438808, 27.341166, 31.130882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540230, 27.114004, 31.750536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242130, 27.373077, 31.813915>,  <32.063271, 27.528521, 31.851942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242130, 27.373077, 31.813915>,  <32.540230, 27.114004, 31.750536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242130, 27.373077, 31.813915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323484, -0.558989, 0.763472,
		0.583059, 0.517723, 0.626103,
		-0.745252, 0.647684, 0.158448,
		32.018555, 27.567383, 31.861450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526745, 27.323334, 32.533417>,  <32.540230, 27.114004, 31.750536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526745, 27.323334, 32.533417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164539, 27.349514, 32.365723>,  <31.947216, 27.365221, 32.265106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164539, 27.349514, 32.365723>,  <32.526745, 27.323334, 32.533417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164539, 27.349514, 32.365723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388470, -0.525321, 0.757053,
		-0.170685, 0.848383, 0.501111,
		-0.905515, 0.065449, -0.419236,
		31.892885, 27.369148, 32.239952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028084, 27.535370, 33.062481>,  <32.526745, 27.323334, 32.533417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028084, 27.535370, 33.062481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795851, 27.357285, 32.789803>,  <31.656511, 27.250433, 32.626194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795851, 27.357285, 32.789803>,  <32.028084, 27.535370, 33.062481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795851, 27.357285, 32.789803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574702, -0.369002, 0.730449,
		-0.576753, 0.815858, -0.041629,
		-0.580581, -0.445213, -0.681698,
		31.621677, 27.223721, 32.585293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253721, 27.679508, 33.285011>,  <32.028084, 27.535370, 33.062481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253721, 27.679508, 33.285011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247324, 27.368744, 33.033249>,  <31.243484, 27.182285, 32.882191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247324, 27.368744, 33.033249>,  <31.253721, 27.679508, 33.285011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247324, 27.368744, 33.033249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625134, -0.483518, 0.612714,
		-0.780354, 0.403265, -0.477938,
		-0.015995, -0.776909, -0.629409,
		31.242525, 27.135672, 32.844425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566053, 27.433365, 33.317451>,  <31.253721, 27.679508, 33.285011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566053, 27.433365, 33.317451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760742, 27.127342, 33.148792>,  <30.877556, 26.943727, 33.047596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760742, 27.127342, 33.148792>,  <30.566053, 27.433365, 33.317451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760742, 27.127342, 33.148792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684061, -0.633994, 0.360712,
		-0.543287, 0.112865, -0.831926,
		0.486724, -0.765058, -0.421647,
		30.906759, 26.897825, 33.022297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027391, 27.010521, 32.980808>,  <30.566053, 27.433365, 33.317451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027391, 27.010521, 32.980808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344372, 26.767372, 33.000854>,  <30.534559, 26.621483, 33.012882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344372, 26.767372, 33.000854>,  <30.027391, 27.010521, 32.980808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344372, 26.767372, 33.000854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598633, -0.759390, 0.254885,
		-0.116877, -0.231987, -0.965672,
		0.792451, -0.607873, 0.050119,
		30.582108, 26.585011, 33.015892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747034, 26.424660, 32.715775>,  <30.027391, 27.010521, 32.980808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747034, 26.424660, 32.715775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068445, 26.295963, 32.916103>,  <30.261292, 26.218746, 33.036301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068445, 26.295963, 32.916103>,  <29.747034, 26.424660, 32.715775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068445, 26.295963, 32.916103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531649, -0.766329, 0.360679,
		0.267749, -0.556077, -0.786821,
		0.803530, -0.321741, 0.500822,
		30.309504, 26.199440, 33.066349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670963, 26.263765, 31.944618>,  <29.747034, 26.424660, 32.715775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670963, 26.263765, 31.944618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306515, 26.371986, 31.820259>,  <29.087845, 26.436920, 31.745644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306515, 26.371986, 31.820259>,  <29.670963, 26.263765, 31.944618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306515, 26.371986, 31.820259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375573, 0.855688, -0.356010,
		0.169713, -0.441133, -0.881249,
		-0.911121, 0.270554, -0.310899,
		29.033178, 26.453152, 31.726990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721302, 26.502850, 31.220373>,  <29.670963, 26.263765, 31.944618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721302, 26.502850, 31.220373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381950, 26.649437, 31.373188>,  <29.178339, 26.737389, 31.464876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381950, 26.649437, 31.373188>,  <29.721302, 26.502850, 31.220373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381950, 26.649437, 31.373188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219597, 0.900257, -0.375918,
		-0.481692, -0.235028, -0.844236,
		-0.848381, 0.366468, 0.382036,
		29.127436, 26.759377, 31.487799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404598, 26.807043, 30.667633>,  <29.721302, 26.502850, 31.220373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404598, 26.807043, 30.667633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215033, 26.974495, 30.977512>,  <29.101294, 27.074966, 31.163441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215033, 26.974495, 30.977512>,  <29.404598, 26.807043, 30.667633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215033, 26.974495, 30.977512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081493, 0.896842, -0.434779,
		-0.876793, -0.142915, -0.459140,
		-0.473913, 0.418627, 0.774698,
		29.072859, 27.100082, 31.209923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864336, 27.315479, 30.419910>,  <29.404598, 26.807043, 30.667633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864336, 27.315479, 30.419910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942400, 27.416531, 30.798981>,  <28.989239, 27.477161, 31.026423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942400, 27.416531, 30.798981>,  <28.864336, 27.315479, 30.419910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942400, 27.416531, 30.798981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047320, 0.967557, -0.248182,
		-0.979630, 0.003590, 0.200781,
		0.195158, 0.252628, 0.947678,
		29.000948, 27.492319, 31.083284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535547, 27.913923, 30.438519>,  <28.864336, 27.315479, 30.419910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535547, 27.913923, 30.438519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741806, 27.941544, 30.780125>,  <28.865561, 27.958115, 30.985088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741806, 27.941544, 30.780125>,  <28.535547, 27.913923, 30.438519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741806, 27.941544, 30.780125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086774, 0.995831, -0.028122,
		-0.852395, -0.059605, 0.519489,
		0.515648, 0.069049, 0.854014,
		28.896500, 27.962257, 31.036329>
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
