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
	<43.122513, 32.346172, 22.666569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780361, 32.160526, 22.758591>,  <42.575069, 32.049141, 22.813805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780361, 32.160526, 22.758591>,  <43.122513, 32.346172, 22.666569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780361, 32.160526, 22.758591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414724, 0.879695, 0.232683,
		-0.310369, 0.103624, -0.944951,
		-0.855380, -0.464111, 0.230055,
		42.523746, 32.021294, 22.827606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444927, 32.577148, 22.377903>,  <43.122513, 32.346172, 22.666569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444927, 32.577148, 22.377903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390560, 32.454105, 22.754604>,  <42.357941, 32.380280, 22.980625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390560, 32.454105, 22.754604>,  <42.444927, 32.577148, 22.377903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390560, 32.454105, 22.754604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616802, 0.770153, 0.162539,
		-0.775294, -0.558784, -0.294415,
		-0.135920, -0.307612, 0.941754,
		42.349785, 32.361820, 23.037130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863594, 33.083977, 22.661686>,  <42.444927, 32.577148, 22.377903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863594, 33.083977, 22.661686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092838, 33.378872, 22.804806>,  <43.230385, 33.555809, 22.890676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092838, 33.378872, 22.804806>,  <42.863594, 33.083977, 22.661686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092838, 33.378872, 22.804806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661866, 0.673880, -0.328358,
		-0.483192, -0.048628, 0.874163,
		0.573114, 0.737239, 0.357798,
		43.264774, 33.600044, 22.912146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446281, 33.706711, 22.918629>,  <42.863594, 33.083977, 22.661686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446281, 33.706711, 22.918629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809799, 33.828274, 22.804272>,  <43.027908, 33.901211, 22.735657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809799, 33.828274, 22.804272>,  <42.446281, 33.706711, 22.918629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809799, 33.828274, 22.804272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417247, 0.661307, -0.623361,
		-0.000381, 0.685794, 0.727796,
		0.908793, 0.303908, -0.285893,
		43.082436, 33.919445, 22.718504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564457, 34.552227, 22.976999>,  <42.446281, 33.706711, 22.918629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564457, 34.552227, 22.976999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758301, 34.362560, 22.682976>,  <42.874607, 34.248760, 22.506561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758301, 34.362560, 22.682976>,  <42.564457, 34.552227, 22.976999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758301, 34.362560, 22.682976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530807, 0.508513, -0.677981,
		0.695265, 0.718734, -0.005259,
		0.484614, -0.474168, -0.735060,
		42.903687, 34.220310, 22.462458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972111, 34.837822, 22.608980>,  <42.564457, 34.552227, 22.976999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972111, 34.837822, 22.608980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600773, 34.875618, 22.465179>,  <41.377968, 34.898296, 22.378899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600773, 34.875618, 22.465179>,  <41.972111, 34.837822, 22.608980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600773, 34.875618, 22.465179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371702, -0.242880, 0.896017,
		-0.002652, 0.965444, 0.260599,
		-0.928349, 0.094489, -0.359501,
		41.322269, 34.903965, 22.357328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593189, 35.205425, 23.076435>,  <41.972111, 34.837822, 22.608980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593189, 35.205425, 23.076435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332024, 34.982655, 22.871090>,  <41.175323, 34.848991, 22.747883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332024, 34.982655, 22.871090>,  <41.593189, 35.205425, 23.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332024, 34.982655, 22.871090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407468, -0.313077, 0.857876,
		-0.638495, 0.769296, -0.022517,
		-0.652911, -0.556925, -0.513362,
		41.136150, 34.815578, 22.717081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892735, 35.453850, 23.328213>,  <41.593189, 35.205425, 23.076435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892735, 35.453850, 23.328213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868633, 35.089951, 23.163906>,  <40.854172, 34.871613, 23.065321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868633, 35.089951, 23.163906>,  <40.892735, 35.453850, 23.328213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868633, 35.089951, 23.163906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638203, -0.281307, 0.716634,
		-0.767507, 0.305332, -0.563654,
		-0.060252, -0.909746, -0.410769,
		40.850559, 34.817028, 23.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196121, 35.310913, 23.441654>,  <40.892735, 35.453850, 23.328213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196121, 35.310913, 23.441654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364010, 34.957382, 23.359013>,  <40.464745, 34.745266, 23.309427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364010, 34.957382, 23.359013>,  <40.196121, 35.310913, 23.441654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364010, 34.957382, 23.359013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727822, -0.463737, 0.505195,
		-0.542315, -0.061669, -0.837909,
		0.419725, -0.883824, -0.206607,
		40.489929, 34.692234, 23.297031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637756, 34.850136, 23.278158>,  <40.196121, 35.310913, 23.441654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637756, 34.850136, 23.278158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957153, 34.631577, 23.379242>,  <40.148792, 34.500443, 23.439892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957153, 34.631577, 23.379242>,  <39.637756, 34.850136, 23.278158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957153, 34.631577, 23.379242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539183, -0.462391, 0.703901,
		-0.267758, -0.698315, -0.663823,
		0.798491, -0.546398, 0.252711,
		40.196701, 34.467655, 23.455055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340126, 34.177879, 23.316261>,  <39.637756, 34.850136, 23.278158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340126, 34.177879, 23.316261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675747, 34.140392, 23.530628>,  <39.877121, 34.117901, 23.659248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675747, 34.140392, 23.530628>,  <39.340126, 34.177879, 23.316261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675747, 34.140392, 23.530628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527414, -0.381870, 0.758953,
		0.133522, -0.919452, -0.369839,
		0.839051, -0.093721, 0.535919,
		39.927464, 34.112274, 23.691404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385067, 33.464161, 23.595196>,  <39.340126, 34.177879, 23.316261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385067, 33.464161, 23.595196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628136, 33.682293, 23.826141>,  <39.773975, 33.813171, 23.964708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628136, 33.682293, 23.826141>,  <39.385067, 33.464161, 23.595196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628136, 33.682293, 23.826141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441837, -0.371957, 0.816351,
		0.659936, -0.751174, 0.014920,
		0.607671, 0.545332, 0.577364,
		39.810436, 33.845894, 23.999350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634762, 33.025574, 24.080465>,  <39.385067, 33.464161, 23.595196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634762, 33.025574, 24.080465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648293, 33.397961, 24.225883>,  <39.656410, 33.621391, 24.313133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648293, 33.397961, 24.225883>,  <39.634762, 33.025574, 24.080465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648293, 33.397961, 24.225883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489722, -0.301651, 0.818033,
		0.871222, -0.205706, 0.445710,
		0.033826, 0.930963, 0.363544,
		39.658440, 33.677250, 24.334948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555470, 32.817074, 24.724178>,  <39.634762, 33.025574, 24.080465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555470, 32.817074, 24.724178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526852, 33.216049, 24.723598>,  <39.509682, 33.455433, 24.723249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526852, 33.216049, 24.723598>,  <39.555470, 32.817074, 24.724178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526852, 33.216049, 24.723598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604938, -0.042234, 0.795151,
		0.793052, 0.057767, 0.606409,
		-0.071545, 0.997436, -0.001451,
		39.505390, 33.515282, 24.723164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845280, 32.986595, 25.426207>,  <39.555470, 32.817074, 24.724178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845280, 32.986595, 25.426207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605656, 33.284664, 25.309006>,  <39.461884, 33.463505, 25.238686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605656, 33.284664, 25.309006>,  <39.845280, 32.986595, 25.426207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605656, 33.284664, 25.309006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590200, -0.163649, 0.790495,
		0.541105, 0.646482, 0.537835,
		-0.599057, 0.745171, -0.293003,
		39.425938, 33.508217, 25.221106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706409, 33.432415, 25.904696>,  <39.845280, 32.986595, 25.426207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706409, 33.432415, 25.904696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398426, 33.543488, 25.674892>,  <39.213638, 33.610130, 25.537010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398426, 33.543488, 25.674892>,  <39.706409, 33.432415, 25.904696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398426, 33.543488, 25.674892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613841, -0.076445, 0.785720,
		0.174265, 0.957626, 0.229314,
		-0.769955, 0.277686, -0.574508,
		39.167439, 33.626793, 25.502541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424919, 34.066833, 26.242786>,  <39.706409, 33.432415, 25.904696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424919, 34.066833, 26.242786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142414, 33.882820, 26.027542>,  <38.972912, 33.772411, 25.898396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142414, 33.882820, 26.027542>,  <39.424919, 34.066833, 26.242786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142414, 33.882820, 26.027542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567552, -0.086426, 0.818789,
		-0.423174, 0.883687, -0.200051,
		-0.706264, -0.460030, -0.538111,
		38.930534, 33.744812, 25.866108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822739, 34.466610, 26.153166>,  <39.424919, 34.066833, 26.242786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822739, 34.466610, 26.153166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705597, 34.088566, 26.095188>,  <38.635311, 33.861740, 26.060402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705597, 34.088566, 26.095188>,  <38.822739, 34.466610, 26.153166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705597, 34.088566, 26.095188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685710, 0.101945, 0.720700,
		-0.666363, 0.310449, -0.677925,
		-0.292852, -0.945108, -0.144946,
		38.617741, 33.805035, 26.051704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156876, 34.430443, 26.424761>,  <38.822739, 34.466610, 26.153166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156876, 34.430443, 26.424761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249306, 34.041672, 26.407036>,  <38.304764, 33.808411, 26.396400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249306, 34.041672, 26.407036>,  <38.156876, 34.430443, 26.424761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249306, 34.041672, 26.407036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509463, -0.159676, 0.845548,
		-0.828886, -0.172808, -0.532058,
		0.231074, -0.971926, -0.044314,
		38.318626, 33.750095, 26.393742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593922, 34.231651, 26.707418>,  <38.156876, 34.430443, 26.424761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593922, 34.231651, 26.707418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821972, 33.904305, 26.678490>,  <37.958801, 33.707897, 26.661133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821972, 33.904305, 26.678490>,  <37.593922, 34.231651, 26.707418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821972, 33.904305, 26.678490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464042, -0.393416, 0.793656,
		-0.677958, -0.418919, -0.604053,
		0.570122, -0.818371, -0.072323,
		37.993008, 33.658794, 26.656794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189758, 33.612038, 26.848564>,  <37.593922, 34.231651, 26.707418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189758, 33.612038, 26.848564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558380, 33.501480, 26.957630>,  <37.779552, 33.435146, 27.023071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558380, 33.501480, 26.957630>,  <37.189758, 33.612038, 26.848564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558380, 33.501480, 26.957630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371171, -0.421169, 0.827556,
		-0.113888, -0.863844, -0.490718,
		0.921554, -0.276389, 0.272668,
		37.834846, 33.418564, 27.039431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053055, 32.982079, 27.131460>,  <37.189758, 33.612038, 26.848564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053055, 32.982079, 27.131460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436417, 33.016758, 27.240234>,  <37.666435, 33.037563, 27.305498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436417, 33.016758, 27.240234>,  <37.053055, 32.982079, 27.131460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436417, 33.016758, 27.240234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160270, -0.624897, 0.764079,
		0.236172, -0.775879, -0.585009,
		0.958403, 0.086694, 0.271933,
		37.723938, 33.042767, 27.321814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231365, 32.340553, 27.265383>,  <37.053055, 32.982079, 27.131460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231365, 32.340553, 27.265383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494587, 32.570408, 27.460014>,  <37.652519, 32.708321, 27.576794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494587, 32.570408, 27.460014>,  <37.231365, 32.340553, 27.265383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494587, 32.570408, 27.460014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147398, -0.535397, 0.831639,
		0.738405, -0.618981, -0.267618,
		0.658051, 0.574641, 0.486577,
		37.692001, 32.742802, 27.605988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675858, 31.909449, 27.586712>,  <37.231365, 32.340553, 27.265383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675858, 31.909449, 27.586712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697758, 32.249348, 27.796448>,  <37.710896, 32.453285, 27.922289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697758, 32.249348, 27.796448>,  <37.675858, 31.909449, 27.586712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697758, 32.249348, 27.796448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310313, -0.484644, 0.817818,
		0.949057, -0.207482, 0.237155,
		0.054747, 0.849748, 0.524339,
		37.714180, 32.504272, 27.953749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163322, 31.873077, 28.191418>,  <37.675858, 31.909449, 27.586712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163322, 31.873077, 28.191418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909691, 32.170300, 28.277035>,  <37.757511, 32.348633, 28.328405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909691, 32.170300, 28.277035>,  <38.163322, 31.873077, 28.191418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909691, 32.170300, 28.277035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272536, -0.473789, 0.837406,
		0.723650, 0.472646, 0.502928,
		-0.634078, 0.743055, 0.214043,
		37.719467, 32.393215, 28.341248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334354, 32.224812, 28.875275>,  <38.163322, 31.873077, 28.191418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334354, 32.224812, 28.875275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944038, 32.273743, 28.802761>,  <37.709846, 32.303101, 28.759253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944038, 32.273743, 28.802761>,  <38.334354, 32.224812, 28.875275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944038, 32.273743, 28.802761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218577, -0.518159, 0.826883,
		0.007220, 0.846491, 0.532354,
		-0.975793, 0.122331, -0.181283,
		37.651302, 32.310440, 28.748377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035305, 32.569572, 29.513546>,  <38.334354, 32.224812, 28.875275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035305, 32.569572, 29.513546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843594, 32.292744, 29.297646>,  <37.728569, 32.126648, 29.168104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843594, 32.292744, 29.297646>,  <38.035305, 32.569572, 29.513546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843594, 32.292744, 29.297646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102731, -0.566524, 0.817617,
		-0.871631, 0.447313, 0.200424,
		-0.479276, -0.692071, -0.539752,
		37.699810, 32.085121, 29.135719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260151, 32.339054, 29.787161>,  <38.035305, 32.569572, 29.513546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260151, 32.339054, 29.787161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433434, 32.040668, 29.584824>,  <37.537403, 31.861637, 29.463421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433434, 32.040668, 29.584824>,  <37.260151, 32.339054, 29.787161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433434, 32.040668, 29.584824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162674, -0.616733, 0.770180,
		-0.886494, -0.251357, -0.388520,
		0.433204, -0.745962, -0.505841,
		37.563396, 31.816879, 29.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044018, 31.671711, 30.082792>,  <37.260151, 32.339054, 29.787161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044018, 31.671711, 30.082792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364441, 31.592854, 29.856716>,  <37.556694, 31.545538, 29.721071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364441, 31.592854, 29.856716>,  <37.044018, 31.671711, 30.082792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364441, 31.592854, 29.856716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215189, -0.786240, 0.579241,
		-0.558569, -0.585629, -0.587401,
		0.801058, -0.197144, -0.565191,
		37.604759, 31.533710, 29.687159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983196, 30.885807, 30.161242>,  <37.044018, 31.671711, 30.082792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983196, 30.885807, 30.161242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334274, 31.039314, 30.046440>,  <37.544922, 31.131418, 29.977558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334274, 31.039314, 30.046440>,  <36.983196, 30.885807, 30.161242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334274, 31.039314, 30.046440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478991, -0.721019, 0.500699,
		-0.014782, -0.576934, -0.816657,
		0.877696, 0.383770, -0.287004,
		37.597584, 31.154446, 29.960339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413445, 30.390495, 29.716385>,  <36.983196, 30.885807, 30.161242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413445, 30.390495, 29.716385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657497, 30.617687, 29.937340>,  <37.803928, 30.754002, 30.069914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657497, 30.617687, 29.937340>,  <37.413445, 30.390495, 29.716385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657497, 30.617687, 29.937340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485335, -0.819011, 0.306057,
		0.626247, 0.081358, -0.775368,
		0.610135, 0.567980, 0.552389,
		37.840538, 30.788082, 30.103056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130096, 30.287134, 29.559301>,  <37.413445, 30.390495, 29.716385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130096, 30.287134, 29.559301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111698, 30.407555, 29.940300>,  <38.100658, 30.479807, 30.168900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111698, 30.407555, 29.940300>,  <38.130096, 30.287134, 29.559301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111698, 30.407555, 29.940300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526888, -0.802777, 0.279175,
		0.848689, 0.514701, -0.121692,
		-0.046000, 0.301051, 0.952498,
		38.097897, 30.497869, 30.226049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156815, 30.160877, 28.747053>,  <38.130096, 30.287134, 29.559301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156815, 30.160877, 28.747053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829899, 30.217369, 28.523590>,  <37.633751, 30.251265, 28.389513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829899, 30.217369, 28.523590>,  <38.156815, 30.160877, 28.747053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829899, 30.217369, 28.523590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513464, -0.261528, -0.817287,
		-0.261528, -0.954807, 0.141228,
		0.817287, -0.141228, 0.558656,
		37.584713, 30.259737, 28.355993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151871, 29.584599, 28.341850>,  <38.156815, 30.160877, 28.747053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151871, 29.584599, 28.341850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973267, 29.884304, 28.146206>,  <37.866104, 30.064129, 28.028818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973267, 29.884304, 28.146206>,  <38.151871, 29.584599, 28.341850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973267, 29.884304, 28.146206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469446, -0.269190, -0.840926,
		-0.761742, -0.605092, -0.231544,
		-0.446508, 0.749266, -0.489112,
		37.839314, 30.109083, 27.999472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729267, 29.318037, 27.740294>,  <38.151871, 29.584599, 28.341850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729267, 29.318037, 27.740294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842838, 29.698753, 27.693851>,  <37.910980, 29.927183, 27.665987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842838, 29.698753, 27.693851>,  <37.729267, 29.318037, 27.740294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842838, 29.698753, 27.693851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507120, -0.251827, -0.824264,
		-0.813765, 0.175152, -0.554173,
		0.283927, 0.951790, -0.116105,
		37.928017, 29.984291, 27.659019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438286, 29.537788, 27.120211>,  <37.729267, 29.318037, 27.740294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438286, 29.537788, 27.120211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791553, 29.701935, 27.211086>,  <38.003513, 29.800423, 27.265612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791553, 29.701935, 27.211086>,  <37.438286, 29.537788, 27.120211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791553, 29.701935, 27.211086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294121, -0.107187, -0.949739,
		-0.365390, 0.905599, -0.215362,
		0.883167, 0.410367, 0.227190,
		38.056503, 29.825045, 27.279243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845341, 29.222620, 26.922199>,  <37.438286, 29.537788, 27.120211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845341, 29.222620, 26.922199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154602, 29.031082, 26.755856>,  <37.340160, 28.916159, 26.656050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154602, 29.031082, 26.755856>,  <36.845341, 29.222620, 26.922199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154602, 29.031082, 26.755856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099825, 0.555651, -0.825401,
		0.626312, 0.679675, 0.381804,
		0.773155, -0.478845, -0.415859,
		37.386547, 28.887428, 26.631098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160446, 29.779816, 26.441887>,  <36.845341, 29.222620, 26.922199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160446, 29.779816, 26.441887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344448, 29.448944, 26.312782>,  <37.454849, 29.250422, 26.235319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344448, 29.448944, 26.312782>,  <37.160446, 29.779816, 26.441887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344448, 29.448944, 26.312782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290343, 0.483650, -0.825701,
		0.839106, 0.286113, 0.462646,
		0.460002, -0.827177, -0.322763,
		37.482449, 29.200790, 26.215954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882111, 29.995235, 26.205477>,  <37.160446, 29.779816, 26.441887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882111, 29.995235, 26.205477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796890, 29.641159, 26.040047>,  <37.745758, 29.428713, 25.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796890, 29.641159, 26.040047>,  <37.882111, 29.995235, 26.205477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796890, 29.641159, 26.040047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201139, 0.374488, -0.905153,
		0.956113, -0.276032, 0.098260,
		-0.213054, -0.885192, -0.413574,
		37.732975, 29.375601, 25.915974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419292, 29.812372, 25.844471>,  <37.882111, 29.995235, 26.205477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419292, 29.812372, 25.844471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113010, 29.629463, 25.663544>,  <37.929241, 29.519718, 25.554987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113010, 29.629463, 25.663544>,  <38.419292, 29.812372, 25.844471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113010, 29.629463, 25.663544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249148, 0.437470, -0.864029,
		0.592973, -0.774288, -0.221046,
		-0.765708, -0.457272, -0.452320,
		37.883297, 29.492281, 25.527847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784100, 29.509291, 25.236971>,  <38.419292, 29.812372, 25.844471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784100, 29.509291, 25.236971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391167, 29.539528, 25.168499>,  <38.155407, 29.557671, 25.127417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391167, 29.539528, 25.168499>,  <38.784100, 29.509291, 25.236971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391167, 29.539528, 25.168499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187122, 0.403169, -0.895790,
		0.001298, -0.911998, -0.410193,
		-0.982336, 0.075594, -0.171178,
		38.096466, 29.562206, 25.117146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701836, 29.391142, 24.515650>,  <38.784100, 29.509291, 25.236971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701836, 29.391142, 24.515650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344227, 29.543060, 24.610703>,  <38.129662, 29.634212, 24.667734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344227, 29.543060, 24.610703>,  <38.701836, 29.391142, 24.515650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344227, 29.543060, 24.610703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023757, 0.489479, -0.871691,
		-0.447383, -0.784960, -0.428585,
		-0.894026, 0.379798, 0.237633,
		38.076019, 29.657000, 24.681992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294376, 29.326365, 23.912497>,  <38.701836, 29.391142, 24.515650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294376, 29.326365, 23.912497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129669, 29.622719, 24.124737>,  <38.030846, 29.800531, 24.252081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129669, 29.622719, 24.124737>,  <38.294376, 29.326365, 23.912497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129669, 29.622719, 24.124737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121877, 0.621792, -0.773641,
		-0.903103, -0.253890, -0.346330,
		-0.411765, 0.740887, 0.530599,
		38.006138, 29.844984, 24.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831356, 29.699617, 23.371450>,  <38.294376, 29.326365, 23.912497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831356, 29.699617, 23.371450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879616, 29.959240, 23.671894>,  <37.908573, 30.115013, 23.852161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879616, 29.959240, 23.671894>,  <37.831356, 29.699617, 23.371450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879616, 29.959240, 23.671894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030046, 0.753904, -0.656297,
		-0.992240, 0.101751, 0.071458,
		0.120651, 0.649057, 0.751111,
		37.915810, 30.153957, 23.897228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321419, 30.189428, 23.165920>,  <37.831356, 29.699617, 23.371450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321419, 30.189428, 23.165920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575764, 30.349720, 23.429768>,  <37.728371, 30.445896, 23.588076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575764, 30.349720, 23.429768>,  <37.321419, 30.189428, 23.165920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575764, 30.349720, 23.429768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016486, 0.847398, -0.530702,
		-0.771628, 0.348327, 0.532221,
		0.635861, 0.400731, 0.659618,
		37.766521, 30.469938, 23.627653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025871, 30.744497, 23.284184>,  <37.321419, 30.189428, 23.165920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025871, 30.744497, 23.284184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410915, 30.788963, 23.382992>,  <37.641941, 30.815643, 23.442278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410915, 30.788963, 23.382992>,  <37.025871, 30.744497, 23.284184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410915, 30.788963, 23.382992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016976, 0.885369, -0.464580,
		-0.270349, 0.451404, 0.850380,
		0.962613, 0.111163, 0.247022,
		37.699699, 30.822311, 23.457098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053410, 31.358284, 23.692808>,  <37.025871, 30.744497, 23.284184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053410, 31.358284, 23.692808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425526, 31.293312, 23.561245>,  <37.648796, 31.254328, 23.482307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425526, 31.293312, 23.561245>,  <37.053410, 31.358284, 23.692808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425526, 31.293312, 23.561245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028050, 0.925496, -0.377718,
		0.365757, 0.342160, 0.865533,
		0.930288, -0.162431, -0.328909,
		37.704613, 31.244583, 23.462572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379158, 31.931343, 23.890989>,  <37.053410, 31.358284, 23.692808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379158, 31.931343, 23.890989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608875, 31.777313, 23.602016>,  <37.746704, 31.684895, 23.428633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608875, 31.777313, 23.602016>,  <37.379158, 31.931343, 23.890989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608875, 31.777313, 23.602016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156484, 0.917830, -0.364831,
		0.803554, 0.096471, 0.587362,
		0.574294, -0.385074, -0.722430,
		37.781162, 31.661791, 23.385288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888481, 32.317383, 23.924667>,  <37.379158, 31.931343, 23.890989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888481, 32.317383, 23.924667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906063, 32.165398, 23.555084>,  <37.916611, 32.074207, 23.333334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906063, 32.165398, 23.555084>,  <37.888481, 32.317383, 23.924667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906063, 32.165398, 23.555084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373811, 0.863925, -0.337490,
		0.926463, -0.330551, 0.180007,
		0.043955, -0.379961, -0.923958,
		37.919250, 32.051411, 23.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429832, 32.606377, 23.667862>,  <37.888481, 32.317383, 23.924667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429832, 32.606377, 23.667862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235123, 32.488861, 23.338806>,  <38.118298, 32.418350, 23.141373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235123, 32.488861, 23.338806>,  <38.429832, 32.606377, 23.667862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235123, 32.488861, 23.338806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387960, 0.771058, -0.504932,
		0.782652, -0.564937, -0.261346,
		-0.486768, -0.293794, -0.822644,
		38.089088, 32.400726, 23.092014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900558, 32.765984, 23.207756>,  <38.429832, 32.606377, 23.667862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900558, 32.765984, 23.207756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543228, 32.737789, 23.030220>,  <38.328831, 32.720871, 22.923698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543228, 32.737789, 23.030220>,  <38.900558, 32.765984, 23.207756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543228, 32.737789, 23.030220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168424, 0.863132, -0.476064,
		0.416648, -0.500035, -0.759190,
		-0.893330, -0.070485, -0.443840,
		38.275230, 32.716644, 22.897068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010490, 32.824074, 22.532551>,  <38.900558, 32.765984, 23.207756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010490, 32.824074, 22.532551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626072, 32.923073, 22.581764>,  <38.395420, 32.982471, 22.611292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626072, 32.923073, 22.581764>,  <39.010490, 32.824074, 22.532551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626072, 32.923073, 22.581764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151156, 0.843314, -0.515726,
		-0.231399, -0.477038, -0.847873,
		-0.961044, 0.247500, 0.123035,
		38.337757, 32.997322, 22.618675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736282, 32.965664, 21.886076>,  <39.010490, 32.824074, 22.532551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736282, 32.965664, 21.886076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479351, 33.150997, 22.130283>,  <38.325191, 33.262196, 22.276808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479351, 33.150997, 22.130283>,  <38.736282, 32.965664, 21.886076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479351, 33.150997, 22.130283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119182, 0.847271, -0.517617,
		-0.757104, -0.259718, -0.599449,
		-0.642331, 0.463334, 0.610519,
		38.286652, 33.289997, 22.313438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486042, 33.453259, 21.454464>,  <38.736282, 32.965664, 21.886076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486042, 33.453259, 21.454464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355137, 33.578304, 21.811153>,  <38.276592, 33.653332, 22.025167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355137, 33.578304, 21.811153>,  <38.486042, 33.453259, 21.454464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355137, 33.578304, 21.811153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070910, 0.932905, -0.353073,
		-0.942267, -0.178782, -0.283142,
		-0.327267, 0.312611, 0.891723,
		38.256958, 33.672089, 22.078671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860935, 33.902809, 21.393000>,  <38.486042, 33.453259, 21.454464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860935, 33.902809, 21.393000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019901, 33.990845, 21.749340>,  <38.115280, 34.043667, 21.963144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019901, 33.990845, 21.749340>,  <37.860935, 33.902809, 21.393000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019901, 33.990845, 21.749340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126014, 0.948524, -0.290555,
		-0.908944, 0.227732, 0.349227,
		0.397419, 0.220091, 0.890852,
		38.139126, 34.056873, 22.016596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516460, 34.509407, 21.591196>,  <37.860935, 33.902809, 21.393000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516460, 34.509407, 21.591196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846428, 34.491425, 21.816578>,  <38.044411, 34.480637, 21.951807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846428, 34.491425, 21.816578>,  <37.516460, 34.509407, 21.591196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846428, 34.491425, 21.816578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044607, 0.998901, 0.014387,
		-0.563484, 0.013266, 0.826021,
		0.824922, -0.044954, 0.563456,
		38.093906, 34.477940, 21.985615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388229, 34.875202, 22.255209>,  <37.516460, 34.509407, 21.591196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388229, 34.875202, 22.255209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783676, 34.873550, 22.195042>,  <38.020943, 34.872559, 22.158941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783676, 34.873550, 22.195042>,  <37.388229, 34.875202, 22.255209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783676, 34.873550, 22.195042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027031, 0.988231, 0.150566,
		0.148024, -0.152917, 0.977090,
		0.988614, -0.004125, -0.150416,
		38.080261, 34.872314, 22.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783348, 35.124256, 22.858994>,  <37.388229, 34.875202, 22.255209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783348, 35.124256, 22.858994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953018, 35.204067, 22.505665>,  <38.054821, 35.251953, 22.293667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953018, 35.204067, 22.505665>,  <37.783348, 35.124256, 22.858994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953018, 35.204067, 22.505665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132688, 0.978591, 0.157332,
		0.895805, 0.050470, 0.441573,
		0.424179, 0.199530, -0.883323,
		38.080273, 35.263927, 22.240667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620594, 34.924114, 23.535074>,  <37.783348, 35.124256, 22.858994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620594, 34.924114, 23.535074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398220, 35.001259, 23.858490>,  <37.264793, 35.047546, 24.052540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398220, 35.001259, 23.858490>,  <37.620594, 34.924114, 23.535074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398220, 35.001259, 23.858490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824795, -0.248726, -0.507787,
		0.103174, -0.949179, 0.297345,
		-0.555938, 0.192858, 0.808541,
		37.231438, 35.059116, 24.101051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035851, 34.477268, 23.415859>,  <37.620594, 34.924114, 23.535074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035851, 34.477268, 23.415859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946369, 34.724262, 23.717499>,  <36.892681, 34.872459, 23.898483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946369, 34.724262, 23.717499>,  <37.035851, 34.477268, 23.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946369, 34.724262, 23.717499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967069, -0.044268, -0.250635,
		-0.121382, -0.785334, 0.607056,
		-0.223705, 0.617487, 0.754099,
		36.879257, 34.909508, 23.943729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412121, 34.262344, 23.917759>,  <37.035851, 34.477268, 23.415859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412121, 34.262344, 23.917759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450333, 34.660511, 23.915657>,  <36.473259, 34.899410, 23.914396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450333, 34.660511, 23.915657>,  <36.412121, 34.262344, 23.917759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450333, 34.660511, 23.915657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989656, 0.094405, -0.108025,
		-0.107033, 0.015520, 0.994134,
		0.095528, 0.995413, -0.005255,
		36.478992, 34.959133, 23.914080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046589, 34.561886, 24.470015>,  <36.412121, 34.262344, 23.917759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046589, 34.561886, 24.470015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082554, 34.826599, 24.172302>,  <36.104134, 34.985428, 23.993675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082554, 34.826599, 24.172302>,  <36.046589, 34.561886, 24.470015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082554, 34.826599, 24.172302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990056, 0.140569, 0.005381,
		0.108184, 0.736394, 0.667847,
		0.089916, 0.661788, -0.744279,
		36.109528, 35.025135, 23.949018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338478, 34.413601, 24.739050>,  <36.046589, 34.561886, 24.470015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338478, 34.413601, 24.739050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582710, 34.106701, 24.660545>,  <35.729252, 33.922562, 24.613443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582710, 34.106701, 24.660545>,  <35.338478, 34.413601, 24.739050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582710, 34.106701, 24.660545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788918, -0.610941, -0.066026,
		-0.069246, 0.195148, -0.978326,
		0.610584, -0.767247, -0.196261,
		35.765884, 33.876526, 24.601667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160900, 33.978287, 24.034784>,  <35.338478, 34.413601, 24.739050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160900, 33.978287, 24.034784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333218, 33.773769, 24.332237>,  <35.436607, 33.651058, 24.510710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333218, 33.773769, 24.332237>,  <35.160900, 33.978287, 24.034784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333218, 33.773769, 24.332237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730823, -0.681087, -0.044918,
		0.529446, -0.524114, -0.667077,
		0.430795, -0.511297, 0.743633,
		35.462456, 33.620380, 24.555326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427139, 34.074123, 23.836256>,  <35.160900, 33.978287, 24.034784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427139, 34.074123, 23.836256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132435, 34.286163, 24.004150>,  <33.955612, 34.413387, 24.104887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132435, 34.286163, 24.004150>,  <34.427139, 34.074123, 23.836256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132435, 34.286163, 24.004150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420156, -0.845296, 0.330067,
		0.529770, 0.066825, 0.845505,
		-0.736758, 0.530103, 0.419735,
		33.911407, 34.445194, 24.130072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311169, 33.844360, 24.601961>,  <34.427139, 34.074123, 23.836256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311169, 33.844360, 24.601961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980659, 34.027943, 24.471340>,  <33.782356, 34.138092, 24.392967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980659, 34.027943, 24.471340>,  <34.311169, 33.844360, 24.601961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980659, 34.027943, 24.471340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531812, -0.826682, 0.183773,
		-0.185613, 0.325512, 0.927141,
		-0.826271, 0.458954, -0.326554,
		33.732777, 34.165630, 24.373373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821743, 33.712509, 25.143755>,  <34.311169, 33.844360, 24.601961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821743, 33.712509, 25.143755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616165, 33.796234, 24.810997>,  <33.492817, 33.846470, 24.611341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616165, 33.796234, 24.810997>,  <33.821743, 33.712509, 25.143755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616165, 33.796234, 24.810997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641632, -0.737462, 0.210852,
		-0.569358, 0.642137, 0.513314,
		-0.513945, 0.209308, -0.831896,
		33.461983, 33.859028, 24.561428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095219, 33.802013, 25.376932>,  <33.821743, 33.712509, 25.143755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095219, 33.802013, 25.376932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102867, 33.728271, 24.983864>,  <33.107456, 33.684025, 24.748022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102867, 33.728271, 24.983864>,  <33.095219, 33.802013, 25.376932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102867, 33.728271, 24.983864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736155, -0.667660, 0.110931,
		-0.676542, 0.721278, -0.148486,
		0.019126, -0.184358, -0.982673,
		33.108604, 33.672966, 24.689062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454437, 33.791622, 25.232685>,  <33.095219, 33.802013, 25.376932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454437, 33.791622, 25.232685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644169, 33.576778, 24.953678>,  <32.758007, 33.447872, 24.786274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644169, 33.576778, 24.953678>,  <32.454437, 33.791622, 25.232685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644169, 33.576778, 24.953678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682670, -0.724682, 0.093799,
		-0.555857, 0.431681, -0.710404,
		0.474326, -0.537110, -0.697515,
		32.786469, 33.415646, 24.744423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979397, 33.235088, 25.032600>,  <32.454437, 33.791622, 25.232685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979397, 33.235088, 25.032600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268372, 33.064613, 24.814812>,  <32.441757, 32.962330, 24.684137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268372, 33.064613, 24.814812>,  <31.979397, 33.235088, 25.032600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268372, 33.064613, 24.814812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336140, -0.904613, 0.262078,
		-0.604231, -0.006316, -0.796784,
		0.722436, -0.426187, -0.544473,
		32.485104, 32.936756, 24.651470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683052, 32.719601, 24.530481>,  <31.979397, 33.235088, 25.032600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683052, 32.719601, 24.530481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062096, 32.603752, 24.584381>,  <32.289520, 32.534241, 24.616722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062096, 32.603752, 24.584381>,  <31.683052, 32.719601, 24.530481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062096, 32.603752, 24.584381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317478, -0.900556, 0.296996,
		0.035334, -0.324216, -0.945323,
		0.947607, -0.289625, 0.134751,
		32.346378, 32.516865, 24.624807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783457, 32.081676, 24.140251>,  <31.683052, 32.719601, 24.530481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783457, 32.081676, 24.140251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062317, 32.089657, 24.426910>,  <32.229633, 32.094444, 24.598906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062317, 32.089657, 24.426910>,  <31.783457, 32.081676, 24.140251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062317, 32.089657, 24.426910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362809, -0.852345, 0.376666,
		0.618348, -0.522599, -0.586972,
		0.697148, 0.019952, 0.716649,
		32.271461, 32.095642, 24.641905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006374, 31.337137, 24.105051>,  <31.783457, 32.081676, 24.140251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006374, 31.337137, 24.105051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153263, 31.473877, 24.451065>,  <32.241398, 31.555922, 24.658672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153263, 31.473877, 24.451065>,  <32.006374, 31.337137, 24.105051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153263, 31.473877, 24.451065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153894, -0.894863, 0.418971,
		0.917313, -0.286980, -0.276007,
		0.367225, 0.341851, 0.865034,
		32.263432, 31.576433, 24.710575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087521, 30.664919, 24.406075>,  <32.006374, 31.337137, 24.105051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087521, 30.664919, 24.406075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149006, 30.937069, 24.692699>,  <32.185898, 31.100359, 24.864674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149006, 30.937069, 24.692699>,  <32.087521, 30.664919, 24.406075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149006, 30.937069, 24.692699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011430, -0.723907, 0.689803,
		0.988049, -0.114224, -0.103500,
		0.153716, 0.680377, 0.716561,
		32.195122, 31.141182, 24.907667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665600, 30.391874, 24.818060>,  <32.087521, 30.664919, 24.406075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665600, 30.391874, 24.818060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447166, 30.639309, 25.044029>,  <32.316105, 30.787769, 25.179611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447166, 30.639309, 25.044029>,  <32.665600, 30.391874, 24.818060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447166, 30.639309, 25.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157800, -0.738236, 0.655825,
		0.822733, 0.268992, 0.500753,
		-0.546086, 0.618587, 0.564925,
		32.283340, 30.824884, 25.213507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935822, 30.246544, 25.481672>,  <32.665600, 30.391874, 24.818060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935822, 30.246544, 25.481672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577988, 30.412300, 25.548595>,  <32.363285, 30.511755, 25.588749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577988, 30.412300, 25.548595>,  <32.935822, 30.246544, 25.481672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577988, 30.412300, 25.548595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139869, -0.615203, 0.775862,
		0.424441, 0.670675, 0.608313,
		-0.894587, 0.414392, 0.167310,
		32.309612, 30.536617, 25.598789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888626, 30.472332, 26.257507>,  <32.935822, 30.246544, 25.481672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888626, 30.472332, 26.257507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508900, 30.422409, 26.142109>,  <32.281063, 30.392456, 26.072870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508900, 30.422409, 26.142109>,  <32.888626, 30.472332, 26.257507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508900, 30.422409, 26.142109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129349, -0.681387, 0.720403,
		-0.286490, 0.721204, 0.630705,
		-0.949312, -0.124808, -0.288497,
		32.224106, 30.384966, 26.055559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448708, 30.392859, 26.850611>,  <32.888626, 30.472332, 26.257507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448708, 30.392859, 26.850611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221668, 30.238945, 26.559467>,  <32.085445, 30.146597, 26.384781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221668, 30.238945, 26.559467>,  <32.448708, 30.392859, 26.850611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221668, 30.238945, 26.559467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339946, -0.695653, 0.632853,
		-0.749847, 0.606638, 0.264045,
		-0.567597, -0.384782, -0.727858,
		32.051388, 30.123510, 26.341110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883493, 30.169168, 27.099701>,  <32.448708, 30.392859, 26.850611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883493, 30.169168, 27.099701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872953, 29.936108, 26.774784>,  <31.866631, 29.796270, 26.579834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872953, 29.936108, 26.774784>,  <31.883493, 30.169168, 27.099701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872953, 29.936108, 26.774784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246102, -0.783786, 0.570187,
		-0.968886, 0.214931, -0.122740,
		-0.026349, -0.582653, -0.812294,
		31.865049, 29.761312, 26.531096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387241, 29.731487, 27.351366>,  <31.883493, 30.169168, 27.099701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387241, 29.731487, 27.351366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550829, 29.549965, 27.034683>,  <31.648981, 29.441051, 26.844673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550829, 29.549965, 27.034683>,  <31.387241, 29.731487, 27.351366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550829, 29.549965, 27.034683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225907, -0.890924, 0.393982,
		-0.884144, 0.017726, -0.466878,
		0.408969, -0.453807, -0.791709,
		31.673521, 29.413822, 26.797171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965134, 29.189405, 27.251066>,  <31.387241, 29.731487, 27.351366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965134, 29.189405, 27.251066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318325, 29.092728, 27.090103>,  <31.530241, 29.034721, 26.993526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318325, 29.092728, 27.090103>,  <30.965134, 29.189405, 27.251066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318325, 29.092728, 27.090103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084132, -0.761891, 0.642218,
		-0.461810, -0.600921, -0.652400,
		0.882980, -0.241695, -0.402405,
		31.583220, 29.020220, 26.969381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953976, 28.470722, 27.385918>,  <30.965134, 29.189405, 27.251066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953976, 28.470722, 27.385918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335403, 28.548691, 27.294083>,  <31.564260, 28.595472, 27.238981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335403, 28.548691, 27.294083>,  <30.953976, 28.470722, 27.385918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335403, 28.548691, 27.294083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298577, -0.711706, 0.635867,
		-0.039455, -0.674893, -0.736860,
		0.953570, 0.194921, -0.229587,
		31.621475, 28.607166, 27.225206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352905, 27.786287, 27.069700>,  <30.953976, 28.470722, 27.385918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352905, 27.786287, 27.069700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619600, 28.037907, 27.229580>,  <31.779617, 28.188877, 27.325508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619600, 28.037907, 27.229580>,  <31.352905, 27.786287, 27.069700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619600, 28.037907, 27.229580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303854, -0.719133, 0.624916,
		0.680537, -0.295206, -0.670613,
		0.666739, 0.629047, 0.399698,
		31.819622, 28.226622, 27.349489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006538, 27.391470, 27.212400>,  <31.352905, 27.786287, 27.069700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006538, 27.391470, 27.212400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023453, 27.717583, 27.443409>,  <32.033604, 27.913250, 27.582014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023453, 27.717583, 27.443409>,  <32.006538, 27.391470, 27.212400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023453, 27.717583, 27.443409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329657, -0.557053, 0.762246,
		0.943153, 0.158150, -0.292319,
		0.042288, 0.815280, 0.577521,
		32.036140, 27.962166, 27.616665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608162, 27.415392, 27.514397>,  <32.006538, 27.391470, 27.212400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608162, 27.415392, 27.514397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375248, 27.616955, 27.769588>,  <32.235497, 27.737892, 27.922703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375248, 27.616955, 27.769588>,  <32.608162, 27.415392, 27.514397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375248, 27.616955, 27.769588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406513, -0.499123, 0.765261,
		0.704050, 0.704950, 0.085789,
		-0.582290, 0.503907, 0.637978,
		32.200562, 27.768127, 27.960981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037960, 27.467291, 28.100241>,  <32.608162, 27.415392, 27.514397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037960, 27.467291, 28.100241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685226, 27.572720, 28.256645>,  <32.473587, 27.635977, 28.350489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685226, 27.572720, 28.256645>,  <33.037960, 27.467291, 28.100241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685226, 27.572720, 28.256645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240899, -0.461029, 0.854061,
		0.405376, 0.847338, 0.343058,
		-0.881838, 0.263573, 0.391013,
		32.420673, 27.651793, 28.373949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203995, 27.736897, 28.777866>,  <33.037960, 27.467291, 28.100241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203995, 27.736897, 28.777866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820648, 27.622711, 28.780319>,  <32.590641, 27.554199, 28.781790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820648, 27.622711, 28.780319>,  <33.203995, 27.736897, 28.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820648, 27.622711, 28.780319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169049, -0.549973, 0.817895,
		-0.230107, 0.784883, 0.575335,
		-0.958370, -0.285463, 0.006131,
		32.533138, 27.537073, 28.782158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000099, 27.716574, 29.524681>,  <33.203995, 27.736897, 28.777866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000099, 27.716574, 29.524681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785576, 27.460197, 29.305019>,  <32.656864, 27.306372, 29.173222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785576, 27.460197, 29.305019>,  <33.000099, 27.716574, 29.524681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785576, 27.460197, 29.305019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085874, -0.688700, 0.719943,
		-0.839643, 0.338952, 0.424394,
		-0.536307, -0.640940, -0.549155,
		32.624683, 27.267916, 29.140272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598766, 27.501579, 29.962540>,  <33.000099, 27.716574, 29.524681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598766, 27.501579, 29.962540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527416, 27.228748, 29.678864>,  <32.484604, 27.065050, 29.508657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527416, 27.228748, 29.678864>,  <32.598766, 27.501579, 29.962540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527416, 27.228748, 29.678864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025944, -0.717239, 0.696343,
		-0.983620, 0.142611, 0.110243,
		-0.178377, -0.682077, -0.709191,
		32.473904, 27.024124, 29.466106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103901, 27.075039, 30.221319>,  <32.598766, 27.501579, 29.962540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103901, 27.075039, 30.221319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255688, 26.862537, 29.918327>,  <32.346760, 26.735037, 29.736532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255688, 26.862537, 29.918327>,  <32.103901, 27.075039, 30.221319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255688, 26.862537, 29.918327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017645, -0.814411, 0.580020,
		-0.925037, -0.233465, -0.299668,
		0.379468, -0.531252, -0.757480,
		32.369530, 26.703161, 29.691084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763332, 26.358614, 30.259602>,  <32.103901, 27.075039, 30.221319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763332, 26.358614, 30.259602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115089, 26.337364, 30.070351>,  <32.326145, 26.324614, 29.956800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115089, 26.337364, 30.070351>,  <31.763332, 26.358614, 30.259602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115089, 26.337364, 30.070351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237223, -0.812720, 0.532177,
		-0.412790, -0.580228, -0.702097,
		0.879391, -0.053124, -0.473126,
		32.378906, 26.321426, 29.928413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849157, 25.708363, 29.827295>,  <31.763332, 26.358614, 30.259602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849157, 25.708363, 29.827295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213963, 25.846931, 29.915134>,  <32.432846, 25.930073, 29.967838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213963, 25.846931, 29.915134>,  <31.849157, 25.708363, 29.827295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213963, 25.846931, 29.915134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251617, -0.895358, 0.367456,
		0.323915, -0.279870, -0.903744,
		0.912013, 0.346421, 0.219600,
		32.487568, 25.950857, 29.981014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256985, 25.121771, 29.711231>,  <31.849157, 25.708363, 29.827295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256985, 25.121771, 29.711231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551220, 25.342461, 29.868462>,  <32.727760, 25.474874, 29.962799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551220, 25.342461, 29.868462>,  <32.256985, 25.121771, 29.711231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551220, 25.342461, 29.868462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375266, -0.814956, 0.441613,
		0.563987, -0.177339, -0.806517,
		0.735591, 0.551723, 0.393075,
		32.771896, 25.507978, 29.986383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875645, 24.789587, 29.626501>,  <32.256985, 25.121771, 29.711231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875645, 24.789587, 29.626501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961720, 25.017223, 29.943947>,  <33.013367, 25.153805, 30.134415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961720, 25.017223, 29.943947>,  <32.875645, 24.789587, 29.626501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961720, 25.017223, 29.943947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293730, -0.812742, 0.503163,
		0.931352, 0.124834, -0.342053,
		0.215189, 0.569093, 0.793617,
		33.026276, 25.187952, 30.182032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536575, 24.583881, 29.772856>,  <32.875645, 24.789587, 29.626501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536575, 24.583881, 29.772856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365372, 24.730808, 30.103161>,  <33.262650, 24.818966, 30.301344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365372, 24.730808, 30.103161>,  <33.536575, 24.583881, 29.772856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365372, 24.730808, 30.103161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182117, -0.859887, 0.476895,
		0.885234, 0.354502, 0.301146,
		-0.428011, 0.367320, 0.825762,
		33.236969, 24.841003, 30.350889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908169, 24.345264, 30.250856>,  <33.536575, 24.583881, 29.772856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908169, 24.345264, 30.250856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605267, 24.474602, 30.477840>,  <33.423527, 24.552204, 30.614031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605267, 24.474602, 30.477840>,  <33.908169, 24.345264, 30.250856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605267, 24.474602, 30.477840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105163, -0.797145, 0.594559,
		0.644596, 0.509910, 0.569639,
		-0.757256, 0.323346, 0.567460,
		33.378090, 24.571606, 30.648079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157516, 24.349848, 30.929407>,  <33.908169, 24.345264, 30.250856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157516, 24.349848, 30.929407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760868, 24.345387, 30.980888>,  <33.522881, 24.342710, 31.011778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760868, 24.345387, 30.980888>,  <34.157516, 24.349848, 30.929407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760868, 24.345387, 30.980888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088237, -0.786141, 0.611716,
		0.094356, 0.617947, 0.780537,
		-0.991620, -0.011153, 0.128703,
		33.463383, 24.342041, 31.019499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068405, 24.185419, 31.599163>,  <34.157516, 24.349848, 30.929407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068405, 24.185419, 31.599163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719978, 24.077141, 31.435230>,  <33.510921, 24.012175, 31.336870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719978, 24.077141, 31.435230>,  <34.068405, 24.185419, 31.599163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719978, 24.077141, 31.435230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055089, -0.775309, 0.629176,
		-0.488061, 0.570633, 0.660435,
		-0.871069, -0.270693, -0.409834,
		33.458656, 23.995934, 31.312281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571674, 23.963408, 32.160793>,  <34.068405, 24.185419, 31.599163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571674, 23.963408, 32.160793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429039, 23.804474, 31.822571>,  <33.343456, 23.709114, 31.619637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429039, 23.804474, 31.822571>,  <33.571674, 23.963408, 32.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429039, 23.804474, 31.822571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244818, -0.833689, 0.495001,
		-0.901615, 0.383519, 0.200009,
		-0.356588, -0.397335, -0.845559,
		33.322063, 23.685274, 31.568903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801926, 23.681416, 32.333916>,  <33.571674, 23.963408, 32.160793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801926, 23.681416, 32.333916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927235, 23.481647, 32.010822>,  <33.002419, 23.361786, 31.816965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927235, 23.481647, 32.010822>,  <32.801926, 23.681416, 32.333916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927235, 23.481647, 32.010822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326340, -0.855368, 0.402303,
		-0.891831, 0.137567, -0.430943,
		0.313271, -0.499421, -0.807737,
		33.021217, 23.331821, 31.768501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252590, 23.492786, 31.925554>,  <32.801926, 23.681416, 32.333916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252590, 23.492786, 31.925554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554810, 23.235558, 31.875580>,  <32.736141, 23.081221, 31.845596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554810, 23.235558, 31.875580>,  <32.252590, 23.492786, 31.925554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554810, 23.235558, 31.875580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527001, -0.709938, 0.467181,
		-0.389126, -0.287137, -0.875291,
		0.755547, -0.643071, -0.124934,
		32.781475, 23.042637, 31.838099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961317, 22.754986, 31.815166>,  <32.252590, 23.492786, 31.925554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961317, 22.754986, 31.815166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343018, 22.694229, 31.918186>,  <32.572037, 22.657776, 31.979998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343018, 22.694229, 31.918186>,  <31.961317, 22.754986, 31.815166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343018, 22.694229, 31.918186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278806, -0.763215, 0.582898,
		0.108030, -0.628038, -0.770647,
		0.954252, -0.151891, 0.257551,
		32.629292, 22.648663, 31.995451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022396, 22.041264, 31.966009>,  <31.961317, 22.754986, 31.815166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022396, 22.041264, 31.966009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346401, 22.188320, 32.148754>,  <32.540802, 22.276554, 32.258400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346401, 22.188320, 32.148754>,  <32.022396, 22.041264, 31.966009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346401, 22.188320, 32.148754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212665, -0.541881, 0.813104,
		0.546497, -0.755781, -0.360744,
		0.810009, 0.367641, 0.456864,
		32.589405, 22.298613, 32.285812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283863, 21.475563, 32.208378>,  <32.022396, 22.041264, 31.966009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283863, 21.475563, 32.208378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451710, 21.766636, 32.425411>,  <32.552418, 21.941280, 32.555634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451710, 21.766636, 32.425411>,  <32.283863, 21.475563, 32.208378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451710, 21.766636, 32.425411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059617, -0.618562, 0.783471,
		0.905740, -0.296412, -0.302943,
		0.419619, 0.727682, 0.542585,
		32.577595, 21.984940, 32.588188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924042, 21.189529, 32.465000>,  <32.283863, 21.475563, 32.208378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924042, 21.189529, 32.465000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809948, 21.498322, 32.692223>,  <32.741493, 21.683596, 32.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809948, 21.498322, 32.692223>,  <32.924042, 21.189529, 32.465000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809948, 21.498322, 32.692223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214905, -0.526077, 0.822836,
		0.934054, 0.356779, -0.015846,
		-0.285234, 0.771979, 0.568058,
		32.724377, 21.729916, 32.862640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387241, 21.127438, 32.944542>,  <32.924042, 21.189529, 32.465000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387241, 21.127438, 32.944542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102291, 21.351273, 33.113960>,  <32.931320, 21.485573, 33.215611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102291, 21.351273, 33.113960>,  <33.387241, 21.127438, 32.944542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102291, 21.351273, 33.113960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133427, -0.484508, 0.864552,
		0.689002, 0.672394, 0.270485,
		-0.712372, 0.559588, 0.423543,
		32.888580, 21.519150, 33.241024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608662, 21.666664, 33.509132>,  <33.387241, 21.127438, 32.944542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608662, 21.666664, 33.509132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248688, 21.501530, 33.565239>,  <33.032703, 21.402449, 33.598904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248688, 21.501530, 33.565239>,  <33.608662, 21.666664, 33.509132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248688, 21.501530, 33.565239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198593, -0.101703, 0.974791,
		-0.388164, 0.905109, 0.173513,
		-0.899938, -0.412837, 0.140270,
		32.978706, 21.377678, 33.607319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619930, 21.874521, 34.220840>,  <33.608662, 21.666664, 33.509132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619930, 21.874521, 34.220840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351757, 21.585236, 34.154522>,  <33.190853, 21.411665, 34.114731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351757, 21.585236, 34.154522>,  <33.619930, 21.874521, 34.220840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351757, 21.585236, 34.154522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075679, -0.288936, 0.954353,
		-0.738103, 0.627280, 0.248443,
		-0.670430, -0.723213, -0.165793,
		33.150627, 21.368273, 34.104786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148582, 21.765633, 34.803085>,  <33.619930, 21.874521, 34.220840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148582, 21.765633, 34.803085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197956, 21.438259, 34.578609>,  <33.227581, 21.241835, 34.443924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197956, 21.438259, 34.578609>,  <33.148582, 21.765633, 34.803085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197956, 21.438259, 34.578609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103721, -0.573055, 0.812927,
		-0.986918, -0.042133, -0.155621,
		0.123430, -0.818433, -0.561188,
		33.234985, 21.192730, 34.410252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706734, 21.254263, 35.081806>,  <33.148582, 21.765633, 34.803085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706734, 21.254263, 35.081806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988152, 21.062378, 34.872082>,  <33.157001, 20.947247, 34.746246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988152, 21.062378, 34.872082>,  <32.706734, 21.254263, 35.081806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988152, 21.062378, 34.872082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033033, -0.759068, 0.650173,
		-0.709886, -0.440104, -0.549882,
		0.703542, -0.479713, -0.524314,
		33.199215, 20.918465, 34.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424362, 20.515387, 35.060986>,  <32.706734, 21.254263, 35.081806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424362, 20.515387, 35.060986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816257, 20.535263, 34.983387>,  <33.051395, 20.547188, 34.936829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816257, 20.535263, 34.983387>,  <32.424362, 20.515387, 35.060986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816257, 20.535263, 34.983387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143282, -0.850724, 0.505707,
		-0.139911, -0.523259, -0.840610,
		0.979742, 0.049690, -0.193999,
		33.110180, 20.550171, 34.925186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656195, 20.828739, 35.314606>,  <32.424362, 20.515387, 35.060986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656195, 20.828739, 35.314606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256380, 20.816555, 35.315285>,  <31.016491, 20.809244, 35.315693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256380, 20.816555, 35.315285>,  <31.656195, 20.828739, 35.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256380, 20.816555, 35.315285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028660, 0.956597, 0.290002,
		-0.010455, 0.289818, -0.957025,
		-0.999534, -0.030460, 0.001695,
		30.956520, 20.807417, 35.315792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272455, 21.313093, 34.797844>,  <31.656195, 20.828739, 35.314606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272455, 21.313093, 34.797844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058052, 21.227615, 35.124531>,  <30.929411, 21.176329, 35.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058052, 21.227615, 35.124531>,  <31.272455, 21.313093, 34.797844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058052, 21.227615, 35.124531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240356, 0.966023, 0.095015,
		-0.809274, -0.145374, -0.569159,
		-0.536009, -0.213694, 0.816719,
		30.897249, 21.163507, 35.369545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476738, 21.414379, 34.675476>,  <31.272455, 21.313093, 34.797844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476738, 21.414379, 34.675476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587084, 21.499462, 35.050423>,  <30.653292, 21.550512, 35.275391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587084, 21.499462, 35.050423>,  <30.476738, 21.414379, 34.675476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587084, 21.499462, 35.050423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338474, 0.934240, -0.112383,
		-0.899629, -0.286271, 0.329720,
		0.275866, 0.212705, 0.937366,
		30.669844, 21.563274, 35.331631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924757, 21.780075, 34.976913>,  <30.476738, 21.414379, 34.675476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924757, 21.780075, 34.976913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266756, 21.891056, 35.152184>,  <30.471956, 21.957644, 35.257347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266756, 21.891056, 35.152184>,  <29.924757, 21.780075, 34.976913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266756, 21.891056, 35.152184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232900, 0.960293, -0.153603,
		-0.463395, 0.029279, 0.885668,
		0.854998, 0.277451, 0.438176,
		30.523256, 21.974291, 35.283638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863482, 22.345032, 35.467129>,  <29.924757, 21.780075, 34.976913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863482, 22.345032, 35.467129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223734, 22.411469, 35.306492>,  <30.439886, 22.451330, 35.210110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223734, 22.411469, 35.306492>,  <29.863482, 22.345032, 35.467129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223734, 22.411469, 35.306492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394254, 0.701033, -0.594236,
		0.182830, 0.693517, 0.696856,
		0.900632, 0.166094, -0.401591,
		30.493923, 22.461296, 35.186016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034401, 23.158318, 35.420303>,  <29.863482, 22.345032, 35.467129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034401, 23.158318, 35.420303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294785, 22.984074, 35.171627>,  <30.451014, 22.879528, 35.022423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294785, 22.984074, 35.171627>,  <30.034401, 23.158318, 35.420303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294785, 22.984074, 35.171627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001697, 0.819801, -0.572647,
		0.759112, 0.371713, 0.534395,
		0.650958, -0.435610, -0.621690,
		30.490072, 22.853390, 34.985119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627449, 23.637350, 35.348850>,  <30.034401, 23.158318, 35.420303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627449, 23.637350, 35.348850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629322, 23.387157, 35.036762>,  <30.630445, 23.237041, 34.849510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629322, 23.387157, 35.036762>,  <30.627449, 23.637350, 35.348850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629322, 23.387157, 35.036762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216151, 0.762421, -0.609912,
		0.976349, -0.165790, 0.138768,
		0.004682, -0.625482, -0.780225,
		30.630726, 23.199512, 34.802696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226252, 23.887150, 35.001541>,  <30.627449, 23.637350, 35.348850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226252, 23.887150, 35.001541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989267, 23.724190, 34.723545>,  <30.847076, 23.626413, 34.556747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989267, 23.724190, 34.723545>,  <31.226252, 23.887150, 35.001541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989267, 23.724190, 34.723545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199568, 0.761591, -0.616565,
		0.780492, -0.503987, -0.369905,
		-0.592457, -0.407402, -0.694995,
		30.811529, 23.601969, 34.515049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546515, 24.159876, 34.490963>,  <31.226252, 23.887150, 35.001541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546515, 24.159876, 34.490963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199511, 24.043125, 34.329849>,  <30.991308, 23.973074, 34.233181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199511, 24.043125, 34.329849>,  <31.546515, 24.159876, 34.490963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199511, 24.043125, 34.329849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054589, 0.748995, -0.660323,
		0.494419, -0.594823, -0.633825,
		-0.867508, -0.291877, -0.402788,
		30.939259, 23.955563, 34.209011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665514, 24.039833, 33.810928>,  <31.546515, 24.159876, 34.490963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665514, 24.039833, 33.810928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268665, 24.080360, 33.840397>,  <31.030556, 24.104677, 33.858078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268665, 24.080360, 33.840397>,  <31.665514, 24.039833, 33.810928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268665, 24.080360, 33.840397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015041, 0.487487, -0.873000,
		-0.124365, -0.867231, -0.482123,
		-0.992122, 0.101319, 0.073671,
		30.971029, 24.110756, 33.862499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424124, 24.017172, 33.187687>,  <31.665514, 24.039833, 33.810928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424124, 24.017172, 33.187687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147158, 24.219788, 33.393204>,  <30.980978, 24.341356, 33.516514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147158, 24.219788, 33.393204>,  <31.424124, 24.017172, 33.187687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147158, 24.219788, 33.393204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184973, 0.563689, -0.805009,
		-0.697388, -0.652436, -0.296609,
		-0.692412, 0.506538, 0.513793,
		30.939434, 24.371750, 33.547340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005798, 24.175800, 32.659763>,  <31.424124, 24.017172, 33.187687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005798, 24.175800, 32.659763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932104, 24.439396, 32.951458>,  <30.887888, 24.597553, 33.126476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932104, 24.439396, 32.951458>,  <31.005798, 24.175800, 32.659763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932104, 24.439396, 32.951458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206004, 0.699570, -0.684226,
		-0.961051, -0.276286, 0.006869,
		-0.184237, 0.658991, 0.729238,
		30.876833, 24.637093, 33.170231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393242, 24.457371, 32.440094>,  <31.005798, 24.175800, 32.659763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393242, 24.457371, 32.440094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517092, 24.708385, 32.725845>,  <30.591402, 24.858994, 32.897297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517092, 24.708385, 32.725845>,  <30.393242, 24.457371, 32.440094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517092, 24.708385, 32.725845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423809, 0.763618, -0.487107,
		-0.851187, -0.151938, 0.502390,
		0.309624, 0.627537, 0.714374,
		30.609980, 24.896646, 32.940159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801199, 24.848244, 32.662407>,  <30.393242, 24.457371, 32.440094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801199, 24.848244, 32.662407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120775, 25.078445, 32.732254>,  <30.312521, 25.216566, 32.774162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120775, 25.078445, 32.732254>,  <29.801199, 24.848244, 32.662407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120775, 25.078445, 32.732254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382983, 0.710711, -0.590097,
		-0.463704, 0.404577, 0.788223,
		0.798939, 0.575506, 0.174613,
		30.360456, 25.251097, 32.784637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552614, 25.500502, 32.834370>,  <29.801199, 24.848244, 32.662407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552614, 25.500502, 32.834370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923447, 25.591778, 32.715405>,  <30.145947, 25.646544, 32.644028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923447, 25.591778, 32.715405>,  <29.552614, 25.500502, 32.834370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923447, 25.591778, 32.715405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367945, 0.705669, -0.605515,
		0.071700, 0.670791, 0.738172,
		0.927079, 0.228191, -0.297410,
		30.201571, 25.660234, 32.626183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518837, 26.190260, 32.789337>,  <29.552614, 25.500502, 32.834370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518837, 26.190260, 32.789337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843212, 26.091476, 32.577152>,  <30.037838, 26.032207, 32.449841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843212, 26.091476, 32.577152>,  <29.518837, 26.190260, 32.789337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843212, 26.091476, 32.577152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250493, 0.672776, -0.696151,
		0.528802, 0.697412, 0.483719,
		0.810939, -0.246958, -0.530462,
		30.086494, 26.017389, 32.418015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804312, 26.894312, 32.528709>,  <29.518837, 26.190260, 32.789337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804312, 26.894312, 32.528709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996447, 26.623615, 32.305534>,  <30.111729, 26.461197, 32.171627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996447, 26.623615, 32.305534>,  <29.804312, 26.894312, 32.528709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996447, 26.623615, 32.305534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091015, 0.594237, -0.799124,
		0.872348, 0.434631, 0.223841,
		0.480339, -0.676741, -0.557940,
		30.140549, 26.420593, 32.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530560, 27.207245, 32.332211>,  <29.804312, 26.894312, 32.528709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530560, 27.207245, 32.332211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452087, 26.943024, 32.042332>,  <30.405005, 26.784491, 31.868404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452087, 26.943024, 32.042332>,  <30.530560, 27.207245, 32.332211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452087, 26.943024, 32.042332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106860, 0.720254, -0.685431,
		0.974728, -0.211909, -0.070713,
		-0.196180, -0.660553, -0.724696,
		30.393232, 26.744858, 31.824923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974241, 27.288734, 31.785959>,  <30.530560, 27.207245, 32.332211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974241, 27.288734, 31.785959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650908, 27.111500, 31.630901>,  <30.456907, 27.005159, 31.537867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650908, 27.111500, 31.630901>,  <30.974241, 27.288734, 31.785959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650908, 27.111500, 31.630901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043744, 0.701834, -0.710996,
		0.587095, -0.557766, -0.586699,
		-0.808335, -0.443087, -0.387645,
		30.408407, 26.978573, 31.514608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143393, 27.201023, 31.111929>,  <30.974241, 27.288734, 31.785959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143393, 27.201023, 31.111929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744970, 27.201283, 31.147423>,  <30.505917, 27.201439, 31.168718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744970, 27.201283, 31.147423>,  <31.143393, 27.201023, 31.111929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744970, 27.201283, 31.147423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065781, 0.665741, -0.743278,
		-0.059558, -0.746183, -0.663072,
		-0.996055, 0.000650, 0.088735,
		30.446154, 27.201477, 31.174044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978218, 27.205696, 30.415207>,  <31.143393, 27.201023, 31.111929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978218, 27.205696, 30.415207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664616, 27.340187, 30.623932>,  <30.476454, 27.420881, 30.749166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664616, 27.340187, 30.623932>,  <30.978218, 27.205696, 30.415207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664616, 27.340187, 30.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113326, 0.748957, -0.652855,
		-0.610322, -0.570977, -0.549083,
		-0.784005, 0.336226, 0.521812,
		30.429415, 27.441055, 30.780476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430714, 27.354502, 29.907799>,  <30.978218, 27.205696, 30.415207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430714, 27.354502, 29.907799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381388, 27.561523, 30.246487>,  <30.351791, 27.685736, 30.449699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381388, 27.561523, 30.246487>,  <30.430714, 27.354502, 29.907799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381388, 27.561523, 30.246487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078887, 0.845419, -0.528246,
		-0.989227, -0.131936, -0.063425,
		-0.123316, 0.517552, 0.846719,
		30.344393, 27.716789, 30.500502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021271, 27.977299, 29.720890>,  <30.430714, 27.354502, 29.907799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021271, 27.977299, 29.720890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105223, 28.083107, 30.097397>,  <30.155594, 28.146591, 30.323301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105223, 28.083107, 30.097397>,  <30.021271, 27.977299, 29.720890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105223, 28.083107, 30.097397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032272, 0.964057, -0.263729,
		-0.977195, 0.024975, 0.210871,
		0.209879, 0.264520, 0.941265,
		30.168186, 28.162462, 30.379776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690624, 28.526091, 29.824835>,  <30.021271, 27.977299, 29.720890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690624, 28.526091, 29.824835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961473, 28.573132, 30.115398>,  <30.123983, 28.601357, 30.289738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961473, 28.573132, 30.115398>,  <29.690624, 28.526091, 29.824835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961473, 28.573132, 30.115398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041283, 0.979521, -0.197062,
		-0.734709, 0.163424, 0.658403,
		0.677125, 0.117602, 0.726410,
		30.164612, 28.608412, 30.333321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460007, 29.008018, 30.196756>,  <29.690624, 28.526091, 29.824835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460007, 29.008018, 30.196756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846060, 29.014832, 30.301243>,  <30.077692, 29.018919, 30.363934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846060, 29.014832, 30.301243>,  <29.460007, 29.008018, 30.196756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846060, 29.014832, 30.301243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049462, 0.968041, -0.245868,
		-0.257053, 0.250215, 0.933443,
		0.965131, 0.017031, 0.261214,
		30.135599, 29.019941, 30.379606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625433, 29.668150, 30.484837>,  <29.460007, 29.008018, 30.196756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625433, 29.668150, 30.484837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002026, 29.563232, 30.400154>,  <30.227982, 29.500282, 30.349344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002026, 29.563232, 30.400154>,  <29.625433, 29.668150, 30.484837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002026, 29.563232, 30.400154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174594, 0.916728, -0.359343,
		0.288329, 0.301351, 0.908875,
		0.941479, -0.262293, -0.211705,
		30.284470, 29.484545, 30.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162624, 30.258816, 30.662397>,  <29.625433, 29.668150, 30.484837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162624, 30.258816, 30.662397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319395, 30.020290, 30.382168>,  <30.413458, 29.877174, 30.214029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319395, 30.020290, 30.382168>,  <30.162624, 30.258816, 30.662397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319395, 30.020290, 30.382168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272674, 0.802573, -0.530589,
		0.878659, 0.016923, 0.477149,
		0.391926, -0.596314, -0.700574,
		30.436974, 29.841396, 30.171995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661465, 30.569336, 30.507971>,  <30.162624, 30.258816, 30.662397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661465, 30.569336, 30.507971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633371, 30.329540, 30.189053>,  <30.616514, 30.185663, 29.997702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633371, 30.329540, 30.189053>,  <30.661465, 30.569336, 30.507971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633371, 30.329540, 30.189053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275148, 0.756620, -0.593143,
		0.958833, -0.261034, 0.111807,
		-0.070235, -0.599489, -0.797295,
		30.612301, 30.149694, 29.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258453, 30.700129, 30.065136>,  <30.661465, 30.569336, 30.507971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258453, 30.700129, 30.065136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019056, 30.504173, 29.811581>,  <30.875418, 30.386600, 29.659447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019056, 30.504173, 29.811581>,  <31.258453, 30.700129, 30.065136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019056, 30.504173, 29.811581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278722, 0.614488, -0.738051,
		0.751080, -0.618397, -0.231224,
		-0.598493, -0.489888, -0.633890,
		30.839508, 30.357206, 29.621414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794514, 30.445551, 29.577513>,  <31.258453, 30.700129, 30.065136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794514, 30.445551, 29.577513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427206, 30.470516, 29.421112>,  <31.206821, 30.485495, 29.327271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427206, 30.470516, 29.421112>,  <31.794514, 30.445551, 29.577513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427206, 30.470516, 29.421112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348617, 0.595654, -0.723646,
		0.187737, -0.800813, -0.568730,
		-0.918271, 0.062414, -0.391003,
		31.151726, 30.489241, 29.303812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920475, 30.464643, 28.877550>,  <31.794514, 30.445551, 29.577513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920475, 30.464643, 28.877550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539251, 30.585014, 28.890923>,  <31.310516, 30.657238, 28.898947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539251, 30.585014, 28.890923>,  <31.920475, 30.464643, 28.877550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539251, 30.585014, 28.890923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176845, 0.642880, -0.745272,
		-0.245767, -0.704377, -0.665922,
		-0.953061, 0.300928, 0.033433,
		31.253334, 30.675293, 28.900953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659184, 30.478788, 28.229031>,  <31.920475, 30.464643, 28.877550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659184, 30.478788, 28.229031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457073, 30.731873, 28.463764>,  <31.335808, 30.883722, 28.604605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457073, 30.731873, 28.463764>,  <31.659184, 30.478788, 28.229031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457073, 30.731873, 28.463764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178887, 0.742049, -0.646036,
		-0.844214, -0.221448, -0.488122,
		-0.505274, 0.632711, 0.586834,
		31.305490, 30.921686, 28.639814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184109, 30.868610, 27.841127>,  <31.659184, 30.478788, 28.229031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184109, 30.868610, 27.841127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217371, 31.094986, 28.169224>,  <31.237328, 31.230812, 28.366081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217371, 31.094986, 28.169224>,  <31.184109, 30.868610, 27.841127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217371, 31.094986, 28.169224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198347, 0.797225, -0.570167,
		-0.976598, 0.210105, -0.045959,
		0.083155, 0.565940, 0.820242,
		31.242317, 31.264769, 28.415297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854027, 31.483442, 27.616053>,  <31.184109, 30.868610, 27.841127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854027, 31.483442, 27.616053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027803, 31.571171, 27.965488>,  <31.132071, 31.623808, 28.175150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027803, 31.571171, 27.965488>,  <30.854027, 31.483442, 27.616053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027803, 31.571171, 27.965488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366781, 0.842761, -0.393987,
		-0.822636, 0.491581, 0.285688,
		0.434443, 0.219323, 0.873588,
		31.158136, 31.636969, 28.227566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614889, 32.123314, 27.879240>,  <30.854027, 31.483442, 27.616053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614889, 32.123314, 27.879240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987173, 32.068748, 28.014984>,  <31.210545, 32.036011, 28.096432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987173, 32.068748, 28.014984>,  <30.614889, 32.123314, 27.879240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987173, 32.068748, 28.014984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263568, 0.893451, -0.363700,
		-0.253588, 0.427945, 0.867500,
		0.930712, -0.136415, 0.339361,
		31.266386, 32.027824, 28.116793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700514, 32.660393, 28.452776>,  <30.614889, 32.123314, 27.879240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700514, 32.660393, 28.452776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053568, 32.547832, 28.302166>,  <31.265400, 32.480297, 28.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053568, 32.547832, 28.302166>,  <30.700514, 32.660393, 28.452776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053568, 32.547832, 28.302166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152607, 0.929168, -0.336688,
		0.444598, 0.239712, 0.863059,
		0.882635, -0.281400, -0.376524,
		31.318357, 32.463413, 28.189209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025616, 33.259407, 28.430296>,  <30.700514, 32.660393, 28.452776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025616, 33.259407, 28.430296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282751, 33.034054, 28.222698>,  <31.437033, 32.898842, 28.098139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282751, 33.034054, 28.222698>,  <31.025616, 33.259407, 28.430296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282751, 33.034054, 28.222698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290059, 0.806118, -0.515790,
		0.708958, 0.181032, 0.681620,
		0.642841, -0.563383, -0.518994,
		31.475603, 32.865040, 28.066999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740765, 33.684010, 28.459455>,  <31.025616, 33.259407, 28.430296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740765, 33.684010, 28.459455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767763, 33.429173, 28.152325>,  <31.783962, 33.276272, 27.968046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767763, 33.429173, 28.152325>,  <31.740765, 33.684010, 28.459455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767763, 33.429173, 28.152325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167336, 0.765912, -0.620788,
		0.983587, -0.086584, 0.158304,
		0.067497, -0.637089, -0.767829,
		31.788012, 33.238045, 27.921976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366520, 33.744354, 28.152744>,  <31.740765, 33.684010, 28.459455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366520, 33.744354, 28.152744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092339, 33.613617, 27.892490>,  <31.927828, 33.535175, 27.736338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092339, 33.613617, 27.892490>,  <32.366520, 33.744354, 28.152744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092339, 33.613617, 27.892490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177972, 0.791273, -0.584989,
		0.706028, -0.516779, -0.484215,
		-0.685457, -0.326842, -0.650633,
		31.886702, 33.515564, 27.697300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678917, 33.897095, 27.480186>,  <32.366520, 33.744354, 28.152744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678917, 33.897095, 27.480186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290485, 33.837486, 27.405575>,  <32.057426, 33.801720, 27.360807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290485, 33.837486, 27.405575>,  <32.678917, 33.897095, 27.480186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290485, 33.837486, 27.405575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009719, 0.755962, -0.654544,
		0.238549, -0.637428, -0.732652,
		-0.971082, -0.149020, -0.186529,
		31.999161, 33.792782, 27.349617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656002, 33.840469, 26.825382>,  <32.678917, 33.897095, 27.480186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656002, 33.840469, 26.825382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267757, 33.924965, 26.871490>,  <32.034809, 33.975662, 26.899155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267757, 33.924965, 26.871490>,  <32.656002, 33.840469, 26.825382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267757, 33.924965, 26.871490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044901, 0.629577, -0.775639,
		-0.236416, -0.747671, -0.620561,
		-0.970614, 0.211237, 0.115271,
		31.976574, 33.988335, 26.906073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312675, 33.680260, 26.226210>,  <32.656002, 33.840469, 26.825382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312675, 33.680260, 26.226210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067162, 33.947632, 26.394245>,  <31.919853, 34.108055, 26.495066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067162, 33.947632, 26.394245>,  <32.312675, 33.680260, 26.226210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067162, 33.947632, 26.394245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195560, 0.386798, -0.901190,
		-0.764872, -0.635286, -0.106691,
		-0.613781, 0.668430, 0.420087,
		31.883028, 34.148163, 26.520271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869049, 33.771130, 25.739065>,  <32.312675, 33.680260, 26.226210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869049, 33.771130, 25.739065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798540, 34.096901, 25.960205>,  <31.756235, 34.292362, 26.092888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798540, 34.096901, 25.960205>,  <31.869049, 33.771130, 25.739065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798540, 34.096901, 25.960205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162753, 0.529798, -0.832362,
		-0.970793, -0.236701, 0.039160,
		-0.176274, 0.814424, 0.552848,
		31.745657, 34.341228, 26.126059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318716, 34.103161, 25.350847>,  <31.869049, 33.771130, 25.739065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318716, 34.103161, 25.350847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442698, 34.366821, 25.624912>,  <31.517086, 34.525017, 25.789352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442698, 34.366821, 25.624912>,  <31.318716, 34.103161, 25.350847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442698, 34.366821, 25.624912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373410, 0.747145, -0.549855,
		-0.874353, -0.085417, 0.477714,
		0.309954, 0.659150, 0.685164,
		31.535685, 34.564568, 25.830462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703831, 34.580986, 25.599236>,  <31.318716, 34.103161, 25.350847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703831, 34.580986, 25.599236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065990, 34.748871, 25.624840>,  <31.283285, 34.849602, 25.640202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065990, 34.748871, 25.624840>,  <30.703831, 34.580986, 25.599236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065990, 34.748871, 25.624840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296656, 0.733255, -0.611827,
		-0.303726, 0.534958, 0.788397,
		0.905398, 0.419711, 0.064010,
		31.337610, 34.874783, 25.644043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336025, 34.268345, 26.203457>,  <30.703831, 34.580986, 25.599236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336025, 34.268345, 26.203457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002909, 34.254009, 25.982487>,  <29.803040, 34.245407, 25.849905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002909, 34.254009, 25.982487>,  <30.336025, 34.268345, 26.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002909, 34.254009, 25.982487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443954, -0.552889, 0.705137,
		-0.330704, 0.832483, 0.444529,
		-0.832791, -0.035841, -0.552427,
		29.753071, 34.243256, 25.816759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835220, 34.315056, 26.668335>,  <30.336025, 34.268345, 26.203457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835220, 34.315056, 26.668335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659014, 34.154903, 26.346928>,  <29.553289, 34.058811, 26.154083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659014, 34.154903, 26.346928>,  <29.835220, 34.315056, 26.668335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659014, 34.154903, 26.346928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581681, -0.554449, 0.595175,
		-0.683806, 0.729575, 0.011349,
		-0.440517, -0.400383, -0.803516,
		29.526859, 34.034790, 26.105873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152784, 34.461468, 26.679653>,  <29.835220, 34.315056, 26.668335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152784, 34.461468, 26.679653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180971, 34.126808, 26.462379>,  <29.197884, 33.926014, 26.332014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180971, 34.126808, 26.462379>,  <29.152784, 34.461468, 26.679653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180971, 34.126808, 26.462379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627574, -0.460451, 0.627803,
		-0.775362, 0.296651, -0.557506,
		0.070466, -0.836650, -0.543186,
		29.202110, 33.875813, 26.299423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462633, 34.225365, 26.542810>,  <29.152784, 34.461468, 26.679653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462633, 34.225365, 26.542810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677128, 33.890457, 26.500046>,  <28.805824, 33.689514, 26.474388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677128, 33.890457, 26.500046>,  <28.462633, 34.225365, 26.542810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677128, 33.890457, 26.500046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700672, -0.512181, 0.496719,
		-0.470643, -0.191453, -0.861302,
		0.536240, -0.837267, -0.106909,
		28.837999, 33.639278, 26.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910627, 33.775139, 26.298418>,  <28.462633, 34.225365, 26.542810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910627, 33.775139, 26.298418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225843, 33.546070, 26.388783>,  <28.414972, 33.408627, 26.443001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225843, 33.546070, 26.388783>,  <27.910627, 33.775139, 26.298418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225843, 33.546070, 26.388783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601852, -0.639469, 0.478386,
		-0.129496, -0.512953, -0.848593,
		0.788039, -0.572676, 0.225913,
		28.462255, 33.374268, 26.456556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721855, 33.143173, 26.105980>,  <27.910627, 33.775139, 26.298418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721855, 33.143173, 26.105980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987764, 33.030880, 26.382896>,  <28.147310, 32.963505, 26.549047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987764, 33.030880, 26.382896>,  <27.721855, 33.143173, 26.105980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987764, 33.030880, 26.382896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656116, -0.662506, 0.361383,
		0.357197, -0.694462, -0.624606,
		0.664772, -0.280729, 0.692293,
		28.187197, 32.946663, 26.590584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745836, 32.355564, 26.151579>,  <27.721855, 33.143173, 26.105980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745836, 32.355564, 26.151579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935101, 32.450813, 26.490852>,  <28.048660, 32.507965, 26.694416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935101, 32.450813, 26.490852>,  <27.745836, 32.355564, 26.151579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935101, 32.450813, 26.490852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468565, -0.747280, 0.471189,
		0.746032, -0.620378, -0.242008,
		0.473163, 0.238126, 0.848182,
		28.077049, 32.522251, 26.745308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984232, 31.698414, 26.434610>,  <27.745836, 32.355564, 26.151579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984232, 31.698414, 26.434610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985281, 31.944340, 26.750076>,  <27.985910, 32.091896, 26.939356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985281, 31.944340, 26.750076>,  <27.984232, 31.698414, 26.434610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985281, 31.944340, 26.750076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326709, -0.744864, 0.581755,
		0.945122, -0.259190, 0.198912,
		0.002623, 0.614816, 0.788666,
		27.986069, 32.128784, 26.986677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252968, 31.249184, 26.938158>,  <27.984232, 31.698414, 26.434610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252968, 31.249184, 26.938158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059374, 31.536140, 27.138599>,  <27.943218, 31.708315, 27.258865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059374, 31.536140, 27.138599>,  <28.252968, 31.249184, 26.938158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059374, 31.536140, 27.138599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431592, -0.693839, 0.576468,
		0.761240, 0.062728, 0.645429,
		-0.483985, 0.717393, 0.501105,
		27.914179, 31.751358, 27.288931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354607, 31.130310, 27.639885>,  <28.252968, 31.249184, 26.938158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354607, 31.130310, 27.639885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028208, 31.361511, 27.642956>,  <27.832369, 31.500233, 27.644798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028208, 31.361511, 27.642956>,  <28.354607, 31.130310, 27.639885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028208, 31.361511, 27.642956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400485, -0.574861, 0.713545,
		0.416844, 0.579177, 0.700568,
		-0.815998, 0.578004, 0.007675,
		27.783409, 31.534912, 27.645258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239283, 31.244184, 28.416576>,  <28.354607, 31.130310, 27.639885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239283, 31.244184, 28.416576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904961, 31.303738, 28.205196>,  <27.704367, 31.339470, 28.078367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904961, 31.303738, 28.205196>,  <28.239283, 31.244184, 28.416576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904961, 31.303738, 28.205196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494429, -0.622559, 0.606597,
		-0.238680, 0.768279, 0.593952,
		-0.835806, 0.148884, -0.528452,
		27.654219, 31.348402, 28.046661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710039, 31.352545, 28.854473>,  <28.239283, 31.244184, 28.416576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710039, 31.352545, 28.854473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515972, 31.239292, 28.523548>,  <27.399532, 31.171341, 28.324993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515972, 31.239292, 28.523548>,  <27.710039, 31.352545, 28.854473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515972, 31.239292, 28.523548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530809, -0.656499, 0.535958,
		-0.694876, 0.699176, 0.168225,
		-0.485169, -0.283129, -0.827314,
		27.370422, 31.154354, 28.275354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050797, 31.343428, 29.114862>,  <27.710039, 31.352545, 28.854473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050797, 31.343428, 29.114862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050907, 31.122902, 28.781143>,  <27.050974, 30.990587, 28.580912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050907, 31.122902, 28.781143>,  <27.050797, 31.343428, 29.114862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050907, 31.122902, 28.781143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600919, -0.666953, 0.440533,
		-0.799310, 0.501224, -0.331480,
		0.000276, -0.551315, -0.834297,
		27.050989, 30.957508, 28.530853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363708, 31.106251, 29.181473>,  <27.050797, 31.343428, 29.114862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363708, 31.106251, 29.181473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596107, 30.877296, 28.950020>,  <26.735546, 30.739923, 28.811148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596107, 30.877296, 28.950020>,  <26.363708, 31.106251, 29.181473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596107, 30.877296, 28.950020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273210, -0.806838, 0.523803,
		-0.766679, -0.146242, -0.625154,
		0.580999, -0.572387, -0.578631,
		26.770407, 30.705580, 28.776430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980749, 30.553900, 29.195208>,  <26.363708, 31.106251, 29.181473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980749, 30.553900, 29.195208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336494, 30.422329, 29.068188>,  <26.549942, 30.343388, 28.991976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336494, 30.422329, 29.068188>,  <25.980749, 30.553900, 29.195208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336494, 30.422329, 29.068188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070380, -0.784772, 0.615775,
		-0.451747, -0.525300, -0.721099,
		0.889366, -0.328926, -0.317548,
		26.603304, 30.323650, 28.972923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875605, 29.861313, 28.990435>,  <25.980749, 30.553900, 29.195208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875605, 29.861313, 28.990435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267332, 29.889332, 29.066357>,  <26.502369, 29.906143, 29.111910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267332, 29.889332, 29.066357>,  <25.875605, 29.861313, 28.990435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267332, 29.889332, 29.066357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045110, -0.838938, 0.542354,
		0.197223, -0.539700, -0.818429,
		0.979320, 0.070045, 0.189804,
		26.561129, 29.910345, 29.123299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168932, 29.149492, 28.863573>,  <25.875605, 29.861313, 28.990435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168932, 29.149492, 28.863573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441664, 29.317875, 29.102875>,  <26.605303, 29.418905, 29.246456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441664, 29.317875, 29.102875>,  <26.168932, 29.149492, 28.863573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441664, 29.317875, 29.102875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141412, -0.878252, 0.456811,
		0.717715, -0.226866, -0.658344,
		0.681827, 0.420957, 0.598253,
		26.646212, 29.444162, 29.282351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716215, 28.624977, 28.835867>,  <26.168932, 29.149492, 28.863573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716215, 28.624977, 28.835867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766668, 28.865566, 29.151417>,  <26.796940, 29.009920, 29.340746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766668, 28.865566, 29.151417>,  <26.716215, 28.624977, 28.835867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766668, 28.865566, 29.151417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303138, -0.780557, 0.546660,
		0.944562, 0.170186, -0.280783,
		0.126134, 0.601471, 0.788875,
		26.804508, 29.046007, 29.388079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258718, 28.335752, 29.104616>,  <26.716215, 28.624977, 28.835867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258718, 28.335752, 29.104616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138485, 28.570538, 29.405315>,  <27.066345, 28.711409, 29.585735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138485, 28.570538, 29.405315>,  <27.258718, 28.335752, 29.104616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138485, 28.570538, 29.405315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133789, -0.754455, 0.642571,
		0.944325, 0.293723, 0.148248,
		-0.300584, 0.586962, 0.751747,
		27.048309, 28.746626, 29.630840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841793, 28.383837, 29.447460>,  <27.258718, 28.335752, 29.104616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841793, 28.383837, 29.447460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525698, 28.462952, 29.679462>,  <27.336040, 28.510422, 29.818663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525698, 28.462952, 29.679462>,  <27.841793, 28.383837, 29.447460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525698, 28.462952, 29.679462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316499, -0.678738, 0.662678,
		0.524741, 0.707244, 0.473764,
		-0.790237, 0.197788, 0.580004,
		27.288626, 28.522287, 29.853464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036404, 28.532722, 30.128428>,  <27.841793, 28.383837, 29.447460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036404, 28.532722, 30.128428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660517, 28.398350, 30.153976>,  <27.434984, 28.317726, 30.169306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660517, 28.398350, 30.153976>,  <28.036404, 28.532722, 30.128428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660517, 28.398350, 30.153976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316031, -0.781880, 0.537389,
		-0.130587, 0.525180, 0.840912,
		-0.939719, -0.335930, 0.063870,
		27.378601, 28.297571, 30.173138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919073, 28.375666, 30.868450>,  <28.036404, 28.532722, 30.128428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919073, 28.375666, 30.868450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642843, 28.177258, 30.657902>,  <27.477104, 28.058212, 30.531572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642843, 28.177258, 30.657902>,  <27.919073, 28.375666, 30.868450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642843, 28.177258, 30.657902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209409, -0.833730, 0.510922,
		-0.692281, 0.242603, 0.679626,
		-0.690576, -0.496021, -0.526372,
		27.435671, 28.028452, 30.499990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460388, 27.999874, 31.380327>,  <27.919073, 28.375666, 30.868450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460388, 27.999874, 31.380327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430420, 27.811241, 31.028873>,  <27.412439, 27.698061, 30.818001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430420, 27.811241, 31.028873>,  <27.460388, 27.999874, 31.380327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430420, 27.811241, 31.028873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171293, -0.874099, 0.454542,
		-0.982367, -0.116451, 0.146265,
		-0.074918, -0.471582, -0.878634,
		27.407944, 27.669767, 30.765284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228603, 27.271658, 31.567244>,  <27.460388, 27.999874, 31.380327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228603, 27.271658, 31.567244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337673, 27.213154, 31.186874>,  <27.403116, 27.178051, 30.958652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337673, 27.213154, 31.186874>,  <27.228603, 27.271658, 31.567244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337673, 27.213154, 31.186874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318037, -0.919112, 0.232563,
		-0.908019, -0.365844, -0.204107,
		0.272679, -0.146259, -0.950923,
		27.419476, 27.169275, 30.901598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052053, 26.571161, 31.448822>,  <27.228603, 27.271658, 31.567244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052053, 26.571161, 31.448822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323526, 26.652061, 31.166409>,  <27.486410, 26.700602, 30.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323526, 26.652061, 31.166409>,  <27.052053, 26.571161, 31.448822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323526, 26.652061, 31.166409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396989, -0.909815, 0.120982,
		-0.617891, -0.362396, -0.697768,
		0.678684, 0.202253, -0.706033,
		27.527132, 26.712738, 30.954599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952074, 26.076899, 30.996008>,  <27.052053, 26.571161, 31.448822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952074, 26.076899, 30.996008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319582, 26.205227, 30.903976>,  <27.540087, 26.282225, 30.848757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319582, 26.205227, 30.903976>,  <26.952074, 26.076899, 30.996008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319582, 26.205227, 30.903976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338120, -0.940292, 0.039070,
		-0.203806, -0.113690, -0.972388,
		0.918770, 0.320821, -0.230078,
		27.595213, 26.301474, 30.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194592, 25.620295, 30.472086>,  <26.952074, 26.076899, 30.996008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194592, 25.620295, 30.472086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533047, 25.765881, 30.627819>,  <27.736120, 25.853231, 30.721260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533047, 25.765881, 30.627819>,  <27.194592, 25.620295, 30.472086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533047, 25.765881, 30.627819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427358, -0.899831, -0.087578,
		0.318460, 0.240488, -0.916924,
		0.846137, 0.363964, 0.389334,
		27.786888, 25.875071, 30.744619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669996, 25.281591, 30.042532>,  <27.194592, 25.620295, 30.472086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669996, 25.281591, 30.042532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853001, 25.395855, 30.379360>,  <27.962803, 25.464413, 30.581457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853001, 25.395855, 30.379360>,  <27.669996, 25.281591, 30.042532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853001, 25.395855, 30.379360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517502, -0.855633, 0.009091,
		0.723101, 0.431614, -0.539290,
		0.457511, 0.285658, 0.842071,
		27.990253, 25.481552, 30.631981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351896, 25.181168, 29.966484>,  <27.669996, 25.281591, 30.042532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351896, 25.181168, 29.966484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352694, 25.227119, 30.363834>,  <28.353172, 25.254690, 30.602245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352694, 25.227119, 30.363834>,  <28.351896, 25.181168, 29.966484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352694, 25.227119, 30.363834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659084, -0.747240, 0.085092,
		0.752067, 0.654550, -0.077203,
		0.001992, 0.114878, 0.993378,
		28.353291, 25.261583, 30.661848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032686, 25.213261, 30.140207>,  <28.351896, 25.181168, 29.966484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032686, 25.213261, 30.140207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841425, 25.102806, 30.473701>,  <28.726667, 25.036533, 30.673798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841425, 25.102806, 30.473701>,  <29.032686, 25.213261, 30.140207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841425, 25.102806, 30.473701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540548, -0.840721, 0.031557,
		0.692226, 0.465763, 0.551261,
		-0.478155, -0.276138, 0.833736,
		28.697979, 25.019964, 30.723822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564114, 25.070459, 30.651066>,  <29.032686, 25.213261, 30.140207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564114, 25.070459, 30.651066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231144, 24.880047, 30.764534>,  <29.031363, 24.765800, 30.832615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231144, 24.880047, 30.764534>,  <29.564114, 25.070459, 30.651066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231144, 24.880047, 30.764534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541640, -0.807076, 0.235062,
		0.117047, 0.349318, 0.929665,
		-0.832422, -0.476030, 0.283670,
		28.981417, 24.737238, 30.849634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636372, 24.756531, 31.332935>,  <29.564114, 25.070459, 30.651066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636372, 24.756531, 31.332935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323101, 24.537720, 31.214684>,  <29.135139, 24.406433, 31.143732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323101, 24.537720, 31.214684>,  <29.636372, 24.756531, 31.332935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323101, 24.537720, 31.214684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479758, -0.834056, 0.272365,
		-0.395562, 0.071480, 0.915653,
		-0.783175, -0.547029, -0.295628,
		29.088148, 24.373611, 31.125996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472965, 24.393219, 31.949158>,  <29.636372, 24.756531, 31.332935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472965, 24.393219, 31.949158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319321, 24.188457, 31.641804>,  <29.227135, 24.065601, 31.457392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319321, 24.188457, 31.641804>,  <29.472965, 24.393219, 31.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319321, 24.188457, 31.641804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327705, -0.853630, 0.404877,
		-0.863173, -0.096286, 0.495642,
		-0.384111, -0.511904, -0.768384,
		29.204088, 24.034887, 31.411289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068752, 23.790138, 32.236683>,  <29.472965, 24.393219, 31.949158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068752, 23.790138, 32.236683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109386, 23.664433, 31.859131>,  <29.133766, 23.589008, 31.632599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109386, 23.664433, 31.859131>,  <29.068752, 23.790138, 32.236683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109386, 23.664433, 31.859131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157256, -0.931791, 0.327163,
		-0.982319, -0.181666, -0.045234,
		0.101583, -0.314265, -0.943884,
		29.139862, 23.570152, 31.575966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806227, 23.117865, 32.279816>,  <29.068752, 23.790138, 32.236683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806227, 23.117865, 32.279816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999491, 23.113953, 31.929626>,  <29.115450, 23.111605, 31.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999491, 23.113953, 31.929626>,  <28.806227, 23.117865, 32.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999491, 23.113953, 31.929626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054206, -0.997685, 0.041062,
		-0.873851, -0.067296, -0.481513,
		0.483162, -0.009781, -0.875476,
		29.144440, 23.111019, 31.666983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443388, 22.612917, 31.798409>,  <28.806227, 23.117865, 32.279816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443388, 22.612917, 31.798409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822605, 22.647911, 31.676056>,  <29.050135, 22.668907, 31.602644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822605, 22.647911, 31.676056>,  <28.443388, 22.612917, 31.798409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822605, 22.647911, 31.676056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102654, -0.994142, 0.033823,
		-0.301129, -0.063465, -0.951469,
		0.948042, 0.087487, -0.305880,
		29.107018, 22.674158, 31.584291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598364, 22.154488, 31.210552>,  <28.443388, 22.612917, 31.798409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598364, 22.154488, 31.210552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943604, 22.227154, 31.399044>,  <29.150747, 22.270754, 31.512140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943604, 22.227154, 31.399044>,  <28.598364, 22.154488, 31.210552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943604, 22.227154, 31.399044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052460, -0.960266, 0.274113,
		0.502304, -0.211866, -0.838334,
		0.863098, 0.181667, 0.471231,
		29.202534, 22.281654, 31.540413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933887, 21.638369, 31.025513>,  <28.598364, 22.154488, 31.210552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933887, 21.638369, 31.025513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156155, 21.763382, 31.333683>,  <29.289515, 21.838390, 31.518585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156155, 21.763382, 31.333683>,  <28.933887, 21.638369, 31.025513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156155, 21.763382, 31.333683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054974, -0.938439, 0.341042,
		0.829586, -0.147152, -0.538640,
		0.555666, 0.312535, 0.770427,
		29.322855, 21.857143, 31.564812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552773, 21.294729, 30.951082>,  <28.933887, 21.638369, 31.025513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552773, 21.294729, 30.951082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498072, 21.107521, 30.601852>,  <29.465252, 20.995195, 30.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498072, 21.107521, 30.601852>,  <29.552773, 21.294729, 30.951082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498072, 21.107521, 30.601852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309169, 0.857493, -0.411242,
		0.941124, 0.213690, -0.261959,
		-0.136750, -0.468020, -0.873073,
		29.457047, 20.967115, 30.339930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746162, 21.759485, 30.305866>,  <29.552773, 21.294729, 30.951082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746162, 21.759485, 30.305866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507336, 21.490231, 30.131329>,  <29.364040, 21.328678, 30.026606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507336, 21.490231, 30.131329>,  <29.746162, 21.759485, 30.305866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507336, 21.490231, 30.131329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367539, 0.713040, -0.597067,
		0.713040, -0.196115, -0.673137,
		0.597067, 0.673137, 0.436346,
		29.328215, 21.288290, 30.000425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726133, 21.963278, 29.578430>,  <29.746162, 21.759485, 30.305866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726133, 21.963278, 29.578430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410843, 21.725613, 29.642517>,  <29.221668, 21.583014, 29.680969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410843, 21.725613, 29.642517>,  <29.726133, 21.963278, 29.578430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410843, 21.725613, 29.642517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559676, 0.583906, -0.588062,
		0.255853, -0.553196, -0.792789,
		-0.788227, -0.594162, 0.160216,
		29.174376, 21.547363, 29.690582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532537, 21.717567, 28.928801>,  <29.726133, 21.963278, 29.578430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532537, 21.717567, 28.928801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197544, 21.684410, 29.144855>,  <28.996548, 21.664516, 29.274488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197544, 21.684410, 29.144855>,  <29.532537, 21.717567, 28.928801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197544, 21.684410, 29.144855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423689, 0.722744, -0.546012,
		-0.345122, -0.686127, -0.640406,
		-0.837484, -0.082892, 0.540139,
		28.946299, 21.659542, 29.306896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014538, 21.761431, 28.533255>,  <29.532537, 21.717567, 28.928801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014538, 21.761431, 28.533255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810928, 21.856895, 28.864056>,  <28.688763, 21.914175, 29.062536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810928, 21.856895, 28.864056>,  <29.014538, 21.761431, 28.533255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810928, 21.856895, 28.864056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442734, 0.751357, -0.489336,
		-0.738162, -0.615226, -0.276793,
		-0.509023, 0.238664, 0.827004,
		28.658222, 21.928495, 29.112156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271393, 21.688999, 28.429583>,  <29.014538, 21.761431, 28.533255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271393, 21.688999, 28.429583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316525, 21.953514, 28.726223>,  <28.343603, 22.112223, 28.904207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316525, 21.953514, 28.726223>,  <28.271393, 21.688999, 28.429583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316525, 21.953514, 28.726223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539042, 0.667723, -0.513401,
		-0.834688, -0.341828, 0.431799,
		0.112827, 0.661287, 0.741599,
		28.350372, 22.151899, 28.948702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552694, 21.871880, 28.562170>,  <28.271393, 21.688999, 28.429583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552694, 21.871880, 28.562170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772163, 22.155895, 28.738716>,  <27.903845, 22.326303, 28.844645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772163, 22.155895, 28.738716>,  <27.552694, 21.871880, 28.562170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772163, 22.155895, 28.738716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670232, 0.689140, -0.275454,
		-0.499745, -0.144683, 0.854003,
		0.548675, 0.710037, 0.441366,
		27.936766, 22.368906, 28.871126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958567, 22.291454, 28.760403>,  <27.552694, 21.871880, 28.562170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958567, 22.291454, 28.760403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277653, 22.518585, 28.841614>,  <27.469105, 22.654863, 28.890341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277653, 22.518585, 28.841614>,  <26.958567, 22.291454, 28.760403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277653, 22.518585, 28.841614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529360, 0.820637, -0.215249,
		-0.288838, 0.064232, 0.955221,
		0.797715, 0.567828, 0.203030,
		27.516968, 22.688934, 28.902523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744297, 22.896610, 29.068817>,  <26.958567, 22.291454, 28.760403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744297, 22.896610, 29.068817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113361, 22.997814, 28.952415>,  <27.334799, 23.058537, 28.882574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113361, 22.997814, 28.952415>,  <26.744297, 22.896610, 29.068817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113361, 22.997814, 28.952415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344192, 0.880614, -0.325656,
		0.173869, 0.400631, 0.899591,
		0.922660, 0.253011, -0.291005,
		27.390160, 23.073717, 28.865114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836788, 23.604458, 29.302660>,  <26.744297, 22.896610, 29.068817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836788, 23.604458, 29.302660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097830, 23.536232, 29.007359>,  <27.254454, 23.495296, 28.830177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097830, 23.536232, 29.007359>,  <26.836788, 23.604458, 29.302660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097830, 23.536232, 29.007359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122579, 0.937732, -0.325012,
		0.747719, 0.302598, 0.591059,
		0.652603, -0.170567, -0.738252,
		27.293612, 23.485062, 28.785883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282139, 24.185818, 29.332438>,  <26.836788, 23.604458, 29.302660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282139, 24.185818, 29.332438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305454, 24.047401, 28.957874>,  <27.319443, 23.964352, 28.733137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305454, 24.047401, 28.957874>,  <27.282139, 24.185818, 29.332438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305454, 24.047401, 28.957874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028953, 0.938193, -0.344899,
		0.997880, -0.007009, 0.064704,
		0.058288, -0.346041, -0.936407,
		27.322941, 23.943588, 28.676952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818394, 24.624111, 28.987202>,  <27.282139, 24.185818, 29.332438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818394, 24.624111, 28.987202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616850, 24.437496, 28.696419>,  <27.495924, 24.325527, 28.521948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616850, 24.437496, 28.696419>,  <27.818394, 24.624111, 28.987202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616850, 24.437496, 28.696419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127509, 0.792204, -0.596786,
		0.854322, -0.393391, -0.339673,
		-0.503861, -0.466536, -0.726959,
		27.465693, 24.297535, 28.478331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232462, 24.546324, 28.304871>,  <27.818394, 24.624111, 28.987202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232462, 24.546324, 28.304871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837997, 24.539562, 28.238903>,  <27.601318, 24.535505, 28.199322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837997, 24.539562, 28.238903>,  <28.232462, 24.546324, 28.304871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837997, 24.539562, 28.238903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076380, 0.836593, -0.542474,
		0.147140, -0.547564, -0.823726,
		-0.986162, -0.016904, -0.164919,
		27.542149, 24.534491, 28.189426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180130, 24.754147, 27.607141>,  <28.232462, 24.546324, 28.304871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180130, 24.754147, 27.607141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826590, 24.812840, 27.784805>,  <27.614466, 24.848055, 27.891403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826590, 24.812840, 27.784805>,  <28.180130, 24.754147, 27.607141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826590, 24.812840, 27.784805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064855, 0.901918, -0.427011,
		-0.463249, -0.406221, -0.787645,
		-0.883852, 0.146730, 0.444158,
		27.561434, 24.856859, 27.918053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778547, 25.044699, 27.071466>,  <28.180130, 24.754147, 27.607141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778547, 25.044699, 27.071466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561335, 25.130417, 27.396229>,  <27.431007, 25.181847, 27.591087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561335, 25.130417, 27.396229>,  <27.778547, 25.044699, 27.071466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561335, 25.130417, 27.396229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252455, 0.880493, -0.401247,
		-0.800863, -0.422860, -0.424037,
		-0.543033, 0.214294, 0.811907,
		27.398424, 25.194706, 27.639801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126516, 25.277594, 26.867714>,  <27.778547, 25.044699, 27.071466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126516, 25.277594, 26.867714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179922, 25.418373, 27.238293>,  <27.211966, 25.502840, 27.460640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179922, 25.418373, 27.238293>,  <27.126516, 25.277594, 26.867714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179922, 25.418373, 27.238293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120501, 0.933647, -0.337316,
		-0.983694, -0.066601, 0.167067,
		0.133516, 0.351947, 0.926448,
		27.219976, 25.523958, 27.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492144, 25.680487, 27.020300>,  <27.126516, 25.277594, 26.867714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492144, 25.680487, 27.020300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766064, 25.810482, 27.281200>,  <26.930416, 25.888479, 27.437740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766064, 25.810482, 27.281200>,  <26.492144, 25.680487, 27.020300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766064, 25.810482, 27.281200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283571, 0.943344, -0.172305,
		-0.671296, -0.066965, 0.738158,
		0.684799, 0.324988, 0.652252,
		26.971504, 25.907978, 27.476875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076918, 26.165895, 27.491877>,  <26.492144, 25.680487, 27.020300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076918, 26.165895, 27.491877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465654, 26.255905, 27.519836>,  <26.698896, 26.309910, 27.536613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465654, 26.255905, 27.519836>,  <26.076918, 26.165895, 27.491877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465654, 26.255905, 27.519836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220910, 0.973325, -0.061949,
		-0.081977, 0.044762, 0.995629,
		0.971843, 0.225023, 0.069902,
		26.757208, 26.323412, 27.540808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075928, 26.682886, 28.059406>,  <26.076918, 26.165895, 27.491877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075928, 26.682886, 28.059406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407990, 26.724640, 27.840336>,  <26.607227, 26.749691, 27.708895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407990, 26.724640, 27.840336>,  <26.075928, 26.682886, 28.059406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407990, 26.724640, 27.840336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268965, 0.935431, -0.229406,
		0.488365, 0.337747, 0.804628,
		0.830155, 0.104383, -0.547674,
		26.657036, 26.755955, 27.676033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312105, 27.383297, 28.239807>,  <26.075928, 26.682886, 28.059406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312105, 27.383297, 28.239807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501802, 27.276257, 27.904312>,  <26.615622, 27.212032, 27.703014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501802, 27.276257, 27.904312>,  <26.312105, 27.383297, 28.239807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501802, 27.276257, 27.904312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046925, 0.943648, -0.327608,
		0.879142, 0.194724, 0.434963,
		0.474245, -0.267603, -0.838737,
		26.644075, 27.195976, 27.652691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901922, 27.805000, 28.132351>,  <26.312105, 27.383297, 28.239807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901922, 27.805000, 28.132351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823816, 27.702305, 27.753731>,  <26.776953, 27.640688, 27.526558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823816, 27.702305, 27.753731>,  <26.901922, 27.805000, 28.132351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823816, 27.702305, 27.753731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058601, 0.960350, -0.272568,
		0.978999, -0.108691, -0.172476,
		-0.195263, -0.256737, -0.946551,
		26.765238, 27.625284, 27.469765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343386, 28.145468, 27.759125>,  <26.901922, 27.805000, 28.132351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343386, 28.145468, 27.759125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074385, 28.049480, 27.479080>,  <26.912985, 27.991888, 27.311054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074385, 28.049480, 27.479080>,  <27.343386, 28.145468, 27.759125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074385, 28.049480, 27.479080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121837, 0.897171, -0.424546,
		0.729997, -0.370808, -0.574113,
		-0.672503, -0.239969, -0.700111,
		26.872635, 27.977489, 27.269047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638681, 28.485958, 27.178144>,  <27.343386, 28.145468, 27.759125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638681, 28.485958, 27.178144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263775, 28.399509, 27.068729>,  <27.038830, 28.347641, 27.003080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263775, 28.399509, 27.068729>,  <27.638681, 28.485958, 27.178144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263775, 28.399509, 27.068729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077803, 0.894535, -0.440175,
		0.339818, -0.391280, -0.855233,
		-0.937268, -0.216119, -0.273536,
		26.982595, 28.334673, 26.986670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577560, 28.686420, 26.490406>,  <27.638681, 28.485958, 27.178144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577560, 28.686420, 26.490406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194036, 28.667953, 26.602512>,  <26.963923, 28.656874, 26.669775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194036, 28.667953, 26.602512>,  <27.577560, 28.686420, 26.490406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194036, 28.667953, 26.602512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211074, 0.776077, -0.594266,
		-0.190073, -0.628946, -0.753856,
		-0.958812, -0.046165, 0.280265,
		26.906393, 28.654104, 26.686592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242290, 28.782377, 25.836205>,  <27.577560, 28.686420, 26.490406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242290, 28.782377, 25.836205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989082, 28.876110, 26.131332>,  <26.837158, 28.932350, 26.308409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989082, 28.876110, 26.131332>,  <27.242290, 28.782377, 25.836205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989082, 28.876110, 26.131332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348174, 0.765069, -0.541706,
		-0.691421, -0.599799, -0.402714,
		-0.633018, 0.234332, 0.737819,
		26.799177, 28.946409, 26.352678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584229, 29.054945, 25.493774>,  <27.242290, 28.782377, 25.836205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584229, 29.054945, 25.493774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536484, 29.202770, 25.862377>,  <26.507837, 29.291466, 26.083538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536484, 29.202770, 25.862377>,  <26.584229, 29.054945, 25.493774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536484, 29.202770, 25.862377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594274, 0.716926, -0.364493,
		-0.795356, -0.591134, 0.134049,
		-0.119361, 0.369564, 0.921507,
		26.500675, 29.313639, 26.138830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915512, 29.079479, 25.511503>,  <26.584229, 29.054945, 25.493774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915512, 29.079479, 25.511503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066336, 29.336685, 25.778145>,  <26.156830, 29.491009, 25.938129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066336, 29.336685, 25.778145>,  <25.915512, 29.079479, 25.511503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066336, 29.336685, 25.778145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476869, 0.751779, -0.455439,
		-0.793992, -0.146157, 0.590097,
		0.377057, 0.643014, 0.666604,
		26.179453, 29.529589, 25.978127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349426, 29.496309, 25.746431>,  <25.915512, 29.079479, 25.511503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349426, 29.496309, 25.746431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685009, 29.708035, 25.796993>,  <25.886358, 29.835070, 25.827332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685009, 29.708035, 25.796993>,  <25.349426, 29.496309, 25.746431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685009, 29.708035, 25.796993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396799, 0.753952, -0.523552,
		-0.372428, 0.389080, 0.842564,
		0.838956, 0.529314, 0.126407,
		25.936695, 29.866829, 25.834915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085503, 30.084557, 25.880053>,  <25.349426, 29.496309, 25.746431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085503, 30.084557, 25.880053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461092, 30.151897, 25.760059>,  <25.686445, 30.192303, 25.688063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461092, 30.151897, 25.760059>,  <25.085503, 30.084557, 25.880053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461092, 30.151897, 25.760059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337271, 0.622123, -0.706549,
		0.067677, 0.764605, 0.640936,
		0.938972, 0.168352, -0.299983,
		25.742783, 30.202402, 25.670065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122097, 30.795218, 25.968037>,  <25.085503, 30.084557, 25.880053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122097, 30.795218, 25.968037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411530, 30.694126, 25.711113>,  <25.585188, 30.633471, 25.556959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411530, 30.694126, 25.711113>,  <25.122097, 30.795218, 25.968037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411530, 30.694126, 25.711113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524865, 0.402887, -0.749799,
		0.448275, 0.879664, 0.158872,
		0.723579, -0.252730, -0.642309,
		25.628603, 30.618307, 25.518419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545979, 31.439524, 25.699224>,  <25.122097, 30.795218, 25.968037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545979, 31.439524, 25.699224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705275, 31.200111, 25.421185>,  <25.800852, 31.056463, 25.254360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705275, 31.200111, 25.421185>,  <25.545979, 31.439524, 25.699224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705275, 31.200111, 25.421185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177206, 0.693307, -0.698515,
		0.900001, 0.401353, 0.170040,
		0.398242, -0.598533, -0.695099,
		25.824747, 31.020552, 25.212654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046625, 31.875269, 25.244246>,  <25.545979, 31.439524, 25.699224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046625, 31.875269, 25.244246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927780, 31.561615, 25.026306>,  <25.856472, 31.373423, 24.895542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927780, 31.561615, 25.026306>,  <26.046625, 31.875269, 25.244246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927780, 31.561615, 25.026306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086784, 0.546077, -0.833228,
		0.950890, -0.294848, -0.094198,
		-0.297115, -0.784133, -0.544847,
		25.838646, 31.326376, 24.862852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563639, 31.900866, 24.786280>,  <26.046625, 31.875269, 25.244246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563639, 31.900866, 24.786280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247631, 31.692116, 24.657585>,  <26.058025, 31.566866, 24.580368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247631, 31.692116, 24.657585>,  <26.563639, 31.900866, 24.786280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247631, 31.692116, 24.657585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008128, 0.515828, -0.856654,
		0.613028, -0.679389, -0.403272,
		-0.790020, -0.521874, -0.321739,
		26.010624, 31.535553, 24.561064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708944, 31.782986, 24.102179>,  <26.563639, 31.900866, 24.786280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708944, 31.782986, 24.102179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314234, 31.725708, 24.132561>,  <26.077408, 31.691341, 24.150789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314234, 31.725708, 24.132561>,  <26.708944, 31.782986, 24.102179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314234, 31.725708, 24.132561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137144, 0.487789, -0.862121,
		0.086401, -0.861137, -0.500977,
		-0.986776, -0.143194, 0.075954,
		26.018202, 31.682751, 24.155348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492273, 31.481745, 23.537289>,  <26.708944, 31.782986, 24.102179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492273, 31.481745, 23.537289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154505, 31.641823, 23.679722>,  <25.951843, 31.737869, 23.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154505, 31.641823, 23.679722>,  <26.492273, 31.481745, 23.537289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154505, 31.641823, 23.679722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223586, 0.340753, -0.913179,
		-0.486788, -0.850723, -0.198261,
		-0.844421, 0.400197, 0.356085,
		25.901178, 31.761881, 23.786547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945726, 31.361988, 23.038992>,  <26.492273, 31.481745, 23.537289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945726, 31.361988, 23.038992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830135, 31.683826, 23.246498>,  <25.760780, 31.876930, 23.371002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830135, 31.683826, 23.246498>,  <25.945726, 31.361988, 23.038992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830135, 31.683826, 23.246498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346172, 0.417397, -0.840205,
		-0.892557, -0.422381, 0.157911,
		-0.288975, 0.804596, 0.518767,
		25.743443, 31.925205, 23.402128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198860, 31.395111, 22.909735>,  <25.945726, 31.361988, 23.038992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198860, 31.395111, 22.909735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325310, 31.752525, 23.037273>,  <25.401180, 31.966974, 23.113796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325310, 31.752525, 23.037273>,  <25.198860, 31.395111, 22.909735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325310, 31.752525, 23.037273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438661, 0.435664, -0.785985,
		-0.841215, 0.108602, 0.529682,
		0.316123, 0.893534, 0.318848,
		25.420147, 32.020584, 23.132927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613705, 31.855547, 22.930187>,  <25.198860, 31.395111, 22.909735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613705, 31.855547, 22.930187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931498, 32.098106, 22.917027>,  <25.122173, 32.243641, 22.909130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931498, 32.098106, 22.917027>,  <24.613705, 31.855547, 22.930187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931498, 32.098106, 22.917027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420468, 0.510176, -0.750285,
		-0.438185, 0.609921, 0.660295,
		0.794482, 0.606396, -0.032901,
		25.169842, 32.280025, 22.907156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389570, 32.469772, 22.764912>,  <24.613705, 31.855547, 22.930187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389570, 32.469772, 22.764912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779133, 32.527744, 22.695049>,  <25.012871, 32.562527, 22.653131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779133, 32.527744, 22.695049>,  <24.389570, 32.469772, 22.764912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779133, 32.527744, 22.695049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226769, 0.590147, -0.774792,
		-0.009220, 0.794180, 0.607614,
		0.973905, 0.144931, -0.174654,
		25.071304, 32.571224, 22.642653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529238, 33.239559, 22.455885>,  <24.389570, 32.469772, 22.764912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529238, 33.239559, 22.455885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855877, 33.025818, 22.368576>,  <25.051861, 32.897575, 22.316191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855877, 33.025818, 22.368576>,  <24.529238, 33.239559, 22.455885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855877, 33.025818, 22.368576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085113, 0.485484, -0.870092,
		0.570900, 0.691937, 0.441925,
		0.816596, -0.534349, -0.218270,
		25.100855, 32.865513, 22.303095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178617, 33.756275, 22.263927>,  <24.529238, 33.239559, 22.455885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178617, 33.756275, 22.263927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168385, 33.396038, 22.090366>,  <25.162245, 33.179893, 21.986229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168385, 33.396038, 22.090366>,  <25.178617, 33.756275, 22.263927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168385, 33.396038, 22.090366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087413, 0.430368, -0.898411,
		0.995844, -0.060914, 0.067713,
		-0.025584, -0.900596, -0.433904,
		25.160709, 33.125858, 21.960196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723396, 33.988274, 22.865324>,  <25.178617, 33.756275, 22.263927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723396, 33.988274, 22.865324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858536, 34.230053, 22.576740>,  <24.939619, 34.375122, 22.403591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858536, 34.230053, 22.576740>,  <24.723396, 33.988274, 22.865324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.858536, 34.230053, 22.576740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880866, -0.066968, -0.468605,
		-0.331562, 0.793825, 0.509812,
		0.337850, 0.604448, -0.721457,
		24.959890, 34.411388, 22.360304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185112, 34.473621, 22.673231>,  <24.723396, 33.988274, 22.865324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185112, 34.473621, 22.673231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419207, 34.392536, 22.359184>,  <24.559664, 34.343887, 22.170755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419207, 34.392536, 22.359184>,  <24.185112, 34.473621, 22.673231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419207, 34.392536, 22.359184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809583, -0.091670, -0.579804,
		0.045560, 0.974939, -0.217758,
		0.585235, -0.202709, -0.785117,
		24.594776, 34.331722, 22.123650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.022058, 34.881325, 22.113777>,  <24.185112, 34.473621, 22.673231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.022058, 34.881325, 22.113777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158531, 34.527740, 21.985901>,  <24.240416, 34.315590, 21.909174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158531, 34.527740, 21.985901>,  <24.022058, 34.881325, 22.113777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.158531, 34.527740, 21.985901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867708, -0.165377, -0.468757,
		0.361495, 0.437331, -0.823446,
		0.341181, -0.883964, -0.319693,
		24.260885, 34.262550, 21.889994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.627247, 35.552765, 22.421867>,  <24.022058, 34.881325, 22.113777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.627247, 35.552765, 22.421867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468721, 35.889961, 22.276375>,  <23.373606, 36.092278, 22.189079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468721, 35.889961, 22.276375>,  <23.627247, 35.552765, 22.421867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468721, 35.889961, 22.276375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024123, -0.386473, -0.921985,
		-0.917798, -0.374171, 0.132830,
		-0.396315, 0.842991, -0.363731,
		23.349827, 36.142860, 22.167255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115366, 35.323441, 21.927418>,  <23.627247, 35.552765, 22.421867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115366, 35.323441, 21.927418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.211365, 35.703136, 21.846077>,  <23.268965, 35.930954, 21.797272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.211365, 35.703136, 21.846077>,  <23.115366, 35.323441, 21.927418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.211365, 35.703136, 21.846077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271370, -0.266725, -0.924779,
		-0.932072, 0.166762, -0.321608,
		0.239999, 0.949235, -0.203353,
		23.283365, 35.987907, 21.785070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839281, 35.490532, 21.317669>,  <23.115366, 35.323441, 21.927418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839281, 35.490532, 21.317669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.166908, 35.711857, 21.378296>,  <23.363485, 35.844650, 21.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.166908, 35.711857, 21.378296>,  <22.839281, 35.490532, 21.317669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.166908, 35.711857, 21.378296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434031, -0.424883, -0.794413,
		-0.375161, 0.716463, -0.588163,
		0.819067, 0.553313, 0.151567,
		23.412628, 35.877850, 21.423765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.284210, 35.484615, 21.890625>,  <22.839281, 35.490532, 21.317669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.284210, 35.484615, 21.890625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945221, 35.655060, 22.017258>,  <21.741827, 35.757324, 22.093237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945221, 35.655060, 22.017258>,  <22.284210, 35.484615, 21.890625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945221, 35.655060, 22.017258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148519, 0.762887, -0.629242,
		-0.509642, -0.486246, -0.709810,
		-0.847471, 0.426109, 0.316583,
		21.690979, 35.782894, 22.112232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940762, 35.579376, 21.383450>,  <22.284210, 35.484615, 21.890625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940762, 35.579376, 21.383450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755907, 35.841057, 21.622932>,  <21.644995, 35.998066, 21.766623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755907, 35.841057, 21.622932>,  <21.940762, 35.579376, 21.383450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755907, 35.841057, 21.622932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106748, 0.629177, -0.769897,
		-0.880361, -0.419707, -0.220930,
		-0.462135, 0.654204, 0.598706,
		21.617266, 36.037319, 21.802544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370106, 35.836208, 20.970533>,  <21.940762, 35.579376, 21.383450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370106, 35.836208, 20.970533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.408520, 36.106880, 21.262527>,  <21.431568, 36.269283, 21.437725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.408520, 36.106880, 21.262527>,  <21.370106, 35.836208, 20.970533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.408520, 36.106880, 21.262527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199343, 0.731593, -0.651946,
		-0.975213, -0.082910, 0.205149,
		0.096033, 0.676681, 0.729987,
		21.437330, 36.309883, 21.481524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727301, 36.308292, 20.916254>,  <21.370106, 35.836208, 20.970533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727301, 36.308292, 20.916254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037846, 36.494164, 21.086590>,  <21.224173, 36.605686, 21.188791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037846, 36.494164, 21.086590>,  <20.727301, 36.308292, 20.916254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037846, 36.494164, 21.086590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136109, 0.783287, -0.606577,
		-0.615415, 0.412963, 0.671361,
		0.776362, 0.464675, 0.425839,
		21.270754, 36.633568, 21.214342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521679, 37.010960, 20.884583>,  <20.727301, 36.308292, 20.916254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521679, 37.010960, 20.884583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.907635, 37.033184, 20.987270>,  <21.139208, 37.046520, 21.048883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.907635, 37.033184, 20.987270>,  <20.521679, 37.010960, 20.884583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907635, 37.033184, 20.987270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166654, 0.625959, -0.761841,
		-0.203024, 0.777874, 0.594720,
		0.964887, 0.055560, 0.256721,
		21.197102, 37.049850, 21.064287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.642912, 37.814800, 20.920061>,  <20.521679, 37.010960, 20.884583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.642912, 37.814800, 20.920061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.976992, 37.602379, 20.862896>,  <21.177441, 37.474926, 20.828596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.976992, 37.602379, 20.862896>,  <20.642912, 37.814800, 20.920061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976992, 37.602379, 20.862896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312912, 0.672594, -0.670599,
		0.452246, 0.515366, 0.727923,
		0.835201, -0.531051, -0.142914,
		21.227552, 37.443062, 20.820023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252550, 38.241692, 20.833830>,  <20.642912, 37.814800, 20.920061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252550, 38.241692, 20.833830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420549, 37.921253, 20.663258>,  <21.521349, 37.728989, 20.560915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420549, 37.921253, 20.663258>,  <21.252550, 38.241692, 20.833830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.420549, 37.921253, 20.663258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434758, 0.590061, -0.680304,
		0.796611, 0.100332, 0.596108,
		0.419996, -0.801100, -0.426429,
		21.546549, 37.680923, 20.535330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878996, 38.530209, 20.543386>,  <21.252550, 38.241692, 20.833830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.878996, 38.530209, 20.543386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834740, 38.179134, 20.356869>,  <21.808186, 37.968491, 20.244959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834740, 38.179134, 20.356869>,  <21.878996, 38.530209, 20.543386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.834740, 38.179134, 20.356869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484264, 0.362103, -0.796473,
		0.867898, -0.313930, 0.384968,
		-0.110639, -0.877684, -0.466294,
		21.801548, 37.915829, 20.216980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525045, 38.320312, 20.242590>,  <21.878996, 38.530209, 20.543386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525045, 38.320312, 20.242590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.300730, 38.074905, 20.020199>,  <22.166140, 37.927662, 19.886765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.300730, 38.074905, 20.020199>,  <22.525045, 38.320312, 20.242590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300730, 38.074905, 20.020199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454382, 0.333296, -0.826106,
		0.692136, -0.715897, 0.091863,
		-0.560790, -0.613518, -0.555977,
		22.132492, 37.890850, 19.853405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008966, 38.157433, 19.784931>,  <22.525045, 38.320312, 20.242590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008966, 38.157433, 19.784931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.652483, 38.060749, 19.631401>,  <22.438593, 38.002739, 19.539284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.652483, 38.060749, 19.631401>,  <23.008966, 38.157433, 19.784931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652483, 38.060749, 19.631401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367338, 0.111818, -0.923342,
		0.266100, -0.963884, -0.010864,
		-0.891209, -0.241710, -0.383826,
		22.385120, 37.988235, 19.516253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.210825, 37.696049, 19.200918>,  <23.008966, 38.157433, 19.784931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.210825, 37.696049, 19.200918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.846153, 37.842171, 19.125668>,  <22.627350, 37.929844, 19.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.846153, 37.842171, 19.125668>,  <23.210825, 37.696049, 19.200918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.846153, 37.842171, 19.125668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318527, 0.339064, -0.885198,
		-0.259583, -0.866940, -0.425478,
		-0.911678, 0.365309, -0.188129,
		22.572649, 37.951763, 19.069229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.112110, 37.521355, 18.514997>,  <23.210825, 37.696049, 19.200918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.112110, 37.521355, 18.514997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.854654, 37.817513, 18.592506>,  <22.700182, 37.995209, 18.639011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.854654, 37.817513, 18.592506>,  <23.112110, 37.521355, 18.514997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.854654, 37.817513, 18.592506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214360, 0.417453, -0.883053,
		-0.734697, -0.526830, -0.427399,
		-0.643638, 0.740394, 0.193770,
		22.661564, 38.039631, 18.650637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745750, 37.625214, 17.919901>,  <23.112110, 37.521355, 18.514997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745750, 37.625214, 17.919901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678226, 37.970215, 18.110725>,  <22.637712, 38.177216, 18.225220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678226, 37.970215, 18.110725>,  <22.745750, 37.625214, 17.919901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678226, 37.970215, 18.110725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167449, 0.502067, -0.848463,
		-0.971321, -0.063345, -0.229179,
		-0.168809, 0.862506, 0.477061,
		22.627584, 38.228966, 18.253843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220629, 37.999908, 17.549606>,  <22.745750, 37.625214, 17.919901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220629, 37.999908, 17.549606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.407423, 38.287754, 17.755161>,  <22.519499, 38.460461, 17.878494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.407423, 38.287754, 17.755161>,  <22.220629, 37.999908, 17.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407423, 38.287754, 17.755161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050557, 0.558465, -0.827986,
		-0.882818, 0.412638, 0.224414,
		0.466986, 0.719616, 0.513885,
		22.547520, 38.503639, 17.909327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.995342, 38.593491, 17.151899>,  <22.220629, 37.999908, 17.549606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.995342, 38.593491, 17.151899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.296417, 38.724773, 17.380196>,  <22.477062, 38.803543, 17.517174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.296417, 38.724773, 17.380196>,  <21.995342, 38.593491, 17.151899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.296417, 38.724773, 17.380196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145559, 0.762479, -0.630428,
		-0.642085, 0.557592, 0.526136,
		0.752688, 0.328204, 0.570739,
		22.522224, 38.823235, 17.551416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852201, 39.280251, 17.337605>,  <21.995342, 38.593491, 17.151899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852201, 39.280251, 17.337605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.246653, 39.215614, 17.352772>,  <22.483324, 39.176834, 17.361872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.246653, 39.215614, 17.352772>,  <21.852201, 39.280251, 17.337605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246653, 39.215614, 17.352772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160253, 0.867431, -0.471044,
		0.043223, 0.470587, 0.881294,
		0.986129, -0.161590, 0.037919,
		22.542492, 39.167137, 17.364147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.119015, 39.946991, 17.374535>,  <21.852201, 39.280251, 17.337605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.119015, 39.946991, 17.374535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399384, 39.705784, 17.222179>,  <22.567604, 39.561058, 17.130766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399384, 39.705784, 17.222179>,  <22.119015, 39.946991, 17.374535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.399384, 39.705784, 17.222179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230182, 0.696704, -0.679426,
		0.675074, 0.388551, 0.627139,
		0.700922, -0.603019, -0.380889,
		22.609659, 39.524879, 17.107912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588163, 40.384342, 17.133854>,  <22.119015, 39.946991, 17.374535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588163, 40.384342, 17.133854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.704773, 40.035744, 16.976120>,  <22.774738, 39.826584, 16.881479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.704773, 40.035744, 16.976120>,  <22.588163, 40.384342, 17.133854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704773, 40.035744, 16.976120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390250, 0.484734, -0.782775,
		0.873337, 0.074309, 0.481416,
		0.291526, -0.871499, -0.394337,
		22.792231, 39.774292, 16.857819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097826, 40.632404, 16.768127>,  <22.588163, 40.384342, 17.133854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097826, 40.632404, 16.768127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.029535, 40.263908, 16.628311>,  <22.988560, 40.042812, 16.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.029535, 40.263908, 16.628311>,  <23.097826, 40.632404, 16.768127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.029535, 40.263908, 16.628311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313512, 0.285521, -0.905642,
		0.934110, -0.264203, 0.240072,
		-0.170727, -0.921236, -0.349538,
		22.978317, 39.987537, 16.523449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.667971, 40.392052, 16.404383>,  <23.097826, 40.632404, 16.768127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.667971, 40.392052, 16.404383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.354170, 40.190193, 16.260223>,  <23.165890, 40.069077, 16.173727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.354170, 40.190193, 16.260223>,  <23.667971, 40.392052, 16.404383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.354170, 40.190193, 16.260223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295949, 0.206037, -0.932718,
		0.544952, -0.838377, -0.012285,
		-0.784500, -0.504651, -0.360398,
		23.118820, 40.038799, 16.152103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.968174, 39.865978, 15.950276>,  <23.667971, 40.392052, 16.404383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.968174, 39.865978, 15.950276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.591469, 39.943226, 15.840159>,  <23.365446, 39.989574, 15.774089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.591469, 39.943226, 15.840159>,  <23.968174, 39.865978, 15.950276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.591469, 39.943226, 15.840159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299172, 0.107360, -0.948140,
		-0.153546, -0.975284, -0.158883,
		-0.941764, 0.193117, -0.275293,
		23.308939, 40.001160, 15.757571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.786736, 39.472881, 15.316910>,  <23.968174, 39.865978, 15.950276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.786736, 39.472881, 15.316910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508102, 39.759769, 15.309182>,  <23.340923, 39.931900, 15.304545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508102, 39.759769, 15.309182>,  <23.786736, 39.472881, 15.316910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508102, 39.759769, 15.309182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117343, 0.087320, -0.989245,
		-0.707818, -0.691356, -0.144986,
		-0.696580, 0.717218, -0.019319,
		23.299128, 39.974934, 15.303387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302742, 38.998573, 15.075808>,  <23.786736, 39.472881, 15.316910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302742, 38.998573, 15.075808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.059208, 38.879761, 14.781571>,  <22.913088, 38.808472, 14.605030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.059208, 38.879761, 14.781571>,  <23.302742, 38.998573, 15.075808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.059208, 38.879761, 14.781571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761090, -0.480241, -0.436016,
		-0.223748, -0.825311, 0.518457,
		-0.608834, -0.297035, -0.735589,
		22.876558, 38.790649, 14.560895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.369795, 38.336433, 14.874708>,  <23.302742, 38.998573, 15.075808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.369795, 38.336433, 14.874708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262701, 38.478325, 14.516381>,  <23.198444, 38.563457, 14.301385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262701, 38.478325, 14.516381>,  <23.369795, 38.336433, 14.874708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.262701, 38.478325, 14.516381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689131, -0.579284, -0.435349,
		-0.673362, -0.733893, -0.089359,
		-0.267735, 0.354727, -0.895816,
		23.182381, 38.584743, 14.247637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.273750, 37.830254, 14.332710>,  <23.369795, 38.336433, 14.874708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.273750, 37.830254, 14.332710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.371923, 38.184784, 14.175641>,  <23.430828, 38.397503, 14.081399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.371923, 38.184784, 14.175641>,  <23.273750, 37.830254, 14.332710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.371923, 38.184784, 14.175641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789039, -0.417969, -0.450244,
		-0.563187, -0.199330, -0.801928,
		0.245434, 0.886324, -0.392673,
		23.445553, 38.450680, 14.057839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522038, 37.747517, 14.621624>,  <23.273750, 37.830254, 14.332710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522038, 37.747517, 14.621624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399620, 37.378521, 14.527524>,  <22.326170, 37.157124, 14.471065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399620, 37.378521, 14.527524>,  <22.522038, 37.747517, 14.621624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.399620, 37.378521, 14.527524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874619, 0.370041, -0.313227,
		0.376005, 0.109901, -0.920077,
		-0.306042, -0.922492, -0.235258,
		22.307806, 37.101772, 14.456949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406212, 37.578159, 13.859442>,  <22.522038, 37.747517, 14.621624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406212, 37.578159, 13.859442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.180929, 37.392605, 14.132970>,  <22.045759, 37.281273, 14.297087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.180929, 37.392605, 14.132970>,  <22.406212, 37.578159, 13.859442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180929, 37.392605, 14.132970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811493, 0.466558, -0.351856,
		-0.155820, -0.753081, -0.639210,
		-0.563204, -0.463888, 0.683819,
		22.011969, 37.253437, 14.338116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997858, 37.152485, 13.537034>,  <22.406212, 37.578159, 13.859442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997858, 37.152485, 13.537034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.863094, 37.303673, 13.881970>,  <21.782236, 37.394386, 14.088932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.863094, 37.303673, 13.881970>,  <21.997858, 37.152485, 13.537034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863094, 37.303673, 13.881970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613324, 0.606807, -0.505588,
		-0.714370, -0.699232, 0.027378,
		-0.336910, 0.377968, 0.862341,
		21.762022, 37.417065, 14.140673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229815, 36.957619, 13.624886>,  <21.997858, 37.152485, 13.537034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229815, 36.957619, 13.624886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366671, 37.288799, 13.802623>,  <21.448784, 37.487507, 13.909266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366671, 37.288799, 13.802623>,  <21.229815, 36.957619, 13.624886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366671, 37.288799, 13.802623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675171, 0.545502, -0.496560,
		-0.653516, -0.130114, 0.745646,
		0.342142, 0.827948, 0.444343,
		21.469313, 37.537186, 13.935925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736034, 37.286617, 14.168926>,  <21.229815, 36.957619, 13.624886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736034, 37.286617, 14.168926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504457, 36.987911, 14.037978>,  <20.365511, 36.808689, 13.959410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504457, 36.987911, 14.037978>,  <20.736034, 37.286617, 14.168926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504457, 36.987911, 14.037978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686917, 0.230389, 0.689250,
		-0.439283, 0.623913, -0.646346,
		-0.578943, -0.746762, -0.327370,
		20.330774, 36.763882, 13.939767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974062, 37.510582, 14.066268>,  <20.736034, 37.286617, 14.168926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974062, 37.510582, 14.066268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004461, 37.121048, 14.151929>,  <20.022701, 36.887325, 14.203325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004461, 37.121048, 14.151929>,  <19.974062, 37.510582, 14.066268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004461, 37.121048, 14.151929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676752, 0.107354, 0.728342,
		-0.732278, -0.200280, -0.650889,
		0.075997, -0.973839, 0.214153,
		20.027260, 36.828896, 14.216175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293955, 37.326595, 14.116625>,  <19.974062, 37.510582, 14.066268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293955, 37.326595, 14.116625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527126, 37.070030, 14.316136>,  <19.667030, 36.916092, 14.435843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527126, 37.070030, 14.316136>,  <19.293955, 37.326595, 14.116625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527126, 37.070030, 14.316136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702026, -0.088527, 0.706627,
		-0.409087, -0.762069, -0.501895,
		0.582930, -0.641415, 0.498777,
		19.702005, 36.877605, 14.465770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893158, 36.781689, 14.296657>,  <19.293955, 37.326595, 14.116625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893158, 36.781689, 14.296657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195551, 36.773918, 14.558377>,  <19.376987, 36.769257, 14.715410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195551, 36.773918, 14.558377>,  <18.893158, 36.781689, 14.296657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195551, 36.773918, 14.558377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644360, 0.153946, 0.749067,
		-0.115281, -0.987888, 0.103862,
		0.755984, -0.019429, 0.654302,
		19.422346, 36.768089, 14.754668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606600, 36.404964, 14.752076>,  <18.893158, 36.781689, 14.296657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606600, 36.404964, 14.752076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935629, 36.511517, 14.953040>,  <19.133047, 36.575447, 15.073618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935629, 36.511517, 14.953040>,  <18.606600, 36.404964, 14.752076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935629, 36.511517, 14.953040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534342, 0.059798, 0.843151,
		0.194556, -0.962011, 0.191527,
		0.822573, 0.266381, 0.502409,
		19.182402, 36.591431, 15.103763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742035, 35.919220, 15.386854>,  <18.606600, 36.404964, 14.752076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742035, 35.919220, 15.386854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.918688, 36.269260, 15.466008>,  <19.024679, 36.479286, 15.513500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.918688, 36.269260, 15.466008>,  <18.742035, 35.919220, 15.386854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918688, 36.269260, 15.466008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382649, -0.015777, 0.923759,
		0.811505, -0.483683, 0.327888,
		0.441633, 0.875101, 0.197884,
		19.051178, 36.531792, 15.525373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053310, 35.778660, 16.091944>,  <18.742035, 35.919220, 15.386854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.053310, 35.778660, 16.091944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.037598, 36.176044, 16.049080>,  <19.028170, 36.414474, 16.023361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.037598, 36.176044, 16.049080>,  <19.053310, 35.778660, 16.091944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037598, 36.176044, 16.049080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290946, 0.091224, 0.952381,
		0.955933, 0.068591, 0.285461,
		-0.039284, 0.993465, -0.107160,
		19.025812, 36.474083, 16.016932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363483, 36.019089, 16.553968>,  <19.053310, 35.778660, 16.091944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363483, 36.019089, 16.553968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133101, 36.332336, 16.460167>,  <18.994871, 36.520287, 16.403887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133101, 36.332336, 16.460167>,  <19.363483, 36.019089, 16.553968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133101, 36.332336, 16.460167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265395, 0.092197, 0.959721,
		0.773199, 0.614997, 0.154735,
		-0.575960, 0.783121, -0.234504,
		18.960312, 36.567272, 16.389816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508459, 36.644489, 17.038754>,  <19.363483, 36.019089, 16.553968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508459, 36.644489, 17.038754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139093, 36.720806, 16.905548>,  <18.917473, 36.766598, 16.825624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139093, 36.720806, 16.905548>,  <19.508459, 36.644489, 17.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139093, 36.720806, 16.905548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259763, 0.328046, 0.908245,
		0.282534, 0.925193, -0.253361,
		-0.923416, 0.190796, -0.333015,
		18.862068, 36.778046, 16.805643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396103, 37.220390, 17.382534>,  <19.508459, 36.644489, 17.038754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396103, 37.220390, 17.382534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033033, 37.109318, 17.256660>,  <18.815191, 37.042675, 17.181137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033033, 37.109318, 17.256660>,  <19.396103, 37.220390, 17.382534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033033, 37.109318, 17.256660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396401, 0.320989, 0.860135,
		-0.137832, 0.905461, -0.401425,
		-0.907672, -0.277679, -0.314683,
		18.760733, 37.026012, 17.162256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984774, 37.778240, 17.338505>,  <19.396103, 37.220390, 17.382534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984774, 37.778240, 17.338505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716391, 37.481655, 17.341251>,  <18.555361, 37.303703, 17.342899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716391, 37.481655, 17.341251>,  <18.984774, 37.778240, 17.338505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716391, 37.481655, 17.341251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384587, 0.355907, 0.851718,
		-0.633961, 0.568826, -0.523956,
		-0.670959, -0.741463, 0.006868,
		18.515102, 37.259216, 17.343311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282986, 38.060375, 17.590910>,  <18.984774, 37.778240, 17.338505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282986, 38.060375, 17.590910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315557, 37.674385, 17.690659>,  <18.335100, 37.442791, 17.750507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315557, 37.674385, 17.690659>,  <18.282986, 38.060375, 17.590910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315557, 37.674385, 17.690659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075435, 0.243516, 0.966959,
		-0.993820, -0.097552, -0.052964,
		0.081431, -0.964978, 0.249370,
		18.339987, 37.384892, 17.765471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698208, 37.869221, 18.028254>,  <18.282986, 38.060375, 17.590910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698208, 37.869221, 18.028254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.972521, 37.588318, 18.104713>,  <18.137110, 37.419777, 18.150589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.972521, 37.588318, 18.104713>,  <17.698208, 37.869221, 18.028254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972521, 37.588318, 18.104713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186245, 0.084564, 0.978857,
		-0.703572, -0.706886, -0.072799,
		0.685784, -0.702255, 0.191150,
		18.178257, 37.377640, 18.162058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376678, 37.388000, 18.546066>,  <17.698208, 37.869221, 18.028254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376678, 37.388000, 18.546066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770428, 37.328239, 18.583347>,  <18.006678, 37.292385, 18.605715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770428, 37.328239, 18.583347>,  <17.376678, 37.388000, 18.546066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770428, 37.328239, 18.583347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108163, -0.095355, 0.989550,
		-0.138954, -0.984168, -0.110025,
		0.984374, -0.149403, 0.093201,
		18.065741, 37.283421, 18.611307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374531, 37.099342, 19.152105>,  <17.376678, 37.388000, 18.546066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374531, 37.099342, 19.152105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.767185, 37.151791, 19.096687>,  <18.002779, 37.183258, 19.063437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.767185, 37.151791, 19.096687>,  <17.374531, 37.099342, 19.152105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767185, 37.151791, 19.096687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123938, 0.113707, 0.985753,
		0.145011, -0.984823, 0.095368,
		0.981637, 0.131126, -0.138546,
		18.061676, 37.191128, 19.055124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721397, 36.664413, 19.811460>,  <17.374531, 37.099342, 19.152105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721397, 36.664413, 19.811460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.996090, 36.913010, 19.660652>,  <18.160906, 37.062168, 19.570168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.996090, 36.913010, 19.660652>,  <17.721397, 36.664413, 19.811460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996090, 36.913010, 19.660652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439509, 0.058116, 0.896356,
		0.578990, -0.781261, -0.233241,
		0.686733, 0.621493, -0.377020,
		18.202110, 37.099457, 19.547546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318058, 36.488766, 20.106161>,  <17.721397, 36.664413, 19.811460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318058, 36.488766, 20.106161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373871, 36.873383, 20.011528>,  <18.407358, 37.104153, 19.954748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373871, 36.873383, 20.011528>,  <18.318058, 36.488766, 20.106161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373871, 36.873383, 20.011528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517667, 0.132841, 0.845207,
		0.844128, -0.240405, -0.479222,
		0.139531, 0.961540, -0.236584,
		18.415730, 37.161846, 19.940552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059536, 36.581314, 20.111116>,  <18.318058, 36.488766, 20.106161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059536, 36.581314, 20.111116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948017, 36.963764, 20.147125>,  <18.881105, 37.193233, 20.168730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948017, 36.963764, 20.147125>,  <19.059536, 36.581314, 20.111116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948017, 36.963764, 20.147125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561633, 0.086292, 0.822875,
		0.779000, 0.279974, -0.561047,
		-0.278798, 0.956121, 0.090021,
		18.864378, 37.250599, 20.174131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674772, 36.906818, 20.273741>,  <19.059536, 36.581314, 20.111116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674772, 36.906818, 20.273741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393114, 37.167675, 20.386086>,  <19.224119, 37.324188, 20.453493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393114, 37.167675, 20.386086>,  <19.674772, 36.906818, 20.273741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393114, 37.167675, 20.386086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516119, 0.198430, 0.833215,
		0.487646, 0.731664, -0.476309,
		-0.704147, 0.652145, 0.280862,
		19.181870, 37.363319, 20.470345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086632, 37.472939, 20.459576>,  <19.674772, 36.906818, 20.273741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086632, 37.472939, 20.459576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725021, 37.490540, 20.629658>,  <19.508055, 37.501099, 20.731707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725021, 37.490540, 20.629658>,  <20.086632, 37.472939, 20.459576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725021, 37.490540, 20.629658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420509, 0.270423, 0.866051,
		-0.076877, 0.961736, -0.262973,
		-0.904026, 0.044003, 0.425207,
		19.453814, 37.503742, 20.757219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897024, 38.181358, 20.741119>,  <20.086632, 37.472939, 20.459576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897024, 38.181358, 20.741119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677402, 37.916813, 20.945526>,  <19.545630, 37.758087, 21.068171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677402, 37.916813, 20.945526>,  <19.897024, 38.181358, 20.741119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.677402, 37.916813, 20.945526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528113, 0.199362, 0.825440,
		-0.647794, 0.723085, 0.239815,
		-0.549053, -0.661364, 0.511016,
		19.512686, 37.718403, 21.098831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974699, 38.451286, 21.331776>,  <19.897024, 38.181358, 20.741119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974699, 38.451286, 21.331776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782516, 38.116974, 21.438080>,  <19.667208, 37.916386, 21.501863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782516, 38.116974, 21.438080>,  <19.974699, 38.451286, 21.331776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782516, 38.116974, 21.438080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300046, 0.128098, 0.945285,
		-0.824096, 0.533909, 0.189228,
		-0.480456, -0.835783, 0.265762,
		19.638380, 37.866238, 21.517809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772612, 38.676533, 21.893488>,  <19.974699, 38.451286, 21.331776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772612, 38.676533, 21.893488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756308, 38.278366, 21.928101>,  <19.746525, 38.039467, 21.948868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756308, 38.278366, 21.928101>,  <19.772612, 38.676533, 21.893488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756308, 38.278366, 21.928101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358310, 0.066281, 0.931247,
		-0.932712, 0.068961, 0.353966,
		-0.040758, -0.995415, 0.086531,
		19.744080, 37.979740, 21.954060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346617, 38.413689, 22.396948>,  <19.772612, 38.676533, 21.893488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346617, 38.413689, 22.396948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.612968, 38.116039, 22.375454>,  <19.772779, 37.937450, 22.362556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.612968, 38.116039, 22.375454>,  <19.346617, 38.413689, 22.396948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.612968, 38.116039, 22.375454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088495, 0.007261, 0.996050,
		-0.740792, -0.668005, 0.070686,
		0.665880, -0.744122, -0.053736,
		19.812733, 37.892803, 22.359333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011292, 37.821800, 22.646429>,  <19.346617, 38.413689, 22.396948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011292, 37.821800, 22.646429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404732, 37.881210, 22.687366>,  <19.640795, 37.916855, 22.711929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404732, 37.881210, 22.687366>,  <19.011292, 37.821800, 22.646429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.404732, 37.881210, 22.687366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134572, 0.226479, 0.964675,
		0.120101, -0.962625, 0.242752,
		0.983599, 0.148526, 0.102342,
		19.699812, 37.925770, 22.718069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035900, 37.292198, 23.207214>,  <19.011292, 37.821800, 22.646429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035900, 37.292198, 23.207214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.797880, 37.612698, 23.232269>,  <18.655069, 37.804996, 23.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.797880, 37.612698, 23.232269>,  <19.035900, 37.292198, 23.207214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797880, 37.612698, 23.232269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791128, -0.597692, 0.129927,
		0.141542, 0.027759, 0.989543,
		-0.595048, 0.801245, 0.062638,
		18.619366, 37.853073, 23.251060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671572, 37.197968, 23.817192>,  <19.035900, 37.292198, 23.207214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671572, 37.197968, 23.817192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485186, 37.426922, 23.547302>,  <18.373354, 37.564293, 23.385368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485186, 37.426922, 23.547302>,  <18.671572, 37.197968, 23.817192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485186, 37.426922, 23.547302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817491, -0.570244, 0.080809,
		-0.338505, 0.589236, 0.733632,
		-0.465965, 0.572383, -0.674726,
		18.345396, 37.598637, 23.344885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078241, 37.500652, 24.140249>,  <18.671572, 37.197968, 23.817192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078241, 37.500652, 24.140249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023022, 37.426365, 23.751106>,  <17.989891, 37.381794, 23.517620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023022, 37.426365, 23.751106>,  <18.078241, 37.500652, 24.140249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023022, 37.426365, 23.751106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907275, -0.370247, 0.199420,
		-0.397234, 0.910179, -0.117384,
		-0.138047, -0.185716, -0.972858,
		17.981607, 37.370651, 23.459249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.705494, 25.190228, 25.814987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.978613, 25.412792, 26.004383>,  <32.142483, 25.546331, 26.118021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.978613, 25.412792, 26.004383>,  <31.705494, 25.190228, 25.814987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978613, 25.412792, 26.004383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210358, 0.770354, -0.601917,
		-0.699669, 0.311385, 0.643041,
		0.682797, 0.556412, 0.473491,
		32.183453, 25.579716, 26.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260223, 25.729036, 25.871855>,  <31.705494, 25.190228, 25.814987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260223, 25.729036, 25.871855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.604256, 25.903866, 25.977097>,  <31.810675, 26.008762, 26.040241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.604256, 25.903866, 25.977097>,  <31.260223, 25.729036, 25.871855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604256, 25.903866, 25.977097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362426, 0.886455, -0.287826,
		-0.359033, 0.152198, 0.920832,
		0.860083, 0.437073, 0.263106,
		31.862280, 26.034988, 26.056028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118570, 26.422855, 26.195320>,  <31.260223, 25.729036, 25.871855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118570, 26.422855, 26.195320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.492496, 26.432140, 26.053570>,  <31.716852, 26.437712, 25.968519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.492496, 26.432140, 26.053570>,  <31.118570, 26.422855, 26.195320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492496, 26.432140, 26.053570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222087, 0.816883, -0.532335,
		0.277128, 0.576337, 0.768789,
		0.934814, 0.023213, -0.354378,
		31.772942, 26.439104, 25.947256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553328, 27.126459, 26.386784>,  <31.118570, 26.422855, 26.195320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553328, 27.126459, 26.386784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.715849, 26.963860, 26.059448>,  <31.813362, 26.866299, 25.863047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.715849, 26.963860, 26.059448>,  <31.553328, 27.126459, 26.386784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715849, 26.963860, 26.059448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196142, 0.835915, -0.512616,
		0.892438, 0.368788, 0.259903,
		0.406303, -0.406500, -0.818337,
		31.837740, 26.841909, 25.813948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794746, 27.697300, 26.071037>,  <31.553328, 27.126459, 26.386784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794746, 27.697300, 26.071037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.831358, 27.410671, 25.794445>,  <31.853325, 27.238693, 25.628490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.831358, 27.410671, 25.794445>,  <31.794746, 27.697300, 26.071037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831358, 27.410671, 25.794445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137150, 0.678706, -0.721490,
		0.986313, 0.160873, -0.036158,
		0.091528, -0.716574, -0.691480,
		31.858816, 27.195700, 25.587002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276203, 27.923273, 25.637735>,  <31.794746, 27.697300, 26.071037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276203, 27.923273, 25.637735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022785, 27.685841, 25.439228>,  <31.870735, 27.543381, 25.320124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022785, 27.685841, 25.439228>,  <32.276203, 27.923273, 25.637735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022785, 27.685841, 25.439228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158603, 0.727430, -0.667600,
		0.757276, -0.344245, -0.555003,
		-0.633545, -0.593583, -0.496267,
		31.832722, 27.507767, 25.290348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429073, 28.031414, 24.909407>,  <32.276203, 27.923273, 25.637735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429073, 28.031414, 24.909407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.068027, 27.859409, 24.901669>,  <31.851400, 27.756207, 24.897026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.068027, 27.859409, 24.901669>,  <32.429073, 28.031414, 24.909407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068027, 27.859409, 24.901669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334458, 0.728913, -0.597347,
		0.270967, -0.532705, -0.801750,
		-0.902616, -0.430013, -0.019344,
		31.797243, 27.730406, 24.895864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227299, 27.976206, 24.225357>,  <32.429073, 28.031414, 24.909407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227299, 27.976206, 24.225357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.867395, 27.957191, 24.398876>,  <31.651455, 27.945784, 24.502987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.867395, 27.957191, 24.398876>,  <32.227299, 27.976206, 24.225357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867395, 27.957191, 24.398876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359706, 0.643615, -0.675553,
		-0.247086, -0.763872, -0.596195,
		-0.899756, -0.047536, 0.433798,
		31.597469, 27.942930, 24.529015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844439, 28.093529, 23.669657>,  <32.227299, 27.976206, 24.225357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844439, 28.093529, 23.669657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.581203, 28.131741, 23.968399>,  <31.423264, 28.154669, 24.147644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.581203, 28.131741, 23.968399>,  <31.844439, 28.093529, 23.669657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581203, 28.131741, 23.968399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423362, 0.773319, -0.471957,
		-0.622645, -0.626779, -0.468466,
		-0.658086, 0.095531, 0.746858,
		31.383778, 28.160400, 24.192457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253164, 28.125692, 23.378969>,  <31.844439, 28.093529, 23.669657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253164, 28.125692, 23.378969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.217426, 28.303242, 23.735619>,  <31.195984, 28.409771, 23.949608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.217426, 28.303242, 23.735619>,  <31.253164, 28.125692, 23.378969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217426, 28.303242, 23.735619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176263, 0.874029, -0.452775,
		-0.980280, -0.197614, 0.000148,
		-0.089345, 0.443873, 0.891625,
		31.190622, 28.436403, 24.003105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531734, 28.467260, 23.397417>,  <31.253164, 28.125692, 23.378969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531734, 28.467260, 23.397417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.744415, 28.636009, 23.691170>,  <30.872025, 28.737259, 23.867422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.744415, 28.636009, 23.691170>,  <30.531734, 28.467260, 23.397417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744415, 28.636009, 23.691170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200105, 0.905135, -0.375085,
		-0.822953, 0.052479, 0.565681,
		0.531701, 0.421873, 0.734382,
		30.903925, 28.762571, 23.911484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109726, 28.943016, 23.681578>,  <30.531734, 28.467260, 23.397417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109726, 28.943016, 23.681578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.477034, 29.075661, 23.768124>,  <30.697418, 29.155247, 23.820051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.477034, 29.075661, 23.768124>,  <30.109726, 28.943016, 23.681578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477034, 29.075661, 23.768124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257936, 0.915570, -0.308547,
		-0.300415, 0.227521, 0.926275,
		0.918270, 0.331612, 0.216365,
		30.752514, 29.175144, 23.833033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097401, 29.539629, 24.184063>,  <30.109726, 28.943016, 23.681578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097401, 29.539629, 24.184063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.421711, 29.559811, 23.950790>,  <30.616297, 29.571920, 23.810827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.421711, 29.559811, 23.950790>,  <30.097401, 29.539629, 24.184063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421711, 29.559811, 23.950790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356495, 0.832765, -0.423572,
		0.464280, 0.551322, 0.693172,
		0.810774, 0.050456, -0.583180,
		30.664944, 29.574947, 23.775837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179617, 30.250418, 24.312149>,  <30.097401, 29.539629, 24.184063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179617, 30.250418, 24.312149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.416269, 30.137333, 24.010143>,  <30.558260, 30.069483, 23.828939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.416269, 30.137333, 24.010143>,  <30.179617, 30.250418, 24.312149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416269, 30.137333, 24.010143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128862, 0.891299, -0.434719,
		0.795844, 0.354486, 0.490890,
		0.591631, -0.282711, -0.755014,
		30.593760, 30.052519, 23.783638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495382, 30.874651, 24.217384>,  <30.179617, 30.250418, 24.312149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495382, 30.874651, 24.217384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501362, 30.632362, 23.899170>,  <30.504950, 30.486990, 23.708241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501362, 30.632362, 23.899170>,  <30.495382, 30.874651, 24.217384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501362, 30.632362, 23.899170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335782, 0.746380, -0.574602,
		0.941821, 0.275716, -0.192233,
		0.014948, -0.605721, -0.795537,
		30.505846, 30.450645, 23.660509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778076, 31.293905, 23.715965>,  <30.495382, 30.874651, 24.217384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778076, 31.293905, 23.715965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.631989, 31.001923, 23.484871>,  <30.544336, 30.826733, 23.346214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.631989, 31.001923, 23.484871>,  <30.778076, 31.293905, 23.715965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631989, 31.001923, 23.484871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272018, 0.677198, -0.683672,
		0.890293, -0.092534, -0.445886,
		-0.365216, -0.729958, -0.577734,
		30.522423, 30.782934, 23.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103455, 31.431759, 23.018686>,  <30.778076, 31.293905, 23.715965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103455, 31.431759, 23.018686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.766346, 31.225441, 22.957119>,  <30.564081, 31.101650, 22.920179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.766346, 31.225441, 22.957119>,  <31.103455, 31.431759, 23.018686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766346, 31.225441, 22.957119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183930, 0.544691, -0.818218,
		0.505870, -0.661262, -0.553921,
		-0.842772, -0.515794, -0.153917,
		30.513515, 31.070702, 22.910944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998426, 31.505100, 22.315809>,  <31.103455, 31.431759, 23.018686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998426, 31.505100, 22.315809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.640669, 31.360989, 22.421837>,  <30.426014, 31.274521, 22.485453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.640669, 31.360989, 22.421837>,  <30.998426, 31.505100, 22.315809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640669, 31.360989, 22.421837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414544, 0.445137, -0.793729,
		0.167972, -0.819788, -0.547479,
		-0.894393, -0.360279, 0.265068,
		30.372351, 31.252905, 22.501358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701256, 31.078962, 21.810013>,  <30.998426, 31.505100, 22.315809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701256, 31.078962, 21.810013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394110, 31.225506, 22.020218>,  <30.209822, 31.313431, 22.146341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394110, 31.225506, 22.020218>,  <30.701256, 31.078962, 21.810013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394110, 31.225506, 22.020218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408685, 0.351561, -0.842248,
		-0.493314, -0.861502, -0.120227,
		-0.767866, 0.366358, 0.525513,
		30.163750, 31.335413, 22.177872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131992, 30.930801, 21.367895>,  <30.701256, 31.078962, 21.810013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131992, 30.930801, 21.367895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.017435, 31.221146, 21.618050>,  <29.948700, 31.395351, 21.768143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.017435, 31.221146, 21.618050>,  <30.131992, 30.930801, 21.367895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017435, 31.221146, 21.618050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614611, 0.361549, -0.701096,
		-0.735004, -0.585159, 0.342576,
		-0.286394, 0.725859, 0.625386,
		29.931517, 31.438904, 21.805666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528786, 31.067873, 21.045979>,  <30.131992, 30.930801, 21.367895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528786, 31.067873, 21.045979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.616190, 31.366333, 21.297539>,  <29.668633, 31.545408, 21.448475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.616190, 31.366333, 21.297539>,  <29.528786, 31.067873, 21.045979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616190, 31.366333, 21.297539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503545, 0.638259, -0.582295,
		-0.835880, -0.189443, 0.515185,
		0.218510, 0.746148, 0.628901,
		29.681744, 31.590178, 21.486210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908072, 31.459677, 20.987648>,  <29.528786, 31.067873, 21.045979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908072, 31.459677, 20.987648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.201544, 31.690723, 21.130795>,  <29.377628, 31.829351, 21.216682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.201544, 31.690723, 21.130795>,  <28.908072, 31.459677, 20.987648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201544, 31.690723, 21.130795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379443, 0.785177, -0.489407,
		-0.563678, 0.223280, 0.795244,
		0.733682, 0.577618, 0.357865,
		29.421648, 31.864010, 21.238153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579437, 31.939903, 21.239426>,  <28.908072, 31.459677, 20.987648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579437, 31.939903, 21.239426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.951900, 32.039455, 21.132843>,  <29.175379, 32.099186, 21.068893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.951900, 32.039455, 21.132843>,  <28.579437, 31.939903, 21.239426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951900, 32.039455, 21.132843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356410, 0.775430, -0.521229,
		0.076895, 0.580316, 0.810753,
		0.931160, 0.248880, -0.266457,
		29.231249, 32.114120, 21.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077999, 31.560787, 21.686293>,  <28.579437, 31.939903, 21.239426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077999, 31.560787, 21.686293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.832197, 31.290546, 21.523346>,  <27.684717, 31.128401, 21.425579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.832197, 31.290546, 21.523346>,  <28.077999, 31.560787, 21.686293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832197, 31.290546, 21.523346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106200, -0.582502, 0.805862,
		-0.781733, 0.451943, 0.429699,
		-0.614504, -0.675603, -0.407365,
		27.647846, 31.087866, 21.401136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583725, 31.328575, 22.235035>,  <28.077999, 31.560787, 21.686293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583725, 31.328575, 22.235035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.545431, 31.032413, 21.968910>,  <27.522455, 30.854717, 21.809235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.545431, 31.032413, 21.968910>,  <27.583725, 31.328575, 22.235035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545431, 31.032413, 21.968910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077700, -0.671900, 0.736555,
		-0.992370, 0.018818, 0.121852,
		-0.095733, -0.740402, -0.665311,
		27.516710, 30.810293, 21.769318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080351, 30.859238, 22.446012>,  <27.583725, 31.328575, 22.235035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080351, 30.859238, 22.446012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.298386, 30.632469, 22.198956>,  <27.429207, 30.496408, 22.050722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.298386, 30.632469, 22.198956>,  <27.080351, 30.859238, 22.446012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298386, 30.632469, 22.198956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188031, -0.635275, 0.749046,
		-0.817023, -0.524430, -0.239680,
		0.545085, -0.566921, -0.617643,
		27.461912, 30.462393, 22.013662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900227, 30.201990, 22.547529>,  <27.080351, 30.859238, 22.446012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900227, 30.201990, 22.547529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.253767, 30.162235, 22.364697>,  <27.465891, 30.138382, 22.254997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.253767, 30.162235, 22.364697>,  <26.900227, 30.201990, 22.547529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253767, 30.162235, 22.364697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257179, -0.712969, 0.652330,
		-0.390720, -0.694116, -0.604600,
		0.883853, -0.099388, -0.457084,
		27.518923, 30.132420, 22.227571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019524, 29.547676, 22.388630>,  <26.900227, 30.201990, 22.547529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019524, 29.547676, 22.388630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.397230, 29.677143, 22.364639>,  <27.623854, 29.754824, 22.350245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.397230, 29.677143, 22.364639>,  <27.019524, 29.547676, 22.388630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397230, 29.677143, 22.364639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310636, -0.815879, 0.487695,
		0.108917, -0.479146, -0.870951,
		0.944268, 0.323667, -0.059977,
		27.680511, 29.774242, 22.346645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414209, 29.023464, 22.045992>,  <27.019524, 29.547676, 22.388630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414209, 29.023464, 22.045992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.670485, 29.238499, 22.265270>,  <27.824249, 29.367519, 22.396837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.670485, 29.238499, 22.265270>,  <27.414209, 29.023464, 22.045992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670485, 29.238499, 22.265270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336000, -0.838294, 0.429380,
		0.690379, -0.090905, -0.717714,
		0.640688, 0.537587, 0.548196,
		27.862692, 29.399775, 22.429729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091810, 28.682798, 22.002249>,  <27.414209, 29.023464, 22.045992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091810, 28.682798, 22.002249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.103525, 28.931332, 22.315449>,  <28.110554, 29.080452, 22.503368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.103525, 28.931332, 22.315449>,  <28.091810, 28.682798, 22.002249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103525, 28.931332, 22.315449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577596, -0.649836, 0.494061,
		0.815798, 0.437788, -0.377910,
		0.029285, 0.621332, 0.783000,
		28.112310, 29.117731, 22.550348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772390, 28.536016, 22.342354>,  <28.091810, 28.682798, 22.002249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772390, 28.536016, 22.342354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.568937, 28.721729, 22.632385>,  <28.446865, 28.833157, 22.806404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.568937, 28.721729, 22.632385>,  <28.772390, 28.536016, 22.342354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568937, 28.721729, 22.632385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263341, -0.717901, 0.644414,
		0.819723, 0.518711, 0.242883,
		-0.508631, 0.464280, 0.725078,
		28.416348, 28.861013, 22.849909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261797, 28.570929, 22.956095>,  <28.772390, 28.536016, 22.342354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261797, 28.570929, 22.956095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.888056, 28.621967, 23.089184>,  <28.663811, 28.652590, 23.169037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.888056, 28.621967, 23.089184>,  <29.261797, 28.570929, 22.956095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888056, 28.621967, 23.089184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167899, -0.665929, 0.726876,
		0.314315, 0.735022, 0.600790,
		-0.934353, 0.127596, 0.332721,
		28.607750, 28.660246, 23.189001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271873, 28.695610, 23.690378>,  <29.261797, 28.570929, 22.956095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271873, 28.695610, 23.690378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.889051, 28.591084, 23.640160>,  <28.659359, 28.528368, 23.610029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.889051, 28.591084, 23.640160>,  <29.271873, 28.695610, 23.690378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889051, 28.591084, 23.640160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017352, -0.483909, 0.874946,
		-0.289390, 0.835192, 0.467661,
		-0.957054, -0.261316, -0.125546,
		28.601934, 28.512690, 23.602495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088488, 28.680849, 24.350794>,  <29.271873, 28.695610, 23.690378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088488, 28.680849, 24.350794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.782804, 28.484898, 24.182983>,  <28.599394, 28.367327, 24.082296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.782804, 28.484898, 24.182983>,  <29.088488, 28.680849, 24.350794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782804, 28.484898, 24.182983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093613, -0.559326, 0.823645,
		-0.638141, 0.668709, 0.381582,
		-0.764207, -0.489881, -0.419528,
		28.553543, 28.337933, 24.057125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652988, 28.534885, 24.887184>,  <29.088488, 28.680849, 24.350794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652988, 28.534885, 24.887184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.552189, 28.274437, 24.600819>,  <28.491709, 28.118168, 24.428999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.552189, 28.274437, 24.600819>,  <28.652988, 28.534885, 24.887184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552189, 28.274437, 24.600819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011950, -0.741828, 0.670484,
		-0.967654, 0.160407, 0.194721,
		-0.252000, -0.651123, -0.715915,
		28.476589, 28.079100, 24.386044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122152, 28.053553, 25.232994>,  <28.652988, 28.534885, 24.887184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122152, 28.053553, 25.232994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.281460, 27.851139, 24.926971>,  <28.377045, 27.729691, 24.743359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.281460, 27.851139, 24.926971>,  <28.122152, 28.053553, 25.232994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281460, 27.851139, 24.926971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256183, -0.739505, 0.622498,
		-0.880767, -0.443916, -0.164885,
		0.398270, -0.506035, -0.765055,
		28.400942, 27.699329, 24.697454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781046, 27.408094, 25.288668>,  <28.122152, 28.053553, 25.232994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781046, 27.408094, 25.288668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.121498, 27.387558, 25.079693>,  <28.325769, 27.375237, 24.954308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.121498, 27.387558, 25.079693>,  <27.781046, 27.408094, 25.288668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121498, 27.387558, 25.079693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327681, -0.725549, 0.605147,
		-0.410121, -0.686252, -0.600715,
		0.851132, -0.051341, -0.522435,
		28.376837, 27.372156, 24.922962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764524, 26.775482, 25.004555>,  <27.781046, 27.408094, 25.288668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764524, 26.775482, 25.004555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.147717, 26.888046, 24.982342>,  <28.377632, 26.955584, 24.969013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.147717, 26.888046, 24.982342>,  <27.764524, 26.775482, 25.004555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147717, 26.888046, 24.982342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282399, -0.891395, 0.354494,
		0.050255, -0.355281, -0.933408,
		0.957980, 0.281409, -0.055534,
		28.435110, 26.972469, 24.965681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261986, 26.099310, 24.857216>,  <27.764524, 26.775482, 25.004555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261986, 26.099310, 24.857216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.502617, 26.384953, 25.000412>,  <28.646996, 26.556337, 25.086330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.502617, 26.384953, 25.000412>,  <28.261986, 26.099310, 24.857216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502617, 26.384953, 25.000412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589939, -0.699323, 0.403633,
		0.538588, -0.031623, -0.841976,
		0.601577, 0.714106, 0.357991,
		28.683090, 26.599184, 25.107809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919960, 26.015894, 24.527754>,  <28.261986, 26.099310, 24.857216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919960, 26.015894, 24.527754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.955877, 26.197571, 24.882301>,  <28.977428, 26.306576, 25.095030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.955877, 26.197571, 24.882301>,  <28.919960, 26.015894, 24.527754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955877, 26.197571, 24.882301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533612, -0.773388, 0.342240,
		0.840949, 0.442247, -0.311806,
		0.089792, 0.454190, 0.886368,
		28.982815, 26.333828, 25.148212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.784874, 26.210848, 24.668303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592815, 26.223022, 25.018967>,  <29.477581, 26.230328, 25.229364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592815, 26.223022, 25.018967>,  <29.784874, 26.210848, 24.668303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592815, 26.223022, 25.018967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608853, -0.707885, 0.358046,
		0.631472, 0.705672, 0.321356,
		-0.480146, 0.030438, 0.876660,
		29.448772, 26.232153, 25.281965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301403, 26.063709, 25.102104>,  <29.784874, 26.210848, 24.668303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301403, 26.063709, 25.102104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972956, 26.000725, 25.321548>,  <29.775888, 25.962934, 25.453215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972956, 26.000725, 25.321548>,  <30.301403, 26.063709, 25.102104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972956, 26.000725, 25.321548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471382, -0.729045, 0.496279,
		0.321816, 0.666107, 0.672856,
		-0.821117, -0.157462, 0.548610,
		29.726620, 25.953485, 25.486132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577177, 25.994539, 25.795465>,  <30.301403, 26.063709, 25.102104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577177, 25.994539, 25.795465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217730, 25.819183, 25.802437>,  <30.002062, 25.713970, 25.806620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217730, 25.819183, 25.802437>,  <30.577177, 25.994539, 25.795465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217730, 25.819183, 25.802437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391513, -0.783338, 0.482803,
		-0.198004, 0.440678, 0.875556,
		-0.898617, -0.438388, 0.017427,
		29.948145, 25.687666, 25.807665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502102, 25.754229, 26.499712>,  <30.577177, 25.994539, 25.795465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502102, 25.754229, 26.499712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238581, 25.559547, 26.270245>,  <30.080467, 25.442738, 26.132565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238581, 25.559547, 26.270245>,  <30.502102, 25.754229, 26.499712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238581, 25.559547, 26.270245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330842, -0.872278, 0.360105,
		-0.675663, 0.047445, 0.735682,
		-0.658804, -0.486704, -0.573669,
		30.040939, 25.413536, 26.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171778, 25.304335, 26.934013>,  <30.502102, 25.754229, 26.499712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171778, 25.304335, 26.934013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133701, 25.137035, 26.572681>,  <30.110855, 25.036655, 26.355883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133701, 25.137035, 26.572681>,  <30.171778, 25.304335, 26.934013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133701, 25.137035, 26.572681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254248, -0.887569, 0.384159,
		-0.962443, -0.193101, 0.190829,
		-0.095192, -0.418249, -0.903330,
		30.105145, 25.011560, 26.301682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710169, 24.737463, 27.033112>,  <30.171778, 25.304335, 26.934013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710169, 24.737463, 27.033112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.913517, 24.670036, 26.695320>,  <30.035526, 24.629580, 26.492645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.913517, 24.670036, 26.695320>,  <29.710169, 24.737463, 27.033112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913517, 24.670036, 26.695320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170982, -0.941370, 0.290839,
		-0.843994, -0.292244, -0.449742,
		0.508370, -0.168569, -0.844479,
		30.066029, 24.619465, 26.441977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505777, 24.158514, 26.725925>,  <29.710169, 24.737463, 27.033112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505777, 24.158514, 26.725925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869989, 24.200855, 26.566063>,  <30.088516, 24.226259, 26.470144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869989, 24.200855, 26.566063>,  <29.505777, 24.158514, 26.725925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869989, 24.200855, 26.566063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122685, -0.992305, 0.016693,
		-0.394815, -0.064231, -0.916513,
		0.910532, 0.105852, -0.399657,
		30.143148, 24.232611, 26.446165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551888, 23.690266, 26.068907>,  <29.505777, 24.158514, 26.725925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551888, 23.690266, 26.068907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928997, 23.774906, 26.171982>,  <30.155262, 23.825691, 26.233828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928997, 23.774906, 26.171982>,  <29.551888, 23.690266, 26.068907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928997, 23.774906, 26.171982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213046, -0.976780, 0.022642,
		0.256495, 0.033553, -0.965963,
		0.942773, 0.211602, 0.257688,
		30.211828, 23.838387, 26.249289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969193, 23.242388, 25.742495>,  <29.551888, 23.690266, 26.068907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969193, 23.242388, 25.742495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181406, 23.358963, 26.060890>,  <30.308733, 23.428909, 26.251928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181406, 23.358963, 26.060890>,  <29.969193, 23.242388, 25.742495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181406, 23.358963, 26.060890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217928, -0.954368, 0.204177,
		0.819172, 0.065146, -0.569836,
		0.530532, 0.291440, 0.795989,
		30.340565, 23.446396, 26.299686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455477, 22.731682, 25.628611>,  <29.969193, 23.242388, 25.742495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455477, 22.731682, 25.628611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515785, 22.904968, 25.984047>,  <30.551971, 23.008940, 26.197308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515785, 22.904968, 25.984047>,  <30.455477, 22.731682, 25.628611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515785, 22.904968, 25.984047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225376, -0.890257, 0.395789,
		0.962535, 0.140593, -0.231863,
		0.150772, 0.433217, 0.888589,
		30.561016, 23.034933, 26.250624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154413, 22.546356, 25.906191>,  <30.455477, 22.731682, 25.628611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154413, 22.546356, 25.906191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943392, 22.644287, 26.231583>,  <30.816780, 22.703045, 26.426817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943392, 22.644287, 26.231583>,  <31.154413, 22.546356, 25.906191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943392, 22.644287, 26.231583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299946, -0.842218, 0.447996,
		0.794808, 0.480342, 0.370879,
		-0.527553, 0.244827, 0.813479,
		30.785126, 22.717735, 26.475626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652767, 22.493979, 26.495457>,  <31.154413, 22.546356, 25.906191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652767, 22.493979, 26.495457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280214, 22.472145, 26.639427>,  <31.056683, 22.459045, 26.725809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280214, 22.472145, 26.639427>,  <31.652767, 22.493979, 26.495457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280214, 22.472145, 26.639427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271516, -0.762753, 0.586930,
		0.242498, 0.644382, 0.725236,
		-0.931383, -0.054584, 0.359926,
		31.000799, 22.455770, 26.747404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780579, 22.414263, 27.162025>,  <31.652767, 22.493979, 26.495457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780579, 22.414263, 27.162025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405922, 22.284866, 27.108276>,  <31.181128, 22.207230, 27.076027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405922, 22.284866, 27.108276>,  <31.780579, 22.414263, 27.162025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405922, 22.284866, 27.108276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186413, -0.785096, 0.590656,
		-0.296566, 0.528185, 0.795657,
		-0.936642, -0.323489, -0.134372,
		31.124929, 22.187820, 27.067965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686357, 22.280069, 27.802940>,  <31.780579, 22.414263, 27.162025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686357, 22.280069, 27.802940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401247, 22.102917, 27.585388>,  <31.230181, 21.996624, 27.454857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401247, 22.102917, 27.585388>,  <31.686357, 22.280069, 27.802940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401247, 22.102917, 27.585388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070441, -0.816710, 0.572733,
		-0.697847, 0.369918, 0.613327,
		-0.712775, -0.442883, -0.543882,
		31.187414, 21.970053, 27.422224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126930, 22.080378, 28.294678>,  <31.686357, 22.280069, 27.802940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126930, 22.080378, 28.294678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077925, 21.850075, 27.971321>,  <31.048521, 21.711893, 27.777308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077925, 21.850075, 27.971321>,  <31.126930, 22.080378, 28.294678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077925, 21.850075, 27.971321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005827, -0.814096, 0.580701,
		-0.992450, 0.075853, 0.096382,
		-0.122512, -0.575755, -0.808391,
		31.041172, 21.677349, 27.728804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559219, 21.601784, 28.427214>,  <31.126930, 22.080378, 28.294678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559219, 21.601784, 28.427214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765116, 21.431164, 28.129730>,  <30.888653, 21.328793, 27.951241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765116, 21.431164, 28.129730>,  <30.559219, 21.601784, 28.427214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765116, 21.431164, 28.129730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133809, -0.896791, 0.421736,
		-0.846839, -0.117570, -0.518691,
		0.514741, -0.426548, -0.743706,
		30.919537, 21.303200, 27.906618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302715, 20.922558, 28.418861>,  <30.559219, 21.601784, 28.427214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302715, 20.922558, 28.418861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613844, 20.854534, 28.176846>,  <30.800522, 20.813721, 28.031635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613844, 20.854534, 28.176846>,  <30.302715, 20.922558, 28.418861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613844, 20.854534, 28.176846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186827, -0.856614, 0.480945,
		-0.600075, -0.487128, -0.634521,
		0.777821, -0.170057, -0.605041,
		30.847191, 20.803516, 27.995333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289894, 20.080698, 28.303606>,  <30.302715, 20.922558, 28.418861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289894, 20.080698, 28.303606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656231, 20.219933, 28.223537>,  <30.876034, 20.303473, 28.175497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656231, 20.219933, 28.223537>,  <30.289894, 20.080698, 28.303606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656231, 20.219933, 28.223537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401444, -0.804498, 0.437751,
		-0.008662, -0.481268, -0.876531,
		0.915843, 0.348086, -0.200171,
		30.930984, 20.324358, 28.163486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709045, 19.595821, 27.935143>,  <30.289894, 20.080698, 28.303606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709045, 19.595821, 27.935143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958109, 19.847618, 28.121063>,  <31.107548, 19.998695, 28.232616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958109, 19.847618, 28.121063>,  <30.709045, 19.595821, 27.935143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958109, 19.847618, 28.121063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345595, -0.754156, 0.558402,
		0.702041, -0.187060, -0.687130,
		0.622658, 0.629489, 0.464801,
		31.144907, 20.036465, 28.260504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370321, 19.229828, 27.937220>,  <30.709045, 19.595821, 27.935143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370321, 19.229828, 27.937220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408915, 19.517033, 28.212944>,  <31.432070, 19.689356, 28.378380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408915, 19.517033, 28.212944>,  <31.370321, 19.229828, 27.937220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408915, 19.517033, 28.212944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549572, -0.615834, 0.564552,
		0.829856, 0.324357, -0.454016,
		0.096482, 0.718011, 0.689312,
		31.437859, 19.732435, 28.419737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014301, 19.176193, 28.134638>,  <31.370321, 19.229828, 27.937220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014301, 19.176193, 28.134638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857485, 19.409542, 28.419167>,  <31.763393, 19.549551, 28.589884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857485, 19.409542, 28.419167>,  <32.014301, 19.176193, 28.134638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857485, 19.409542, 28.419167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414465, -0.578292, 0.702706,
		0.821292, 0.570309, -0.015073,
		-0.392044, 0.583374, 0.711320,
		31.739872, 19.584555, 28.632563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537651, 19.349270, 28.577900>,  <32.014301, 19.176193, 28.134638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537651, 19.349270, 28.577900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.198906, 19.387611, 28.787140>,  <31.995659, 19.410616, 28.912683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.198906, 19.387611, 28.787140>,  <32.537651, 19.349270, 28.577900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198906, 19.387611, 28.787140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403635, -0.524599, 0.749583,
		0.346270, 0.845936, 0.405573,
		-0.846862, 0.095855, 0.523102,
		31.944847, 19.416368, 28.944071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491707, 19.722305, 29.294016>,  <32.537651, 19.349270, 28.577900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491707, 19.722305, 29.294016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245308, 19.407894, 29.273201>,  <32.097469, 19.219248, 29.260712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245308, 19.407894, 29.273201>,  <32.491707, 19.722305, 29.294016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245308, 19.407894, 29.273201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301205, -0.296059, 0.906435,
		-0.727887, 0.542690, 0.419127,
		-0.615999, -0.786026, -0.052037,
		32.060509, 19.172087, 29.257589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050320, 19.527208, 29.794956>,  <32.491707, 19.722305, 29.294016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050320, 19.527208, 29.794956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348930, 19.300667, 29.934635>,  <33.528099, 19.164742, 30.018442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348930, 19.300667, 29.934635>,  <33.050320, 19.527208, 29.794956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348930, 19.300667, 29.934635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308235, -0.759497, -0.572849,
		0.589649, 0.320014, -0.741556,
		0.746529, -0.566353, 0.349198,
		33.572887, 19.130760, 30.039394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987099, 18.822472, 30.186533>,  <33.050320, 19.527208, 29.794956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987099, 18.822472, 30.186533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346985, 18.912971, 30.335835>,  <33.562916, 18.967272, 30.425415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346985, 18.912971, 30.335835>,  <32.987099, 18.822472, 30.186533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346985, 18.912971, 30.335835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131934, 0.956132, -0.261542,
		-0.416056, 0.186069, 0.890099,
		0.899717, 0.226251, 0.373255,
		33.616901, 18.980846, 30.447811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863739, 19.385735, 30.652275>,  <32.987099, 18.822472, 30.186533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863739, 19.385735, 30.652275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251568, 19.406879, 30.556660>,  <33.484264, 19.419567, 30.499290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251568, 19.406879, 30.556660>,  <32.863739, 19.385735, 30.652275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251568, 19.406879, 30.556660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102377, 0.974485, -0.199745,
		0.222379, 0.218139, 0.950244,
		0.969570, 0.052864, -0.239037,
		33.542439, 19.422739, 30.484949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052113, 20.030087, 30.936384>,  <32.863739, 19.385735, 30.652275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052113, 20.030087, 30.936384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335434, 19.946457, 30.666691>,  <33.505428, 19.896278, 30.504875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335434, 19.946457, 30.666691>,  <33.052113, 20.030087, 30.936384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335434, 19.946457, 30.666691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001644, 0.954641, -0.297754,
		0.705904, 0.212009, 0.675834,
		0.708306, -0.209075, -0.674233,
		33.547924, 19.883734, 30.464420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504208, 20.606007, 31.043056>,  <33.052113, 20.030087, 30.936384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504208, 20.606007, 31.043056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562027, 20.444618, 30.681656>,  <33.596718, 20.347784, 30.464815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562027, 20.444618, 30.681656>,  <33.504208, 20.606007, 31.043056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562027, 20.444618, 30.681656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009258, 0.912499, -0.408973,
		0.989455, 0.067481, 0.128164,
		0.144547, -0.403473, -0.903502,
		33.605392, 20.323576, 30.410604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015289, 20.954567, 30.786959>,  <33.504208, 20.606007, 31.043056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015289, 20.954567, 30.786959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843754, 20.796703, 30.461914>,  <33.740833, 20.701984, 30.266888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843754, 20.796703, 30.461914>,  <34.015289, 20.954567, 30.786959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843754, 20.796703, 30.461914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085453, 0.877769, -0.471402,
		0.899330, -0.271596, -0.342698,
		-0.428840, -0.394661, -0.812612,
		33.715099, 20.678305, 30.218130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453644, 21.197538, 30.211742>,  <34.015289, 20.954567, 30.786959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453644, 21.197538, 30.211742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108841, 21.111652, 30.028076>,  <33.901958, 21.060120, 29.917875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108841, 21.111652, 30.028076>,  <34.453644, 21.197538, 30.211742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108841, 21.111652, 30.028076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142457, 0.766721, -0.625975,
		0.486461, -0.605009, -0.630333,
		-0.862010, -0.214717, -0.459167,
		33.850239, 21.047237, 29.890326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601467, 21.236488, 29.494284>,  <34.453644, 21.197538, 30.211742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601467, 21.236488, 29.494284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209240, 21.297649, 29.543461>,  <33.973904, 21.334347, 29.572968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209240, 21.297649, 29.543461>,  <34.601467, 21.236488, 29.494284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209240, 21.297649, 29.543461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012427, 0.673760, -0.738845,
		-0.195805, -0.722958, -0.662565,
		-0.980564, 0.152903, 0.122941,
		33.915070, 21.343521, 29.580343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461296, 21.711231, 28.943863>,  <34.601467, 21.236488, 29.494284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461296, 21.711231, 28.943863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109413, 21.677444, 29.131042>,  <33.898281, 21.657173, 29.243351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109413, 21.677444, 29.131042>,  <34.461296, 21.711231, 28.943863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109413, 21.677444, 29.131042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337411, 0.804305, -0.489129,
		-0.335060, -0.588183, -0.736054,
		-0.879709, -0.084466, 0.467950,
		33.845501, 21.652105, 29.271427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954235, 21.853134, 28.469389>,  <34.461296, 21.711231, 28.943863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954235, 21.853134, 28.469389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743652, 21.898823, 28.806385>,  <33.617302, 21.926235, 29.008583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743652, 21.898823, 28.806385>,  <33.954235, 21.853134, 28.469389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743652, 21.898823, 28.806385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472270, 0.784702, -0.401501,
		-0.706965, -0.609259, -0.359172,
		-0.526461, 0.114221, 0.842492,
		33.585712, 21.933088, 29.059132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246895, 21.720451, 28.289324>,  <33.954235, 21.853134, 28.469389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246895, 21.720451, 28.289324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.304478, 21.978737, 28.589279>,  <33.339027, 22.133707, 28.769253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.304478, 21.978737, 28.589279>,  <33.246895, 21.720451, 28.289324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304478, 21.978737, 28.589279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473256, 0.710429, -0.520884,
		-0.869083, -0.279904, 0.407858,
		0.143957, 0.645712, 0.749888,
		33.347664, 22.172451, 28.814245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688869, 22.266684, 28.242170>,  <33.246895, 21.720451, 28.289324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688869, 22.266684, 28.242170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931904, 22.448830, 28.502472>,  <33.077724, 22.558117, 28.658653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931904, 22.448830, 28.502472>,  <32.688869, 22.266684, 28.242170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931904, 22.448830, 28.502472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322011, 0.890198, -0.322267,
		-0.726051, -0.013746, 0.687504,
		0.607585, 0.455366, 0.650755,
		33.114178, 22.585440, 28.697699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243225, 22.634192, 28.580496>,  <32.688869, 22.266684, 28.242170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243225, 22.634192, 28.580496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598331, 22.812679, 28.625671>,  <32.811398, 22.919773, 28.652777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598331, 22.812679, 28.625671>,  <32.243225, 22.634192, 28.580496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598331, 22.812679, 28.625671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362538, 0.829037, -0.425752,
		-0.283611, 0.337024, 0.897764,
		0.887768, 0.446221, 0.112940,
		32.864662, 22.946547, 28.659554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071556, 23.356728, 28.797104>,  <32.243225, 22.634192, 28.580496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071556, 23.356728, 28.797104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442009, 23.371662, 28.646965>,  <32.664280, 23.380623, 28.556881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442009, 23.371662, 28.646965>,  <32.071556, 23.356728, 28.797104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442009, 23.371662, 28.646965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181210, 0.916777, -0.355925,
		0.330821, 0.397650, 0.855822,
		0.926132, 0.037336, -0.375348,
		32.719849, 23.382862, 28.534361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256088, 24.012512, 28.882366>,  <32.071556, 23.356728, 28.797104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256088, 24.012512, 28.882366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.505898, 23.887188, 28.596203>,  <32.655781, 23.811993, 28.424505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.505898, 23.887188, 28.596203>,  <32.256088, 24.012512, 28.882366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505898, 23.887188, 28.596203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232858, 0.799648, -0.553480,
		0.745487, 0.512248, 0.426440,
		0.624521, -0.313312, -0.715408,
		32.693253, 23.793194, 28.381580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720528, 24.548601, 28.749685>,  <32.256088, 24.012512, 28.882366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720528, 24.548601, 28.749685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694977, 24.323341, 28.420132>,  <32.679646, 24.188185, 28.222401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694977, 24.323341, 28.420132>,  <32.720528, 24.548601, 28.749685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694977, 24.323341, 28.420132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127819, 0.823386, -0.552900,
		0.989738, 0.069990, -0.124577,
		-0.063878, -0.563149, -0.823882,
		32.675812, 24.154396, 28.172966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148609, 25.016859, 28.208698>,  <32.720528, 24.548601, 28.749685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148609, 25.016859, 28.208698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912666, 24.758148, 28.015308>,  <32.771099, 24.602922, 27.899275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912666, 24.758148, 28.015308>,  <33.148609, 25.016859, 28.208698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912666, 24.758148, 28.015308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182131, 0.689857, -0.700660,
		0.786701, -0.325233, -0.524715,
		-0.589856, -0.646777, -0.483476,
		32.735710, 24.564116, 27.870266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460056, 25.024469, 27.481905>,  <33.148609, 25.016859, 28.208698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460056, 25.024469, 27.481905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087223, 24.880676, 27.464016>,  <32.863525, 24.794401, 27.453283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087223, 24.880676, 27.464016>,  <33.460056, 25.024469, 27.481905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087223, 24.880676, 27.464016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200872, 0.615629, -0.762005,
		0.301458, -0.701266, -0.646025,
		-0.932080, -0.359481, -0.044721,
		32.807598, 24.772833, 27.450600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389599, 24.865219, 26.717901>,  <33.460056, 25.024469, 27.481905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389599, 24.865219, 26.717901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.023994, 24.879887, 26.879517>,  <32.804634, 24.888687, 26.976486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.023994, 24.879887, 26.879517>,  <33.389599, 24.865219, 26.717901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023994, 24.879887, 26.879517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321649, 0.541448, -0.776772,
		-0.247248, -0.839934, -0.483093,
		-0.914008, 0.036669, 0.404036,
		32.749794, 24.890888, 27.000727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911919, 24.687799, 26.205301>,  <33.389599, 24.865219, 26.717901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911919, 24.687799, 26.205301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718861, 24.906113, 26.479286>,  <32.603024, 25.037100, 26.643677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718861, 24.906113, 26.479286>,  <32.911919, 24.687799, 26.205301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718861, 24.906113, 26.479286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377956, 0.575713, -0.725054,
		-0.790064, -0.608831, -0.071584,
		-0.482648, 0.545783, 0.684962,
		32.574066, 25.069847, 26.684774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289951, 24.784521, 25.928257>,  <32.911919, 24.687799, 26.205301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289951, 24.784521, 25.928257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375809, 25.090336, 26.171375>,  <32.427322, 25.273825, 26.317245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375809, 25.090336, 26.171375>,  <32.289951, 24.784521, 25.928257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375809, 25.090336, 26.171375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335161, 0.642167, -0.689412,
		-0.917385, -0.055732, 0.394079,
		0.214642, 0.764536, 0.607794,
		32.440201, 25.319696, 26.353714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.976406, 40.068184, 15.498518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.371704, 40.019611, 15.535678>,  <22.608883, 39.990467, 15.557974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.371704, 40.019611, 15.535678>,  <21.976406, 40.068184, 15.498518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371704, 40.019611, 15.535678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141443, -0.495428, 0.857056,
		-0.058049, -0.860119, -0.506779,
		0.988243, -0.121431, 0.092899,
		22.668177, 39.983181, 15.563547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.162077, 39.339783, 15.659901>,  <21.976406, 40.068184, 15.498518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.162077, 39.339783, 15.659901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.441456, 39.578022, 15.818612>,  <22.609083, 39.720966, 15.913839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.441456, 39.578022, 15.818612>,  <22.162077, 39.339783, 15.659901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.441456, 39.578022, 15.818612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077807, -0.487939, 0.869403,
		0.711422, -0.638102, -0.294456,
		0.698445, 0.595601, 0.396779,
		22.650990, 39.756702, 15.937646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684237, 38.860180, 15.858259>,  <22.162077, 39.339783, 15.659901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684237, 38.860180, 15.858259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.741823, 39.189983, 16.077152>,  <22.776375, 39.387863, 16.208488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.741823, 39.189983, 16.077152>,  <22.684237, 38.860180, 15.858259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.741823, 39.189983, 16.077152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199653, -0.565823, 0.799989,
		0.969233, -0.005915, -0.246075,
		0.143967, 0.824505, 0.547234,
		22.785013, 39.437336, 16.241322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285831, 38.716389, 16.344410>,  <22.684237, 38.860180, 15.858259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285831, 38.716389, 16.344410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.123228, 39.045704, 16.502876>,  <23.025667, 39.243294, 16.597956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.123228, 39.045704, 16.502876>,  <23.285831, 38.716389, 16.344410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123228, 39.045704, 16.502876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099535, -0.391121, 0.914941,
		0.908210, 0.411362, 0.077047,
		-0.406506, 0.823290, 0.396165,
		23.001276, 39.292690, 16.621725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725565, 38.874603, 16.826006>,  <23.285831, 38.716389, 16.344410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725565, 38.874603, 16.826006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.373831, 39.037689, 16.924423>,  <23.162790, 39.135540, 16.983475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.373831, 39.037689, 16.924423>,  <23.725565, 38.874603, 16.826006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373831, 39.037689, 16.924423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032158, -0.464660, 0.884905,
		0.475116, 0.786040, 0.395481,
		-0.879335, 0.407715, 0.246045,
		23.110031, 39.160004, 16.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.836035, 39.073139, 17.488058>,  <23.725565, 38.874603, 16.826006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.836035, 39.073139, 17.488058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.437765, 39.101818, 17.464420>,  <23.198803, 39.119026, 17.450237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.437765, 39.101818, 17.464420>,  <23.836035, 39.073139, 17.488058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.437765, 39.101818, 17.464420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078062, -0.300612, 0.950547,
		0.050387, 0.951048, 0.304908,
		-0.995674, 0.071696, -0.059094,
		23.139063, 39.123325, 17.446692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568867, 39.288891, 18.082037>,  <23.836035, 39.073139, 17.488058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568867, 39.288891, 18.082037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.243704, 39.122646, 17.918842>,  <23.048607, 39.022900, 17.820925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.243704, 39.122646, 17.918842>,  <23.568867, 39.288891, 18.082037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.243704, 39.122646, 17.918842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338994, -0.231973, 0.911741,
		-0.473570, 0.879464, 0.047683,
		-0.812905, -0.415609, -0.407988,
		22.999832, 38.997963, 17.796446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149443, 39.388618, 18.656506>,  <23.568867, 39.288891, 18.082037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149443, 39.388618, 18.656506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.959600, 39.139309, 18.407898>,  <22.845695, 38.989723, 18.258734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.959600, 39.139309, 18.407898>,  <23.149443, 39.388618, 18.656506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.959600, 39.139309, 18.407898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377920, -0.493418, 0.783400,
		-0.794936, 0.606691, -0.001366,
		-0.474608, -0.623269, -0.621517,
		22.817219, 38.952328, 18.221443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507589, 39.282688, 18.980707>,  <23.149443, 39.388618, 18.656506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507589, 39.282688, 18.980707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542873, 38.957443, 18.750553>,  <22.564043, 38.762295, 18.612461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542873, 38.957443, 18.750553>,  <22.507589, 39.282688, 18.980707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.542873, 38.957443, 18.750553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512129, -0.532466, 0.673946,
		-0.854367, 0.235223, -0.463387,
		0.088210, -0.813111, -0.575386,
		22.569336, 38.713509, 18.577938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810049, 39.039371, 18.893568>,  <22.507589, 39.282688, 18.980707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810049, 39.039371, 18.893568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059196, 38.733288, 18.828468>,  <22.208685, 38.549637, 18.789408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059196, 38.733288, 18.828468>,  <21.810049, 39.039371, 18.893568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059196, 38.733288, 18.828468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516427, -0.558436, 0.649194,
		-0.587655, -0.320314, -0.743008,
		0.622868, -0.765211, -0.162749,
		22.246058, 38.503723, 18.779644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402086, 38.496796, 18.884127>,  <21.810049, 39.039371, 18.893568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402086, 38.496796, 18.884127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.761686, 38.328983, 18.934387>,  <21.977448, 38.228294, 18.964544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.761686, 38.328983, 18.934387>,  <21.402086, 38.496796, 18.884127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761686, 38.328983, 18.934387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348662, -0.512014, 0.785033,
		-0.265011, -0.749556, -0.606576,
		0.899002, -0.419532, 0.125653,
		22.031387, 38.203125, 18.972082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.300432, 37.798763, 18.909826>,  <21.402086, 38.496796, 18.884127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.300432, 37.798763, 18.909826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.646557, 37.875824, 19.094921>,  <21.854231, 37.922058, 19.205978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.646557, 37.875824, 19.094921>,  <21.300432, 37.798763, 18.909826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646557, 37.875824, 19.094921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274120, -0.591015, 0.758656,
		0.419637, -0.783318, -0.458603,
		0.865311, 0.192648, 0.462735,
		21.906151, 37.933617, 19.233742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.445885, 37.124931, 19.056227>,  <21.300432, 37.798763, 18.909826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.445885, 37.124931, 19.056227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641294, 37.354061, 19.319504>,  <21.758541, 37.491539, 19.477470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641294, 37.354061, 19.319504>,  <21.445885, 37.124931, 19.056227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641294, 37.354061, 19.319504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283736, -0.609044, 0.740648,
		0.825128, -0.548578, -0.135004,
		0.488526, 0.572824, 0.658190,
		21.787853, 37.525909, 19.516960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.887964, 36.700226, 19.582767>,  <21.445885, 37.124931, 19.056227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.887964, 36.700226, 19.582767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.832977, 37.040016, 19.786530>,  <21.799984, 37.243889, 19.908787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.832977, 37.040016, 19.786530>,  <21.887964, 36.700226, 19.582767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.832977, 37.040016, 19.786530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323158, -0.524611, 0.787624,
		0.936307, -0.056344, 0.346633,
		-0.137470, 0.849475, 0.509405,
		21.791737, 37.294857, 19.939352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.096775, 36.585926, 20.191984>,  <21.887964, 36.700226, 19.582767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.096775, 36.585926, 20.191984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.923872, 36.934372, 20.285202>,  <21.820129, 37.143440, 20.341133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.923872, 36.934372, 20.285202>,  <22.096775, 36.585926, 20.191984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.923872, 36.934372, 20.285202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153428, -0.325718, 0.932935,
		0.888601, 0.367515, 0.274448,
		-0.432260, 0.871115, 0.233047,
		21.794193, 37.195705, 20.355116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.377850, 36.836540, 20.673429>,  <22.096775, 36.585926, 20.191984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.377850, 36.836540, 20.673429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.017006, 37.001026, 20.725742>,  <21.800501, 37.099716, 20.757130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.017006, 37.001026, 20.725742>,  <22.377850, 36.836540, 20.673429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.017006, 37.001026, 20.725742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035049, -0.371901, 0.927611,
		0.430084, 0.832221, 0.349907,
		-0.902108, 0.411215, 0.130780,
		21.746374, 37.124390, 20.764977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.423889, 37.056709, 21.321823>,  <22.377850, 36.836540, 20.673429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.423889, 37.056709, 21.321823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.033802, 37.043224, 21.234360>,  <21.799749, 37.035133, 21.181881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.033802, 37.043224, 21.234360>,  <22.423889, 37.056709, 21.321823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033802, 37.043224, 21.234360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189501, -0.382789, 0.904191,
		-0.114187, 0.923221, 0.366913,
		-0.975218, -0.033716, -0.218661,
		21.741236, 37.033108, 21.168762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.047703, 37.307259, 21.970106>,  <22.423889, 37.056709, 21.321823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.047703, 37.307259, 21.970106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.808386, 37.082474, 21.741634>,  <21.664795, 36.947601, 21.604551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.808386, 37.082474, 21.741634>,  <22.047703, 37.307259, 21.970106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808386, 37.082474, 21.741634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216922, -0.572620, 0.790602,
		-0.771357, 0.596911, 0.220691,
		-0.598292, -0.561964, -0.571178,
		21.628899, 36.913883, 21.570282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537994, 37.162205, 22.451313>,  <22.047703, 37.307259, 21.970106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537994, 37.162205, 22.451313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.509062, 36.898308, 22.152111>,  <21.491703, 36.739971, 21.972589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.509062, 36.898308, 22.152111>,  <21.537994, 37.162205, 22.451313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.509062, 36.898308, 22.152111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060653, -0.745670, 0.663549,
		-0.995535, 0.093363, 0.013920,
		-0.072331, -0.659742, -0.748003,
		21.487362, 36.700386, 21.927710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057079, 36.732449, 22.725016>,  <21.537994, 37.162205, 22.451313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057079, 36.732449, 22.725016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222328, 36.528660, 22.423084>,  <21.321478, 36.406387, 22.241924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222328, 36.528660, 22.423084>,  <21.057079, 36.732449, 22.725016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222328, 36.528660, 22.423084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244314, -0.860487, 0.447072,
		-0.877293, -0.000279, -0.479956,
		0.413120, -0.509472, -0.754831,
		21.346264, 36.375816, 22.196634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548700, 36.330444, 22.337595>,  <21.057079, 36.732449, 22.725016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548700, 36.330444, 22.337595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.911169, 36.162746, 22.315365>,  <21.128651, 36.062126, 22.302027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.911169, 36.162746, 22.315365>,  <20.548700, 36.330444, 22.337595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.911169, 36.162746, 22.315365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370574, -0.850464, 0.373345,
		-0.203790, -0.317719, -0.926026,
		0.906170, -0.419245, -0.055577,
		21.183020, 36.036972, 22.298691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894373, 36.711845, 22.076298>,  <20.548700, 36.330444, 22.337595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894373, 36.711845, 22.076298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.839979, 37.106098, 22.036228>,  <19.807343, 37.342651, 22.012186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.839979, 37.106098, 22.036228>,  <19.894373, 36.711845, 22.076298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839979, 37.106098, 22.036228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512390, -0.156512, -0.844370,
		-0.847917, -0.063492, 0.526312,
		-0.135985, 0.985633, -0.100176,
		19.799183, 37.401787, 22.006176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192240, 36.708069, 21.902964>,  <19.894373, 36.711845, 22.076298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192240, 36.708069, 21.902964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.316147, 37.065380, 21.772671>,  <19.390491, 37.279766, 21.694496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.316147, 37.065380, 21.772671>,  <19.192240, 36.708069, 21.902964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316147, 37.065380, 21.772671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624126, -0.067413, -0.778410,
		-0.717294, 0.444423, 0.536635,
		0.309767, 0.893277, -0.325731,
		19.409077, 37.333363, 21.674952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.604490, 36.922356, 21.568703>,  <19.192240, 36.708069, 21.902964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.604490, 36.922356, 21.568703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.869652, 37.197327, 21.450047>,  <19.028749, 37.362309, 21.378853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.869652, 37.197327, 21.450047>,  <18.604490, 36.922356, 21.568703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869652, 37.197327, 21.450047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479007, 0.084901, -0.873696,
		-0.575419, 0.721271, 0.385565,
		0.662906, 0.687430, -0.296640,
		19.068523, 37.403557, 21.361053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.304214, 37.616634, 21.407990>,  <18.604490, 36.922356, 21.568703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.304214, 37.616634, 21.407990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.649984, 37.586514, 21.209152>,  <18.857447, 37.568439, 21.089849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.649984, 37.586514, 21.209152>,  <18.304214, 37.616634, 21.407990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649984, 37.586514, 21.209152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497236, 0.018157, -0.867426,
		0.074345, 0.996996, -0.021748,
		0.864424, -0.075302, -0.497092,
		18.909311, 37.563923, 21.060024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214340, 38.147789, 20.893429>,  <18.304214, 37.616634, 21.407990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214340, 38.147789, 20.893429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.507656, 37.901779, 20.777477>,  <18.683645, 37.754173, 20.707907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.507656, 37.901779, 20.777477>,  <18.214340, 38.147789, 20.893429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.507656, 37.901779, 20.777477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353821, 0.018891, -0.935122,
		0.580602, 0.788280, -0.203757,
		0.733289, -0.615027, -0.289878,
		18.727642, 37.717270, 20.690514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365189, 38.420048, 20.333742>,  <18.214340, 38.147789, 20.893429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365189, 38.420048, 20.333742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.515499, 38.052620, 20.284702>,  <18.605686, 37.832165, 20.255278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.515499, 38.052620, 20.284702>,  <18.365189, 38.420048, 20.333742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515499, 38.052620, 20.284702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354166, -0.020096, -0.934966,
		0.856364, 0.394759, -0.332876,
		0.375776, -0.918565, -0.122601,
		18.628231, 37.777050, 20.247923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703779, 38.423195, 19.634661>,  <18.365189, 38.420048, 20.333742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703779, 38.423195, 19.634661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.616283, 38.042500, 19.720776>,  <18.563786, 37.814083, 19.772444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.616283, 38.042500, 19.720776>,  <18.703779, 38.423195, 19.634661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616283, 38.042500, 19.720776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441961, -0.100069, -0.891435,
		0.869956, -0.290139, -0.398743,
		-0.218738, -0.951738, 0.215286,
		18.550661, 37.756977, 19.785362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062906, 37.971107, 19.199295>,  <18.703779, 38.423195, 19.634661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062906, 37.971107, 19.199295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.780941, 37.702602, 19.290947>,  <18.611763, 37.541500, 19.345938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.780941, 37.702602, 19.290947>,  <19.062906, 37.971107, 19.199295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.780941, 37.702602, 19.290947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127949, -0.197402, -0.971937,
		0.697660, -0.714447, 0.053263,
		-0.704912, -0.671266, 0.229132,
		18.569468, 37.501221, 19.359686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.317177, 37.404655, 18.900539>,  <19.062906, 37.971107, 19.199295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.317177, 37.404655, 18.900539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.925032, 37.340527, 18.946472>,  <18.689745, 37.302052, 18.974031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.925032, 37.340527, 18.946472>,  <19.317177, 37.404655, 18.900539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925032, 37.340527, 18.946472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038482, -0.415575, -0.908745,
		0.193411, -0.895318, 0.401245,
		-0.980363, -0.160320, 0.114830,
		18.630922, 37.292431, 18.980921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279860, 36.830811, 18.558184>,  <19.317177, 37.404655, 18.900539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279860, 36.830811, 18.558184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.908142, 36.975445, 18.588303>,  <18.685112, 37.062225, 18.606373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.908142, 36.975445, 18.588303>,  <19.279860, 36.830811, 18.558184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908142, 36.975445, 18.588303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163371, -0.219586, -0.961817,
		-0.331246, -0.906111, 0.263133,
		-0.929293, 0.361587, 0.075295,
		18.629354, 37.083920, 18.610891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866894, 36.297516, 18.327545>,  <19.279860, 36.830811, 18.558184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866894, 36.297516, 18.327545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.678019, 36.647858, 18.287724>,  <18.564693, 36.858063, 18.263830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.678019, 36.647858, 18.287724>,  <18.866894, 36.297516, 18.327545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678019, 36.647858, 18.287724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234956, -0.233906, -0.943442,
		-0.849609, -0.422089, 0.316236,
		-0.472186, 0.875859, -0.099556,
		18.536362, 36.910614, 18.257856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350765, 36.093609, 17.949627>,  <18.866894, 36.297516, 18.327545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350765, 36.093609, 17.949627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.331728, 36.488926, 17.891644>,  <18.320307, 36.726116, 17.856853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.331728, 36.488926, 17.891644>,  <18.350765, 36.093609, 17.949627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331728, 36.488926, 17.891644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092416, -0.148855, -0.984531,
		-0.994582, -0.033459, 0.098418,
		-0.047592, 0.988293, -0.144956,
		18.317450, 36.785416, 17.848156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798603, 36.215111, 17.548000>,  <18.350765, 36.093609, 17.949627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798603, 36.215111, 17.548000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.028742, 36.537399, 17.491734>,  <18.166824, 36.730774, 17.457973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.028742, 36.537399, 17.491734>,  <17.798603, 36.215111, 17.548000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028742, 36.537399, 17.491734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011853, -0.180179, -0.983562,
		-0.817823, 0.564223, -0.113216,
		0.575348, 0.805722, -0.140667,
		18.201345, 36.779118, 17.449533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565317, 36.593464, 16.924055>,  <17.798603, 36.215111, 17.548000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565317, 36.593464, 16.924055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.935453, 36.729191, 16.991703>,  <18.157536, 36.810627, 17.032291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.935453, 36.729191, 16.991703>,  <17.565317, 36.593464, 16.924055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935453, 36.729191, 16.991703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235602, -0.165160, -0.957713,
		-0.297040, 0.926058, -0.232775,
		0.925343, 0.339321, 0.169122,
		18.213057, 36.830986, 17.042440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705574, 36.998138, 16.233597>,  <17.565317, 36.593464, 16.924055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.705574, 36.998138, 16.233597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.050634, 36.896935, 16.408787>,  <18.257669, 36.836212, 16.513901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.050634, 36.896935, 16.408787>,  <17.705574, 36.998138, 16.233597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050634, 36.896935, 16.408787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461812, 0.040788, -0.886039,
		0.206316, 0.966603, 0.152030,
		0.862649, -0.253014, 0.437974,
		18.309429, 36.821030, 16.540178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156813, 37.542721, 16.136507>,  <17.705574, 36.998138, 16.233597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156813, 37.542721, 16.136507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.420755, 37.259121, 16.236031>,  <18.579121, 37.088959, 16.295744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.420755, 37.259121, 16.236031>,  <18.156813, 37.542721, 16.136507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420755, 37.259121, 16.236031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580797, 0.271182, -0.767552,
		0.476725, 0.650979, 0.590728,
		0.659855, -0.709004, 0.248808,
		18.618711, 37.046421, 16.310673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800392, 37.777752, 15.839840>,  <18.156813, 37.542721, 16.136507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800392, 37.777752, 15.839840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.867182, 37.389812, 15.910850>,  <18.907255, 37.157047, 15.953456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.867182, 37.389812, 15.910850>,  <18.800392, 37.777752, 15.839840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867182, 37.389812, 15.910850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647168, -0.028028, -0.761832,
		0.743836, 0.242096, 0.622974,
		0.166976, -0.969848, 0.177525,
		18.917274, 37.098858, 15.964107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491161, 37.669559, 15.843429>,  <18.800392, 37.777752, 15.839840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.491161, 37.669559, 15.843429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.330732, 37.322170, 15.726882>,  <19.234474, 37.113735, 15.656954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.330732, 37.322170, 15.726882>,  <19.491161, 37.669559, 15.843429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330732, 37.322170, 15.726882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658751, -0.052422, -0.750533,
		0.636543, -0.492956, 0.593133,
		-0.401073, -0.868473, -0.291366,
		19.210411, 37.061626, 15.639472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128414, 37.158863, 15.873637>,  <19.491161, 37.669559, 15.843429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128414, 37.158863, 15.873637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.839535, 37.016972, 15.636117>,  <19.666208, 36.931835, 15.493605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.839535, 37.016972, 15.636117>,  <20.128414, 37.158863, 15.873637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839535, 37.016972, 15.636117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672520, -0.159414, -0.722706,
		0.161705, -0.921279, 0.353690,
		-0.722197, -0.354728, -0.593801,
		19.622875, 36.910553, 15.457976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471491, 36.789181, 15.439968>,  <20.128414, 37.158863, 15.873637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471491, 36.789181, 15.439968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.122272, 36.774975, 15.245429>,  <19.912743, 36.766453, 15.128706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.122272, 36.774975, 15.245429>,  <20.471491, 36.789181, 15.439968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122272, 36.774975, 15.245429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470195, -0.325705, -0.820264,
		-0.129272, -0.944804, 0.301055,
		-0.873044, -0.035517, -0.486346,
		19.860359, 36.764320, 15.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410633, 36.021626, 15.202716>,  <20.471491, 36.789181, 15.439968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410633, 36.021626, 15.202716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.198334, 36.274220, 14.976605>,  <20.070953, 36.425774, 14.840940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.198334, 36.274220, 14.976605>,  <20.410633, 36.021626, 15.202716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198334, 36.274220, 14.976605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447323, -0.357784, -0.819691,
		-0.719866, -0.687911, -0.092582,
		-0.530749, 0.631482, -0.565275,
		20.039108, 36.463665, 14.807023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.614948, 27.615961, 23.450878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876108, 27.841862, 23.652779>,  <28.032804, 27.977402, 23.773920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876108, 27.841862, 23.652779>,  <27.614948, 27.615961, 23.450878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876108, 27.841862, 23.652779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116094, 0.733128, -0.670108,
		-0.748495, 0.378915, 0.544223,
		0.652899, 0.564753, 0.504753,
		28.071978, 28.011288, 23.804205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339918, 28.314732, 23.661674>,  <27.614948, 27.615961, 23.450878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339918, 28.314732, 23.661674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731968, 28.372562, 23.607330>,  <27.967197, 28.407261, 23.574724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731968, 28.372562, 23.607330>,  <27.339918, 28.314732, 23.661674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731968, 28.372562, 23.607330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196190, 0.808078, -0.555446,
		0.029480, 0.571059, 0.820380,
		0.980123, 0.144576, -0.135859,
		28.026005, 28.415936, 23.566572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396622, 28.996078, 23.589149>,  <27.339918, 28.314732, 23.661674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396622, 28.996078, 23.589149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768372, 28.908501, 23.470268>,  <27.991421, 28.855955, 23.398939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768372, 28.908501, 23.470268>,  <27.396622, 28.996078, 23.589149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768372, 28.908501, 23.470268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044056, 0.865152, -0.499571,
		0.366505, 0.451194, 0.813694,
		0.929372, -0.218944, -0.297204,
		28.047184, 28.842817, 23.381107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778332, 29.530632, 23.727781>,  <27.396622, 28.996078, 23.589149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778332, 29.530632, 23.727781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982088, 29.336456, 23.443565>,  <28.104342, 29.219952, 23.273035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982088, 29.336456, 23.443565>,  <27.778332, 29.530632, 23.727781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982088, 29.336456, 23.443565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019430, 0.831976, -0.554472,
		0.860315, 0.268637, 0.433234,
		0.509392, -0.485439, -0.710542,
		28.134905, 29.190825, 23.230402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250450, 30.010298, 23.486990>,  <27.778332, 29.530632, 23.727781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250450, 30.010298, 23.486990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223711, 29.739735, 23.193596>,  <28.207668, 29.577396, 23.017559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223711, 29.739735, 23.193596>,  <28.250450, 30.010298, 23.486990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223711, 29.739735, 23.193596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042966, 0.736400, -0.675181,
		0.996838, -0.013619, -0.078289,
		-0.066847, -0.676410, -0.733486,
		28.203657, 29.536812, 22.973551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821499, 30.131512, 23.018629>,  <28.250450, 30.010298, 23.486990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821499, 30.131512, 23.018629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517719, 29.941730, 22.840580>,  <28.335451, 29.827862, 22.733749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517719, 29.941730, 22.840580>,  <28.821499, 30.131512, 23.018629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517719, 29.941730, 22.840580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070061, 0.739873, -0.669088,
		0.646786, -0.476951, -0.595135,
		-0.759446, -0.474453, -0.445124,
		28.289885, 29.799395, 22.707043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839985, 30.286406, 22.281532>,  <28.821499, 30.131512, 23.018629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839985, 30.286406, 22.281532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472183, 30.133514, 22.318233>,  <28.251503, 30.041780, 22.340254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472183, 30.133514, 22.318233>,  <28.839985, 30.286406, 22.281532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472183, 30.133514, 22.318233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333366, 0.634589, -0.697255,
		0.208284, -0.671714, -0.710927,
		-0.919502, -0.382226, 0.091752,
		28.196333, 30.018847, 22.345758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701883, 30.008127, 21.602476>,  <28.839985, 30.286406, 22.281532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701883, 30.008127, 21.602476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357464, 30.063652, 21.798161>,  <28.150812, 30.096966, 21.915571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357464, 30.063652, 21.798161>,  <28.701883, 30.008127, 21.602476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357464, 30.063652, 21.798161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390826, 0.434857, -0.811267,
		-0.325351, -0.889736, -0.320181,
		-0.861047, 0.138811, 0.489214,
		28.099150, 30.105295, 21.944925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111437, 29.708868, 21.159874>,  <28.701883, 30.008127, 21.602476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111437, 29.708868, 21.159874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904173, 29.941418, 21.410797>,  <27.779816, 30.080948, 21.561350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904173, 29.941418, 21.410797>,  <28.111437, 29.708868, 21.159874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904173, 29.941418, 21.410797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227485, 0.613348, -0.756343,
		-0.824477, -0.534608, -0.185557,
		-0.518158, 0.581377, 0.627307,
		27.748726, 30.115831, 21.598989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453838, 29.806549, 20.939108>,  <28.111437, 29.708868, 21.159874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453838, 29.806549, 20.939108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502905, 30.119530, 21.183311>,  <27.532345, 30.307318, 21.329834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502905, 30.119530, 21.183311>,  <27.453838, 29.806549, 20.939108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502905, 30.119530, 21.183311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387083, 0.604158, -0.696534,
		-0.913849, -0.150876, 0.376984,
		0.122667, 0.782451, 0.610511,
		27.539705, 30.354265, 21.366465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902271, 30.180384, 20.878902>,  <27.453838, 29.806549, 20.939108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902271, 30.180384, 20.878902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155083, 30.449524, 21.032688>,  <27.306770, 30.611008, 21.124960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155083, 30.449524, 21.032688>,  <26.902271, 30.180384, 20.878902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155083, 30.449524, 21.032688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330256, 0.682675, -0.651832,
		-0.701049, 0.285005, 0.653683,
		0.632029, 0.672849, 0.384464,
		27.344692, 30.651379, 21.148027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584240, 30.859833, 20.912546>,  <26.902271, 30.180384, 20.878902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584240, 30.859833, 20.912546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979673, 30.909138, 20.877888>,  <27.216934, 30.938721, 20.857094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979673, 30.909138, 20.877888>,  <26.584240, 30.859833, 20.912546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979673, 30.909138, 20.877888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149224, 0.721611, -0.676025,
		-0.020805, 0.681237, 0.731767,
		0.988585, 0.123262, -0.086644,
		27.276249, 30.946115, 20.851894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810593, 31.593803, 21.070234>,  <26.584240, 30.859833, 20.912546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810593, 31.593803, 21.070234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048136, 31.425938, 20.795654>,  <27.190662, 31.325218, 20.630905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048136, 31.425938, 20.795654>,  <26.810593, 31.593803, 21.070234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048136, 31.425938, 20.795654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249249, 0.715258, -0.652902,
		0.764988, 0.558829, 0.320162,
		0.593858, -0.419662, -0.686452,
		27.226294, 31.300039, 20.589718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629559, 31.676001, 21.864397>,  <26.810593, 31.593803, 21.070234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629559, 31.676001, 21.864397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711626, 31.289101, 21.924175>,  <26.760866, 31.056961, 21.960043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711626, 31.289101, 21.924175>,  <26.629559, 31.676001, 21.864397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711626, 31.289101, 21.924175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553008, 0.011418, 0.833097,
		-0.807519, -0.253571, -0.532554,
		0.205169, -0.967249, 0.149447,
		26.773176, 30.998926, 21.969009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180231, 32.206535, 22.112152>,  <26.629559, 31.676001, 21.864397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180231, 32.206535, 22.112152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861677, 32.441036, 22.171589>,  <25.670546, 32.581738, 22.207251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861677, 32.441036, 22.171589>,  <26.180231, 32.206535, 22.112152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861677, 32.441036, 22.171589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100845, -0.370972, 0.923152,
		0.596323, 0.720200, 0.354557,
		-0.796385, 0.586252, 0.148590,
		25.622761, 32.616913, 22.216166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337223, 32.742943, 22.472059>,  <26.180231, 32.206535, 22.112152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337223, 32.742943, 22.472059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943932, 32.689095, 22.521282>,  <25.707956, 32.656788, 22.550816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943932, 32.689095, 22.521282>,  <26.337223, 32.742943, 22.472059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943932, 32.689095, 22.521282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157118, -0.282512, 0.946309,
		-0.092626, 0.949771, 0.298924,
		-0.983227, -0.134619, 0.123058,
		25.648964, 32.648708, 22.558199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145201, 33.182201, 23.100170>,  <26.337223, 32.742943, 22.472059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145201, 33.182201, 23.100170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875950, 32.900352, 23.010365>,  <25.714399, 32.731243, 22.956480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875950, 32.900352, 23.010365>,  <26.145201, 33.182201, 23.100170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875950, 32.900352, 23.010365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046437, -0.343267, 0.938089,
		-0.738068, 0.621027, 0.263782,
		-0.673127, -0.704623, -0.224516,
		25.674011, 32.688965, 22.943010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720289, 33.156837, 23.629503>,  <26.145201, 33.182201, 23.100170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720289, 33.156837, 23.629503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631132, 32.802139, 23.467518>,  <25.577639, 32.589321, 23.370327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631132, 32.802139, 23.467518>,  <25.720289, 33.156837, 23.629503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631132, 32.802139, 23.467518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195615, -0.366282, 0.909710,
		-0.955015, 0.281984, -0.091820,
		-0.222892, -0.886748, -0.404965,
		25.564264, 32.536114, 23.346029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182394, 32.885349, 24.039312>,  <25.720289, 33.156837, 23.629503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182394, 32.885349, 24.039312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354143, 32.576500, 23.851925>,  <25.457193, 32.391190, 23.739492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354143, 32.576500, 23.851925>,  <25.182394, 32.885349, 24.039312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354143, 32.576500, 23.851925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086160, -0.481333, 0.872293,
		-0.899008, -0.414902, -0.140146,
		0.429373, -0.772124, -0.468470,
		25.482956, 32.344864, 23.711384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868624, 32.259789, 24.311819>,  <25.182394, 32.885349, 24.039312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868624, 32.259789, 24.311819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190493, 32.095913, 24.139931>,  <25.383614, 31.997587, 24.036798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190493, 32.095913, 24.139931>,  <24.868624, 32.259789, 24.311819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190493, 32.095913, 24.139931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011899, -0.734758, 0.678225,
		-0.593600, -0.540635, -0.596115,
		0.804672, -0.409687, -0.429720,
		25.431894, 31.973007, 24.011015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698524, 31.534143, 24.278488>,  <24.868624, 32.259789, 24.311819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698524, 31.534143, 24.278488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094360, 31.558907, 24.226513>,  <25.331861, 31.573765, 24.195328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094360, 31.558907, 24.226513>,  <24.698524, 31.534143, 24.278488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094360, 31.558907, 24.226513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130887, -0.762613, 0.633475,
		-0.059878, -0.643886, -0.762775,
		0.989587, 0.061907, -0.129940,
		25.391237, 31.577478, 24.187531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964384, 30.892075, 24.241339>,  <24.698524, 31.534143, 24.278488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964384, 30.892075, 24.241339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288174, 31.100269, 24.350037>,  <25.482449, 31.225185, 24.415255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288174, 31.100269, 24.350037>,  <24.964384, 30.892075, 24.241339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288174, 31.100269, 24.350037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174262, -0.654927, 0.735325,
		0.560698, -0.547873, -0.620848,
		0.809475, 0.520486, 0.271743,
		25.531015, 31.256414, 24.431559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425432, 30.355757, 24.170813>,  <24.964384, 30.892075, 24.241339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425432, 30.355757, 24.170813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574173, 30.649818, 24.397537>,  <25.663418, 30.826256, 24.533571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574173, 30.649818, 24.397537>,  <25.425432, 30.355757, 24.170813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574173, 30.649818, 24.397537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103190, -0.639548, 0.761794,
		0.922539, -0.224786, -0.313678,
		0.371852, 0.735153, 0.566812,
		25.685728, 30.870365, 24.567581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010368, 30.081030, 24.316456>,  <25.425432, 30.355757, 24.170813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010368, 30.081030, 24.316456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924307, 30.354958, 24.594948>,  <25.872669, 30.519314, 24.762043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924307, 30.354958, 24.594948>,  <26.010368, 30.081030, 24.316456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924307, 30.354958, 24.594948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281208, -0.639284, 0.715708,
		0.935217, 0.349772, -0.055032,
		-0.215154, 0.684818, 0.696228,
		25.859760, 30.560404, 24.803816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625658, 30.306997, 24.662323>,  <26.010368, 30.081030, 24.316456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625658, 30.306997, 24.662323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303806, 30.373814, 24.890244>,  <26.110695, 30.413902, 25.026997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303806, 30.373814, 24.890244>,  <26.625658, 30.306997, 24.662323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303806, 30.373814, 24.890244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461419, -0.428080, 0.777072,
		0.373721, 0.888170, 0.267370,
		-0.804627, 0.167039, 0.569801,
		26.062418, 30.423925, 25.061184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976938, 30.352381, 25.312225>,  <26.625658, 30.306997, 24.662323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976938, 30.352381, 25.312225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601065, 30.327194, 25.446705>,  <26.375540, 30.312082, 25.527393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601065, 30.327194, 25.446705>,  <26.976938, 30.352381, 25.312225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601065, 30.327194, 25.446705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326599, -0.457212, 0.827219,
		0.101628, 0.887126, 0.450199,
		-0.939683, -0.062966, 0.336200,
		26.319160, 30.308304, 25.547565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905870, 30.623711, 26.069443>,  <26.976938, 30.352381, 25.312225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905870, 30.623711, 26.069443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617468, 30.359467, 25.985783>,  <26.444426, 30.200920, 25.935587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617468, 30.359467, 25.985783>,  <26.905870, 30.623711, 26.069443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617468, 30.359467, 25.985783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280009, -0.553858, 0.784115,
		-0.633834, 0.506788, 0.584312,
		-0.721006, -0.660611, -0.209149,
		26.401167, 30.161283, 25.923038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755180, 30.368158, 26.741827>,  <26.905870, 30.623711, 26.069443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755180, 30.368158, 26.741827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585070, 30.119732, 26.478489>,  <26.483004, 29.970676, 26.320486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585070, 30.119732, 26.478489>,  <26.755180, 30.368158, 26.741827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585070, 30.119732, 26.478489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147719, -0.765276, 0.626523,
		-0.892928, 0.169195, 0.417197,
		-0.425275, -0.621068, -0.658343,
		26.457487, 29.933411, 26.280987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663723, 30.872770, 27.237371>,  <26.755180, 30.368158, 26.741827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663723, 30.872770, 27.237371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860327, 30.965084, 27.573265>,  <26.978289, 31.020472, 27.774801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860327, 30.965084, 27.573265>,  <26.663723, 30.872770, 27.237371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860327, 30.965084, 27.573265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342521, 0.835306, -0.430050,
		-0.800685, 0.499001, 0.331514,
		0.491511, 0.230784, 0.839735,
		27.007780, 31.034319, 27.825186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456118, 31.613411, 27.395422>,  <26.663723, 30.872770, 27.237371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456118, 31.613411, 27.395422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811638, 31.554176, 27.568905>,  <27.024950, 31.518635, 27.672995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811638, 31.554176, 27.568905>,  <26.456118, 31.613411, 27.395422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811638, 31.554176, 27.568905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349538, 0.831104, -0.432537,
		-0.296402, 0.536037, 0.790449,
		0.888802, -0.148088, 0.433706,
		27.078278, 31.509750, 27.699017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692142, 32.285286, 27.618341>,  <26.456118, 31.613411, 27.395422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692142, 32.285286, 27.618341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022409, 32.059692, 27.623932>,  <27.220570, 31.924335, 27.627285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022409, 32.059692, 27.623932>,  <26.692142, 32.285286, 27.618341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022409, 32.059692, 27.623932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555443, 0.808321, -0.195195,
		0.098792, 0.168927, 0.980665,
		0.825665, -0.563987, 0.013974,
		27.270109, 31.890497, 27.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249641, 32.744259, 27.851967>,  <26.692142, 32.285286, 27.618341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249641, 32.744259, 27.851967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469891, 32.442234, 27.709591>,  <27.602039, 32.261017, 27.624165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469891, 32.442234, 27.709591>,  <27.249641, 32.744259, 27.851967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469891, 32.442234, 27.709591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672534, 0.653853, -0.346661,
		0.494484, -0.048503, 0.867832,
		0.550621, -0.755065, -0.355940,
		27.635077, 32.215714, 27.602808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882406, 32.896904, 28.038986>,  <27.249641, 32.744259, 27.851967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882406, 32.896904, 28.038986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921150, 32.680298, 27.704948>,  <27.944397, 32.550335, 27.504526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921150, 32.680298, 27.704948>,  <27.882406, 32.896904, 28.038986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921150, 32.680298, 27.704948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727788, 0.610872, -0.311705,
		0.678928, -0.577580, 0.453275,
		0.096858, -0.541514, -0.835094,
		27.950207, 32.517845, 27.454420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579754, 32.996990, 27.831709>,  <27.882406, 32.896904, 28.038986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579754, 32.996990, 27.831709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413681, 32.831158, 27.507797>,  <28.314037, 32.731659, 27.313450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413681, 32.831158, 27.507797>,  <28.579754, 32.996990, 27.831709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413681, 32.831158, 27.507797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675783, 0.455370, -0.579617,
		0.609049, -0.787883, 0.091106,
		-0.415183, -0.414583, -0.809780,
		28.289125, 32.706783, 27.264864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072256, 32.695965, 27.469929>,  <28.579754, 32.996990, 27.831709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072256, 32.695965, 27.469929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778589, 32.782127, 27.212372>,  <28.602388, 32.833824, 27.057838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778589, 32.782127, 27.212372>,  <29.072256, 32.695965, 27.469929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778589, 32.782127, 27.212372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653581, 0.481113, -0.584262,
		0.183929, -0.849782, -0.494005,
		-0.734168, 0.215410, -0.643892,
		28.558338, 32.846752, 27.019205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433863, 32.528694, 26.817789>,  <29.072256, 32.695965, 27.469929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433863, 32.528694, 26.817789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127670, 32.752182, 26.690117>,  <28.943954, 32.886272, 26.613514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127670, 32.752182, 26.690117>,  <29.433863, 32.528694, 26.817789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127670, 32.752182, 26.690117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608361, 0.466817, -0.641856,
		-0.209617, -0.685505, -0.697240,
		-0.765479, 0.558717, -0.319182,
		28.898027, 32.919796, 26.594362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401823, 32.491756, 26.048697>,  <29.433863, 32.528694, 26.817789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401823, 32.491756, 26.048697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252197, 32.834656, 26.190235>,  <29.162422, 33.040394, 26.275158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252197, 32.834656, 26.190235>,  <29.401823, 32.491756, 26.048697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252197, 32.834656, 26.190235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571375, 0.513557, -0.640148,
		-0.730484, -0.037278, -0.681912,
		-0.374064, 0.857245, 0.353845,
		29.139978, 33.091831, 26.296389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247189, 32.906017, 25.424711>,  <29.401823, 32.491756, 26.048697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247189, 32.906017, 25.424711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235443, 33.195103, 25.700920>,  <29.228395, 33.368553, 25.866646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235443, 33.195103, 25.700920>,  <29.247189, 32.906017, 25.424711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235443, 33.195103, 25.700920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254608, 0.673440, -0.694013,
		-0.966598, 0.155433, -0.203784,
		-0.029364, 0.722717, 0.690520,
		29.226633, 33.411919, 25.908075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920513, 33.507759, 25.105951>,  <29.247189, 32.906017, 25.424711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920513, 33.507759, 25.105951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122389, 33.659931, 25.415936>,  <29.243515, 33.751236, 25.601925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122389, 33.659931, 25.415936>,  <28.920513, 33.507759, 25.105951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122389, 33.659931, 25.415936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352810, 0.728395, -0.587338,
		-0.787917, 0.569836, 0.233394,
		0.504690, 0.380430, 0.774959,
		29.273796, 33.774059, 25.648424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688753, 34.225899, 25.039213>,  <28.920513, 33.507759, 25.105951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688753, 34.225899, 25.039213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031879, 34.188427, 25.241352>,  <29.237755, 34.165943, 25.362635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031879, 34.188427, 25.241352>,  <28.688753, 34.225899, 25.039213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031879, 34.188427, 25.241352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464706, 0.561379, -0.684764,
		-0.219545, 0.822239, 0.525093,
		0.857816, -0.093677, 0.505348,
		29.289225, 34.160324, 25.392956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.081518, 28.035114, 30.271807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.470919, 28.126537, 30.274845>,  <26.704559, 28.181391, 30.276669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.470919, 28.126537, 30.274845>,  <26.081518, 28.035114, 30.271807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470919, 28.126537, 30.274845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211690, 0.913224, -0.348151,
		-0.086510, 0.337317, 0.937408,
		0.973500, 0.228559, 0.007596,
		26.762968, 28.195105, 30.277124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189413, 28.769823, 30.593454>,  <26.081518, 28.035114, 30.271807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189413, 28.769823, 30.593454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.516724, 28.690441, 30.377663>,  <26.713110, 28.642811, 30.248188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.516724, 28.690441, 30.377663>,  <26.189413, 28.769823, 30.593454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516724, 28.690441, 30.377663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023954, 0.925923, -0.376951,
		0.574323, 0.321373, 0.752910,
		0.818279, -0.198456, -0.539477,
		26.762207, 28.630905, 30.215820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533348, 29.348320, 30.628874>,  <26.189413, 28.769823, 30.593454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533348, 29.348320, 30.628874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.719324, 29.158970, 30.329609>,  <26.830910, 29.045361, 30.150051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.719324, 29.158970, 30.329609>,  <26.533348, 29.348320, 30.628874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719324, 29.158970, 30.329609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161514, 0.876225, -0.454030,
		0.870484, 0.090259, 0.483850,
		0.464942, -0.473375, -0.748161,
		26.858807, 29.016958, 30.105160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071081, 29.823807, 30.426813>,  <26.533348, 29.348320, 30.628874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071081, 29.823807, 30.426813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.004013, 29.582985, 30.114552>,  <26.963772, 29.438492, 29.927195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.004013, 29.582985, 30.114552>,  <27.071081, 29.823807, 30.426813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004013, 29.582985, 30.114552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151709, 0.766674, -0.623855,
		0.974100, -0.223034, -0.037212,
		-0.167670, -0.602052, -0.780653,
		26.953712, 29.402369, 29.880356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539064, 30.102194, 29.930235>,  <27.071081, 29.823807, 30.426813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539064, 30.102194, 29.930235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.298645, 29.871014, 29.709431>,  <27.154394, 29.732306, 29.576948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.298645, 29.871014, 29.709431>,  <27.539064, 30.102194, 29.930235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298645, 29.871014, 29.709431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045000, 0.714070, -0.698627,
		0.797945, -0.395068, -0.455198,
		-0.601048, -0.577950, -0.552010,
		27.118330, 29.697628, 29.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836605, 30.068125, 29.251913>,  <27.539064, 30.102194, 29.930235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836605, 30.068125, 29.251913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.443951, 30.001160, 29.215324>,  <27.208359, 29.960979, 29.193371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.443951, 30.001160, 29.215324>,  <27.836605, 30.068125, 29.251913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443951, 30.001160, 29.215324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016854, 0.553711, -0.832539,
		0.190027, -0.815707, -0.546363,
		-0.981634, -0.167413, -0.091472,
		27.149460, 29.950935, 29.187883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763107, 29.789326, 28.652338>,  <27.836605, 30.068125, 29.251913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763107, 29.789326, 28.652338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.419691, 29.971363, 28.746822>,  <27.213640, 30.080585, 28.803513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.419691, 29.971363, 28.746822>,  <27.763107, 29.789326, 28.652338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419691, 29.971363, 28.746822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170483, 0.687831, -0.705567,
		-0.483571, -0.565489, -0.668118,
		-0.858542, 0.455095, 0.236209,
		27.162128, 30.107891, 28.817684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467457, 29.934395, 27.997112>,  <27.763107, 29.789326, 28.652338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467457, 29.934395, 27.997112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.250406, 30.166576, 28.239971>,  <27.120176, 30.305885, 28.385687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.250406, 30.166576, 28.239971>,  <27.467457, 29.934395, 27.997112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250406, 30.166576, 28.239971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169399, 0.783587, -0.597742,
		-0.822715, -0.221501, -0.523524,
		-0.542627, 0.580456, 0.607147,
		27.087618, 30.340714, 28.422115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994457, 30.151409, 27.537895>,  <27.467457, 29.934395, 27.997112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994457, 30.151409, 27.537895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.995182, 30.415146, 27.838631>,  <26.995617, 30.573389, 28.019072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.995182, 30.415146, 27.838631>,  <26.994457, 30.151409, 27.537895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995182, 30.415146, 27.838631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255684, 0.727156, -0.637079,
		-0.966759, -0.191078, 0.169901,
		0.001813, 0.659343, 0.751840,
		26.995726, 30.612949, 28.064182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424252, 29.973709, 27.271080>,  <26.994457, 30.151409, 27.537895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424252, 29.973709, 27.271080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.454309, 29.759560, 26.934574>,  <26.472343, 29.631069, 26.732670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.454309, 29.759560, 26.934574>,  <26.424252, 29.973709, 27.271080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454309, 29.759560, 26.934574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136800, -0.830139, 0.540514,
		-0.987744, -0.155702, 0.010858,
		0.075145, -0.535375, -0.841265,
		26.476852, 29.598948, 26.682194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009439, 29.365438, 27.345797>,  <26.424252, 29.973709, 27.271080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009439, 29.365438, 27.345797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.253561, 29.247696, 27.051617>,  <26.400034, 29.177050, 26.875109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.253561, 29.247696, 27.051617>,  <26.009439, 29.365438, 27.345797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253561, 29.247696, 27.051617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043461, -0.914560, 0.402108,
		-0.790974, -0.277371, -0.545366,
		0.610303, -0.294355, -0.735448,
		26.436651, 29.159389, 26.830982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716127, 28.658276, 27.187395>,  <26.009439, 29.365438, 27.345797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716127, 28.658276, 27.187395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.089100, 28.674484, 27.043766>,  <26.312883, 28.684210, 26.957588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.089100, 28.674484, 27.043766>,  <25.716127, 28.658276, 27.187395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089100, 28.674484, 27.043766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071375, -0.994769, 0.073079,
		-0.354233, -0.093770, -0.930444,
		0.932429, 0.040523, -0.359073,
		26.368828, 28.686642, 26.936045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654474, 28.161821, 26.644756>,  <25.716127, 28.658276, 27.187395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654474, 28.161821, 26.644756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.045366, 28.193764, 26.723392>,  <26.279902, 28.212929, 26.770575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.045366, 28.193764, 26.723392>,  <25.654474, 28.161821, 26.644756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045366, 28.193764, 26.723392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061132, -0.993154, 0.099535,
		0.203195, -0.085251, -0.975420,
		0.977228, 0.079854, 0.196593,
		26.338535, 28.217720, 26.782370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021982, 27.563650, 26.411453>,  <25.654474, 28.161821, 26.644756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021982, 27.563650, 26.411453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.282467, 27.712864, 26.675808>,  <26.438757, 27.802393, 26.834421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.282467, 27.712864, 26.675808>,  <26.021982, 27.563650, 26.411453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282467, 27.712864, 26.675808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286467, -0.927254, 0.241115,
		0.702754, 0.032305, -0.710699,
		0.651210, 0.373036, 0.660886,
		26.477829, 27.824776, 26.874073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621092, 27.187403, 26.273161>,  <26.021982, 27.563650, 26.411453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621092, 27.187403, 26.273161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.694498, 27.331638, 26.638958>,  <26.738543, 27.418180, 26.858437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.694498, 27.331638, 26.638958>,  <26.621092, 27.187403, 26.273161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694498, 27.331638, 26.638958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279594, -0.911016, 0.303112,
		0.942416, 0.200061, -0.268005,
		0.183516, 0.360591, 0.914492,
		26.749554, 27.439816, 26.913305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220802, 26.820959, 26.545452>,  <26.621092, 27.187403, 26.273161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220802, 26.820959, 26.545452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.056173, 26.956329, 26.883938>,  <26.957396, 27.037552, 27.087029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.056173, 26.956329, 26.883938>,  <27.220802, 26.820959, 26.545452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056173, 26.956329, 26.883938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312662, -0.819719, 0.479898,
		0.856068, 0.462091, 0.231559,
		-0.411570, 0.338426, 0.846214,
		26.932703, 27.057858, 27.137802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757805, 26.778635, 27.008930>,  <27.220802, 26.820959, 26.545452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757805, 26.778635, 27.008930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.410597, 26.776031, 27.207523>,  <27.202272, 26.774469, 27.326679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.410597, 26.776031, 27.207523>,  <27.757805, 26.778635, 27.008930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410597, 26.776031, 27.207523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265952, -0.850478, 0.453825,
		0.419296, 0.525971, 0.739963,
		-0.868021, -0.006508, 0.496485,
		27.150190, 26.774078, 27.356468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013790, 26.574940, 27.599998>,  <27.757805, 26.778635, 27.008930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013790, 26.574940, 27.599998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625240, 26.482140, 27.579575>,  <27.392111, 26.426460, 27.567320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625240, 26.482140, 27.579575>,  <28.013790, 26.574940, 27.599998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625240, 26.482140, 27.579575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180291, -0.859958, 0.477459,
		-0.154681, 0.454586, 0.877169,
		-0.971375, -0.231999, -0.051062,
		27.333828, 26.412540, 27.564257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887745, 26.335936, 28.273119>,  <28.013790, 26.574940, 27.599998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887745, 26.335936, 28.273119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.602119, 26.210751, 28.022625>,  <27.430744, 26.135639, 27.872330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.602119, 26.210751, 28.022625>,  <27.887745, 26.335936, 28.273119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602119, 26.210751, 28.022625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011634, -0.899696, 0.436362,
		-0.699985, 0.304304, 0.646081,
		-0.714063, -0.312963, -0.626233,
		27.387901, 26.116861, 27.834755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403822, 26.146135, 28.641102>,  <27.887745, 26.335936, 28.273119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403822, 26.146135, 28.641102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.365644, 25.943390, 28.298412>,  <27.342737, 25.821743, 28.092798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.365644, 25.943390, 28.298412>,  <27.403822, 26.146135, 28.641102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365644, 25.943390, 28.298412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082642, -0.853649, 0.514251,
		-0.991998, 0.119885, 0.039589,
		-0.095446, -0.506864, -0.856725,
		27.337011, 25.791330, 28.041395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879967, 25.629747, 28.749060>,  <27.403822, 26.146135, 28.641102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879967, 25.629747, 28.749060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.037535, 25.483414, 28.411777>,  <27.132076, 25.395615, 28.209408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.037535, 25.483414, 28.411777>,  <26.879967, 25.629747, 28.749060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037535, 25.483414, 28.411777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112163, -0.929656, 0.350941,
		-0.912274, -0.043667, -0.407245,
		0.393922, -0.365832, -0.843203,
		27.155710, 25.373665, 28.158815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432707, 25.057512, 28.490810>,  <26.879967, 25.629747, 28.749060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432707, 25.057512, 28.490810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.774630, 24.991138, 28.294128>,  <26.979784, 24.951315, 28.176119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.774630, 24.991138, 28.294128>,  <26.432707, 25.057512, 28.490810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774630, 24.991138, 28.294128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013868, -0.954468, 0.297990,
		-0.518762, -0.247905, -0.818187,
		0.854807, -0.165932, -0.491704,
		27.031071, 24.941359, 28.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240700, 24.507442, 27.978100>,  <26.432707, 25.057512, 28.490810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240700, 24.507442, 27.978100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.632938, 24.529621, 28.053314>,  <26.868282, 24.542929, 28.098442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.632938, 24.529621, 28.053314>,  <26.240700, 24.507442, 27.978100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632938, 24.529621, 28.053314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014892, -0.977465, 0.210571,
		0.195473, -0.203685, -0.959324,
		0.980596, 0.055447, 0.188035,
		26.927116, 24.546255, 28.109724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.708637, 26.373194, 29.805031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341053, 26.224361, 29.857296>,  <33.120502, 26.135063, 29.888655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341053, 26.224361, 29.857296>,  <33.708637, 26.373194, 29.805031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341053, 26.224361, 29.857296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332974, 0.554574, -0.762612,
		0.211290, -0.744315, -0.633523,
		-0.918959, -0.372079, 0.130661,
		33.065365, 26.112738, 29.896494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468647, 26.255775, 29.122299>,  <33.708637, 26.373194, 29.805031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468647, 26.255775, 29.122299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.141224, 26.269115, 29.351685>,  <32.944771, 26.277119, 29.489315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.141224, 26.269115, 29.351685>,  <33.468647, 26.255775, 29.122299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141224, 26.269115, 29.351685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440911, 0.603417, -0.664443,
		-0.368194, -0.796728, -0.479226,
		-0.818554, 0.033348, 0.573461,
		32.895657, 26.279119, 29.523724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903046, 26.052109, 28.705597>,  <33.468647, 26.255775, 29.122299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903046, 26.052109, 28.705597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735603, 26.238171, 29.017597>,  <32.635136, 26.349808, 29.204796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735603, 26.238171, 29.017597>,  <32.903046, 26.052109, 28.705597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735603, 26.238171, 29.017597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509096, 0.591043, -0.625692,
		-0.752055, -0.659015, -0.010609,
		-0.418610, 0.465154, 0.779998,
		32.610020, 26.377716, 29.251596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239624, 26.145031, 28.508537>,  <32.903046, 26.052109, 28.705597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239624, 26.145031, 28.508537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.322033, 26.402592, 28.803276>,  <32.371479, 26.557127, 28.980120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.322033, 26.402592, 28.803276>,  <32.239624, 26.145031, 28.508537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322033, 26.402592, 28.803276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292002, 0.759151, -0.581743,
		-0.933964, -0.095307, 0.344425,
		0.206026, 0.643900, 0.736849,
		32.383842, 26.595762, 29.024330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611574, 26.555536, 28.543823>,  <32.239624, 26.145031, 28.508537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611574, 26.555536, 28.543823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891798, 26.772266, 28.729572>,  <32.059933, 26.902304, 28.841021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891798, 26.772266, 28.729572>,  <31.611574, 26.555536, 28.543823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891798, 26.772266, 28.729572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388467, 0.835447, -0.388744,
		-0.598589, 0.091946, 0.795762,
		0.700561, 0.541825, 0.464371,
		32.101967, 26.934814, 28.868883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326044, 27.144869, 28.878098>,  <31.611574, 26.555536, 28.543823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326044, 27.144869, 28.878098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705770, 27.264660, 28.839909>,  <31.933605, 27.336535, 28.816996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705770, 27.264660, 28.839909>,  <31.326044, 27.144869, 28.878098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705770, 27.264660, 28.839909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297043, 0.755388, -0.584084,
		-0.102803, 0.582839, 0.806059,
		0.949314, 0.299479, -0.095472,
		31.990564, 27.354504, 28.811268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271433, 27.888365, 28.965723>,  <31.326044, 27.144869, 28.878098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271433, 27.888365, 28.965723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613861, 27.817501, 28.771503>,  <31.819319, 27.774982, 28.654972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613861, 27.817501, 28.771503>,  <31.271433, 27.888365, 28.965723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613861, 27.817501, 28.771503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131148, 0.834222, -0.535605,
		0.499944, 0.522194, 0.690919,
		0.856070, -0.177160, -0.485550,
		31.870682, 27.764353, 28.625839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613966, 28.526468, 28.799606>,  <31.271433, 27.888365, 28.965723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613966, 28.526468, 28.799606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792513, 28.284359, 28.535969>,  <31.899641, 28.139093, 28.377787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792513, 28.284359, 28.535969>,  <31.613966, 28.526468, 28.799606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792513, 28.284359, 28.535969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100296, 0.698059, -0.708981,
		0.889211, 0.382570, 0.250885,
		0.446368, -0.605271, -0.659093,
		31.926424, 28.102777, 28.338242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239086, 28.900000, 28.455936>,  <31.613966, 28.526468, 28.799606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239086, 28.900000, 28.455936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.135548, 28.603340, 28.208401>,  <32.073425, 28.425344, 28.059879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.135548, 28.603340, 28.208401>,  <32.239086, 28.900000, 28.455936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135548, 28.603340, 28.208401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002698, 0.641225, -0.767348,
		0.965915, -0.196954, -0.167978,
		-0.258844, -0.741647, -0.618837,
		32.057896, 28.380846, 28.022749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641205, 29.064955, 27.922501>,  <32.239086, 28.900000, 28.455936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641205, 29.064955, 27.922501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382839, 28.809464, 27.755257>,  <32.227818, 28.656170, 27.654909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382839, 28.809464, 27.755257>,  <32.641205, 29.064955, 27.922501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382839, 28.809464, 27.755257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003101, 0.545493, -0.838109,
		0.763400, -0.542647, -0.350364,
		-0.645918, -0.638727, -0.418112,
		32.189064, 28.617846, 27.629824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771950, 29.187897, 27.213070>,  <32.641205, 29.064955, 27.922501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771950, 29.187897, 27.213070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430363, 28.979824, 27.217953>,  <32.225410, 28.854980, 27.220882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430363, 28.979824, 27.217953>,  <32.771950, 29.187897, 27.213070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430363, 28.979824, 27.217953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357084, 0.568831, -0.740892,
		0.378452, -0.637059, -0.671513,
		-0.853970, -0.520179, 0.012209,
		32.174171, 28.823771, 27.221615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793068, 28.873430, 26.479851>,  <32.771950, 29.187897, 27.213070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793068, 28.873430, 26.479851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420830, 28.914307, 26.620449>,  <32.197487, 28.938833, 26.704807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420830, 28.914307, 26.620449>,  <32.793068, 28.873430, 26.479851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420830, 28.914307, 26.620449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250768, 0.521536, -0.815546,
		-0.266660, -0.847087, -0.459712,
		-0.930595, 0.102193, 0.351496,
		32.141651, 28.944963, 26.725897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454655, 28.848822, 25.916151>,  <32.793068, 28.873430, 26.479851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454655, 28.848822, 25.916151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192989, 29.012463, 26.170616>,  <32.035992, 29.110647, 26.323296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192989, 29.012463, 26.170616>,  <32.454655, 28.848822, 25.916151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192989, 29.012463, 26.170616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252834, 0.674430, -0.693699,
		-0.712844, -0.614636, -0.337751,
		-0.654162, 0.409105, 0.636165,
		31.996740, 29.135195, 26.361465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697193, 28.937489, 25.583534>,  <32.454655, 28.848822, 25.916151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697193, 28.937489, 25.583534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782854, 29.198109, 25.874634>,  <31.834251, 29.354481, 26.049294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782854, 29.198109, 25.874634>,  <31.697193, 28.937489, 25.583534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782854, 29.198109, 25.874634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417224, 0.734665, -0.534969,
		-0.883212, -0.189069, 0.429174,
		0.214153, 0.651552, 0.727749,
		31.847099, 29.393574, 26.092958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041950, 29.041435, 25.140739>,  <31.697193, 28.937489, 25.583534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041950, 29.041435, 25.140739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081347, 28.859970, 24.786453>,  <31.104984, 28.751091, 24.573881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081347, 28.859970, 24.786453>,  <31.041950, 29.041435, 25.140739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081347, 28.859970, 24.786453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075231, -0.890889, 0.447948,
		-0.992290, 0.022515, -0.121873,
		0.098490, -0.453663, -0.885714,
		31.110893, 28.723871, 24.520739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554296, 28.455647, 25.161327>,  <31.041950, 29.041435, 25.140739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554296, 28.455647, 25.161327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.805380, 28.360367, 24.864883>,  <30.956030, 28.303200, 24.687017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.805380, 28.360367, 24.864883>,  <30.554296, 28.455647, 25.161327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805380, 28.360367, 24.864883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112254, -0.914386, 0.388968,
		-0.770313, -0.327351, -0.547229,
		0.627708, -0.238198, -0.741110,
		30.993692, 28.288908, 24.642550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416216, 27.730774, 24.938862>,  <30.554296, 28.455647, 25.161327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416216, 27.730774, 24.938862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786049, 27.794231, 24.800308>,  <31.007948, 27.832306, 24.717176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786049, 27.794231, 24.800308>,  <30.416216, 27.730774, 24.938862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786049, 27.794231, 24.800308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329267, -0.790111, 0.517019,
		-0.191658, -0.592078, -0.782758,
		0.924581, 0.158646, -0.346383,
		31.063423, 27.841825, 24.696394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638269, 27.186073, 24.728653>,  <30.416216, 27.730774, 24.938862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638269, 27.186073, 24.728653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.988291, 27.369709, 24.789993>,  <31.198303, 27.479891, 24.826797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.988291, 27.369709, 24.789993>,  <30.638269, 27.186073, 24.728653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988291, 27.369709, 24.789993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384699, -0.851934, 0.355270,
		0.293747, -0.251886, -0.922099,
		0.875054, 0.459089, 0.153353,
		31.250807, 27.507437, 24.835999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036425, 26.669973, 24.633936>,  <30.638269, 27.186073, 24.728653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036425, 26.669973, 24.633936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.287832, 26.922150, 24.816147>,  <31.438677, 27.073456, 24.925472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.287832, 26.922150, 24.816147>,  <31.036425, 26.669973, 24.633936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287832, 26.922150, 24.816147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548784, -0.774478, 0.314675,
		0.551179, 0.052205, -0.832752,
		0.628521, 0.630443, 0.455525,
		31.476389, 27.111282, 24.952805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652721, 26.291758, 24.673405>,  <31.036425, 26.669973, 24.633936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652721, 26.291758, 24.673405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721033, 26.568962, 24.953568>,  <31.762020, 26.735285, 25.121664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721033, 26.568962, 24.953568>,  <31.652721, 26.291758, 24.673405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721033, 26.568962, 24.953568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433035, -0.691307, 0.578425,
		0.885051, 0.204518, -0.418159,
		0.170777, 0.693013, 0.700405,
		31.772266, 26.776867, 25.163689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422501, 26.380163, 24.765965>,  <31.652721, 26.291758, 24.673405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422501, 26.380163, 24.765965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231926, 26.498016, 25.097313>,  <32.117580, 26.568727, 25.296122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231926, 26.498016, 25.097313>,  <32.422501, 26.380163, 24.765965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231926, 26.498016, 25.097313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640072, -0.529691, 0.556538,
		0.602755, 0.795373, 0.063779,
		-0.476439, 0.294633, 0.828370,
		32.088993, 26.586407, 25.345823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944347, 26.453568, 25.407072>,  <32.422501, 26.380163, 24.765965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944347, 26.453568, 25.407072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595970, 26.445251, 25.603451>,  <32.386944, 26.440262, 25.721277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595970, 26.445251, 25.603451>,  <32.944347, 26.453568, 25.407072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595970, 26.445251, 25.603451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369709, -0.685865, 0.626821,
		0.323692, 0.727432, 0.605034,
		-0.870941, -0.020790, 0.490947,
		32.334686, 26.439014, 25.750734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143635, 26.508541, 26.126806>,  <32.944347, 26.453568, 25.407072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143635, 26.508541, 26.126806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773834, 26.356850, 26.111378>,  <32.551956, 26.265835, 26.102121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773834, 26.356850, 26.111378>,  <33.143635, 26.508541, 26.126806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773834, 26.356850, 26.111378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257601, -0.696137, 0.670100,
		-0.280972, 0.609571, 0.741268,
		-0.924498, -0.379231, -0.038570,
		32.496487, 26.243080, 26.099808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969215, 26.362408, 26.842730>,  <33.143635, 26.508541, 26.126806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969215, 26.362408, 26.842730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724693, 26.128155, 26.629810>,  <32.577980, 25.987602, 26.502058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724693, 26.128155, 26.629810>,  <32.969215, 26.362408, 26.842730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724693, 26.128155, 26.629810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072458, -0.628366, 0.774536,
		-0.788072, 0.512046, 0.341688,
		-0.611303, -0.585632, -0.532300,
		32.541302, 25.952465, 26.470121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281223, 26.311651, 27.211895>,  <32.969215, 26.362408, 26.842730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281223, 26.311651, 27.211895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325500, 25.992359, 26.975056>,  <32.352066, 25.800785, 26.832952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325500, 25.992359, 26.975056>,  <32.281223, 26.311651, 27.211895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325500, 25.992359, 26.975056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115642, -0.602056, 0.790035,
		-0.987104, -0.018976, -0.158949,
		0.110688, -0.798228, -0.592098,
		32.358707, 25.752892, 26.797426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055592, 25.819197, 27.595980>,  <32.281223, 26.311651, 27.211895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055592, 25.819197, 27.595980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.207878, 25.600578, 27.297626>,  <32.299252, 25.469408, 27.118614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.207878, 25.600578, 27.297626>,  <32.055592, 25.819197, 27.595980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207878, 25.600578, 27.297626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161224, -0.755039, 0.635549,
		-0.910527, -0.362220, -0.199343,
		0.380720, -0.546545, -0.745882,
		32.322094, 25.436615, 27.073862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674622, 25.178051, 27.683090>,  <32.055592, 25.819197, 27.595980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674622, 25.178051, 27.683090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975855, 25.060154, 27.447807>,  <32.156593, 24.989416, 27.306637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975855, 25.060154, 27.447807>,  <31.674622, 25.178051, 27.683090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975855, 25.060154, 27.447807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092031, -0.838056, 0.537767,
		-0.651455, -0.459117, -0.604002,
		0.753085, -0.294744, -0.588208,
		32.201778, 24.971731, 27.271345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573656, 24.475359, 27.278040>,  <31.674622, 25.178051, 27.683090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573656, 24.475359, 27.278040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963285, 24.546322, 27.334187>,  <32.197063, 24.588900, 27.367874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963285, 24.546322, 27.334187>,  <31.573656, 24.475359, 27.278040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963285, 24.546322, 27.334187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112105, -0.917483, 0.381651,
		0.196492, -0.356021, -0.913586,
		0.974075, 0.177409, 0.140366,
		32.255508, 24.599545, 27.376297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477688, 24.232512, 26.529011>,  <31.573656, 24.475359, 27.278040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477688, 24.232512, 26.529011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112520, 24.093018, 26.444195>,  <30.893419, 24.009321, 26.393305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112520, 24.093018, 26.444195>,  <31.477688, 24.232512, 26.529011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112520, 24.093018, 26.444195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213980, 0.851370, -0.478938,
		0.347546, -0.391860, -0.851855,
		-0.912921, -0.348733, -0.212040,
		30.838644, 23.988398, 26.380583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171267, 24.336996, 25.757399>,  <31.477688, 24.232512, 26.529011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171267, 24.336996, 25.757399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.836674, 24.299820, 25.973419>,  <30.635918, 24.277514, 26.103031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.836674, 24.299820, 25.973419>,  <31.171267, 24.336996, 25.757399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836674, 24.299820, 25.973419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314097, 0.888875, -0.333533,
		-0.449040, -0.448624, -0.772722,
		-0.836484, -0.092940, 0.540052,
		30.585728, 24.271938, 26.135435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620821, 24.418955, 25.225401>,  <31.171267, 24.336996, 25.757399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620821, 24.418955, 25.225401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463009, 24.496719, 25.584633>,  <30.368322, 24.543379, 25.800173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463009, 24.496719, 25.584633>,  <30.620821, 24.418955, 25.225401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463009, 24.496719, 25.584633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497000, 0.776915, -0.386515,
		-0.772877, -0.598838, -0.209893,
		-0.394529, 0.194412, 0.898082,
		30.344650, 24.555042, 25.854057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920614, 24.520288, 25.138477>,  <30.620821, 24.418955, 25.225401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920614, 24.520288, 25.138477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.991081, 24.684181, 25.496490>,  <30.033361, 24.782516, 25.711298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.991081, 24.684181, 25.496490>,  <29.920614, 24.520288, 25.138477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991081, 24.684181, 25.496490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556149, 0.791655, -0.252944,
		-0.812197, -0.453211, 0.367336,
		0.176166, 0.409734, 0.895033,
		30.043932, 24.807102, 25.764999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257402, 24.658392, 25.386383>,  <29.920614, 24.520288, 25.138477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257402, 24.658392, 25.386383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.500874, 24.886112, 25.607437>,  <29.646957, 25.022743, 25.740070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.500874, 24.886112, 25.607437>,  <29.257402, 24.658392, 25.386383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500874, 24.886112, 25.607437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484087, 0.818332, -0.309827,
		-0.628625, -0.078939, 0.773692,
		0.608679, 0.569299, 0.552637,
		29.683477, 25.056902, 25.773228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810070, 25.143913, 25.730639>,  <29.257402, 24.658392, 25.386383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810070, 25.143913, 25.730639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.166967, 25.323174, 25.752781>,  <29.381105, 25.430729, 25.766068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.166967, 25.323174, 25.752781>,  <28.810070, 25.143913, 25.730639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166967, 25.323174, 25.752781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443287, 0.892652, -0.081669,
		-0.086015, 0.048330, 0.995121,
		0.892243, 0.448149, 0.055357,
		29.434641, 25.457619, 25.769388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739882, 25.650732, 26.222771>,  <28.810070, 25.143913, 25.730639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739882, 25.650732, 26.222771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.043129, 25.735249, 25.975994>,  <29.225077, 25.785957, 25.827929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.043129, 25.735249, 25.975994>,  <28.739882, 25.650732, 26.222771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043129, 25.735249, 25.975994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345462, 0.932524, -0.105145,
		0.553095, 0.292841, 0.779955,
		0.758117, 0.211289, -0.616940,
		29.270565, 25.798635, 25.790913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930374, 26.350693, 26.438490>,  <28.739882, 25.650732, 26.222771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930374, 26.350693, 26.438490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.089134, 26.299816, 26.074886>,  <29.184389, 26.269291, 25.856724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.089134, 26.299816, 26.074886>,  <28.930374, 26.350693, 26.438490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089134, 26.299816, 26.074886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248541, 0.938460, -0.239834,
		0.883571, 0.321115, 0.340861,
		0.396899, -0.127192, -0.909007,
		29.208204, 26.261658, 25.802185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243389, 27.021673, 26.194410>,  <28.930374, 26.350693, 26.438490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243389, 27.021673, 26.194410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.166817, 26.792961, 25.875305>,  <29.120874, 26.655733, 25.683842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.166817, 26.792961, 25.875305>,  <29.243389, 27.021673, 26.194410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166817, 26.792961, 25.875305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228602, 0.816413, -0.530294,
		0.954514, 0.080856, -0.286995,
		-0.191429, -0.571780, -0.797761,
		29.109388, 26.621428, 25.635977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591690, 27.332382, 25.643581>,  <29.243389, 27.021673, 26.194410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591690, 27.332382, 25.643581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.304651, 27.116146, 25.467937>,  <29.132427, 26.986404, 25.362551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.304651, 27.116146, 25.467937>,  <29.591690, 27.332382, 25.643581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304651, 27.116146, 25.467937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151708, 0.736681, -0.659004,
		0.679736, -0.406282, -0.610651,
		-0.717596, -0.540589, -0.439112,
		29.089373, 26.953970, 25.336205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709177, 27.361992, 24.970482>,  <29.591690, 27.332382, 25.643581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709177, 27.361992, 24.970482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.330156, 27.234257, 24.975693>,  <29.102743, 27.157616, 24.978819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.330156, 27.234257, 24.975693>,  <29.709177, 27.361992, 24.970482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330156, 27.234257, 24.975693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187736, 0.523154, -0.831304,
		0.258650, -0.790149, -0.555666,
		-0.947552, -0.319335, 0.013025,
		29.045891, 27.138456, 24.979601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494823, 27.212000, 24.254177>,  <29.709177, 27.361992, 24.970482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494823, 27.212000, 24.254177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.164148, 27.277187, 24.469593>,  <28.965742, 27.316299, 24.598843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.164148, 27.277187, 24.469593>,  <29.494823, 27.212000, 24.254177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164148, 27.277187, 24.469593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343397, 0.612070, -0.712354,
		-0.445717, -0.773828, -0.450028,
		-0.826689, 0.162970, 0.538540,
		28.916142, 27.326078, 24.631155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953934, 27.051327, 23.747530>,  <29.494823, 27.212000, 24.254177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953934, 27.051327, 23.747530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.795652, 27.274975, 24.038956>,  <28.700684, 27.409164, 24.213810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.795652, 27.274975, 24.038956>,  <28.953934, 27.051327, 23.747530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795652, 27.274975, 24.038956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249257, 0.698152, -0.671160,
		-0.883907, -0.447178, -0.136895,
		-0.395702, 0.559120, 0.728563,
		28.676941, 27.442711, 24.257524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274332, 27.165730, 23.428640>,  <28.953934, 27.051327, 23.747530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274332, 27.165730, 23.428640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.356300, 27.428028, 23.719296>,  <28.405481, 27.585407, 23.893688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.356300, 27.428028, 23.719296>,  <28.274332, 27.165730, 23.428640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356300, 27.428028, 23.719296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195223, 0.754859, -0.626159,
		-0.959111, -0.013543, 0.282705,
		0.204923, 0.655747, 0.726638,
		28.417778, 27.624752, 23.937286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.453262, 32.799370, 28.458548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806622, 32.642132, 28.560593>,  <37.018639, 32.547791, 28.621820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806622, 32.642132, 28.560593>,  <36.453262, 32.799370, 28.458548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806622, 32.642132, 28.560593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434431, 0.482840, -0.760352,
		0.175708, 0.782524, 0.597312,
		0.883400, -0.393091, 0.255114,
		37.071640, 32.524204, 28.637127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943459, 33.403355, 28.464539>,  <36.453262, 32.799370, 28.458548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943459, 33.403355, 28.464539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142250, 33.062088, 28.401142>,  <37.261524, 32.857327, 28.363104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142250, 33.062088, 28.401142>,  <36.943459, 33.403355, 28.464539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142250, 33.062088, 28.401142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566946, 0.457506, -0.685026,
		0.656951, 0.250589, 0.711070,
		0.496978, -0.853167, -0.158489,
		37.291344, 32.806137, 28.353596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590046, 33.681652, 28.433897>,  <36.943459, 33.403355, 28.464539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590046, 33.681652, 28.433897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616615, 33.315536, 28.274982>,  <37.632557, 33.095867, 28.179634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616615, 33.315536, 28.274982>,  <37.590046, 33.681652, 28.433897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616615, 33.315536, 28.274982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705396, 0.324682, -0.630078,
		0.705694, -0.238392, 0.667207,
		0.066425, -0.915287, -0.397287,
		37.636543, 33.040951, 28.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363815, 33.529095, 28.320913>,  <37.590046, 33.681652, 28.433897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363815, 33.529095, 28.320913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.144474, 33.295757, 28.081242>,  <38.012871, 33.155754, 27.937439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.144474, 33.295757, 28.081242>,  <38.363815, 33.529095, 28.320913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144474, 33.295757, 28.081242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556688, 0.280033, -0.782100,
		0.624025, -0.762423, 0.171185,
		-0.548354, -0.583346, -0.599179,
		37.979969, 33.120754, 27.901487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841373, 33.379707, 27.904427>,  <38.363815, 33.529095, 28.320913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841373, 33.379707, 27.904427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.502483, 33.279396, 27.717098>,  <38.299149, 33.219208, 27.604700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.502483, 33.279396, 27.717098>,  <38.841373, 33.379707, 27.904427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502483, 33.279396, 27.717098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454263, 0.115069, -0.883405,
		0.275431, -0.961180, 0.016432,
		-0.847221, -0.250782, -0.468322,
		38.248318, 33.204163, 27.576601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999508, 32.948849, 27.349226>,  <38.841373, 33.379707, 27.904427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999508, 32.948849, 27.349226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649410, 33.111767, 27.244869>,  <38.439354, 33.209518, 27.182255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649410, 33.111767, 27.244869>,  <38.999508, 32.948849, 27.349226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649410, 33.111767, 27.244869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282514, -0.007334, -0.959235,
		-0.392603, -0.913268, -0.108646,
		-0.875242, 0.407292, -0.260890,
		38.386837, 33.233955, 27.166601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819244, 32.666092, 26.828072>,  <38.999508, 32.948849, 27.349226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819244, 32.666092, 26.828072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555325, 32.963531, 26.784752>,  <38.396973, 33.141994, 26.758760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555325, 32.963531, 26.784752>,  <38.819244, 32.666092, 26.828072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555325, 32.963531, 26.784752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243027, 0.074784, -0.967132,
		-0.711058, -0.664433, -0.230057,
		-0.659799, 0.743597, -0.108300,
		38.357384, 33.186611, 26.752262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618282, 32.525486, 26.230482>,  <38.819244, 32.666092, 26.828072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618282, 32.525486, 26.230482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.500031, 32.903107, 26.288952>,  <38.429081, 33.129681, 26.324034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.500031, 32.903107, 26.288952>,  <38.618282, 32.525486, 26.230482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500031, 32.903107, 26.288952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105462, 0.184332, -0.977189,
		-0.949463, -0.273471, -0.154056,
		-0.295631, 0.944052, 0.146175,
		38.411343, 33.186321, 26.332804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111160, 32.667400, 25.727306>,  <38.618282, 32.525486, 26.230482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111160, 32.667400, 25.727306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.286819, 33.005333, 25.849556>,  <38.392216, 33.208092, 25.922905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.286819, 33.005333, 25.849556>,  <38.111160, 32.667400, 25.727306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286819, 33.005333, 25.849556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151464, 0.265692, -0.952085,
		-0.885553, 0.464402, -0.011282,
		0.439152, 0.844831, 0.305625,
		38.418564, 33.258781, 25.941244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018909, 33.167171, 25.132189>,  <38.111160, 32.667400, 25.727306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018909, 33.167171, 25.132189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295727, 33.356106, 25.350536>,  <38.461819, 33.469467, 25.481544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295727, 33.356106, 25.350536>,  <38.018909, 33.167171, 25.132189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295727, 33.356106, 25.350536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307631, 0.491112, -0.814968,
		-0.653024, 0.731918, 0.194564,
		0.692043, 0.472339, 0.545869,
		38.503338, 33.497807, 25.514297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116375, 33.873726, 24.833988>,  <38.018909, 33.167171, 25.132189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116375, 33.873726, 24.833988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449753, 33.797211, 25.041367>,  <38.649780, 33.751301, 25.165792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449753, 33.797211, 25.041367>,  <38.116375, 33.873726, 24.833988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449753, 33.797211, 25.041367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548762, 0.396989, -0.735704,
		-0.065087, 0.897669, 0.435837,
		0.833441, -0.191286, 0.518445,
		38.699783, 33.739826, 25.196899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597466, 34.416672, 24.726713>,  <38.116375, 33.873726, 24.833988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597466, 34.416672, 24.726713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861427, 34.149414, 24.864178>,  <39.019806, 33.989059, 24.946657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861427, 34.149414, 24.864178>,  <38.597466, 34.416672, 24.726713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861427, 34.149414, 24.864178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681369, 0.339420, -0.648483,
		0.316636, 0.662099, 0.679239,
		0.659907, -0.668146, 0.343661,
		39.059399, 33.948971, 24.967276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211781, 34.783283, 24.852331>,  <38.597466, 34.416672, 24.726713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211781, 34.783283, 24.852331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319611, 34.400867, 24.806168>,  <39.384308, 34.171417, 24.778469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319611, 34.400867, 24.806168>,  <39.211781, 34.783283, 24.852331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319611, 34.400867, 24.806168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787008, 0.287786, -0.545708,
		0.554932, 0.056278, 0.829990,
		0.269570, -0.956040, -0.115411,
		39.400482, 34.114056, 24.771544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954578, 34.843792, 24.822239>,  <39.211781, 34.783283, 24.852331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954578, 34.843792, 24.822239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.844730, 34.488426, 24.675102>,  <39.778820, 34.275208, 24.586821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.844730, 34.488426, 24.675102>,  <39.954578, 34.843792, 24.822239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844730, 34.488426, 24.675102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638849, 0.117336, -0.760332,
		0.718649, -0.443798, 0.535338,
		-0.274620, -0.888412, -0.367844,
		39.762344, 34.221901, 24.564749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694225, 34.511562, 24.721924>,  <39.954578, 34.843792, 24.822239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694225, 34.511562, 24.721924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.425568, 34.302479, 24.511906>,  <40.264374, 34.177029, 24.385895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.425568, 34.302479, 24.511906>,  <40.694225, 34.511562, 24.721924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425568, 34.302479, 24.511906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610878, 0.010259, -0.791658,
		0.419190, -0.852452, 0.312418,
		-0.671645, -0.522705, -0.525045,
		40.224075, 34.145668, 24.354393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031998, 34.042717, 24.370691>,  <40.694225, 34.511562, 24.721924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031998, 34.042717, 24.370691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.686245, 34.092594, 24.175838>,  <40.478794, 34.122520, 24.058928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.686245, 34.092594, 24.175838>,  <41.031998, 34.042717, 24.370691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686245, 34.092594, 24.175838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502464, 0.176853, -0.846318,
		-0.019377, -0.976307, -0.215520,
		-0.864381, 0.124690, -0.487132,
		40.426929, 34.130001, 24.029699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161999, 33.751301, 23.790489>,  <41.031998, 34.042717, 24.370691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161999, 33.751301, 23.790489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.851089, 33.993431, 23.721867>,  <40.664543, 34.138710, 23.680693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.851089, 33.993431, 23.721867>,  <41.161999, 33.751301, 23.790489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851089, 33.993431, 23.721867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455072, 0.352598, -0.817670,
		-0.434468, -0.713620, -0.549532,
		-0.777269, 0.605328, -0.171556,
		40.617908, 34.175030, 23.670401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054424, 33.528439, 23.125202>,  <41.161999, 33.751301, 23.790489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054424, 33.528439, 23.125202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.898304, 33.892693, 23.179478>,  <40.804630, 34.111244, 23.212044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.898304, 33.892693, 23.179478>,  <41.054424, 33.528439, 23.125202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898304, 33.892693, 23.179478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448076, 0.316625, -0.836048,
		-0.804296, -0.265512, -0.531612,
		-0.390302, 0.910633, 0.135691,
		40.781212, 34.165882, 23.220184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615528, 33.681526, 22.543680>,  <41.054424, 33.528439, 23.125202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615528, 33.681526, 22.543680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.683537, 34.044979, 22.696251>,  <40.724342, 34.263050, 22.787792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.683537, 34.044979, 22.696251>,  <40.615528, 33.681526, 22.543680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683537, 34.044979, 22.696251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248967, 0.334897, -0.908768,
		-0.953472, 0.249471, -0.169280,
		0.170020, 0.908630, 0.381425,
		40.734543, 34.317570, 22.810678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204803, 34.200993, 22.143536>,  <40.615528, 33.681526, 22.543680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204803, 34.200993, 22.143536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491478, 34.421356, 22.314583>,  <40.663483, 34.553574, 22.417212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491478, 34.421356, 22.314583>,  <40.204803, 34.200993, 22.143536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491478, 34.421356, 22.314583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161105, 0.465795, -0.870103,
		-0.678534, 0.692482, 0.245074,
		0.716685, 0.550912, 0.427620,
		40.706482, 34.586628, 22.442869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069767, 34.807243, 21.902641>,  <40.204803, 34.200993, 22.143536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069767, 34.807243, 21.902641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.448776, 34.845566, 22.024639>,  <40.676182, 34.868561, 22.097837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.448776, 34.845566, 22.024639>,  <40.069767, 34.807243, 21.902641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448776, 34.845566, 22.024639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233577, 0.443907, -0.865094,
		-0.218271, 0.890936, 0.398234,
		0.947523, 0.095807, 0.304995,
		40.733032, 34.874310, 22.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340748, 34.852905, 22.050085>,  <40.069767, 34.807243, 21.902641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340748, 34.852905, 22.050085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943069, 34.867443, 22.090595>,  <38.704464, 34.876163, 22.114901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943069, 34.867443, 22.090595>,  <39.340748, 34.852905, 22.050085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943069, 34.867443, 22.090595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020673, -0.988213, 0.151681,
		0.105593, 0.148707, 0.983228,
		-0.994195, 0.036343, 0.101274,
		38.644810, 34.878345, 22.120977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211918, 34.456005, 22.642834>,  <39.340748, 34.852905, 22.050085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211918, 34.456005, 22.642834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861877, 34.478600, 22.450584>,  <38.651852, 34.492157, 22.335234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861877, 34.478600, 22.450584>,  <39.211918, 34.456005, 22.642834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861877, 34.478600, 22.450584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215805, -0.934499, 0.283092,
		-0.433151, 0.351456, 0.829975,
		-0.875105, 0.056491, -0.480625,
		38.599346, 34.495548, 22.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634804, 34.375877, 23.147411>,  <39.211918, 34.456005, 22.642834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634804, 34.375877, 23.147411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482822, 34.272968, 22.792007>,  <38.391636, 34.211224, 22.578766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482822, 34.272968, 22.792007>,  <38.634804, 34.375877, 23.147411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482822, 34.272968, 22.792007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415019, -0.811024, 0.412309,
		-0.826678, 0.525405, 0.201378,
		-0.379952, -0.257271, -0.888509,
		38.368835, 34.195786, 22.525455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920040, 34.096973, 23.261604>,  <38.634804, 34.375877, 23.147411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920040, 34.096973, 23.261604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019680, 33.969620, 22.895744>,  <38.079464, 33.893208, 22.676229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019680, 33.969620, 22.895744>,  <37.920040, 34.096973, 23.261604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019680, 33.969620, 22.895744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262813, -0.931202, 0.252572,
		-0.932135, 0.177463, -0.315644,
		0.249106, -0.318386, -0.914645,
		38.094410, 33.874104, 22.621349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310699, 33.726749, 23.078131>,  <37.920040, 34.096973, 23.261604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310699, 33.726749, 23.078131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614773, 33.608517, 22.846699>,  <37.797215, 33.537575, 22.707840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614773, 33.608517, 22.846699>,  <37.310699, 33.726749, 23.078131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614773, 33.608517, 22.846699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298949, -0.949781, 0.092440,
		-0.576849, 0.102695, -0.810369,
		0.760180, -0.295584, -0.578581,
		37.842827, 33.519840, 22.673124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074337, 33.270916, 22.612041>,  <37.310699, 33.726749, 23.078131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074337, 33.270916, 22.612041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457943, 33.164776, 22.651783>,  <37.688107, 33.101093, 22.675629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457943, 33.164776, 22.651783>,  <37.074337, 33.270916, 22.612041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457943, 33.164776, 22.651783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272162, -0.960215, 0.062562,
		0.078802, -0.087040, -0.993083,
		0.959019, -0.265350, 0.099356,
		37.745647, 33.085171, 22.681589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061687, 32.632187, 22.301105>,  <37.074337, 33.270916, 22.612041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061687, 32.632187, 22.301105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422134, 32.654606, 22.473080>,  <37.638405, 32.668056, 22.576263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422134, 32.654606, 22.473080>,  <37.061687, 32.632187, 22.301105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422134, 32.654606, 22.473080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040927, -0.976186, 0.213040,
		0.431636, -0.209571, -0.877366,
		0.901119, 0.056048, 0.429934,
		37.692471, 32.671421, 22.602060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354984, 32.052975, 22.087471>,  <37.061687, 32.632187, 22.301105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354984, 32.052975, 22.087471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.586254, 32.160099, 22.395756>,  <37.725018, 32.224373, 22.580727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.586254, 32.160099, 22.395756>,  <37.354984, 32.052975, 22.087471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586254, 32.160099, 22.395756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026911, -0.937824, 0.346067,
		0.815470, -0.220827, -0.535018,
		0.578173, 0.267810, 0.770710,
		37.759705, 32.240440, 22.626968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901932, 31.538889, 22.067289>,  <37.354984, 32.052975, 22.087471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901932, 31.538889, 22.067289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913246, 31.705055, 22.430965>,  <37.920036, 31.804754, 22.649172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913246, 31.705055, 22.430965>,  <37.901932, 31.538889, 22.067289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913246, 31.705055, 22.430965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052978, -0.908901, 0.413634,
		0.998195, 0.036466, -0.047720,
		0.028289, 0.415415, 0.909192,
		37.921734, 31.829679, 22.703724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543682, 31.192404, 22.405432>,  <37.901932, 31.538889, 22.067289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543682, 31.192404, 22.405432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.304867, 31.340633, 22.690029>,  <38.161579, 31.429571, 22.860788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.304867, 31.340633, 22.690029>,  <38.543682, 31.192404, 22.405432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304867, 31.340633, 22.690029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232786, -0.768722, 0.595715,
		0.767698, 0.521289, 0.372689,
		-0.597035, 0.370572, 0.711495,
		38.125755, 31.451805, 22.903479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952702, 31.125195, 23.110256>,  <38.543682, 31.192404, 22.405432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952702, 31.125195, 23.110256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.562332, 31.144512, 23.195339>,  <38.328110, 31.156103, 23.246389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.562332, 31.144512, 23.195339>,  <38.952702, 31.125195, 23.110256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562332, 31.144512, 23.195339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124427, -0.677678, 0.724756,
		0.179149, 0.733771, 0.655351,
		-0.975922, 0.048296, 0.212706,
		38.269554, 31.159000, 23.259151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985615, 30.948502, 23.820835>,  <38.952702, 31.125195, 23.110256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985615, 30.948502, 23.820835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.606922, 30.911312, 23.697514>,  <38.379707, 30.888998, 23.623520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.606922, 30.911312, 23.697514>,  <38.985615, 30.948502, 23.820835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606922, 30.911312, 23.697514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132210, -0.760772, 0.635411,
		-0.293628, 0.642325, 0.707955,
		-0.946733, -0.092976, -0.308306,
		38.322903, 30.883419, 23.605022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607365, 31.039972, 24.446449>,  <38.985615, 30.948502, 23.820835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607365, 31.039972, 24.446449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.374557, 30.851860, 24.181091>,  <38.234871, 30.738993, 24.021877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.374557, 30.851860, 24.181091>,  <38.607365, 31.039972, 24.446449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374557, 30.851860, 24.181091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385427, -0.558809, 0.734288,
		-0.716030, 0.683060, 0.143980,
		-0.582020, -0.470278, -0.663394,
		38.199951, 30.710777, 23.982073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121944, 30.985468, 24.923889>,  <38.607365, 31.039972, 24.446449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121944, 30.985468, 24.923889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030167, 30.734608, 24.626156>,  <37.975098, 30.584091, 24.447515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030167, 30.734608, 24.626156>,  <38.121944, 30.985468, 24.923889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030167, 30.734608, 24.626156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299648, -0.682080, 0.667066,
		-0.926048, 0.376096, -0.031422,
		-0.229449, -0.627151, -0.744335,
		37.961330, 30.546463, 24.402855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337139, 30.762543, 24.923012>,  <38.121944, 30.985468, 24.923889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337139, 30.762543, 24.923012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551205, 30.484432, 24.731102>,  <37.679646, 30.317566, 24.615955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551205, 30.484432, 24.731102>,  <37.337139, 30.762543, 24.923012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551205, 30.484432, 24.731102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323949, -0.693446, 0.643575,
		-0.780162, -0.188998, -0.596345,
		0.535168, -0.695278, -0.479775,
		37.711754, 30.275848, 24.587170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884586, 30.238554, 24.984526>,  <37.337139, 30.762543, 24.923012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884586, 30.238554, 24.984526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.244720, 30.083347, 24.905693>,  <37.460800, 29.990223, 24.858393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.244720, 30.083347, 24.905693>,  <36.884586, 30.238554, 24.984526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244720, 30.083347, 24.905693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211779, -0.786242, 0.580493,
		-0.380195, -0.480901, -0.790055,
		0.900334, -0.388017, -0.197081,
		37.514820, 29.966942, 24.846569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813488, 29.508333, 24.842339>,  <36.884586, 30.238554, 24.984526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813488, 29.508333, 24.842339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199116, 29.557655, 24.936462>,  <37.430492, 29.587248, 24.992937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199116, 29.557655, 24.936462>,  <36.813488, 29.508333, 24.842339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199116, 29.557655, 24.936462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028002, -0.833657, 0.551572,
		0.264178, -0.538342, -0.800249,
		0.964067, 0.123305, 0.235308,
		37.488335, 29.594646, 25.007055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039047, 28.738256, 24.912907>,  <36.813488, 29.508333, 24.842339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039047, 28.738256, 24.912907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280567, 28.985783, 25.113899>,  <37.425480, 29.134298, 25.234495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280567, 28.985783, 25.113899>,  <37.039047, 28.738256, 24.912907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280567, 28.985783, 25.113899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063569, -0.665734, 0.743476,
		0.794594, -0.416971, -0.441311,
		0.603804, 0.618815, 0.502482,
		37.461708, 29.171427, 25.264645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483982, 28.253906, 25.247589>,  <37.039047, 28.738256, 24.912907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483982, 28.253906, 25.247589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559448, 28.587696, 25.454685>,  <37.604729, 28.787970, 25.578943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559448, 28.587696, 25.454685>,  <37.483982, 28.253906, 25.247589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559448, 28.587696, 25.454685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064899, -0.536651, 0.841305,
		0.979894, -0.125127, -0.155406,
		0.188669, 0.834475, 0.517740,
		37.616051, 28.838039, 25.610008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943344, 28.035742, 25.811188>,  <37.483982, 28.253906, 25.247589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943344, 28.035742, 25.811188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.828125, 28.395363, 25.943089>,  <37.758991, 28.611135, 26.022228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.828125, 28.395363, 25.943089>,  <37.943344, 28.035742, 25.811188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828125, 28.395363, 25.943089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107155, -0.311922, 0.944046,
		0.951601, 0.307267, -0.006489,
		-0.288050, 0.899050, 0.329751,
		37.741711, 28.665077, 26.042013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494465, 28.304396, 26.211573>,  <37.943344, 28.035742, 25.811188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494465, 28.304396, 26.211573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.136974, 28.437717, 26.331676>,  <37.922478, 28.517710, 26.403738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.136974, 28.437717, 26.331676>,  <38.494465, 28.304396, 26.211573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136974, 28.437717, 26.331676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146209, -0.416352, 0.897371,
		0.424110, 0.845908, 0.323374,
		-0.893730, 0.333304, 0.300259,
		37.868855, 28.537708, 26.421755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.803942, 23.676662, 27.502563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.989304, 23.874763, 27.796497>,  <27.100521, 23.993624, 27.972858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.989304, 23.874763, 27.796497>,  <26.803942, 23.676662, 27.502563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989304, 23.874763, 27.796497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259024, -0.868732, 0.422151,
		0.847446, -0.005287, -0.530856,
		0.463403, 0.495254, 0.734834,
		27.128325, 24.023340, 28.016947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497934, 23.382183, 27.549913>,  <26.803942, 23.676662, 27.502563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497934, 23.382183, 27.549913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.451057, 23.566898, 27.901600>,  <27.422932, 23.677727, 28.112612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.451057, 23.566898, 27.901600>,  <27.497934, 23.382183, 27.549913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451057, 23.566898, 27.901600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433490, -0.772737, 0.463642,
		0.893506, 0.435466, -0.109622,
		-0.117191, 0.461787, 0.879215,
		27.415899, 23.705435, 28.165365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090218, 23.262064, 27.771551>,  <27.497934, 23.382183, 27.549913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090218, 23.262064, 27.771551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.845192, 23.339512, 28.078087>,  <27.698175, 23.385981, 28.262009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.845192, 23.339512, 28.078087>,  <28.090218, 23.262064, 27.771551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845192, 23.339512, 28.078087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318654, -0.826761, 0.463601,
		0.723342, 0.528183, 0.444747,
		-0.612565, 0.193621, 0.766339,
		27.661423, 23.397598, 28.307989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529865, 23.390072, 28.349386>,  <28.090218, 23.262064, 27.771551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529865, 23.390072, 28.349386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.170872, 23.299992, 28.501072>,  <27.955475, 23.245943, 28.592083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.170872, 23.299992, 28.501072>,  <28.529865, 23.390072, 28.349386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170872, 23.299992, 28.501072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408835, -0.747342, 0.523768,
		0.165450, 0.625111, 0.762800,
		-0.897486, -0.225202, 0.379214,
		27.901627, 23.232431, 28.614836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731096, 23.352861, 29.018568>,  <28.529865, 23.390072, 28.349386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731096, 23.352861, 29.018568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.375374, 23.171349, 28.995899>,  <28.161940, 23.062441, 28.982298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.375374, 23.171349, 28.995899>,  <28.731096, 23.352861, 29.018568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375374, 23.171349, 28.995899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331151, -0.724480, 0.604540,
		-0.315388, 0.518855, 0.794556,
		-0.889308, -0.453783, -0.056673,
		28.108582, 23.035213, 28.978897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695831, 23.096733, 29.572878>,  <28.731096, 23.352861, 29.018568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695831, 23.096733, 29.572878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420027, 22.886456, 29.373592>,  <28.254543, 22.760288, 29.254021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420027, 22.886456, 29.373592>,  <28.695831, 23.096733, 29.572878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420027, 22.886456, 29.373592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167604, -0.785022, 0.596363,
		-0.704614, 0.327697, 0.629391,
		-0.689513, -0.525694, -0.498215,
		28.213173, 22.728746, 29.224129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288553, 22.810976, 30.048414>,  <28.695831, 23.096733, 29.572878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288553, 22.810976, 30.048414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.304920, 22.596828, 29.710964>,  <28.314741, 22.468340, 29.508493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.304920, 22.596828, 29.710964>,  <28.288553, 22.810976, 30.048414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304920, 22.596828, 29.710964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369100, -0.776512, 0.510681,
		-0.928488, -0.332279, 0.165831,
		0.040918, -0.535370, -0.843626,
		28.317196, 22.436218, 29.457876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080309, 22.152208, 30.241091>,  <28.288553, 22.810976, 30.048414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080309, 22.152208, 30.241091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.243416, 22.076500, 29.883789>,  <28.341280, 22.031075, 29.669409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.243416, 22.076500, 29.883789>,  <28.080309, 22.152208, 30.241091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243416, 22.076500, 29.883789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435489, -0.819532, 0.372448,
		-0.802543, -0.540875, -0.251754,
		0.407768, -0.189269, -0.893254,
		28.365746, 22.019718, 29.615812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776691, 21.447605, 30.005434>,  <28.080309, 22.152208, 30.241091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776691, 21.447605, 30.005434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138165, 21.521740, 29.851028>,  <28.355049, 21.566221, 29.758385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138165, 21.521740, 29.851028>,  <27.776691, 21.447605, 30.005434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138165, 21.521740, 29.851028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284631, -0.933488, 0.218139,
		-0.319911, -0.307000, -0.896331,
		0.903683, 0.185339, -0.386015,
		28.409269, 21.577341, 29.735224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016775, 20.900118, 29.645893>,  <27.776691, 21.447605, 30.005434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016775, 20.900118, 29.645893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.362864, 21.097336, 29.682343>,  <28.570517, 21.215666, 29.704212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.362864, 21.097336, 29.682343>,  <28.016775, 20.900118, 29.645893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362864, 21.097336, 29.682343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476379, -0.865051, 0.157325,
		0.156396, -0.092710, -0.983334,
		0.865219, 0.493044, 0.091125,
		28.622429, 21.245249, 29.709681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540146, 20.554132, 29.296726>,  <28.016775, 20.900118, 29.645893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540146, 20.554132, 29.296726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.793167, 20.766800, 29.522011>,  <28.944981, 20.894400, 29.657181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.793167, 20.766800, 29.522011>,  <28.540146, 20.554132, 29.296726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793167, 20.766800, 29.522011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428932, -0.845953, 0.316831,
		0.644899, 0.041167, -0.763159,
		0.632553, 0.531667, 0.563212,
		28.982933, 20.926300, 29.690975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257010, 20.332142, 29.208298>,  <28.540146, 20.554132, 29.296726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257010, 20.332142, 29.208298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.300131, 20.509251, 29.564350>,  <29.326004, 20.615515, 29.777981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.300131, 20.509251, 29.564350>,  <29.257010, 20.332142, 29.208298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300131, 20.509251, 29.564350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434653, -0.826235, 0.358346,
		0.894123, 0.348268, -0.281522,
		0.107803, 0.442770, 0.890131,
		29.332472, 20.642082, 29.831390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924150, 20.341753, 29.367022>,  <29.257010, 20.332142, 29.208298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924150, 20.341753, 29.367022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.701502, 20.341660, 29.699329>,  <29.567913, 20.341604, 29.898714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.701502, 20.341660, 29.699329>,  <29.924150, 20.341753, 29.367022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701502, 20.341660, 29.699329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396102, -0.879091, 0.265145,
		0.730259, 0.476653, 0.489411,
		-0.556620, -0.000232, 0.830767,
		29.534515, 20.341589, 29.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164257, 19.753038, 29.740128>,  <29.924150, 20.341753, 29.367022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164257, 19.753038, 29.740128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.239309, 19.619522, 30.109642>,  <30.284340, 19.539412, 30.331350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.239309, 19.619522, 30.109642>,  <30.164257, 19.753038, 29.740128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239309, 19.619522, 30.109642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500587, -0.841681, -0.202450,
		0.845108, -0.424449, -0.325016,
		0.187630, -0.333791, 0.923785,
		30.295599, 19.519384, 30.386778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810013, 19.449301, 29.517902>,  <30.164257, 19.753038, 29.740128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810013, 19.449301, 29.517902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.181961, 19.463467, 29.371433>,  <31.405130, 19.471966, 29.283552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.181961, 19.463467, 29.371433>,  <30.810013, 19.449301, 29.517902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181961, 19.463467, 29.371433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226618, 0.839225, -0.494314,
		0.289795, 0.542630, 0.788397,
		0.929872, 0.035415, -0.366173,
		31.460922, 19.474091, 29.261581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089615, 20.127861, 29.639223>,  <30.810013, 19.449301, 29.517902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089615, 20.127861, 29.639223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278738, 19.967285, 29.325459>,  <31.392212, 19.870939, 29.137199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278738, 19.967285, 29.325459>,  <31.089615, 20.127861, 29.639223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278738, 19.967285, 29.325459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209150, 0.813631, -0.542458,
		0.855985, 0.420538, 0.300730,
		0.472807, -0.401438, -0.784411,
		31.420580, 19.846853, 29.090136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648800, 20.601826, 29.386080>,  <31.089615, 20.127861, 29.639223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648800, 20.601826, 29.386080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558172, 20.351761, 29.087326>,  <31.503796, 20.201721, 28.908073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558172, 20.351761, 29.087326>,  <31.648800, 20.601826, 29.386080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558172, 20.351761, 29.087326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106761, 0.746265, -0.657032,
		0.968127, -0.228600, -0.102336,
		-0.226568, -0.625164, -0.746885,
		31.490202, 20.164211, 28.863260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016506, 20.864565, 28.780535>,  <31.648800, 20.601826, 29.386080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016506, 20.864565, 28.780535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760134, 20.608360, 28.611320>,  <31.606312, 20.454638, 28.509792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760134, 20.608360, 28.611320>,  <32.016506, 20.864565, 28.780535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760134, 20.608360, 28.611320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189027, 0.665839, -0.721753,
		0.743966, -0.382624, -0.547827,
		-0.640924, -0.640513, -0.423036,
		31.567856, 20.416206, 28.484411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175365, 20.784040, 28.037169>,  <32.016506, 20.864565, 28.780535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175365, 20.784040, 28.037169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795736, 20.667263, 28.084553>,  <31.567959, 20.597197, 28.112984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795736, 20.667263, 28.084553>,  <32.175365, 20.784040, 28.037169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795736, 20.667263, 28.084553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277888, 0.598488, -0.751392,
		0.148463, -0.746044, -0.649135,
		-0.949072, -0.291941, 0.118463,
		31.511015, 20.579681, 28.120092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980656, 20.638651, 27.389370>,  <32.175365, 20.784040, 28.037169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980656, 20.638651, 27.389370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637354, 20.680595, 27.590328>,  <31.431372, 20.705761, 27.710903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637354, 20.680595, 27.590328>,  <31.980656, 20.638651, 27.389370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637354, 20.680595, 27.590328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352690, 0.590633, -0.725784,
		-0.372837, -0.800098, -0.469931,
		-0.858255, 0.104859, 0.502396,
		31.379877, 20.712053, 27.741047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423233, 20.555813, 26.958761>,  <31.980656, 20.638651, 27.389370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423233, 20.555813, 26.958761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278481, 20.801834, 27.238976>,  <31.191629, 20.949448, 27.407104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278481, 20.801834, 27.238976>,  <31.423233, 20.555813, 26.958761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278481, 20.801834, 27.238976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216311, 0.675557, -0.704864,
		-0.906781, -0.406610, -0.111427,
		-0.361880, 0.615054, 0.700537,
		31.169916, 20.986351, 27.449137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900721, 20.944544, 26.646957>,  <31.423233, 20.555813, 26.958761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900721, 20.944544, 26.646957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.947884, 21.157757, 26.982094>,  <30.976181, 21.285685, 27.183176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.947884, 21.157757, 26.982094>,  <30.900721, 20.944544, 26.646957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947884, 21.157757, 26.982094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166856, 0.842364, -0.512427,
		-0.978906, -0.079379, 0.188261,
		0.117908, 0.533031, 0.837840,
		30.983255, 21.317665, 27.233446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329424, 21.302246, 26.646444>,  <30.900721, 20.944544, 26.646957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329424, 21.302246, 26.646444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.581125, 21.500729, 26.885715>,  <30.732145, 21.619818, 27.029278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.581125, 21.500729, 26.885715>,  <30.329424, 21.302246, 26.646444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581125, 21.500729, 26.885715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356214, 0.868193, -0.345475,
		-0.690763, 0.004312, 0.723069,
		0.629253, 0.496208, 0.598179,
		30.769901, 21.649591, 27.065168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924101, 21.698326, 27.048780>,  <30.329424, 21.302246, 26.646444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924101, 21.698326, 27.048780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284569, 21.871174, 27.035099>,  <30.500849, 21.974882, 27.026890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284569, 21.871174, 27.035099>,  <29.924101, 21.698326, 27.048780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284569, 21.871174, 27.035099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421864, 0.856169, -0.298337,
		-0.099634, 0.283281, 0.953847,
		0.901168, 0.432118, -0.034202,
		30.554920, 22.000809, 27.024837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819752, 22.439938, 27.261780>,  <29.924101, 21.698326, 27.048780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819752, 22.439938, 27.261780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.197639, 22.448193, 27.130890>,  <30.424372, 22.453146, 27.052357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.197639, 22.448193, 27.130890>,  <29.819752, 22.439938, 27.261780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197639, 22.448193, 27.130890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102716, 0.966406, -0.235603,
		0.311369, 0.256191, 0.915104,
		0.944722, 0.020637, -0.327224,
		30.481056, 22.454384, 27.032722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169146, 22.994501, 27.552034>,  <29.819752, 22.439938, 27.261780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169146, 22.994501, 27.552034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356909, 22.922783, 27.206200>,  <30.469566, 22.879753, 26.998699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356909, 22.922783, 27.206200>,  <30.169146, 22.994501, 27.552034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356909, 22.922783, 27.206200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044962, 0.973044, -0.226196,
		0.881837, 0.145052, 0.448692,
		0.469407, -0.179294, -0.864587,
		30.497730, 22.868996, 26.946823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593338, 23.584923, 27.520231>,  <30.169146, 22.994501, 27.552034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593338, 23.584923, 27.520231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585138, 23.418396, 27.156635>,  <30.580217, 23.318480, 26.938478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585138, 23.418396, 27.156635>,  <30.593338, 23.584923, 27.520231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585138, 23.418396, 27.156635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028431, 0.909055, -0.415704,
		0.999386, 0.017322, -0.030473,
		-0.020501, -0.416315, -0.908989,
		30.578987, 23.293501, 26.883938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238102, 23.841301, 27.135685>,  <30.593338, 23.584923, 27.520231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238102, 23.841301, 27.135685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.952274, 23.712082, 26.887482>,  <30.780777, 23.634550, 26.738560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.952274, 23.712082, 26.887482>,  <31.238102, 23.841301, 27.135685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952274, 23.712082, 26.887482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022195, 0.897014, -0.441444,
		0.699211, -0.301670, -0.648151,
		-0.714571, -0.323048, -0.620507,
		30.737904, 23.615168, 26.701330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012421, 23.800671, 27.126282>,  <31.238102, 23.841301, 27.135685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012421, 23.800671, 27.126282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259754, 24.026558, 27.344917>,  <32.408154, 24.162090, 27.476099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259754, 24.026558, 27.344917>,  <32.012421, 23.800671, 27.126282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259754, 24.026558, 27.344917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375165, -0.823214, 0.426110,
		0.690591, -0.058417, -0.720882,
		0.618332, 0.564718, 0.546589,
		32.445255, 24.195972, 27.508894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773460, 23.475346, 27.094728>,  <32.012421, 23.800671, 27.126282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773460, 23.475346, 27.094728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726166, 23.675426, 27.437847>,  <32.697788, 23.795475, 27.643719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726166, 23.675426, 27.437847>,  <32.773460, 23.475346, 27.094728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726166, 23.675426, 27.437847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383359, -0.773888, 0.504116,
		0.916000, 0.388450, -0.100253,
		-0.118239, 0.500204, 0.857797,
		32.690693, 23.825487, 27.695187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444309, 23.343916, 27.460131>,  <32.773460, 23.475346, 27.094728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444309, 23.343916, 27.460131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184380, 23.466923, 27.738171>,  <33.028423, 23.540728, 27.904995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184380, 23.466923, 27.738171>,  <33.444309, 23.343916, 27.460131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184380, 23.466923, 27.738171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278945, -0.754208, 0.594441,
		0.707052, 0.580175, 0.404321,
		-0.649822, 0.307517, 0.695101,
		32.989433, 23.559177, 27.946701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881943, 23.232708, 28.027657>,  <33.444309, 23.343916, 27.460131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881943, 23.232708, 28.027657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523895, 23.289322, 28.196766>,  <33.309067, 23.323290, 28.298231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523895, 23.289322, 28.196766>,  <33.881943, 23.232708, 28.027657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523895, 23.289322, 28.196766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234621, -0.656798, 0.716637,
		0.379105, 0.740664, 0.554703,
		-0.895116, 0.141536, 0.422771,
		33.255360, 23.331783, 28.323597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014729, 23.562700, 28.733541>,  <33.881943, 23.232708, 28.027657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014729, 23.562700, 28.733541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684525, 23.342739, 28.682716>,  <33.486404, 23.210762, 28.652222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684525, 23.342739, 28.682716>,  <34.014729, 23.562700, 28.733541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684525, 23.342739, 28.682716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369358, -0.696599, 0.615080,
		-0.426748, 0.460821, 0.778159,
		-0.825507, -0.549903, -0.127064,
		33.436874, 23.177769, 28.644598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037304, 23.170885, 29.393694>,  <34.014729, 23.562700, 28.733541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037304, 23.170885, 29.393694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752647, 22.997124, 29.172840>,  <33.581852, 22.892866, 29.040327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752647, 22.997124, 29.172840>,  <34.037304, 23.170885, 29.393694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752647, 22.997124, 29.172840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039478, -0.809400, 0.585930,
		-0.701429, 0.395176, 0.593155,
		-0.711645, -0.434405, -0.552136,
		33.539154, 22.866802, 29.007200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470558, 23.066628, 29.791893>,  <34.037304, 23.170885, 29.393694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470558, 23.066628, 29.791893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465302, 22.799675, 29.494053>,  <33.462147, 22.639503, 29.315350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465302, 22.799675, 29.494053>,  <33.470558, 23.066628, 29.791893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465302, 22.799675, 29.494053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050507, -0.744157, 0.666093,
		-0.998637, -0.028853, 0.043488,
		-0.013143, -0.667382, -0.744600,
		33.461357, 22.599461, 29.270674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037766, 23.162743, 30.398878>,  <33.470558, 23.066628, 29.791893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037766, 23.162743, 30.398878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108070, 23.314480, 30.762241>,  <33.150253, 23.405523, 30.980259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108070, 23.314480, 30.762241>,  <33.037766, 23.162743, 30.398878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108070, 23.314480, 30.762241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058541, 0.917113, -0.394305,
		-0.982691, 0.122481, 0.138983,
		0.175758, 0.379344, 0.908409,
		33.160797, 23.428284, 31.034763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496975, 23.647228, 30.501291>,  <33.037766, 23.162743, 30.398878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496975, 23.647228, 30.501291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795696, 23.755562, 30.744251>,  <32.974930, 23.820562, 30.890028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795696, 23.755562, 30.744251>,  <32.496975, 23.647228, 30.501291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795696, 23.755562, 30.744251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047439, 0.932687, -0.357552,
		-0.663352, 0.238207, 0.709381,
		0.746802, 0.270835, 0.607400,
		33.019737, 23.836813, 30.926472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219151, 24.184814, 30.913858>,  <32.496975, 23.647228, 30.501291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219151, 24.184814, 30.913858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611877, 24.239429, 30.966614>,  <32.847515, 24.272200, 30.998266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611877, 24.239429, 30.966614>,  <32.219151, 24.184814, 30.913858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611877, 24.239429, 30.966614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115405, 0.980928, -0.156405,
		-0.150728, 0.138340, 0.978848,
		0.981816, 0.136539, 0.131888,
		32.906422, 24.280392, 31.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270653, 24.829815, 31.245052>,  <32.219151, 24.184814, 30.913858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270653, 24.829815, 31.245052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633842, 24.773514, 31.087177>,  <32.851757, 24.739733, 30.992453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633842, 24.773514, 31.087177>,  <32.270653, 24.829815, 31.245052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633842, 24.773514, 31.087177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028066, 0.960212, -0.277859,
		0.418093, 0.241211, 0.875794,
		0.907971, -0.140751, -0.394688,
		32.906235, 24.731289, 30.968771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737125, 25.482080, 31.371931>,  <32.270653, 24.829815, 31.245052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737125, 25.482080, 31.371931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907593, 25.290054, 31.065228>,  <33.009872, 25.174839, 30.881205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907593, 25.290054, 31.065228>,  <32.737125, 25.482080, 31.371931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907593, 25.290054, 31.065228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024431, 0.841165, -0.540227,
		0.904314, 0.248960, 0.346749,
		0.426167, -0.480063, -0.766760,
		33.035442, 25.146036, 30.835199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294727, 25.938961, 31.201021>,  <32.737125, 25.482080, 31.371931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294727, 25.938961, 31.201021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227177, 25.716408, 30.875587>,  <33.186646, 25.582876, 30.680326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227177, 25.716408, 30.875587>,  <33.294727, 25.938961, 31.201021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227177, 25.716408, 30.875587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044660, 0.820273, -0.570225,
		0.984625, -0.132631, -0.113676,
		-0.168875, -0.556381, -0.813585,
		33.176514, 25.549494, 30.631512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596924, 26.306877, 30.573828>,  <33.294727, 25.938961, 31.201021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596924, 26.306877, 30.573828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319260, 26.061508, 30.423176>,  <33.152660, 25.914288, 30.332785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319260, 26.061508, 30.423176>,  <33.596924, 26.306877, 30.573828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319260, 26.061508, 30.423176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113894, 0.610238, -0.783988,
		0.710750, -0.501320, -0.493470,
		-0.694163, -0.613423, -0.376629,
		33.111012, 25.877481, 30.310186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.978821, 22.333282, 32.564568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.801813, 22.158669, 32.251232>,  <29.695608, 22.053900, 32.063232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.801813, 22.158669, 32.251232>,  <29.978821, 22.333282, 32.564568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801813, 22.158669, 32.251232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003629, 0.872639, -0.488353,
		0.896752, -0.218948, -0.384575,
		-0.442519, -0.436536, -0.783335,
		29.669058, 22.027708, 32.016232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394197, 22.540379, 32.000198>,  <29.978821, 22.333282, 32.564568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394197, 22.540379, 32.000198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.025946, 22.449650, 31.873081>,  <29.804995, 22.395212, 31.796810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.025946, 22.449650, 31.873081>,  <30.394197, 22.540379, 32.000198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025946, 22.449650, 31.873081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044686, 0.869808, -0.491363,
		0.387870, -0.438163, -0.810907,
		-0.920631, -0.226821, -0.317792,
		29.749756, 22.381603, 31.777744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370178, 22.737181, 31.322968>,  <30.394197, 22.540379, 32.000198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370178, 22.737181, 31.322968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.980049, 22.734043, 31.411228>,  <29.745972, 22.732161, 31.464184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.980049, 22.734043, 31.411228>,  <30.370178, 22.737181, 31.322968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980049, 22.734043, 31.411228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094710, 0.917616, -0.386019,
		-0.199444, -0.397390, -0.895714,
		-0.975322, -0.007844, 0.220650,
		29.687452, 22.731689, 31.477423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999920, 22.928835, 30.737980>,  <30.370178, 22.737181, 31.322968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999920, 22.928835, 30.737980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735979, 22.999500, 31.030113>,  <29.577614, 23.041899, 31.205393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735979, 22.999500, 31.030113>,  <29.999920, 22.928835, 30.737980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735979, 22.999500, 31.030113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250841, 0.864417, -0.435732,
		-0.708289, -0.470716, -0.526073,
		-0.659853, 0.176663, 0.730332,
		29.538023, 23.052500, 31.249212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474329, 23.249683, 30.367287>,  <29.999920, 22.928835, 30.737980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474329, 23.249683, 30.367287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.325766, 23.329258, 30.730049>,  <29.236628, 23.377003, 30.947706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.325766, 23.329258, 30.730049>,  <29.474329, 23.249683, 30.367287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325766, 23.329258, 30.730049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260670, 0.915148, -0.307499,
		-0.891127, -0.350611, -0.288035,
		-0.371407, 0.198938, 0.906907,
		29.214344, 23.388939, 31.002121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715153, 23.423553, 30.325987>,  <29.474329, 23.249683, 30.367287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715153, 23.423553, 30.325987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.861715, 23.602802, 30.652161>,  <28.949654, 23.710352, 30.847864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.861715, 23.602802, 30.652161>,  <28.715153, 23.423553, 30.325987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861715, 23.602802, 30.652161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474410, 0.843885, -0.250584,
		-0.800425, -0.295035, 0.521799,
		0.366407, 0.448121, 0.815435,
		28.971638, 23.737238, 30.896791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158995, 23.739189, 30.623892>,  <28.715153, 23.423553, 30.325987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158995, 23.739189, 30.623892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.469769, 23.932270, 30.785568>,  <28.656233, 24.048119, 30.882574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.469769, 23.932270, 30.785568>,  <28.158995, 23.739189, 30.623892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469769, 23.932270, 30.785568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504784, 0.861277, -0.058276,
		-0.376250, -0.158753, 0.912816,
		0.776936, 0.482701, 0.404191,
		28.702848, 24.077080, 30.906826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966595, 24.040342, 31.245926>,  <28.158995, 23.739189, 30.623892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966595, 24.040342, 31.245926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.284405, 24.248829, 31.121304>,  <28.475090, 24.373920, 31.046530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.284405, 24.248829, 31.121304>,  <27.966595, 24.040342, 31.245926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284405, 24.248829, 31.121304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478650, 0.853289, 0.206863,
		0.373665, -0.015232, 0.927438,
		0.794524, 0.521215, -0.311553,
		28.522762, 24.405193, 31.027838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980896, 24.626015, 31.736542>,  <27.966595, 24.040342, 31.245926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980896, 24.626015, 31.736542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.200529, 24.752922, 31.427258>,  <28.332308, 24.829067, 31.241688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.200529, 24.752922, 31.427258>,  <27.980896, 24.626015, 31.736542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200529, 24.752922, 31.427258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312462, 0.935985, 0.162171,
		0.775163, 0.152554, 0.613065,
		0.549080, 0.317269, -0.773208,
		28.365253, 24.848103, 31.195295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284943, 25.218561, 31.948605>,  <27.980896, 24.626015, 31.736542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284943, 25.218561, 31.948605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.297827, 25.225189, 31.548866>,  <28.305557, 25.229166, 31.309023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.297827, 25.225189, 31.548866>,  <28.284943, 25.218561, 31.948605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297827, 25.225189, 31.548866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315261, 0.948989, 0.005572,
		0.948459, 0.314875, 0.035788,
		0.032208, 0.016567, -0.999344,
		28.307489, 25.230160, 31.249063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548101, 25.916998, 31.741179>,  <28.284943, 25.218561, 31.948605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548101, 25.916998, 31.741179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373011, 25.786026, 31.406231>,  <28.267956, 25.707443, 31.205263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373011, 25.786026, 31.406231>,  <28.548101, 25.916998, 31.741179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373011, 25.786026, 31.406231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235941, 0.940525, -0.244428,
		0.867598, 0.090576, -0.488948,
		-0.437728, -0.327428, -0.837368,
		28.241692, 25.687798, 31.155020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826950, 26.402275, 31.312355>,  <28.548101, 25.916998, 31.741179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826950, 26.402275, 31.312355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.514317, 26.230145, 31.131714>,  <28.326736, 26.126867, 31.023329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.514317, 26.230145, 31.131714>,  <28.826950, 26.402275, 31.312355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514317, 26.230145, 31.131714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225957, 0.870096, -0.438037,
		0.581436, -0.240322, -0.777289,
		-0.781586, -0.430324, -0.451603,
		28.279840, 26.101048, 30.996233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452387, 26.285532, 30.975327>,  <28.826950, 26.402275, 31.312355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452387, 26.285532, 30.975327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.744820, 26.496510, 31.148449>,  <29.920280, 26.623096, 31.252323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.744820, 26.496510, 31.148449>,  <29.452387, 26.285532, 30.975327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744820, 26.496510, 31.148449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311068, -0.822249, 0.476596,
		0.607251, -0.213799, -0.765203,
		0.731083, 0.527444, 0.432806,
		29.964144, 26.654743, 31.278290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111197, 25.911320, 30.897209>,  <29.452387, 26.285532, 30.975327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111197, 25.911320, 30.897209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.155539, 26.141243, 31.221508>,  <30.182144, 26.279196, 31.416086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.155539, 26.141243, 31.221508>,  <30.111197, 25.911320, 30.897209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155539, 26.141243, 31.221508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474293, -0.747480, 0.465103,
		0.873360, 0.332972, -0.355488,
		0.110853, 0.574807, 0.810745,
		30.188795, 26.313684, 31.464731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584660, 25.568264, 31.282572>,  <30.111197, 25.911320, 30.897209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584660, 25.568264, 31.282572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480850, 25.837341, 31.559738>,  <30.418564, 25.998787, 31.726038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480850, 25.837341, 31.559738>,  <30.584660, 25.568264, 31.282572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480850, 25.837341, 31.559738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430000, -0.561963, 0.706610,
		0.864724, 0.481337, -0.143415,
		-0.259523, 0.672691, 0.692917,
		30.402992, 26.039148, 31.767612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142513, 25.708412, 31.687443>,  <30.584660, 25.568264, 31.282572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142513, 25.708412, 31.687443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841898, 25.818851, 31.927097>,  <30.661530, 25.885115, 32.070889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841898, 25.818851, 31.927097>,  <31.142513, 25.708412, 31.687443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841898, 25.818851, 31.927097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438917, -0.468740, 0.766573,
		0.492488, 0.839078, 0.231091,
		-0.751537, 0.276098, 0.599135,
		30.616438, 25.901680, 32.106838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450586, 25.861607, 32.317486>,  <31.142513, 25.708412, 31.687443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450586, 25.861607, 32.317486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.066374, 25.788555, 32.401413>,  <30.835846, 25.744724, 32.451771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.066374, 25.788555, 32.401413>,  <31.450586, 25.861607, 32.317486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066374, 25.788555, 32.401413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277593, -0.677710, 0.680919,
		0.017842, 0.712290, 0.701659,
		-0.960533, -0.182627, 0.209819,
		30.778214, 25.733767, 32.464359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453321, 25.850437, 33.052532>,  <31.450586, 25.861607, 32.317486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453321, 25.850437, 33.052532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.103725, 25.679024, 32.960880>,  <30.893969, 25.576176, 32.905888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.103725, 25.679024, 32.960880>,  <31.453321, 25.850437, 33.052532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103725, 25.679024, 32.960880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161565, -0.700944, 0.694676,
		-0.458301, 0.570119, 0.681853,
		-0.873989, -0.428534, -0.229132,
		30.841528, 25.550463, 32.892139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923820, 25.847563, 33.653713>,  <31.453321, 25.850437, 33.052532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923820, 25.847563, 33.653713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833084, 25.529865, 33.428246>,  <30.778643, 25.339247, 33.292965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833084, 25.529865, 33.428246>,  <30.923820, 25.847563, 33.653713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833084, 25.529865, 33.428246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013476, -0.581261, 0.813605,
		-0.973839, 0.176962, 0.142556,
		-0.226839, -0.794242, -0.563670,
		30.765032, 25.291594, 33.259144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630655, 25.446367, 34.119064>,  <30.923820, 25.847563, 33.653713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630655, 25.446367, 34.119064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.698164, 25.194752, 33.815533>,  <30.738670, 25.043783, 33.633411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.698164, 25.194752, 33.815533>,  <30.630655, 25.446367, 34.119064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698164, 25.194752, 33.815533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002827, -0.769565, 0.638562,
		-0.985651, -0.109918, -0.128104,
		0.168774, -0.629037, -0.758833,
		30.748796, 25.006041, 33.587883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029938, 25.049902, 34.177044>,  <30.630655, 25.446367, 34.119064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029938, 25.049902, 34.177044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324389, 24.854046, 33.990124>,  <30.501059, 24.736532, 33.877972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324389, 24.854046, 33.990124>,  <30.029938, 25.049902, 34.177044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324389, 24.854046, 33.990124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264742, -0.843698, 0.466996,
		-0.622919, -0.220055, -0.750698,
		0.736127, -0.489642, -0.467297,
		30.545227, 24.707153, 33.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639761, 24.352421, 33.965206>,  <30.029938, 25.049902, 34.177044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639761, 24.352421, 33.965206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.034580, 24.291985, 33.943630>,  <30.271471, 24.255722, 33.930687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.034580, 24.291985, 33.943630>,  <29.639761, 24.352421, 33.965206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034580, 24.291985, 33.943630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108375, -0.875859, 0.470240,
		-0.118291, -0.458304, -0.880888,
		0.987047, -0.151091, -0.053938,
		30.330694, 24.246656, 33.927448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720573, 23.669252, 33.836185>,  <29.639761, 24.352421, 33.965206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720573, 23.669252, 33.836185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.097742, 23.765884, 33.927868>,  <30.324043, 23.823864, 33.982880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.097742, 23.765884, 33.927868>,  <29.720573, 23.669252, 33.836185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097742, 23.765884, 33.927868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178392, -0.947628, 0.264911,
		0.281202, -0.208901, -0.936636,
		0.942922, 0.241582, 0.229208,
		30.380619, 23.838360, 33.996632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143332, 23.070042, 33.534302>,  <29.720573, 23.669252, 33.836185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143332, 23.070042, 33.534302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.349287, 23.229786, 33.837723>,  <30.472860, 23.325632, 34.019775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.349287, 23.229786, 33.837723>,  <30.143332, 23.070042, 33.534302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349287, 23.229786, 33.837723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223440, -0.916794, 0.331003,
		0.827625, -0.000940, -0.561281,
		0.514891, 0.399359, 0.758552,
		30.503754, 23.349594, 34.065289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710947, 22.549316, 33.666836>,  <30.143332, 23.070042, 33.534302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710947, 22.549316, 33.666836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.673695, 22.738564, 34.017262>,  <30.651342, 22.852112, 34.227516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.673695, 22.738564, 34.017262>,  <30.710947, 22.549316, 33.666836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673695, 22.738564, 34.017262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229984, -0.845870, 0.481260,
		0.968728, 0.246301, -0.030033,
		-0.093131, 0.473117, 0.876063,
		30.645756, 22.880499, 34.280079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239714, 22.333633, 34.089367>,  <30.710947, 22.549316, 33.666836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239714, 22.333633, 34.089367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.957802, 22.471420, 34.337440>,  <30.788654, 22.554092, 34.486286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.957802, 22.471420, 34.337440>,  <31.239714, 22.333633, 34.089367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957802, 22.471420, 34.337440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157263, -0.776593, 0.610058,
		0.691777, 0.527488, 0.493154,
		-0.704778, 0.344469, 0.620184,
		30.746368, 22.574760, 34.523495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802729, 22.148636, 33.632950>,  <31.239714, 22.333633, 34.089367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802729, 22.148636, 33.632950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.145943, 21.968128, 33.534859>,  <32.351871, 21.859823, 33.476006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.145943, 21.968128, 33.534859>,  <31.802729, 22.148636, 33.632950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145943, 21.968128, 33.534859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317759, 0.841555, -0.436823,
		0.403495, 0.296887, 0.865477,
		0.858034, -0.451269, -0.245225,
		32.403355, 21.832748, 33.461292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311283, 22.733837, 33.589581>,  <31.802729, 22.148636, 33.632950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311283, 22.733837, 33.589581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464508, 22.440891, 33.364403>,  <32.556442, 22.265123, 33.229298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464508, 22.440891, 33.364403>,  <32.311283, 22.733837, 33.589581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464508, 22.440891, 33.364403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426408, 0.680810, -0.595545,
		0.819412, -0.011911, 0.573081,
		0.383066, -0.732363, -0.562943,
		32.579426, 22.221182, 33.195518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986080, 22.956385, 33.266941>,  <32.311283, 22.733837, 33.589581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986080, 22.956385, 33.266941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888496, 22.625790, 33.064003>,  <32.829945, 22.427433, 32.942238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888496, 22.625790, 33.064003>,  <32.986080, 22.956385, 33.266941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888496, 22.625790, 33.064003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389776, 0.395478, -0.831668,
		0.888008, -0.400647, 0.225663,
		-0.243961, -0.826486, -0.507350,
		32.815308, 22.377844, 32.911797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605614, 22.667639, 32.944672>,  <32.986080, 22.956385, 33.266941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605614, 22.667639, 32.944672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285545, 22.560455, 32.730038>,  <33.093506, 22.496145, 32.601257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285545, 22.560455, 32.730038>,  <33.605614, 22.667639, 32.944672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285545, 22.560455, 32.730038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429700, 0.368040, -0.824563,
		0.418436, -0.890362, -0.179352,
		-0.800168, -0.267960, -0.536590,
		33.045494, 22.480068, 32.569061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882156, 22.405991, 32.275719>,  <33.605614, 22.667639, 32.944672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882156, 22.405991, 32.275719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.495174, 22.472260, 32.199219>,  <33.262985, 22.512020, 32.153316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.495174, 22.472260, 32.199219>,  <33.882156, 22.405991, 32.275719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495174, 22.472260, 32.199219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248441, 0.478613, -0.842144,
		-0.047982, -0.862254, -0.504198,
		-0.967458, 0.165671, -0.191254,
		33.204937, 22.521961, 32.141842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921322, 22.583981, 31.605682>,  <33.882156, 22.405991, 32.275719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921322, 22.583981, 31.605682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.538490, 22.686279, 31.660217>,  <33.308792, 22.747658, 31.692938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.538490, 22.686279, 31.660217>,  <33.921322, 22.583981, 31.605682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538490, 22.686279, 31.660217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043645, 0.592247, -0.804573,
		-0.286511, -0.764092, -0.577991,
		-0.957083, 0.255745, 0.136337,
		33.251366, 22.763002, 31.701118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546146, 22.547695, 30.884600>,  <33.921322, 22.583981, 31.605682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546146, 22.547695, 30.884600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.405865, 22.796616, 31.164528>,  <33.321697, 22.945969, 31.332485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.405865, 22.796616, 31.164528>,  <33.546146, 22.547695, 30.884600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405865, 22.796616, 31.164528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010375, 0.744655, -0.667369,
		-0.936429, -0.241310, -0.254698,
		-0.350705, 0.622301, 0.699820,
		33.300652, 22.983305, 31.374474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253010, 22.439859, 30.169958>,  <33.546146, 22.547695, 30.884600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253010, 22.439859, 30.169958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362785, 22.284283, 29.818184>,  <33.428650, 22.190937, 29.607119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362785, 22.284283, 29.818184>,  <33.253010, 22.439859, 30.169958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362785, 22.284283, 29.818184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053461, -0.906964, 0.417800,
		-0.960118, -0.161676, -0.228112,
		0.274437, -0.388943, -0.879436,
		33.445118, 22.167601, 29.554354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745941, 21.904850, 29.999947>,  <33.253010, 22.439859, 30.169958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745941, 21.904850, 29.999947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088680, 21.820621, 29.811703>,  <33.294323, 21.770084, 29.698757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088680, 21.820621, 29.811703>,  <32.745941, 21.904850, 29.999947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088680, 21.820621, 29.811703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098418, -0.962810, 0.251616,
		-0.506090, -0.169280, -0.845705,
		0.856847, -0.210574, -0.470608,
		33.345734, 21.757450, 29.670521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632133, 21.320747, 29.690493>,  <32.745941, 21.904850, 29.999947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632133, 21.320747, 29.690493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029354, 21.351158, 29.654556>,  <33.267685, 21.369406, 29.632994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029354, 21.351158, 29.654556>,  <32.632133, 21.320747, 29.690493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029354, 21.351158, 29.654556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105161, -0.915955, 0.387256,
		-0.052847, -0.394013, -0.917585,
		0.993050, 0.076029, -0.089840,
		33.327271, 21.373966, 29.627604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719360, 20.742270, 29.254799>,  <32.632133, 21.320747, 29.690493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719360, 20.742270, 29.254799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.061100, 20.839382, 29.438599>,  <33.266144, 20.897650, 29.548878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.061100, 20.839382, 29.438599>,  <32.719360, 20.742270, 29.254799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061100, 20.839382, 29.438599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166587, -0.965454, 0.200368,
		0.492271, -0.094638, -0.865282,
		0.854352, 0.242780, 0.459500,
		33.317406, 20.912216, 29.576448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276688, 20.186705, 29.092125>,  <32.719360, 20.742270, 29.254799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276688, 20.186705, 29.092125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423672, 20.334194, 29.433655>,  <33.511864, 20.422688, 29.638573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423672, 20.334194, 29.433655>,  <33.276688, 20.186705, 29.092125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423672, 20.334194, 29.433655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114176, -0.928992, 0.352048,
		0.923004, -0.031878, -0.383468,
		0.367462, 0.368725, 0.853823,
		33.533909, 20.444811, 29.689802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777439, 19.724836, 29.231142>,  <33.276688, 20.186705, 29.092125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777439, 19.724836, 29.231142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757599, 19.917355, 29.581203>,  <33.745693, 20.032866, 29.791241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757599, 19.917355, 29.581203>,  <33.777439, 19.724836, 29.231142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757599, 19.917355, 29.581203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234744, -0.846069, 0.478604,
		0.970791, 0.229177, -0.071014,
		-0.049603, 0.481295, 0.875154,
		33.742718, 20.061743, 29.843750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419796, 19.595095, 29.524246>,  <33.777439, 19.724836, 29.231142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419796, 19.595095, 29.524246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.161392, 19.699520, 29.811165>,  <34.006348, 19.762175, 29.983316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.161392, 19.699520, 29.811165>,  <34.419796, 19.595095, 29.524246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161392, 19.699520, 29.811165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285688, -0.788709, 0.544354,
		0.707848, 0.556582, 0.434934,
		-0.646014, 0.261064, 0.717295,
		33.967587, 19.777840, 30.026354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784328, 19.366655, 30.165844>,  <34.419796, 19.595095, 29.524246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784328, 19.366655, 30.165844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398952, 19.390621, 30.270306>,  <34.167728, 19.405001, 30.332983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398952, 19.390621, 30.270306>,  <34.784328, 19.366655, 30.165844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398952, 19.390621, 30.270306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085778, -0.854415, 0.512462,
		0.253839, 0.516126, 0.818034,
		-0.963436, 0.059913, 0.261156,
		34.109921, 19.408594, 30.348652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758320, 19.429314, 30.949980>,  <34.784328, 19.366655, 30.165844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758320, 19.429314, 30.949980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415661, 19.290882, 30.796936>,  <34.210068, 19.207823, 30.705111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415661, 19.290882, 30.796936>,  <34.758320, 19.429314, 30.949980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415661, 19.290882, 30.796936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124420, -0.858320, 0.497802,
		-0.500680, 0.378835, 0.778334,
		-0.856644, -0.346079, -0.382609,
		34.158669, 19.187057, 30.682154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.422871, 32.763176, 21.619646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114723, 32.521912, 21.536964>,  <29.929834, 32.377151, 21.487356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114723, 32.521912, 21.536964>,  <30.422871, 32.763176, 21.619646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114723, 32.521912, 21.536964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131346, -0.467364, 0.874253,
		-0.623923, 0.646348, 0.439266,
		-0.770369, -0.603163, -0.206704,
		29.883612, 32.340961, 21.474953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935350, 32.729393, 22.139423>,  <30.422871, 32.763176, 21.619646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935350, 32.729393, 22.139423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857483, 32.382648, 21.955833>,  <29.810762, 32.174603, 21.845678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857483, 32.382648, 21.955833>,  <29.935350, 32.729393, 22.139423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857483, 32.382648, 21.955833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086098, -0.451021, 0.888351,
		-0.977083, 0.212451, 0.013165,
		-0.194669, -0.866859, -0.458977,
		29.799082, 32.122589, 21.818140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360733, 32.342915, 22.487194>,  <29.935350, 32.729393, 22.139423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360733, 32.342915, 22.487194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564049, 32.062717, 22.286812>,  <29.686039, 31.894600, 22.166582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564049, 32.062717, 22.286812>,  <29.360733, 32.342915, 22.487194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564049, 32.062717, 22.286812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025516, -0.593697, 0.804284,
		-0.860808, -0.396027, -0.319644,
		0.508290, -0.700490, -0.500954,
		29.716536, 31.852570, 22.136526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090519, 31.669655, 22.781702>,  <29.360733, 32.342915, 22.487194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090519, 31.669655, 22.781702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432331, 31.584747, 22.592083>,  <29.637419, 31.533802, 22.478312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432331, 31.584747, 22.592083>,  <29.090519, 31.669655, 22.781702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432331, 31.584747, 22.592083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240009, -0.648020, 0.722818,
		-0.460624, -0.731445, -0.502806,
		0.854529, -0.212269, -0.474047,
		29.688690, 31.521067, 22.449869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129810, 30.921373, 22.779339>,  <29.090519, 31.669655, 22.781702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129810, 30.921373, 22.779339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508942, 31.027119, 22.708080>,  <29.736420, 31.090567, 22.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508942, 31.027119, 22.708080>,  <29.129810, 30.921373, 22.779339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508942, 31.027119, 22.708080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317929, -0.742918, 0.589062,
		0.023377, -0.614967, -0.788207,
		0.947826, 0.264364, -0.178148,
		29.793289, 31.106428, 22.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495113, 30.311998, 22.619131>,  <29.129810, 30.921373, 22.779339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495113, 30.311998, 22.619131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807453, 30.543449, 22.713333>,  <29.994858, 30.682320, 22.769854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807453, 30.543449, 22.713333>,  <29.495113, 30.311998, 22.619131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807453, 30.543449, 22.713333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400940, -0.753265, 0.521382,
		0.479084, -0.312698, -0.820182,
		0.780849, 0.578630, 0.235504,
		30.041708, 30.717039, 22.783985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068680, 29.878685, 22.546015>,  <29.495113, 30.311998, 22.619131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068680, 29.878685, 22.546015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182928, 30.179966, 22.783031>,  <30.251478, 30.360735, 22.925241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182928, 30.179966, 22.783031>,  <30.068680, 29.878685, 22.546015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182928, 30.179966, 22.783031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493733, -0.645580, 0.582626,
		0.821369, 0.126147, -0.556273,
		0.285623, 0.753202, 0.592543,
		30.268616, 30.405926, 22.960794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790813, 29.794689, 22.588894>,  <30.068680, 29.878685, 22.546015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790813, 29.794689, 22.588894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689075, 29.982685, 22.926987>,  <30.628033, 30.095482, 23.129843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689075, 29.982685, 22.926987>,  <30.790813, 29.794689, 22.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689075, 29.982685, 22.926987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548658, -0.649596, 0.526307,
		0.796419, 0.597607, -0.092643,
		-0.254344, 0.469990, 0.845232,
		30.612772, 30.123682, 23.180557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443449, 29.867819, 22.842289>,  <30.790813, 29.794689, 22.588894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443449, 29.867819, 22.842289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187225, 29.919926, 23.145000>,  <31.033491, 29.951189, 23.326628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187225, 29.919926, 23.145000>,  <31.443449, 29.867819, 22.842289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187225, 29.919926, 23.145000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483655, -0.697030, 0.529364,
		0.596456, 0.705109, 0.383486,
		-0.640561, 0.130268, 0.756777,
		30.995056, 29.959005, 23.372034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860329, 29.805908, 23.418339>,  <31.443449, 29.867819, 22.842289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860329, 29.805908, 23.418339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481318, 29.724133, 23.516644>,  <31.253912, 29.675068, 23.575626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481318, 29.724133, 23.516644>,  <31.860329, 29.805908, 23.418339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481318, 29.724133, 23.516644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310225, -0.773623, 0.552510,
		0.077174, 0.599759, 0.796450,
		-0.947526, -0.204439, 0.245764,
		31.197060, 29.662800, 23.590372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907240, 29.574614, 24.094713>,  <31.860329, 29.805908, 23.418339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907240, 29.574614, 24.094713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524750, 29.468987, 24.044277>,  <31.295256, 29.405611, 24.014015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524750, 29.468987, 24.044277>,  <31.907240, 29.574614, 24.094713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524750, 29.468987, 24.044277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168958, -0.850037, 0.498890,
		-0.238921, 0.455748, 0.857444,
		-0.956227, -0.264067, -0.126089,
		31.237883, 29.389767, 24.006451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577734, 29.435244, 24.789133>,  <31.907240, 29.574614, 24.094713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577734, 29.435244, 24.789133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418278, 29.212891, 24.497356>,  <31.322603, 29.079479, 24.322290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418278, 29.212891, 24.497356>,  <31.577734, 29.435244, 24.789133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418278, 29.212891, 24.497356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088307, -0.814940, 0.572778,
		-0.912846, 0.163918, 0.373957,
		-0.398641, -0.555881, -0.729439,
		31.298685, 29.046125, 24.278524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304104, 29.728148, 25.360376>,  <31.577734, 29.435244, 24.789133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304104, 29.728148, 25.360376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526514, 29.829441, 25.677036>,  <31.659960, 29.890217, 25.867031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526514, 29.829441, 25.677036>,  <31.304104, 29.728148, 25.360376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526514, 29.829441, 25.677036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046444, 0.941502, -0.333791,
		-0.829867, 0.222364, 0.511738,
		0.556026, 0.253235, 0.791649,
		31.693321, 29.905411, 25.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964663, 30.332306, 25.699289>,  <31.304104, 29.728148, 25.360376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964663, 30.332306, 25.699289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359779, 30.319641, 25.760303>,  <31.596849, 30.312042, 25.796911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359779, 30.319641, 25.760303>,  <30.964663, 30.332306, 25.699289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359779, 30.319641, 25.760303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086886, 0.924675, -0.370711,
		-0.129308, 0.379438, 0.916137,
		0.987791, -0.031663, 0.152535,
		31.656116, 30.310143, 25.806065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028049, 31.010036, 25.792439>,  <30.964663, 30.332306, 25.699289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028049, 31.010036, 25.792439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399540, 30.880077, 25.720985>,  <31.622435, 30.802101, 25.678114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399540, 30.880077, 25.720985>,  <31.028049, 31.010036, 25.792439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399540, 30.880077, 25.720985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234335, 0.887725, -0.396272,
		0.287325, 0.326168, 0.900588,
		0.928726, -0.324898, -0.178633,
		31.678158, 30.782608, 25.667395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419064, 31.589613, 25.786247>,  <31.028049, 31.010036, 25.792439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419064, 31.589613, 25.786247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697191, 31.346355, 25.633045>,  <31.864067, 31.200401, 25.541124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697191, 31.346355, 25.633045>,  <31.419064, 31.589613, 25.786247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697191, 31.346355, 25.633045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375972, 0.761961, -0.527315,
		0.612518, 0.222653, 0.758451,
		0.695318, -0.608146, -0.383004,
		31.905787, 31.163912, 25.518145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056419, 31.898026, 25.934462>,  <31.419064, 31.589613, 25.786247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056419, 31.898026, 25.934462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125526, 31.672764, 25.611225>,  <32.166992, 31.537607, 25.417284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125526, 31.672764, 25.611225>,  <32.056419, 31.898026, 25.934462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125526, 31.672764, 25.611225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445148, 0.776502, -0.445969,
		0.878632, -0.282672, 0.384840,
		0.172767, -0.563153, -0.808090,
		32.177357, 31.503819, 25.368797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780006, 31.836058, 25.814144>,  <32.056419, 31.898026, 25.934462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780006, 31.836058, 25.814144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585232, 31.814430, 25.465439>,  <32.468369, 31.801455, 25.256216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585232, 31.814430, 25.465439>,  <32.780006, 31.836058, 25.814144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585232, 31.814430, 25.465439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553277, 0.753208, -0.355754,
		0.675854, -0.655556, -0.336850,
		-0.486935, -0.054066, -0.871763,
		32.439152, 31.798210, 25.203909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279125, 32.086235, 25.431715>,  <32.780006, 31.836058, 25.814144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279125, 32.086235, 25.431715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949089, 32.109188, 25.206882>,  <32.751068, 32.122959, 25.071983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949089, 32.109188, 25.206882>,  <33.279125, 32.086235, 25.431715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949089, 32.109188, 25.206882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333895, 0.852050, -0.403143,
		0.455789, -0.520306, -0.722176,
		-0.825088, 0.057383, -0.562083,
		32.701561, 32.126404, 25.038258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560936, 32.124554, 24.842970>,  <33.279125, 32.086235, 25.431715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560936, 32.124554, 24.842970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192898, 32.275665, 24.801579>,  <32.972076, 32.366333, 24.776743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192898, 32.275665, 24.801579>,  <33.560936, 32.124554, 24.842970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192898, 32.275665, 24.801579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361859, 0.718665, -0.593783,
		-0.149955, -0.583781, -0.797944,
		-0.920093, 0.377783, -0.103479,
		32.916870, 32.389000, 24.770535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542755, 32.383965, 24.173716>,  <33.560936, 32.124554, 24.842970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542755, 32.383965, 24.173716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230869, 32.559296, 24.352562>,  <33.043736, 32.664494, 24.459869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230869, 32.559296, 24.352562>,  <33.542755, 32.383965, 24.173716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230869, 32.559296, 24.352562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205230, 0.853558, -0.478874,
		-0.591543, -0.281624, -0.755490,
		-0.779717, 0.438323, 0.447118,
		32.996956, 32.690792, 24.486698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177692, 32.806023, 23.648678>,  <33.542755, 32.383965, 24.173716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177692, 32.806023, 23.648678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090260, 32.976288, 23.999912>,  <33.037800, 33.078445, 24.210653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090260, 32.976288, 23.999912>,  <33.177692, 32.806023, 23.648678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090260, 32.976288, 23.999912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301403, 0.885296, -0.354128,
		-0.928104, 0.187251, -0.321807,
		-0.218584, 0.425661, 0.878085,
		33.024685, 33.103985, 24.263338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125599, 33.410534, 23.429512>,  <33.177692, 32.806023, 23.648678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125599, 33.410534, 23.429512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092735, 33.495319, 23.819038>,  <33.073017, 33.546192, 24.052755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092735, 33.495319, 23.819038>,  <33.125599, 33.410534, 23.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092735, 33.495319, 23.819038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252121, 0.949758, -0.185460,
		-0.964202, 0.230284, -0.131470,
		-0.082156, 0.211967, 0.973817,
		33.068089, 33.558910, 24.111183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695438, 34.067688, 23.546547>,  <33.125599, 33.410534, 23.429512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695438, 34.067688, 23.546547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935257, 33.999710, 23.859383>,  <33.079147, 33.958923, 24.047083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935257, 33.999710, 23.859383>,  <32.695438, 34.067688, 23.546547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935257, 33.999710, 23.859383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271597, 0.962411, 0.000921,
		-0.752845, 0.211860, 0.623169,
		0.599549, -0.169945, 0.782087,
		33.115120, 33.948727, 24.094009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680477, 34.728752, 23.961210>,  <32.695438, 34.067688, 23.546547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680477, 34.728752, 23.961210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002266, 34.543217, 24.109631>,  <33.195339, 34.431896, 24.198683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002266, 34.543217, 24.109631>,  <32.680477, 34.728752, 23.961210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002266, 34.543217, 24.109631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459882, 0.881730, 0.105169,
		-0.375947, 0.086033, 0.922639,
		0.804470, -0.463843, 0.371049,
		33.243607, 34.404064, 24.220945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832680, 35.082314, 24.491234>,  <32.680477, 34.728752, 23.961210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832680, 35.082314, 24.491234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158249, 34.905312, 24.340652>,  <33.353592, 34.799110, 24.250303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158249, 34.905312, 24.340652>,  <32.832680, 35.082314, 24.491234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158249, 34.905312, 24.340652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431961, 0.894245, -0.117199,
		0.388501, -0.067221, 0.918993,
		0.813927, -0.442501, -0.376453,
		33.402428, 34.772560, 24.227716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024044, 34.946583, 24.690891>,  <32.832680, 35.082314, 24.491234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024044, 34.946583, 24.690891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859625, 35.281677, 24.834686>,  <31.760973, 35.482735, 24.920963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859625, 35.281677, 24.834686>,  <32.024044, 34.946583, 24.690891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859625, 35.281677, 24.834686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036499, -0.378903, 0.924716,
		0.910882, 0.393224, 0.125170,
		-0.411048, 0.837739, 0.359489,
		31.736311, 35.532997, 24.942533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486626, 35.365780, 25.222879>,  <32.024044, 34.946583, 24.690891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486626, 35.365780, 25.222879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097942, 35.314232, 25.302059>,  <31.864733, 35.283302, 25.349567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097942, 35.314232, 25.302059>,  <32.486626, 35.365780, 25.222879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097942, 35.314232, 25.302059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236200, -0.527764, 0.815889,
		-0.000672, 0.839558, 0.543270,
		-0.971704, -0.128868, 0.197949,
		31.806431, 35.275570, 25.361444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501682, 35.454151, 25.904202>,  <32.486626, 35.365780, 25.222879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501682, 35.454151, 25.904202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153400, 35.272732, 25.828129>,  <31.944431, 35.163879, 25.782486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153400, 35.272732, 25.828129>,  <32.501682, 35.454151, 25.904202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153400, 35.272732, 25.828129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161595, -0.629062, 0.760373,
		-0.464501, 0.631328, 0.621018,
		-0.870704, -0.453548, -0.190180,
		31.892189, 35.136669, 25.771074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112358, 35.515102, 26.502373>,  <32.501682, 35.454151, 25.904202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112358, 35.515102, 26.502373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969961, 35.207798, 26.289566>,  <31.884523, 35.023415, 26.161882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969961, 35.207798, 26.289566>,  <32.112358, 35.515102, 26.502373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969961, 35.207798, 26.289566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131895, -0.522308, 0.842495,
		-0.925134, 0.370093, 0.084608,
		-0.355993, -0.768261, -0.532019,
		31.863163, 34.977318, 26.129961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546009, 35.366219, 26.864101>,  <32.112358, 35.515102, 26.502373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546009, 35.366219, 26.864101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613663, 35.045952, 26.634205>,  <31.654255, 34.853794, 26.496267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613663, 35.045952, 26.634205>,  <31.546009, 35.366219, 26.864101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613663, 35.045952, 26.634205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199407, -0.598884, 0.775612,
		-0.965210, -0.016574, -0.260950,
		0.169134, -0.800664, -0.574744,
		31.664404, 34.805752, 26.461782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995378, 34.946392, 27.080303>,  <31.546009, 35.366219, 26.864101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995378, 34.946392, 27.080303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270702, 34.707977, 26.914913>,  <31.435898, 34.564926, 26.815680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270702, 34.707977, 26.914913>,  <30.995378, 34.946392, 27.080303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270702, 34.707977, 26.914913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203142, -0.705555, 0.678915,
		-0.696375, -0.383324, -0.606732,
		0.688327, -0.596032, -0.413462,
		31.477196, 34.529163, 26.790871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760256, 34.232880, 27.092731>,  <30.995378, 34.946392, 27.080303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760256, 34.232880, 27.092731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149168, 34.160748, 27.033199>,  <31.382515, 34.117470, 26.997480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149168, 34.160748, 27.033199>,  <30.760256, 34.232880, 27.092731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149168, 34.160748, 27.033199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050777, -0.784194, 0.618434,
		-0.228235, -0.593735, -0.771614,
		0.972281, -0.180328, -0.148832,
		31.440853, 34.106647, 26.988550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791866, 33.445992, 27.051964>,  <30.760256, 34.232880, 27.092731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791866, 33.445992, 27.051964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160234, 33.568325, 27.148605>,  <31.381256, 33.641724, 27.206591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160234, 33.568325, 27.148605>,  <30.791866, 33.445992, 27.051964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160234, 33.568325, 27.148605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109461, -0.797892, 0.592778,
		0.374066, -0.519455, -0.768272,
		0.920920, 0.305834, 0.241604,
		31.436510, 33.660076, 27.221087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313032, 32.944530, 26.742949>,  <30.791866, 33.445992, 27.051964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313032, 32.944530, 26.742949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501812, 33.114460, 27.051956>,  <31.615080, 33.216415, 27.237362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501812, 33.114460, 27.051956>,  <31.313032, 32.944530, 26.742949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501812, 33.114460, 27.051956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257460, -0.904463, 0.340089,
		0.843194, 0.038388, -0.536238,
		0.471952, 0.424821, 0.772521,
		31.643398, 33.241905, 27.283712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795145, 32.476376, 26.865965>,  <31.313032, 32.944530, 26.742949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795145, 32.476376, 26.865965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811792, 32.700108, 27.197124>,  <31.821781, 32.834347, 27.395821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811792, 32.700108, 27.197124>,  <31.795145, 32.476376, 26.865965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811792, 32.700108, 27.197124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109589, -0.826172, 0.552658,
		0.993105, 0.067727, -0.095682,
		0.041620, 0.559333, 0.827897,
		31.824278, 32.867908, 27.445494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366650, 32.312401, 27.302689>,  <31.795145, 32.476376, 26.865965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366650, 32.312401, 27.302689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084633, 32.464088, 27.542393>,  <31.915422, 32.555099, 27.686214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084633, 32.464088, 27.542393>,  <32.366650, 32.312401, 27.302689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084633, 32.464088, 27.542393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006018, -0.848189, 0.529659,
		0.709141, 0.369825, 0.600290,
		-0.705041, 0.379216, 0.599261,
		31.873121, 32.577854, 27.722172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557571, 32.159492, 27.996574>,  <32.366650, 32.312401, 27.302689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557571, 32.159492, 27.996574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162376, 32.216785, 28.019783>,  <31.925261, 32.251163, 28.033709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162376, 32.216785, 28.019783>,  <32.557571, 32.159492, 27.996574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162376, 32.216785, 28.019783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065301, -0.727213, 0.683299,
		0.140065, 0.671301, 0.727830,
		-0.987987, 0.143235, 0.058021,
		31.865980, 32.259754, 28.037189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383995, 31.944702, 28.693203>,  <32.557571, 32.159492, 27.996574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383995, 31.944702, 28.693203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020340, 31.974525, 28.529293>,  <31.802147, 31.992420, 28.430946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020340, 31.974525, 28.529293>,  <32.383995, 31.944702, 28.693203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020340, 31.974525, 28.529293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341028, -0.698078, 0.629593,
		-0.239112, 0.712129, 0.660073,
		-0.909134, 0.074560, -0.409775,
		31.747601, 31.996893, 28.406361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883932, 32.129780, 29.270838>,  <32.383995, 31.944702, 28.693203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883932, 32.129780, 29.270838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689533, 31.973900, 28.957932>,  <31.572893, 31.880371, 28.770187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689533, 31.973900, 28.957932>,  <31.883932, 32.129780, 29.270838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689533, 31.973900, 28.957932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274667, -0.781620, 0.560026,
		-0.829677, 0.487033, 0.272827,
		-0.485998, -0.389704, -0.782264,
		31.543734, 31.856989, 28.723253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313265, 31.989491, 29.488585>,  <31.883932, 32.129780, 29.270838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313265, 31.989491, 29.488585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292814, 31.781223, 29.147694>,  <31.280544, 31.656263, 28.943159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292814, 31.781223, 29.147694>,  <31.313265, 31.989491, 29.488585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292814, 31.781223, 29.147694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543704, -0.701286, 0.461069,
		-0.837718, 0.486933, -0.247233,
		-0.051129, -0.520668, -0.852227,
		31.277475, 31.625023, 28.892025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590885, 31.729294, 29.407244>,  <31.313265, 31.989491, 29.488585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590885, 31.729294, 29.407244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798540, 31.488953, 29.164108>,  <30.923134, 31.344748, 29.018227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798540, 31.488953, 29.164108>,  <30.590885, 31.729294, 29.407244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798540, 31.488953, 29.164108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444083, -0.797274, 0.408833,
		-0.730264, 0.057691, -0.680725,
		0.519138, -0.600854, -0.607840,
		30.954281, 31.308697, 28.981756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149490, 31.291494, 29.195045>,  <30.590885, 31.729294, 29.407244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149490, 31.291494, 29.195045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480072, 31.090572, 29.093330>,  <30.678421, 30.970018, 29.032301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480072, 31.090572, 29.093330>,  <30.149490, 31.291494, 29.195045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480072, 31.090572, 29.093330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328962, -0.797375, 0.505942,
		-0.456901, -0.334486, -0.824233,
		0.826454, -0.502306, -0.254288,
		30.728008, 30.939880, 29.017044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938437, 30.666653, 28.881821>,  <30.149490, 31.291494, 29.195045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938437, 30.666653, 28.881821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311041, 30.604496, 29.013359>,  <30.534603, 30.567202, 29.092281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311041, 30.604496, 29.013359>,  <29.938437, 30.666653, 28.881821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311041, 30.604496, 29.013359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286041, -0.871435, 0.398474,
		0.224649, -0.465246, -0.856200,
		0.931511, -0.155391, 0.328847,
		30.590494, 30.557878, 29.112013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061468, 29.895157, 28.717558>,  <29.938437, 30.666653, 28.881821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061468, 29.895157, 28.717558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305771, 30.032223, 29.003090>,  <30.452353, 30.114462, 29.174410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305771, 30.032223, 29.003090>,  <30.061468, 29.895157, 28.717558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305771, 30.032223, 29.003090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149582, -0.835348, 0.528979,
		0.777560, -0.429854, -0.458940,
		0.610758, 0.342664, 0.713832,
		30.488998, 30.135021, 29.217239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590752, 29.442440, 28.861290>,  <30.061468, 29.895157, 28.717558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590752, 29.442440, 28.861290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598833, 29.651699, 29.202091>,  <30.603682, 29.777254, 29.406572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598833, 29.651699, 29.202091>,  <30.590752, 29.442440, 28.861290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598833, 29.651699, 29.202091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051469, -0.851590, 0.521676,
		0.998470, 0.033312, -0.044130,
		0.020202, 0.523149, 0.852002,
		30.604895, 29.808643, 29.457691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027792, 29.107483, 29.265846>,  <30.590752, 29.442440, 28.861290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027792, 29.107483, 29.265846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849096, 29.325809, 29.549397>,  <30.741879, 29.456806, 29.719526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849096, 29.325809, 29.549397>,  <31.027792, 29.107483, 29.265846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849096, 29.325809, 29.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029297, -0.782990, 0.621345,
		0.894185, 0.298347, 0.333801,
		-0.446739, 0.545817, 0.708878,
		30.715075, 29.489555, 29.762060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338741, 28.940773, 29.835470>,  <31.027792, 29.107483, 29.265846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338741, 28.940773, 29.835470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004219, 29.088474, 29.997578>,  <30.803505, 29.177095, 30.094843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004219, 29.088474, 29.997578>,  <31.338741, 28.940773, 29.835470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004219, 29.088474, 29.997578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055858, -0.677958, 0.732975,
		0.545410, 0.635629, 0.546355,
		-0.836306, 0.369254, 0.405270,
		30.753326, 29.199251, 30.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383890, 28.888050, 30.598637>,  <31.338741, 28.940773, 29.835470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383890, 28.888050, 30.598637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988825, 28.936413, 30.558823>,  <30.751785, 28.965431, 30.534933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988825, 28.936413, 30.558823>,  <31.383890, 28.888050, 30.598637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988825, 28.936413, 30.558823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153686, -0.870487, 0.467582,
		-0.030110, 0.477110, 0.878328,
		-0.987661, 0.120907, -0.099536,
		30.692526, 28.972685, 30.528961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000076, 28.785460, 31.291368>,  <31.383890, 28.888050, 30.598637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000076, 28.785460, 31.291368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732206, 28.722805, 31.000988>,  <30.571486, 28.685213, 30.826759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732206, 28.722805, 31.000988>,  <31.000076, 28.785460, 31.291368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732206, 28.722805, 31.000988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226624, -0.887780, 0.400609,
		-0.707233, 0.432795, 0.559026,
		-0.669674, -0.156636, -0.725949,
		30.531303, 28.675814, 30.783203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412663, 28.634809, 31.607183>,  <31.000076, 28.785460, 31.291368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412663, 28.634809, 31.607183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341404, 28.491718, 31.240513>,  <30.298649, 28.405865, 31.020510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341404, 28.491718, 31.240513>,  <30.412663, 28.634809, 31.607183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341404, 28.491718, 31.240513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382664, -0.833065, 0.399463,
		-0.906550, 0.421942, 0.011517,
		-0.178145, -0.357726, -0.916677,
		30.287960, 28.384401, 30.965509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762808, 28.137386, 31.612268>,  <30.412663, 28.634809, 31.607183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762808, 28.137386, 31.612268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965918, 28.030060, 31.284813>,  <30.087784, 27.965664, 31.088339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965918, 28.030060, 31.284813>,  <29.762808, 28.137386, 31.612268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965918, 28.030060, 31.284813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193154, -0.961526, 0.195343,
		-0.839559, 0.058934, -0.540063,
		0.507773, -0.268317, -0.818641,
		30.118250, 27.949564, 31.039221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300497, 27.770359, 31.211290>,  <29.762808, 28.137386, 31.612268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300497, 27.770359, 31.211290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672405, 27.662994, 31.110504>,  <29.895550, 27.598576, 31.050032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672405, 27.662994, 31.110504>,  <29.300497, 27.770359, 31.211290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672405, 27.662994, 31.110504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178969, -0.927647, 0.327782,
		-0.321716, -0.259667, -0.910534,
		0.929768, -0.268410, -0.251967,
		29.951336, 27.582472, 31.034914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160076, 27.079075, 31.066166>,  <29.300497, 27.770359, 31.211290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160076, 27.079075, 31.066166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555368, 27.112617, 31.117344>,  <29.792543, 27.132742, 31.148050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555368, 27.112617, 31.117344>,  <29.160076, 27.079075, 31.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555368, 27.112617, 31.117344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014820, -0.884922, 0.465504,
		0.152257, -0.458129, -0.875749,
		0.988230, 0.083855, 0.127946,
		29.851837, 27.137774, 31.155727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836964, 26.694574, 30.549562>,  <29.160076, 27.079075, 31.066166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836964, 26.694574, 30.549562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467785, 26.586216, 30.658951>,  <28.246277, 26.521202, 30.724585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467785, 26.586216, 30.658951>,  <28.836964, 26.694574, 30.549562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467785, 26.586216, 30.658951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336747, 0.912385, -0.232710,
		-0.186471, -0.306870, -0.933306,
		-0.922946, -0.270894, 0.273471,
		28.190901, 26.504948, 30.740992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459713, 26.962996, 30.101614>,  <28.836964, 26.694574, 30.549562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459713, 26.962996, 30.101614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163525, 26.876621, 30.356197>,  <27.985811, 26.824797, 30.508947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163525, 26.876621, 30.356197>,  <28.459713, 26.962996, 30.101614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163525, 26.876621, 30.356197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490863, 0.820609, -0.292668,
		-0.459085, -0.529125, -0.713630,
		-0.740468, -0.215935, 0.636457,
		27.941383, 26.811840, 30.547134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869301, 27.002779, 29.722082>,  <28.459713, 26.962996, 30.101614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869301, 27.002779, 29.722082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729132, 27.072067, 30.090256>,  <27.645031, 27.113640, 30.311159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729132, 27.072067, 30.090256>,  <27.869301, 27.002779, 29.722082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729132, 27.072067, 30.090256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547026, 0.759853, -0.351263,
		-0.760241, -0.626592, -0.171513,
		-0.350423, 0.173223, 0.920434,
		27.624004, 27.124033, 30.366386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141050, 27.113974, 29.660316>,  <27.869301, 27.002779, 29.722082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141050, 27.113974, 29.660316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230862, 27.276875, 30.014431>,  <27.284748, 27.374615, 30.226900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230862, 27.276875, 30.014431>,  <27.141050, 27.113974, 29.660316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230862, 27.276875, 30.014431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389623, 0.870222, -0.301508,
		-0.893185, -0.277230, 0.354066,
		0.224530, 0.407255, 0.885285,
		27.298220, 27.399052, 30.280016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482338, 27.381308, 29.868063>,  <27.141050, 27.113974, 29.660316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482338, 27.381308, 29.868063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772232, 27.585720, 30.052933>,  <26.946169, 27.708368, 30.163855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772232, 27.585720, 30.052933>,  <26.482338, 27.381308, 29.868063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772232, 27.585720, 30.052933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458556, 0.858372, -0.230050,
		-0.514281, -0.045207, 0.856429,
		0.724735, 0.511031, 0.462174,
		26.989653, 27.739029, 30.191586>
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
