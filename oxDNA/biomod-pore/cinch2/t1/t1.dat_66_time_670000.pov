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
	<42.979362, 32.916679, 22.765440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649998, 32.988621, 22.980717>,  <42.452377, 33.031784, 23.109882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649998, 32.988621, 22.980717>,  <42.979362, 32.916679, 22.765440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649998, 32.988621, 22.980717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564692, 0.353052, 0.745975,
		-0.055844, 0.918155, -0.392267,
		-0.823411, 0.179852, 0.538190,
		42.402973, 33.042576, 23.142174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141083, 33.635288, 23.104927>,  <42.979362, 32.916679, 22.765440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141083, 33.635288, 23.104927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874355, 33.381886, 23.261909>,  <42.714321, 33.229843, 23.356100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874355, 33.381886, 23.261909>,  <43.141083, 33.635288, 23.104927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874355, 33.381886, 23.261909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430670, 0.102195, 0.896705,
		-0.608180, 0.766955, 0.204689,
		-0.666814, -0.633511, 0.392457,
		42.674313, 33.191833, 23.379646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680599, 33.947426, 23.655653>,  <43.141083, 33.635288, 23.104927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680599, 33.947426, 23.655653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740700, 33.556232, 23.713589>,  <42.776760, 33.321518, 23.748350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740700, 33.556232, 23.713589>,  <42.680599, 33.947426, 23.655653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740700, 33.556232, 23.713589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299691, 0.184664, 0.935994,
		-0.942130, -0.097227, 0.320838,
		0.150251, -0.977980, 0.144839,
		42.785774, 33.262836, 23.757040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189487, 33.734016, 24.168297>,  <42.680599, 33.947426, 23.655653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189487, 33.734016, 24.168297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550175, 33.561897, 24.151520>,  <42.766586, 33.458626, 24.141453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550175, 33.561897, 24.151520>,  <42.189487, 33.734016, 24.168297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550175, 33.561897, 24.151520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237276, 0.411448, 0.880006,
		-0.361403, -0.803466, 0.473107,
		0.901714, -0.430293, -0.041944,
		42.820690, 33.432808, 24.138937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423580, 33.530552, 24.011824>,  <42.189487, 33.734016, 24.168297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423580, 33.530552, 24.011824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182549, 33.611385, 23.703003>,  <41.037930, 33.659885, 23.517710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182549, 33.611385, 23.703003>,  <41.423580, 33.530552, 24.011824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182549, 33.611385, 23.703003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258434, 0.865872, 0.428343,
		0.755058, 0.457634, -0.469531,
		-0.602578, 0.202081, -0.772051,
		41.001774, 33.672009, 23.471388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957558, 33.449039, 24.435005>,  <41.423580, 33.530552, 24.011824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957558, 33.449039, 24.435005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616100, 33.241039, 24.423061>,  <40.411224, 33.116238, 24.415895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616100, 33.241039, 24.423061>,  <40.957558, 33.449039, 24.435005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616100, 33.241039, 24.423061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520857, -0.852148, -0.050521,
		0.000828, -0.058679, 0.998277,
		-0.853644, -0.520001, -0.029858,
		40.360008, 33.085037, 24.414104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176632, 32.912327, 24.789730>,  <40.957558, 33.449039, 24.435005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176632, 32.912327, 24.789730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851974, 32.781223, 24.596317>,  <40.657181, 32.702560, 24.480268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851974, 32.781223, 24.596317>,  <41.176632, 32.912327, 24.789730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851974, 32.781223, 24.596317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366855, -0.930162, 0.014712,
		-0.454586, -0.165445, 0.875202,
		-0.811646, -0.327760, -0.483533,
		40.608482, 32.682896, 24.451258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915848, 32.343422, 25.144901>,  <41.176632, 32.912327, 24.789730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915848, 32.343422, 25.144901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771992, 32.291039, 24.775360>,  <40.685677, 32.259609, 24.553635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771992, 32.291039, 24.775360>,  <40.915848, 32.343422, 25.144901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771992, 32.291039, 24.775360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278399, -0.960065, 0.027712,
		-0.890590, -0.247234, 0.381740,
		-0.359644, -0.130957, -0.923854,
		40.664097, 32.251751, 24.498203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773575, 31.641844, 25.064095>,  <40.915848, 32.343422, 25.144901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773575, 31.641844, 25.064095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765621, 31.746109, 24.678005>,  <40.760849, 31.808668, 24.446352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765621, 31.746109, 24.678005>,  <40.773575, 31.641844, 25.064095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765621, 31.746109, 24.678005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396878, -0.884037, -0.246914,
		-0.917656, -0.387987, -0.085872,
		-0.019885, 0.260662, -0.965225,
		40.759655, 31.824308, 24.388437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535088, 31.091537, 24.681053>,  <40.773575, 31.641844, 25.064095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535088, 31.091537, 24.681053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690697, 31.313347, 24.386799>,  <40.784061, 31.446432, 24.210245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690697, 31.313347, 24.386799>,  <40.535088, 31.091537, 24.681053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690697, 31.313347, 24.386799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206084, -0.830687, -0.517192,
		-0.897881, 0.049597, -0.437437,
		0.389024, 0.554526, -0.735637,
		40.807404, 31.479704, 24.166107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286732, 30.829441, 24.050369>,  <40.535088, 31.091537, 24.681053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286732, 30.829441, 24.050369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629517, 31.014481, 23.959496>,  <40.835190, 31.125504, 23.904972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629517, 31.014481, 23.959496>,  <40.286732, 30.829441, 24.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629517, 31.014481, 23.959496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276813, -0.784985, -0.554231,
		-0.434722, 0.412070, -0.800759,
		0.856966, 0.462597, -0.227184,
		40.886608, 31.153259, 23.891340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349228, 30.722279, 23.328489>,  <40.286732, 30.829441, 24.050369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349228, 30.722279, 23.328489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717354, 30.802868, 23.462612>,  <40.938229, 30.851221, 23.543087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717354, 30.802868, 23.462612>,  <40.349228, 30.722279, 23.328489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717354, 30.802868, 23.462612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340066, -0.835699, -0.431233,
		0.193336, 0.510897, -0.837619,
		0.920313, 0.201473, 0.335309,
		40.993446, 30.863310, 23.563206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890213, 30.740969, 22.776407>,  <40.349228, 30.722279, 23.328489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890213, 30.740969, 22.776407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076832, 30.666138, 23.122200>,  <41.188805, 30.621239, 23.329676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076832, 30.666138, 23.122200>,  <40.890213, 30.740969, 22.776407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076832, 30.666138, 23.122200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562280, -0.691734, -0.453150,
		0.682767, 0.697499, -0.217540,
		0.466552, -0.187078, 0.864483,
		41.216797, 30.610014, 23.381544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566349, 30.581337, 22.578506>,  <40.890213, 30.740969, 22.776407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566349, 30.581337, 22.578506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563683, 30.430828, 22.949100>,  <41.562080, 30.340523, 23.171457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563683, 30.430828, 22.949100>,  <41.566349, 30.581337, 22.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563683, 30.430828, 22.949100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534962, -0.784118, -0.314602,
		0.844850, 0.493536, 0.206520,
		-0.006669, -0.376272, 0.926485,
		41.561684, 30.317947, 23.227047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065380, 30.123108, 22.538301>,  <41.566349, 30.581337, 22.578506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065380, 30.123108, 22.538301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883278, 30.007172, 22.875046>,  <41.774017, 29.937609, 23.077093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883278, 30.007172, 22.875046>,  <42.065380, 30.123108, 22.538301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883278, 30.007172, 22.875046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331543, -0.932718, -0.141833,
		0.826330, 0.214543, 0.520721,
		-0.455256, -0.289842, 0.841863,
		41.746700, 29.920219, 23.127605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568501, 29.755352, 22.866835>,  <42.065380, 30.123108, 22.538301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568501, 29.755352, 22.866835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235901, 29.632786, 23.052185>,  <42.036343, 29.559246, 23.163395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235901, 29.632786, 23.052185>,  <42.568501, 29.755352, 22.866835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235901, 29.632786, 23.052185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255178, -0.951589, -0.171358,
		0.493448, -0.024241, 0.869437,
		-0.831500, -0.306418, 0.463374,
		41.986450, 29.540861, 23.191196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702274, 29.364750, 23.475828>,  <42.568501, 29.755352, 22.866835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702274, 29.364750, 23.475828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344128, 29.257133, 23.333881>,  <42.129238, 29.192564, 23.248713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344128, 29.257133, 23.333881>,  <42.702274, 29.364750, 23.475828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344128, 29.257133, 23.333881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334368, -0.932478, -0.136686,
		-0.294131, -0.241040, 0.924871,
		-0.895369, -0.269043, -0.354867,
		42.075516, 29.176420, 23.227421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619953, 28.750891, 23.736645>,  <42.702274, 29.364750, 23.475828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619953, 28.750891, 23.736645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323071, 28.761051, 23.468769>,  <42.144939, 28.767147, 23.308044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323071, 28.761051, 23.468769>,  <42.619953, 28.750891, 23.736645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323071, 28.761051, 23.468769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042590, -0.999049, 0.009307,
		-0.668814, 0.035430, 0.742585,
		-0.742209, 0.025402, -0.669687,
		42.100407, 28.768671, 23.267862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042595, 28.218960, 24.009905>,  <42.619953, 28.750891, 23.736645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042595, 28.218960, 24.009905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016293, 28.264400, 23.613365>,  <42.000511, 28.291664, 23.375443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016293, 28.264400, 23.613365>,  <42.042595, 28.218960, 24.009905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016293, 28.264400, 23.613365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048901, -0.991937, -0.116913,
		-0.996637, -0.056165, 0.059666,
		-0.065752, 0.113602, -0.991348,
		41.996567, 28.298481, 23.315960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551044, 27.792379, 23.958879>,  <42.042595, 28.218960, 24.009905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551044, 27.792379, 23.958879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710056, 27.847569, 23.596016>,  <41.805462, 27.880682, 23.378298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710056, 27.847569, 23.596016>,  <41.551044, 27.792379, 23.958879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710056, 27.847569, 23.596016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140687, -0.967776, -0.208845,
		-0.906741, 0.210647, -0.365307,
		0.397528, 0.137974, -0.907157,
		41.829315, 27.888960, 23.323868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105576, 27.389585, 23.588036>,  <41.551044, 27.792379, 23.958879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105576, 27.389585, 23.588036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395588, 27.471088, 23.324883>,  <41.569595, 27.519991, 23.166990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395588, 27.471088, 23.324883>,  <41.105576, 27.389585, 23.588036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395588, 27.471088, 23.324883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016624, -0.949777, -0.312485,
		-0.688514, 0.237498, -0.685232,
		0.725032, 0.203759, -0.657883,
		41.613098, 27.532215, 23.127518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752781, 27.214088, 22.813068>,  <41.105576, 27.389585, 23.588036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752781, 27.214088, 22.813068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151474, 27.225945, 22.782993>,  <41.390690, 27.233059, 22.764948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151474, 27.225945, 22.782993>,  <40.752781, 27.214088, 22.813068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151474, 27.225945, 22.782993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014789, -0.847720, -0.530238,
		-0.079456, 0.529615, -0.844508,
		0.996729, 0.029641, -0.075189,
		41.450493, 27.234837, 22.760437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918751, 27.209623, 22.117815>,  <40.752781, 27.214088, 22.813068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918751, 27.209623, 22.117815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219318, 27.054535, 22.331375>,  <41.399658, 26.961481, 22.459511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219318, 27.054535, 22.331375>,  <40.918751, 27.209623, 22.117815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219318, 27.054535, 22.331375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010596, -0.816132, -0.577768,
		0.659745, 0.428486, -0.617362,
		0.751415, -0.387721, 0.533898,
		41.444744, 26.938219, 22.491545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334591, 26.983103, 21.648895>,  <40.918751, 27.209623, 22.117815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334591, 26.983103, 21.648895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430325, 26.781727, 21.980984>,  <41.487766, 26.660902, 22.180237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430325, 26.781727, 21.980984>,  <41.334591, 26.983103, 21.648895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430325, 26.781727, 21.980984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113924, -0.863727, -0.490914,
		0.964230, 0.022912, -0.264075,
		0.239337, -0.503438, 0.830221,
		41.502125, 26.630695, 22.230051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921253, 26.605860, 21.490349>,  <41.334591, 26.983103, 21.648895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921253, 26.605860, 21.490349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770962, 26.430870, 21.817139>,  <41.680786, 26.325876, 22.013212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770962, 26.430870, 21.817139>,  <41.921253, 26.605860, 21.490349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770962, 26.430870, 21.817139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140238, -0.898254, -0.416502,
		0.916059, -0.041920, 0.398848,
		-0.375726, -0.437474, 0.816974,
		41.658245, 26.299627, 22.062231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375942, 26.133692, 21.770353>,  <41.921253, 26.605860, 21.490349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375942, 26.133692, 21.770353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011715, 26.011971, 21.882263>,  <41.793179, 25.938938, 21.949409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011715, 26.011971, 21.882263>,  <42.375942, 26.133692, 21.770353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011715, 26.011971, 21.882263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192316, -0.910964, -0.364909,
		0.365908, -0.278468, 0.888013,
		-0.910564, -0.304302, 0.279775,
		41.738544, 25.920679, 21.966196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303005, 25.608135, 22.240177>,  <42.375942, 26.133692, 21.770353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303005, 25.608135, 22.240177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977467, 25.574738, 22.010155>,  <41.782143, 25.554699, 21.872141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977467, 25.574738, 22.010155>,  <42.303005, 25.608135, 22.240177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977467, 25.574738, 22.010155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284409, -0.920220, -0.268898,
		-0.506725, -0.382391, 0.772661,
		-0.813843, -0.083494, -0.575055,
		41.733315, 25.549688, 21.837639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461849, 24.887821, 21.887543>,  <42.303005, 25.608135, 22.240177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461849, 24.887821, 21.887543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101414, 24.987812, 21.745808>,  <41.885155, 25.047808, 21.660767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101414, 24.987812, 21.745808>,  <42.461849, 24.887821, 21.887543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101414, 24.987812, 21.745808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103871, -0.917758, -0.383317,
		-0.421016, -0.308596, 0.852944,
		-0.901086, 0.249979, -0.354337,
		41.831089, 25.062805, 21.639507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916542, 24.382368, 22.050121>,  <42.461849, 24.887821, 21.887543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916542, 24.382368, 22.050121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859390, 24.586124, 21.710686>,  <41.825100, 24.708378, 21.507025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859390, 24.586124, 21.710686>,  <41.916542, 24.382368, 22.050121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859390, 24.586124, 21.710686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096864, -0.860468, -0.500212,
		-0.984989, 0.010729, 0.172282,
		-0.142876, 0.509392, -0.848591,
		41.816528, 24.738941, 21.456108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336056, 24.137745, 21.631170>,  <41.916542, 24.382368, 22.050121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336056, 24.137745, 21.631170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616734, 24.312878, 21.406338>,  <41.785141, 24.417957, 21.271439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616734, 24.312878, 21.406338>,  <41.336056, 24.137745, 21.631170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616734, 24.312878, 21.406338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021605, -0.801620, -0.597444,
		-0.712155, 0.407076, -0.571948,
		0.701690, 0.437830, -0.562082,
		41.827240, 24.444227, 21.237713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790573, 24.096966, 21.154352>,  <41.336056, 24.137745, 21.631170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790573, 24.096966, 21.154352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654541, 23.844627, 21.433315>,  <40.572922, 23.693224, 21.600693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654541, 23.844627, 21.433315>,  <40.790573, 24.096966, 21.154352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654541, 23.844627, 21.433315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371304, -0.771432, -0.516746,
		0.863990, 0.083216, 0.496584,
		-0.340079, -0.630847, 0.697408,
		40.552517, 23.655373, 21.642538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095737, 23.942766, 21.041258>,  <40.790573, 24.096966, 21.154352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095737, 23.942766, 21.041258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894119, 23.736305, 21.318249>,  <39.773148, 23.612429, 21.484444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894119, 23.736305, 21.318249>,  <40.095737, 23.942766, 21.041258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894119, 23.736305, 21.318249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793686, -0.039361, -0.607053,
		0.340589, -0.855590, -0.389825,
		-0.504045, -0.516155, 0.692476,
		39.742905, 23.581459, 21.525991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028679, 24.346411, 20.470966>,  <40.095737, 23.942766, 21.041258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028679, 24.346411, 20.470966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642559, 24.248936, 20.508514>,  <39.410889, 24.190451, 20.531044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642559, 24.248936, 20.508514>,  <40.028679, 24.346411, 20.470966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642559, 24.248936, 20.508514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225818, 0.959465, 0.168622,
		-0.131157, 0.141573, -0.981201,
		-0.965300, -0.243689, 0.093871,
		39.352970, 24.175829, 20.536676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474834, 24.682371, 19.978933>,  <40.028679, 24.346411, 20.470966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474834, 24.682371, 19.978933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310478, 24.603981, 20.335083>,  <39.211864, 24.556948, 20.548773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310478, 24.603981, 20.335083>,  <39.474834, 24.682371, 19.978933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310478, 24.603981, 20.335083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360625, 0.931908, 0.038695,
		-0.837329, -0.305191, -0.453583,
		-0.410889, -0.195973, 0.890373,
		39.187210, 24.545189, 20.602196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102951, 25.170284, 20.035221>,  <39.474834, 24.682371, 19.978933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102951, 25.170284, 20.035221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108448, 25.052868, 20.417561>,  <39.111744, 24.982418, 20.646963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108448, 25.052868, 20.417561>,  <39.102951, 25.170284, 20.035221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108448, 25.052868, 20.417561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372038, 0.885804, 0.277379,
		-0.928116, -0.359423, -0.097037,
		0.013740, -0.293541, 0.955848,
		39.112572, 24.964806, 20.704315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389706, 25.187641, 20.344458>,  <39.102951, 25.170284, 20.035221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389706, 25.187641, 20.344458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699753, 25.255810, 20.587814>,  <38.885780, 25.296711, 20.733828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699753, 25.255810, 20.587814>,  <38.389706, 25.187641, 20.344458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699753, 25.255810, 20.587814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407473, 0.870757, 0.275223,
		-0.482858, -0.461235, 0.744386,
		0.775122, 0.170424, 0.608393,
		38.932289, 25.306936, 20.770332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140789, 25.463894, 20.916994>,  <38.389706, 25.187641, 20.344458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140789, 25.463894, 20.916994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531326, 25.546604, 20.942272>,  <38.765648, 25.596231, 20.957439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531326, 25.546604, 20.942272>,  <38.140789, 25.463894, 20.916994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531326, 25.546604, 20.942272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214505, 0.889580, 0.403281,
		0.027171, -0.407298, 0.912891,
		0.976345, 0.206777, 0.063197,
		38.824230, 25.608637, 20.961231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266193, 25.548647, 21.627115>,  <38.140789, 25.463894, 20.916994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266193, 25.548647, 21.627115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529469, 25.740078, 21.394650>,  <38.687435, 25.854937, 21.255171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529469, 25.740078, 21.394650>,  <38.266193, 25.548647, 21.627115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529469, 25.740078, 21.394650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294294, 0.874080, 0.386491,
		0.692949, -0.083351, 0.716153,
		0.658189, 0.478578, -0.581163,
		38.726925, 25.883652, 21.220301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551765, 26.018154, 22.070797>,  <38.266193, 25.548647, 21.627115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551765, 26.018154, 22.070797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653042, 26.149948, 21.706966>,  <38.713810, 26.229025, 21.488668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653042, 26.149948, 21.706966>,  <38.551765, 26.018154, 22.070797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653042, 26.149948, 21.706966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057333, 0.933451, 0.354092,
		0.965715, -0.141803, 0.217454,
		0.253194, 0.329485, -0.909578,
		38.729000, 26.248795, 21.434093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025330, 26.471987, 22.210321>,  <38.551765, 26.018154, 22.070797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025330, 26.471987, 22.210321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894207, 26.563915, 21.843777>,  <38.815533, 26.619072, 21.623850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894207, 26.563915, 21.843777>,  <39.025330, 26.471987, 22.210321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894207, 26.563915, 21.843777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023224, 0.967707, 0.251006,
		0.944458, 0.103563, -0.311886,
		-0.327810, 0.229821, -0.916364,
		38.795864, 26.632862, 21.568867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530205, 26.932665, 21.959740>,  <39.025330, 26.471987, 22.210321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530205, 26.932665, 21.959740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183624, 26.990147, 21.768482>,  <38.975677, 27.024635, 21.653728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183624, 26.990147, 21.768482>,  <39.530205, 26.932665, 21.959740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183624, 26.990147, 21.768482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012333, 0.951229, 0.308238,
		0.499117, 0.272969, -0.822417,
		-0.866447, 0.143704, -0.478142,
		38.923691, 27.033258, 21.625040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281841, 27.576683, 22.120388>,  <39.530205, 26.932665, 21.959740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281841, 27.576683, 22.120388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986839, 27.527420, 21.854782>,  <38.809837, 27.497862, 21.695419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986839, 27.527420, 21.854782>,  <39.281841, 27.576683, 22.120388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986839, 27.527420, 21.854782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356592, 0.906007, 0.228022,
		0.573518, 0.404950, -0.712104,
		-0.737509, -0.123156, -0.664013,
		38.765587, 27.490473, 21.655579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252052, 28.147070, 21.712465>,  <39.281841, 27.576683, 22.120388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252052, 28.147070, 21.712465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888027, 27.981331, 21.716660>,  <38.669613, 27.881887, 21.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888027, 27.981331, 21.716660>,  <39.252052, 28.147070, 21.712465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888027, 27.981331, 21.716660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408157, 0.900291, 0.151272,
		-0.072120, 0.133387, -0.988436,
		-0.910059, -0.414347, 0.010487,
		38.615009, 27.857027, 21.719805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867123, 28.503796, 21.262381>,  <39.252052, 28.147070, 21.712465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867123, 28.503796, 21.262381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609726, 28.344234, 21.523697>,  <38.455288, 28.248499, 21.680487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609726, 28.344234, 21.523697>,  <38.867123, 28.503796, 21.262381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609726, 28.344234, 21.523697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412068, 0.899779, 0.143518,
		-0.645068, -0.176848, -0.743379,
		-0.643496, -0.398901, 0.653292,
		38.416676, 28.224564, 21.719685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193302, 28.744583, 21.039385>,  <38.867123, 28.503796, 21.262381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193302, 28.744583, 21.039385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160244, 28.637291, 21.423306>,  <38.140408, 28.572916, 21.653658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160244, 28.637291, 21.423306>,  <38.193302, 28.744583, 21.039385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160244, 28.637291, 21.423306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412591, 0.885892, 0.212046,
		-0.907159, -0.378481, -0.183886,
		-0.082648, -0.268229, 0.959803,
		38.135448, 28.556822, 21.711246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593742, 29.118088, 21.237232>,  <38.193302, 28.744583, 21.039385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593742, 29.118088, 21.237232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759956, 29.013821, 21.585804>,  <37.859684, 28.951260, 21.794947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759956, 29.013821, 21.585804>,  <37.593742, 29.118088, 21.237232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759956, 29.013821, 21.585804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166966, 0.919917, 0.354789,
		-0.894123, -0.292925, 0.338733,
		0.415532, -0.260668, 0.871427,
		37.884617, 28.935621, 21.847233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084045, 29.345785, 21.721827>,  <37.593742, 29.118088, 21.237232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084045, 29.345785, 21.721827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438972, 29.316864, 21.904011>,  <37.651928, 29.299511, 22.013321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438972, 29.316864, 21.904011>,  <37.084045, 29.345785, 21.721827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438972, 29.316864, 21.904011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161734, 0.876111, 0.454171,
		-0.431872, -0.476656, 0.765693,
		0.887315, -0.072305, 0.455459,
		37.705166, 29.295172, 22.040649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934231, 29.670420, 22.356834>,  <37.084045, 29.345785, 21.721827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934231, 29.670420, 22.356834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332581, 29.680489, 22.321983>,  <37.571590, 29.686531, 22.301073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332581, 29.680489, 22.321983>,  <36.934231, 29.670420, 22.356834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332581, 29.680489, 22.321983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010368, 0.922806, 0.385125,
		0.090097, -0.384441, 0.918742,
		0.995879, 0.025173, -0.087128,
		37.631344, 29.688040, 22.295845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148685, 29.924202, 22.961824>,  <36.934231, 29.670420, 22.356834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148685, 29.924202, 22.961824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488350, 29.961170, 22.753834>,  <37.692150, 29.983351, 22.629040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488350, 29.961170, 22.753834>,  <37.148685, 29.924202, 22.961824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488350, 29.961170, 22.753834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149965, 0.901846, 0.405196,
		0.506389, -0.422057, 0.751956,
		0.849164, 0.092420, -0.519979,
		37.743099, 29.988895, 22.597839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667873, 30.103638, 23.437477>,  <37.148685, 29.924202, 22.961824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667873, 30.103638, 23.437477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797325, 30.206421, 23.073227>,  <37.874996, 30.268091, 22.854677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797325, 30.206421, 23.073227>,  <37.667873, 30.103638, 23.437477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797325, 30.206421, 23.073227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207773, 0.919629, 0.333338,
		0.923090, -0.297081, 0.244229,
		0.323628, 0.256957, -0.910625,
		37.894413, 30.283508, 22.800039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384033, 30.484545, 23.492472>,  <37.667873, 30.103638, 23.437477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384033, 30.484545, 23.492472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206860, 30.599091, 23.152634>,  <38.100555, 30.667818, 22.948730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206860, 30.599091, 23.152634>,  <38.384033, 30.484545, 23.492472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206860, 30.599091, 23.152634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147344, 0.957985, 0.246080,
		0.884366, -0.016187, -0.466514,
		-0.442930, 0.286363, -0.849594,
		38.073982, 30.684999, 22.897755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922703, 30.922371, 23.097378>,  <38.384033, 30.484545, 23.492472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922703, 30.922371, 23.097378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554634, 31.010342, 22.967812>,  <38.333794, 31.063124, 22.890072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554634, 31.010342, 22.967812>,  <38.922703, 30.922371, 23.097378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554634, 31.010342, 22.967812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217631, 0.975049, 0.043787,
		0.325462, -0.030203, -0.945073,
		-0.920169, 0.219928, -0.323914,
		38.278584, 31.076321, 22.870638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980610, 31.563917, 22.610371>,  <38.922703, 30.922371, 23.097378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980610, 31.563917, 22.610371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601891, 31.558666, 22.738991>,  <38.374657, 31.555515, 22.816162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601891, 31.558666, 22.738991>,  <38.980610, 31.563917, 22.610371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601891, 31.558666, 22.738991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015703, 0.999862, -0.005419,
		-0.321433, -0.010180, -0.946878,
		-0.946802, -0.013127, 0.321549,
		38.317848, 31.554728, 22.835455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692387, 32.248756, 22.435743>,  <38.980610, 31.563917, 22.610371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692387, 32.248756, 22.435743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401695, 32.136227, 22.686413>,  <38.227280, 32.068707, 22.836815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401695, 32.136227, 22.686413>,  <38.692387, 32.248756, 22.435743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401695, 32.136227, 22.686413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197107, 0.959328, 0.202086,
		-0.658037, 0.023341, -0.752624,
		-0.726730, -0.281327, 0.626672,
		38.183678, 32.051830, 22.874414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191692, 32.699478, 22.371141>,  <38.692387, 32.248756, 22.435743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191692, 32.699478, 22.371141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112003, 32.533855, 22.726414>,  <38.064190, 32.434483, 22.939577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112003, 32.533855, 22.726414>,  <38.191692, 32.699478, 22.371141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112003, 32.533855, 22.726414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189104, 0.905559, 0.379740,
		-0.961535, -0.092305, -0.258710,
		-0.199225, -0.414056, 0.888182,
		38.052235, 32.409637, 22.992868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609821, 33.009846, 22.463181>,  <38.191692, 32.699478, 22.371141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609821, 33.009846, 22.463181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725655, 32.895340, 22.828518>,  <37.795155, 32.826637, 23.047720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725655, 32.895340, 22.828518>,  <37.609821, 33.009846, 22.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725655, 32.895340, 22.828518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012120, 0.955250, 0.295552,
		-0.957077, -0.074516, 0.280090,
		0.289580, -0.286260, 0.913345,
		37.812527, 32.809464, 23.102522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100021, 33.310459, 22.942322>,  <37.609821, 33.009846, 22.463181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100021, 33.310459, 22.942322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439137, 33.245831, 23.144375>,  <37.642605, 33.207054, 23.265606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439137, 33.245831, 23.144375>,  <37.100021, 33.310459, 22.942322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439137, 33.245831, 23.144375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056833, 0.974655, 0.216375,
		-0.527289, -0.154731, 0.835479,
		0.847784, -0.161575, 0.505131,
		37.693470, 33.197357, 23.295914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120708, 33.388222, 23.657438>,  <37.100021, 33.310459, 22.942322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120708, 33.388222, 23.657438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494205, 33.464344, 23.536175>,  <37.718304, 33.510017, 23.463417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494205, 33.464344, 23.536175>,  <37.120708, 33.388222, 23.657438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494205, 33.464344, 23.536175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081568, 0.937794, 0.337474,
		0.348525, -0.290386, 0.891183,
		0.933744, 0.190309, -0.303159,
		37.774330, 33.521439, 23.445227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356110, 33.515045, 23.678362>,  <37.120708, 33.388222, 23.657438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356110, 33.515045, 23.678362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322598, 33.271267, 23.363007>,  <36.302490, 33.125000, 23.173794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322598, 33.271267, 23.363007>,  <36.356110, 33.515045, 23.678362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322598, 33.271267, 23.363007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311433, -0.767551, 0.560245,
		-0.946568, -0.198595, 0.254104,
		-0.083776, -0.609447, -0.788388,
		36.297466, 33.088432, 23.126490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964333, 32.878765, 23.800112>,  <36.356110, 33.515045, 23.678362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964333, 32.878765, 23.800112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209988, 32.786362, 23.498260>,  <36.357380, 32.730919, 23.317150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209988, 32.786362, 23.498260>,  <35.964333, 32.878765, 23.800112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209988, 32.786362, 23.498260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262748, -0.841799, 0.471527,
		-0.744174, -0.487861, -0.456285,
		0.614140, -0.231010, -0.754630,
		36.394230, 32.717060, 23.271872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240295, 32.989620, 24.175562>,  <35.964333, 32.878765, 23.800112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240295, 32.989620, 24.175562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097626, 33.338078, 24.040565>,  <35.012024, 33.547150, 23.959568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097626, 33.338078, 24.040565>,  <35.240295, 32.989620, 24.175562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097626, 33.338078, 24.040565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733709, -0.037569, 0.678424,
		0.578323, 0.489595, 0.652563,
		-0.356669, 0.871140, -0.337493,
		34.990623, 33.599419, 23.939318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762356, 32.897427, 24.659073>,  <35.240295, 32.989620, 24.175562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762356, 32.897427, 24.659073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551182, 32.798512, 24.984066>,  <34.424477, 32.739162, 25.179062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551182, 32.798512, 24.984066>,  <34.762356, 32.897427, 24.659073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551182, 32.798512, 24.984066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447931, 0.893866, -0.018994,
		-0.721556, -0.373965, -0.582672,
		-0.527934, -0.247291, 0.812485,
		34.392803, 32.724323, 25.227812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058128, 32.873886, 24.554638>,  <34.762356, 32.897427, 24.659073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058128, 32.873886, 24.554638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148571, 33.028130, 24.912449>,  <34.202835, 33.120678, 25.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148571, 33.028130, 24.912449>,  <34.058128, 32.873886, 24.554638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148571, 33.028130, 24.912449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470979, 0.847114, -0.246125,
		-0.852676, -0.365655, 0.373149,
		0.226103, 0.385611, 0.894529,
		34.216400, 33.143814, 25.180807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385971, 33.472672, 24.834002>,  <34.058128, 32.873886, 24.554638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385971, 33.472672, 24.834002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287395, 33.668465, 25.168587>,  <34.228249, 33.785942, 25.369339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287395, 33.668465, 25.168587>,  <34.385971, 33.472672, 24.834002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287395, 33.668465, 25.168587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277191, -0.862630, 0.423125,
		0.928672, -0.127584, 0.348269,
		-0.246444, 0.489481, 0.836465,
		34.213463, 33.815308, 25.419527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841217, 33.387302, 25.343077>,  <34.385971, 33.472672, 24.834002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841217, 33.387302, 25.343077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470135, 33.450157, 25.478527>,  <34.247486, 33.487869, 25.559797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470135, 33.450157, 25.478527>,  <34.841217, 33.387302, 25.343077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470135, 33.450157, 25.478527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009375, -0.897001, 0.441930,
		0.373193, 0.413155, 0.830680,
		-0.927706, 0.157138, 0.338628,
		34.191822, 33.497299, 25.580116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915215, 33.250614, 26.036346>,  <34.841217, 33.387302, 25.343077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915215, 33.250614, 26.036346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531498, 33.203182, 25.933819>,  <34.301270, 33.174721, 25.872301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531498, 33.203182, 25.933819>,  <34.915215, 33.250614, 26.036346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531498, 33.203182, 25.933819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019396, -0.877775, 0.478680,
		-0.281755, 0.464165, 0.839741,
		-0.959290, -0.118583, -0.256321,
		34.243710, 33.167606, 25.856922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554893, 33.049736, 26.624420>,  <34.915215, 33.250614, 26.036346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554893, 33.049736, 26.624420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311760, 32.935162, 26.328178>,  <34.165882, 32.866417, 26.150433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311760, 32.935162, 26.328178>,  <34.554893, 33.049736, 26.624420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311760, 32.935162, 26.328178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104538, -0.895692, 0.432213,
		-0.787155, 0.340134, 0.514486,
		-0.607831, -0.286436, -0.740605,
		34.129410, 32.849232, 26.105997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924419, 32.858280, 26.901648>,  <34.554893, 33.049736, 26.624420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924419, 32.858280, 26.901648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936859, 32.665234, 26.551537>,  <33.944324, 32.549404, 26.341471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936859, 32.665234, 26.551537>,  <33.924419, 32.858280, 26.901648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936859, 32.665234, 26.551537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192702, -0.862167, 0.468544,
		-0.980764, 0.154095, -0.119817,
		0.031102, -0.482621, -0.875277,
		33.946190, 32.520447, 26.288954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410423, 32.435108, 26.880165>,  <33.924419, 32.858280, 26.901648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410423, 32.435108, 26.880165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626965, 32.279331, 26.582100>,  <33.756889, 32.185863, 26.403261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626965, 32.279331, 26.582100>,  <33.410423, 32.435108, 26.880165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626965, 32.279331, 26.582100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114074, -0.912088, 0.393806,
		-0.833019, -0.128186, -0.538190,
		0.541357, -0.389441, -0.745164,
		33.789371, 32.162498, 26.358551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021629, 31.870508, 26.667856>,  <33.410423, 32.435108, 26.880165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021629, 31.870508, 26.667856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392479, 31.792000, 26.540161>,  <33.614990, 31.744894, 26.463545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392479, 31.792000, 26.540161>,  <33.021629, 31.870508, 26.667856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392479, 31.792000, 26.540161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076498, -0.933058, 0.351497,
		-0.366856, -0.301462, -0.880078,
		0.927127, -0.196273, -0.319237,
		33.670616, 31.733118, 26.444389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924236, 31.280430, 26.201771>,  <33.021629, 31.870508, 26.667856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924236, 31.280430, 26.201771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307163, 31.281086, 26.317387>,  <33.536919, 31.281481, 26.386757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307163, 31.281086, 26.317387>,  <32.924236, 31.280430, 26.201771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307163, 31.281086, 26.317387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102759, -0.932723, 0.345642,
		0.270161, -0.360590, -0.892742,
		0.957316, 0.001642, 0.289040,
		33.594357, 31.281578, 26.404099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213963, 30.681204, 25.935125>,  <32.924236, 31.280430, 26.201771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213963, 30.681204, 25.935125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457260, 30.766232, 26.241028>,  <33.603241, 30.817247, 26.424570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457260, 30.766232, 26.241028>,  <33.213963, 30.681204, 25.935125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457260, 30.766232, 26.241028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240324, -0.868933, 0.432665,
		0.756493, -0.446956, -0.477440,
		0.608246, 0.212568, 0.764756,
		33.639732, 30.830002, 26.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690617, 30.097900, 25.944319>,  <33.213963, 30.681204, 25.935125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690617, 30.097900, 25.944319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730236, 30.274330, 26.301113>,  <33.754009, 30.380188, 26.515190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730236, 30.274330, 26.301113>,  <33.690617, 30.097900, 25.944319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730236, 30.274330, 26.301113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215764, -0.865550, 0.451962,
		0.971409, -0.237226, 0.009433,
		0.099052, 0.441075, 0.891988,
		33.759953, 30.406652, 26.568710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126495, 29.608736, 26.272743>,  <33.690617, 30.097900, 25.944319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126495, 29.608736, 26.272743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985203, 29.828262, 26.575802>,  <33.900429, 29.959978, 26.757637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985203, 29.828262, 26.575802>,  <34.126495, 29.608736, 26.272743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985203, 29.828262, 26.575802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099969, -0.827359, 0.552706,
		0.930181, 0.119490, 0.347111,
		-0.353228, 0.548817, 0.757648,
		33.879234, 29.992907, 26.803097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308376, 29.328882, 26.952620>,  <34.126495, 29.608736, 26.272743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308376, 29.328882, 26.952620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982162, 29.543800, 27.038620>,  <33.786434, 29.672750, 27.090221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982162, 29.543800, 27.038620>,  <34.308376, 29.328882, 26.952620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982162, 29.543800, 27.038620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289880, -0.700814, 0.651790,
		0.500880, 0.469229, 0.727285,
		-0.815530, 0.537293, 0.215003,
		33.737503, 29.704988, 27.103121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281960, 29.328619, 27.727743>,  <34.308376, 29.328882, 26.952620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281960, 29.328619, 27.727743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915306, 29.433868, 27.607380>,  <33.695312, 29.497017, 27.535162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915306, 29.433868, 27.607380>,  <34.281960, 29.328619, 27.727743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915306, 29.433868, 27.607380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392853, -0.731979, 0.556663,
		-0.073788, 0.628469, 0.774326,
		-0.916636, 0.263122, -0.300908,
		33.640316, 29.512806, 27.517107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899033, 29.218563, 28.367542>,  <34.281960, 29.328619, 27.727743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899033, 29.218563, 28.367542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640091, 29.225899, 28.062756>,  <33.484726, 29.230299, 27.879883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640091, 29.225899, 28.062756>,  <33.899033, 29.218563, 28.367542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640091, 29.225899, 28.062756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432929, -0.831631, 0.347795,
		-0.627298, 0.555025, 0.546300,
		-0.647355, 0.018338, -0.761968,
		33.445885, 29.231400, 27.834166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275654, 29.220577, 28.687489>,  <33.899033, 29.218563, 28.367542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275654, 29.220577, 28.687489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194473, 29.075928, 28.323502>,  <33.145763, 28.989138, 28.105110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194473, 29.075928, 28.323502>,  <33.275654, 29.220577, 28.687489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194473, 29.075928, 28.323502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470608, -0.778918, 0.414506,
		-0.858684, 0.512363, -0.012098,
		-0.202954, -0.361623, -0.909966,
		33.133587, 28.967442, 28.050512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575584, 29.061954, 28.765335>,  <33.275654, 29.220577, 28.687489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575584, 29.061954, 28.765335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719887, 28.865135, 28.448414>,  <32.806469, 28.747044, 28.258261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719887, 28.865135, 28.448414>,  <32.575584, 29.061954, 28.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719887, 28.865135, 28.448414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360448, -0.857058, 0.368143,
		-0.860197, 0.152778, -0.486540,
		0.360748, -0.492048, -0.792307,
		32.828114, 28.717522, 28.210722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055279, 28.647940, 28.613237>,  <32.575584, 29.061954, 28.765335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055279, 28.647940, 28.613237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379772, 28.476772, 28.453842>,  <32.574467, 28.374071, 28.358206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379772, 28.476772, 28.453842>,  <32.055279, 28.647940, 28.613237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379772, 28.476772, 28.453842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270813, -0.878954, 0.392556,
		-0.518234, -0.210537, -0.828919,
		0.811230, -0.427918, -0.398488,
		32.623142, 28.348396, 28.334295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809889, 28.034294, 28.319111>,  <32.055279, 28.647940, 28.613237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809889, 28.034294, 28.319111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200844, 27.975113, 28.379536>,  <32.435417, 27.939604, 28.415791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200844, 27.975113, 28.379536>,  <31.809889, 28.034294, 28.319111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200844, 27.975113, 28.379536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196372, -0.900055, 0.389023,
		0.078407, -0.409891, -0.908758,
		0.977389, -0.147953, 0.151062,
		32.494061, 27.930727, 28.424854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814840, 27.358997, 28.333626>,  <31.809889, 28.034294, 28.319111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814840, 27.358997, 28.333626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177673, 27.452011, 28.473984>,  <32.395374, 27.507820, 28.558199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177673, 27.452011, 28.473984>,  <31.814840, 27.358997, 28.333626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177673, 27.452011, 28.473984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032729, -0.870012, 0.491944,
		0.419679, -0.434749, -0.796783,
		0.907082, 0.232536, 0.350897,
		32.449799, 27.521772, 28.579252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341488, 26.762016, 28.165497>,  <31.814840, 27.358997, 28.333626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341488, 26.762016, 28.165497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470081, 26.981506, 28.474186>,  <32.547237, 27.113199, 28.659399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470081, 26.981506, 28.474186>,  <32.341488, 26.762016, 28.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470081, 26.981506, 28.474186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064370, -0.825762, 0.560334,
		0.944726, -0.130460, -0.300786,
		0.321479, 0.548724, 0.771721,
		32.566525, 27.146124, 28.705702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881084, 26.413061, 28.426338>,  <32.341488, 26.762016, 28.165497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881084, 26.413061, 28.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761150, 26.644283, 28.729904>,  <32.689190, 26.783016, 28.912045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761150, 26.644283, 28.729904>,  <32.881084, 26.413061, 28.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761150, 26.644283, 28.729904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119806, -0.766401, 0.631091,
		0.946440, 0.280143, 0.160536,
		-0.299831, 0.578056, 0.758915,
		32.671200, 26.817699, 28.957579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299103, 26.103807, 28.968254>,  <32.881084, 26.413061, 28.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299103, 26.103807, 28.968254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012661, 26.308277, 29.158371>,  <32.840797, 26.430958, 29.272440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012661, 26.308277, 29.158371>,  <33.299103, 26.103807, 28.968254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012661, 26.308277, 29.158371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006605, -0.675943, 0.736925,
		0.697964, 0.530853, 0.480668,
		-0.716102, 0.511172, 0.475290,
		32.797829, 26.461628, 29.300959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567169, 26.166309, 29.669256>,  <33.299103, 26.103807, 28.968254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567169, 26.166309, 29.669256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172569, 26.224617, 29.699127>,  <32.935810, 26.259602, 29.717049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172569, 26.224617, 29.699127>,  <33.567169, 26.166309, 29.669256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172569, 26.224617, 29.699127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024929, -0.584270, 0.811176,
		0.161874, 0.798361, 0.580014,
		-0.986497, 0.145768, 0.074676,
		32.876621, 26.268347, 29.721531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495300, 26.324074, 30.399170>,  <33.567169, 26.166309, 29.669256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495300, 26.324074, 30.399170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129360, 26.206429, 30.288498>,  <32.909798, 26.135841, 30.222095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129360, 26.206429, 30.288498>,  <33.495300, 26.324074, 30.399170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129360, 26.206429, 30.288498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087702, -0.524107, 0.847125,
		-0.394161, 0.799255, 0.453683,
		-0.914847, -0.294115, -0.276679,
		32.854904, 26.118195, 30.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193676, 26.394678, 30.981344>,  <33.495300, 26.324074, 30.399170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193676, 26.394678, 30.981344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946789, 26.155647, 30.776623>,  <32.798656, 26.012228, 30.653790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946789, 26.155647, 30.776623>,  <33.193676, 26.394678, 30.981344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946789, 26.155647, 30.776623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212554, -0.499663, 0.839736,
		-0.757537, 0.627087, 0.181384,
		-0.617219, -0.597577, -0.511803,
		32.761623, 25.976374, 30.623081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719204, 26.345905, 31.482712>,  <33.193676, 26.394678, 30.981344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719204, 26.345905, 31.482712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689522, 26.030403, 31.238628>,  <32.671711, 25.841101, 31.092178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689522, 26.030403, 31.238628>,  <32.719204, 26.345905, 31.482712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689522, 26.030403, 31.238628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188097, -0.589842, 0.785307,
		-0.979343, 0.173054, -0.104593,
		-0.074208, -0.788758, -0.610209,
		32.667259, 25.793776, 31.055567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285057, 25.929565, 31.938982>,  <32.719204, 26.345905, 31.482712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285057, 25.929565, 31.938982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434902, 25.684967, 31.660202>,  <32.524811, 25.538208, 31.492933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434902, 25.684967, 31.660202>,  <32.285057, 25.929565, 31.938982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434902, 25.684967, 31.660202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014401, -0.747758, 0.663815,
		-0.927070, -0.258709, -0.271313,
		0.374612, -0.611496, -0.696950,
		32.547287, 25.501518, 31.451117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792187, 25.345528, 31.788170>,  <32.285057, 25.929565, 31.938982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792187, 25.345528, 31.788170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145447, 25.214348, 31.654011>,  <32.357403, 25.135639, 31.573515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145447, 25.214348, 31.654011>,  <31.792187, 25.345528, 31.788170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145447, 25.214348, 31.654011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117098, -0.846493, 0.519362,
		-0.454237, -0.419401, -0.785984,
		0.883151, -0.327951, -0.335398,
		32.410393, 25.115963, 31.553391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677885, 24.664719, 31.661732>,  <31.792187, 25.345528, 31.788170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677885, 24.664719, 31.661732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076550, 24.686180, 31.686348>,  <32.315750, 24.699057, 31.701118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076550, 24.686180, 31.686348>,  <31.677885, 24.664719, 31.661732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076550, 24.686180, 31.686348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019412, -0.887865, 0.459696,
		0.079306, -0.456966, -0.885942,
		0.996662, 0.053654, 0.061542,
		32.375549, 24.702276, 31.704811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974932, 24.084778, 31.381828>,  <31.677885, 24.664719, 31.661732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974932, 24.084778, 31.381828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244217, 24.237976, 31.634842>,  <32.405788, 24.329895, 31.786650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244217, 24.237976, 31.634842>,  <31.974932, 24.084778, 31.381828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244217, 24.237976, 31.634842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088742, -0.891077, 0.445092,
		0.734105, -0.243509, -0.633872,
		0.673212, 0.382995, 0.632535,
		32.446182, 24.352875, 31.824602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466682, 23.644522, 31.335951>,  <31.974932, 24.084778, 31.381828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466682, 23.644522, 31.335951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569695, 23.856754, 31.658978>,  <32.631500, 23.984095, 31.852793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569695, 23.856754, 31.658978>,  <32.466682, 23.644522, 31.335951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569695, 23.856754, 31.658978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266085, -0.842383, 0.468603,
		0.928913, 0.094204, -0.358115,
		0.257526, 0.530581, 0.807567,
		32.646954, 24.015928, 31.901247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190895, 23.500080, 31.554293>,  <32.466682, 23.644522, 31.335951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190895, 23.500080, 31.554293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979633, 23.604774, 31.877415>,  <32.852879, 23.667591, 32.071289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979633, 23.604774, 31.877415>,  <33.190895, 23.500080, 31.554293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979633, 23.604774, 31.877415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176501, -0.896697, 0.405933,
		0.830605, 0.356972, 0.427394,
		-0.528150, 0.261734, 0.807807,
		32.821190, 23.683294, 32.119759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376232, 23.027884, 31.988905>,  <33.190895, 23.500080, 31.554293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376232, 23.027884, 31.988905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112808, 23.217026, 32.223072>,  <32.954754, 23.330511, 32.363571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112808, 23.217026, 32.223072>,  <33.376232, 23.027884, 31.988905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112808, 23.217026, 32.223072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031893, -0.794769, 0.606074,
		0.751856, 0.380463, 0.538480,
		-0.658556, 0.472854, 0.585418,
		32.915241, 23.358883, 32.398697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675819, 23.075714, 32.690083>,  <33.376232, 23.027884, 31.988905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675819, 23.075714, 32.690083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280830, 23.116802, 32.737980>,  <33.043835, 23.141455, 32.766720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280830, 23.116802, 32.737980>,  <33.675819, 23.075714, 32.690083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280830, 23.116802, 32.737980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001844, -0.766461, 0.642288,
		0.157757, 0.634023, 0.757052,
		-0.987476, 0.102722, 0.119745,
		32.984589, 23.147619, 32.773903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504353, 22.996733, 33.398014>,  <33.675819, 23.075714, 32.690083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504353, 22.996733, 33.398014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158962, 22.901871, 33.219948>,  <32.951729, 22.844954, 33.113110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158962, 22.901871, 33.219948>,  <33.504353, 22.996733, 33.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158962, 22.901871, 33.219948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001191, -0.883528, 0.468377,
		-0.504394, 0.403900, 0.763185,
		-0.863473, -0.237155, -0.445165,
		32.899921, 22.830725, 33.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998825, 22.719305, 33.919891>,  <33.504353, 22.996733, 33.398014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998825, 22.719305, 33.919891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834763, 22.597080, 33.576172>,  <32.736324, 22.523745, 33.369938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834763, 22.597080, 33.576172>,  <32.998825, 22.719305, 33.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834763, 22.597080, 33.576172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294963, -0.847120, 0.442023,
		-0.862999, 0.434762, 0.257324,
		-0.410159, -0.305564, -0.859302,
		32.711716, 22.505411, 33.318382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327110, 22.594290, 33.981754>,  <32.998825, 22.719305, 33.919891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327110, 22.594290, 33.981754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360432, 22.379898, 33.645710>,  <32.380424, 22.251263, 33.444084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360432, 22.379898, 33.645710>,  <32.327110, 22.594290, 33.981754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360432, 22.379898, 33.645710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582489, -0.710217, 0.395346,
		-0.808559, 0.456421, -0.371366,
		0.083306, -0.535977, -0.840112,
		32.385422, 22.219105, 33.393677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644518, 22.495062, 33.791111>,  <32.327110, 22.594290, 33.981754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644518, 22.495062, 33.791111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895231, 22.211433, 33.661888>,  <32.045658, 22.041256, 33.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895231, 22.211433, 33.661888>,  <31.644518, 22.495062, 33.791111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895231, 22.211433, 33.661888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693524, -0.696662, 0.183539,
		-0.355202, 0.109007, -0.928412,
		0.626783, -0.709069, -0.323055,
		32.083267, 21.998713, 33.564972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167383, 21.933163, 33.569157>,  <31.644518, 22.495062, 33.791111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167383, 21.933163, 33.569157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537359, 21.786709, 33.610016>,  <31.759344, 21.698837, 33.634533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537359, 21.786709, 33.610016>,  <31.167383, 21.933163, 33.569157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537359, 21.786709, 33.610016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371489, -0.813772, 0.446957,
		-0.080521, -0.451355, -0.888704,
		0.924939, -0.366134, 0.102147,
		31.814840, 21.676868, 33.640659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166595, 21.238495, 33.354591>,  <31.167383, 21.933163, 33.569157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166595, 21.238495, 33.354591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500031, 21.253296, 33.575050>,  <31.700092, 21.262177, 33.707325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500031, 21.253296, 33.575050>,  <31.166595, 21.238495, 33.354591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500031, 21.253296, 33.575050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282080, -0.829337, 0.482319,
		0.474932, -0.557522, -0.680888,
		0.833589, 0.037004, 0.551144,
		31.750107, 21.264397, 33.740395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278280, 20.524632, 33.441410>,  <31.166595, 21.238495, 33.354591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278280, 20.524632, 33.441410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508503, 20.684582, 33.726742>,  <31.646637, 20.780552, 33.897942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508503, 20.684582, 33.726742>,  <31.278280, 20.524632, 33.441410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508503, 20.684582, 33.726742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101500, -0.830615, 0.547519,
		0.811439, -0.387530, -0.437478,
		0.575555, 0.399874, 0.713328,
		31.681170, 20.804544, 33.940739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788012, 19.977970, 33.642818>,  <31.278280, 20.524632, 33.441410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788012, 19.977970, 33.642818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782713, 20.249264, 33.936707>,  <31.779533, 20.412041, 34.113041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782713, 20.249264, 33.936707>,  <31.788012, 19.977970, 33.642818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782713, 20.249264, 33.936707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157224, -0.724236, 0.671389,
		0.987474, 0.124410, -0.097042,
		-0.013246, 0.678236, 0.734725,
		31.778740, 20.452734, 34.157124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220478, 19.699686, 34.160347>,  <31.788012, 19.977970, 33.642818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220478, 19.699686, 34.160347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016254, 19.984921, 34.352528>,  <31.893721, 20.156061, 34.467838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016254, 19.984921, 34.352528>,  <32.220478, 19.699686, 34.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016254, 19.984921, 34.352528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096185, -0.602630, 0.792203,
		0.854445, 0.358255, 0.376267,
		-0.510560, 0.713085, 0.480456,
		31.863087, 20.198847, 34.496666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402916, 19.547462, 34.837727>,  <32.220478, 19.699686, 34.160347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402916, 19.547462, 34.837727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089916, 19.794479, 34.869564>,  <31.902117, 19.942690, 34.888668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089916, 19.794479, 34.869564>,  <32.402916, 19.547462, 34.837727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089916, 19.794479, 34.869564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239620, -0.416652, 0.876917,
		0.574699, 0.667113, 0.474005,
		-0.782498, 0.617544, 0.079596,
		31.855167, 19.979742, 34.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322067, 19.917931, 35.432911>,  <32.402916, 19.547462, 34.837727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322067, 19.917931, 35.432911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935560, 19.894154, 35.332676>,  <31.703655, 19.879887, 35.272537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935560, 19.894154, 35.332676>,  <32.322067, 19.917931, 35.432911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935560, 19.894154, 35.332676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213378, -0.360055, 0.908202,
		-0.144210, 0.931036, 0.335226,
		-0.966268, -0.059442, -0.250586,
		31.645679, 19.876322, 35.257500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022636, 19.929506, 36.015072>,  <32.322067, 19.917931, 35.432911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022636, 19.929506, 36.015072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741709, 19.765579, 35.782246>,  <31.573153, 19.667223, 35.642551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741709, 19.765579, 35.782246>,  <32.022636, 19.929506, 36.015072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741709, 19.765579, 35.782246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351498, -0.511393, 0.784172,
		-0.619033, 0.755332, 0.215109,
		-0.702316, -0.409818, -0.582067,
		31.531013, 19.642633, 35.607624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378717, 19.990248, 36.192108>,  <32.022636, 19.929506, 36.015072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378717, 19.990248, 36.192108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370312, 19.657040, 35.970970>,  <31.365269, 19.457115, 35.838287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370312, 19.657040, 35.970970>,  <31.378717, 19.990248, 36.192108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370312, 19.657040, 35.970970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559345, -0.448527, 0.697105,
		-0.828668, 0.323879, -0.456521,
		-0.021015, -0.833022, -0.552840,
		31.364008, 19.407133, 35.805119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682127, 19.793760, 36.236935>,  <31.378717, 19.990248, 36.192108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682127, 19.793760, 36.236935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911591, 19.480232, 36.141819>,  <31.049269, 19.292116, 36.084751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911591, 19.480232, 36.141819>,  <30.682127, 19.793760, 36.236935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911591, 19.480232, 36.141819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583843, -0.594905, 0.552464,
		-0.574490, -0.178099, -0.798901,
		0.573663, -0.783817, -0.237784,
		31.083689, 19.245087, 36.070480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973362, 19.460348, 35.919628>,  <30.682127, 19.793760, 36.236935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973362, 19.460348, 35.919628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664560, 19.302475, 36.118923>,  <29.479280, 19.207750, 36.238499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664560, 19.302475, 36.118923>,  <29.973362, 19.460348, 35.919628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664560, 19.302475, 36.118923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339647, 0.918716, 0.201498,
		-0.537264, -0.013667, -0.843303,
		-0.772002, -0.394683, 0.498235,
		29.432961, 19.184071, 36.268394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345682, 19.706957, 35.638424>,  <29.973362, 19.460348, 35.919628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345682, 19.706957, 35.638424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312117, 19.599483, 36.022251>,  <29.291977, 19.535000, 36.252548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312117, 19.599483, 36.022251>,  <29.345682, 19.706957, 35.638424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312117, 19.599483, 36.022251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308581, 0.922633, 0.231357,
		-0.947490, -0.276690, -0.160332,
		-0.083913, -0.268684, 0.959567,
		29.286943, 19.518879, 36.310120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758417, 20.131416, 35.866501>,  <29.345682, 19.706957, 35.638424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758417, 20.131416, 35.866501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977655, 20.031288, 36.185734>,  <29.109198, 19.971212, 36.377274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977655, 20.031288, 36.185734>,  <28.758417, 20.131416, 35.866501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977655, 20.031288, 36.185734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198925, 0.887778, 0.415066,
		-0.812418, -0.386254, 0.436791,
		0.548094, -0.250318, 0.798082,
		29.142084, 19.956192, 36.425159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487894, 20.551252, 36.440784>,  <28.758417, 20.131416, 35.866501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487894, 20.551252, 36.440784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841303, 20.408710, 36.562370>,  <29.053349, 20.323185, 36.635323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841303, 20.408710, 36.562370>,  <28.487894, 20.551252, 36.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841303, 20.408710, 36.562370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076965, 0.750602, 0.656257,
		-0.462019, -0.556424, 0.690602,
		0.883524, -0.356355, 0.303967,
		29.106359, 20.301804, 36.653561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135317, 20.827602, 36.310852>,  <28.487894, 20.551252, 36.440784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135317, 20.827602, 36.310852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504454, 20.901310, 36.446148>,  <29.725935, 20.945534, 36.527325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504454, 20.901310, 36.446148>,  <29.135317, 20.827602, 36.310852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504454, 20.901310, 36.446148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094623, 0.959690, -0.264652,
		-0.373375, 0.212226, 0.903079,
		0.922842, 0.184267, 0.338243,
		29.781307, 20.956591, 36.547623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198242, 21.212324, 36.875481>,  <29.135317, 20.827602, 36.310852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198242, 21.212324, 36.875481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481258, 21.270782, 36.598923>,  <29.651068, 21.305857, 36.432987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481258, 21.270782, 36.598923>,  <29.198242, 21.212324, 36.875481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481258, 21.270782, 36.598923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390584, 0.896233, -0.210262,
		0.588922, 0.418817, 0.691205,
		0.707542, 0.146146, -0.691394,
		29.693521, 21.314627, 36.391506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001080, 21.860521, 36.653854>,  <29.198242, 21.212324, 36.875481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001080, 21.860521, 36.653854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298870, 21.741726, 36.414673>,  <29.477545, 21.670448, 36.271164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298870, 21.741726, 36.414673>,  <29.001080, 21.860521, 36.653854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298870, 21.741726, 36.414673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060435, 0.861964, -0.503354,
		0.664906, 0.410874, 0.623765,
		0.744478, -0.296986, -0.597956,
		29.522213, 21.652630, 36.235287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566187, 22.348965, 36.658485>,  <29.001080, 21.860521, 36.653854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566187, 22.348965, 36.658485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575764, 22.180023, 36.296040>,  <29.581511, 22.078659, 36.078571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575764, 22.180023, 36.296040>,  <29.566187, 22.348965, 36.658485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575764, 22.180023, 36.296040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035348, 0.906165, -0.421444,
		0.999088, -0.021939, 0.036626,
		0.023943, -0.422354, -0.906115,
		29.582947, 22.053316, 36.024204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150997, 22.553160, 36.138447>,  <29.566187, 22.348965, 36.658485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150997, 22.553160, 36.138447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903353, 22.412102, 35.857780>,  <29.754766, 22.327467, 35.689381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903353, 22.412102, 35.857780>,  <30.150997, 22.553160, 36.138447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903353, 22.412102, 35.857780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124234, 0.838269, -0.530915,
		0.775412, -0.415868, -0.475174,
		-0.619114, -0.352646, -0.701668,
		29.717619, 22.306307, 35.647278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507685, 22.746101, 35.502865>,  <30.150997, 22.553160, 36.138447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507685, 22.746101, 35.502865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138336, 22.651321, 35.382042>,  <29.916727, 22.594454, 35.309547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138336, 22.651321, 35.382042>,  <30.507685, 22.746101, 35.502865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138336, 22.651321, 35.382042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023868, 0.749848, -0.661180,
		0.383168, -0.617724, -0.686731,
		-0.923370, -0.236952, -0.302061,
		29.861324, 22.580236, 35.291424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484436, 22.637682, 34.769035>,  <30.507685, 22.746101, 35.502865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484436, 22.637682, 34.769035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112516, 22.756824, 34.855526>,  <29.889364, 22.828310, 34.907421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112516, 22.756824, 34.855526>,  <30.484436, 22.637682, 34.769035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112516, 22.756824, 34.855526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070441, 0.720614, -0.689749,
		-0.361264, -0.626096, -0.691008,
		-0.929799, 0.297856, 0.216229,
		29.833576, 22.846182, 34.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284157, 22.872129, 34.164776>,  <30.484436, 22.637682, 34.769035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284157, 22.872129, 34.164776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999931, 23.028194, 34.398998>,  <29.829397, 23.121834, 34.539532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999931, 23.028194, 34.398998>,  <30.284157, 22.872129, 34.164776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999931, 23.028194, 34.398998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048675, 0.802939, -0.594070,
		-0.701949, -0.450626, -0.551547,
		-0.710562, 0.390161, 0.585557,
		29.786762, 23.145243, 34.574665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916550, 23.192059, 33.715591>,  <30.284157, 22.872129, 34.164776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916550, 23.192059, 33.715591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802607, 23.357887, 34.061306>,  <29.734241, 23.457384, 34.268734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802607, 23.357887, 34.061306>,  <29.916550, 23.192059, 33.715591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802607, 23.357887, 34.061306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036483, 0.896296, -0.441953,
		-0.957875, -0.157425, -0.240192,
		-0.284858, 0.414573, 0.864283,
		29.717150, 23.482260, 34.320591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223179, 23.598022, 33.581959>,  <29.916550, 23.192059, 33.715591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223179, 23.598022, 33.581959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396856, 23.752659, 33.907417>,  <29.501062, 23.845442, 34.102692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396856, 23.752659, 33.907417>,  <29.223179, 23.598022, 33.581959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396856, 23.752659, 33.907417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000833, 0.903058, -0.429518,
		-0.900819, 0.187172, 0.391780,
		0.434194, 0.386592, 0.813647,
		29.527115, 23.868637, 34.151512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861111, 24.190657, 33.645275>,  <29.223179, 23.598022, 33.581959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861111, 24.190657, 33.645275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199680, 24.257210, 33.847614>,  <29.402822, 24.297142, 33.969017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199680, 24.257210, 33.847614>,  <28.861111, 24.190657, 33.645275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199680, 24.257210, 33.847614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043891, 0.924904, -0.377659,
		-0.530695, 0.341862, 0.775559,
		0.846425, 0.166382, 0.505847,
		29.453608, 24.307125, 33.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743088, 24.760160, 34.031128>,  <28.861111, 24.190657, 33.645275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743088, 24.760160, 34.031128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141708, 24.730469, 34.016281>,  <29.380880, 24.712654, 34.007374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141708, 24.730469, 34.016281>,  <28.743088, 24.760160, 34.031128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141708, 24.730469, 34.016281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052901, 0.912767, -0.405040,
		0.063945, 0.401679, 0.913545,
		0.996550, -0.074228, -0.037117,
		29.440674, 24.708200, 34.005146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912380, 25.323036, 34.141796>,  <28.743088, 24.760160, 34.031128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912380, 25.323036, 34.141796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257851, 25.192814, 33.987869>,  <29.465132, 25.114681, 33.895515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257851, 25.192814, 33.987869>,  <28.912380, 25.323036, 34.141796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257851, 25.192814, 33.987869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158615, 0.900193, -0.405577,
		0.478444, 0.289249, 0.829112,
		0.863674, -0.325556, -0.384813,
		29.516953, 25.095146, 33.872425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330219, 25.877319, 34.329067>,  <28.912380, 25.323036, 34.141796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330219, 25.877319, 34.329067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466564, 25.686409, 34.005085>,  <29.548370, 25.571863, 33.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466564, 25.686409, 34.005085>,  <29.330219, 25.877319, 34.329067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466564, 25.686409, 34.005085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110673, 0.875927, -0.469578,
		0.933577, 0.070422, 0.351391,
		0.340861, -0.477276, -0.809951,
		29.568823, 25.543226, 33.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941391, 26.209417, 34.174934>,  <29.330219, 25.877319, 34.329067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941391, 26.209417, 34.174934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839125, 26.019489, 33.838081>,  <29.777765, 25.905533, 33.635971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839125, 26.019489, 33.838081>,  <29.941391, 26.209417, 34.174934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839125, 26.019489, 33.838081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348845, 0.767084, -0.538412,
		0.901633, -0.431426, -0.030478,
		-0.255664, -0.474819, -0.842130,
		29.762424, 25.877045, 33.585442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504017, 26.275864, 33.758041>,  <29.941391, 26.209417, 34.174934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504017, 26.275864, 33.758041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196651, 26.204651, 33.512165>,  <30.012232, 26.161922, 33.364639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196651, 26.204651, 33.512165>,  <30.504017, 26.275864, 33.758041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196651, 26.204651, 33.512165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346480, 0.691830, -0.633500,
		0.538046, -0.699768, -0.469927,
		-0.768412, -0.178032, -0.614692,
		29.966127, 26.151241, 33.327759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804962, 26.308422, 33.161686>,  <30.504017, 26.275864, 33.758041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804962, 26.308422, 33.161686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417849, 26.383404, 33.094444>,  <30.185581, 26.428392, 33.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417849, 26.383404, 33.094444>,  <30.804962, 26.308422, 33.161686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417849, 26.383404, 33.094444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251775, 0.728023, -0.637645,
		0.002857, -0.659426, -0.751764,
		-0.967781, 0.187454, -0.168107,
		30.127514, 26.439640, 33.044014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789993, 26.426733, 32.512508>,  <30.804962, 26.308422, 33.161686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789993, 26.426733, 32.512508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443727, 26.589710, 32.628860>,  <30.235968, 26.687496, 32.698673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443727, 26.589710, 32.628860>,  <30.789993, 26.426733, 32.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443727, 26.589710, 32.628860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174183, 0.789870, -0.588019,
		-0.469344, -0.458361, -0.754733,
		-0.865665, 0.407445, 0.290882,
		30.184029, 26.711945, 32.716125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458824, 26.729057, 31.952345>,  <30.789993, 26.426733, 32.512508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458824, 26.729057, 31.952345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234430, 26.912426, 32.228069>,  <30.099794, 27.022448, 32.393505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234430, 26.912426, 32.228069>,  <30.458824, 26.729057, 31.952345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234430, 26.912426, 32.228069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084983, 0.860166, -0.502884,
		-0.823452, -0.223531, -0.521499,
		-0.560986, 0.458420, 0.689309,
		30.066135, 27.049952, 32.434860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971590, 27.272301, 31.600430>,  <30.458824, 26.729057, 31.952345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971590, 27.272301, 31.600430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997862, 27.414429, 31.973404>,  <30.013624, 27.499706, 32.197189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997862, 27.414429, 31.973404>,  <29.971590, 27.272301, 31.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997862, 27.414429, 31.973404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067099, 0.930764, -0.359412,
		-0.995582, 0.086171, 0.037291,
		0.065680, 0.355322, 0.932434,
		30.017567, 27.521025, 32.253136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497545, 27.828224, 31.706724>,  <29.971590, 27.272301, 31.600430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497545, 27.828224, 31.706724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780573, 27.883533, 31.983917>,  <29.950390, 27.916719, 32.150234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780573, 27.883533, 31.983917>,  <29.497545, 27.828224, 31.706724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780573, 27.883533, 31.983917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003861, 0.979897, -0.199467,
		-0.706634, 0.143813, 0.692811,
		0.707569, 0.138275, 0.692983,
		29.992844, 27.925016, 32.191811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333788, 28.461416, 32.048168>,  <29.497545, 27.828224, 31.706724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333788, 28.461416, 32.048168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711561, 28.419453, 32.172771>,  <29.938225, 28.394274, 32.247532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711561, 28.419453, 32.172771>,  <29.333788, 28.461416, 32.048168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711561, 28.419453, 32.172771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177971, 0.959975, -0.216273,
		-0.276351, 0.259695, 0.925304,
		0.944434, -0.104910, 0.311509,
		29.994892, 28.387980, 32.266224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529654, 29.104719, 32.541588>,  <29.333788, 28.461416, 32.048168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529654, 29.104719, 32.541588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863367, 28.926147, 32.412178>,  <30.063595, 28.819004, 32.334534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863367, 28.926147, 32.412178>,  <29.529654, 29.104719, 32.541588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863367, 28.926147, 32.412178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350616, 0.882466, -0.313563,
		0.425483, 0.148168, 0.892754,
		0.834285, -0.446430, -0.323524,
		30.113653, 28.792219, 32.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013338, 29.535879, 32.847015>,  <29.529654, 29.104719, 32.541588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013338, 29.535879, 32.847015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222336, 29.332767, 32.573032>,  <30.347734, 29.210901, 32.408642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222336, 29.332767, 32.573032>,  <30.013338, 29.535879, 32.847015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222336, 29.332767, 32.573032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475329, 0.840385, -0.260414,
		0.707858, -0.189515, 0.680456,
		0.522493, -0.507777, -0.684955,
		30.379084, 29.180435, 32.367546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674826, 29.705526, 32.917641>,  <30.013338, 29.535879, 32.847015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674826, 29.705526, 32.917641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677353, 29.561977, 32.544296>,  <30.678869, 29.475847, 32.320290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677353, 29.561977, 32.544296>,  <30.674826, 29.705526, 32.917641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677353, 29.561977, 32.544296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532080, 0.791491, -0.300721,
		0.846671, -0.494724, 0.195951,
		0.006319, -0.358873, -0.933365,
		30.679249, 29.454315, 32.264286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295252, 29.837662, 32.687450>,  <30.674826, 29.705526, 32.917641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295252, 29.837662, 32.687450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082279, 29.791908, 32.351967>,  <30.954496, 29.764456, 32.150677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082279, 29.791908, 32.351967>,  <31.295252, 29.837662, 32.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082279, 29.791908, 32.351967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420097, 0.824487, -0.379130,
		0.734872, -0.554200, -0.390930,
		-0.532431, -0.114383, -0.838709,
		30.922550, 29.757593, 32.100353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760382, 29.929083, 32.130371>,  <31.295252, 29.837662, 32.687450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760382, 29.929083, 32.130371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405167, 29.965790, 31.950165>,  <31.192038, 29.987814, 31.842041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405167, 29.965790, 31.950165>,  <31.760382, 29.929083, 32.130371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405167, 29.965790, 31.950165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339811, 0.791057, -0.508683,
		0.309703, -0.604821, -0.733673,
		-0.888039, 0.091769, -0.450517,
		31.138756, 29.993320, 31.815010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946247, 30.049473, 31.457970>,  <31.760382, 29.929083, 32.130371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946247, 30.049473, 31.457970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565577, 30.172108, 31.465050>,  <31.337173, 30.245689, 31.469297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565577, 30.172108, 31.465050>,  <31.946247, 30.049473, 31.457970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565577, 30.172108, 31.465050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187111, 0.624583, -0.758212,
		-0.243515, -0.718261, -0.651768,
		-0.951678, 0.306589, 0.017701,
		31.280073, 30.264084, 31.470360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735008, 30.043930, 30.712523>,  <31.946247, 30.049473, 31.457970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735008, 30.043930, 30.712523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520468, 30.294846, 30.938385>,  <31.391743, 30.445395, 31.073902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520468, 30.294846, 30.938385>,  <31.735008, 30.043930, 30.712523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520468, 30.294846, 30.938385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201057, 0.744731, -0.636359,
		-0.819697, -0.227784, -0.525558,
		-0.536352, 0.627288, 0.564656,
		31.359562, 30.483032, 31.107782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362705, 30.278732, 30.185337>,  <31.735008, 30.043930, 30.712523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362705, 30.278732, 30.185337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384911, 30.542465, 30.485256>,  <31.398233, 30.700705, 30.665209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384911, 30.542465, 30.485256>,  <31.362705, 30.278732, 30.185337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384911, 30.542465, 30.485256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193008, 0.729707, -0.655954,
		-0.979626, 0.181130, -0.086750,
		0.055511, 0.659333, 0.749799,
		31.401564, 30.740265, 30.710196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006735, 30.859068, 29.944860>,  <31.362705, 30.278732, 30.185337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006735, 30.859068, 29.944860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149282, 31.047588, 30.267567>,  <31.234812, 31.160702, 30.461191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149282, 31.047588, 30.267567>,  <31.006735, 30.859068, 29.944860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149282, 31.047588, 30.267567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070625, 0.847400, -0.526237,
		-0.931672, 0.244513, 0.268702,
		0.356370, 0.471303, 0.806768,
		31.256193, 31.188978, 30.509598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646038, 31.569159, 30.068769>,  <31.006735, 30.859068, 29.944860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646038, 31.569159, 30.068769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011276, 31.583397, 30.231243>,  <31.230419, 31.591940, 30.328728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011276, 31.583397, 30.231243>,  <30.646038, 31.569159, 30.068769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011276, 31.583397, 30.231243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212417, 0.808798, -0.548383,
		-0.348041, 0.587008, 0.730951,
		0.913097, 0.035594, 0.406185,
		31.285206, 31.594074, 30.353098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740801, 32.245186, 30.156641>,  <30.646038, 31.569159, 30.068769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740801, 32.245186, 30.156641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105513, 32.085567, 30.195473>,  <31.324339, 31.989796, 30.218771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105513, 32.085567, 30.195473>,  <30.740801, 32.245186, 30.156641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105513, 32.085567, 30.195473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309118, 0.511209, -0.801942,
		0.270385, 0.761201, 0.589462,
		0.911778, -0.399046, 0.097078,
		31.379045, 31.965853, 30.224596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250076, 32.689220, 30.240934>,  <30.740801, 32.245186, 30.156641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250076, 32.689220, 30.240934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483671, 32.396370, 30.100681>,  <31.623829, 32.220657, 30.016529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483671, 32.396370, 30.100681>,  <31.250076, 32.689220, 30.240934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483671, 32.396370, 30.100681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329868, 0.608698, -0.721577,
		0.741718, 0.305731, 0.596979,
		0.583988, -0.732131, -0.350631,
		31.658867, 32.176731, 29.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821543, 33.011978, 30.133484>,  <31.250076, 32.689220, 30.240934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821543, 33.011978, 30.133484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818247, 32.686306, 29.901264>,  <31.816269, 32.490902, 29.761932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818247, 32.686306, 29.901264>,  <31.821543, 33.011978, 30.133484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818247, 32.686306, 29.901264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307328, 0.550409, -0.776272,
		0.951568, -0.184814, 0.245687,
		-0.008237, -0.814182, -0.580551,
		31.815775, 32.442051, 29.727098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419224, 33.112331, 29.585184>,  <31.821543, 33.011978, 30.133484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419224, 33.112331, 29.585184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187225, 32.820351, 29.440529>,  <32.048027, 32.645164, 29.353735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187225, 32.820351, 29.440529>,  <32.419224, 33.112331, 29.585184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187225, 32.820351, 29.440529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116300, 0.365192, -0.923639,
		0.806276, -0.577764, -0.126916,
		-0.579994, -0.729948, -0.361639,
		32.013226, 32.601368, 29.332037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729641, 32.858292, 29.001085>,  <32.419224, 33.112331, 29.585184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729641, 32.858292, 29.001085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343834, 32.764088, 28.953362>,  <32.112350, 32.707565, 28.924726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343834, 32.764088, 28.953362>,  <32.729641, 32.858292, 29.001085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343834, 32.764088, 28.953362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017730, 0.393116, -0.919318,
		0.263413, -0.888816, -0.374992,
		-0.964520, -0.235512, -0.119311,
		32.054478, 32.693436, 28.917568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714485, 32.801693, 28.245480>,  <32.729641, 32.858292, 29.001085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714485, 32.801693, 28.245480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332729, 32.819012, 28.363640>,  <32.103676, 32.829403, 28.434536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332729, 32.819012, 28.363640>,  <32.714485, 32.801693, 28.245480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332729, 32.819012, 28.363640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261934, 0.353378, -0.898061,
		-0.143275, -0.934478, -0.325920,
		-0.954391, 0.043300, 0.295402,
		32.046413, 32.832001, 28.452261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347805, 32.498035, 27.736984>,  <32.714485, 32.801693, 28.245480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347805, 32.498035, 27.736984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064850, 32.706787, 27.927662>,  <31.895077, 32.832039, 28.042068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064850, 32.706787, 27.927662>,  <32.347805, 32.498035, 27.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064850, 32.706787, 27.927662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251806, 0.444099, -0.859866,
		-0.660448, -0.728296, -0.182739,
		-0.707391, 0.521882, 0.476694,
		31.852633, 32.863350, 28.070669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627445, 32.284267, 27.569805>,  <32.347805, 32.498035, 27.736984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627445, 32.284267, 27.569805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594454, 32.666592, 27.682678>,  <31.574659, 32.895985, 27.750402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594454, 32.666592, 27.682678>,  <31.627445, 32.284267, 27.569805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594454, 32.666592, 27.682678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177710, 0.264505, -0.947869,
		-0.980621, -0.128323, 0.148041,
		-0.082476, 0.955809, 0.282183,
		31.569712, 32.953335, 27.767334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048056, 32.525482, 27.299608>,  <31.627445, 32.284267, 27.569805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048056, 32.525482, 27.299608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279755, 32.845211, 27.363544>,  <31.418774, 33.037048, 27.401907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279755, 32.845211, 27.363544>,  <31.048056, 32.525482, 27.299608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279755, 32.845211, 27.363544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128171, 0.282958, -0.950530,
		-0.805012, 0.530105, 0.266353,
		0.579248, 0.799327, 0.159841,
		31.453529, 33.085011, 27.411497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784147, 32.110432, 27.781237>,  <31.048056, 32.525482, 27.299608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784147, 32.110432, 27.781237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471447, 32.152126, 27.535309>,  <30.283827, 32.177143, 27.387753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471447, 32.152126, 27.535309>,  <30.784147, 32.110432, 27.781237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471447, 32.152126, 27.535309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601435, -0.386511, 0.699203,
		-0.164752, 0.916376, 0.364846,
		-0.781750, 0.104237, -0.614819,
		30.236921, 32.183395, 27.350863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223310, 32.297142, 28.223572>,  <30.784147, 32.110432, 27.781237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223310, 32.297142, 28.223572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049892, 32.169243, 27.886574>,  <29.945841, 32.092503, 27.684374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049892, 32.169243, 27.886574>,  <30.223310, 32.297142, 28.223572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049892, 32.169243, 27.886574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704220, -0.463109, 0.538148,
		-0.562238, 0.826616, -0.024391,
		-0.433546, -0.319744, -0.842497,
		29.919828, 32.073318, 27.633825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466692, 32.565083, 28.216394>,  <30.223310, 32.297142, 28.223572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466692, 32.565083, 28.216394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525997, 32.228310, 28.008869>,  <29.561581, 32.026245, 27.884354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525997, 32.228310, 28.008869>,  <29.466692, 32.565083, 28.216394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525997, 32.228310, 28.008869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801200, -0.409795, 0.436057,
		-0.579738, 0.351022, -0.735314,
		0.148263, -0.841933, -0.518812,
		29.570477, 31.975729, 27.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777210, 32.358288, 27.889791>,  <29.466692, 32.565083, 28.216394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777210, 32.358288, 27.889791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002716, 32.027946, 27.894581>,  <29.138020, 31.829742, 27.897455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002716, 32.027946, 27.894581>,  <28.777210, 32.358288, 27.889791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002716, 32.027946, 27.894581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740682, -0.499101, 0.449765,
		-0.365461, -0.262432, -0.893067,
		0.563763, -0.825849, 0.011976,
		29.171844, 31.780191, 27.898174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363180, 31.887438, 27.742331>,  <28.777210, 32.358288, 27.889791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363180, 31.887438, 27.742331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658554, 31.652866, 27.875488>,  <28.835777, 31.512123, 27.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658554, 31.652866, 27.875488>,  <28.363180, 31.887438, 27.742331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658554, 31.652866, 27.875488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674215, -0.633083, 0.380317,
		-0.012279, -0.505281, -0.862868,
		0.738433, -0.586428, 0.332894,
		28.880085, 31.476938, 27.975357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127781, 31.200552, 27.766665>,  <28.363180, 31.887438, 27.742331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127781, 31.200552, 27.766665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455448, 31.161102, 27.992668>,  <28.652048, 31.137432, 28.128271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455448, 31.161102, 27.992668>,  <28.127781, 31.200552, 27.766665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455448, 31.161102, 27.992668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500321, -0.604530, 0.619857,
		0.280432, -0.790453, -0.544556,
		0.819168, -0.098625, 0.565010,
		28.701199, 31.131516, 28.162170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231632, 30.460783, 27.843477>,  <28.127781, 31.200552, 27.766665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231632, 30.460783, 27.843477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405476, 30.648945, 28.150681>,  <28.509781, 30.761843, 28.335003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405476, 30.648945, 28.150681>,  <28.231632, 30.460783, 27.843477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405476, 30.648945, 28.150681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447649, -0.627127, 0.637434,
		0.781490, -0.620831, -0.061977,
		0.434606, 0.470404, 0.768008,
		28.535858, 30.790066, 28.381083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155973, 29.935455, 28.320240>,  <28.231632, 30.460783, 27.843477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155973, 29.935455, 28.320240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268705, 30.261086, 28.523357>,  <28.336344, 30.456465, 28.645227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268705, 30.261086, 28.523357>,  <28.155973, 29.935455, 28.320240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268705, 30.261086, 28.523357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400599, -0.381067, 0.833252,
		0.871833, -0.438255, 0.218723,
		0.281829, 0.814077, 0.507791,
		28.353254, 30.505308, 28.675695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610491, 29.674229, 28.839500>,  <28.155973, 29.935455, 28.320240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610491, 29.674229, 28.839500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456764, 30.020344, 28.968235>,  <28.364529, 30.228012, 29.045477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456764, 30.020344, 28.968235>,  <28.610491, 29.674229, 28.839500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456764, 30.020344, 28.968235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447288, -0.479481, 0.755004,
		0.807611, 0.146206, 0.571304,
		-0.384316, 0.865287, 0.321838,
		28.341469, 30.279930, 29.064787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649296, 29.579203, 29.497650>,  <28.610491, 29.674229, 28.839500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649296, 29.579203, 29.497650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409227, 29.897190, 29.462284>,  <28.265186, 30.087982, 29.441065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409227, 29.897190, 29.462284>,  <28.649296, 29.579203, 29.497650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409227, 29.897190, 29.462284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615887, -0.388759, 0.685237,
		0.510369, 0.465715, 0.722933,
		-0.600172, 0.794969, -0.088417,
		28.229176, 30.135681, 29.435759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638712, 29.900578, 30.132658>,  <28.649296, 29.579203, 29.497650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638712, 29.900578, 30.132658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295450, 30.031971, 29.974838>,  <28.089493, 30.110807, 29.880146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295450, 30.031971, 29.974838>,  <28.638712, 29.900578, 30.132658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295450, 30.031971, 29.974838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503593, -0.389174, 0.771322,
		0.099819, 0.860605, 0.499395,
		-0.858155, 0.328484, -0.394547,
		28.038004, 30.130516, 29.856474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210297, 30.170687, 30.681198>,  <28.638712, 29.900578, 30.132658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210297, 30.170687, 30.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940847, 30.103756, 30.393246>,  <27.779177, 30.063597, 30.220474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940847, 30.103756, 30.393246>,  <28.210297, 30.170687, 30.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940847, 30.103756, 30.393246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402978, -0.733353, 0.547542,
		-0.619547, 0.658935, 0.426575,
		-0.673625, -0.167327, -0.719883,
		27.738760, 30.053558, 30.177280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729830, 30.074457, 31.000505>,  <28.210297, 30.170687, 30.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729830, 30.074457, 31.000505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611629, 29.890102, 30.665779>,  <27.540709, 29.779490, 30.464943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611629, 29.890102, 30.665779>,  <27.729830, 30.074457, 31.000505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611629, 29.890102, 30.665779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420773, -0.723609, 0.547120,
		-0.857688, 0.513785, 0.019900,
		-0.295502, -0.460885, -0.836818,
		27.522980, 29.751837, 30.414734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992636, 30.037395, 31.052235>,  <27.729830, 30.074457, 31.000505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992636, 30.037395, 31.052235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148792, 29.746674, 30.826191>,  <27.242487, 29.572241, 30.690565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148792, 29.746674, 30.826191>,  <26.992636, 30.037395, 31.052235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148792, 29.746674, 30.826191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536722, -0.678389, 0.501714,
		-0.748013, 0.107442, -0.654930,
		0.390392, -0.726804, -0.565110,
		27.265909, 29.528633, 30.656658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358072, 29.603336, 30.756933>,  <26.992636, 30.037395, 31.052235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358072, 29.603336, 30.756933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694933, 29.387642, 30.755928>,  <26.897049, 29.258224, 30.755325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694933, 29.387642, 30.755928>,  <26.358072, 29.603336, 30.756933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694933, 29.387642, 30.755928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533259, -0.833486, 0.144695,
		-0.080120, -0.120515, -0.989473,
		0.842149, -0.539238, -0.002513,
		26.947578, 29.225870, 30.755175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163395, 28.877958, 30.843285>,  <26.358072, 29.603336, 30.756933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163395, 28.877958, 30.843285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553391, 28.853317, 30.928703>,  <26.787388, 28.838533, 30.979954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553391, 28.853317, 30.928703>,  <26.163395, 28.877958, 30.843285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553391, 28.853317, 30.928703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144727, -0.905167, 0.399659,
		0.168676, -0.420569, -0.891443,
		0.974988, -0.061602, 0.213548,
		26.845886, 28.834837, 30.992767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389610, 28.265802, 30.589832>,  <26.163395, 28.877958, 30.843285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389610, 28.265802, 30.589832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667316, 28.363228, 30.860733>,  <26.833941, 28.421684, 31.023273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667316, 28.363228, 30.860733>,  <26.389610, 28.265802, 30.589832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667316, 28.363228, 30.860733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028436, -0.930979, 0.363964,
		0.719157, -0.271946, -0.639421,
		0.694266, 0.243565, 0.677253,
		26.875597, 28.436296, 31.063910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873554, 27.748497, 30.522308>,  <26.389610, 28.265802, 30.589832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873554, 27.748497, 30.522308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955996, 27.908752, 30.879410>,  <27.005461, 28.004906, 31.093670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955996, 27.908752, 30.879410>,  <26.873554, 27.748497, 30.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955996, 27.908752, 30.879410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206942, -0.909553, 0.360401,
		0.956397, 0.110468, -0.270373,
		0.206105, 0.400638, 0.892754,
		27.017828, 28.028944, 31.147236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506521, 27.355284, 30.630793>,  <26.873554, 27.748497, 30.522308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506521, 27.355284, 30.630793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353109, 27.507183, 30.967529>,  <27.261063, 27.598322, 31.169571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353109, 27.507183, 30.967529>,  <27.506521, 27.355284, 30.630793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353109, 27.507183, 30.967529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257982, -0.831208, 0.492483,
		0.886764, 0.406062, 0.220826,
		-0.383531, 0.379746, 0.841841,
		27.238050, 27.621107, 31.220081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968561, 27.395914, 31.107632>,  <27.506521, 27.355284, 30.630793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968561, 27.395914, 31.107632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656500, 27.405930, 31.357666>,  <27.469263, 27.411940, 31.507687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656500, 27.405930, 31.357666>,  <27.968561, 27.395914, 31.107632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656500, 27.405930, 31.357666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325879, -0.836655, 0.440239,
		0.534004, 0.547157, 0.644561,
		-0.780156, 0.025040, 0.625084,
		27.422453, 27.413441, 31.545191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208952, 27.191542, 31.681084>,  <27.968561, 27.395914, 31.107632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208952, 27.191542, 31.681084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818171, 27.123199, 31.732265>,  <27.583702, 27.082195, 31.762974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818171, 27.123199, 31.732265>,  <28.208952, 27.191542, 31.681084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818171, 27.123199, 31.732265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206152, -0.910677, 0.358006,
		0.055359, 0.376133, 0.924910,
		-0.976953, -0.170853, 0.127954,
		27.525085, 27.071943, 31.770651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146265, 27.061045, 32.385235>,  <28.208952, 27.191542, 31.681084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146265, 27.061045, 32.385235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855606, 26.875767, 32.182281>,  <27.681211, 26.764599, 32.060509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855606, 26.875767, 32.182281>,  <28.146265, 27.061045, 32.385235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855606, 26.875767, 32.182281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269973, -0.871640, 0.409094,
		-0.631743, 0.160288, 0.758425,
		-0.726647, -0.463197, -0.507379,
		27.637611, 26.736807, 32.030067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045033, 26.634680, 32.815418>,  <28.146265, 27.061045, 32.385235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045033, 26.634680, 32.815418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875471, 26.493042, 32.481968>,  <27.773735, 26.408060, 32.281898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875471, 26.493042, 32.481968>,  <28.045033, 26.634680, 32.815418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875471, 26.493042, 32.481968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160803, -0.935210, 0.315474,
		-0.891318, -0.000318, 0.453378,
		-0.423904, -0.354092, -0.833621,
		27.748301, 26.386814, 32.231880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729727, 26.027042, 33.103226>,  <28.045033, 26.634680, 32.815418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729727, 26.027042, 33.103226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744335, 25.991261, 32.705097>,  <27.753099, 25.969791, 32.466221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744335, 25.991261, 32.705097>,  <27.729727, 26.027042, 33.103226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744335, 25.991261, 32.705097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061262, -0.993912, 0.091575,
		-0.997453, -0.064319, -0.030816,
		0.036519, -0.089454, -0.995321,
		27.755291, 25.964424, 32.406502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122454, 25.640017, 32.947662>,  <27.729727, 26.027042, 33.103226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122454, 25.640017, 32.947662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396849, 25.601791, 32.659138>,  <27.561485, 25.578856, 32.486023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396849, 25.601791, 32.659138>,  <27.122454, 25.640017, 32.947662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396849, 25.601791, 32.659138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008320, -0.992303, 0.123556,
		-0.727568, -0.078756, -0.681500,
		0.685985, -0.095565, -0.721312,
		27.602644, 25.573122, 32.442745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893564, 25.125477, 32.503468>,  <27.122454, 25.640017, 32.947662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893564, 25.125477, 32.503468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289755, 25.143185, 32.451321>,  <27.527470, 25.153809, 32.420033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289755, 25.143185, 32.451321>,  <26.893564, 25.125477, 32.503468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289755, 25.143185, 32.451321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059432, -0.991607, 0.114823,
		-0.124194, -0.121478, -0.984794,
		0.990476, 0.044268, -0.130372,
		27.586897, 25.156466, 32.412209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071058, 24.693951, 31.934315>,  <26.893564, 25.125477, 32.503468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071058, 24.693951, 31.934315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420145, 24.752323, 32.120678>,  <27.629597, 24.787346, 32.232494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420145, 24.752323, 32.120678>,  <27.071058, 24.693951, 31.934315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420145, 24.752323, 32.120678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248977, -0.953899, -0.167592,
		0.419972, 0.262260, -0.868817,
		0.872716, 0.145931, 0.465908,
		27.681959, 24.796103, 32.260448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560728, 24.271793, 31.487331>,  <27.071058, 24.693951, 31.934315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560728, 24.271793, 31.487331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720898, 24.337162, 31.847988>,  <27.816999, 24.376383, 32.064381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720898, 24.337162, 31.847988>,  <27.560728, 24.271793, 31.487331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720898, 24.337162, 31.847988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357209, -0.933964, 0.010641,
		0.843838, 0.317813, -0.432357,
		0.400424, 0.163420, 0.901640,
		27.841024, 24.386189, 32.118481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195629, 24.032497, 31.527885>,  <27.560728, 24.271793, 31.487331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195629, 24.032497, 31.527885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121283, 24.033775, 31.920914>,  <28.076674, 24.034542, 32.156731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121283, 24.033775, 31.920914>,  <28.195629, 24.032497, 31.527885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121283, 24.033775, 31.920914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314422, -0.947220, 0.062559,
		0.930909, 0.320569, 0.175053,
		-0.185868, 0.003196, 0.982569,
		28.065521, 24.034735, 32.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598413, 23.532522, 31.673134>,  <28.195629, 24.032497, 31.527885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598413, 23.532522, 31.673134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398249, 23.558735, 32.018456>,  <28.278149, 23.574463, 32.225647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398249, 23.558735, 32.018456>,  <28.598413, 23.532522, 31.673134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398249, 23.558735, 32.018456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179884, -0.967502, 0.177710,
		0.846893, 0.244222, 0.472364,
		-0.500414, 0.065530, 0.863303,
		28.248125, 23.578394, 32.277447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987490, 23.216724, 32.260887>,  <28.598413, 23.532522, 31.673134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987490, 23.216724, 32.260887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618467, 23.214184, 32.415211>,  <28.397053, 23.212660, 32.507805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618467, 23.214184, 32.415211>,  <28.987490, 23.216724, 32.260887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618467, 23.214184, 32.415211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105671, -0.965797, 0.236790,
		0.371108, 0.259221, 0.891674,
		-0.922557, -0.006350, 0.385808,
		28.341700, 23.212278, 32.530952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054972, 22.837286, 32.838749>,  <28.987490, 23.216724, 32.260887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054972, 22.837286, 32.838749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662163, 22.808075, 32.769119>,  <28.426477, 22.790548, 32.727341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662163, 22.808075, 32.769119>,  <29.054972, 22.837286, 32.838749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662163, 22.808075, 32.769119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034979, -0.976567, 0.212350,
		-0.185504, 0.202443, 0.961564,
		-0.982020, -0.073027, -0.174076,
		28.367558, 22.786167, 32.716896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712511, 22.433250, 33.420124>,  <29.054972, 22.837286, 32.838749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712511, 22.433250, 33.420124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444250, 22.444824, 33.123642>,  <28.283293, 22.451769, 32.945751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444250, 22.444824, 33.123642>,  <28.712511, 22.433250, 33.420124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444250, 22.444824, 33.123642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087701, -0.995323, 0.040501,
		-0.736569, 0.092167, 0.670053,
		-0.670653, 0.028932, -0.741207,
		28.243053, 22.453505, 32.901279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026983, 22.100262, 33.632397>,  <28.712511, 22.433250, 33.420124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026983, 22.100262, 33.632397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043259, 22.060795, 33.234680>,  <28.053024, 22.037115, 32.996052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043259, 22.060795, 33.234680>,  <28.026983, 22.100262, 33.632397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043259, 22.060795, 33.234680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089512, -0.991471, 0.094724,
		-0.995154, 0.085147, -0.049171,
		0.040686, -0.098667, -0.994289,
		28.055464, 22.031195, 32.936394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637682, 21.595282, 33.565144>,  <28.026983, 22.100262, 33.632397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637682, 21.595282, 33.565144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831337, 21.598629, 33.215164>,  <27.947531, 21.600637, 33.005177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831337, 21.598629, 33.215164>,  <27.637682, 21.595282, 33.565144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831337, 21.598629, 33.215164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031993, -0.999116, -0.027256,
		-0.874406, 0.041188, -0.483444,
		0.484140, 0.008366, -0.874951,
		27.976580, 21.601139, 32.952679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236605, 21.050571, 33.208439>,  <27.637682, 21.595282, 33.565144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236605, 21.050571, 33.208439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592588, 21.094627, 33.031422>,  <27.806179, 21.121061, 32.925213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592588, 21.094627, 33.031422>,  <27.236605, 21.050571, 33.208439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592588, 21.094627, 33.031422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017277, -0.977843, -0.208623,
		-0.455713, 0.178020, -0.872144,
		0.889959, 0.110141, -0.442540,
		27.859575, 21.127670, 32.898659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180304, 20.805176, 32.494602>,  <27.236605, 21.050571, 33.208439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180304, 20.805176, 32.494602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572645, 20.772030, 32.565098>,  <27.808050, 20.752142, 32.607395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572645, 20.772030, 32.565098>,  <27.180304, 20.805176, 32.494602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572645, 20.772030, 32.565098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052044, -0.983577, -0.172824,
		0.187662, 0.160343, -0.969058,
		0.980854, -0.082866, 0.176235,
		27.866901, 20.747169, 32.617970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408577, 20.464396, 31.904673>,  <27.180304, 20.805176, 32.494602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408577, 20.464396, 31.904673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675081, 20.406433, 32.197273>,  <27.834984, 20.371655, 32.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675081, 20.406433, 32.197273>,  <27.408577, 20.464396, 31.904673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675081, 20.406433, 32.197273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090712, -0.957905, -0.272378,
		0.740179, 0.247832, -0.625072,
		0.666263, -0.144907, 0.731502,
		27.874960, 20.362961, 32.416725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415928, 19.680244, 31.939146>,  <27.408577, 20.464396, 31.904673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415928, 19.680244, 31.939146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315107, 19.479973, 31.607895>,  <27.254616, 19.359810, 31.409145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315107, 19.479973, 31.607895>,  <27.415928, 19.680244, 31.939146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315107, 19.479973, 31.607895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293673, 0.854973, -0.427525,
		0.922077, 0.135441, -0.362532,
		-0.252050, -0.500677, -0.828126,
		27.239492, 19.329769, 31.359457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746559, 19.958239, 31.258999>,  <27.415928, 19.680244, 31.939146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746559, 19.958239, 31.258999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409166, 19.774155, 31.148186>,  <27.206732, 19.663704, 31.081697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409166, 19.774155, 31.148186>,  <27.746559, 19.958239, 31.258999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409166, 19.774155, 31.148186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278671, 0.815806, -0.506757,
		0.459220, -0.350239, -0.816364,
		-0.843481, -0.460209, -0.277033,
		27.156122, 19.636091, 31.065075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700748, 20.022888, 30.516653>,  <27.746559, 19.958239, 31.258999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700748, 20.022888, 30.516653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336285, 19.946049, 30.662468>,  <27.117607, 19.899946, 30.749956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336285, 19.946049, 30.662468>,  <27.700748, 20.022888, 30.516653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336285, 19.946049, 30.662468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372742, 0.761366, -0.530458,
		-0.175647, -0.619210, -0.765328,
		-0.911159, -0.192097, 0.364537,
		27.062937, 19.888420, 30.771830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290604, 20.162840, 29.997976>,  <27.700748, 20.022888, 30.516653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290604, 20.162840, 29.997976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025135, 20.159641, 30.297169>,  <26.865854, 20.157722, 30.476685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025135, 20.159641, 30.297169>,  <27.290604, 20.162840, 29.997976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025135, 20.159641, 30.297169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538449, 0.699219, -0.470283,
		-0.519243, -0.714863, -0.468357,
		-0.663672, -0.007995, 0.747981,
		26.826033, 20.157244, 30.521563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639872, 20.338497, 29.604555>,  <27.290604, 20.162840, 29.997976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639872, 20.338497, 29.604555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559423, 20.395931, 29.992149>,  <26.511154, 20.430391, 30.224707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559423, 20.395931, 29.992149>,  <26.639872, 20.338497, 29.604555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559423, 20.395931, 29.992149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462213, 0.858243, -0.223111,
		-0.863661, -0.492750, -0.106244,
		-0.201121, 0.143584, 0.968986,
		26.499086, 20.439007, 30.282845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009598, 20.608006, 29.565393>,  <26.639872, 20.338497, 29.604555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009598, 20.608006, 29.565393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140299, 20.720943, 29.926174>,  <26.218719, 20.788706, 30.142643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140299, 20.720943, 29.926174>,  <26.009598, 20.608006, 29.565393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140299, 20.720943, 29.926174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444079, 0.888290, -0.117191,
		-0.834283, -0.362245, 0.415633,
		0.326751, 0.282345, 0.901951,
		26.238323, 20.805647, 30.196760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.407753, 20.973721, 29.892643>,  <26.009598, 20.608006, 29.565393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.407753, 20.973721, 29.892643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751759, 21.082485, 30.065357>,  <25.958162, 21.147745, 30.168985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751759, 21.082485, 30.065357>,  <25.407753, 20.973721, 29.892643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751759, 21.082485, 30.065357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300618, 0.953743, -0.001851,
		-0.412314, -0.128210, 0.901975,
		0.860015, 0.271914, 0.431784,
		26.009764, 21.164059, 30.194893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223520, 21.465088, 30.396940>,  <25.407753, 20.973721, 29.892643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223520, 21.465088, 30.396940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604836, 21.548882, 30.309891>,  <25.833624, 21.599157, 30.257662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604836, 21.548882, 30.309891>,  <25.223520, 21.465088, 30.396940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604836, 21.548882, 30.309891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254426, 0.945186, -0.204672,
		0.162819, 0.250480, 0.954332,
		0.953288, 0.209483, -0.217623,
		25.890821, 21.611727, 30.244604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450989, 22.037397, 30.823143>,  <25.223520, 21.465088, 30.396940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450989, 22.037397, 30.823143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701982, 22.023338, 30.512009>,  <25.852579, 22.014902, 30.325329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701982, 22.023338, 30.512009>,  <25.450989, 22.037397, 30.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701982, 22.023338, 30.512009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007453, 0.999206, -0.039139,
		0.778593, 0.018762, 0.627249,
		0.627485, -0.035148, -0.777835,
		25.890228, 22.012794, 30.278658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007153, 22.474789, 31.064566>,  <25.450989, 22.037397, 30.823143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007153, 22.474789, 31.064566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017653, 22.426880, 30.667583>,  <26.023952, 22.398134, 30.429394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017653, 22.426880, 30.667583>,  <26.007153, 22.474789, 31.064566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017653, 22.426880, 30.667583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158495, 0.980737, -0.114165,
		0.987011, -0.154302, 0.044729,
		0.026252, -0.119772, -0.992454,
		26.025528, 22.390949, 30.369846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469414, 22.908163, 30.962774>,  <26.007153, 22.474789, 31.064566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469414, 22.908163, 30.962774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286180, 22.852810, 30.611546>,  <26.176241, 22.819597, 30.400808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286180, 22.852810, 30.611546>,  <26.469414, 22.908163, 30.962774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286180, 22.852810, 30.611546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012181, 0.988693, -0.149461,
		0.888825, -0.057770, -0.454590,
		-0.458084, -0.138382, -0.878071,
		26.148754, 22.811295, 30.348124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861387, 23.101866, 30.430449>,  <26.469414, 22.908163, 30.962774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861387, 23.101866, 30.430449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509489, 23.117565, 30.240921>,  <26.298349, 23.126986, 30.127205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509489, 23.117565, 30.240921>,  <26.861387, 23.101866, 30.430449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509489, 23.117565, 30.240921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162335, 0.961493, -0.221764,
		0.446869, -0.272013, -0.852242,
		-0.879747, 0.039249, -0.473819,
		26.245565, 23.129339, 30.098776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997414, 23.478699, 29.828312>,  <26.861387, 23.101866, 30.430449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997414, 23.478699, 29.828312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599827, 23.512226, 29.856617>,  <26.361275, 23.532343, 29.873600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599827, 23.512226, 29.856617>,  <26.997414, 23.478699, 29.828312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599827, 23.512226, 29.856617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059501, 0.953915, -0.294119,
		-0.092151, -0.288134, -0.953146,
		-0.993966, 0.083816, 0.070761,
		26.301638, 23.537371, 29.877846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830238, 23.930639, 29.356764>,  <26.997414, 23.478699, 29.828312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830238, 23.930639, 29.356764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485674, 23.935017, 29.559879>,  <26.278934, 23.937643, 29.681749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485674, 23.935017, 29.559879>,  <26.830238, 23.930639, 29.356764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485674, 23.935017, 29.559879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033952, 0.996291, -0.079066,
		-0.506773, -0.085348, -0.857844,
		-0.861411, 0.010943, 0.507791,
		26.227251, 23.938299, 29.712217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374632, 24.274652, 28.880295>,  <26.830238, 23.930639, 29.356764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374632, 24.274652, 28.880295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234642, 24.294315, 29.254482>,  <26.150648, 24.306112, 29.478994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234642, 24.294315, 29.254482>,  <26.374632, 24.274652, 28.880295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234642, 24.294315, 29.254482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135123, 0.985530, -0.102339,
		-0.926963, -0.162219, -0.338266,
		-0.349973, 0.049157, 0.935469,
		26.129650, 24.309063, 29.535124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878927, 24.760317, 28.752426>,  <26.374632, 24.274652, 28.880295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878927, 24.760317, 28.752426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970308, 24.743992, 29.141506>,  <26.025137, 24.734198, 29.374954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970308, 24.743992, 29.141506>,  <25.878927, 24.760317, 28.752426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970308, 24.743992, 29.141506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102575, 0.994569, 0.017638,
		-0.968136, 0.095746, 0.231398,
		0.228453, -0.040812, 0.972699,
		26.038845, 24.731749, 29.433315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411907, 25.135374, 29.074137>,  <25.878927, 24.760317, 28.752426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411907, 25.135374, 29.074137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711145, 25.132866, 29.339561>,  <25.890688, 25.131361, 29.498816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711145, 25.132866, 29.339561>,  <25.411907, 25.135374, 29.074137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711145, 25.132866, 29.339561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133901, 0.980813, -0.141691,
		-0.649940, 0.194850, 0.734583,
		0.748097, -0.006271, 0.663560,
		25.935574, 25.130985, 29.538630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286875, 25.656816, 29.514135>,  <25.411907, 25.135374, 29.074137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286875, 25.656816, 29.514135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679020, 25.587708, 29.552162>,  <25.914307, 25.546242, 29.574978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679020, 25.587708, 29.552162>,  <25.286875, 25.656816, 29.514135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679020, 25.587708, 29.552162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182872, 0.976920, -0.110384,
		-0.073802, 0.125602, 0.989332,
		0.980363, -0.172775, 0.095068,
		25.973129, 25.535875, 29.580683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518370, 26.310448, 29.761883>,  <25.286875, 25.656816, 29.514135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518370, 26.310448, 29.761883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847666, 26.113358, 29.649101>,  <26.045244, 25.995104, 29.581432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847666, 26.113358, 29.649101>,  <25.518370, 26.310448, 29.761883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847666, 26.113358, 29.649101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448598, 0.869000, -0.208803,
		0.347899, 0.045412, 0.936432,
		0.823241, -0.492724, -0.281953,
		26.094639, 25.965540, 29.564516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111071, 26.700191, 30.109238>,  <25.518370, 26.310448, 29.761883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111071, 26.700191, 30.109238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257244, 26.496105, 29.797817>,  <26.344948, 26.373653, 29.610966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257244, 26.496105, 29.797817>,  <26.111071, 26.700191, 30.109238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257244, 26.496105, 29.797817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543354, 0.796035, -0.266636,
		0.755795, -0.325591, 0.568124,
		0.365432, -0.510215, -0.778550,
		26.366873, 26.343040, 29.564253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930698, 26.745443, 30.119890>,  <26.111071, 26.700191, 30.109238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930698, 26.745443, 30.119890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770617, 26.682777, 29.758717>,  <26.674566, 26.645178, 29.542013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770617, 26.682777, 29.758717>,  <26.930698, 26.745443, 30.119890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770617, 26.682777, 29.758717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341990, 0.888570, -0.305754,
		0.850222, -0.431159, -0.302034,
		-0.400207, -0.156666, -0.902934,
		26.650555, 26.635778, 29.487837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210201, 27.347956, 29.814878>,  <26.930698, 26.745443, 30.119890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210201, 27.347956, 29.814878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007677, 27.175831, 29.515953>,  <26.886162, 27.072556, 29.336597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007677, 27.175831, 29.515953>,  <27.210201, 27.347956, 29.814878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007677, 27.175831, 29.515953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125645, 0.820543, -0.557604,
		0.853147, -0.376219, -0.361386,
		-0.506314, -0.430312, -0.747314,
		26.855783, 27.046738, 29.291759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615149, 27.467278, 29.188147>,  <27.210201, 27.347956, 29.814878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615149, 27.467278, 29.188147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237038, 27.401592, 29.075375>,  <27.010170, 27.362181, 29.007711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237038, 27.401592, 29.075375>,  <27.615149, 27.467278, 29.188147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237038, 27.401592, 29.075375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050972, 0.779168, -0.624740,
		0.322258, -0.604923, -0.728160,
		-0.945278, -0.164211, -0.281928,
		26.953455, 27.352329, 28.990797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627098, 27.560402, 28.455479>,  <27.615149, 27.467278, 29.188147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627098, 27.560402, 28.455479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237591, 27.587536, 28.542358>,  <27.003887, 27.603815, 28.594486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237591, 27.587536, 28.542358>,  <27.627098, 27.560402, 28.455479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237591, 27.587536, 28.542358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089779, 0.762560, -0.640657,
		-0.209086, -0.643351, -0.736466,
		-0.973767, 0.067833, 0.217200,
		26.945461, 27.607885, 28.607519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245953, 27.476248, 27.832611>,  <27.627098, 27.560402, 28.455479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245953, 27.476248, 27.832611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057335, 27.699802, 28.105461>,  <26.944164, 27.833935, 28.269171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057335, 27.699802, 28.105461>,  <27.245953, 27.476248, 27.832611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057335, 27.699802, 28.105461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181611, 0.695394, -0.695302,
		-0.862939, -0.451746, -0.226409,
		-0.471544, 0.558885, 0.682125,
		26.915873, 27.867468, 28.310099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691017, 27.773844, 27.476051>,  <27.245953, 27.476248, 27.832611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691017, 27.773844, 27.476051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667994, 28.013130, 27.795757>,  <26.654179, 28.156702, 27.987581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667994, 28.013130, 27.795757>,  <26.691017, 27.773844, 27.476051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667994, 28.013130, 27.795757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011313, 0.800149, -0.599695,
		-0.998278, -0.043559, -0.039288,
		-0.057558, 0.598218, 0.799264,
		26.650726, 28.192595, 28.035536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329163, 28.312115, 27.231985>,  <26.691017, 27.773844, 27.476051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329163, 28.312115, 27.231985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490242, 28.467838, 27.563351>,  <26.586889, 28.561274, 27.762171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490242, 28.467838, 27.563351>,  <26.329163, 28.312115, 27.231985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490242, 28.467838, 27.563351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032786, 0.910597, -0.411994,
		-0.914746, 0.138748, 0.379458,
		0.402697, 0.389310, 0.828416,
		26.611052, 28.584631, 27.811876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863729, 28.833321, 27.516741>,  <26.329163, 28.312115, 27.231985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863729, 28.833321, 27.516741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229933, 28.929001, 27.646126>,  <26.449656, 28.986408, 27.723757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229933, 28.929001, 27.646126>,  <25.863729, 28.833321, 27.516741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229933, 28.929001, 27.646126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042530, 0.857076, -0.513432,
		-0.400043, 0.456295, 0.794834,
		0.915509, 0.239199, 0.323461,
		26.504585, 29.000761, 27.743164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890293, 29.473946, 27.816561>,  <25.863729, 28.833321, 27.516741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890293, 29.473946, 27.816561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271847, 29.409306, 27.715374>,  <26.500778, 29.370522, 27.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271847, 29.409306, 27.715374>,  <25.890293, 29.473946, 27.816561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271847, 29.409306, 27.715374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000862, 0.844191, -0.536042,
		0.300177, 0.511104, 0.805399,
		0.953883, -0.161601, -0.252966,
		26.558012, 29.360825, 27.639484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125107, 30.198589, 27.812147>,  <25.890293, 29.473946, 27.816561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125107, 30.198589, 27.812147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415354, 30.021671, 27.601299>,  <26.589502, 29.915520, 27.474791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415354, 30.021671, 27.601299>,  <26.125107, 30.198589, 27.812147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415354, 30.021671, 27.601299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233941, 0.878990, -0.415509,
		0.647112, 0.178185, 0.741281,
		0.725616, -0.442296, -0.527120,
		26.633039, 29.888983, 27.443163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628685, 30.696054, 27.723934>,  <26.125107, 30.198589, 27.812147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628685, 30.696054, 27.723934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747040, 30.437252, 27.442841>,  <26.818052, 30.281971, 27.274185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747040, 30.437252, 27.442841>,  <26.628685, 30.696054, 27.723934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747040, 30.437252, 27.442841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050851, 0.723962, -0.687963,
		0.953869, 0.239293, 0.181308,
		0.295885, -0.647007, -0.702734,
		26.835806, 30.243151, 27.232021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120140, 31.036074, 27.412554>,  <26.628685, 30.696054, 27.723934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120140, 31.036074, 27.412554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000217, 30.747608, 27.162743>,  <26.928265, 30.574528, 27.012856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000217, 30.747608, 27.162743>,  <27.120140, 31.036074, 27.412554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000217, 30.747608, 27.162743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035814, 0.645674, -0.762773,
		0.953328, -0.251049, -0.167748,
		-0.299804, -0.721165, -0.624530,
		26.910276, 30.531258, 26.975384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550472, 31.043684, 26.935177>,  <27.120140, 31.036074, 27.412554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550472, 31.043684, 26.935177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230328, 30.874809, 26.764915>,  <27.038240, 30.773485, 26.662758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230328, 30.874809, 26.764915>,  <27.550472, 31.043684, 26.935177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230328, 30.874809, 26.764915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039787, 0.745833, -0.664944,
		0.598194, -0.515261, -0.613735,
		-0.800363, -0.422184, -0.425652,
		26.990219, 30.748154, 26.637220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698599, 31.040586, 26.273630>,  <27.550472, 31.043684, 26.935177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698599, 31.040586, 26.273630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299347, 31.027603, 26.294361>,  <27.059795, 31.019814, 26.306799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299347, 31.027603, 26.294361>,  <27.698599, 31.040586, 26.273630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299347, 31.027603, 26.294361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059018, 0.733325, -0.677312,
		-0.016021, -0.679103, -0.733868,
		-0.998128, -0.032460, 0.051828,
		26.999908, 31.017864, 26.309910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405853, 31.010147, 25.575869>,  <27.698599, 31.040586, 26.273630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405853, 31.010147, 25.575869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102785, 31.119122, 25.813091>,  <26.920944, 31.184505, 25.955425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102785, 31.119122, 25.813091>,  <27.405853, 31.010147, 25.575869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102785, 31.119122, 25.813091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340211, 0.610602, -0.715138,
		-0.556951, -0.743602, -0.369948,
		-0.757669, 0.272436, 0.593057,
		26.875484, 31.200853, 25.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802137, 30.734907, 25.306383>,  <27.405853, 31.010147, 25.575869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802137, 30.734907, 25.306383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666250, 31.039978, 25.526535>,  <26.584717, 31.223021, 25.658627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666250, 31.039978, 25.526535>,  <26.802137, 30.734907, 25.306383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666250, 31.039978, 25.526535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534325, 0.325073, -0.780272,
		-0.774007, -0.559155, 0.297083,
		-0.339719, 0.762675, 0.550380,
		26.564335, 31.268780, 25.691648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178123, 30.887794, 25.063946>,  <26.802137, 30.734907, 25.306383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178123, 30.887794, 25.063946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216368, 31.232166, 25.263809>,  <26.239315, 31.438789, 25.383728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216368, 31.232166, 25.263809>,  <26.178123, 30.887794, 25.063946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216368, 31.232166, 25.263809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451488, 0.484863, -0.749044,
		-0.887140, -0.153973, 0.435057,
		0.095611, 0.860930, 0.499658,
		26.245050, 31.490446, 25.413706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527927, 31.174625, 25.066412>,  <26.178123, 30.887794, 25.063946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527927, 31.174625, 25.066412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801947, 31.460255, 25.124115>,  <25.966358, 31.631632, 25.158737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801947, 31.460255, 25.124115>,  <25.527927, 31.174625, 25.066412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801947, 31.460255, 25.124115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423092, 0.551183, -0.719160,
		-0.593044, 0.431625, 0.679705,
		0.685049, 0.714071, 0.144259,
		26.007462, 31.674477, 25.167393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198227, 31.775404, 24.797684>,  <25.527927, 31.174625, 25.066412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198227, 31.775404, 24.797684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570448, 31.916157, 24.838184>,  <25.793781, 32.000610, 24.862484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570448, 31.916157, 24.838184>,  <25.198227, 31.775404, 24.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570448, 31.916157, 24.838184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179369, 0.679138, -0.711758,
		-0.319217, 0.644167, 0.695090,
		0.930552, 0.351883, 0.101249,
		25.849613, 32.021721, 24.868559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152292, 32.417500, 25.044340>,  <25.198227, 31.775404, 24.797684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152292, 32.417500, 25.044340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460491, 32.343243, 24.800415>,  <25.645411, 32.298687, 24.654060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460491, 32.343243, 24.800415>,  <25.152292, 32.417500, 25.044340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460491, 32.343243, 24.800415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425220, 0.563016, -0.708662,
		0.474892, 0.805326, 0.354863,
		0.770497, -0.185643, -0.609812,
		25.691641, 32.287548, 24.617472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439064, 33.077141, 24.762239>,  <25.152292, 32.417500, 25.044340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439064, 33.077141, 24.762239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519428, 32.762905, 24.528152>,  <25.567648, 32.574364, 24.387699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519428, 32.762905, 24.528152>,  <25.439064, 33.077141, 24.762239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519428, 32.762905, 24.528152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479463, 0.442095, -0.758068,
		0.854254, 0.432896, -0.287839,
		0.200913, -0.785591, -0.585219,
		25.579702, 32.527229, 24.352587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892921, 33.321247, 24.184425>,  <25.439064, 33.077141, 24.762239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892921, 33.321247, 24.184425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635130, 33.017521, 24.148460>,  <25.480455, 32.835285, 24.126883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635130, 33.017521, 24.148460>,  <25.892921, 33.321247, 24.184425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635130, 33.017521, 24.148460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576974, 0.560106, -0.594460,
		0.501740, -0.331245, -0.799083,
		-0.644483, -0.759315, -0.089907,
		25.441786, 32.789726, 24.121487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703619, 33.342773, 23.502550>,  <25.892921, 33.321247, 24.184425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703619, 33.342773, 23.502550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407791, 33.180977, 23.717743>,  <25.230293, 33.083900, 23.846859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407791, 33.180977, 23.717743>,  <25.703619, 33.342773, 23.502550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407791, 33.180977, 23.717743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672947, 0.460187, -0.579112,
		-0.013327, -0.790326, -0.612541,
		-0.739571, -0.404490, 0.537980,
		25.185921, 33.059631, 23.879137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331869, 32.813114, 23.115084>,  <25.703619, 33.342773, 23.502550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331869, 32.813114, 23.115084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157881, 33.047001, 23.388992>,  <25.053488, 33.187332, 23.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157881, 33.047001, 23.388992>,  <25.331869, 32.813114, 23.115084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157881, 33.047001, 23.388992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512048, 0.464932, -0.722250,
		-0.740681, -0.664793, 0.097171,
		-0.434969, 0.584713, 0.684772,
		25.027390, 33.222416, 23.594423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685169, 32.762997, 23.133797>,  <25.331869, 32.813114, 23.115084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685169, 32.762997, 23.133797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767904, 33.130692, 23.267792>,  <24.817545, 33.351307, 23.348188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767904, 33.130692, 23.267792>,  <24.685169, 32.762997, 23.133797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767904, 33.130692, 23.267792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558206, 0.392074, -0.731221,
		-0.803507, -0.035749, 0.594220,
		0.206839, 0.919239, 0.334990,
		24.829956, 33.406464, 23.368288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.002615, 33.171028, 23.031357>,  <24.685169, 32.762997, 23.133797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.002615, 33.171028, 23.031357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318756, 33.415585, 23.015675>,  <24.508442, 33.562321, 23.006266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318756, 33.415585, 23.015675>,  <24.002615, 33.171028, 23.031357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318756, 33.415585, 23.015675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403167, 0.470860, -0.784696,
		-0.461299, 0.635994, 0.618640,
		0.790355, 0.611394, -0.039204,
		24.555862, 33.599003, 23.003914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.400761, 33.318764, 23.436201>,  <24.002615, 33.171028, 23.031357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.400761, 33.318764, 23.436201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044893, 33.450802, 23.310013>,  <22.831373, 33.530025, 23.234299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044893, 33.450802, 23.310013>,  <23.400761, 33.318764, 23.436201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044893, 33.450802, 23.310013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358054, 0.075617, -0.930634,
		-0.283345, -0.940913, -0.185467,
		-0.889670, 0.330098, -0.315472,
		22.777992, 33.549831, 23.215372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.118328, 32.828957, 23.059759>,  <23.400761, 33.318764, 23.436201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.118328, 32.828957, 23.059759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006750, 33.195297, 22.944244>,  <22.939802, 33.415104, 22.874935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006750, 33.195297, 22.944244>,  <23.118328, 32.828957, 23.059759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006750, 33.195297, 22.944244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431669, -0.149043, -0.889633,
		-0.857817, -0.372820, -0.353772,
		-0.278946, 0.915856, -0.288786,
		22.923067, 33.470055, 22.857609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905945, 32.813297, 22.301367>,  <23.118328, 32.828957, 23.059759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905945, 32.813297, 22.301367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.945976, 33.209034, 22.343678>,  <22.969995, 33.446476, 22.369064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.945976, 33.209034, 22.343678>,  <22.905945, 32.813297, 22.301367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.945976, 33.209034, 22.343678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478088, 0.045420, -0.877137,
		-0.872592, 0.138354, -0.468446,
		0.100078, 0.989341, 0.105779,
		22.976000, 33.505836, 22.375412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649633, 33.194206, 21.721357>,  <22.905945, 32.813297, 22.301367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649633, 33.194206, 21.721357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.914576, 33.436638, 21.897518>,  <23.073540, 33.582096, 22.003216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.914576, 33.436638, 21.897518>,  <22.649633, 33.194206, 21.721357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.914576, 33.436638, 21.897518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454274, 0.142547, -0.879384,
		-0.595754, 0.782528, -0.180909,
		0.662354, 0.606079, 0.440404,
		23.113281, 33.618462, 22.029640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.793631, 33.684490, 21.167484>,  <22.649633, 33.194206, 21.721357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.793631, 33.684490, 21.167484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.096073, 33.748653, 21.421280>,  <23.277538, 33.787151, 21.573557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.096073, 33.748653, 21.421280>,  <22.793631, 33.684490, 21.167484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.096073, 33.748653, 21.421280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634846, 0.055738, -0.770625,
		-0.158982, 0.985475, -0.059692,
		0.756105, 0.160411, 0.634487,
		23.322905, 33.796776, 21.611626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048981, 34.297676, 20.989073>,  <22.793631, 33.684490, 21.167484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048981, 34.297676, 20.989073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.352718, 34.124870, 21.183704>,  <23.534962, 34.021187, 21.300484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.352718, 34.124870, 21.183704>,  <23.048981, 34.297676, 20.989073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.352718, 34.124870, 21.183704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617153, 0.241208, -0.748960,
		0.206195, 0.869012, 0.449780,
		0.759345, -0.432015, 0.486577,
		23.580523, 33.995266, 21.329678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.571396, 34.679470, 20.749374>,  <23.048981, 34.297676, 20.989073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.571396, 34.679470, 20.749374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783348, 34.413017, 20.959324>,  <23.910519, 34.253143, 21.085295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783348, 34.413017, 20.959324>,  <23.571396, 34.679470, 20.749374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.783348, 34.413017, 20.959324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770896, 0.120366, -0.625485,
		0.353479, 0.736055, 0.577300,
		0.529879, -0.666134, 0.524875,
		23.942312, 34.213177, 21.116787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.264837, 34.967457, 20.998142>,  <23.571396, 34.679470, 20.749374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.264837, 34.967457, 20.998142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218819, 34.575680, 20.931873>,  <24.191208, 34.340614, 20.892111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218819, 34.575680, 20.931873>,  <24.264837, 34.967457, 20.998142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218819, 34.575680, 20.931873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726420, 0.030806, -0.686560,
		0.677553, -0.199335, 0.707946,
		-0.115046, -0.979447, -0.165674,
		24.184305, 34.281845, 20.882172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925293, 34.691563, 21.046843>,  <24.264837, 34.967457, 20.998142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925293, 34.691563, 21.046843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718784, 34.422794, 20.834431>,  <24.594879, 34.261536, 20.706984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718784, 34.422794, 20.834431>,  <24.925293, 34.691563, 21.046843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718784, 34.422794, 20.834431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693052, 0.036491, -0.719963,
		0.503134, -0.739726, 0.446835,
		-0.516270, -0.671918, -0.531029,
		24.563904, 34.221218, 20.675121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395514, 34.235016, 20.704918>,  <24.925293, 34.691563, 21.046843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395514, 34.235016, 20.704918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057495, 34.186466, 20.496624>,  <24.854685, 34.157337, 20.371647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057495, 34.186466, 20.496624>,  <25.395514, 34.235016, 20.704918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057495, 34.186466, 20.496624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513614, 0.086498, -0.853651,
		0.148653, -0.988831, -0.010756,
		-0.845047, -0.121373, -0.520735,
		24.803982, 34.150055, 20.340403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557802, 33.683563, 20.210964>,  <25.395514, 34.235016, 20.704918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557802, 33.683563, 20.210964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254519, 33.915466, 20.091633>,  <25.072548, 34.054607, 20.020035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254519, 33.915466, 20.091633>,  <25.557802, 33.683563, 20.210964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254519, 33.915466, 20.091633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481800, 0.189905, -0.855456,
		-0.439302, -0.792350, -0.423315,
		-0.758210, 0.579756, -0.298328,
		25.027056, 34.089394, 20.002134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479860, 33.500454, 19.483892>,  <25.557802, 33.683563, 20.210964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479860, 33.500454, 19.483892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293936, 33.848236, 19.550816>,  <25.182381, 34.056908, 19.590969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293936, 33.848236, 19.550816>,  <25.479860, 33.500454, 19.483892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293936, 33.848236, 19.550816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376393, 0.365069, -0.851500,
		-0.801423, -0.332814, -0.496947,
		-0.464811, 0.869459, 0.167306,
		25.154493, 34.109074, 19.601007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162445, 33.684452, 18.803267>,  <25.479860, 33.500454, 19.483892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162445, 33.684452, 18.803267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200590, 34.022755, 19.013256>,  <25.223476, 34.225739, 19.139250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200590, 34.022755, 19.013256>,  <25.162445, 33.684452, 18.803267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200590, 34.022755, 19.013256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366530, 0.460493, -0.808457,
		-0.925506, 0.269515, -0.266082,
		0.095362, 0.845759, 0.524975,
		25.229198, 34.276482, 19.170748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069281, 34.265785, 18.324066>,  <25.162445, 33.684452, 18.803267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069281, 34.265785, 18.324066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251135, 34.444118, 18.632492>,  <25.360249, 34.551117, 18.817549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251135, 34.444118, 18.632492>,  <25.069281, 34.265785, 18.324066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251135, 34.444118, 18.632492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392956, 0.676498, -0.622845,
		-0.799307, 0.586163, 0.132370,
		0.454637, 0.445829, 0.771066,
		25.387526, 34.577866, 18.863811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113621, 34.878944, 18.132786>,  <25.069281, 34.265785, 18.324066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113621, 34.878944, 18.132786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379421, 34.896412, 18.431190>,  <25.538900, 34.906895, 18.610233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379421, 34.896412, 18.431190>,  <25.113621, 34.878944, 18.132786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379421, 34.896412, 18.431190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540612, 0.661122, -0.520246,
		-0.515925, 0.749006, 0.415705,
		0.664499, 0.043673, 0.746012,
		25.578772, 34.909515, 18.654993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456217, 35.481167, 18.055658>,  <25.113621, 34.878944, 18.132786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456217, 35.481167, 18.055658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707748, 35.280270, 18.293087>,  <25.858667, 35.159733, 18.435543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707748, 35.280270, 18.293087>,  <25.456217, 35.481167, 18.055658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707748, 35.280270, 18.293087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765519, 0.266177, -0.585773,
		0.136204, 0.822742, 0.551855,
		0.628831, -0.502240, 0.593571,
		25.896399, 35.129597, 18.471159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067181, 35.845024, 17.999107>,  <25.456217, 35.481167, 18.055658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067181, 35.845024, 17.999107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195387, 35.494827, 18.143761>,  <26.272310, 35.284710, 18.230553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195387, 35.494827, 18.143761>,  <26.067181, 35.845024, 17.999107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195387, 35.494827, 18.143761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826600, 0.072062, -0.558158,
		0.462603, 0.477827, 0.746780,
		0.320517, -0.875493, 0.361635,
		26.291542, 35.232178, 18.252251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656359, 35.897640, 18.460747>,  <26.067181, 35.845024, 17.999107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656359, 35.897640, 18.460747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666788, 35.536572, 18.288933>,  <26.673046, 35.319931, 18.185844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666788, 35.536572, 18.288933>,  <26.656359, 35.897640, 18.460747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666788, 35.536572, 18.288933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906510, 0.202468, -0.370468,
		0.421379, -0.379718, 0.823562,
		0.026072, -0.902674, -0.429534,
		26.674610, 35.265770, 18.160072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269831, 35.719273, 18.570362>,  <26.656359, 35.897640, 18.460747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269831, 35.719273, 18.570362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189981, 35.450081, 18.285477>,  <27.142071, 35.288567, 18.114546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189981, 35.450081, 18.285477>,  <27.269831, 35.719273, 18.570362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189981, 35.450081, 18.285477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902814, 0.156212, -0.400655,
		0.380890, -0.722975, 0.576393,
		-0.199624, -0.672981, -0.712212,
		27.130095, 35.248188, 18.071814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843971, 35.434372, 18.568466>,  <27.269831, 35.719273, 18.570362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843971, 35.434372, 18.568466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695995, 35.308331, 18.218872>,  <27.607210, 35.232704, 18.009115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695995, 35.308331, 18.218872>,  <27.843971, 35.434372, 18.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695995, 35.308331, 18.218872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911458, 0.059128, -0.407122,
		0.179964, -0.947213, 0.265332,
		-0.369942, -0.315106, -0.873986,
		27.585012, 35.213799, 17.956676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418716, 35.061012, 18.282564>,  <27.843971, 35.434372, 18.568466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418716, 35.061012, 18.282564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149326, 35.107777, 17.990601>,  <27.987692, 35.135838, 17.815422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149326, 35.107777, 17.990601>,  <28.418716, 35.061012, 18.282564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149326, 35.107777, 17.990601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736448, 0.191413, -0.648849,
		0.063854, -0.974521, -0.215014,
		-0.673474, 0.116915, -0.729907,
		27.947285, 35.142853, 17.771629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631750, 34.594799, 17.773634>,  <28.418716, 35.061012, 18.282564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631750, 34.594799, 17.773634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407047, 34.888016, 17.620228>,  <28.272226, 35.063946, 17.528185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407047, 34.888016, 17.620228>,  <28.631750, 34.594799, 17.773634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407047, 34.888016, 17.620228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749657, 0.254959, -0.610746,
		-0.349920, -0.630596, -0.692752,
		-0.561757, 0.733038, -0.383515,
		28.238520, 35.107925, 17.505173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466761, 34.535908, 17.034185>,  <28.631750, 34.594799, 17.773634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466761, 34.535908, 17.034185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477184, 34.922279, 17.137184>,  <28.483438, 35.154102, 17.198984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477184, 34.922279, 17.137184>,  <28.466761, 34.535908, 17.034185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477184, 34.922279, 17.137184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838652, 0.119061, -0.531495,
		-0.544044, 0.229801, -0.806974,
		0.026059, 0.965927, 0.257498,
		28.485003, 35.212059, 17.214434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418266, 34.894554, 16.382711>,  <28.466761, 34.535908, 17.034185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418266, 34.894554, 16.382711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630188, 35.082569, 16.665092>,  <28.757341, 35.195377, 16.834522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630188, 35.082569, 16.665092>,  <28.418266, 34.894554, 16.382711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630188, 35.082569, 16.665092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735045, 0.160771, -0.658681,
		-0.423103, 0.867880, -0.260324,
		0.529804, 0.470040, 0.705954,
		28.789129, 35.223579, 16.876879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503780, 35.607895, 16.134960>,  <28.418266, 34.894554, 16.382711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503780, 35.607895, 16.134960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786772, 35.459805, 16.375763>,  <28.956566, 35.370953, 16.520245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786772, 35.459805, 16.375763>,  <28.503780, 35.607895, 16.134960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786772, 35.459805, 16.375763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663926, 0.056205, -0.745683,
		0.242234, 0.927241, 0.285564,
		0.707478, -0.370223, 0.602005,
		28.999016, 35.348736, 16.556364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050720, 36.189995, 16.051840>,  <28.503780, 35.607895, 16.134960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050720, 36.189995, 16.051840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854258, 35.859707, 15.940875>,  <27.736380, 35.661533, 15.874296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854258, 35.859707, 15.940875>,  <28.050720, 36.189995, 16.051840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854258, 35.859707, 15.940875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276864, -0.449941, 0.849058,
		-0.825900, 0.340215, 0.449603,
		-0.491157, -0.825716, -0.277413,
		27.706911, 35.611992, 15.857651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756905, 36.816269, 16.325386>,  <28.050720, 36.189995, 16.051840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756905, 36.816269, 16.325386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447260, 36.834011, 16.577984>,  <27.261473, 36.844658, 16.729542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447260, 36.834011, 16.577984>,  <27.756905, 36.816269, 16.325386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447260, 36.834011, 16.577984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574529, 0.468124, 0.671399,
		-0.265835, 0.882549, -0.387865,
		-0.774111, 0.044359, 0.631494,
		27.215027, 36.847321, 16.767431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588354, 37.579403, 16.471298>,  <27.756905, 36.816269, 16.325386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588354, 37.579403, 16.471298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535627, 37.336227, 16.784485>,  <27.503992, 37.190323, 16.972397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535627, 37.336227, 16.784485>,  <27.588354, 37.579403, 16.471298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535627, 37.336227, 16.784485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621142, 0.564908, 0.543196,
		-0.772533, 0.557937, 0.303150,
		-0.131817, -0.607936, 0.782968,
		27.496082, 37.153847, 17.019375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258852, 37.806904, 16.308041>,  <27.588354, 37.579403, 16.471298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258852, 37.806904, 16.308041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085442, 38.166252, 16.279785>,  <27.981396, 38.381859, 16.262833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085442, 38.166252, 16.279785>,  <28.258852, 37.806904, 16.308041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085442, 38.166252, 16.279785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471588, -0.159381, 0.867296,
		0.767892, 0.409310, 0.492755,
		-0.433528, 0.898367, -0.070639,
		27.955383, 38.435760, 16.258593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248085, 38.088566, 17.005419>,  <28.258852, 37.806904, 16.308041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248085, 38.088566, 17.005419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956072, 38.268406, 16.799541>,  <27.780865, 38.376308, 16.676016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956072, 38.268406, 16.799541>,  <28.248085, 38.088566, 17.005419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956072, 38.268406, 16.799541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583652, -0.018371, 0.811796,
		0.355529, 0.893040, 0.275823,
		-0.730033, 0.449602, -0.514693,
		27.737062, 38.403286, 16.645134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850555, 38.802853, 17.299217>,  <28.248085, 38.088566, 17.005419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850555, 38.802853, 17.299217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632704, 38.555206, 17.072918>,  <27.501993, 38.406616, 16.937138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632704, 38.555206, 17.072918>,  <27.850555, 38.802853, 17.299217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632704, 38.555206, 17.072918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690533, -0.051803, 0.721443,
		-0.475966, 0.783588, -0.399308,
		-0.544629, -0.619118, -0.565750,
		27.469315, 38.369473, 16.903193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180485, 39.093052, 17.269045>,  <27.850555, 38.802853, 17.299217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180485, 39.093052, 17.269045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190729, 38.699654, 17.197395>,  <27.196875, 38.463615, 17.154406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190729, 38.699654, 17.197395>,  <27.180485, 39.093052, 17.269045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190729, 38.699654, 17.197395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643027, -0.153401, 0.750322,
		-0.765415, 0.095967, -0.636341,
		0.025609, -0.983493, -0.179125,
		27.198412, 38.404606, 17.143658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459702, 38.907284, 17.153778>,  <27.180485, 39.093052, 17.269045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459702, 38.907284, 17.153778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696976, 38.609570, 17.276527>,  <26.839340, 38.430943, 17.350178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696976, 38.609570, 17.276527>,  <26.459702, 38.907284, 17.153778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696976, 38.609570, 17.276527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657901, -0.228459, 0.717616,
		-0.464003, -0.627572, -0.625184,
		0.593185, -0.744285, 0.306875,
		26.874931, 38.386284, 17.368589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032581, 38.415276, 17.146851>,  <26.459702, 38.907284, 17.153778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032581, 38.415276, 17.146851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324738, 38.281506, 17.385075>,  <26.500031, 38.201244, 17.528009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324738, 38.281506, 17.385075>,  <26.032581, 38.415276, 17.146851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324738, 38.281506, 17.385075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676960, -0.238446, 0.696325,
		-0.090855, -0.911760, -0.400547,
		0.730391, -0.334419, 0.595561,
		26.543854, 38.181179, 17.563744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689722, 37.897011, 17.520641>,  <26.032581, 38.415276, 17.146851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689722, 37.897011, 17.520641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020966, 37.956364, 17.736870>,  <26.219711, 37.991978, 17.866606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020966, 37.956364, 17.736870>,  <25.689722, 37.897011, 17.520641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020966, 37.956364, 17.736870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517934, -0.166335, 0.839093,
		0.214424, -0.974841, -0.060890,
		0.828110, 0.148385, 0.540570,
		26.269398, 38.000877, 17.899040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869448, 37.139900, 17.882551>,  <25.689722, 37.897011, 17.520641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869448, 37.139900, 17.882551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009331, 37.449348, 18.093914>,  <26.093260, 37.635017, 18.220732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009331, 37.449348, 18.093914>,  <25.869448, 37.139900, 17.882551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009331, 37.449348, 18.093914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506011, -0.318704, 0.801486,
		0.788453, -0.547665, 0.280008,
		0.349706, 0.773622, 0.528408,
		26.114243, 37.681435, 18.252436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123833, 36.915161, 18.551455>,  <25.869448, 37.139900, 17.882551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123833, 36.915161, 18.551455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090111, 37.303173, 18.642612>,  <26.069878, 37.535980, 18.697308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090111, 37.303173, 18.642612>,  <26.123833, 36.915161, 18.551455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090111, 37.303173, 18.642612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321291, -0.242956, 0.915284,
		0.943221, 0.003941, 0.332144,
		-0.084303, 0.970029, 0.227895,
		26.064819, 37.594181, 18.710981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335089, 36.934460, 19.223713>,  <26.123833, 36.915161, 18.551455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335089, 36.934460, 19.223713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142054, 37.278648, 19.158356>,  <26.026234, 37.485161, 19.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142054, 37.278648, 19.158356>,  <26.335089, 36.934460, 19.223713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142054, 37.278648, 19.158356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459456, -0.089887, 0.883640,
		0.745661, 0.501505, 0.438728,
		-0.482586, 0.860473, -0.163394,
		25.997278, 37.536789, 19.109337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454683, 37.437462, 19.790777>,  <26.335089, 36.934460, 19.223713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454683, 37.437462, 19.790777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103397, 37.521954, 19.619137>,  <25.892626, 37.572647, 19.516153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103397, 37.521954, 19.619137>,  <26.454683, 37.437462, 19.790777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103397, 37.521954, 19.619137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459593, -0.124440, 0.879368,
		0.132347, 0.969484, 0.206363,
		-0.878213, 0.211225, -0.429099,
		25.839933, 37.585320, 19.490408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060497, 37.657970, 20.386551>,  <26.454683, 37.437462, 19.790777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060497, 37.657970, 20.386551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778458, 37.666451, 20.103035>,  <25.609234, 37.671539, 19.932924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778458, 37.666451, 20.103035>,  <26.060497, 37.657970, 20.386551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778458, 37.666451, 20.103035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708011, -0.076654, 0.702029,
		-0.039447, 0.996832, 0.069060,
		-0.705099, 0.021203, -0.708792,
		25.566927, 37.672810, 19.890398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589897, 38.207352, 20.600473>,  <26.060497, 37.657970, 20.386551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589897, 38.207352, 20.600473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391172, 37.937374, 20.382252>,  <25.271938, 37.775387, 20.251318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391172, 37.937374, 20.382252>,  <25.589897, 38.207352, 20.600473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391172, 37.937374, 20.382252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620721, -0.162987, 0.766903,
		-0.606534, 0.719644, -0.337977,
		-0.496811, -0.674942, -0.545556,
		25.242128, 37.734890, 20.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891108, 38.266319, 20.796001>,  <25.589897, 38.207352, 20.600473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891108, 38.266319, 20.796001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895214, 37.905525, 20.623344>,  <24.897678, 37.689049, 20.519751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895214, 37.905525, 20.623344>,  <24.891108, 38.266319, 20.796001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895214, 37.905525, 20.623344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747834, -0.293482, 0.595494,
		-0.663806, 0.316684, -0.677549,
		0.010265, -0.901986, -0.431642,
		24.898294, 37.634930, 20.493853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185804, 38.203293, 20.610384>,  <24.891108, 38.266319, 20.796001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185804, 38.203293, 20.610384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375813, 37.852844, 20.643303>,  <24.489819, 37.642574, 20.663054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375813, 37.852844, 20.643303>,  <24.185804, 38.203293, 20.610384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375813, 37.852844, 20.643303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784946, -0.379594, 0.489662,
		-0.397766, -0.297190, -0.868021,
		0.475018, -0.876120, 0.082289,
		24.518318, 37.590008, 20.667992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.661161, 37.600845, 20.611517>,  <24.185804, 38.203293, 20.610384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.661161, 37.600845, 20.611517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.967861, 37.374615, 20.732983>,  <24.151880, 37.238876, 20.805862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.967861, 37.374615, 20.732983>,  <23.661161, 37.600845, 20.611517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.967861, 37.374615, 20.732983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621599, -0.535974, 0.571267,
		-0.160341, -0.626777, -0.762523,
		0.766750, -0.565581, 0.303665,
		24.197886, 37.204941, 20.824081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.594696, 36.864464, 20.424456>,  <23.661161, 37.600845, 20.611517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.594696, 36.864464, 20.424456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810118, 36.901764, 20.759422>,  <23.939371, 36.924145, 20.960402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810118, 36.901764, 20.759422>,  <23.594696, 36.864464, 20.424456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.810118, 36.901764, 20.759422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605638, -0.648124, 0.461670,
		0.585802, -0.755804, -0.292570,
		0.538553, 0.093255, 0.837415,
		23.971684, 36.929741, 21.010647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.679983, 36.199043, 20.658649>,  <23.594696, 36.864464, 20.424456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.679983, 36.199043, 20.658649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733391, 36.440750, 20.972855>,  <23.765434, 36.585773, 21.161377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733391, 36.440750, 20.972855>,  <23.679983, 36.199043, 20.658649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733391, 36.440750, 20.972855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615732, -0.570491, 0.543519,
		0.776561, -0.556235, 0.295897,
		0.133518, 0.604269, 0.785513,
		23.773447, 36.622032, 21.208509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725037, 35.821442, 21.286068>,  <23.679983, 36.199043, 20.658649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725037, 35.821442, 21.286068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.625566, 36.184422, 21.421539>,  <23.565884, 36.402210, 21.502823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.625566, 36.184422, 21.421539>,  <23.725037, 35.821442, 21.286068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.625566, 36.184422, 21.421539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617701, -0.417909, 0.666182,
		0.746060, -0.043538, 0.664454,
		-0.248677, 0.907445, 0.338679,
		23.550962, 36.456654, 21.523144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.574162, 35.720013, 21.940872>,  <23.725037, 35.821442, 21.286068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.574162, 35.720013, 21.940872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.402502, 36.081306, 21.940182>,  <23.299507, 36.298080, 21.939768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.402502, 36.081306, 21.940182>,  <23.574162, 35.720013, 21.940872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.402502, 36.081306, 21.940182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718636, -0.340282, 0.606441,
		0.547170, 0.261495, 0.795126,
		-0.429148, 0.903232, -0.001728,
		23.273758, 36.352276, 21.939663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469341, 35.960388, 22.591778>,  <23.574162, 35.720013, 21.940872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469341, 35.960388, 22.591778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206980, 36.182739, 22.387508>,  <23.049562, 36.316151, 22.264946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206980, 36.182739, 22.387508>,  <23.469341, 35.960388, 22.591778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206980, 36.182739, 22.387508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715410, -0.241982, 0.655465,
		0.240786, 0.795263, 0.556398,
		-0.655905, 0.555879, -0.510673,
		23.010208, 36.349503, 22.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.954548, 36.318928, 23.091856>,  <23.469341, 35.960388, 22.591778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.954548, 36.318928, 23.091856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738192, 36.374496, 22.760040>,  <22.608377, 36.407837, 22.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738192, 36.374496, 22.760040>,  <22.954548, 36.318928, 23.091856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738192, 36.374496, 22.760040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833490, -0.220838, 0.506483,
		-0.112832, 0.965366, 0.235241,
		-0.540892, 0.138924, -0.829540,
		22.575924, 36.416172, 22.511179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296713, 36.709553, 23.314941>,  <22.954548, 36.318928, 23.091856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296713, 36.709553, 23.314941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.237751, 36.506229, 22.975555>,  <22.202374, 36.384235, 22.771923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.237751, 36.506229, 22.975555>,  <22.296713, 36.709553, 23.314941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.237751, 36.506229, 22.975555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863106, -0.352832, 0.361327,
		-0.483031, 0.785580, -0.386712,
		-0.147407, -0.508306, -0.848467,
		22.193529, 36.353737, 22.721016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.575462, 36.903137, 23.156036>,  <22.296713, 36.709553, 23.314941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.575462, 36.903137, 23.156036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641006, 36.563274, 22.955544>,  <21.680332, 36.359356, 22.835247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641006, 36.563274, 22.955544>,  <21.575462, 36.903137, 23.156036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641006, 36.563274, 22.955544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883803, -0.352156, 0.308023,
		-0.438226, 0.392518, -0.808633,
		0.163860, -0.849656, -0.501233,
		21.690165, 36.308376, 22.805174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.005529, 36.822372, 22.686745>,  <21.575462, 36.903137, 23.156036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.005529, 36.822372, 22.686745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180151, 36.468895, 22.754272>,  <21.284924, 36.256809, 22.794790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180151, 36.468895, 22.754272>,  <21.005529, 36.822372, 22.686745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180151, 36.468895, 22.754272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879515, -0.379683, 0.286870,
		-0.189407, -0.273715, -0.942976,
		0.436553, -0.883697, 0.168822,
		21.311117, 36.203785, 22.804918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456039, 36.506878, 22.362633>,  <21.005529, 36.822372, 22.686745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456039, 36.506878, 22.362633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689585, 36.240231, 22.547985>,  <20.829712, 36.080242, 22.659197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689585, 36.240231, 22.547985>,  <20.456039, 36.506878, 22.362633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689585, 36.240231, 22.547985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777815, -0.622853, 0.084017,
		0.232610, -0.409479, -0.882168,
		0.583864, -0.666620, 0.463380,
		20.864744, 36.040245, 22.686998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792112, 36.801224, 22.565996>,  <20.456039, 36.506878, 22.362633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792112, 36.801224, 22.565996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662546, 37.041710, 22.858192>,  <19.584806, 37.186001, 23.033510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662546, 37.041710, 22.858192>,  <19.792112, 36.801224, 22.565996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662546, 37.041710, 22.858192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926836, -0.356614, -0.117476,
		0.189874, -0.715097, 0.672744,
		-0.323917, 0.601218, 0.730490,
		19.565371, 37.222076, 23.077339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.631170, 36.435139, 23.203815>,  <19.792112, 36.801224, 22.565996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.631170, 36.435139, 23.203815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.416471, 36.764980, 23.132339>,  <19.287653, 36.962887, 23.089455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.416471, 36.764980, 23.132339>,  <19.631170, 36.435139, 23.203815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.416471, 36.764980, 23.132339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827960, -0.555530, -0.076603,
		-0.162434, 0.106831, 0.980919,
		-0.536747, 0.824605, -0.178689,
		19.255447, 37.012363, 23.078733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978388, 36.514774, 23.652836>,  <19.631170, 36.435139, 23.203815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978388, 36.514774, 23.652836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.956680, 36.675140, 23.287033>,  <18.943655, 36.771358, 23.067553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.956680, 36.675140, 23.287033>,  <18.978388, 36.514774, 23.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956680, 36.675140, 23.287033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800330, -0.565127, -0.200256,
		-0.597098, 0.721039, 0.351534,
		-0.054269, 0.400916, -0.914506,
		18.940399, 36.795414, 23.012682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457439, 37.174835, 23.687353>,  <18.978388, 36.514774, 23.652836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.457439, 37.174835, 23.687353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118931, 37.386417, 23.661976>,  <17.915825, 37.513367, 23.646749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118931, 37.386417, 23.661976>,  <18.457439, 37.174835, 23.687353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118931, 37.386417, 23.661976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371414, -0.500416, 0.782071,
		0.381935, 0.685409, 0.619951,
		-0.846273, 0.528959, -0.063444,
		17.865049, 37.545105, 23.642942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.466972, 23.833170, 27.306372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.792273, 23.940754, 27.512783>,  <31.987452, 24.005304, 27.636631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.792273, 23.940754, 27.512783>,  <31.466972, 23.833170, 27.306372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792273, 23.940754, 27.512783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199269, 0.704447, -0.681209,
		-0.546734, 0.656821, 0.519295,
		0.813249, 0.268961, 0.516029,
		32.036247, 24.021442, 27.667591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384161, 24.577946, 27.529861>,  <31.466972, 23.833170, 27.306372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384161, 24.577946, 27.529861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770189, 24.473167, 27.528114>,  <32.001808, 24.410301, 27.527065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770189, 24.473167, 27.528114>,  <31.384161, 24.577946, 27.529861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770189, 24.473167, 27.528114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220040, 0.819507, -0.529141,
		0.142185, 0.509699, 0.848522,
		0.965073, -0.261945, -0.004368,
		32.059711, 24.394585, 27.526804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674463, 25.216387, 27.587706>,  <31.384161, 24.577946, 27.529861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674463, 25.216387, 27.587706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.985483, 24.982910, 27.494137>,  <32.172096, 24.842823, 27.437996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.985483, 24.982910, 27.494137>,  <31.674463, 25.216387, 27.587706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985483, 24.982910, 27.494137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394170, 0.742261, -0.541921,
		0.489946, 0.329165, 0.807219,
		0.777549, -0.583694, -0.233921,
		32.218746, 24.807802, 27.423960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298206, 25.559542, 27.860722>,  <31.674463, 25.216387, 27.587706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298206, 25.559542, 27.860722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.358456, 25.325291, 27.542137>,  <32.394604, 25.184740, 27.350986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.358456, 25.325291, 27.542137>,  <32.298206, 25.559542, 27.860722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358456, 25.325291, 27.542137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335300, 0.788161, -0.516116,
		0.929993, -0.189315, 0.315077,
		0.150623, -0.585630, -0.796461,
		32.403641, 25.149601, 27.303198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897636, 25.855825, 27.707552>,  <32.298206, 25.559542, 27.860722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897636, 25.855825, 27.707552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754578, 25.653755, 27.393383>,  <32.668743, 25.532513, 27.204882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754578, 25.653755, 27.393383>,  <32.897636, 25.855825, 27.707552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754578, 25.653755, 27.393383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310774, 0.728728, -0.610226,
		0.880629, -0.462334, -0.103633,
		-0.357649, -0.505176, -0.785420,
		32.647282, 25.502203, 27.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316391, 26.094242, 27.229700>,  <32.897636, 25.855825, 27.707552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316391, 26.094242, 27.229700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.038979, 25.920742, 26.999615>,  <32.872532, 25.816641, 26.861563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.038979, 25.920742, 26.999615>,  <33.316391, 26.094242, 27.229700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038979, 25.920742, 26.999615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084175, 0.744181, -0.662654,
		0.715491, -0.507990, -0.479602,
		-0.693532, -0.433752, -0.575215,
		32.830917, 25.790617, 26.827051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480743, 26.364828, 26.456707>,  <33.316391, 26.094242, 27.229700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480743, 26.364828, 26.456707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.093906, 26.267838, 26.487545>,  <32.861805, 26.209642, 26.506048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.093906, 26.267838, 26.487545>,  <33.480743, 26.364828, 26.456707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093906, 26.267838, 26.487545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253625, 0.894491, -0.368185,
		0.020317, -0.375620, -0.926551,
		-0.967089, -0.242477, 0.077094,
		32.803780, 26.195095, 26.510674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153999, 26.547182, 25.802399>,  <33.480743, 26.364828, 26.456707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153999, 26.547182, 25.802399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886101, 26.546783, 26.099434>,  <32.725361, 26.546545, 26.277655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886101, 26.546783, 26.099434>,  <33.153999, 26.547182, 25.802399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886101, 26.546783, 26.099434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390867, 0.850737, -0.351382,
		-0.631398, -0.525590, -0.570168,
		-0.669746, -0.000997, 0.742590,
		32.685177, 26.546484, 26.322210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529861, 26.676756, 25.409077>,  <33.153999, 26.547182, 25.802399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529861, 26.676756, 25.409077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441132, 26.788593, 25.782734>,  <32.387894, 26.855696, 26.006927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441132, 26.788593, 25.782734>,  <32.529861, 26.676756, 25.409077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441132, 26.788593, 25.782734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586755, 0.726875, -0.356891,
		-0.778788, -0.627281, 0.002811,
		-0.221828, 0.279591, 0.934142,
		32.374584, 26.872471, 26.062977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753542, 26.889395, 25.383568>,  <32.529861, 26.676756, 25.409077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753542, 26.889395, 25.383568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.927916, 27.053493, 25.703983>,  <32.032539, 27.151953, 25.896233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.927916, 27.053493, 25.703983>,  <31.753542, 26.889395, 25.383568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927916, 27.053493, 25.703983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240794, 0.910779, -0.335409,
		-0.867169, -0.046669, 0.495823,
		0.435932, 0.410248, 0.801037,
		32.058697, 27.176567, 25.944294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251675, 27.288597, 25.703892>,  <31.753542, 26.889395, 25.383568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251675, 27.288597, 25.703892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.606148, 27.426907, 25.827255>,  <31.818832, 27.509893, 25.901274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.606148, 27.426907, 25.827255>,  <31.251675, 27.288597, 25.703892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606148, 27.426907, 25.827255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, 0.936502, -0.172148,
		-0.348350, 0.058336, 0.935547,
		0.886184, 0.345776, 0.308409,
		31.872004, 27.530640, 25.919779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091940, 27.901182, 26.065048>,  <31.251675, 27.288597, 25.703892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091940, 27.901182, 26.065048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.481033, 27.927948, 25.976223>,  <31.714489, 27.944008, 25.922928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.481033, 27.927948, 25.976223>,  <31.091940, 27.901182, 26.065048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481033, 27.927948, 25.976223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136225, 0.939749, -0.313552,
		0.187704, 0.335253, 0.923240,
		0.972733, 0.066913, -0.222065,
		31.772854, 27.948023, 25.909603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322586, 28.649696, 26.228785>,  <31.091940, 27.901182, 26.065048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322586, 28.649696, 26.228785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600847, 28.493061, 25.987877>,  <31.767805, 28.399080, 25.843332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600847, 28.493061, 25.987877>,  <31.322586, 28.649696, 26.228785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600847, 28.493061, 25.987877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167975, 0.903798, -0.393616,
		0.698462, 0.172655, 0.694508,
		0.695654, -0.391586, -0.602267,
		31.809544, 28.375586, 25.807198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904251, 29.182987, 26.217598>,  <31.322586, 28.649696, 26.228785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904251, 29.182987, 26.217598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936007, 28.968884, 25.881218>,  <31.955059, 28.840422, 25.679390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936007, 28.968884, 25.881218>,  <31.904251, 29.182987, 26.217598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936007, 28.968884, 25.881218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238952, 0.829233, -0.505247,
		0.967781, -0.160835, 0.193733,
		0.079389, -0.535261, -0.840948,
		31.959824, 28.808306, 25.628933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450100, 29.450144, 25.898119>,  <31.904251, 29.182987, 26.217598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450100, 29.450144, 25.898119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244133, 29.275856, 25.602821>,  <32.120552, 29.171284, 25.425642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244133, 29.275856, 25.602821>,  <32.450100, 29.450144, 25.898119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244133, 29.275856, 25.602821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072676, 0.880277, -0.468860,
		0.854150, -0.187774, -0.484942,
		-0.514923, -0.435721, -0.738242,
		32.089657, 29.145140, 25.381348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804543, 29.574890, 25.215599>,  <32.450100, 29.450144, 25.898119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804543, 29.574890, 25.215599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.432602, 29.486111, 25.098213>,  <32.209438, 29.432842, 25.027781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.432602, 29.486111, 25.098213>,  <32.804543, 29.574890, 25.215599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432602, 29.486111, 25.098213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097152, 0.917374, -0.385987,
		0.354887, -0.330398, -0.874581,
		-0.929848, -0.221949, -0.293466,
		32.153648, 29.419525, 25.010174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764442, 29.866175, 24.588774>,  <32.804543, 29.574890, 25.215599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764442, 29.866175, 24.588774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.378513, 29.814865, 24.680561>,  <32.146954, 29.784079, 24.735634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.378513, 29.814865, 24.680561>,  <32.764442, 29.866175, 24.588774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378513, 29.814865, 24.680561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237598, 0.799038, -0.552345,
		-0.112502, -0.587439, -0.801411,
		-0.964827, -0.128274, 0.229467,
		32.089066, 29.776382, 24.749401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512104, 29.930162, 23.980761>,  <32.764442, 29.866175, 24.588774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512104, 29.930162, 23.980761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.213062, 30.003265, 24.236160>,  <32.033638, 30.047127, 24.389400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.213062, 30.003265, 24.236160>,  <32.512104, 29.930162, 23.980761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213062, 30.003265, 24.236160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186332, 0.865060, -0.465780,
		-0.637468, -0.467193, -0.612671,
		-0.747606, 0.182760, 0.638501,
		31.988781, 30.058094, 24.427711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111496, 30.278313, 23.450869>,  <32.512104, 29.930162, 23.980761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111496, 30.278313, 23.450869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.915789, 30.312157, 23.798077>,  <31.798365, 30.332464, 24.006401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.915789, 30.312157, 23.798077>,  <32.111496, 30.278313, 23.450869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915789, 30.312157, 23.798077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435333, 0.838729, -0.327137,
		-0.755713, -0.537935, -0.373529,
		-0.489268, 0.084612, 0.868019,
		31.769009, 30.337540, 24.058483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336895, 30.392168, 23.310461>,  <32.111496, 30.278313, 23.450869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336895, 30.392168, 23.310461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.452490, 30.518475, 23.671963>,  <31.521847, 30.594259, 23.888865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.452490, 30.518475, 23.671963>,  <31.336895, 30.392168, 23.310461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452490, 30.518475, 23.671963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324641, 0.920423, -0.217782,
		-0.900607, -0.230460, 0.368504,
		0.288989, 0.315768, 0.903756,
		31.539186, 30.613205, 23.943090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738720, 30.685017, 23.593884>,  <31.336895, 30.392168, 23.310461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738720, 30.685017, 23.593884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.073664, 30.831470, 23.756252>,  <31.274630, 30.919342, 23.853674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.073664, 30.831470, 23.756252>,  <30.738720, 30.685017, 23.593884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073664, 30.831470, 23.756252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353929, 0.929032, -0.107862,
		-0.416608, -0.053348, 0.907520,
		0.837360, 0.366134, 0.405923,
		31.324871, 30.941311, 23.878029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518625, 31.182634, 24.105402>,  <30.738720, 30.685017, 23.593884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518625, 31.182634, 24.105402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.900557, 31.262814, 24.017658>,  <31.129715, 31.310921, 23.965012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.900557, 31.262814, 24.017658>,  <30.518625, 31.182634, 24.105402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900557, 31.262814, 24.017658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246219, 0.946982, -0.206399,
		0.166359, 0.251087, 0.953562,
		0.954830, 0.200449, -0.219361,
		31.187006, 31.322948, 23.951849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716774, 31.816771, 24.358702>,  <30.518625, 31.182634, 24.105402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716774, 31.816771, 24.358702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950495, 31.728062, 24.046444>,  <31.090727, 31.674837, 23.859089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950495, 31.728062, 24.046444>,  <30.716774, 31.816771, 24.358702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950495, 31.728062, 24.046444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124039, 0.926228, -0.355971,
		0.802001, 0.304825, 0.513688,
		0.584302, -0.221772, -0.780646,
		31.125786, 31.661530, 23.812250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008684, 31.673777, 24.412788>,  <30.716774, 31.816771, 24.358702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008684, 31.673777, 24.412788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.773588, 31.511147, 24.132999>,  <29.632530, 31.413568, 23.965126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.773588, 31.511147, 24.132999>,  <30.008684, 31.673777, 24.412788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773588, 31.511147, 24.132999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268336, -0.717661, 0.642619,
		-0.763256, 0.565385, 0.312698,
		-0.587738, -0.406574, -0.699472,
		29.597267, 31.389174, 23.923159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471548, 31.398502, 24.691597>,  <30.008684, 31.673777, 24.412788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471548, 31.398502, 24.691597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.440329, 31.199913, 24.345783>,  <29.421597, 31.080759, 24.138294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.440329, 31.199913, 24.345783>,  <29.471548, 31.398502, 24.691597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440329, 31.199913, 24.345783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536876, -0.709767, 0.456065,
		-0.840043, 0.499743, -0.211149,
		-0.078049, -0.496475, -0.864535,
		29.416914, 31.050970, 24.086422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872982, 31.036018, 24.781986>,  <29.471548, 31.398502, 24.691597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872982, 31.036018, 24.781986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.046257, 30.854450, 24.470524>,  <29.150221, 30.745508, 24.283646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.046257, 30.854450, 24.470524>,  <28.872982, 31.036018, 24.781986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046257, 30.854450, 24.470524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410169, -0.868560, 0.278145,
		-0.802565, 0.198891, -0.562433,
		0.433187, -0.453922, -0.778655,
		29.176212, 30.718273, 24.236927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320295, 30.597565, 24.481064>,  <28.872982, 31.036018, 24.781986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320295, 30.597565, 24.481064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.648273, 30.438702, 24.316162>,  <28.845060, 30.343384, 24.217220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.648273, 30.438702, 24.316162>,  <28.320295, 30.597565, 24.481064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648273, 30.438702, 24.316162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335779, -0.916951, 0.215529,
		-0.463617, -0.038295, -0.885208,
		0.819946, -0.397157, -0.412256,
		28.894257, 30.319555, 24.192486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176563, 30.035923, 23.930243>,  <28.320295, 30.597565, 24.481064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176563, 30.035923, 23.930243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.509295, 29.965652, 24.140842>,  <28.708933, 29.923491, 24.267202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.509295, 29.965652, 24.140842>,  <28.176563, 30.035923, 23.930243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509295, 29.965652, 24.140842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343466, -0.908074, 0.239653,
		0.436001, -0.380185, -0.815698,
		0.831826, -0.175676, 0.526502,
		28.758842, 29.912951, 24.298794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301939, 29.299583, 23.814947>,  <28.176563, 30.035923, 23.930243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301939, 29.299583, 23.814947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.572006, 29.378830, 24.099171>,  <28.734047, 29.426378, 24.269705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.572006, 29.378830, 24.099171>,  <28.301939, 29.299583, 23.814947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572006, 29.378830, 24.099171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010144, -0.960676, 0.277488,
		0.737593, -0.194559, -0.646609,
		0.675170, 0.198114, 0.710561,
		28.774557, 29.438265, 24.312340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971012, 28.809069, 23.698950>,  <28.301939, 29.299583, 23.814947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971012, 28.809069, 23.698950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.965925, 28.911388, 24.085609>,  <28.962873, 28.972780, 24.317604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.965925, 28.911388, 24.085609>,  <28.971012, 28.809069, 23.698950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965925, 28.911388, 24.085609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235316, -0.938808, 0.251526,
		0.971836, 0.230667, -0.048254,
		-0.012718, 0.255797, 0.966647,
		28.962111, 28.988127, 24.375603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676495, 28.595074, 23.900156>,  <28.971012, 28.809069, 23.698950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676495, 28.595074, 23.900156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.477858, 28.652882, 24.242504>,  <29.358675, 28.687567, 24.447912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.477858, 28.652882, 24.242504>,  <29.676495, 28.595074, 23.900156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477858, 28.652882, 24.242504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342364, -0.873483, 0.346142,
		0.797611, 0.464910, 0.384286,
		-0.496592, 0.144521, 0.855868,
		29.328880, 28.696238, 24.499264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152458, 28.504925, 24.472685>,  <29.676495, 28.595074, 23.900156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152458, 28.504925, 24.472685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.789837, 28.434067, 24.625935>,  <29.572264, 28.391552, 24.717884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.789837, 28.434067, 24.625935>,  <30.152458, 28.504925, 24.472685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789837, 28.434067, 24.625935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348743, -0.825678, 0.443435,
		0.237785, 0.535609, 0.810297,
		-0.906552, -0.177143, 0.383123,
		29.517872, 28.380924, 24.740871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384819, 28.260056, 25.176889>,  <30.152458, 28.504925, 24.472685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384819, 28.260056, 25.176889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.010670, 28.144104, 25.095848>,  <29.786180, 28.074533, 25.047222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.010670, 28.144104, 25.095848>,  <30.384819, 28.260056, 25.176889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010670, 28.144104, 25.095848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160897, -0.858948, 0.486129,
		-0.314945, 0.422113, 0.850077,
		-0.935373, -0.289878, -0.202605,
		29.730059, 28.057140, 25.035067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135048, 28.037048, 25.865381>,  <30.384819, 28.260056, 25.176889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135048, 28.037048, 25.865381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.875706, 27.892864, 25.597141>,  <29.720100, 27.806355, 25.436197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.875706, 27.892864, 25.597141>,  <30.135048, 28.037048, 25.865381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875706, 27.892864, 25.597141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113789, -0.916804, 0.382783,
		-0.752787, 0.171872, 0.635430,
		-0.648355, -0.360459, -0.670601,
		29.681200, 27.784727, 25.395962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609121, 27.673517, 26.243431>,  <30.135048, 28.037048, 25.865381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609121, 27.673517, 26.243431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.572380, 27.509850, 25.880302>,  <29.550335, 27.411650, 25.662424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.572380, 27.509850, 25.880302>,  <29.609121, 27.673517, 26.243431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572380, 27.509850, 25.880302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032276, -0.909975, 0.413405,
		-0.995249, 0.067273, 0.070379,
		-0.091854, -0.409169, -0.907823,
		29.544825, 27.387098, 25.607956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958969, 27.291159, 26.259089>,  <29.609121, 27.673517, 26.243431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958969, 27.291159, 26.259089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.184807, 27.116291, 25.979053>,  <29.320309, 27.011372, 25.811033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.184807, 27.116291, 25.979053>,  <28.958969, 27.291159, 26.259089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184807, 27.116291, 25.979053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042984, -0.862631, 0.504004,
		-0.824248, -0.254465, -0.505828,
		0.564595, -0.437167, -0.700084,
		29.354185, 26.985140, 25.769028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675228, 26.678333, 26.086277>,  <28.958969, 27.291159, 26.259089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675228, 26.678333, 26.086277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.053280, 26.656013, 25.957520>,  <29.280111, 26.642622, 25.880264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.053280, 26.656013, 25.957520>,  <28.675228, 26.678333, 26.086277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053280, 26.656013, 25.957520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036721, -0.960915, 0.274398,
		-0.324624, -0.271162, -0.906141,
		0.945130, -0.055802, -0.321893,
		29.336819, 26.639273, 25.860952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721163, 26.063227, 25.747971>,  <28.675228, 26.678333, 26.086277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721163, 26.063227, 25.747971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.104382, 26.154514, 25.817322>,  <29.334312, 26.209288, 25.858932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.104382, 26.154514, 25.817322>,  <28.721163, 26.063227, 25.747971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104382, 26.154514, 25.817322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159053, -0.926585, 0.340798,
		0.238425, -0.298925, -0.924012,
		0.958048, 0.228221, 0.173376,
		29.391796, 26.222980, 25.869335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140911, 25.497192, 25.521875>,  <28.721163, 26.063227, 25.747971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140911, 25.497192, 25.521875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.388840, 25.702362, 25.759441>,  <29.537596, 25.825464, 25.901981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.388840, 25.702362, 25.759441>,  <29.140911, 25.497192, 25.521875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388840, 25.702362, 25.759441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290159, -0.852984, 0.433850,
		0.729131, -0.096580, -0.677526,
		0.619820, 0.512924, 0.593913,
		29.574785, 25.856239, 25.937614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855843, 25.117128, 25.372440>,  <29.140911, 25.497192, 25.521875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855843, 25.117128, 25.372440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845200, 25.300732, 25.727654>,  <29.838814, 25.410894, 25.940783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845200, 25.300732, 25.727654>,  <29.855843, 25.117128, 25.372440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845200, 25.300732, 25.727654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283485, -0.848414, 0.447023,
		0.958607, 0.263638, -0.107548,
		-0.026607, 0.459008, 0.888034,
		29.837217, 25.438435, 25.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.724304, 24.961903, 25.897097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403114, 25.107616, 26.085789>,  <30.210402, 25.195044, 26.199005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403114, 25.107616, 26.085789>,  <30.724304, 24.961903, 25.897097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403114, 25.107616, 26.085789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226417, -0.545705, 0.806810,
		0.551333, 0.754655, 0.355707,
		-0.802974, 0.364283, 0.471732,
		30.162222, 25.216902, 26.227308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940851, 25.014050, 26.601421>,  <30.724304, 24.961903, 25.897097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940851, 25.014050, 26.601421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.541945, 25.013645, 26.630962>,  <30.302601, 25.013403, 26.648687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.541945, 25.013645, 26.630962>,  <30.940851, 25.014050, 26.601421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541945, 25.013645, 26.630962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058452, -0.622044, 0.780797,
		0.045148, 0.782982, 0.620404,
		-0.997269, -0.001012, 0.073851,
		30.242764, 25.013342, 26.653118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721930, 25.006193, 27.351561>,  <30.940851, 25.014050, 26.601421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721930, 25.006193, 27.351561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.389793, 24.883831, 27.165245>,  <30.190512, 24.810413, 27.053455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.389793, 24.883831, 27.165245>,  <30.721930, 25.006193, 27.351561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389793, 24.883831, 27.165245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145365, -0.688016, 0.710987,
		-0.537963, 0.658070, 0.526820,
		-0.830340, -0.305903, -0.465788,
		30.140692, 24.792061, 27.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164948, 24.866755, 27.916897>,  <30.721930, 25.006193, 27.351561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164948, 24.866755, 27.916897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031527, 24.677399, 27.590794>,  <29.951475, 24.563786, 27.395132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031527, 24.677399, 27.590794>,  <30.164948, 24.866755, 27.916897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031527, 24.677399, 27.590794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167952, -0.821107, 0.545504,
		-0.927651, 0.318878, 0.194374,
		-0.333551, -0.473392, -0.815257,
		29.931461, 24.535381, 27.346216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663670, 24.367992, 28.227095>,  <30.164948, 24.866755, 27.916897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663670, 24.367992, 28.227095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713182, 24.234707, 27.853218>,  <29.742891, 24.154736, 27.628893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713182, 24.234707, 27.853218>,  <29.663670, 24.367992, 28.227095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713182, 24.234707, 27.853218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089375, -0.941851, 0.323928,
		-0.988276, 0.043441, -0.146366,
		0.123783, -0.333211, -0.934691,
		29.750319, 24.134743, 27.572811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151379, 24.023397, 28.039368>,  <29.663670, 24.367992, 28.227095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151379, 24.023397, 28.039368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456388, 23.883995, 27.821342>,  <29.639395, 23.800354, 27.690527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456388, 23.883995, 27.821342>,  <29.151379, 24.023397, 28.039368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456388, 23.883995, 27.821342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148910, -0.914431, 0.376354,
		-0.629586, -0.205815, -0.749174,
		0.762527, -0.348507, -0.545065,
		29.685146, 23.779444, 27.657824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935040, 23.383701, 27.700901>,  <29.151379, 24.023397, 28.039368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935040, 23.383701, 27.700901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334724, 23.373974, 27.688332>,  <29.574535, 23.368137, 27.680790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334724, 23.373974, 27.688332>,  <28.935040, 23.383701, 27.700901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334724, 23.373974, 27.688332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013391, -0.950663, 0.309935,
		-0.037411, -0.309270, -0.950238,
		0.999210, -0.024320, -0.031424,
		29.634487, 23.366678, 27.678904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973083, 22.781370, 27.442259>,  <28.935040, 23.383701, 27.700901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973083, 22.781370, 27.442259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.324255, 22.884350, 27.603733>,  <29.534958, 22.946138, 27.700617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.324255, 22.884350, 27.603733>,  <28.973083, 22.781370, 27.442259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324255, 22.884350, 27.603733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170776, -0.956054, 0.238321,
		0.447299, -0.140289, -0.883313,
		0.877929, 0.257449, 0.403684,
		29.587633, 22.961584, 27.724838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438299, 22.393116, 27.115189>,  <28.973083, 22.781370, 27.442259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438299, 22.393116, 27.115189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.580624, 22.488811, 27.476555>,  <29.666018, 22.546228, 27.693375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.580624, 22.488811, 27.476555>,  <29.438299, 22.393116, 27.115189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580624, 22.488811, 27.476555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115147, -0.970536, 0.211663,
		0.927437, 0.028714, -0.372875,
		0.355811, 0.239240, 0.903417,
		29.687366, 22.560583, 27.747580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171963, 22.020018, 27.273340>,  <29.438299, 22.393116, 27.115189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171963, 22.020018, 27.273340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009777, 22.110390, 27.627640>,  <29.912466, 22.164614, 27.840219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009777, 22.110390, 27.627640>,  <30.171963, 22.020018, 27.273340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009777, 22.110390, 27.627640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036958, -0.964131, 0.262841,
		0.913363, 0.139309, 0.382572,
		-0.405466, 0.225930, 0.885750,
		29.888138, 22.178169, 27.893364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586166, 21.615610, 27.659224>,  <30.171963, 22.020018, 27.273340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586166, 21.615610, 27.659224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275869, 21.728848, 27.884819>,  <30.089691, 21.796791, 28.020176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275869, 21.728848, 27.884819>,  <30.586166, 21.615610, 27.659224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275869, 21.728848, 27.884819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044834, -0.866745, 0.496732,
		0.629455, 0.410621, 0.659679,
		-0.775742, 0.283094, 0.563987,
		30.043146, 21.813776, 28.054014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744720, 21.306862, 28.303551>,  <30.586166, 21.615610, 27.659224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744720, 21.306862, 28.303551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367638, 21.413395, 28.383919>,  <30.141388, 21.477314, 28.432140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367638, 21.413395, 28.383919>,  <30.744720, 21.306862, 28.303551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367638, 21.413395, 28.383919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144240, -0.868424, 0.474379,
		0.300825, 0.418220, 0.857086,
		-0.942708, 0.266331, 0.200919,
		30.084826, 21.493294, 28.444195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629387, 21.340811, 29.050694>,  <30.744720, 21.306862, 28.303551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629387, 21.340811, 29.050694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297951, 21.255150, 28.843781>,  <30.099089, 21.203754, 28.719633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297951, 21.255150, 28.843781>,  <30.629387, 21.340811, 29.050694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297951, 21.255150, 28.843781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138736, -0.816592, 0.560294,
		-0.542394, 0.536018, 0.646910,
		-0.828589, -0.214151, -0.517280,
		30.049374, 21.190905, 28.688597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151884, 21.184328, 29.543018>,  <30.629387, 21.340811, 29.050694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151884, 21.184328, 29.543018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982693, 21.041584, 29.209854>,  <29.881178, 20.955938, 29.009956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982693, 21.041584, 29.209854>,  <30.151884, 21.184328, 29.543018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982693, 21.041584, 29.209854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296862, -0.813885, 0.499464,
		-0.856131, 0.458523, 0.238320,
		-0.422981, -0.356858, -0.832910,
		29.855799, 20.934526, 28.959982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714109, 20.829033, 29.759886>,  <30.151884, 21.184328, 29.543018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714109, 20.829033, 29.759886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669085, 20.685101, 29.389404>,  <29.642071, 20.598742, 29.167116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669085, 20.685101, 29.389404>,  <29.714109, 20.829033, 29.759886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669085, 20.685101, 29.389404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508867, -0.779741, 0.364771,
		-0.853454, 0.512374, -0.095336,
		-0.112561, -0.359829, -0.926204,
		29.635317, 20.577152, 29.111544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012890, 20.480276, 29.831871>,  <29.714109, 20.829033, 29.759886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012890, 20.480276, 29.831871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174231, 20.322849, 29.501438>,  <29.271036, 20.228394, 29.303179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174231, 20.322849, 29.501438>,  <29.012890, 20.480276, 29.831871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174231, 20.322849, 29.501438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177856, -0.919280, 0.351128,
		-0.897593, 0.005295, -0.440793,
		0.403354, -0.393567, -0.826081,
		29.295237, 20.204779, 29.253614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534307, 20.097069, 29.559912>,  <29.012890, 20.480276, 29.831871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534307, 20.097069, 29.559912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897251, 19.958908, 29.464077>,  <29.115017, 19.876013, 29.406576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897251, 19.958908, 29.464077>,  <28.534307, 20.097069, 29.559912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897251, 19.958908, 29.464077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202347, -0.858461, 0.471275,
		-0.368454, -0.379135, -0.848822,
		0.907357, -0.345399, -0.239586,
		29.169458, 19.855288, 29.392200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465300, 19.416481, 29.376392>,  <28.534307, 20.097069, 29.559912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465300, 19.416481, 29.376392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.859314, 19.454899, 29.433640>,  <29.095722, 19.477949, 29.467987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.859314, 19.454899, 29.433640>,  <28.465300, 19.416481, 29.376392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859314, 19.454899, 29.433640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035590, -0.925794, 0.376349,
		0.168645, -0.365623, -0.915357,
		0.985034, 0.096047, 0.143118,
		29.154823, 19.483713, 29.476576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739084, 18.719967, 29.232397>,  <28.465300, 19.416481, 29.376392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739084, 18.719967, 29.232397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.050407, 18.886471, 29.420425>,  <29.237202, 18.986372, 29.533243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.050407, 18.886471, 29.420425>,  <28.739084, 18.719967, 29.232397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050407, 18.886471, 29.420425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179862, -0.865092, 0.468258,
		0.601571, -0.279901, -0.748176,
		0.778307, 0.416259, 0.470071,
		29.283899, 19.011349, 29.561447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247334, 18.176580, 29.201422>,  <28.739084, 18.719967, 29.232397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247334, 18.176580, 29.201422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337898, 18.433491, 29.494331>,  <29.392237, 18.587637, 29.670076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.337898, 18.433491, 29.494331>,  <29.247334, 18.176580, 29.201422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337898, 18.433491, 29.494331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387875, -0.749067, 0.537077,
		0.893471, 0.162430, -0.418719,
		0.226411, 0.642274, 0.732272,
		29.405821, 18.626173, 29.714012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904997, 18.012247, 29.492559>,  <29.247334, 18.176580, 29.201422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904997, 18.012247, 29.492559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733780, 18.212414, 29.793587>,  <29.631050, 18.332514, 29.974203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733780, 18.212414, 29.793587>,  <29.904997, 18.012247, 29.492559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733780, 18.212414, 29.793587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301854, -0.705731, 0.640959,
		0.851858, 0.501525, 0.151031,
		-0.428044, 0.500417, 0.752570,
		29.605368, 18.362539, 30.019358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372028, 17.961775, 30.071716>,  <29.904997, 18.012247, 29.492559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372028, 17.961775, 30.071716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020136, 18.038380, 30.245792>,  <29.809000, 18.084343, 30.350239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020136, 18.038380, 30.245792>,  <30.372028, 17.961775, 30.071716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020136, 18.038380, 30.245792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208673, -0.666917, 0.715316,
		0.427230, 0.720100, 0.546745,
		-0.879733, 0.191514, 0.435193,
		29.756216, 18.095835, 30.376350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528515, 18.079971, 30.728779>,  <30.372028, 17.961775, 30.071716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528515, 18.079971, 30.728779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141888, 17.977451, 30.731731>,  <29.909912, 17.915939, 30.733503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141888, 17.977451, 30.731731>,  <30.528515, 18.079971, 30.728779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141888, 17.977451, 30.731731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188925, -0.692427, 0.696313,
		-0.173357, 0.674429, 0.717700,
		-0.966569, -0.256302, 0.007379,
		29.851917, 17.900560, 30.733946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277254, 18.172451, 31.471857>,  <30.528515, 18.079971, 30.728779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277254, 18.172451, 31.471857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082445, 17.909756, 31.241550>,  <29.965559, 17.752138, 31.103367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082445, 17.909756, 31.241550>,  <30.277254, 18.172451, 31.471857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082445, 17.909756, 31.241550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129940, -0.706378, 0.695806,
		-0.863669, 0.264059, 0.429359,
		-0.487023, -0.656737, -0.575765,
		29.936338, 17.712734, 31.068821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631821, 17.766293, 32.016262>,  <30.277254, 18.172451, 31.471857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631821, 17.766293, 32.016262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024311, 17.758282, 32.092987>,  <31.259806, 17.753475, 32.139023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024311, 17.758282, 32.092987>,  <30.631821, 17.766293, 32.016262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024311, 17.758282, 32.092987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035018, 0.996561, -0.075094,
		-0.189651, 0.080402, 0.978554,
		0.981227, -0.020025, 0.191814,
		31.318680, 17.752274, 32.150532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724018, 18.335392, 32.510071>,  <30.631821, 17.766293, 32.016262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724018, 18.335392, 32.510071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088228, 18.275761, 32.355812>,  <31.306753, 18.239983, 32.263256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088228, 18.275761, 32.355812>,  <30.724018, 18.335392, 32.510071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088228, 18.275761, 32.355812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173378, 0.984434, 0.028803,
		0.375348, -0.093088, 0.922198,
		0.910524, -0.149078, -0.385644,
		31.361385, 18.231037, 32.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317453, 18.662161, 32.929264>,  <30.724018, 18.335392, 32.510071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317453, 18.662161, 32.929264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.425076, 18.635071, 32.544968>,  <31.489649, 18.618816, 32.314388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.425076, 18.635071, 32.544968>,  <31.317453, 18.662161, 32.929264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425076, 18.635071, 32.544968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184128, 0.982743, -0.017713,
		0.945361, -0.172133, 0.276883,
		0.269055, -0.067727, -0.960740,
		31.505793, 18.614752, 32.256744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855862, 19.210001, 32.787430>,  <31.317453, 18.662161, 32.929264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855862, 19.210001, 32.787430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785223, 19.128517, 32.402241>,  <31.742840, 19.079626, 32.171127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785223, 19.128517, 32.402241>,  <31.855862, 19.210001, 32.787430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785223, 19.128517, 32.402241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172634, 0.956773, -0.234057,
		0.969026, -0.207575, -0.133797,
		-0.176598, -0.203709, -0.962972,
		31.732244, 19.067404, 32.113350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411171, 19.519308, 32.485809>,  <31.855862, 19.210001, 32.787430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411171, 19.519308, 32.485809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162483, 19.475178, 32.175636>,  <32.013271, 19.448700, 31.989532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162483, 19.475178, 32.175636>,  <32.411171, 19.519308, 32.485809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162483, 19.475178, 32.175636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092967, 0.972637, -0.212921,
		0.777703, -0.204466, -0.594451,
		-0.621720, -0.110325, -0.775431,
		31.975967, 19.442080, 31.943007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762695, 19.859476, 31.947151>,  <32.411171, 19.519308, 32.485809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762695, 19.859476, 31.947151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384769, 19.840290, 31.817520>,  <32.158012, 19.828779, 31.739742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384769, 19.840290, 31.817520>,  <32.762695, 19.859476, 31.947151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384769, 19.840290, 31.817520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065139, 0.941968, -0.329323,
		0.321066, -0.332259, -0.886860,
		-0.944814, -0.047965, -0.324077,
		32.101326, 19.825901, 31.720297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679554, 19.989491, 31.249731>,  <32.762695, 19.859476, 31.947151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679554, 19.989491, 31.249731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304569, 20.073059, 31.361099>,  <32.079578, 20.123199, 31.427921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304569, 20.073059, 31.361099>,  <32.679554, 19.989491, 31.249731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304569, 20.073059, 31.361099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052821, 0.875974, -0.479457,
		-0.344059, -0.434766, -0.832227,
		-0.937461, 0.208921, 0.278422,
		32.023331, 20.135735, 31.444626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414745, 20.231169, 30.665134>,  <32.679554, 19.989491, 31.249731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414745, 20.231169, 30.665134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183674, 20.368504, 30.961353>,  <32.045033, 20.450905, 31.139086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183674, 20.368504, 30.961353>,  <32.414745, 20.231169, 30.665134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183674, 20.368504, 30.961353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144518, 0.849887, -0.506761,
		-0.803372, -0.399765, -0.441339,
		-0.577674, 0.343336, 0.740549,
		32.010372, 20.471504, 31.183517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770123, 20.284372, 30.398169>,  <32.414745, 20.231169, 30.665134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770123, 20.284372, 30.398169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.798494, 20.514870, 30.723846>,  <31.815517, 20.653168, 30.919252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.798494, 20.514870, 30.723846>,  <31.770123, 20.284372, 30.398169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798494, 20.514870, 30.723846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324963, 0.785068, -0.527321,
		-0.943063, -0.227180, 0.242942,
		0.070929, 0.576245, 0.814194,
		31.819773, 20.687742, 30.968105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206823, 20.708828, 30.313324>,  <31.770123, 20.284372, 30.398169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206823, 20.708828, 30.313324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406742, 20.924068, 30.584808>,  <31.526693, 21.053213, 30.747700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406742, 20.924068, 30.584808>,  <31.206823, 20.708828, 30.313324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406742, 20.924068, 30.584808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109482, 0.816567, -0.566773,
		-0.859195, 0.208965, 0.467030,
		0.499797, 0.538100, 0.678713,
		31.556681, 21.085499, 30.788422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765091, 21.342251, 30.511183>,  <31.206823, 20.708828, 30.313324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765091, 21.342251, 30.511183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158764, 21.384083, 30.568382>,  <31.394968, 21.409182, 30.602703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158764, 21.384083, 30.568382>,  <30.765091, 21.342251, 30.511183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158764, 21.384083, 30.568382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038730, 0.914665, -0.402352,
		-0.172875, 0.390450, 0.904247,
		0.984182, 0.104578, 0.143000,
		31.454018, 21.415457, 30.611282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835072, 21.983784, 30.570749>,  <30.765091, 21.342251, 30.511183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835072, 21.983784, 30.570749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.216681, 21.884037, 30.504230>,  <31.445646, 21.824190, 30.464319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.216681, 21.884037, 30.504230>,  <30.835072, 21.983784, 30.570749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216681, 21.884037, 30.504230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117669, 0.821883, -0.557370,
		0.275666, 0.512176, 0.813439,
		0.954024, -0.249365, -0.166298,
		31.502888, 21.809227, 30.454342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092468, 22.624414, 30.590546>,  <30.835072, 21.983784, 30.570749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092468, 22.624414, 30.590546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377096, 22.401642, 30.419201>,  <31.547873, 22.267979, 30.316395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377096, 22.401642, 30.419201>,  <31.092468, 22.624414, 30.590546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377096, 22.401642, 30.419201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255340, 0.772962, -0.580802,
		0.654574, 0.303905, 0.692225,
		0.711572, -0.556930, -0.428361,
		31.590569, 22.234562, 30.290693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627962, 23.062056, 30.575388>,  <31.092468, 22.624414, 30.590546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627962, 23.062056, 30.575388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.684887, 22.765213, 30.313389>,  <31.719042, 22.587107, 30.156189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.684887, 22.765213, 30.313389>,  <31.627962, 23.062056, 30.575388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684887, 22.765213, 30.313389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244875, 0.667561, -0.703135,
		0.959053, -0.060328, 0.276726,
		0.142312, -0.742107, -0.654999,
		31.727581, 22.542582, 30.116888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251987, 23.326118, 30.215727>,  <31.627962, 23.062056, 30.575388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251987, 23.326118, 30.215727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124119, 23.039371, 29.967884>,  <32.047398, 22.867323, 29.819178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124119, 23.039371, 29.967884>,  <32.251987, 23.326118, 30.215727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124119, 23.039371, 29.967884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168144, 0.600623, -0.781652,
		0.932490, -0.354056, -0.071466,
		-0.319673, -0.716866, -0.619607,
		32.028217, 22.824312, 29.782001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762955, 23.075695, 29.670586>,  <32.251987, 23.326118, 30.215727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762955, 23.075695, 29.670586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.386837, 23.022732, 29.545170>,  <32.161167, 22.990953, 29.469921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.386837, 23.022732, 29.545170>,  <32.762955, 23.075695, 29.670586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386837, 23.022732, 29.545170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205495, 0.513494, -0.833124,
		0.271313, -0.847816, -0.455628,
		-0.940298, -0.132407, -0.313540,
		32.104748, 22.983009, 29.451107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908737, 23.013020, 29.041319>,  <32.762955, 23.075695, 29.670586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908737, 23.013020, 29.041319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510998, 23.050934, 29.022160>,  <32.272354, 23.073683, 29.010664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510998, 23.050934, 29.022160>,  <32.908737, 23.013020, 29.041319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510998, 23.050934, 29.022160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087231, 0.471687, -0.877441,
		-0.060578, -0.876657, -0.477288,
		-0.994345, 0.094788, -0.047897,
		32.212696, 23.079370, 29.007790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672249, 22.735853, 28.371309>,  <32.908737, 23.013020, 29.041319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672249, 22.735853, 28.371309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399464, 22.998829, 28.499493>,  <32.235790, 23.156614, 28.576403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399464, 22.998829, 28.499493>,  <32.672249, 22.735853, 28.371309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399464, 22.998829, 28.499493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032091, 0.464631, -0.884923,
		-0.730680, -0.593203, -0.337960,
		-0.681966, 0.657441, 0.320460,
		32.194874, 23.196060, 28.595631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330704, 22.817188, 27.790333>,  <32.672249, 22.735853, 28.371309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330704, 22.817188, 27.790333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245964, 23.145863, 28.001976>,  <32.195122, 23.343067, 28.128962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245964, 23.145863, 28.001976>,  <32.330704, 22.817188, 27.790333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245964, 23.145863, 28.001976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031035, 0.546777, -0.836703,
		-0.976810, -0.160831, -0.141334,
		-0.211846, 0.821686, 0.529106,
		32.182411, 23.392368, 28.160707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914457, 23.167532, 27.400574>,  <32.330704, 22.817188, 27.790333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914457, 23.167532, 27.400574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044151, 23.434448, 27.668781>,  <32.121967, 23.594599, 27.829706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044151, 23.434448, 27.668781>,  <31.914457, 23.167532, 27.400574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044151, 23.434448, 27.668781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215436, 0.638098, -0.739201,
		-0.921119, 0.384128, 0.063135,
		0.324234, 0.667291, 0.670519,
		32.141422, 23.634636, 27.869936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.467390, 36.040295, 17.138340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.728758, 35.748535, 17.219353>,  <27.885578, 35.573479, 17.267960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.728758, 35.748535, 17.219353>,  <27.467390, 36.040295, 17.138340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728758, 35.748535, 17.219353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706954, -0.492319, 0.507777,
		-0.270664, -0.474971, -0.837343,
		0.653420, -0.729400, 0.202530,
		27.924784, 35.529716, 17.280111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114391, 35.498077, 16.878517>,  <27.467390, 36.040295, 17.138340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114391, 35.498077, 16.878517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.386200, 35.365578, 17.140366>,  <27.549284, 35.286079, 17.297474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.386200, 35.365578, 17.140366>,  <27.114391, 35.498077, 16.878517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386200, 35.365578, 17.140366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716284, -0.492569, 0.494281,
		0.158715, -0.804767, -0.571979,
		0.679520, -0.331249, 0.654619,
		27.590055, 35.266201, 17.336752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033741, 34.839458, 16.906725>,  <27.114391, 35.498077, 16.878517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033741, 34.839458, 16.906725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.199436, 34.938786, 17.256981>,  <27.298853, 34.998383, 17.467134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.199436, 34.938786, 17.256981>,  <27.033741, 34.839458, 16.906725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199436, 34.938786, 17.256981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733113, -0.479124, 0.482686,
		0.539398, -0.841891, -0.016429,
		0.414240, 0.248316, 0.875640,
		27.323708, 35.013279, 17.519672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839687, 34.223984, 17.192247>,  <27.033741, 34.839458, 16.906725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839687, 34.223984, 17.192247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.908161, 34.533642, 17.436016>,  <26.949245, 34.719437, 17.582277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.908161, 34.533642, 17.436016>,  <26.839687, 34.223984, 17.192247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908161, 34.533642, 17.436016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654023, -0.373319, 0.657942,
		0.736851, -0.511206, 0.442402,
		0.171187, 0.774146, 0.609420,
		26.959517, 34.765884, 17.618843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692158, 34.020748, 17.760397>,  <26.839687, 34.223984, 17.192247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692158, 34.020748, 17.760397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.710056, 34.397831, 17.892635>,  <26.720795, 34.624081, 17.971979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.710056, 34.397831, 17.892635>,  <26.692158, 34.020748, 17.760397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710056, 34.397831, 17.892635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726936, -0.196269, 0.658060,
		0.685246, -0.269768, 0.676508,
		0.044746, 0.942711, 0.330596,
		26.723480, 34.680645, 17.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741617, 34.048542, 18.439785>,  <26.692158, 34.020748, 17.760397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741617, 34.048542, 18.439785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.591007, 34.414268, 18.380108>,  <26.500641, 34.633705, 18.344301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.591007, 34.414268, 18.380108>,  <26.741617, 34.048542, 18.439785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591007, 34.414268, 18.380108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616804, -0.127262, 0.776761,
		0.691217, 0.384492, 0.611870,
		-0.376526, 0.914314, -0.149191,
		26.478050, 34.688564, 18.335350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855812, 34.463806, 19.107992>,  <26.741617, 34.048542, 18.439785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855812, 34.463806, 19.107992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.561596, 34.638660, 18.900959>,  <26.385065, 34.743572, 18.776739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.561596, 34.638660, 18.900959>,  <26.855812, 34.463806, 19.107992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561596, 34.638660, 18.900959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645273, -0.219285, 0.731804,
		0.206399, 0.872254, 0.443365,
		-0.735542, 0.437135, -0.517582,
		26.340933, 34.769802, 18.745684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460680, 34.961853, 19.618731>,  <26.855812, 34.463806, 19.107992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460680, 34.961853, 19.618731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.175674, 34.962788, 19.338070>,  <26.004671, 34.963348, 19.169674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.175674, 34.962788, 19.338070>,  <26.460680, 34.961853, 19.618731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175674, 34.962788, 19.338070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588231, -0.547123, 0.595517,
		-0.382500, 0.837049, 0.391207,
		-0.712515, 0.002335, -0.701653,
		25.961920, 34.963490, 19.127575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888325, 35.193130, 19.919754>,  <26.460680, 34.961853, 19.618731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888325, 35.193130, 19.919754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.724178, 35.005535, 19.606922>,  <25.625690, 34.892979, 19.419222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.724178, 35.005535, 19.606922>,  <25.888325, 35.193130, 19.919754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724178, 35.005535, 19.606922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717928, -0.362666, 0.594182,
		-0.562297, 0.805312, -0.187870,
		-0.410368, -0.468984, -0.782082,
		25.601068, 34.864841, 19.372297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208149, 35.374477, 19.979107>,  <25.888325, 35.193130, 19.919754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208149, 35.374477, 19.979107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.224510, 35.049866, 19.745956>,  <25.234327, 34.855099, 19.606066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.224510, 35.049866, 19.745956>,  <25.208149, 35.374477, 19.979107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224510, 35.049866, 19.745956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751511, -0.409428, 0.517301,
		-0.658451, 0.416880, -0.626620,
		0.040904, -0.811529, -0.582878,
		25.236782, 34.806408, 19.571093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447218, 35.184261, 19.741426>,  <25.208149, 35.374477, 19.979107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447218, 35.184261, 19.741426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.678980, 34.860962, 19.699409>,  <24.818037, 34.666985, 19.674200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.678980, 34.860962, 19.699409>,  <24.447218, 35.184261, 19.741426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678980, 34.860962, 19.699409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547576, -0.481480, 0.684352,
		-0.603699, -0.338997, -0.721546,
		0.579403, -0.808244, -0.105042,
		24.852800, 34.618488, 19.667896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016640, 34.644512, 19.528141>,  <24.447218, 35.184261, 19.741426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016640, 34.644512, 19.528141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.334099, 34.476364, 19.704056>,  <24.524574, 34.375473, 19.809605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.334099, 34.476364, 19.704056>,  <24.016640, 34.644512, 19.528141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334099, 34.476364, 19.704056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608362, -0.542942, 0.578886,
		-0.004568, -0.726981, -0.686642,
		0.793646, -0.420372, 0.439787,
		24.572193, 34.350254, 19.835993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.708771, 33.948864, 19.633965>,  <24.016640, 34.644512, 19.528141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.708771, 33.948864, 19.633965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.037546, 33.999443, 19.856110>,  <24.234812, 34.029789, 19.989397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.037546, 33.999443, 19.856110>,  <23.708771, 33.948864, 19.633965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037546, 33.999443, 19.856110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456966, -0.435640, 0.775500,
		0.339998, -0.891195, -0.300287,
		0.821939, 0.126447, 0.555362,
		24.284128, 34.037376, 20.022718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.883202, 33.313839, 20.098627>,  <23.708771, 33.948864, 19.633965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.883202, 33.313839, 20.098627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084860, 33.612091, 20.272926>,  <24.205854, 33.791042, 20.377506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084860, 33.612091, 20.272926>,  <23.883202, 33.313839, 20.098627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084860, 33.612091, 20.272926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423148, -0.226580, 0.877273,
		0.752852, -0.626658, 0.201282,
		0.504143, 0.745628, 0.435750,
		24.236103, 33.835781, 20.403652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902397, 33.051262, 20.835180>,  <23.883202, 33.313839, 20.098627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902397, 33.051262, 20.835180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.014130, 33.435276, 20.842247>,  <24.081169, 33.665684, 20.846487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.014130, 33.435276, 20.842247>,  <23.902397, 33.051262, 20.835180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.014130, 33.435276, 20.842247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245775, 0.053702, 0.967838,
		0.928208, -0.274687, 0.250953,
		0.279330, 0.960033, 0.017665,
		24.097929, 33.723286, 20.847546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355776, 33.085152, 21.493008>,  <23.902397, 33.051262, 20.835180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355776, 33.085152, 21.493008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.217865, 33.440113, 21.370605>,  <24.135118, 33.653091, 21.297165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.217865, 33.440113, 21.370605>,  <24.355776, 33.085152, 21.493008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217865, 33.440113, 21.370605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284935, 0.211673, 0.934883,
		0.894394, 0.409518, 0.179873,
		-0.344777, 0.887406, -0.306005,
		24.114431, 33.706333, 21.278805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.533859, 33.407162, 22.003090>,  <24.355776, 33.085152, 21.493008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.533859, 33.407162, 22.003090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.256216, 33.620789, 21.810017>,  <24.089630, 33.748966, 21.694172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.256216, 33.620789, 21.810017>,  <24.533859, 33.407162, 22.003090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256216, 33.620789, 21.810017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470402, 0.171055, 0.865715,
		0.544918, 0.827955, 0.132497,
		-0.694109, 0.534070, -0.482683,
		24.047983, 33.781010, 21.665213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250076, 33.876869, 22.494535>,  <24.533859, 33.407162, 22.003090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250076, 33.876869, 22.494535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.959684, 33.879765, 22.219463>,  <23.785450, 33.881504, 22.054420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.959684, 33.879765, 22.219463>,  <24.250076, 33.876869, 22.494535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.959684, 33.879765, 22.219463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683531, 0.102559, 0.722681,
		0.075761, 0.994701, -0.069505,
		-0.725979, 0.007242, -0.687678,
		23.741890, 33.881939, 22.013161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890379, 34.408802, 22.648561>,  <24.250076, 33.876869, 22.494535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890379, 34.408802, 22.648561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.638460, 34.163418, 22.457977>,  <23.487309, 34.016186, 22.343626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.638460, 34.163418, 22.457977>,  <23.890379, 34.408802, 22.648561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.638460, 34.163418, 22.457977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611147, 0.012748, 0.791415,
		-0.479429, 0.789621, -0.382944,
		-0.629799, -0.613463, -0.476462,
		23.449520, 33.979378, 22.315039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202486, 34.782707, 22.634726>,  <23.890379, 34.408802, 22.648561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202486, 34.782707, 22.634726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134399, 34.395729, 22.559811>,  <23.093548, 34.163544, 22.514862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134399, 34.395729, 22.559811>,  <23.202486, 34.782707, 22.634726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134399, 34.395729, 22.559811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618614, -0.043033, 0.784516,
		-0.767035, 0.249397, -0.591150,
		-0.170217, -0.967445, -0.187288,
		23.083334, 34.105495, 22.503624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507187, 34.666378, 22.668463>,  <23.202486, 34.782707, 22.634726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507187, 34.666378, 22.668463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.656641, 34.300106, 22.727684>,  <22.746313, 34.080341, 22.763216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.656641, 34.300106, 22.727684>,  <22.507187, 34.666378, 22.668463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.656641, 34.300106, 22.727684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515169, -0.072121, 0.854049,
		-0.771361, -0.395375, -0.498679,
		0.373634, -0.915684, 0.148053,
		22.768732, 34.025402, 22.772100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.985813, 35.151623, 22.950424>,  <22.507187, 34.666378, 22.668463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.985813, 35.151623, 22.950424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.741974, 35.460953, 22.880730>,  <21.595671, 35.646549, 22.838913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.741974, 35.460953, 22.880730>,  <21.985813, 35.151623, 22.950424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.741974, 35.460953, 22.880730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737540, 0.472740, -0.482236,
		-0.290557, -0.422476, -0.858540,
		-0.609599, 0.773324, -0.174235,
		21.559093, 35.692951, 22.828459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.904182, 35.175720, 22.264435>,  <21.985813, 35.151623, 22.950424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.904182, 35.175720, 22.264435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.850504, 35.535069, 22.431728>,  <21.818296, 35.750679, 22.532104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.850504, 35.535069, 22.431728>,  <21.904182, 35.175720, 22.264435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850504, 35.535069, 22.431728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795423, 0.349367, -0.495223,
		-0.591011, 0.266215, -0.761469,
		-0.134196, 0.898372, 0.418233,
		21.810246, 35.804581, 22.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.890642, 35.699261, 21.609509>,  <21.904182, 35.175720, 22.264435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.890642, 35.699261, 21.609509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.996635, 35.876690, 21.951977>,  <22.060232, 35.983147, 22.157457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.996635, 35.876690, 21.951977>,  <21.890642, 35.699261, 21.609509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.996635, 35.876690, 21.951977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777612, 0.426735, -0.461754,
		-0.570178, 0.788127, -0.231847,
		0.264983, 0.443569, 0.856172,
		22.076130, 36.009762, 22.208828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909065, 36.392986, 21.453438>,  <21.890642, 35.699261, 21.609509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909065, 36.392986, 21.453438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130007, 36.407795, 21.786552>,  <22.262571, 36.416679, 21.986422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130007, 36.407795, 21.786552>,  <21.909065, 36.392986, 21.453438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130007, 36.407795, 21.786552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743552, 0.429772, -0.512276,
		-0.376875, 0.902178, 0.209857,
		0.552355, 0.037025, 0.832786,
		22.295713, 36.418903, 22.036388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176710, 37.093956, 21.538597>,  <21.909065, 36.392986, 21.453438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176710, 37.093956, 21.538597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.423782, 36.885765, 21.774422>,  <22.572025, 36.760853, 21.915916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.423782, 36.885765, 21.774422>,  <22.176710, 37.093956, 21.538597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.423782, 36.885765, 21.774422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780425, 0.498136, -0.377886,
		-0.097001, 0.693519, 0.713878,
		0.617680, -0.520473, 0.589559,
		22.609087, 36.729622, 21.951290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.718832, 37.501171, 21.803331>,  <22.176710, 37.093956, 21.538597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.718832, 37.501171, 21.803331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.888420, 37.144588, 21.867275>,  <22.990173, 36.930637, 21.905642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.888420, 37.144588, 21.867275>,  <22.718832, 37.501171, 21.803331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.888420, 37.144588, 21.867275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859092, 0.339969, -0.382599,
		0.286724, 0.299543, 0.909980,
		0.423970, -0.891457, 0.159858,
		23.015612, 36.877151, 21.915232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.393930, 37.578812, 22.085915>,  <22.718832, 37.501171, 21.803331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.393930, 37.578812, 22.085915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.413200, 37.240658, 21.873123>,  <23.424763, 37.037766, 21.745449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.413200, 37.240658, 21.873123>,  <23.393930, 37.578812, 22.085915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.413200, 37.240658, 21.873123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863013, 0.303373, -0.403946,
		0.502878, -0.439644, 0.744195,
		0.048176, -0.845386, -0.531978,
		23.427652, 36.987041, 21.713530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.037222, 37.445267, 22.188766>,  <23.393930, 37.578812, 22.085915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.037222, 37.445267, 22.188766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961681, 37.175358, 21.903385>,  <23.916357, 37.013412, 21.732157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961681, 37.175358, 21.903385>,  <24.037222, 37.445267, 22.188766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961681, 37.175358, 21.903385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862768, 0.232980, -0.448722,
		0.469007, -0.700286, 0.538175,
		-0.188850, -0.674774, -0.713454,
		23.905027, 36.972927, 21.689348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767790, 37.210125, 21.984503>,  <24.037222, 37.445267, 22.188766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767790, 37.210125, 21.984503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.527468, 37.100655, 21.684067>,  <24.383274, 37.034973, 21.503805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.527468, 37.100655, 21.684067>,  <24.767790, 37.210125, 21.984503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527468, 37.100655, 21.684067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716114, 0.233304, -0.657837,
		0.355265, -0.933098, 0.055811,
		-0.600806, -0.273673, -0.751089,
		24.347225, 37.018551, 21.458740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188087, 36.732792, 21.490265>,  <24.767790, 37.210125, 21.984503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188087, 36.732792, 21.490265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.886776, 36.887711, 21.277634>,  <24.705990, 36.980663, 21.150055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.886776, 36.887711, 21.277634>,  <25.188087, 36.732792, 21.490265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886776, 36.887711, 21.277634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653299, 0.347237, -0.672775,
		-0.075981, -0.854065, -0.514587,
		-0.753277, 0.387298, -0.531576,
		24.660793, 37.003899, 21.118160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194332, 36.432175, 20.740076>,  <25.188087, 36.732792, 21.490265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194332, 36.432175, 20.740076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.997837, 36.780518, 20.746864>,  <24.879940, 36.989525, 20.750938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.997837, 36.780518, 20.746864>,  <25.194332, 36.432175, 20.740076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997837, 36.780518, 20.746864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554727, 0.327815, -0.764732,
		-0.671539, -0.366249, -0.644125,
		-0.491236, 0.870861, 0.016972,
		24.850466, 37.041775, 20.751957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903158, 36.435352, 20.032682>,  <25.194332, 36.432175, 20.740076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903158, 36.435352, 20.032682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924650, 36.803436, 20.187775>,  <24.937546, 37.024284, 20.280830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924650, 36.803436, 20.187775>,  <24.903158, 36.435352, 20.032682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924650, 36.803436, 20.187775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517408, 0.306444, -0.798988,
		-0.854051, 0.243542, -0.459657,
		0.053728, 0.920206, 0.387729,
		24.940769, 37.079498, 20.304094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601551, 36.912273, 19.481756>,  <24.903158, 36.435352, 20.032682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601551, 36.912273, 19.481756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825542, 37.136902, 19.725414>,  <24.959938, 37.271679, 19.871609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825542, 37.136902, 19.725414>,  <24.601551, 36.912273, 19.481756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825542, 37.136902, 19.725414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465014, 0.395470, -0.792064,
		-0.685701, 0.726801, -0.039684,
		0.559979, 0.561573, 0.609146,
		24.993536, 37.305374, 19.908157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578892, 37.483994, 19.077503>,  <24.601551, 36.912273, 19.481756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578892, 37.483994, 19.077503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.884342, 37.540466, 19.329517>,  <25.067612, 37.574348, 19.480726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.884342, 37.540466, 19.329517>,  <24.578892, 37.483994, 19.077503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884342, 37.540466, 19.329517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489552, 0.509612, -0.707555,
		-0.420968, 0.848742, 0.320036,
		0.763626, 0.141183, 0.630034,
		25.113430, 37.582821, 19.518528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784306, 38.110779, 18.993011>,  <24.578892, 37.483994, 19.077503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784306, 38.110779, 18.993011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.114269, 37.939617, 19.140755>,  <25.312248, 37.836922, 19.229401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.114269, 37.939617, 19.140755>,  <24.784306, 38.110779, 18.993011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114269, 37.939617, 19.140755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549290, 0.452548, -0.702482,
		0.133441, 0.782368, 0.608353,
		0.824909, -0.427902, 0.369358,
		25.361742, 37.811245, 19.251562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320139, 38.573399, 18.784616>,  <24.784306, 38.110779, 18.993011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320139, 38.573399, 18.784616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.547440, 38.270809, 18.914131>,  <25.683821, 38.089256, 18.991840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.547440, 38.270809, 18.914131>,  <25.320139, 38.573399, 18.784616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547440, 38.270809, 18.914131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694956, 0.230515, -0.681102,
		0.440599, 0.612054, 0.656706,
		0.568251, -0.756474, 0.323786,
		25.717915, 38.043865, 19.011267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966984, 38.842892, 18.938921>,  <25.320139, 38.573399, 18.784616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966984, 38.842892, 18.938921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.989088, 38.451057, 18.861607>,  <26.002352, 38.215958, 18.815218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.989088, 38.451057, 18.861607>,  <25.966984, 38.842892, 18.938921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989088, 38.451057, 18.861607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663601, 0.180676, -0.725941,
		0.746043, -0.088149, 0.660038,
		0.055262, -0.979585, -0.193288,
		26.005667, 38.157181, 18.803619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702822, 38.756725, 18.725466>,  <25.966984, 38.842892, 18.938921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702822, 38.756725, 18.725466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.528984, 38.415024, 18.611362>,  <26.424683, 38.210003, 18.542900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.528984, 38.415024, 18.611362>,  <26.702822, 38.756725, 18.725466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528984, 38.415024, 18.611362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744484, -0.162510, -0.647560,
		0.506826, -0.493795, 0.706607,
		-0.434593, -0.854258, -0.285259,
		26.398605, 38.158745, 18.525785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193455, 38.238895, 18.732975>,  <26.702822, 38.756725, 18.725466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193455, 38.238895, 18.732975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.918610, 38.144104, 18.458248>,  <26.753702, 38.087231, 18.293411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.918610, 38.144104, 18.458248>,  <27.193455, 38.238895, 18.732975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918610, 38.144104, 18.458248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707991, -0.006081, -0.706195,
		0.163175, -0.971496, 0.171955,
		-0.687111, -0.236976, -0.686819,
		26.712477, 38.073009, 18.252203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560854, 37.797756, 18.316124>,  <27.193455, 38.238895, 18.732975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560854, 37.797756, 18.316124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.243351, 37.911831, 18.101231>,  <27.052849, 37.980278, 17.972296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.243351, 37.911831, 18.101231>,  <27.560854, 37.797756, 18.316124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243351, 37.911831, 18.101231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575744, 0.067475, -0.814841,
		-0.196136, -0.956093, -0.217755,
		-0.793756, 0.285191, -0.537231,
		27.005224, 37.997387, 17.940062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500162, 37.346954, 17.837105>,  <27.560854, 37.797756, 18.316124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500162, 37.346954, 17.837105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.323423, 37.679821, 17.703079>,  <27.217381, 37.879539, 17.622663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.323423, 37.679821, 17.703079>,  <27.500162, 37.346954, 17.837105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323423, 37.679821, 17.703079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694159, 0.080562, -0.715300,
		-0.568256, -0.548641, -0.613253,
		-0.441847, 0.832168, -0.335064,
		27.190868, 37.929470, 17.602560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.850561, 27.170244, 24.592413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110998, 27.348938, 24.837852>,  <29.267262, 27.456154, 24.985115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110998, 27.348938, 24.837852>,  <28.850561, 27.170244, 24.592413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110998, 27.348938, 24.837852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356297, 0.893720, -0.272613,
		-0.670170, -0.041126, 0.741067,
		0.651095, 0.446737, 0.613597,
		29.306326, 27.482960, 25.021933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454056, 27.645445, 24.936548>,  <28.850561, 27.170244, 24.592413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454056, 27.645445, 24.936548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829384, 27.780159, 24.967861>,  <29.054581, 27.860989, 24.986649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829384, 27.780159, 24.967861>,  <28.454056, 27.645445, 24.936548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829384, 27.780159, 24.967861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302320, 0.908990, -0.286949,
		-0.167799, 0.245583, 0.954742,
		0.938321, 0.336787, 0.078283,
		29.110880, 27.881195, 24.991346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343752, 28.221544, 25.284437>,  <28.454056, 27.645445, 24.936548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343752, 28.221544, 25.284437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699062, 28.258015, 25.104370>,  <28.912249, 28.279898, 24.996330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699062, 28.258015, 25.104370>,  <28.343752, 28.221544, 25.284437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699062, 28.258015, 25.104370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183696, 0.968822, -0.166250,
		0.420972, 0.230370, 0.877332,
		0.888278, 0.091176, -0.450165,
		28.965546, 28.285368, 24.969320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597239, 28.864799, 25.551622>,  <28.343752, 28.221544, 25.284437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597239, 28.864799, 25.551622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831152, 28.816589, 25.230747>,  <28.971500, 28.787664, 25.038223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831152, 28.816589, 25.230747>,  <28.597239, 28.864799, 25.551622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831152, 28.816589, 25.230747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033690, 0.991656, -0.124431,
		0.810491, 0.045739, 0.583963,
		0.584782, -0.120524, -0.802187,
		29.006586, 28.780432, 24.990091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111065, 29.417549, 25.572420>,  <28.597239, 28.864799, 25.551622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111065, 29.417549, 25.572420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083673, 29.290825, 25.194016>,  <29.067238, 29.214790, 24.966972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083673, 29.290825, 25.194016>,  <29.111065, 29.417549, 25.572420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083673, 29.290825, 25.194016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144299, 0.935123, -0.323608,
		0.987162, -0.158670, -0.018321,
		-0.068479, -0.316810, -0.946014,
		29.063129, 29.195782, 24.910212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608692, 29.809170, 25.227654>,  <29.111065, 29.417549, 25.572420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608692, 29.809170, 25.227654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395901, 29.650093, 24.928631>,  <29.268227, 29.554647, 24.749218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395901, 29.650093, 24.928631>,  <29.608692, 29.809170, 25.227654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395901, 29.650093, 24.928631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269580, 0.757365, -0.594747,
		0.802699, -0.517919, -0.295693,
		-0.531979, -0.397690, -0.747557,
		29.236307, 29.530787, 24.704363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084194, 29.721888, 24.594669>,  <29.608692, 29.809170, 25.227654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084194, 29.721888, 24.594669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695498, 29.770996, 24.514030>,  <29.462278, 29.800461, 24.465647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695498, 29.770996, 24.514030>,  <30.084194, 29.721888, 24.594669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695498, 29.770996, 24.514030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229039, 0.696881, -0.679631,
		0.057050, -0.706601, -0.705309,
		-0.971744, 0.122771, -0.201596,
		29.403975, 29.807827, 24.453552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934155, 29.683630, 23.816183>,  <30.084194, 29.721888, 24.594669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934155, 29.683630, 23.816183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618282, 29.897675, 23.936222>,  <29.428759, 30.026102, 24.008245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618282, 29.897675, 23.936222>,  <29.934155, 29.683630, 23.816183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618282, 29.897675, 23.936222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301886, 0.764740, -0.569243,
		-0.534108, -0.358924, -0.765443,
		-0.789680, 0.535114, 0.300099,
		29.381378, 30.058208, 24.026253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822092, 30.088070, 23.280119>,  <29.934155, 29.683630, 23.816183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822092, 30.088070, 23.280119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621508, 30.278885, 23.568832>,  <29.501158, 30.393373, 23.742060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621508, 30.278885, 23.568832>,  <29.822092, 30.088070, 23.280119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621508, 30.278885, 23.568832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079636, 0.856166, -0.510527,
		-0.861507, -0.198530, -0.467323,
		-0.501461, 0.477039, 0.721783,
		29.471069, 30.421997, 23.785368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205051, 30.470694, 22.990999>,  <29.822092, 30.088070, 23.280119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205051, 30.470694, 22.990999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268373, 30.652401, 23.341675>,  <29.306366, 30.761425, 23.552080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268373, 30.652401, 23.341675>,  <29.205051, 30.470694, 22.990999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268373, 30.652401, 23.341675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003781, 0.888155, -0.459528,
		-0.987383, 0.069430, 0.142316,
		0.158304, 0.454269, 0.876687,
		29.315865, 30.788681, 23.604681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706890, 30.967966, 23.027842>,  <29.205051, 30.470694, 22.990999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706890, 30.967966, 23.027842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986202, 31.074223, 23.293724>,  <29.153790, 31.137976, 23.453255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986202, 31.074223, 23.293724>,  <28.706890, 30.967966, 23.027842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986202, 31.074223, 23.293724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189343, 0.826976, -0.529396,
		-0.690327, 0.495525, 0.527165,
		0.698282, 0.265641, 0.664708,
		29.195686, 31.153915, 23.493137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588036, 31.625940, 23.196926>,  <28.706890, 30.967966, 23.027842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588036, 31.625940, 23.196926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976671, 31.564167, 23.268665>,  <29.209852, 31.527103, 23.311708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976671, 31.564167, 23.268665>,  <28.588036, 31.625940, 23.196926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976671, 31.564167, 23.268665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228128, 0.812865, -0.535919,
		-0.063021, 0.561607, 0.825001,
		0.971589, -0.154431, 0.179346,
		29.268148, 31.517838, 23.322470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403641, 32.165443, 23.718851>,  <28.588036, 31.625940, 23.196926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403641, 32.165443, 23.718851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130016, 32.195892, 24.009029>,  <27.965841, 32.214161, 24.183136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130016, 32.195892, 24.009029>,  <28.403641, 32.165443, 23.718851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130016, 32.195892, 24.009029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704194, 0.190403, -0.684001,
		-0.190193, -0.978750, -0.076643,
		-0.684060, 0.076121, 0.725444,
		27.924799, 32.218727, 24.226662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608963, 32.107048, 23.832865>,  <28.403641, 32.165443, 23.718851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608963, 32.107048, 23.832865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925800, 32.159748, 24.071270>,  <28.115902, 32.191368, 24.214314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925800, 32.159748, 24.071270>,  <27.608963, 32.107048, 23.832865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925800, 32.159748, 24.071270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216038, -0.852720, 0.475601,
		0.570893, -0.505481, -0.646970,
		0.792091, 0.131747, 0.596015,
		28.163427, 32.199272, 24.250074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799158, 32.028107, 24.057339>,  <27.608963, 32.107048, 23.832865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799158, 32.028107, 24.057339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470041, 32.155827, 24.245407>,  <26.272572, 32.232460, 24.358248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470041, 32.155827, 24.245407>,  <26.799158, 32.028107, 24.057339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470041, 32.155827, 24.245407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335604, -0.394674, 0.855338,
		0.458676, 0.861555, 0.217574,
		-0.822791, 0.319304, 0.470169,
		26.223204, 32.251617, 24.386457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105637, 32.271057, 24.628866>,  <26.799158, 32.028107, 24.057339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105637, 32.271057, 24.628866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723436, 32.211430, 24.730690>,  <26.494116, 32.175652, 24.791784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723436, 32.211430, 24.730690>,  <27.105637, 32.271057, 24.628866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723436, 32.211430, 24.730690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270107, -0.095176, 0.958115,
		-0.118598, 0.984236, 0.131205,
		-0.955498, -0.149070, 0.254561,
		26.436787, 32.166710, 24.807058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930374, 32.599228, 25.406979>,  <27.105637, 32.271057, 24.628866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930374, 32.599228, 25.406979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644033, 32.333195, 25.321915>,  <26.472229, 32.173576, 25.270876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644033, 32.333195, 25.321915>,  <26.930374, 32.599228, 25.406979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644033, 32.333195, 25.321915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050644, -0.353212, 0.934172,
		-0.696412, 0.657960, 0.286530,
		-0.715853, -0.665080, -0.212659,
		26.429277, 32.133671, 25.258118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523445, 32.664238, 25.988014>,  <26.930374, 32.599228, 25.406979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523445, 32.664238, 25.988014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446733, 32.311172, 25.816372>,  <26.400705, 32.099335, 25.713387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446733, 32.311172, 25.816372>,  <26.523445, 32.664238, 25.988014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446733, 32.311172, 25.816372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152899, -0.458753, 0.875310,
		-0.969454, 0.102259, 0.222938,
		-0.191782, -0.882660, -0.429105,
		26.389198, 32.046375, 25.687641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246546, 32.266441, 26.490841>,  <26.523445, 32.664238, 25.988014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246546, 32.266441, 26.490841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352455, 31.978477, 26.234207>,  <26.416000, 31.805700, 26.080227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352455, 31.978477, 26.234207>,  <26.246546, 32.266441, 26.490841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352455, 31.978477, 26.234207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030964, -0.658638, 0.751822,
		-0.963814, -0.218928, -0.152099,
		0.264773, -0.719907, -0.641583,
		26.431887, 31.762505, 26.041733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919498, 31.650629, 26.722214>,  <26.246546, 32.266441, 26.490841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919498, 31.650629, 26.722214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223019, 31.523621, 26.494740>,  <26.405130, 31.447416, 26.358255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223019, 31.523621, 26.494740>,  <25.919498, 31.650629, 26.722214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223019, 31.523621, 26.494740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111302, -0.797065, 0.593547,
		-0.641741, -0.513681, -0.569474,
		0.758802, -0.317519, -0.568683,
		26.450659, 31.428364, 26.324135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679686, 30.939039, 26.489464>,  <25.919498, 31.650629, 26.722214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679686, 30.939039, 26.489464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075346, 30.957939, 26.433826>,  <26.312742, 30.969278, 26.400444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075346, 30.957939, 26.433826>,  <25.679686, 30.939039, 26.489464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075346, 30.957939, 26.433826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087920, -0.948966, 0.302874,
		-0.117683, -0.311817, -0.942826,
		0.989151, 0.047250, -0.139093,
		26.372091, 30.972115, 26.392099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865778, 30.270977, 26.281452>,  <25.679686, 30.939039, 26.489464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865778, 30.270977, 26.281452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212915, 30.434151, 26.394901>,  <26.421198, 30.532055, 26.462971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212915, 30.434151, 26.394901>,  <25.865778, 30.270977, 26.281452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212915, 30.434151, 26.394901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295145, -0.882495, 0.366187,
		0.399676, -0.234082, -0.886265,
		0.867842, 0.407932, 0.283624,
		26.473269, 30.556530, 26.479988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379498, 29.755350, 26.062695>,  <25.865778, 30.270977, 26.281452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379498, 29.755350, 26.062695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561304, 29.981808, 26.337765>,  <26.670387, 30.117682, 26.502808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561304, 29.981808, 26.337765>,  <26.379498, 29.755350, 26.062695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561304, 29.981808, 26.337765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305265, -0.824278, 0.476843,
		0.836797, -0.006809, -0.547470,
		0.454515, 0.566144, 0.687675,
		26.697659, 30.151651, 26.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014702, 29.410799, 26.265850>,  <26.379498, 29.755350, 26.062695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014702, 29.410799, 26.265850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949156, 29.658379, 26.573109>,  <26.909828, 29.806927, 26.757463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949156, 29.658379, 26.573109>,  <27.014702, 29.410799, 26.265850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949156, 29.658379, 26.573109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220271, -0.736056, 0.640080,
		0.961576, 0.274089, -0.015722,
		-0.163867, 0.618949, 0.768147,
		26.899996, 29.844063, 26.803553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519148, 29.245197, 26.736969>,  <27.014702, 29.410799, 26.265850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519148, 29.245197, 26.736969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254652, 29.446316, 26.959663>,  <27.095955, 29.566988, 27.093279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254652, 29.446316, 26.959663>,  <27.519148, 29.245197, 26.736969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254652, 29.446316, 26.959663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133321, -0.651564, 0.746787,
		0.738231, 0.568031, 0.363808,
		-0.661242, 0.502798, 0.556735,
		27.056280, 29.597155, 27.126684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821865, 29.298380, 27.451330>,  <27.519148, 29.245197, 26.736969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821865, 29.298380, 27.451330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425678, 29.327023, 27.498405>,  <27.187967, 29.344208, 27.526649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425678, 29.327023, 27.498405>,  <27.821865, 29.298380, 27.451330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425678, 29.327023, 27.498405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023534, -0.753784, 0.656700,
		0.135735, 0.653209, 0.744912,
		-0.990466, 0.071606, 0.117687,
		27.128538, 29.348505, 27.533712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742775, 29.218328, 28.236530>,  <27.821865, 29.298380, 27.451330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742775, 29.218328, 28.236530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385847, 29.150936, 28.069016>,  <27.171690, 29.110500, 27.968506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385847, 29.150936, 28.069016>,  <27.742775, 29.218328, 28.236530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385847, 29.150936, 28.069016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178384, -0.720614, 0.669996,
		-0.414666, 0.672555, 0.612962,
		-0.892318, -0.168482, -0.418787,
		27.118153, 29.100391, 27.943380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262300, 29.192444, 28.778215>,  <27.742775, 29.218328, 28.236530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262300, 29.192444, 28.778215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055695, 28.990372, 28.501663>,  <26.931730, 28.869127, 28.335732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055695, 28.990372, 28.501663>,  <27.262300, 29.192444, 28.778215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055695, 28.990372, 28.501663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148185, -0.742504, 0.653244,
		-0.843359, 0.439862, 0.308654,
		-0.516514, -0.505181, -0.691379,
		26.900740, 28.838818, 28.294250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986706, 29.821215, 29.134235>,  <27.262300, 29.192444, 28.778215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986706, 29.821215, 29.134235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200863, 29.891560, 29.464672>,  <27.329357, 29.933765, 29.662933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200863, 29.891560, 29.464672>,  <26.986706, 29.821215, 29.134235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200863, 29.891560, 29.464672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453763, 0.765045, -0.456953,
		-0.712356, 0.619499, 0.329802,
		0.535395, 0.175861, 0.826090,
		27.361481, 29.944319, 29.712500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948814, 30.480494, 29.238647>,  <26.986706, 29.821215, 29.134235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948814, 30.480494, 29.238647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282488, 30.352627, 29.418404>,  <27.482691, 30.275906, 29.526257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282488, 30.352627, 29.418404>,  <26.948814, 30.480494, 29.238647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282488, 30.352627, 29.418404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510569, 0.755682, -0.410200,
		-0.208467, 0.571626, 0.793590,
		0.834183, -0.319669, 0.449390,
		27.532743, 30.256725, 29.553221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292034, 31.007328, 29.282404>,  <26.948814, 30.480494, 29.238647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292034, 31.007328, 29.282404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575909, 30.727371, 29.314632>,  <27.746233, 30.559397, 29.333969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575909, 30.727371, 29.314632>,  <27.292034, 31.007328, 29.282404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575909, 30.727371, 29.314632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667575, 0.631516, -0.394374,
		0.225136, 0.333671, 0.915411,
		0.709688, -0.699893, 0.080573,
		27.788815, 30.517403, 29.338804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978212, 31.446218, 29.384611>,  <27.292034, 31.007328, 29.282404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978212, 31.446218, 29.384611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096251, 31.075893, 29.290131>,  <28.167074, 30.853699, 29.233442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096251, 31.075893, 29.290131>,  <27.978212, 31.446218, 29.384611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096251, 31.075893, 29.290131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791727, 0.375323, -0.481977,
		0.534871, -0.044777, 0.843747,
		0.295096, -0.925812, -0.236200,
		28.184780, 30.798149, 29.219271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664661, 31.550245, 29.370844>,  <27.978212, 31.446218, 29.384611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664661, 31.550245, 29.370844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567829, 31.223751, 29.161022>,  <28.509729, 31.027855, 29.035130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567829, 31.223751, 29.161022>,  <28.664661, 31.550245, 29.370844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567829, 31.223751, 29.161022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752870, 0.183007, -0.632214,
		0.612032, -0.547970, 0.570215,
		-0.242081, -0.816233, -0.524557,
		28.495205, 30.978882, 29.003654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217638, 31.332119, 29.413845>,  <28.664661, 31.550245, 29.370844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217638, 31.332119, 29.413845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033344, 31.148270, 29.110142>,  <28.922768, 31.037960, 28.927921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033344, 31.148270, 29.110142>,  <29.217638, 31.332119, 29.413845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033344, 31.148270, 29.110142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740278, 0.272900, -0.614421,
		0.489604, -0.845145, 0.214516,
		-0.460734, -0.459624, -0.759256,
		28.895124, 31.010382, 28.882364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692427, 31.109236, 28.979137>,  <29.217638, 31.332119, 29.413845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692427, 31.109236, 28.979137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380951, 31.098427, 28.728405>,  <29.194065, 31.091942, 28.577967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380951, 31.098427, 28.728405>,  <29.692427, 31.109236, 28.979137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380951, 31.098427, 28.728405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592466, 0.297102, -0.748809,
		0.206468, -0.954463, -0.215339,
		-0.778688, -0.027024, -0.626829,
		29.147345, 31.090321, 28.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872013, 30.690105, 28.330978>,  <29.692427, 31.109236, 28.979137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872013, 30.690105, 28.330978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572340, 30.932579, 28.224197>,  <29.392536, 31.078064, 28.160128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572340, 30.932579, 28.224197>,  <29.872013, 30.690105, 28.330978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572340, 30.932579, 28.224197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551816, 0.348282, -0.757759,
		-0.366367, -0.715009, -0.595430,
		-0.749182, 0.606186, -0.266955,
		29.347586, 31.114435, 28.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756287, 30.678879, 27.545675>,  <29.872013, 30.690105, 28.330978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756287, 30.678879, 27.545675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593109, 31.011219, 27.697079>,  <29.495203, 31.210623, 27.787920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593109, 31.011219, 27.697079>,  <29.756287, 30.678879, 27.545675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593109, 31.011219, 27.697079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341706, 0.523381, -0.780583,
		-0.846653, -0.189094, -0.497416,
		-0.407941, 0.830853, 0.378507,
		29.470726, 31.260475, 27.810631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503416, 31.002581, 26.971472>,  <29.756287, 30.678879, 27.545675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503416, 31.002581, 26.971472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546139, 31.285858, 27.250629>,  <29.571772, 31.455824, 27.418123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546139, 31.285858, 27.250629>,  <29.503416, 31.002581, 26.971472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546139, 31.285858, 27.250629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280288, 0.651996, -0.704514,
		-0.953955, 0.270858, -0.128861,
		0.106807, 0.708193, 0.697893,
		29.578180, 31.498316, 27.459997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422569, 31.641315, 26.532494>,  <29.503416, 31.002581, 26.971472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422569, 31.641315, 26.532494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548752, 31.769257, 26.889858>,  <29.624462, 31.846022, 27.104277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548752, 31.769257, 26.889858>,  <29.422569, 31.641315, 26.532494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548752, 31.769257, 26.889858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288270, 0.864688, -0.411357,
		-0.904095, 0.387308, 0.180566,
		0.315456, 0.319854, 0.893410,
		29.643389, 31.865213, 27.157881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157104, 32.316784, 26.749166>,  <29.422569, 31.641315, 26.532494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157104, 32.316784, 26.749166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515356, 32.251595, 26.914715>,  <29.730307, 32.212479, 27.014044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515356, 32.251595, 26.914715>,  <29.157104, 32.316784, 26.749166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515356, 32.251595, 26.914715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405991, 0.679648, -0.610942,
		-0.181716, 0.715204, 0.674879,
		0.895629, -0.162976, 0.413869,
		29.784044, 32.202702, 27.038876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.267996, 26.835276, 31.834518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.662439, 26.900578, 31.846752>,  <26.899105, 26.939758, 31.854092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.662439, 26.900578, 31.846752>,  <26.267996, 26.835276, 31.834518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662439, 26.900578, 31.846752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160329, 0.983693, -0.081507,
		-0.043390, 0.075471, 0.996204,
		0.986110, 0.163257, 0.030582,
		26.958273, 26.949554, 31.855927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400152, 27.399708, 32.298065>,  <26.267996, 26.835276, 31.834518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400152, 27.399708, 32.298065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.716558, 27.397110, 32.053360>,  <26.906403, 27.395552, 31.906536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.716558, 27.397110, 32.053360>,  <26.400152, 27.399708, 32.298065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716558, 27.397110, 32.053360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154970, 0.965205, -0.210627,
		0.591845, 0.261414, 0.762484,
		0.791014, -0.006496, -0.611763,
		26.953863, 27.395161, 31.869831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710918, 28.070133, 32.490776>,  <26.400152, 27.399708, 32.298065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710918, 28.070133, 32.490776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.862251, 27.936516, 32.145458>,  <26.953051, 27.856344, 31.938267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.862251, 27.936516, 32.145458>,  <26.710918, 28.070133, 32.490776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862251, 27.936516, 32.145458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051544, 0.938772, -0.340661,
		0.924234, 0.084385, 0.372384,
		0.378331, -0.334044, -0.863296,
		26.975750, 27.836302, 31.886469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278736, 28.507389, 32.369026>,  <26.710918, 28.070133, 32.490776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278736, 28.507389, 32.369026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.143480, 28.380409, 32.014652>,  <27.062326, 28.304222, 31.802027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.143480, 28.380409, 32.014652>,  <27.278736, 28.507389, 32.369026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143480, 28.380409, 32.014652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211663, 0.891617, -0.400272,
		0.916984, -0.322869, -0.234299,
		-0.338140, -0.317450, -0.885938,
		27.042038, 28.285173, 31.748871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806522, 28.699579, 31.969110>,  <27.278736, 28.507389, 32.369026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806522, 28.699579, 31.969110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.520580, 28.606236, 31.705437>,  <27.349014, 28.550228, 31.547234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.520580, 28.606236, 31.705437>,  <27.806522, 28.699579, 31.969110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520580, 28.606236, 31.705437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234603, 0.807999, -0.540461,
		0.658741, -0.540999, -0.522858,
		-0.714858, -0.233360, -0.659182,
		27.306124, 28.536228, 31.507683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065044, 28.627140, 31.269066>,  <27.806522, 28.699579, 31.969110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065044, 28.627140, 31.269066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.678095, 28.706467, 31.206001>,  <27.445925, 28.754063, 31.168163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.678095, 28.706467, 31.206001>,  <28.065044, 28.627140, 31.269066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678095, 28.706467, 31.206001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252295, 0.697307, -0.670902,
		-0.023114, -0.688791, -0.724592,
		-0.967375, 0.198318, -0.157660,
		27.387882, 28.765963, 31.158703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013697, 28.420500, 30.575991>,  <28.065044, 28.627140, 31.269066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013697, 28.420500, 30.575991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.708876, 28.672989, 30.633728>,  <27.525982, 28.824482, 30.668371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.708876, 28.672989, 30.633728>,  <28.013697, 28.420500, 30.575991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708876, 28.672989, 30.633728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392701, 0.627781, -0.672070,
		-0.514841, -0.455469, -0.726283,
		-0.762053, 0.631221, 0.144344,
		27.480259, 28.862354, 30.677031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776199, 28.571308, 29.909998>,  <28.013697, 28.420500, 30.575991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776199, 28.571308, 29.909998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.603996, 28.864338, 30.120899>,  <27.500675, 29.040155, 30.247440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.603996, 28.864338, 30.120899>,  <27.776199, 28.571308, 29.909998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603996, 28.864338, 30.120899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365561, 0.675622, -0.640234,
		-0.825245, -0.082881, -0.558661,
		-0.430507, 0.732575, 0.527255,
		27.474844, 29.084110, 30.279076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421227, 28.913416, 29.444069>,  <27.776199, 28.571308, 29.909998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421227, 28.913416, 29.444069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.470257, 29.192215, 29.726677>,  <27.499676, 29.359493, 29.896242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.470257, 29.192215, 29.726677>,  <27.421227, 28.913416, 29.444069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470257, 29.192215, 29.726677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423602, 0.607043, -0.672354,
		-0.897517, 0.381699, -0.220840,
		0.122577, 0.696997, 0.706520,
		27.507030, 29.401314, 29.938633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737530, 28.846851, 29.146566>,  <27.421227, 28.913416, 29.444069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737530, 28.846851, 29.146566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.719379, 28.654999, 28.796047>,  <26.708490, 28.539886, 28.585735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.719379, 28.654999, 28.796047>,  <26.737530, 28.846851, 29.146566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719379, 28.654999, 28.796047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462843, -0.767273, 0.443925,
		-0.885278, 0.425730, -0.187179,
		-0.045375, -0.479632, -0.876296,
		26.705767, 28.511108, 28.533159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013445, 28.474470, 29.098412>,  <26.737530, 28.846851, 29.146566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013445, 28.474470, 29.098412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.274002, 28.292751, 28.855331>,  <26.430336, 28.183720, 28.709484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.274002, 28.292751, 28.855331>,  <26.013445, 28.474470, 29.098412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274002, 28.292751, 28.855331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252796, -0.885119, 0.390716,
		-0.715387, -0.100886, -0.691406,
		0.651395, -0.454298, -0.607699,
		26.469421, 28.156462, 28.673021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757158, 27.808420, 29.047915>,  <26.013445, 28.474470, 29.098412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757158, 27.808420, 29.047915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.124268, 27.748268, 28.900902>,  <26.344534, 27.712177, 28.812695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.124268, 27.748268, 28.900902>,  <25.757158, 27.808420, 29.047915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124268, 27.748268, 28.900902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096228, -0.982159, 0.161568,
		-0.385269, -0.112916, -0.915870,
		0.917773, -0.150379, -0.367529,
		26.399599, 27.703154, 28.790644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705704, 27.231087, 28.580599>,  <25.757158, 27.808420, 29.047915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705704, 27.231087, 28.580599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.081448, 27.259792, 28.714733>,  <26.306894, 27.277016, 28.795214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.081448, 27.259792, 28.714733>,  <25.705704, 27.231087, 28.580599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081448, 27.259792, 28.714733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009521, -0.972025, 0.234687,
		0.342798, -0.223648, -0.912399,
		0.939361, 0.071764, 0.335337,
		26.363256, 27.281321, 28.815334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043245, 26.653305, 28.260857>,  <25.705704, 27.231087, 28.580599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043245, 26.653305, 28.260857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.234201, 26.770981, 28.592049>,  <26.348774, 26.841585, 28.790764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.234201, 26.770981, 28.592049>,  <26.043245, 26.653305, 28.260857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234201, 26.770981, 28.592049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162093, -0.955601, 0.246074,
		0.863612, 0.016737, -0.503879,
		0.477388, 0.294188, 0.827982,
		26.377419, 26.859238, 28.840443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628155, 26.220985, 28.310812>,  <26.043245, 26.653305, 28.260857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628155, 26.220985, 28.310812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.575769, 26.325844, 28.693253>,  <26.544338, 26.388758, 28.922716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.575769, 26.325844, 28.693253>,  <26.628155, 26.220985, 28.310812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575769, 26.325844, 28.693253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023149, -0.964953, 0.261401,
		0.991117, 0.012101, 0.132442,
		-0.130964, 0.262145, 0.956101,
		26.536480, 26.404488, 28.980083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997192, 25.684837, 28.642197>,  <26.628155, 26.220985, 28.310812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997192, 25.684837, 28.642197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.800329, 25.883396, 28.928238>,  <26.682211, 26.002531, 29.099863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.800329, 25.883396, 28.928238>,  <26.997192, 25.684837, 28.642197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800329, 25.883396, 28.928238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307530, -0.867655, 0.390642,
		0.814374, -0.027657, 0.579681,
		-0.492159, 0.496397, 0.715101,
		26.652681, 26.032316, 29.142769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153414, 25.307062, 29.315168>,  <26.997192, 25.684837, 28.642197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153414, 25.307062, 29.315168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.813332, 25.512074, 29.363274>,  <26.609282, 25.635080, 29.392138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.813332, 25.512074, 29.363274>,  <27.153414, 25.307062, 29.315168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813332, 25.512074, 29.363274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426864, -0.804848, 0.412319,
		0.308119, 0.299220, 0.903067,
		-0.850206, 0.512530, 0.120263,
		26.558270, 25.665833, 29.399353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103239, 25.331629, 30.081934>,  <27.153414, 25.307062, 29.315168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103239, 25.331629, 30.081934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.757563, 25.369938, 29.884346>,  <26.550158, 25.392923, 29.765793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.757563, 25.369938, 29.884346>,  <27.103239, 25.331629, 30.081934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757563, 25.369938, 29.884346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250975, -0.932924, 0.258195,
		-0.436107, 0.347103, 0.830259,
		-0.864189, 0.095774, -0.493968,
		26.498306, 25.398670, 29.736155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733746, 25.285187, 30.571842>,  <27.103239, 25.331629, 30.081934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733746, 25.285187, 30.571842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.520901, 25.203251, 30.243233>,  <26.393194, 25.154089, 30.046068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.520901, 25.203251, 30.243233>,  <26.733746, 25.285187, 30.571842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520901, 25.203251, 30.243233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208831, -0.908562, 0.361806,
		-0.820517, 0.364080, 0.440678,
		-0.532110, -0.204841, -0.821523,
		26.361267, 25.141798, 29.996777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292509, 24.728731, 30.701611>,  <26.733746, 25.285187, 30.571842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292509, 24.728731, 30.701611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.232315, 24.716282, 30.306362>,  <26.196199, 24.708813, 30.069212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.232315, 24.716282, 30.306362>,  <26.292509, 24.728731, 30.701611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232315, 24.716282, 30.306362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256695, -0.963994, 0.069455,
		-0.954705, 0.264098, 0.137078,
		-0.150485, -0.031122, -0.988122,
		26.187170, 24.706945, 30.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636923, 24.396471, 30.727470>,  <26.292509, 24.728731, 30.701611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636923, 24.396471, 30.727470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.798265, 24.355087, 30.363800>,  <25.895071, 24.330257, 30.145597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.798265, 24.355087, 30.363800>,  <25.636923, 24.396471, 30.727470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798265, 24.355087, 30.363800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286627, -0.957870, -0.018159,
		-0.868993, 0.267918, -0.416017,
		0.403356, -0.103462, -0.909175,
		25.919271, 24.324049, 30.091047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178038, 23.912878, 30.459396>,  <25.636923, 24.396471, 30.727470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178038, 23.912878, 30.459396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.503965, 23.942749, 30.229443>,  <25.699522, 23.960672, 30.091471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.503965, 23.942749, 30.229443>,  <25.178038, 23.912878, 30.459396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503965, 23.942749, 30.229443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051804, -0.997081, -0.056096,
		-0.577396, 0.015926, -0.816309,
		0.814819, 0.074678, -0.574885,
		25.748411, 23.965153, 30.056976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027723, 23.613762, 29.942657>,  <25.178038, 23.912878, 30.459396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027723, 23.613762, 29.942657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.427313, 23.595665, 29.941551>,  <25.667067, 23.584806, 29.940887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.427313, 23.595665, 29.941551>,  <25.027723, 23.613762, 29.942657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427313, 23.595665, 29.941551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045231, -0.998970, 0.003570,
		-0.002924, -0.003442, -0.999990,
		0.998972, -0.045241, -0.002765,
		25.727005, 23.582092, 29.940722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.657917, 24.922033, 31.746382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268311, 24.831478, 31.743835>,  <33.034546, 24.777145, 31.742308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268311, 24.831478, 31.743835>,  <33.657917, 24.922033, 31.746382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268311, 24.831478, 31.743835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140655, 0.626700, -0.766461,
		0.177507, -0.745651, -0.642259,
		-0.974016, -0.226389, -0.006364,
		32.976105, 24.763561, 31.741926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545933, 24.696585, 31.088747>,  <33.657917, 24.922033, 31.746382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545933, 24.696585, 31.088747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194263, 24.822094, 31.232189>,  <32.983261, 24.897400, 31.318254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194263, 24.822094, 31.232189>,  <33.545933, 24.696585, 31.088747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194263, 24.822094, 31.232189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165664, 0.504355, -0.847456,
		-0.446773, -0.804470, -0.391435,
		-0.879175, 0.313774, 0.358604,
		32.930511, 24.916225, 31.339771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013641, 24.680353, 30.554182>,  <33.545933, 24.696585, 31.088747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013641, 24.680353, 30.554182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856285, 24.917149, 30.835548>,  <32.761871, 25.059225, 31.004368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856285, 24.917149, 30.835548>,  <33.013641, 24.680353, 30.554182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856285, 24.917149, 30.835548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297280, 0.642098, -0.706636,
		-0.869982, -0.487096, -0.076609,
		-0.393391, 0.591986, 0.703417,
		32.738266, 25.094744, 31.046574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299412, 24.741486, 30.407387>,  <33.013641, 24.680353, 30.554182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299412, 24.741486, 30.407387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438416, 25.064251, 30.598438>,  <32.521820, 25.257910, 30.713070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438416, 25.064251, 30.598438>,  <32.299412, 24.741486, 30.407387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438416, 25.064251, 30.598438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344340, 0.583604, -0.735416,
		-0.872162, 0.091099, 0.480661,
		0.347511, 0.806912, 0.477628,
		32.542667, 25.306324, 30.741726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935778, 25.185972, 30.032389>,  <32.299412, 24.741486, 30.407387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935778, 25.185972, 30.032389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195004, 25.419609, 30.227879>,  <32.350540, 25.559792, 30.345173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195004, 25.419609, 30.227879>,  <31.935778, 25.185972, 30.032389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195004, 25.419609, 30.227879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186658, 0.743963, -0.641622,
		-0.738357, 0.324589, 0.591161,
		0.648065, 0.584091, 0.488723,
		32.389423, 25.594837, 30.374495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702543, 25.773100, 29.699121>,  <31.935778, 25.185972, 30.032389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702543, 25.773100, 29.699121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028084, 25.906586, 29.889397>,  <32.223408, 25.986677, 30.003563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028084, 25.906586, 29.889397>,  <31.702543, 25.773100, 29.699121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028084, 25.906586, 29.889397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019526, 0.802469, -0.596374,
		-0.580746, 0.494647, 0.646574,
		0.813850, 0.333716, 0.475690,
		32.272240, 26.006701, 30.032104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623623, 26.435976, 29.867168>,  <31.702543, 25.773100, 29.699121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623623, 26.435976, 29.867168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018265, 26.389408, 29.821465>,  <32.255051, 26.361467, 29.794043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018265, 26.389408, 29.821465>,  <31.623623, 26.435976, 29.867168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018265, 26.389408, 29.821465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002400, 0.690015, -0.723791,
		0.163107, 0.714370, 0.680494,
		0.986605, -0.116422, -0.114261,
		32.314247, 26.354481, 29.787186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819029, 27.132254, 29.848734>,  <31.623623, 26.435976, 29.867168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819029, 27.132254, 29.848734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139366, 26.940090, 29.705704>,  <32.331570, 26.824793, 29.619886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139366, 26.940090, 29.705704>,  <31.819029, 27.132254, 29.848734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139366, 26.940090, 29.705704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272022, 0.823732, -0.497463,
		0.533530, 0.301122, 0.790362,
		0.800844, -0.480407, -0.357574,
		32.379620, 26.795969, 29.598431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481747, 27.554968, 29.972027>,  <31.819029, 27.132254, 29.848734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481747, 27.554968, 29.972027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554588, 27.318897, 29.657440>,  <32.598293, 27.177256, 29.468689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554588, 27.318897, 29.657440>,  <32.481747, 27.554968, 29.972027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554588, 27.318897, 29.657440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333627, 0.789479, -0.515185,
		0.924948, -0.168567, 0.340670,
		0.182108, -0.590176, -0.786466,
		32.609222, 27.141844, 29.421501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069298, 27.727032, 29.737839>,  <32.481747, 27.554968, 29.972027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069298, 27.727032, 29.737839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924412, 27.554298, 29.407429>,  <32.837479, 27.450659, 29.209183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924412, 27.554298, 29.407429>,  <33.069298, 27.727032, 29.737839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924412, 27.554298, 29.407429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329080, 0.769888, -0.546789,
		0.872069, -0.469885, -0.136759,
		-0.362217, -0.431833, -0.826026,
		32.815746, 27.424749, 29.159620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573215, 27.728554, 29.233667>,  <33.069298, 27.727032, 29.737839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573215, 27.728554, 29.233667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227299, 27.707096, 29.033962>,  <33.019749, 27.694221, 28.914139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227299, 27.707096, 29.033962>,  <33.573215, 27.728554, 29.233667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227299, 27.707096, 29.033962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320635, 0.706188, -0.631262,
		0.386435, -0.705989, -0.593504,
		-0.864789, -0.053643, -0.499261,
		32.967861, 27.691004, 28.884184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818031, 27.714556, 28.495800>,  <33.573215, 27.728554, 29.233667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818031, 27.714556, 28.495800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432602, 27.819157, 28.518215>,  <33.201344, 27.881918, 28.531664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432602, 27.819157, 28.518215>,  <33.818031, 27.714556, 28.495800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432602, 27.819157, 28.518215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141135, 0.675196, -0.724010,
		-0.227165, -0.689729, -0.687510,
		-0.963575, 0.261502, 0.056036,
		33.143528, 27.897608, 28.535027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591442, 27.605209, 27.828295>,  <33.818031, 27.714556, 28.495800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591442, 27.605209, 27.828295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332085, 27.862579, 27.991066>,  <33.176472, 28.017002, 28.088728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332085, 27.862579, 27.991066>,  <33.591442, 27.605209, 27.828295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332085, 27.862579, 27.991066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172362, 0.644702, -0.744749,
		-0.741537, -0.412752, -0.528923,
		-0.648394, 0.643425, 0.406927,
		33.137566, 28.055607, 28.113144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214672, 27.958035, 27.236988>,  <33.591442, 27.605209, 27.828295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214672, 27.958035, 27.236988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124588, 28.207352, 27.536530>,  <33.070538, 28.356941, 27.716255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124588, 28.207352, 27.536530>,  <33.214672, 27.958035, 27.236988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124588, 28.207352, 27.536530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088650, 0.778522, -0.621325,
		-0.970268, -0.073543, -0.230587,
		-0.225211, 0.623294, 0.748856,
		33.057026, 28.394341, 27.761187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665646, 27.619814, 26.981472>,  <33.214672, 27.958035, 27.236988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665646, 27.619814, 26.981472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463428, 27.487808, 26.662594>,  <32.342098, 27.408606, 26.471268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463428, 27.487808, 26.662594>,  <32.665646, 27.619814, 26.981472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463428, 27.487808, 26.662594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174494, -0.943973, 0.280119,
		-0.844974, 0.002506, 0.534802,
		-0.505541, -0.330012, -0.797195,
		32.311768, 27.388805, 26.423435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113647, 27.193214, 27.273445>,  <32.665646, 27.619814, 26.981472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113647, 27.193214, 27.273445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.206749, 27.099232, 26.895954>,  <32.262611, 27.042843, 26.669460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.206749, 27.099232, 26.895954>,  <32.113647, 27.193214, 27.273445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206749, 27.099232, 26.895954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064804, -0.964474, 0.256106,
		-0.970372, -0.120769, -0.209268,
		0.232763, -0.234956, -0.943725,
		32.276577, 27.028744, 26.612837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773722, 26.528772, 27.204725>,  <32.113647, 27.193214, 27.273445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773722, 26.528772, 27.204725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068439, 26.551113, 26.935204>,  <32.245270, 26.564518, 26.773491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068439, 26.551113, 26.935204>,  <31.773722, 26.528772, 27.204725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068439, 26.551113, 26.935204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307072, -0.915512, 0.259894,
		-0.602361, -0.398395, -0.691695,
		0.736796, 0.055850, -0.673805,
		32.289478, 26.567867, 26.733063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578976, 25.947989, 26.715233>,  <31.773722, 26.528772, 27.204725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578976, 25.947989, 26.715233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966406, 26.013920, 26.640728>,  <32.198864, 26.053478, 26.596025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966406, 26.013920, 26.640728>,  <31.578976, 25.947989, 26.715233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966406, 26.013920, 26.640728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215442, -0.930216, 0.297124,
		-0.124291, -0.327916, -0.936495,
		0.968574, 0.164831, -0.186264,
		32.256977, 26.063370, 26.584848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732199, 25.376869, 26.257349>,  <31.578976, 25.947989, 26.715233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732199, 25.376869, 26.257349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089687, 25.486847, 26.399151>,  <32.304180, 25.552834, 26.484232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089687, 25.486847, 26.399151>,  <31.732199, 25.376869, 26.257349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089687, 25.486847, 26.399151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108640, -0.899313, 0.423596,
		0.435273, -0.340063, -0.833603,
		0.893719, 0.274943, 0.354502,
		32.357803, 25.569330, 26.505501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234760, 24.758940, 26.249428>,  <31.732199, 25.376869, 26.257349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234760, 24.758940, 26.249428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356983, 25.007767, 26.537781>,  <32.430317, 25.157063, 26.710793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356983, 25.007767, 26.537781>,  <32.234760, 24.758940, 26.249428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356983, 25.007767, 26.537781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000482, -0.756989, 0.653428,
		0.952175, -0.200004, -0.231000,
		0.305553, 0.622066, 0.720882,
		32.448650, 25.194387, 26.754045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883522, 24.404976, 26.415720>,  <32.234760, 24.758940, 26.249428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883522, 24.404976, 26.415720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735550, 24.643517, 26.700680>,  <32.646767, 24.786642, 26.871656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735550, 24.643517, 26.700680>,  <32.883522, 24.404976, 26.415720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735550, 24.643517, 26.700680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059315, -0.750072, 0.658690,
		0.927163, 0.285927, 0.242104,
		-0.369933, 0.596353, 0.712399,
		32.624569, 24.822422, 26.914400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248825, 24.082447, 27.066830>,  <32.883522, 24.404976, 26.415720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248825, 24.082447, 27.066830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954079, 24.327477, 27.181221>,  <32.777229, 24.474495, 27.249855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954079, 24.327477, 27.181221>,  <33.248825, 24.082447, 27.066830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954079, 24.327477, 27.181221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178645, -0.584418, 0.791544,
		0.652010, 0.532172, 0.540070,
		-0.736865, 0.612575, 0.285977,
		32.733021, 24.511250, 27.267014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294968, 24.143190, 27.689943>,  <33.248825, 24.082447, 27.066830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294968, 24.143190, 27.689943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908150, 24.223877, 27.627811>,  <32.676060, 24.272289, 27.590532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908150, 24.223877, 27.627811>,  <33.294968, 24.143190, 27.689943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908150, 24.223877, 27.627811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240385, -0.522492, 0.818056,
		0.083855, 0.828440, 0.553765,
		-0.967049, 0.201715, -0.155331,
		32.618034, 24.284391, 27.581213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029449, 24.523670, 28.300671>,  <33.294968, 24.143190, 27.689943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029449, 24.523670, 28.300671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730412, 24.350513, 28.099194>,  <32.550987, 24.246618, 27.978308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730412, 24.350513, 28.099194>,  <33.029449, 24.523670, 28.300671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730412, 24.350513, 28.099194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254749, -0.513481, 0.819415,
		-0.613355, 0.740905, 0.273596,
		-0.747595, -0.432893, -0.503691,
		32.506134, 24.220646, 27.948086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620216, 24.437939, 28.742027>,  <33.029449, 24.523670, 28.300671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620216, 24.437939, 28.742027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468292, 24.191025, 28.466431>,  <32.377140, 24.042877, 28.301073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468292, 24.191025, 28.466431>,  <32.620216, 24.437939, 28.742027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468292, 24.191025, 28.466431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404193, -0.559208, 0.723820,
		-0.832090, 0.553398, -0.037109,
		-0.379808, -0.617283, -0.688991,
		32.354351, 24.005840, 28.259733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921284, 24.399918, 28.965710>,  <32.620216, 24.437939, 28.742027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921284, 24.399918, 28.965710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974897, 24.091152, 28.717136>,  <32.007065, 23.905893, 28.567991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974897, 24.091152, 28.717136>,  <31.921284, 24.399918, 28.965710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974897, 24.091152, 28.717136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406394, -0.614753, 0.675961,
		-0.903813, 0.161945, -0.396100,
		0.134035, -0.771915, -0.621435,
		32.015106, 23.859577, 28.530706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319025, 24.044992, 29.084150>,  <31.921284, 24.399918, 28.965710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319025, 24.044992, 29.084150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584105, 23.787762, 28.930641>,  <31.743153, 23.633423, 28.838535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584105, 23.787762, 28.930641>,  <31.319025, 24.044992, 29.084150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584105, 23.787762, 28.930641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227208, -0.660957, 0.715201,
		-0.713590, -0.386764, -0.584126,
		0.662696, -0.643079, -0.383776,
		31.782913, 23.594839, 28.815508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945965, 23.456396, 28.990124>,  <31.319025, 24.044992, 29.084150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945965, 23.456396, 28.990124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328192, 23.340572, 28.968040>,  <31.557528, 23.271078, 28.954790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328192, 23.340572, 28.968040>,  <30.945965, 23.456396, 28.990124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328192, 23.340572, 28.968040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188895, -0.745277, 0.639438,
		-0.226301, -0.600596, -0.766858,
		0.955566, -0.289562, -0.055207,
		31.614862, 23.253704, 28.951479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724012, 23.233414, 28.314400>,  <30.945965, 23.456396, 28.990124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724012, 23.233414, 28.314400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398493, 23.145527, 28.099194>,  <30.203182, 23.092794, 27.970070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398493, 23.145527, 28.099194>,  <30.724012, 23.233414, 28.314400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398493, 23.145527, 28.099194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111270, 0.849739, -0.515329,
		0.570397, -0.479238, -0.667067,
		-0.813798, -0.219717, -0.538013,
		30.154354, 23.079611, 27.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916149, 23.227009, 27.478224>,  <30.724012, 23.233414, 28.314400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916149, 23.227009, 27.478224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.525049, 23.275753, 27.546524>,  <30.290390, 23.305000, 27.587505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.525049, 23.275753, 27.546524>,  <30.916149, 23.227009, 27.478224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525049, 23.275753, 27.546524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003503, 0.804371, -0.594117,
		-0.209747, -0.581495, -0.786047,
		-0.977749, 0.121861, 0.170752,
		30.231724, 23.312311, 27.597750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598307, 23.476784, 26.754971>,  <30.916149, 23.227009, 27.478224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598307, 23.476784, 26.754971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302414, 23.545746, 27.015148>,  <30.124878, 23.587124, 27.171255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302414, 23.545746, 27.015148>,  <30.598307, 23.476784, 26.754971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302414, 23.545746, 27.015148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213419, 0.856604, -0.469768,
		-0.638163, -0.486318, -0.596861,
		-0.739730, 0.172408, 0.650443,
		30.080496, 23.597467, 27.210281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948492, 23.605356, 26.421217>,  <30.598307, 23.476784, 26.754971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948492, 23.605356, 26.421217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.890030, 23.775787, 26.778339>,  <29.854954, 23.878046, 26.992613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.890030, 23.775787, 26.778339>,  <29.948492, 23.605356, 26.421217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890030, 23.775787, 26.778339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319546, 0.833782, -0.450219,
		-0.936231, -0.351093, 0.014290,
		-0.146154, 0.426076, 0.892804,
		29.846184, 23.903610, 27.046181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339237, 23.916288, 26.430569>,  <29.948492, 23.605356, 26.421217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339237, 23.916288, 26.430569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.547771, 24.098755, 26.719048>,  <29.672892, 24.208235, 26.892134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.547771, 24.098755, 26.719048>,  <29.339237, 23.916288, 26.430569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547771, 24.098755, 26.719048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137868, 0.879054, -0.456351,
		-0.842141, 0.138482, 0.521173,
		0.521336, 0.456165, 0.721195,
		29.704172, 24.235605, 26.935406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034994, 24.451231, 26.389894>,  <29.339237, 23.916288, 26.430569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034994, 24.451231, 26.389894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364178, 24.551540, 26.593796>,  <29.561687, 24.611727, 26.716137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364178, 24.551540, 26.593796>,  <29.034994, 24.451231, 26.389894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364178, 24.551540, 26.593796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142431, 0.959717, -0.242191,
		-0.549954, 0.126709, 0.825527,
		0.822960, 0.250775, 0.509753,
		29.611065, 24.626772, 26.746721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970037, 25.119432, 26.827253>,  <29.034994, 24.451231, 26.389894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970037, 25.119432, 26.827253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.359947, 25.068855, 26.753685>,  <29.593893, 25.038509, 26.709545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.359947, 25.068855, 26.753685>,  <28.970037, 25.119432, 26.827253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359947, 25.068855, 26.753685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065341, 0.949613, -0.306538,
		0.213412, 0.286788, 0.933921,
		0.974775, -0.126442, -0.183920,
		29.652380, 25.030922, 26.698509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302759, 25.691135, 27.141651>,  <28.970037, 25.119432, 26.827253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302759, 25.691135, 27.141651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.561304, 25.547897, 26.872139>,  <29.716431, 25.461954, 26.710432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.561304, 25.547897, 26.872139>,  <29.302759, 25.691135, 27.141651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561304, 25.547897, 26.872139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190801, 0.930835, -0.311676,
		0.738789, 0.072898, 0.669983,
		0.646364, -0.358096, -0.673781,
		29.755213, 25.440468, 26.670004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869247, 26.117212, 27.126926>,  <29.302759, 25.691135, 27.141651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869247, 26.117212, 27.126926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.890999, 25.920216, 26.779480>,  <29.904049, 25.802017, 26.571012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.890999, 25.920216, 26.779480>,  <29.869247, 26.117212, 27.126926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890999, 25.920216, 26.779480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044543, 0.870235, -0.490618,
		0.997526, -0.012012, 0.069258,
		0.054378, -0.492490, -0.868618,
		29.907312, 25.772469, 26.518894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516169, 26.271996, 26.702490>,  <29.869247, 26.117212, 27.126926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516169, 26.271996, 26.702490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.210075, 26.167271, 26.467247>,  <30.026419, 26.104435, 26.326101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.210075, 26.167271, 26.467247>,  <30.516169, 26.271996, 26.702490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210075, 26.167271, 26.467247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149293, 0.816480, -0.557739,
		0.626201, -0.514601, -0.585711,
		-0.765234, -0.261814, -0.588107,
		29.980505, 26.088726, 26.290815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611050, 26.516603, 26.109484>,  <30.516169, 26.271996, 26.702490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611050, 26.516603, 26.109484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235207, 26.410301, 26.023216>,  <30.009701, 26.346519, 25.971457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235207, 26.410301, 26.023216>,  <30.611050, 26.516603, 26.109484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235207, 26.410301, 26.023216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066453, 0.759803, -0.646748,
		0.335745, -0.593357, -0.731576,
		-0.939606, -0.265758, -0.215669,
		29.953325, 26.330574, 25.958515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576368, 26.588865, 25.437857>,  <30.611050, 26.516603, 26.109484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576368, 26.588865, 25.437857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195480, 26.582783, 25.559872>,  <29.966948, 26.579134, 25.633081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195480, 26.582783, 25.559872>,  <30.576368, 26.588865, 25.437857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195480, 26.582783, 25.559872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219093, 0.729852, -0.647544,
		-0.212787, -0.683436, -0.698310,
		-0.952218, -0.015206, 0.305039,
		29.909815, 26.578220, 25.651384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140085, 26.641270, 24.813147>,  <30.576368, 26.588865, 25.437857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140085, 26.641270, 24.813147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907104, 26.753750, 25.118217>,  <29.767317, 26.821238, 25.301260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907104, 26.753750, 25.118217>,  <30.140085, 26.641270, 24.813147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907104, 26.753750, 25.118217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247121, 0.832594, -0.495700,
		-0.774392, -0.477195, -0.415454,
		-0.582450, 0.281199, 0.762679,
		29.732370, 26.838110, 25.347021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452690, 26.775949, 24.516182>,  <30.140085, 26.641270, 24.813147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452690, 26.775949, 24.516182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.489655, 26.978695, 24.859005>,  <29.511833, 27.100342, 25.064699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.489655, 26.978695, 24.859005>,  <29.452690, 26.775949, 24.516182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489655, 26.978695, 24.859005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241993, 0.846367, -0.474450,
		-0.965867, -0.163558, 0.200871,
		0.092410, 0.506865, 0.857058,
		29.517378, 27.130754, 25.116123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.872654, 25.653578, 22.484678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266289, 25.674244, 22.416668>,  <41.502468, 25.686644, 22.375862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266289, 25.674244, 22.416668>,  <40.872654, 25.653578, 22.484678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266289, 25.674244, 22.416668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004460, 0.949316, 0.314291,
		0.177646, -0.310048, 0.933977,
		0.984085, 0.051667, -0.170025,
		41.561516, 25.689745, 22.365660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253101, 25.774832, 23.118492>,  <40.872654, 25.653578, 22.484678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253101, 25.774832, 23.118492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.419506, 25.923309, 22.786434>,  <41.519348, 26.012396, 22.587198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.419506, 25.923309, 22.786434>,  <41.253101, 25.774832, 23.118492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419506, 25.923309, 22.786434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164670, 0.867051, 0.470220,
		0.894324, -0.332318, 0.299582,
		0.416015, 0.371197, -0.830147,
		41.544312, 26.034668, 22.537390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000889, 25.966965, 23.240940>,  <41.253101, 25.774832, 23.118492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000889, 25.966965, 23.240940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.824680, 26.174168, 22.947651>,  <41.718956, 26.298491, 22.771679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.824680, 26.174168, 22.947651>,  <42.000889, 25.966965, 23.240940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824680, 26.174168, 22.947651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308485, 0.854347, 0.418245,
		0.843079, -0.041944, -0.536152,
		-0.440517, 0.518008, -0.733221,
		41.692524, 26.329571, 22.727684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441628, 26.557308, 23.202087>,  <42.000889, 25.966965, 23.240940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441628, 26.557308, 23.202087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.136127, 26.650707, 22.961369>,  <41.952827, 26.706747, 22.816938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.136127, 26.650707, 22.961369>,  <42.441628, 26.557308, 23.202087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136127, 26.650707, 22.961369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135886, 0.969551, 0.203731,
		0.631043, 0.073824, -0.772228,
		-0.763754, 0.233498, -0.601796,
		41.907001, 26.720757, 22.780830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777454, 27.100554, 22.841906>,  <42.441628, 26.557308, 23.202087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777454, 27.100554, 22.841906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381069, 27.151394, 22.824715>,  <42.143238, 27.181898, 22.814400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381069, 27.151394, 22.824715>,  <42.777454, 27.100554, 22.841906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381069, 27.151394, 22.824715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113184, 0.963923, 0.240918,
		0.072048, 0.233875, -0.969593,
		-0.990958, 0.127100, -0.042978,
		42.083782, 27.189524, 22.811821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627735, 27.649511, 22.294472>,  <42.777454, 27.100554, 22.841906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627735, 27.649511, 22.294472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.327694, 27.616562, 22.556938>,  <42.147667, 27.596792, 22.714418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.327694, 27.616562, 22.556938>,  <42.627735, 27.649511, 22.294472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327694, 27.616562, 22.556938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039651, 0.996029, 0.079708,
		-0.660126, 0.033772, -0.750395,
		-0.750107, -0.082372, 0.656166,
		42.102661, 27.591850, 22.753788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294548, 28.145189, 22.103313>,  <42.627735, 27.649511, 22.294472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294548, 28.145189, 22.103313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.147491, 28.062977, 22.466103>,  <42.059258, 28.013649, 22.683775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.147491, 28.062977, 22.466103>,  <42.294548, 28.145189, 22.103313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147491, 28.062977, 22.466103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064601, 0.978560, 0.195566,
		-0.927721, 0.013307, -0.373037,
		-0.367641, -0.205530, 0.906971,
		42.037197, 28.001318, 22.738194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704494, 28.498249, 22.059887>,  <42.294548, 28.145189, 22.103313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704494, 28.498249, 22.059887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.792046, 28.432438, 22.444599>,  <41.844578, 28.392952, 22.675426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.792046, 28.432438, 22.444599>,  <41.704494, 28.498249, 22.059887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792046, 28.432438, 22.444599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316732, 0.920328, 0.229516,
		-0.922916, -0.354863, 0.149328,
		0.218877, -0.164528, 0.961782,
		41.857708, 28.383080, 22.733133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159809, 28.739391, 22.382097>,  <41.704494, 28.498249, 22.059887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159809, 28.739391, 22.382097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.435226, 28.738605, 22.672173>,  <41.600479, 28.738134, 22.846218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.435226, 28.738605, 22.672173>,  <41.159809, 28.739391, 22.382097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435226, 28.738605, 22.672173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426592, 0.807580, 0.407227,
		-0.586448, -0.589755, 0.555218,
		0.688548, -0.001966, 0.725189,
		41.641792, 28.738016, 22.889729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739471, 28.891100, 22.995260>,  <41.159809, 28.739391, 22.382097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739471, 28.891100, 22.995260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121716, 28.968513, 23.084122>,  <41.351063, 29.014961, 23.137438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121716, 28.968513, 23.084122>,  <40.739471, 28.891100, 22.995260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121716, 28.968513, 23.084122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276485, 0.849573, 0.449200,
		-0.101799, -0.490682, 0.865371,
		0.955611, 0.193534, 0.222152,
		41.408398, 29.026573, 23.150766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790936, 29.228710, 23.662079>,  <40.739471, 28.891100, 22.995260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790936, 29.228710, 23.662079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152622, 29.303364, 23.508423>,  <41.369633, 29.348156, 23.416229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152622, 29.303364, 23.508423>,  <40.790936, 29.228710, 23.662079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152622, 29.303364, 23.508423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026818, 0.922499, 0.385066,
		0.426233, -0.337881, 0.839144,
		0.904216, 0.186632, -0.384138,
		41.423885, 29.359354, 23.393181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184029, 29.491812, 24.244816>,  <40.790936, 29.228710, 23.662079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184029, 29.491812, 24.244816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.360100, 29.632767, 23.914467>,  <41.465744, 29.717340, 23.716257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.360100, 29.632767, 23.914467>,  <41.184029, 29.491812, 24.244816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360100, 29.632767, 23.914467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288508, 0.926506, 0.241555,
		0.850297, 0.131944, 0.509496,
		0.440180, 0.352387, -0.825873,
		41.492153, 29.738483, 23.666704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556320, 29.962502, 24.476620>,  <41.184029, 29.491812, 24.244816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556320, 29.962502, 24.476620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546200, 30.055321, 24.087669>,  <41.540127, 30.111013, 23.854300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546200, 30.055321, 24.087669>,  <41.556320, 29.962502, 24.476620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546200, 30.055321, 24.087669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158947, 0.959379, 0.233085,
		0.986963, 0.160454, 0.012608,
		-0.025303, 0.232050, -0.972375,
		41.538609, 30.124935, 23.795958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004276, 30.528868, 24.417645>,  <41.556320, 29.962502, 24.476620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004276, 30.528868, 24.417645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.765366, 30.552109, 24.097675>,  <41.622017, 30.566053, 23.905693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.765366, 30.552109, 24.097675>,  <42.004276, 30.528868, 24.417645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765366, 30.552109, 24.097675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137670, 0.975143, 0.173621,
		0.790128, 0.213826, -0.574435,
		-0.597281, 0.058100, -0.799925,
		41.586182, 30.569538, 23.857698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105915, 31.194880, 24.131289>,  <42.004276, 30.528868, 24.417645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105915, 31.194880, 24.131289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769684, 31.085888, 23.944019>,  <41.567947, 31.020493, 23.831657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769684, 31.085888, 23.944019>,  <42.105915, 31.194880, 24.131289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769684, 31.085888, 23.944019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390084, 0.904162, 0.174143,
		0.375856, 0.329008, -0.866306,
		-0.840575, -0.272480, -0.468175,
		41.517509, 31.004145, 23.803566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914249, 31.808430, 23.626123>,  <42.105915, 31.194880, 24.131289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914249, 31.808430, 23.626123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603374, 31.576168, 23.723137>,  <41.416851, 31.436811, 23.781345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603374, 31.576168, 23.723137>,  <41.914249, 31.808430, 23.626123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603374, 31.576168, 23.723137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580485, 0.810340, 0.079908,
		-0.242933, -0.078683, -0.966846,
		-0.777187, -0.580652, 0.242533,
		41.370220, 31.401972, 23.795897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427849, 32.217926, 23.294899>,  <41.914249, 31.808430, 23.626123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427849, 32.217926, 23.294899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246296, 31.975182, 23.555885>,  <41.137363, 31.829535, 23.712477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246296, 31.975182, 23.555885>,  <41.427849, 32.217926, 23.294899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246296, 31.975182, 23.555885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523153, 0.774232, 0.356197,
		-0.721322, -0.179668, -0.668890,
		-0.453879, -0.606865, 0.652464,
		41.110134, 31.793121, 23.751625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714867, 32.342373, 23.204491>,  <41.427849, 32.217926, 23.294899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714867, 32.342373, 23.204491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.759075, 32.177528, 23.566254>,  <40.785599, 32.078621, 23.783312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.759075, 32.177528, 23.566254>,  <40.714867, 32.342373, 23.204491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759075, 32.177528, 23.566254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642020, 0.665035, 0.381495,
		-0.758680, -0.622810, -0.191083,
		0.110522, -0.412112, 0.904406,
		40.792233, 32.053894, 23.837576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054516, 32.039108, 23.328630>,  <40.714867, 32.342373, 23.204491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054516, 32.039108, 23.328630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.238091, 32.115818, 23.675640>,  <40.348236, 32.161842, 23.883846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.238091, 32.115818, 23.675640>,  <40.054516, 32.039108, 23.328630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238091, 32.115818, 23.675640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769029, 0.574731, 0.279784,
		-0.444940, -0.795555, 0.411243,
		0.458938, 0.191770, 0.867525,
		40.375771, 32.173347, 23.935898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557175, 32.359421, 23.750153>,  <40.054516, 32.039108, 23.328630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557175, 32.359421, 23.750153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853687, 32.436829, 24.007229>,  <40.031593, 32.483273, 24.161474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853687, 32.436829, 24.007229>,  <39.557175, 32.359421, 23.750153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853687, 32.436829, 24.007229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474627, 0.828183, 0.298064,
		-0.474587, -0.525988, 0.705764,
		0.741280, 0.193518, 0.642693,
		40.076073, 32.494884, 24.200037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264053, 32.437233, 24.347792>,  <39.557175, 32.359421, 23.750153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264053, 32.437233, 24.347792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605961, 32.644669, 24.356129>,  <39.811104, 32.769131, 24.361130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605961, 32.644669, 24.356129>,  <39.264053, 32.437233, 24.347792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605961, 32.644669, 24.356129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503737, 0.819270, 0.273945,
		0.124992, -0.244658, 0.961519,
		0.854767, 0.518593, 0.020841,
		39.862392, 32.800247, 24.362381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824593, 32.837616, 23.910351>,  <39.264053, 32.437233, 24.347792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824593, 32.837616, 23.910351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.468300, 32.954178, 23.770824>,  <38.254524, 33.024117, 23.687109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.468300, 32.954178, 23.770824>,  <38.824593, 32.837616, 23.910351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468300, 32.954178, 23.770824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232175, -0.951471, -0.201985,
		-0.390747, -0.098929, 0.915166,
		-0.890737, 0.291404, -0.348816,
		38.201080, 33.041599, 23.666180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362377, 32.452694, 24.303905>,  <38.824593, 32.837616, 23.910351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362377, 32.452694, 24.303905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193146, 32.567272, 23.960056>,  <38.091606, 32.636021, 23.753748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193146, 32.567272, 23.960056>,  <38.362377, 32.452694, 24.303905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193146, 32.567272, 23.960056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045615, -0.954245, -0.295525,
		-0.904942, -0.085820, 0.416792,
		-0.423084, 0.286445, -0.859621,
		38.066219, 32.653206, 23.702169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811562, 31.957968, 24.180939>,  <38.362377, 32.452694, 24.303905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811562, 31.957968, 24.180939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884487, 32.091309, 23.810936>,  <37.928242, 32.171314, 23.588934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884487, 32.091309, 23.810936>,  <37.811562, 31.957968, 24.180939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884487, 32.091309, 23.810936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022786, -0.939090, -0.342916,
		-0.982976, 0.083596, -0.163617,
		0.182317, 0.333350, -0.925007,
		37.939182, 32.191315, 23.533434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323551, 31.599945, 23.700373>,  <37.811562, 31.957968, 24.180939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323551, 31.599945, 23.700373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621548, 31.732841, 23.468994>,  <37.800346, 31.812580, 23.330168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621548, 31.732841, 23.468994>,  <37.323551, 31.599945, 23.700373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621548, 31.732841, 23.468994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003831, -0.864997, -0.501763,
		-0.667062, 0.376026, -0.643143,
		0.744993, 0.332243, -0.578447,
		37.845047, 31.832514, 23.295460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041878, 31.538656, 23.002630>,  <37.323551, 31.599945, 23.700373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041878, 31.538656, 23.002630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.439678, 31.547913, 22.961788>,  <37.678360, 31.553467, 22.937283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.439678, 31.547913, 22.961788>,  <37.041878, 31.538656, 23.002630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439678, 31.547913, 22.961788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027024, -0.885473, -0.463904,
		-0.101144, 0.464114, -0.879982,
		0.994505, 0.023140, -0.102103,
		37.738029, 31.554855, 22.931158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141777, 31.343775, 22.324078>,  <37.041878, 31.538656, 23.002630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141777, 31.343775, 22.324078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.489029, 31.265175, 22.506390>,  <37.697380, 31.218014, 22.615776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.489029, 31.265175, 22.506390>,  <37.141777, 31.343775, 22.324078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489029, 31.265175, 22.506390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078406, -0.852466, -0.516869,
		0.490101, 0.484447, -0.724647,
		0.868132, -0.196501, 0.455778,
		37.749470, 31.206224, 22.643124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490444, 31.045597, 21.791170>,  <37.141777, 31.343775, 22.324078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490444, 31.045597, 21.791170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666683, 30.922512, 22.128498>,  <37.772427, 30.848661, 22.330894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666683, 30.922512, 22.128498>,  <37.490444, 31.045597, 21.791170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666683, 30.922512, 22.128498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027915, -0.943658, -0.329743,
		0.897272, 0.121742, -0.424361,
		0.440596, -0.307715, 0.843319,
		37.798862, 30.830198, 22.381495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027191, 30.632601, 21.504368>,  <37.490444, 31.045597, 21.791170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027191, 30.632601, 21.504368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987560, 30.530537, 21.889091>,  <37.963783, 30.469297, 22.119926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987560, 30.530537, 21.889091>,  <38.027191, 30.632601, 21.504368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987560, 30.530537, 21.889091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289437, -0.932163, -0.217483,
		0.952056, 0.256835, 0.166208,
		-0.099076, -0.255162, 0.961809,
		37.957836, 30.453987, 22.177633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517021, 30.271248, 21.608683>,  <38.027191, 30.632601, 21.504368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517021, 30.271248, 21.608683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.273071, 30.173958, 21.910381>,  <38.126701, 30.115583, 22.091400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.273071, 30.173958, 21.910381>,  <38.517021, 30.271248, 21.608683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273071, 30.173958, 21.910381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295775, -0.952827, -0.068102,
		0.735232, 0.181554, 0.653048,
		-0.609877, -0.243226, 0.754248,
		38.090107, 30.100990, 22.136656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889015, 29.742388, 22.015528>,  <38.517021, 30.271248, 21.608683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889015, 29.742388, 22.015528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.504147, 29.731426, 22.123951>,  <38.273224, 29.724850, 22.189005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.504147, 29.731426, 22.123951>,  <38.889015, 29.742388, 22.015528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504147, 29.731426, 22.123951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045713, -0.997062, 0.061460,
		0.268576, 0.071526, 0.960599,
		-0.962173, -0.027405, 0.271057,
		38.215496, 29.723206, 22.205269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829281, 29.242678, 22.661423>,  <38.889015, 29.742388, 22.015528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829281, 29.242678, 22.661423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.480293, 29.262993, 22.467014>,  <38.270901, 29.275183, 22.350370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.480293, 29.262993, 22.467014>,  <38.829281, 29.242678, 22.661423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480293, 29.262993, 22.467014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053284, -0.998541, -0.008697,
		-0.485752, 0.018309, 0.873904,
		-0.872471, 0.050790, -0.486020,
		38.218552, 29.278231, 22.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412926, 28.802605, 22.961567>,  <38.829281, 29.242678, 22.661423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412926, 28.802605, 22.961567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226982, 28.838097, 22.609196>,  <38.115414, 28.859392, 22.397774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226982, 28.838097, 22.609196>,  <38.412926, 28.802605, 22.961567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226982, 28.838097, 22.609196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015483, -0.993999, -0.108290,
		-0.885248, -0.063979, 0.460699,
		-0.464862, 0.088730, -0.880926,
		38.087524, 28.864716, 22.344917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005569, 28.145674, 22.955906>,  <38.412926, 28.802605, 22.961567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005569, 28.145674, 22.955906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017879, 28.276558, 22.578125>,  <38.025265, 28.355087, 22.351458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017879, 28.276558, 22.578125>,  <38.005569, 28.145674, 22.955906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017879, 28.276558, 22.578125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054660, -0.944035, -0.325284,
		-0.998031, -0.041613, -0.046937,
		0.030774, 0.327209, -0.944451,
		38.027111, 28.374722, 22.294790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668819, 27.656654, 22.605549>,  <38.005569, 28.145674, 22.955906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668819, 27.656654, 22.605549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882263, 27.823921, 22.311501>,  <38.010330, 27.924282, 22.135071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882263, 27.823921, 22.311501>,  <37.668819, 27.656654, 22.605549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882263, 27.823921, 22.311501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060877, -0.885947, -0.459773,
		-0.843539, 0.200586, -0.498204,
		0.533606, 0.418166, -0.735120,
		38.042343, 27.949371, 22.090965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515816, 27.278206, 21.936264>,  <37.668819, 27.656654, 22.605549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515816, 27.278206, 21.936264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852734, 27.474026, 21.846043>,  <38.054886, 27.591518, 21.791910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852734, 27.474026, 21.846043>,  <37.515816, 27.278206, 21.936264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852734, 27.474026, 21.846043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295274, -0.769159, -0.566751,
		-0.450940, 0.410774, -0.792413,
		0.842298, 0.489550, -0.225554,
		38.105423, 27.620892, 21.778376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587814, 27.341223, 21.184923>,  <37.515816, 27.278206, 21.936264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587814, 27.341223, 21.184923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973160, 27.378960, 21.285351>,  <38.204365, 27.401602, 21.345608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973160, 27.378960, 21.285351>,  <37.587814, 27.341223, 21.184923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973160, 27.378960, 21.285351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233759, -0.754295, -0.613511,
		0.131501, 0.649723, -0.748711,
		0.963361, 0.094340, 0.251069,
		38.262169, 27.407261, 21.360672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971306, 27.147390, 20.591722>,  <37.587814, 27.341223, 21.184923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971306, 27.147390, 20.591722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.222946, 27.133617, 20.902348>,  <38.373928, 27.125355, 21.088722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.222946, 27.133617, 20.902348>,  <37.971306, 27.147390, 20.591722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222946, 27.133617, 20.902348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387876, -0.851855, -0.351987,
		0.673640, 0.522644, -0.522544,
		0.629096, -0.034430, 0.776565,
		38.411674, 27.123289, 21.135317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600151, 26.979692, 20.358345>,  <37.971306, 27.147390, 20.591722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600151, 26.979692, 20.358345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625126, 26.885059, 20.746185>,  <38.640110, 26.828279, 20.978889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625126, 26.885059, 20.746185>,  <38.600151, 26.979692, 20.358345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625126, 26.885059, 20.746185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502527, -0.831912, -0.235348,
		0.862304, 0.501946, 0.066947,
		0.062438, -0.236585, 0.969603,
		38.643856, 26.814083, 21.037066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196774, 26.713835, 20.307709>,  <38.600151, 26.979692, 20.358345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196774, 26.713835, 20.307709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037586, 26.571716, 20.646030>,  <38.942074, 26.486444, 20.849024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037586, 26.571716, 20.646030>,  <39.196774, 26.713835, 20.307709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037586, 26.571716, 20.646030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332994, -0.915025, -0.227692,
		0.854831, 0.191034, 0.482462,
		-0.397968, -0.355296, 0.845805,
		38.918198, 26.465128, 20.899773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746326, 26.433319, 20.597267>,  <39.196774, 26.713835, 20.307709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746326, 26.433319, 20.597267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.426907, 26.275803, 20.779366>,  <39.235256, 26.181293, 20.888624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.426907, 26.275803, 20.779366>,  <39.746326, 26.433319, 20.597267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426907, 26.275803, 20.779366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378466, -0.916584, -0.128985,
		0.468064, 0.069294, 0.880974,
		-0.798549, -0.393792, 0.455245,
		39.187344, 26.157665, 20.915939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083385, 25.922237, 21.082575>,  <39.746326, 26.433319, 20.597267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083385, 25.922237, 21.082575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.698322, 25.831570, 21.023365>,  <39.467285, 25.777168, 20.987839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.698322, 25.831570, 21.023365>,  <40.083385, 25.922237, 21.082575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698322, 25.831570, 21.023365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237327, -0.969662, -0.058581,
		-0.130254, -0.091524, 0.987247,
		-0.962658, -0.226670, -0.148024,
		39.409527, 25.763569, 20.978958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.144806, 23.044672, 29.478285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.485191, 23.077309, 29.685825>,  <25.689423, 23.096891, 29.810350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.485191, 23.077309, 29.685825>,  <25.144806, 23.044672, 29.478285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485191, 23.077309, 29.685825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074321, -0.996626, 0.034832,
		0.519944, 0.008921, -0.854154,
		0.850961, 0.081592, 0.518852,
		25.740480, 23.101786, 29.841480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703844, 22.613010, 29.126638>,  <25.144806, 23.044672, 29.478285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703844, 22.613010, 29.126638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.863562, 22.666634, 29.489426>,  <25.959393, 22.698807, 29.707098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.863562, 22.666634, 29.489426>,  <25.703844, 22.613010, 29.126638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863562, 22.666634, 29.489426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047328, -0.990947, 0.125632,
		0.915600, -0.007239, -0.402024,
		0.399294, 0.134056, 0.906969,
		25.983351, 22.706850, 29.761517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264826, 22.251167, 29.095354>,  <25.703844, 22.613010, 29.126638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264826, 22.251167, 29.095354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.169565, 22.294830, 29.481384>,  <26.112410, 22.321028, 29.713001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.169565, 22.294830, 29.481384>,  <26.264826, 22.251167, 29.095354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169565, 22.294830, 29.481384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177023, -0.972140, 0.153643,
		0.954959, 0.207431, 0.212191,
		-0.238150, 0.109160, 0.965075,
		26.098120, 22.327578, 29.770906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792284, 21.945419, 29.386003>,  <26.264826, 22.251167, 29.095354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792284, 21.945419, 29.386003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.519522, 21.985622, 29.675804>,  <26.355865, 22.009745, 29.849686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.519522, 21.985622, 29.675804>,  <26.792284, 21.945419, 29.386003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519522, 21.985622, 29.675804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237288, -0.906546, 0.349098,
		0.691882, 0.409967, 0.594328,
		-0.681904, 0.100508, 0.724503,
		26.314951, 22.015774, 29.893156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103838, 21.767307, 30.039206>,  <26.792284, 21.945419, 29.386003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103838, 21.767307, 30.039206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.714832, 21.675217, 30.053108>,  <26.481428, 21.619963, 30.061449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.714832, 21.675217, 30.053108>,  <27.103838, 21.767307, 30.039206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714832, 21.675217, 30.053108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195712, -0.727431, 0.657678,
		-0.126134, 0.646405, 0.752497,
		-0.972516, -0.230228, 0.034756,
		26.423077, 21.606148, 30.063536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066805, 21.644281, 30.775898>,  <27.103838, 21.767307, 30.039206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066805, 21.644281, 30.775898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.776936, 21.480022, 30.554550>,  <26.603014, 21.381468, 30.421741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.776936, 21.480022, 30.554550>,  <27.066805, 21.644281, 30.775898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776936, 21.480022, 30.554550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097890, -0.856244, 0.507211,
		-0.682105, 0.313392, 0.660695,
		-0.724672, -0.410647, -0.553371,
		26.559534, 21.356829, 30.388538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584976, 21.409327, 31.252296>,  <27.066805, 21.644281, 30.775898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584976, 21.409327, 31.252296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.535740, 21.205074, 30.911919>,  <26.506199, 21.082523, 30.707693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.535740, 21.205074, 30.911919>,  <26.584976, 21.409327, 31.252296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535740, 21.205074, 30.911919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195943, -0.853089, 0.483576,
		-0.972859, -0.107214, 0.205060,
		-0.123089, -0.510631, -0.850944,
		26.498814, 21.051886, 30.656635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359137, 20.772818, 31.565392>,  <26.584976, 21.409327, 31.252296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359137, 20.772818, 31.565392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.379143, 20.661465, 31.181725>,  <26.391146, 20.594652, 30.951525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.379143, 20.661465, 31.181725>,  <26.359137, 20.772818, 31.565392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379143, 20.661465, 31.181725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239293, -0.929057, 0.282122,
		-0.969658, -0.243632, 0.020150,
		0.050013, -0.278383, -0.959167,
		26.394146, 20.577950, 30.893974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959627, 20.149870, 31.503744>,  <26.359137, 20.772818, 31.565392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959627, 20.149870, 31.503744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.228502, 20.166054, 31.208035>,  <26.389828, 20.175764, 31.030609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.228502, 20.166054, 31.208035>,  <25.959627, 20.149870, 31.503744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228502, 20.166054, 31.208035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220313, -0.964205, 0.147552,
		-0.706841, -0.262054, -0.657041,
		0.672189, 0.040459, -0.739274,
		26.430159, 20.178192, 30.986252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907991, 19.483967, 31.133715>,  <25.959627, 20.149870, 31.503744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907991, 19.483967, 31.133715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.270847, 19.630260, 31.050449>,  <26.488562, 19.718037, 31.000490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.270847, 19.630260, 31.050449>,  <25.907991, 19.483967, 31.133715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270847, 19.630260, 31.050449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395469, -0.909993, 0.124567,
		-0.143868, -0.195322, -0.970129,
		0.907142, 0.365735, -0.208163,
		26.542990, 19.739981, 30.988001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108715, 19.045935, 30.657349>,  <25.907991, 19.483967, 31.133715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108715, 19.045935, 30.657349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.436663, 19.232212, 30.790585>,  <26.633430, 19.343979, 30.870527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.436663, 19.232212, 30.790585>,  <26.108715, 19.045935, 30.657349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436663, 19.232212, 30.790585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426990, -0.884886, 0.186161,
		0.381441, -0.010400, -0.924335,
		0.819867, 0.465691, 0.333091,
		26.682623, 19.371920, 30.890512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746063, 18.799778, 30.270823>,  <26.108715, 19.045935, 30.657349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746063, 18.799778, 30.270823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.826700, 18.942913, 30.635529>,  <26.875082, 19.028795, 30.854351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.826700, 18.942913, 30.635529>,  <26.746063, 18.799778, 30.270823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826700, 18.942913, 30.635529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486869, -0.844336, 0.223729,
		0.849894, 0.398808, -0.344432,
		0.201591, 0.357839, 0.911763,
		26.887178, 19.050264, 30.909058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553989, 18.902420, 30.565315>,  <26.746063, 18.799778, 30.270823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553989, 18.902420, 30.565315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.323378, 18.776772, 30.867027>,  <27.185011, 18.701382, 31.048056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.323378, 18.776772, 30.867027>,  <27.553989, 18.902420, 30.565315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323378, 18.776772, 30.867027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447604, -0.893726, -0.030070,
		0.683567, 0.320283, 0.655862,
		-0.576530, -0.314121, 0.754282,
		27.150419, 18.682535, 31.093311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927416, 18.435875, 31.034380>,  <27.553989, 18.902420, 30.565315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927416, 18.435875, 31.034380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.546799, 18.328114, 31.093693>,  <27.318428, 18.263456, 31.129280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.546799, 18.328114, 31.093693>,  <27.927416, 18.435875, 31.034380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546799, 18.328114, 31.093693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260438, -0.962396, -0.077241,
		0.163514, -0.034880, 0.985924,
		-0.951543, -0.269402, 0.148281,
		27.261335, 18.247293, 31.138178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634668, 18.475252, 30.931944>,  <27.927416, 18.435875, 31.034380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634668, 18.475252, 30.931944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.993160, 18.384323, 30.779579>,  <29.208256, 18.329765, 30.688160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.993160, 18.384323, 30.779579>,  <28.634668, 18.475252, 30.931944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993160, 18.384323, 30.779579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100381, 0.940368, -0.325011,
		0.432080, 0.253049, 0.865606,
		0.896231, -0.227321, -0.380912,
		29.262030, 18.316126, 30.665306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063700, 18.993673, 30.969812>,  <28.634668, 18.475252, 30.931944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063700, 18.993673, 30.969812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270142, 18.804813, 30.683956>,  <29.394007, 18.691498, 30.512442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270142, 18.804813, 30.683956>,  <29.063700, 18.993673, 30.969812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270142, 18.804813, 30.683956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108275, 0.863620, -0.492379,
		0.849654, 0.176742, 0.496840,
		0.516105, -0.472148, -0.714641,
		29.424973, 18.663170, 30.469564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673456, 19.373764, 30.781401>,  <29.063700, 18.993673, 30.969812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673456, 19.373764, 30.781401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621721, 19.140072, 30.460915>,  <29.590679, 18.999857, 30.268623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621721, 19.140072, 30.460915>,  <29.673456, 19.373764, 30.781401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621721, 19.140072, 30.460915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025428, 0.805782, -0.591666,
		0.991274, -0.096899, -0.089363,
		-0.129339, -0.584231, -0.801215,
		29.582920, 18.964802, 30.220551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119658, 19.698006, 30.265631>,  <29.673456, 19.373764, 30.781401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119658, 19.698006, 30.265631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861155, 19.477005, 30.055073>,  <29.706053, 19.344404, 29.928738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861155, 19.477005, 30.055073>,  <30.119658, 19.698006, 30.265631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861155, 19.477005, 30.055073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075757, 0.639939, -0.764682,
		0.759350, -0.534060, -0.371709,
		-0.646258, -0.552502, -0.526396,
		29.667276, 19.311255, 29.897154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436520, 19.409826, 29.589186>,  <30.119658, 19.698006, 30.265631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436520, 19.409826, 29.589186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.039469, 19.456684, 29.576756>,  <29.801237, 19.484798, 29.569298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.039469, 19.456684, 29.576756>,  <30.436520, 19.409826, 29.589186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039469, 19.456684, 29.576756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107141, 0.728336, -0.676792,
		-0.056649, -0.675133, -0.735518,
		-0.992629, 0.117144, -0.031075,
		29.741680, 19.491827, 29.567432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212147, 19.274548, 28.919443>,  <30.436520, 19.409826, 29.589186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212147, 19.274548, 28.919443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.925907, 19.505836, 29.076199>,  <29.754164, 19.644609, 29.170252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.925907, 19.505836, 29.076199>,  <30.212147, 19.274548, 28.919443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925907, 19.505836, 29.076199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101981, 0.641508, -0.760307,
		-0.691028, -0.504109, -0.518029,
		-0.715598, 0.578223, 0.391891,
		29.711227, 19.679304, 29.193766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844383, 19.489691, 28.309151>,  <30.212147, 19.274548, 28.919443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844383, 19.489691, 28.309151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702309, 19.721531, 28.602520>,  <29.617064, 19.860636, 28.778542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702309, 19.721531, 28.602520>,  <29.844383, 19.489691, 28.309151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702309, 19.721531, 28.602520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007765, 0.782723, -0.622321,
		-0.934764, -0.226734, -0.273511,
		-0.355184, 0.579600, 0.733422,
		29.595753, 19.895411, 28.822546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590393, 19.988411, 28.000603>,  <29.844383, 19.489691, 28.309151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590393, 19.988411, 28.000603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583323, 20.177223, 28.353165>,  <29.579081, 20.290510, 28.564703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583323, 20.177223, 28.353165>,  <29.590393, 19.988411, 28.000603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583323, 20.177223, 28.353165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031791, 0.880832, -0.472360,
		-0.999338, -0.036371, -0.000564,
		-0.017676, 0.472029, 0.881406,
		29.578020, 20.318832, 28.617586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220766, 20.474379, 27.876675>,  <29.590393, 19.988411, 28.000603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220766, 20.474379, 27.876675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425604, 20.608059, 28.193172>,  <29.548506, 20.688267, 28.383072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425604, 20.608059, 28.193172>,  <29.220766, 20.474379, 27.876675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425604, 20.608059, 28.193172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132798, 0.879318, -0.457346,
		-0.848602, 0.339279, 0.405911,
		0.512093, 0.334200, 0.791246,
		29.579231, 20.708319, 28.430546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827379, 21.166986, 28.092524>,  <29.220766, 20.474379, 27.876675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827379, 21.166986, 28.092524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.197269, 21.169273, 28.244762>,  <29.419203, 21.170647, 28.336105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.197269, 21.169273, 28.244762>,  <28.827379, 21.166986, 28.092524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197269, 21.169273, 28.244762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143098, 0.921315, -0.361526,
		-0.352717, 0.388774, 0.851143,
		0.924724, 0.005720, 0.380596,
		29.474686, 21.170990, 28.358942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799259, 21.748075, 28.453548>,  <28.827379, 21.166986, 28.092524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799259, 21.748075, 28.453548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.191509, 21.672012, 28.472359>,  <29.426859, 21.626375, 28.483644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.191509, 21.672012, 28.472359>,  <28.799259, 21.748075, 28.453548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191509, 21.672012, 28.472359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195847, 0.956493, -0.216251,
		-0.003859, 0.221272, 0.975204,
		0.980627, -0.190156, 0.047027,
		29.485697, 21.614965, 28.486467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152565, 22.156628, 28.983183>,  <28.799259, 21.748075, 28.453548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152565, 22.156628, 28.983183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402824, 22.065128, 28.684856>,  <29.552980, 22.010229, 28.505861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402824, 22.065128, 28.684856>,  <29.152565, 22.156628, 28.983183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402824, 22.065128, 28.684856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162339, 0.973290, -0.162332,
		0.763028, -0.019513, 0.646070,
		0.625647, -0.228747, -0.745816,
		29.590519, 21.996504, 28.461111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791681, 22.506828, 29.141403>,  <29.152565, 22.156628, 28.983183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791681, 22.506828, 29.141403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773483, 22.415638, 28.752361>,  <29.762564, 22.360924, 28.518936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773483, 22.415638, 28.752361>,  <29.791681, 22.506828, 29.141403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773483, 22.415638, 28.752361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162228, 0.959001, -0.232376,
		0.985704, -0.168356, -0.006645,
		-0.045495, -0.227976, -0.972603,
		29.759834, 22.347244, 28.460581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302078, 22.939661, 28.843033>,  <29.791681, 22.506828, 29.141403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302078, 22.939661, 28.843033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104183, 22.832066, 28.512486>,  <29.985447, 22.767509, 28.314157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104183, 22.832066, 28.512486>,  <30.302078, 22.939661, 28.843033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104183, 22.832066, 28.512486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187036, 0.895652, -0.403516,
		0.848677, -0.354195, -0.392802,
		-0.494738, -0.268987, -0.826366,
		29.955763, 22.751369, 28.264576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982132, 22.636675, 28.946735>,  <30.302078, 22.939661, 28.843033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982132, 22.636675, 28.946735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.332190, 22.764347, 29.092201>,  <31.542223, 22.840950, 29.179480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.332190, 22.764347, 29.092201>,  <30.982132, 22.636675, 28.946735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332190, 22.764347, 29.092201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003161, -0.755333, 0.655333,
		0.483857, -0.572360, -0.662033,
		0.875142, 0.319180, 0.363664,
		31.594732, 22.860102, 29.201300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385458, 22.094810, 28.944483>,  <30.982132, 22.636675, 28.946735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385458, 22.094810, 28.944483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574633, 22.305164, 29.227261>,  <31.688137, 22.431377, 29.396927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574633, 22.305164, 29.227261>,  <31.385458, 22.094810, 28.944483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574633, 22.305164, 29.227261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066983, -0.821486, 0.566281,
		0.878546, -0.220462, -0.423737,
		0.472938, 0.525887, 0.706946,
		31.716515, 22.462931, 29.439344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802408, 21.644138, 29.193430>,  <31.385458, 22.094810, 28.944483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802408, 21.644138, 29.193430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778704, 21.930313, 29.471893>,  <31.764481, 22.102018, 29.638971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778704, 21.930313, 29.471893>,  <31.802408, 21.644138, 29.193430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778704, 21.930313, 29.471893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004165, -0.697554, 0.716520,
		0.998234, 0.039562, 0.044317,
		-0.059260, 0.715439, 0.696157,
		31.760925, 22.144945, 29.680740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364712, 21.451111, 29.542160>,  <31.802408, 21.644138, 29.193430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364712, 21.451111, 29.542160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155308, 21.692039, 29.783207>,  <32.029667, 21.836597, 29.927835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155308, 21.692039, 29.783207>,  <32.364712, 21.451111, 29.542160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155308, 21.692039, 29.783207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010334, -0.711718, 0.702389,
		0.851959, 0.361478, 0.378813,
		-0.523507, 0.602321, 0.602619,
		31.998257, 21.872736, 29.963993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757504, 21.563549, 30.194544>,  <32.364712, 21.451111, 29.542160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757504, 21.563549, 30.194544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371319, 21.637169, 30.268303>,  <32.139606, 21.681341, 30.312559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371319, 21.637169, 30.268303>,  <32.757504, 21.563549, 30.194544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371319, 21.637169, 30.268303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029020, -0.627407, 0.778151,
		0.258910, 0.756629, 0.600398,
		-0.965465, 0.184047, 0.184399,
		32.081680, 21.692383, 30.323622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732269, 21.504625, 30.947176>,  <32.757504, 21.563549, 30.194544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732269, 21.504625, 30.947176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352516, 21.463852, 30.828331>,  <32.124664, 21.439388, 30.757023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352516, 21.463852, 30.828331>,  <32.732269, 21.504625, 30.947176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352516, 21.463852, 30.828331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205809, -0.512705, 0.833532,
		-0.237297, 0.852492, 0.465776,
		-0.949385, -0.101934, -0.297114,
		32.067699, 21.433271, 30.739197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301708, 21.721994, 31.597334>,  <32.732269, 21.504625, 30.947176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301708, 21.721994, 31.597334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069580, 21.517368, 31.343868>,  <31.930304, 21.394592, 31.191790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069580, 21.517368, 31.343868>,  <32.301708, 21.721994, 31.597334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069580, 21.517368, 31.343868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094844, -0.730336, 0.676472,
		-0.808847, 0.452670, 0.375309,
		-0.580320, -0.511566, -0.633663,
		31.895485, 21.363899, 31.153769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312611, 22.151646, 32.142235>,  <32.301708, 21.721994, 31.597334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312611, 22.151646, 32.142235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398636, 22.254463, 32.519100>,  <32.450253, 22.316154, 32.745220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398636, 22.254463, 32.519100>,  <32.312611, 22.151646, 32.142235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398636, 22.254463, 32.519100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046859, 0.960913, -0.272857,
		-0.975474, 0.102832, 0.194616,
		0.215068, 0.257046, 0.942164,
		32.463158, 22.331577, 32.801750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782196, 22.595901, 32.467442>,  <32.312611, 22.151646, 32.142235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782196, 22.595901, 32.467442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118771, 22.663200, 32.672840>,  <32.320717, 22.703579, 32.796078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118771, 22.663200, 32.672840>,  <31.782196, 22.595901, 32.467442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118771, 22.663200, 32.672840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080723, 0.978767, -0.188415,
		-0.534289, 0.117089, 0.837153,
		0.841439, 0.168245, 0.513492,
		32.371201, 22.713675, 32.826889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660936, 23.174631, 32.816349>,  <31.782196, 22.595901, 32.467442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660936, 23.174631, 32.816349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060925, 23.177670, 32.815804>,  <32.300919, 23.179493, 32.815475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060925, 23.177670, 32.815804>,  <31.660936, 23.174631, 32.816349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060925, 23.177670, 32.815804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007623, 0.944836, -0.327456,
		-0.001197, 0.327457, 0.944865,
		0.999970, 0.007595, -0.001366,
		32.360916, 23.179949, 32.815395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979870, 23.716768, 33.196484>,  <31.660936, 23.174631, 32.816349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979870, 23.716768, 33.196484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276703, 23.620651, 32.946178>,  <32.454803, 23.562981, 32.795998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276703, 23.620651, 32.946178>,  <31.979870, 23.716768, 33.196484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276703, 23.620651, 32.946178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014775, 0.939174, -0.343123,
		0.670147, 0.245380, 0.700494,
		0.742082, -0.240293, -0.625759,
		32.499329, 23.548563, 32.758450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520584, 24.248173, 33.248337>,  <31.979870, 23.716768, 33.196484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520584, 24.248173, 33.248337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601501, 24.069809, 32.899570>,  <32.650051, 23.962791, 32.690311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601501, 24.069809, 32.899570>,  <32.520584, 24.248173, 33.248337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601501, 24.069809, 32.899570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169344, 0.892842, -0.417320,
		0.964572, -0.063233, 0.256128,
		0.202293, -0.445909, -0.871919,
		32.662189, 23.936037, 32.637997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884983, 24.737106, 32.953239>,  <32.520584, 24.248173, 33.248337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884983, 24.737106, 32.953239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815994, 24.510204, 32.631126>,  <32.774601, 24.374063, 32.437859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815994, 24.510204, 32.631126>,  <32.884983, 24.737106, 32.953239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815994, 24.510204, 32.631126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100096, 0.803206, -0.587232,
		0.979916, -0.181884, -0.081747,
		-0.172468, -0.567256, -0.805280,
		32.764256, 24.340027, 32.389542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423244, 25.007448, 32.546394>,  <32.884983, 24.737106, 32.953239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423244, 25.007448, 32.546394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144077, 24.818428, 32.331135>,  <32.976578, 24.705015, 32.201981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144077, 24.818428, 32.331135>,  <33.423244, 25.007448, 32.546394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144077, 24.818428, 32.331135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033608, 0.728982, -0.683708,
		0.715372, -0.495269, -0.492901,
		-0.697935, -0.472540, -0.538138,
		32.934700, 24.676662, 32.169689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.701984, 20.222359, 33.387501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457287, 20.270039, 33.074692>,  <28.310469, 20.298647, 32.887005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457287, 20.270039, 33.074692>,  <28.701984, 20.222359, 33.387501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457287, 20.270039, 33.074692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086851, 0.992726, 0.083374,
		0.786273, -0.016916, -0.617648,
		-0.611745, 0.119199, -0.782023,
		28.273764, 20.305798, 32.840084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121073, 20.588415, 32.818546>,  <28.701984, 20.222359, 33.387501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121073, 20.588415, 32.818546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.726591, 20.647404, 32.788475>,  <28.489902, 20.682796, 32.770432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.726591, 20.647404, 32.788475>,  <29.121073, 20.588415, 32.818546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726591, 20.647404, 32.788475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159953, 0.965903, -0.203583,
		0.042589, -0.212799, -0.976167,
		-0.986206, 0.147470, -0.075175,
		28.430729, 20.691645, 32.765923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051914, 21.167370, 32.306293>,  <29.121073, 20.588415, 32.818546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051914, 21.167370, 32.306293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.706724, 21.149994, 32.507645>,  <28.499609, 21.139568, 32.628456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.706724, 21.149994, 32.507645>,  <29.051914, 21.167370, 32.306293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706724, 21.149994, 32.507645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076895, 0.995983, -0.045880,
		-0.499359, -0.078301, -0.862850,
		-0.862976, -0.043438, 0.503374,
		28.447832, 21.136963, 32.658657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698084, 21.658964, 31.843697>,  <29.051914, 21.167370, 32.306293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698084, 21.658964, 31.843697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.498629, 21.636654, 32.189701>,  <28.378956, 21.623268, 32.397305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.498629, 21.636654, 32.189701>,  <28.698084, 21.658964, 31.843697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498629, 21.636654, 32.189701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248666, 0.965187, -0.081110,
		-0.830376, -0.255545, -0.495149,
		-0.498639, -0.055775, 0.865013,
		28.349037, 21.619921, 32.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978584, 21.846989, 31.694714>,  <28.698084, 21.658964, 31.843697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978584, 21.846989, 31.694714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.060188, 21.923515, 32.078751>,  <28.109150, 21.969431, 32.309174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.060188, 21.923515, 32.078751>,  <27.978584, 21.846989, 31.694714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060188, 21.923515, 32.078751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356171, 0.928013, -0.109244,
		-0.911879, -0.319671, 0.257465,
		0.204009, 0.191319, 0.960093,
		28.121391, 21.980911, 32.366779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452393, 22.340317, 31.849823>,  <27.978584, 21.846989, 31.694714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452393, 22.340317, 31.849823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.695951, 22.373039, 32.165432>,  <27.842087, 22.392673, 32.354797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.695951, 22.373039, 32.165432>,  <27.452393, 22.340317, 31.849823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695951, 22.373039, 32.165432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255569, 0.961862, 0.097497,
		-0.750953, -0.261015, 0.606581,
		0.608896, 0.081807, 0.789021,
		27.878620, 22.397581, 32.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151566, 22.605701, 32.420723>,  <27.452393, 22.340317, 31.849823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151566, 22.605701, 32.420723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.533689, 22.686085, 32.507435>,  <27.762964, 22.734314, 32.559464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.533689, 22.686085, 32.507435>,  <27.151566, 22.605701, 32.420723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533689, 22.686085, 32.507435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207548, 0.978194, 0.007832,
		-0.210482, -0.052475, 0.976188,
		0.955312, 0.200957, 0.216783,
		27.820284, 22.746372, 32.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012753, 23.212528, 32.862507>,  <27.151566, 22.605701, 32.420723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012753, 23.212528, 32.862507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.398119, 23.221039, 32.755638>,  <27.629339, 23.226145, 32.691517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.398119, 23.221039, 32.755638>,  <27.012753, 23.212528, 32.862507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398119, 23.221039, 32.755638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018806, 0.999754, 0.011807,
		0.267356, -0.006350, 0.963577,
		0.963414, 0.021277, -0.267170,
		27.687143, 23.227423, 32.675488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326080, 23.790325, 33.190121>,  <27.012753, 23.212528, 32.862507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326080, 23.790325, 33.190121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.611547, 23.715050, 32.920227>,  <27.782827, 23.669886, 32.758289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.611547, 23.715050, 32.920227>,  <27.326080, 23.790325, 33.190121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611547, 23.715050, 32.920227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183717, 0.979803, -0.078954,
		0.675965, -0.067613, 0.733825,
		0.713666, -0.188187, -0.674735,
		27.825647, 23.658594, 32.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939770, 24.178747, 33.469162>,  <27.326080, 23.790325, 33.190121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939770, 24.178747, 33.469162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.950041, 24.104740, 33.076202>,  <27.956203, 24.060335, 32.840427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.950041, 24.104740, 33.076202>,  <27.939770, 24.178747, 33.469162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950041, 24.104740, 33.076202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044779, 0.981950, -0.183764,
		0.998667, -0.039272, 0.033501,
		0.025680, -0.185020, -0.982399,
		27.957745, 24.049234, 32.781483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347281, 24.675423, 33.288349>,  <27.939770, 24.178747, 33.469162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347281, 24.675423, 33.288349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.193472, 24.595173, 32.927929>,  <28.101187, 24.547024, 32.711678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.193472, 24.595173, 32.927929>,  <28.347281, 24.675423, 33.288349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193472, 24.595173, 32.927929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105534, 0.960144, -0.258818,
		0.917062, -0.194613, -0.348026,
		-0.384525, -0.200624, -0.901050,
		28.078115, 24.534986, 32.657616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797909, 25.061058, 32.853561>,  <28.347281, 24.675423, 33.288349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797909, 25.061058, 32.853561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.453074, 24.967312, 32.673836>,  <28.246172, 24.911064, 32.566002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.453074, 24.967312, 32.673836>,  <28.797909, 25.061058, 32.853561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453074, 24.967312, 32.673836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208103, 0.972149, -0.107796,
		0.462061, 0.000573, -0.886848,
		-0.862086, -0.234364, -0.449312,
		28.194448, 24.897003, 32.539043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447676, 25.254383, 32.531921>,  <28.797909, 25.061058, 32.853561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447676, 25.254383, 32.531921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.558138, 25.454163, 32.860382>,  <29.624416, 25.574030, 33.057457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.558138, 25.454163, 32.860382>,  <29.447676, 25.254383, 32.531921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558138, 25.454163, 32.860382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167956, -0.866306, 0.470430,
		0.946323, 0.008005, -0.323122,
		0.276157, 0.499449, 0.821150,
		29.640985, 25.603998, 33.106728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078928, 25.010826, 32.643879>,  <29.447676, 25.254383, 32.531921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078928, 25.010826, 32.643879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939205, 25.158394, 32.988411>,  <29.855371, 25.246935, 33.195129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939205, 25.158394, 32.988411>,  <30.078928, 25.010826, 32.643879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939205, 25.158394, 32.988411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098078, -0.899786, 0.425166,
		0.931861, 0.232991, 0.278118,
		-0.349307, 0.368919, 0.861327,
		29.834414, 25.269070, 33.246811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523129, 24.706572, 33.211544>,  <30.078928, 25.010826, 32.643879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523129, 24.706572, 33.211544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.201750, 24.827202, 33.416885>,  <30.008923, 24.899580, 33.540089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.201750, 24.827202, 33.416885>,  <30.523129, 24.706572, 33.211544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201750, 24.827202, 33.416885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022679, -0.846096, 0.532548,
		0.594946, 0.439516, 0.672953,
		-0.803446, 0.301576, 0.513349,
		29.960716, 24.917675, 33.570889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681755, 24.597063, 33.981796>,  <30.523129, 24.706572, 33.211544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681755, 24.597063, 33.981796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.283470, 24.631416, 33.995537>,  <30.044498, 24.652029, 34.003780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.283470, 24.631416, 33.995537>,  <30.681755, 24.597063, 33.981796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283470, 24.631416, 33.995537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036827, -0.708738, 0.704510,
		0.084853, 0.700224, 0.708863,
		-0.995713, 0.085885, 0.034351,
		29.984756, 24.657183, 34.005844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563042, 24.397675, 34.615017>,  <30.681755, 24.597063, 33.981796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563042, 24.397675, 34.615017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.200790, 24.382553, 34.446064>,  <29.983440, 24.373480, 34.344692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.200790, 24.382553, 34.446064>,  <30.563042, 24.397675, 34.615017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200790, 24.382553, 34.446064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266478, -0.724086, 0.636151,
		-0.329891, 0.688673, 0.645679,
		-0.905628, -0.037802, -0.422385,
		29.929102, 24.371212, 34.319347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020082, 24.509615, 35.140034>,  <30.563042, 24.397675, 34.615017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020082, 24.509615, 35.140034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865221, 24.296963, 34.838707>,  <29.772305, 24.169373, 34.657913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865221, 24.296963, 34.838707>,  <30.020082, 24.509615, 35.140034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865221, 24.296963, 34.838707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222045, -0.739224, 0.635802,
		-0.894878, 0.413424, 0.168149,
		-0.387155, -0.531629, -0.753314,
		29.749075, 24.137474, 34.612713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376768, 24.101053, 35.458893>,  <30.020082, 24.509615, 35.140034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376768, 24.101053, 35.458893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.474380, 23.918221, 35.116776>,  <29.532948, 23.808521, 34.911507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.474380, 23.918221, 35.116776>,  <29.376768, 24.101053, 35.458893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474380, 23.918221, 35.116776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243576, -0.882573, 0.402163,
		-0.938681, 0.110190, -0.326706,
		0.244028, -0.457081, -0.855294,
		29.547588, 23.781096, 34.860188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882288, 23.696047, 35.309750>,  <29.376768, 24.101053, 35.458893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882288, 23.696047, 35.309750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.177551, 23.516281, 35.108494>,  <29.354710, 23.408421, 34.987740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.177551, 23.516281, 35.108494>,  <28.882288, 23.696047, 35.309750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177551, 23.516281, 35.108494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232659, -0.869632, 0.435441,
		-0.633239, -0.204365, -0.746487,
		0.738158, -0.449416, -0.503138,
		29.398998, 23.381456, 34.957554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624397, 23.143967, 35.163864>,  <28.882288, 23.696047, 35.309750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624397, 23.143967, 35.163864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.006611, 23.056213, 35.085049>,  <29.235939, 23.003561, 35.037762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.006611, 23.056213, 35.085049>,  <28.624397, 23.143967, 35.163864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006611, 23.056213, 35.085049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117464, -0.896079, 0.428071,
		-0.270472, -0.385892, -0.882005,
		0.955535, -0.219385, -0.197036,
		29.293272, 22.990398, 35.025936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583332, 22.412781, 34.973286>,  <28.624397, 23.143967, 35.163864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583332, 22.412781, 34.973286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.966381, 22.466404, 35.075253>,  <29.196211, 22.498579, 35.136433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.966381, 22.466404, 35.075253>,  <28.583332, 22.412781, 34.973286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966381, 22.466404, 35.075253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012815, -0.864364, 0.502703,
		0.287737, -0.484667, -0.826018,
		0.957624, 0.134060, 0.254921,
		29.253668, 22.506622, 35.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956511, 21.745001, 34.802284>,  <28.583332, 22.412781, 34.973286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956511, 21.745001, 34.802284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174273, 21.950638, 35.067413>,  <29.304930, 22.074020, 35.226490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174273, 21.950638, 35.067413>,  <28.956511, 21.745001, 34.802284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174273, 21.950638, 35.067413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236940, -0.852247, 0.466405,
		0.804662, -0.096866, -0.585778,
		0.544407, 0.514093, 0.662820,
		29.337595, 22.104866, 35.266258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550299, 21.444122, 34.909222>,  <28.956511, 21.745001, 34.802284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550299, 21.444122, 34.909222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565254, 21.648773, 35.252579>,  <29.574226, 21.771564, 35.458591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565254, 21.648773, 35.252579>,  <29.550299, 21.444122, 34.909222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565254, 21.648773, 35.252579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370866, -0.804751, 0.463502,
		0.927934, 0.301020, -0.219832,
		0.037387, 0.511627, 0.858394,
		29.576471, 21.802261, 35.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211355, 21.205063, 35.241547>,  <29.550299, 21.444122, 34.909222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211355, 21.205063, 35.241547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026163, 21.368397, 35.556229>,  <29.915049, 21.466396, 35.745041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026163, 21.368397, 35.556229>,  <30.211355, 21.205063, 35.241547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026163, 21.368397, 35.556229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456461, -0.650985, 0.606516,
		0.759798, 0.639907, 0.115005,
		-0.462980, 0.408334, 0.786710,
		29.887268, 21.490896, 35.792240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731205, 21.487783, 35.591358>,  <30.211355, 21.205063, 35.241547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731205, 21.487783, 35.591358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.422304, 21.447121, 35.842209>,  <30.236963, 21.422722, 35.992722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.422304, 21.447121, 35.842209>,  <30.731205, 21.487783, 35.591358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422304, 21.447121, 35.842209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523354, -0.661412, 0.537248,
		0.360175, 0.743101, 0.563981,
		-0.772253, -0.101659, 0.627129,
		30.190628, 21.416622, 36.030346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196959, 21.057442, 35.149872>,  <30.731205, 21.487783, 35.591358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196959, 21.057442, 35.149872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.420979, 20.786278, 34.959389>,  <31.555391, 20.623579, 34.845097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.420979, 20.786278, 34.959389>,  <31.196959, 21.057442, 35.149872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420979, 20.786278, 34.959389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267160, 0.691894, -0.670752,
		0.784198, 0.248431, 0.568608,
		0.560052, -0.677912, -0.476211,
		31.588995, 20.582905, 34.816525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794188, 21.352343, 35.099216>,  <31.196959, 21.057442, 35.149872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794188, 21.352343, 35.099216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.806322, 21.054329, 34.832680>,  <31.813602, 20.875521, 34.672760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.806322, 21.054329, 34.832680>,  <31.794188, 21.352343, 35.099216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806322, 21.054329, 34.832680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444223, 0.607239, -0.658731,
		0.895402, -0.276020, 0.349382,
		0.030336, -0.745033, -0.666338,
		31.815422, 20.830818, 34.632778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450386, 21.301006, 34.886337>,  <31.794188, 21.352343, 35.099216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450386, 21.301006, 34.886337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221539, 21.156231, 34.591942>,  <32.084232, 21.069366, 34.415302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221539, 21.156231, 34.591942>,  <32.450386, 21.301006, 34.886337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221539, 21.156231, 34.591942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327494, 0.721907, -0.609588,
		0.751951, -0.589788, -0.294481,
		-0.572116, -0.361939, -0.735991,
		32.049904, 21.047649, 34.371143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916012, 21.188112, 34.336773>,  <32.450386, 21.301006, 34.886337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916012, 21.188112, 34.336773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.555836, 21.221981, 34.166111>,  <32.339729, 21.242302, 34.063713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.555836, 21.221981, 34.166111>,  <32.916012, 21.188112, 34.336773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555836, 21.221981, 34.166111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384106, 0.615085, -0.688574,
		0.204125, -0.783901, -0.586372,
		-0.900442, 0.084674, -0.426655,
		32.285702, 21.247383, 34.038113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022686, 21.136189, 33.628345>,  <32.916012, 21.188112, 34.336773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022686, 21.136189, 33.628345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665504, 21.315323, 33.646606>,  <32.451195, 21.422804, 33.657562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665504, 21.315323, 33.646606>,  <33.022686, 21.136189, 33.628345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665504, 21.315323, 33.646606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299382, 0.666548, -0.682704,
		-0.336170, -0.595952, -0.729267,
		-0.892950, 0.447834, 0.045656,
		32.397621, 21.449673, 33.660305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786720, 21.085592, 32.977585>,  <33.022686, 21.136189, 33.628345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786720, 21.085592, 32.977585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553009, 21.370270, 33.133591>,  <32.412781, 21.541077, 33.227192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553009, 21.370270, 33.133591>,  <32.786720, 21.085592, 32.977585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553009, 21.370270, 33.133591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358100, 0.657351, -0.663064,
		-0.728273, -0.247753, -0.638934,
		-0.584280, 0.711694, 0.390010,
		32.377724, 21.583778, 33.250595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478901, 21.411638, 32.391281>,  <32.786720, 21.085592, 32.977585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478901, 21.411638, 32.391281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458763, 21.674538, 32.692078>,  <32.446682, 21.832277, 32.872555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458763, 21.674538, 32.692078>,  <32.478901, 21.411638, 32.391281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458763, 21.674538, 32.692078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227726, 0.740666, -0.632103,
		-0.972423, 0.139424, -0.186962,
		-0.050346, 0.657248, 0.751991,
		32.443661, 21.871712, 32.917675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735989, 21.377129, 32.058876>,  <32.478901, 21.411638, 32.391281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735989, 21.377129, 32.058876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764769, 21.178951, 31.712612>,  <31.782038, 21.060045, 31.504854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764769, 21.178951, 31.712612>,  <31.735989, 21.377129, 32.058876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764769, 21.178951, 31.712612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001090, -0.867944, 0.496660,
		-0.997407, -0.034792, -0.062989,
		0.071951, -0.495441, -0.865656,
		31.786354, 21.030319, 31.452915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137840, 20.898506, 32.099854>,  <31.735989, 21.377129, 32.058876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137840, 20.898506, 32.099854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403143, 20.769981, 31.829491>,  <31.562325, 20.692867, 31.667273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403143, 20.769981, 31.829491>,  <31.137840, 20.898506, 32.099854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403143, 20.769981, 31.829491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033190, -0.914886, 0.402346,
		-0.747656, -0.244425, -0.617469,
		0.663257, -0.321310, -0.675907,
		31.602119, 20.673588, 31.626719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882139, 20.292210, 31.962759>,  <31.137840, 20.898506, 32.099854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882139, 20.292210, 31.962759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.241434, 20.255257, 31.790882>,  <31.457010, 20.233086, 31.687756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.241434, 20.255257, 31.790882>,  <30.882139, 20.292210, 31.962759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241434, 20.255257, 31.790882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024706, -0.986727, 0.160495,
		-0.438818, -0.133546, -0.888597,
		0.898236, -0.092381, -0.429694,
		31.510904, 20.227543, 31.661974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819288, 19.666759, 31.490229>,  <30.882139, 20.292210, 31.962759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819288, 19.666759, 31.490229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.211393, 19.731247, 31.535992>,  <31.446657, 19.769939, 31.563450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.211393, 19.731247, 31.535992>,  <30.819288, 19.666759, 31.490229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211393, 19.731247, 31.535992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151463, -0.984409, 0.089429,
		0.127043, -0.070335, -0.989401,
		0.980265, 0.161219, 0.114409,
		31.505472, 19.779613, 31.570314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042912, 19.164257, 31.112211>,  <30.819288, 19.666759, 31.490229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042912, 19.164257, 31.112211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.348595, 19.273739, 31.345818>,  <31.532005, 19.339428, 31.485981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.348595, 19.273739, 31.345818>,  <31.042912, 19.164257, 31.112211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348595, 19.273739, 31.345818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212887, -0.961787, 0.172177,
		0.608822, -0.007250, -0.793273,
		0.764208, 0.273703, 0.584014,
		31.577858, 19.355850, 31.521021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736126, 18.874588, 30.851313>,  <31.042912, 19.164257, 31.112211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736126, 18.874588, 30.851313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705614, 18.913303, 31.248264>,  <31.687307, 18.936533, 31.486435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705614, 18.913303, 31.248264>,  <31.736126, 18.874588, 30.851313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705614, 18.913303, 31.248264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225065, -0.967920, 0.111702,
		0.971353, 0.231870, 0.052049,
		-0.076279, 0.096787, 0.992378,
		31.682730, 18.942339, 31.545979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049294, 18.332075, 31.077187>,  <31.736126, 18.874588, 30.851313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049294, 18.332075, 31.077187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.901094, 18.411552, 31.440121>,  <31.812176, 18.459240, 31.657881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.901094, 18.411552, 31.440121>,  <32.049294, 18.332075, 31.077187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901094, 18.411552, 31.440121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054006, -0.970591, 0.234601,
		0.927263, 0.135920, 0.348868,
		-0.370495, 0.198695, 0.907333,
		31.789946, 18.471161, 31.712320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484600, 17.936781, 31.536098>,  <32.049294, 18.332075, 31.077187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484600, 17.936781, 31.536098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163727, 18.039772, 31.751583>,  <31.971203, 18.101566, 31.880875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163727, 18.039772, 31.751583>,  <32.484600, 17.936781, 31.536098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163727, 18.039772, 31.751583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115695, -0.952172, 0.282813,
		0.585764, 0.164541, 0.793604,
		-0.802182, 0.257478, 0.538711,
		31.923073, 18.117016, 31.913197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630077, 17.800648, 32.269440>,  <32.484600, 17.936781, 31.536098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630077, 17.800648, 32.269440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.236225, 17.781261, 32.202316>,  <31.999914, 17.769630, 32.162041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.236225, 17.781261, 32.202316>,  <32.630077, 17.800648, 32.269440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236225, 17.781261, 32.202316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033758, -0.889816, 0.455069,
		-0.171373, 0.453738, 0.874502,
		-0.984628, -0.048465, -0.167808,
		31.940836, 17.766722, 32.151974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.515991, 31.388466, 23.783102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128132, 31.429276, 23.871983>,  <31.895416, 31.453762, 23.925312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128132, 31.429276, 23.871983>,  <32.515991, 31.388466, 23.783102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128132, 31.429276, 23.871983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061639, -0.777427, 0.625946,
		0.236609, 0.620644, 0.747541,
		-0.969648, 0.102026, 0.222202,
		31.837238, 31.459883, 23.938643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340225, 31.456450, 24.598457>,  <32.515991, 31.388466, 23.783102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340225, 31.456450, 24.598457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042133, 31.308788, 24.376335>,  <31.863279, 31.220192, 24.243063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042133, 31.308788, 24.376335>,  <32.340225, 31.456450, 24.598457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042133, 31.308788, 24.376335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041088, -0.856615, 0.514318,
		-0.665545, 0.360467, 0.653540,
		-0.745226, -0.369154, -0.555304,
		31.818565, 31.198042, 24.209743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877157, 31.188004, 25.081161>,  <32.340225, 31.456450, 24.598457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877157, 31.188004, 25.081161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784224, 31.004814, 24.737934>,  <31.728462, 30.894899, 24.531998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784224, 31.004814, 24.737934>,  <31.877157, 31.188004, 25.081161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784224, 31.004814, 24.737934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022341, -0.884488, 0.466027,
		-0.972379, 0.089105, 0.215729,
		-0.232335, -0.457975, -0.858067,
		31.714523, 30.867422, 24.480515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344421, 30.787235, 25.210669>,  <31.877157, 31.188004, 25.081161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344421, 30.787235, 25.210669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494385, 30.623753, 24.877827>,  <31.584364, 30.525663, 24.678122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494385, 30.623753, 24.877827>,  <31.344421, 30.787235, 25.210669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494385, 30.623753, 24.877827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051526, -0.905373, 0.421481,
		-0.925630, -0.115140, -0.360488,
		0.374905, -0.408710, -0.832107,
		31.606857, 30.501141, 24.628195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907919, 30.288935, 25.068817>,  <31.344421, 30.787235, 25.210669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907919, 30.288935, 25.068817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242481, 30.199131, 24.868809>,  <31.443218, 30.145248, 24.748804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242481, 30.199131, 24.868809>,  <30.907919, 30.288935, 25.068817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242481, 30.199131, 24.868809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050423, -0.939910, 0.337677,
		-0.545785, -0.257223, -0.797468,
		0.836406, -0.224510, -0.500019,
		31.493402, 30.131779, 24.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866282, 29.623638, 24.782804>,  <30.907919, 30.288935, 25.068817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866282, 29.623638, 24.782804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263126, 29.673782, 24.783302>,  <31.501232, 29.703869, 24.783600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263126, 29.673782, 24.783302>,  <30.866282, 29.623638, 24.782804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263126, 29.673782, 24.783302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122110, -0.968522, 0.216920,
		0.028397, -0.215057, -0.976189,
		0.992110, 0.125362, 0.001242,
		31.560759, 29.711391, 24.783674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032873, 29.007126, 24.475071>,  <30.866282, 29.623638, 24.782804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032873, 29.007126, 24.475071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360727, 29.136894, 24.663940>,  <31.557440, 29.214756, 24.777262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360727, 29.136894, 24.663940>,  <31.032873, 29.007126, 24.475071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360727, 29.136894, 24.663940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240427, -0.942902, 0.230499,
		0.519993, -0.075402, -0.850836,
		0.819636, 0.324422, 0.472174,
		31.606619, 29.234221, 24.805592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450073, 28.473413, 24.436907>,  <31.032873, 29.007126, 24.475071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450073, 28.473413, 24.436907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642050, 28.679382, 24.721024>,  <31.757235, 28.802963, 24.891493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642050, 28.679382, 24.721024>,  <31.450073, 28.473413, 24.436907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642050, 28.679382, 24.721024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196763, -0.852186, 0.484834,
		0.854952, -0.092932, -0.510315,
		0.479939, 0.514920, 0.710292,
		31.786032, 28.833858, 24.934111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031033, 28.123318, 24.524338>,  <31.450073, 28.473413, 24.436907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031033, 28.123318, 24.524338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000751, 28.340782, 24.858692>,  <31.982584, 28.471262, 25.059305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000751, 28.340782, 24.858692>,  <32.031033, 28.123318, 24.524338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000751, 28.340782, 24.858692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204445, -0.812017, 0.546654,
		0.975947, 0.212273, -0.049681,
		-0.075698, 0.543662, 0.835884,
		31.978043, 28.503881, 25.109457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656200, 28.040865, 24.901049>,  <32.031033, 28.123318, 24.524338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656200, 28.040865, 24.901049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374649, 28.126549, 25.171947>,  <32.205719, 28.177959, 25.334486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374649, 28.126549, 25.171947>,  <32.656200, 28.040865, 24.901049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374649, 28.126549, 25.171947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261781, -0.808104, 0.527672,
		0.660318, 0.548710, 0.512735,
		-0.703883, 0.214207, 0.677248,
		32.163483, 28.190811, 25.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000614, 28.005606, 25.676142>,  <32.656200, 28.040865, 24.901049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000614, 28.005606, 25.676142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610203, 28.003193, 25.763165>,  <32.375957, 28.001745, 25.815378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610203, 28.003193, 25.763165>,  <33.000614, 28.005606, 25.676142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610203, 28.003193, 25.763165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143664, -0.768746, 0.623210,
		0.163486, 0.639526, 0.751185,
		-0.976029, -0.006032, 0.217556,
		32.317394, 28.001383, 25.828432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021408, 27.901457, 26.380379>,  <33.000614, 28.005606, 25.676142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021408, 27.901457, 26.380379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656456, 27.797199, 26.254120>,  <32.437485, 27.734646, 26.178366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656456, 27.797199, 26.254120>,  <33.021408, 27.901457, 26.380379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656456, 27.797199, 26.254120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006595, -0.780351, 0.625307,
		-0.409295, 0.568434, 0.713695,
		-0.912378, -0.260642, -0.315645,
		32.382744, 27.719007, 26.159426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909756, 28.538628, 26.820307>,  <33.021408, 27.901457, 26.380379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909756, 28.538628, 26.820307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975128, 28.675678, 27.190365>,  <33.014351, 28.757908, 27.412399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975128, 28.675678, 27.190365>,  <32.909756, 28.538628, 26.820307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975128, 28.675678, 27.190365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218894, 0.901788, -0.372644,
		-0.961964, 0.263412, 0.072384,
		0.163434, 0.342626, 0.925147,
		33.024158, 28.778465, 27.467909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674938, 29.295803, 26.705299>,  <32.909756, 28.538628, 26.820307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674938, 29.295803, 26.705299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884762, 29.274242, 27.045166>,  <33.010654, 29.261307, 27.249086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884762, 29.274242, 27.045166>,  <32.674938, 29.295803, 26.705299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884762, 29.274242, 27.045166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333082, 0.931441, -0.146543,
		-0.783517, 0.359879, 0.506545,
		0.524555, -0.053902, 0.849669,
		33.042130, 29.258072, 27.300066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440533, 29.826138, 27.053970>,  <32.674938, 29.295803, 26.705299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440533, 29.826138, 27.053970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802067, 29.738457, 27.200958>,  <33.018986, 29.685848, 27.289152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802067, 29.738457, 27.200958>,  <32.440533, 29.826138, 27.053970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802067, 29.738457, 27.200958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319188, 0.917357, -0.237855,
		-0.284964, 0.332274, 0.899105,
		0.903833, -0.219204, 0.367472,
		33.073215, 29.672695, 27.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661507, 30.428886, 27.241783>,  <32.440533, 29.826138, 27.053970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661507, 30.428886, 27.241783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005062, 30.224136, 27.248707>,  <33.211193, 30.101286, 27.252861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005062, 30.224136, 27.248707>,  <32.661507, 30.428886, 27.241783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005062, 30.224136, 27.248707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492037, 0.815277, -0.305323,
		0.142174, 0.270755, 0.952091,
		0.858886, -0.511873, 0.017310,
		33.262730, 30.070574, 27.253901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153625, 30.815609, 27.649073>,  <32.661507, 30.428886, 27.241783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153625, 30.815609, 27.649073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345703, 30.574440, 27.394234>,  <33.460949, 30.429739, 27.241331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345703, 30.574440, 27.394234>,  <33.153625, 30.815609, 27.649073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345703, 30.574440, 27.394234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478595, 0.788771, -0.385730,
		0.735089, -0.119685, 0.667323,
		0.480199, -0.602923, -0.637097,
		33.489761, 30.393562, 27.203104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855946, 31.034550, 27.724449>,  <33.153625, 30.815609, 27.649073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855946, 31.034550, 27.724449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826790, 30.825733, 27.384529>,  <33.809296, 30.700443, 27.180576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826790, 30.825733, 27.384529>,  <33.855946, 31.034550, 27.724449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826790, 30.825733, 27.384529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595175, 0.660946, -0.457074,
		0.800284, -0.539093, 0.262534,
		-0.072885, -0.522043, -0.849799,
		33.804924, 30.669121, 27.129589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509937, 31.125286, 27.390549>,  <33.855946, 31.034550, 27.724449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509937, 31.125286, 27.390549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237595, 31.032848, 27.112549>,  <34.074188, 30.977386, 26.945749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237595, 31.032848, 27.112549>,  <34.509937, 31.125286, 27.390549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237595, 31.032848, 27.112549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359116, 0.721688, -0.591779,
		0.638330, -0.652504, -0.408379,
		-0.680860, -0.231094, -0.695000,
		34.033337, 30.963520, 26.904049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847305, 31.209358, 26.696424>,  <34.509937, 31.125286, 27.390549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847305, 31.209358, 26.696424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457447, 31.236771, 26.611225>,  <34.223534, 31.253218, 26.560104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457447, 31.236771, 26.611225>,  <34.847305, 31.209358, 26.696424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457447, 31.236771, 26.611225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198561, 0.703728, -0.682159,
		0.103145, -0.707157, -0.699493,
		-0.974646, 0.068531, -0.213000,
		34.165054, 31.257330, 26.547325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827641, 31.551308, 26.002378>,  <34.847305, 31.209358, 26.696424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827641, 31.551308, 26.002378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446667, 31.586529, 26.119072>,  <34.218082, 31.607662, 26.189089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446667, 31.586529, 26.119072>,  <34.827641, 31.551308, 26.002378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446667, 31.586529, 26.119072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087571, 0.837874, -0.538794,
		-0.291879, -0.538715, -0.790312,
		-0.952438, 0.088055, 0.291733,
		34.160934, 31.612946, 26.206593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460762, 31.642387, 25.381485>,  <34.827641, 31.551308, 26.002378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460762, 31.642387, 25.381485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254589, 31.804710, 25.683384>,  <34.130886, 31.902105, 25.864523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254589, 31.804710, 25.683384>,  <34.460762, 31.642387, 25.381485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254589, 31.804710, 25.683384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079278, 0.854401, -0.513530,
		-0.853254, -0.324526, -0.408215,
		-0.515434, 0.405810, 0.754749,
		34.099960, 31.926453, 25.909809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881325, 31.995722, 25.129234>,  <34.460762, 31.642387, 25.381485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881325, 31.995722, 25.129234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927757, 32.152054, 25.494480>,  <33.955616, 32.245853, 25.713627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927757, 32.152054, 25.494480>,  <33.881325, 31.995722, 25.129234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927757, 32.152054, 25.494480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033766, 0.920350, -0.389635,
		-0.992665, 0.014397, 0.120033,
		0.116082, 0.390830, 0.913114,
		33.962582, 32.269302, 25.768414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332226, 32.466774, 25.147263>,  <33.881325, 31.995722, 25.129234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332226, 32.466774, 25.147263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588123, 32.585861, 25.430695>,  <33.741661, 32.657314, 25.600754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588123, 32.585861, 25.430695>,  <33.332226, 32.466774, 25.147263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588123, 32.585861, 25.430695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119141, 0.949198, -0.291252,
		-0.759295, 0.101907, 0.642718,
		0.639747, 0.297721, 0.708580,
		33.780048, 32.675179, 25.643269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946144, 33.042183, 25.690775>,  <33.332226, 32.466774, 25.147263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946144, 33.042183, 25.690775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344013, 33.079178, 25.708954>,  <33.582737, 33.101376, 25.719860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344013, 33.079178, 25.708954>,  <32.946144, 33.042183, 25.690775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344013, 33.079178, 25.708954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080201, 0.971689, -0.222233,
		-0.064715, 0.217405, 0.973934,
		0.994676, 0.092492, 0.045447,
		33.642414, 33.106926, 25.722588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081795, 33.631443, 26.181738>,  <32.946144, 33.042183, 25.690775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081795, 33.631443, 26.181738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406124, 33.580658, 25.953197>,  <33.600723, 33.550186, 25.816072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406124, 33.580658, 25.953197>,  <33.081795, 33.631443, 26.181738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406124, 33.580658, 25.953197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102735, 0.930159, -0.352492,
		0.576203, 0.344507, 0.741151,
		0.810824, -0.126964, -0.571353,
		33.649372, 33.542568, 25.781792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458042, 33.497314, 26.692614>,  <33.081795, 33.631443, 26.181738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458042, 33.497314, 26.692614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109051, 33.691631, 26.713753>,  <31.899656, 33.808220, 26.726437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109051, 33.691631, 26.713753>,  <32.458042, 33.497314, 26.692614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109051, 33.691631, 26.713753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014980, -0.134691, 0.990774,
		0.488425, 0.863636, 0.124792,
		-0.872477, 0.485788, 0.052849,
		31.847307, 33.837368, 26.729607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359264, 34.009621, 27.324980>,  <32.458042, 33.497314, 26.692614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359264, 34.009621, 27.324980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990534, 33.864697, 27.269897>,  <31.769295, 33.777740, 27.236849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990534, 33.864697, 27.269897>,  <32.359264, 34.009621, 27.324980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990534, 33.864697, 27.269897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007823, -0.372594, 0.927961,
		-0.387521, 0.854343, 0.346302,
		-0.921827, -0.362314, -0.137705,
		31.713985, 33.756001, 27.228586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988392, 34.256424, 27.850292>,  <32.359264, 34.009621, 27.324980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988392, 34.256424, 27.850292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788786, 33.931190, 27.730373>,  <31.669022, 33.736050, 27.658422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788786, 33.931190, 27.730373>,  <31.988392, 34.256424, 27.850292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788786, 33.931190, 27.730373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129012, -0.272389, 0.953499,
		-0.856937, 0.514487, 0.031029,
		-0.499015, -0.813085, -0.299795,
		31.639082, 33.687263, 27.640434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402967, 34.113586, 28.329567>,  <31.988392, 34.256424, 27.850292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402967, 34.113586, 28.329567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441101, 33.759720, 28.147015>,  <31.463982, 33.547401, 28.037483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441101, 33.759720, 28.147015>,  <31.402967, 34.113586, 28.329567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441101, 33.759720, 28.147015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070092, -0.463295, 0.883428,
		-0.992974, -0.052234, -0.106176,
		0.095336, -0.884663, -0.456379,
		31.469702, 33.494320, 28.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958223, 33.618347, 28.687998>,  <31.402967, 34.113586, 28.329567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958223, 33.618347, 28.687998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216917, 33.378174, 28.499866>,  <31.372133, 33.234070, 28.386988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216917, 33.378174, 28.499866>,  <30.958223, 33.618347, 28.687998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216917, 33.378174, 28.499866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158143, -0.497687, 0.852818,
		-0.746143, -0.625924, -0.226915,
		0.646732, -0.600439, -0.470331,
		31.410936, 33.198044, 28.358767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841585, 33.012115, 29.012800>,  <30.958223, 33.618347, 28.687998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841585, 33.012115, 29.012800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193188, 32.961739, 28.828850>,  <31.404150, 32.931511, 28.718479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193188, 32.961739, 28.828850>,  <30.841585, 33.012115, 29.012800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193188, 32.961739, 28.828850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227476, -0.736881, 0.636601,
		-0.419046, -0.664187, -0.619076,
		0.879008, -0.125940, -0.459874,
		31.456890, 32.923958, 28.690887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865480, 32.278923, 28.799835>,  <30.841585, 33.012115, 29.012800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865480, 32.278923, 28.799835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239443, 32.418865, 28.823677>,  <31.463820, 32.502831, 28.837982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239443, 32.418865, 28.823677>,  <30.865480, 32.278923, 28.799835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239443, 32.418865, 28.823677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220796, -0.704871, 0.674096,
		0.277852, -0.617055, -0.736234,
		0.934905, 0.349857, 0.059606,
		31.519915, 32.523823, 28.841558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233437, 31.674227, 28.970446>,  <30.865480, 32.278923, 28.799835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233437, 31.674227, 28.970446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499372, 31.956299, 29.069004>,  <31.658934, 32.125542, 29.128139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499372, 31.956299, 29.069004>,  <31.233437, 31.674227, 28.970446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499372, 31.956299, 29.069004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210819, -0.493576, 0.843764,
		0.716621, -0.509022, -0.476813,
		0.664838, 0.705181, 0.246395,
		31.698824, 32.167854, 29.142923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878452, 31.363144, 29.034904>,  <31.233437, 31.674227, 28.970446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878452, 31.363144, 29.034904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854296, 31.697563, 29.253033>,  <31.839802, 31.898214, 29.383909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854296, 31.697563, 29.253033>,  <31.878452, 31.363144, 29.034904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854296, 31.697563, 29.253033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300900, -0.505655, 0.808562,
		0.951742, 0.212918, -0.221029,
		-0.060393, 0.836050, 0.545320,
		31.836178, 31.948378, 29.416628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424915, 31.247150, 29.564445>,  <31.878452, 31.363144, 29.034904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424915, 31.247150, 29.564445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187523, 31.538551, 29.701302>,  <32.045086, 31.713392, 29.783415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187523, 31.538551, 29.701302>,  <32.424915, 31.247150, 29.564445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187523, 31.538551, 29.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018078, -0.437060, 0.899251,
		0.804643, 0.527506, 0.272558,
		-0.593484, 0.728503, 0.342141,
		32.009480, 31.757103, 29.803944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564140, 31.433846, 30.249952>,  <32.424915, 31.247150, 29.564445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564140, 31.433846, 30.249952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202858, 31.605244, 30.259838>,  <31.986088, 31.708082, 30.265770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202858, 31.605244, 30.259838>,  <32.564140, 31.433846, 30.249952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202858, 31.605244, 30.259838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180936, -0.432333, 0.883375,
		0.389207, 0.793398, 0.468016,
		-0.903206, 0.428496, 0.024713,
		31.931896, 31.733793, 30.267252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480595, 31.706329, 30.881523>,  <32.564140, 31.433846, 30.249952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480595, 31.706329, 30.881523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121391, 31.636787, 30.719852>,  <31.905870, 31.595062, 30.622850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121391, 31.636787, 30.719852>,  <32.480595, 31.706329, 30.881523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121391, 31.636787, 30.719852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226873, -0.604108, 0.763925,
		-0.376978, 0.777707, 0.503050,
		-0.898007, -0.173855, -0.404176,
		31.851990, 31.584631, 30.598600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943304, 31.650026, 31.476250>,  <32.480595, 31.706329, 30.881523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943304, 31.650026, 31.476250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733185, 31.492271, 31.174648>,  <31.607113, 31.397619, 30.993689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733185, 31.492271, 31.174648>,  <31.943304, 31.650026, 31.476250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733185, 31.492271, 31.174648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498573, -0.575415, 0.648323,
		-0.689555, 0.716488, 0.105634,
		-0.525300, -0.394388, -0.754002,
		31.575596, 31.373955, 30.948448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238255, 31.546087, 31.799908>,  <31.943304, 31.650026, 31.476250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238255, 31.546087, 31.799908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293989, 31.313026, 31.479633>,  <31.327431, 31.173189, 31.287468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293989, 31.313026, 31.479633>,  <31.238255, 31.546087, 31.799908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293989, 31.313026, 31.479633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356526, -0.783868, 0.508370,
		-0.923837, 0.214632, -0.316952,
		0.139336, -0.582653, -0.800688,
		31.335791, 31.138231, 31.239428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617399, 31.228792, 31.740553>,  <31.238255, 31.546087, 31.799908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617399, 31.228792, 31.740553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822620, 30.981487, 31.502384>,  <30.945753, 30.833105, 31.359484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822620, 30.981487, 31.502384>,  <30.617399, 31.228792, 31.740553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822620, 30.981487, 31.502384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446535, -0.784668, 0.430004,
		-0.733063, 0.045260, -0.678654,
		0.513056, -0.618262, -0.595421,
		30.976538, 30.796009, 31.323757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189211, 30.879696, 31.477728>,  <30.617399, 31.228792, 31.740553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189211, 30.879696, 31.477728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517437, 30.651257, 31.468620>,  <30.714373, 30.514193, 31.463156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517437, 30.651257, 31.468620>,  <30.189211, 30.879696, 31.477728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517437, 30.651257, 31.468620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492756, -0.727066, 0.478086,
		-0.289587, -0.381083, -0.878018,
		0.820567, -0.571096, -0.022768,
		30.763607, 30.479927, 31.461790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919735, 30.194046, 31.470484>,  <30.189211, 30.879696, 31.477728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919735, 30.194046, 31.470484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306608, 30.138664, 31.555706>,  <30.538733, 30.105434, 31.606838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306608, 30.138664, 31.555706>,  <29.919735, 30.194046, 31.470484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306608, 30.138664, 31.555706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215991, -0.889625, 0.402386,
		0.133826, -0.435198, -0.890333,
		0.967181, -0.138454, 0.213054,
		30.596762, 30.097128, 31.619621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106592, 29.597004, 31.078133>,  <29.919735, 30.194046, 31.470484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106592, 29.597004, 31.078133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361723, 29.631939, 31.384216>,  <30.514801, 29.652901, 31.567867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361723, 29.631939, 31.384216>,  <30.106592, 29.597004, 31.078133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361723, 29.631939, 31.384216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200917, -0.940278, 0.274791,
		0.743511, -0.329013, -0.582187,
		0.637827, 0.087339, 0.765211,
		30.553072, 29.658140, 31.613779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667202, 29.002163, 31.031931>,  <30.106592, 29.597004, 31.078133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667202, 29.002163, 31.031931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642502, 29.143353, 31.405369>,  <30.627682, 29.228067, 31.629431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642502, 29.143353, 31.405369>,  <30.667202, 29.002163, 31.031931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642502, 29.143353, 31.405369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375842, -0.874750, 0.305868,
		0.924624, -0.331995, 0.186680,
		-0.061751, 0.352975, 0.933593,
		30.623976, 29.249245, 31.685446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051376, 28.573046, 31.363819>,  <30.667202, 29.002163, 31.031931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051376, 28.573046, 31.363819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855083, 28.737148, 31.671291>,  <30.737309, 28.835609, 31.855774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855083, 28.737148, 31.671291>,  <31.051376, 28.573046, 31.363819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855083, 28.737148, 31.671291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248360, -0.911476, 0.327915,
		0.835164, -0.029991, 0.549182,
		-0.490732, 0.410258, 0.768681,
		30.707865, 28.860226, 31.901896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271139, 28.242390, 32.040337>,  <31.051376, 28.573046, 31.363819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271139, 28.242390, 32.040337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921701, 28.413223, 32.133659>,  <30.712038, 28.515722, 32.189655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921701, 28.413223, 32.133659>,  <31.271139, 28.242390, 32.040337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921701, 28.413223, 32.133659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280754, -0.833881, 0.475204,
		0.397504, 0.349633, 0.848379,
		-0.873594, 0.427082, 0.233311,
		30.659622, 28.541348, 32.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154558, 28.170578, 32.733208>,  <31.271139, 28.242390, 32.040337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154558, 28.170578, 32.733208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803682, 28.221458, 32.548016>,  <30.593157, 28.251986, 32.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803682, 28.221458, 32.548016>,  <31.154558, 28.170578, 32.733208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803682, 28.221458, 32.548016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309893, -0.886523, 0.343574,
		-0.366744, 0.444856, 0.817069,
		-0.877192, 0.127200, -0.462985,
		30.540525, 28.259619, 32.409119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640306, 28.191896, 33.176571>,  <31.154558, 28.170578, 32.733208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640306, 28.191896, 33.176571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476479, 28.052143, 32.839481>,  <30.378181, 27.968290, 32.637226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476479, 28.052143, 32.839481>,  <30.640306, 28.191896, 33.176571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476479, 28.052143, 32.839481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464832, -0.714926, 0.522313,
		-0.784974, 0.605648, 0.130406,
		-0.409569, -0.349386, -0.842724,
		30.353607, 27.947327, 32.586666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051498, 27.970266, 33.490158>,  <30.640306, 28.191896, 33.176571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051498, 27.970266, 33.490158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039608, 27.817284, 33.120762>,  <30.032473, 27.725494, 32.899124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039608, 27.817284, 33.120762>,  <30.051498, 27.970266, 33.490158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039608, 27.817284, 33.120762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420940, -0.833191, 0.358610,
		-0.906601, 0.399397, -0.136223,
		-0.029728, -0.382459, -0.923494,
		30.030689, 27.702545, 32.843712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526176, 27.563080, 33.473679>,  <30.051498, 27.970266, 33.490158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526176, 27.563080, 33.473679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682020, 27.423717, 33.132664>,  <29.775526, 27.340099, 32.928055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682020, 27.423717, 33.132664>,  <29.526176, 27.563080, 33.473679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682020, 27.423717, 33.132664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301784, -0.922871, 0.239238,
		-0.870133, 0.164073, -0.464702,
		0.389608, -0.348408, -0.852535,
		29.798903, 27.319195, 32.876904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054779, 27.140663, 33.103302>,  <29.526176, 27.563080, 33.473679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054779, 27.140663, 33.103302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415869, 27.007568, 32.994217>,  <29.632523, 26.927711, 32.928764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415869, 27.007568, 32.994217>,  <29.054779, 27.140663, 33.103302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415869, 27.007568, 32.994217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266039, -0.929910, 0.253951,
		-0.338098, -0.156696, -0.927974,
		0.902725, -0.332738, -0.272713,
		29.686686, 26.907747, 32.912403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917770, 26.555723, 32.699577>,  <29.054779, 27.140663, 33.103302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917770, 26.555723, 32.699577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290283, 26.544559, 32.844868>,  <29.513790, 26.537861, 32.932041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290283, 26.544559, 32.844868>,  <28.917770, 26.555723, 32.699577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290283, 26.544559, 32.844868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168367, -0.917159, 0.361208,
		0.323058, -0.397542, -0.858833,
		0.931282, -0.027908, 0.363228,
		29.569668, 26.536186, 32.953835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882406, 25.895384, 32.746914>,  <28.917770, 26.555723, 32.699577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882406, 25.895384, 32.746914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241650, 25.971527, 32.905491>,  <29.457195, 26.017212, 33.000637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241650, 25.971527, 32.905491>,  <28.882406, 25.895384, 32.746914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241650, 25.971527, 32.905491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038492, -0.932030, 0.360331,
		0.438083, -0.308357, -0.844393,
		0.898110, 0.190357, 0.396438,
		29.511082, 26.028635, 33.024422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835653, 25.413179, 32.107422>,  <28.882406, 25.895384, 32.746914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835653, 25.413179, 32.107422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457787, 25.310535, 32.189156>,  <28.231066, 25.248949, 32.238197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457787, 25.310535, 32.189156>,  <28.835653, 25.413179, 32.107422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457787, 25.310535, 32.189156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290869, 0.943265, -0.160145,
		-0.151647, -0.210719, -0.965713,
		-0.944668, -0.256611, 0.204335,
		28.174385, 25.233553, 32.250458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474613, 25.497335, 31.451679>,  <28.835653, 25.413179, 32.107422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474613, 25.497335, 31.451679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200457, 25.481510, 31.742519>,  <28.035963, 25.472015, 31.917025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200457, 25.481510, 31.742519>,  <28.474613, 25.497335, 31.451679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200457, 25.481510, 31.742519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466144, 0.790951, -0.396367,
		-0.559420, -0.610600, -0.560551,
		-0.685389, -0.039562, 0.727101,
		27.994841, 25.469641, 31.960649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845495, 25.637175, 31.160463>,  <28.474613, 25.497335, 31.451679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845495, 25.637175, 31.160463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815836, 25.749397, 31.543251>,  <27.798040, 25.816730, 31.772924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815836, 25.749397, 31.543251>,  <27.845495, 25.637175, 31.160463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815836, 25.749397, 31.543251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422942, 0.860187, -0.284955,
		-0.903118, -0.425871, 0.054878,
		-0.074149, 0.280558, 0.956969,
		27.793591, 25.833565, 31.830341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125259, 25.745108, 31.286234>,  <27.845495, 25.637175, 31.160463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125259, 25.745108, 31.286234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324707, 25.949272, 31.566479>,  <27.444376, 26.071772, 31.734625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324707, 25.949272, 31.566479>,  <27.125259, 25.745108, 31.286234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324707, 25.949272, 31.566479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518602, 0.823301, -0.230710,
		-0.694573, -0.248302, 0.675215,
		0.498619, 0.510413, 0.700612,
		27.474293, 26.102396, 31.776663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578320, 26.138369, 31.585167>,  <27.125259, 25.745108, 31.286234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578320, 26.138369, 31.585167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903595, 26.335552, 31.708916>,  <27.098761, 26.453863, 31.783165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903595, 26.335552, 31.708916>,  <26.578320, 26.138369, 31.585167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903595, 26.335552, 31.708916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453288, 0.869866, -0.194585,
		-0.365037, 0.017999, 0.930819,
		0.813190, 0.492960, 0.309374,
		27.147552, 26.483440, 31.801727>
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
