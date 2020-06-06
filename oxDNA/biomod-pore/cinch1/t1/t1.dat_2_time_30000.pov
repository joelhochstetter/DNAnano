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
	<42.415592, 33.554977, 23.174124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492622, 33.178879, 23.061806>,  <42.538841, 32.953220, 22.994415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492622, 33.178879, 23.061806>,  <42.415592, 33.554977, 23.174124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492622, 33.178879, 23.061806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746225, 0.045504, -0.664138,
		0.637232, 0.337433, -0.692874,
		0.192574, -0.940249, -0.280797,
		42.550396, 32.896805, 22.977566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736408, 33.392902, 22.552162>,  <42.415592, 33.554977, 23.174124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736408, 33.392902, 22.552162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461857, 33.123249, 22.661289>,  <42.297127, 32.961456, 22.726765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461857, 33.123249, 22.661289>,  <42.736408, 33.392902, 22.552162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461857, 33.123249, 22.661289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665080, 0.430115, -0.610466,
		0.294190, -0.600459, -0.743574,
		-0.686382, -0.674129, 0.272817,
		42.255943, 32.921009, 22.743135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604092, 33.105854, 21.984905>,  <42.736408, 33.392902, 22.552162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604092, 33.105854, 21.984905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259750, 33.052055, 22.181206>,  <42.053146, 33.019775, 22.298986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259750, 33.052055, 22.181206>,  <42.604092, 33.105854, 21.984905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259750, 33.052055, 22.181206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493217, 0.457743, -0.739735,
		-0.125147, -0.878853, -0.460387,
		-0.860858, -0.134495, 0.490750,
		42.001492, 33.011707, 22.328430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993683, 32.717159, 21.611279>,  <42.604092, 33.105854, 21.984905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993683, 32.717159, 21.611279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918026, 33.020416, 21.860901>,  <41.872631, 33.202370, 22.010674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918026, 33.020416, 21.860901>,  <41.993683, 32.717159, 21.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918026, 33.020416, 21.860901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461778, 0.492193, -0.737907,
		-0.866595, -0.427742, 0.257001,
		-0.189140, 0.758145, 0.624054,
		41.861282, 33.247860, 22.048117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200871, 32.811508, 21.680849>,  <41.993683, 32.717159, 21.611279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200871, 32.811508, 21.680849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427559, 33.137260, 21.730816>,  <41.563572, 33.332714, 21.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427559, 33.137260, 21.730816>,  <41.200871, 32.811508, 21.680849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427559, 33.137260, 21.730816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571049, 0.497543, -0.652958,
		-0.593911, 0.298711, 0.747022,
		0.566721, 0.814385, 0.124918,
		41.597576, 33.381577, 21.768291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915237, 33.439342, 22.033777>,  <41.200871, 32.811508, 21.680849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915237, 33.439342, 22.033777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163570, 33.550358, 21.740509>,  <41.312569, 33.616966, 21.564548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163570, 33.550358, 21.740509>,  <40.915237, 33.439342, 22.033777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163570, 33.550358, 21.740509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721754, 0.567417, -0.396369,
		0.306005, 0.775248, 0.552586,
		0.620831, 0.277541, -0.733171,
		41.349819, 33.633621, 21.520557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337681, 33.839439, 22.238472>,  <40.915237, 33.439342, 22.033777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337681, 33.839439, 22.238472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036911, 34.101192, 22.206470>,  <39.856449, 34.258244, 22.187269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036911, 34.101192, 22.206470>,  <40.337681, 33.839439, 22.238472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036911, 34.101192, 22.206470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125218, -0.260912, -0.957207,
		-0.647251, -0.709727, 0.278126,
		-0.751922, 0.654379, -0.080005,
		39.811333, 34.297504, 22.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779739, 33.396515, 21.974850>,  <40.337681, 33.839439, 22.238472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779739, 33.396515, 21.974850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678017, 33.775368, 21.896606>,  <39.616982, 34.002682, 21.849661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678017, 33.775368, 21.896606>,  <39.779739, 33.396515, 21.974850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678017, 33.775368, 21.896606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248773, -0.259516, -0.933147,
		-0.934579, -0.188648, 0.301620,
		-0.254311, 0.947134, -0.195608,
		39.601723, 34.059509, 21.837923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164684, 33.308689, 21.521250>,  <39.779739, 33.396515, 21.974850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164684, 33.308689, 21.521250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303833, 33.680126, 21.469551>,  <39.387321, 33.902988, 21.438532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303833, 33.680126, 21.469551>,  <39.164684, 33.308689, 21.521250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303833, 33.680126, 21.469551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100976, -0.099947, -0.989856,
		-0.932088, 0.357396, 0.058996,
		0.347874, 0.928590, -0.129248,
		39.408195, 33.958702, 21.430777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805531, 33.498199, 20.902527>,  <39.164684, 33.308689, 21.521250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805531, 33.498199, 20.902527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098976, 33.768284, 20.933247>,  <39.275043, 33.930336, 20.951677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098976, 33.768284, 20.933247>,  <38.805531, 33.498199, 20.902527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098976, 33.768284, 20.933247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131712, -0.030411, -0.990821,
		-0.666678, 0.736997, -0.111243,
		0.733616, 0.675211, 0.076797,
		39.319061, 33.970848, 20.956285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628593, 33.974556, 20.326338>,  <38.805531, 33.498199, 20.902527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628593, 33.974556, 20.326338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013271, 34.001194, 20.432701>,  <39.244080, 34.017178, 20.496519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013271, 34.001194, 20.432701>,  <38.628593, 33.974556, 20.326338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013271, 34.001194, 20.432701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266867, -0.005752, -0.963716,
		-0.062650, 0.997763, -0.023303,
		0.961695, 0.066595, 0.265910,
		39.301781, 34.021172, 20.512474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803982, 34.442127, 19.945787>,  <38.628593, 33.974556, 20.326338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803982, 34.442127, 19.945787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129307, 34.240314, 20.061695>,  <39.324501, 34.119225, 20.131239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129307, 34.240314, 20.061695>,  <38.803982, 34.442127, 19.945787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129307, 34.240314, 20.061695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273442, -0.108144, -0.955790,
		0.513567, 0.856591, 0.050006,
		0.813313, -0.504536, 0.289767,
		39.373302, 34.088955, 20.148624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354446, 34.716476, 19.566534>,  <38.803982, 34.442127, 19.945787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354446, 34.716476, 19.566534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483936, 34.356396, 19.683048>,  <39.561630, 34.140347, 19.752956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483936, 34.356396, 19.683048>,  <39.354446, 34.716476, 19.566534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483936, 34.356396, 19.683048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351354, -0.171474, -0.920406,
		0.878495, 0.400302, 0.260778,
		0.323724, -0.900197, 0.291286,
		39.581055, 34.086338, 19.770433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844265, 34.525581, 19.218161>,  <39.354446, 34.716476, 19.566534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844265, 34.525581, 19.218161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753841, 34.146492, 19.308247>,  <39.699589, 33.919041, 19.362297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753841, 34.146492, 19.308247>,  <39.844265, 34.525581, 19.218161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753841, 34.146492, 19.308247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305166, -0.288461, -0.907559,
		0.925079, -0.136435, 0.354422,
		-0.226060, -0.947721, 0.225214,
		39.686024, 33.862175, 19.375811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423965, 34.194180, 19.034073>,  <39.844265, 34.525581, 19.218161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423965, 34.194180, 19.034073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122833, 33.931595, 19.053295>,  <39.942154, 33.774044, 19.064829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122833, 33.931595, 19.053295>,  <40.423965, 34.194180, 19.034073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122833, 33.931595, 19.053295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091300, -0.176450, -0.980066,
		0.651856, -0.733432, 0.192772,
		-0.752827, -0.656462, 0.048058,
		39.896984, 33.734657, 19.067713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663654, 33.697395, 18.637482>,  <40.423965, 34.194180, 19.034073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663654, 33.697395, 18.637482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273365, 33.614925, 18.667023>,  <40.039192, 33.565441, 18.684748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273365, 33.614925, 18.667023>,  <40.663654, 33.697395, 18.637482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273365, 33.614925, 18.667023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019701, -0.253211, -0.967210,
		0.218118, -0.945185, 0.243002,
		-0.975724, -0.206179, 0.073851,
		39.980648, 33.553070, 18.689178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596607, 32.976173, 18.284916>,  <40.663654, 33.697395, 18.637482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596607, 32.976173, 18.284916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240513, 33.157303, 18.304646>,  <40.026855, 33.265980, 18.316483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240513, 33.157303, 18.304646>,  <40.596607, 32.976173, 18.284916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240513, 33.157303, 18.304646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118385, -0.125451, -0.985011,
		-0.439847, -0.882731, 0.165288,
		-0.890236, 0.452822, 0.049323,
		39.973442, 33.293148, 18.319443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271587, 32.564453, 17.868263>,  <40.596607, 32.976173, 18.284916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271587, 32.564453, 17.868263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041477, 32.891243, 17.884315>,  <39.903412, 33.087315, 17.893946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041477, 32.891243, 17.884315>,  <40.271587, 32.564453, 17.868263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041477, 32.891243, 17.884315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296955, -0.162888, -0.940896,
		-0.762149, -0.553195, 0.336310,
		-0.575280, 0.816972, 0.040128,
		39.868893, 33.136333, 17.896355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631268, 32.313499, 17.538494>,  <40.271587, 32.564453, 17.868263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631268, 32.313499, 17.538494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683723, 32.709854, 17.526199>,  <39.715195, 32.947666, 17.518824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683723, 32.709854, 17.526199>,  <39.631268, 32.313499, 17.538494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683723, 32.709854, 17.526199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094995, -0.018301, -0.995309,
		-0.986803, 0.133440, 0.091730,
		0.131136, 0.990888, -0.030735,
		39.723064, 33.007122, 17.516979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065163, 32.521099, 17.166128>,  <39.631268, 32.313499, 17.538494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065163, 32.521099, 17.166128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326439, 32.823673, 17.152615>,  <39.483204, 33.005219, 17.144506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326439, 32.823673, 17.152615>,  <39.065163, 32.521099, 17.166128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326439, 32.823673, 17.152615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038433, -0.011438, -0.999196,
		-0.756215, 0.653966, 0.021601,
		0.653193, 0.756437, -0.033783,
		39.522396, 33.050606, 17.142479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622166, 33.028885, 16.873846>,  <39.065163, 32.521099, 17.166128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622166, 33.028885, 16.873846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003075, 33.142056, 16.828011>,  <39.231621, 33.209957, 16.800508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003075, 33.142056, 16.828011>,  <38.622166, 33.028885, 16.873846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003075, 33.142056, 16.828011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178103, 0.210103, -0.961320,
		-0.247911, 0.935845, 0.250465,
		0.952271, 0.282931, -0.114590,
		39.288757, 33.226936, 16.793634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591312, 33.665447, 16.579418>,  <38.622166, 33.028885, 16.873846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591312, 33.665447, 16.579418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975048, 33.571899, 16.516201>,  <39.205288, 33.515770, 16.478271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975048, 33.571899, 16.516201>,  <38.591312, 33.665447, 16.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975048, 33.571899, 16.516201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096836, 0.253237, -0.962545,
		0.265135, 0.938709, 0.220293,
		0.959336, -0.233872, -0.158043,
		39.262848, 33.501740, 16.468788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901127, 34.169373, 16.207014>,  <38.591312, 33.665447, 16.579418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901127, 34.169373, 16.207014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142883, 33.863129, 16.118881>,  <39.287937, 33.679382, 16.066002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142883, 33.863129, 16.118881>,  <38.901127, 34.169373, 16.207014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142883, 33.863129, 16.118881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048917, 0.240377, -0.969446,
		0.795184, 0.596703, 0.107831,
		0.604392, -0.765613, -0.220333,
		39.324200, 33.633446, 16.052782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493126, 34.392406, 15.786788>,  <38.901127, 34.169373, 16.207014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493126, 34.392406, 15.786788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442360, 34.008892, 15.685111>,  <39.411900, 33.778782, 15.624104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442360, 34.008892, 15.685111>,  <39.493126, 34.392406, 15.786788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442360, 34.008892, 15.685111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098769, 0.267208, -0.958564,
		0.986984, -0.096550, -0.128612,
		-0.126915, -0.958790, -0.254193,
		39.404285, 33.721256, 15.608853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877853, 34.354031, 15.245728>,  <39.493126, 34.392406, 15.786788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877853, 34.354031, 15.245728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658401, 34.021111, 15.214009>,  <39.526730, 33.821358, 15.194979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658401, 34.021111, 15.214009>,  <39.877853, 34.354031, 15.245728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658401, 34.021111, 15.214009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238306, 0.246581, -0.939366,
		0.801386, -0.496464, -0.333623,
		-0.548626, -0.832299, -0.079296,
		39.493813, 33.771420, 15.190221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075069, 33.941433, 14.644077>,  <39.877853, 34.354031, 15.245728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075069, 33.941433, 14.644077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687641, 33.900200, 14.734628>,  <39.455185, 33.875458, 14.788959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687641, 33.900200, 14.734628>,  <40.075069, 33.941433, 14.644077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687641, 33.900200, 14.734628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247941, 0.473175, -0.845359,
		-0.019972, -0.874917, -0.483862,
		-0.968570, -0.103086, 0.226377,
		39.397072, 33.869274, 14.802541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618080, 33.642998, 14.153813>,  <40.075069, 33.941433, 14.644077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618080, 33.642998, 14.153813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429733, 33.937046, 14.348907>,  <39.316723, 34.113476, 14.465962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429733, 33.937046, 14.348907>,  <39.618080, 33.642998, 14.153813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429733, 33.937046, 14.348907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191051, 0.454769, -0.869876,
		-0.861267, -0.502781, -0.073692,
		-0.470870, 0.735117, 0.487734,
		39.288471, 34.157581, 14.495227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928329, 33.660473, 13.965549>,  <39.618080, 33.642998, 14.153813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928329, 33.660473, 13.965549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034550, 34.024418, 14.093066>,  <39.098282, 34.242786, 14.169577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034550, 34.024418, 14.093066>,  <38.928329, 33.660473, 13.965549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034550, 34.024418, 14.093066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246048, 0.383676, -0.890086,
		-0.932171, 0.157926, 0.325756,
		0.265552, 0.909863, 0.318795,
		39.114216, 34.297379, 14.188704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376701, 34.019756, 13.912544>,  <38.928329, 33.660473, 13.965549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376701, 34.019756, 13.912544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700138, 34.237431, 13.823064>,  <38.894199, 34.368034, 13.769376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700138, 34.237431, 13.823064>,  <38.376701, 34.019756, 13.912544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700138, 34.237431, 13.823064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291931, 0.040965, -0.955562,
		-0.510842, 0.837962, 0.191989,
		0.808589, 0.544189, -0.223701,
		38.942715, 34.400688, 13.755954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662891, 33.944427, 13.513339>,  <38.376701, 34.019756, 13.912544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662891, 33.944427, 13.513339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729427, 34.255783, 13.271199>,  <37.769348, 34.442596, 13.125916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729427, 34.255783, 13.271199>,  <37.662891, 33.944427, 13.513339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729427, 34.255783, 13.271199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965151, 0.254297, 0.061785,
		0.202031, 0.573975, 0.793559,
		0.166337, 0.778387, -0.605348,
		37.779327, 34.489300, 13.089595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414276, 34.590626, 13.814445>,  <37.662891, 33.944427, 13.513339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414276, 34.590626, 13.814445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398426, 34.611416, 13.415299>,  <37.388916, 34.623890, 13.175813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398426, 34.611416, 13.415299>,  <37.414276, 34.590626, 13.814445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398426, 34.611416, 13.415299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945272, 0.321734, 0.054290,
		0.323868, 0.945403, 0.036379,
		-0.039622, 0.051971, -0.997862,
		37.386539, 34.627007, 13.115941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979118, 34.221878, 13.297911>,  <37.414276, 34.590626, 13.814445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979118, 34.221878, 13.297911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583313, 34.252216, 13.347081>,  <36.345829, 34.270420, 13.376583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583313, 34.252216, 13.347081>,  <36.979118, 34.221878, 13.297911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583313, 34.252216, 13.347081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143972, 0.449392, 0.881657,
		0.011626, 0.890110, -0.455598,
		-0.989513, 0.075843, 0.122926,
		36.286457, 34.274971, 13.383959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781021, 34.963303, 13.458503>,  <36.979118, 34.221878, 13.297911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781021, 34.963303, 13.458503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577278, 34.661633, 13.624286>,  <36.455032, 34.480633, 13.723755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577278, 34.661633, 13.624286>,  <36.781021, 34.963303, 13.458503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577278, 34.661633, 13.624286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098367, 0.427433, 0.898679,
		-0.854912, 0.498522, -0.143533,
		-0.509362, -0.754172, 0.414456,
		36.424469, 34.435379, 13.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396431, 35.295456, 13.873871>,  <36.781021, 34.963303, 13.458503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396431, 35.295456, 13.873871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432549, 34.929573, 14.031432>,  <36.454220, 34.710045, 14.125969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432549, 34.929573, 14.031432>,  <36.396431, 35.295456, 13.873871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432549, 34.929573, 14.031432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064257, 0.389345, 0.918848,
		-0.993840, -0.108279, -0.023620,
		0.090295, -0.914706, 0.393904,
		36.459637, 34.655163, 14.149603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877979, 35.176231, 14.455112>,  <36.396431, 35.295456, 13.873871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877979, 35.176231, 14.455112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218075, 34.966690, 14.475801>,  <36.422131, 34.840965, 14.488214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218075, 34.966690, 14.475801>,  <35.877979, 35.176231, 14.455112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218075, 34.966690, 14.475801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131899, 0.307135, 0.942481,
		-0.509606, -0.794511, 0.330234,
		0.850238, -0.523852, 0.051722,
		36.473145, 34.809536, 14.491317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769676, 34.855881, 15.087720>,  <35.877979, 35.176231, 14.455112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769676, 34.855881, 15.087720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147560, 34.905979, 14.966506>,  <36.374290, 34.936039, 14.893778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147560, 34.905979, 14.966506>,  <35.769676, 34.855881, 15.087720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147560, 34.905979, 14.966506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271408, 0.219918, 0.937003,
		0.183992, -0.967446, 0.173769,
		0.944714, 0.125239, -0.303035,
		36.430973, 34.943554, 14.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283623, 34.444599, 15.488792>,  <35.769676, 34.855881, 15.087720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283623, 34.444599, 15.488792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533115, 34.730145, 15.361442>,  <36.682812, 34.901470, 15.285031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533115, 34.730145, 15.361442>,  <36.283623, 34.444599, 15.488792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533115, 34.730145, 15.361442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334631, 0.124233, 0.934125,
		0.706388, -0.689179, -0.161392,
		0.623729, 0.713862, -0.318378,
		36.720234, 34.944302, 15.265928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864227, 34.197853, 15.762717>,  <36.283623, 34.444599, 15.488792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864227, 34.197853, 15.762717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906467, 34.593105, 15.718101>,  <36.931812, 34.830257, 15.691331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906467, 34.593105, 15.718101>,  <36.864227, 34.197853, 15.762717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906467, 34.593105, 15.718101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268801, 0.079628, 0.959899,
		0.957390, -0.131348, -0.257202,
		0.105600, 0.988133, -0.111541,
		36.938148, 34.889545, 15.684638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416779, 34.340420, 16.182285>,  <36.864227, 34.197853, 15.762717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416779, 34.340420, 16.182285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217628, 34.684204, 16.135899>,  <37.098137, 34.890476, 16.108067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217628, 34.684204, 16.135899>,  <37.416779, 34.340420, 16.182285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217628, 34.684204, 16.135899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162103, 0.223586, 0.961110,
		0.851963, 0.459716, -0.250639,
		-0.497877, 0.859459, -0.115965,
		37.068264, 34.942043, 16.101109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778389, 34.789558, 16.662144>,  <37.416779, 34.340420, 16.182285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778389, 34.789558, 16.662144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451824, 35.008430, 16.588314>,  <37.255886, 35.139751, 16.544016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451824, 35.008430, 16.588314>,  <37.778389, 34.789558, 16.662144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451824, 35.008430, 16.588314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092818, 0.439808, 0.893283,
		0.569961, 0.712155, -0.409853,
		-0.816413, 0.547178, -0.184573,
		37.206902, 35.172585, 16.532942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936405, 35.410866, 16.895842>,  <37.778389, 34.789558, 16.662144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936405, 35.410866, 16.895842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537052, 35.427681, 16.880516>,  <37.297440, 35.437771, 16.871321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537052, 35.427681, 16.880516>,  <37.936405, 35.410866, 16.895842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537052, 35.427681, 16.880516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013854, 0.473601, 0.880630,
		0.055161, 0.879736, -0.472252,
		-0.998381, 0.042034, -0.038312,
		37.237537, 35.440292, 16.869022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792706, 36.075787, 17.215914>,  <37.936405, 35.410866, 16.895842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792706, 36.075787, 17.215914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440456, 35.889305, 17.249756>,  <37.229107, 35.777416, 17.270061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440456, 35.889305, 17.249756>,  <37.792706, 36.075787, 17.215914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440456, 35.889305, 17.249756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131254, 0.411594, 0.901866,
		-0.455279, 0.783098, -0.423650,
		-0.880621, -0.466206, 0.084605,
		37.176270, 35.749443, 17.275137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204708, 36.615414, 17.273001>,  <37.792706, 36.075787, 17.215914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204708, 36.615414, 17.273001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108974, 36.261559, 17.433071>,  <37.051537, 36.049248, 17.529114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108974, 36.261559, 17.433071>,  <37.204708, 36.615414, 17.273001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108974, 36.261559, 17.433071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000960, 0.412368, 0.911017,
		-0.970938, 0.217651, -0.099542,
		-0.239331, -0.884636, 0.400175,
		37.037174, 35.996166, 17.553123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674107, 36.813053, 17.782244>,  <37.204708, 36.615414, 17.273001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674107, 36.813053, 17.782244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754681, 36.436657, 17.891022>,  <36.803024, 36.210819, 17.956289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754681, 36.436657, 17.891022>,  <36.674107, 36.813053, 17.782244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754681, 36.436657, 17.891022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174379, 0.238749, 0.955296,
		-0.963854, -0.239855, -0.115996,
		0.201439, -0.940993, 0.271945,
		36.815113, 36.154358, 17.972605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123081, 36.592228, 18.202847>,  <36.674107, 36.813053, 17.782244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123081, 36.592228, 18.202847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403873, 36.323353, 18.296982>,  <36.572350, 36.162029, 18.353462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403873, 36.323353, 18.296982>,  <36.123081, 36.592228, 18.202847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403873, 36.323353, 18.296982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285496, 0.037132, 0.957660,
		-0.652467, -0.739448, -0.165841,
		0.701981, -0.672189, 0.235337,
		36.614468, 36.121696, 18.367582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711212, 36.103283, 18.556314>,  <36.123081, 36.592228, 18.202847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711212, 36.103283, 18.556314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098587, 36.086594, 18.654606>,  <36.331013, 36.076580, 18.713581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098587, 36.086594, 18.654606>,  <35.711212, 36.103283, 18.556314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098587, 36.086594, 18.654606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245685, 0.006279, 0.969329,
		-0.041991, -0.999109, -0.004171,
		0.968440, -0.041727, 0.245730,
		36.389118, 36.074074, 18.728325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709743, 35.549755, 19.069061>,  <35.711212, 36.103283, 18.556314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709743, 35.549755, 19.069061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074306, 35.713867, 19.081730>,  <36.293045, 35.812336, 19.089331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074306, 35.713867, 19.081730>,  <35.709743, 35.549755, 19.069061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074306, 35.713867, 19.081730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113339, -0.324271, 0.939150,
		0.395587, -0.852359, -0.342045,
		0.911408, 0.410283, 0.031672,
		36.347729, 35.836952, 19.091232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180275, 34.994301, 19.327429>,  <35.709743, 35.549755, 19.069061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180275, 34.994301, 19.327429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307217, 35.363876, 19.412872>,  <36.383381, 35.585621, 19.464138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307217, 35.363876, 19.412872>,  <36.180275, 34.994301, 19.327429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307217, 35.363876, 19.412872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221517, -0.291248, 0.930648,
		0.922071, -0.248031, -0.297097,
		0.317358, 0.923935, 0.213608,
		36.402424, 35.641056, 19.476955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709732, 34.846809, 19.669485>,  <36.180275, 34.994301, 19.327429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709732, 34.846809, 19.669485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653858, 35.231323, 19.764492>,  <36.620335, 35.462032, 19.821497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653858, 35.231323, 19.764492>,  <36.709732, 34.846809, 19.669485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653858, 35.231323, 19.764492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306239, -0.186171, 0.933573,
		0.941651, 0.203142, -0.268378,
		-0.139683, 0.961288, 0.237518,
		36.611954, 35.519711, 19.835747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227131, 35.004448, 20.066736>,  <36.709732, 34.846809, 19.669485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227131, 35.004448, 20.066736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942039, 35.257427, 20.188084>,  <36.770985, 35.409214, 20.260893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942039, 35.257427, 20.188084>,  <37.227131, 35.004448, 20.066736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942039, 35.257427, 20.188084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186630, -0.245924, 0.951152,
		0.676161, 0.734527, 0.057242,
		-0.712724, 0.632449, 0.303368,
		36.728222, 35.447163, 20.279095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509842, 35.284901, 20.622133>,  <37.227131, 35.004448, 20.066736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509842, 35.284901, 20.622133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119392, 35.363029, 20.660141>,  <36.885120, 35.409908, 20.682945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119392, 35.363029, 20.660141>,  <37.509842, 35.284901, 20.622133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119392, 35.363029, 20.660141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019391, -0.357344, 0.933771,
		0.216340, 0.913321, 0.345025,
		-0.976126, 0.195322, 0.095018,
		36.826553, 35.421627, 20.688646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473053, 35.617191, 21.244757>,  <37.509842, 35.284901, 20.622133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473053, 35.617191, 21.244757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114273, 35.455780, 21.172489>,  <36.899006, 35.358932, 21.129129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114273, 35.455780, 21.172489>,  <37.473053, 35.617191, 21.244757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114273, 35.455780, 21.172489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029813, -0.352501, 0.935336,
		-0.441120, 0.844339, 0.304146,
		-0.896953, -0.403528, -0.180667,
		36.845188, 35.334721, 21.118288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145958, 35.749809, 21.806568>,  <37.473053, 35.617191, 21.244757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145958, 35.749809, 21.806568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962860, 35.427315, 21.656658>,  <36.853001, 35.233818, 21.566713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962860, 35.427315, 21.656658>,  <37.145958, 35.749809, 21.806568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962860, 35.427315, 21.656658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088854, -0.460902, 0.882992,
		-0.884632, 0.370886, 0.282614,
		-0.457747, -0.806234, -0.374774,
		36.825535, 35.185444, 21.544226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772049, 35.504097, 22.358461>,  <37.145958, 35.749809, 21.806568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772049, 35.504097, 22.358461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779911, 35.192818, 22.107376>,  <36.784630, 35.006050, 21.956724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779911, 35.192818, 22.107376>,  <36.772049, 35.504097, 22.358461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779911, 35.192818, 22.107376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081783, -0.626984, 0.774727,
		-0.996456, 0.036108, -0.075968,
		0.019656, -0.778195, -0.627715,
		36.785809, 34.959358, 21.919062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323009, 35.075314, 22.633055>,  <36.772049, 35.504097, 22.358461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323009, 35.075314, 22.633055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518913, 34.810478, 22.406155>,  <36.636456, 34.651577, 22.270014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518913, 34.810478, 22.406155>,  <36.323009, 35.075314, 22.633055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518913, 34.810478, 22.406155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029021, -0.637884, 0.769585,
		-0.871373, -0.393375, -0.293197,
		0.489761, -0.662088, -0.567251,
		36.665840, 34.611851, 22.235979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138599, 34.362240, 22.925848>,  <36.323009, 35.075314, 22.633055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138599, 34.362240, 22.925848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463615, 34.301517, 22.700733>,  <36.658627, 34.265083, 22.565664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463615, 34.301517, 22.700733>,  <36.138599, 34.362240, 22.925848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463615, 34.301517, 22.700733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240705, -0.791943, 0.561149,
		-0.530882, -0.591423, -0.606946,
		0.812542, -0.151809, -0.562786,
		36.707378, 34.255974, 22.531897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145580, 33.690369, 22.663713>,  <36.138599, 34.362240, 22.925848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145580, 33.690369, 22.663713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527699, 33.807980, 22.676117>,  <36.756969, 33.878548, 22.683559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527699, 33.807980, 22.676117>,  <36.145580, 33.690369, 22.663713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527699, 33.807980, 22.676117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263312, -0.893778, 0.363081,
		0.134470, -0.338684, -0.931242,
		0.955293, 0.294031, 0.031007,
		36.814285, 33.896191, 22.685419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335720, 33.815304, 21.922312>,  <36.145580, 33.690369, 22.663713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335720, 33.815304, 21.922312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488922, 33.446728, 21.948418>,  <36.580841, 33.225582, 21.964081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488922, 33.446728, 21.948418>,  <36.335720, 33.815304, 21.922312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488922, 33.446728, 21.948418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911469, -0.388446, -0.135403,
		0.150117, -0.007625, -0.988639,
		0.383001, -0.921440, 0.065263,
		36.603821, 33.170296, 21.967997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129402, 33.474789, 21.336071>,  <36.335720, 33.815304, 21.922312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129402, 33.474789, 21.336071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180893, 33.218056, 21.638458>,  <36.211788, 33.064018, 21.819891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180893, 33.218056, 21.638458>,  <36.129402, 33.474789, 21.336071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180893, 33.218056, 21.638458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979202, -0.202815, -0.005453,
		0.156821, -0.739542, -0.654588,
		0.128727, -0.641829, 0.755966,
		36.219513, 33.025509, 21.865248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952480, 32.733109, 21.280281>,  <36.129402, 33.474789, 21.336071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952480, 32.733109, 21.280281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910042, 32.835384, 21.664650>,  <35.884579, 32.896748, 21.895271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910042, 32.835384, 21.664650>,  <35.952480, 32.733109, 21.280281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910042, 32.835384, 21.664650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966837, -0.252306, -0.039610,
		0.232318, -0.933256, 0.273973,
		-0.106091, 0.255685, 0.960921,
		35.878216, 32.912090, 21.952927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416595, 32.107311, 21.425116>,  <35.952480, 32.733109, 21.280281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416595, 32.107311, 21.425116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374744, 32.446388, 21.633141>,  <35.349636, 32.649834, 21.757956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374744, 32.446388, 21.633141>,  <35.416595, 32.107311, 21.425116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374744, 32.446388, 21.633141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994478, -0.084852, -0.061757,
		-0.008223, -0.523652, 0.851893,
		-0.104624, 0.847696, 0.520062,
		35.343357, 32.700699, 21.789160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026424, 32.092266, 22.109766>,  <35.416595, 32.107311, 21.425116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026424, 32.092266, 22.109766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994064, 32.457172, 21.949158>,  <34.974648, 32.676117, 21.852793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994064, 32.457172, 21.949158>,  <35.026424, 32.092266, 22.109766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994064, 32.457172, 21.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937657, -0.206272, -0.279734,
		-0.338015, 0.353858, 0.872084,
		-0.080900, 0.912270, -0.401521,
		34.969795, 32.730854, 21.828701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478855, 32.456291, 22.387625>,  <35.026424, 32.092266, 22.109766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478855, 32.456291, 22.387625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527020, 32.620972, 22.026295>,  <34.555920, 32.719780, 21.809496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527020, 32.620972, 22.026295>,  <34.478855, 32.456291, 22.387625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527020, 32.620972, 22.026295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990771, -0.007205, -0.135354,
		-0.062235, 0.911288, 0.407038,
		0.120414, 0.411706, -0.903327,
		34.563145, 32.744484, 21.755297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483711, 32.859741, 22.966518>,  <34.478855, 32.456291, 22.387625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483711, 32.859741, 22.966518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771015, 33.098442, 23.109619>,  <34.943398, 33.241665, 23.195478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771015, 33.098442, 23.109619>,  <34.483711, 32.859741, 22.966518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771015, 33.098442, 23.109619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239082, -0.271183, 0.932362,
		0.653407, -0.755212, -0.052107,
		0.718261, 0.596754, 0.357751,
		34.986492, 33.277470, 23.216944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754070, 32.507027, 23.462275>,  <34.483711, 32.859741, 22.966518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754070, 32.507027, 23.462275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820625, 32.895580, 23.530064>,  <34.860558, 33.128712, 23.570738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820625, 32.895580, 23.530064>,  <34.754070, 32.507027, 23.462275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820625, 32.895580, 23.530064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222759, -0.130398, 0.966113,
		0.960569, -0.198501, 0.194689,
		0.166387, 0.971388, 0.169474,
		34.870541, 33.186996, 23.580906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082100, 32.502602, 24.042765>,  <34.754070, 32.507027, 23.462275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082100, 32.502602, 24.042765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953056, 32.878128, 23.994503>,  <34.875629, 33.103443, 23.965546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953056, 32.878128, 23.994503>,  <35.082100, 32.502602, 24.042765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953056, 32.878128, 23.994503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442735, -0.037001, 0.895888,
		0.836606, 0.342438, 0.427582,
		-0.322608, 0.938812, -0.120654,
		34.856274, 33.159771, 23.958307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379116, 32.920082, 24.643991>,  <35.082100, 32.502602, 24.042765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379116, 32.920082, 24.643991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051373, 33.088528, 24.488400>,  <34.854725, 33.189594, 24.395044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051373, 33.088528, 24.488400>,  <35.379116, 32.920082, 24.643991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051373, 33.088528, 24.488400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377415, 0.114484, 0.918940,
		0.431511, 0.899753, 0.065130,
		-0.819364, 0.421114, -0.388981,
		34.805565, 33.214863, 24.371706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250633, 33.392494, 25.114252>,  <35.379116, 32.920082, 24.643991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250633, 33.392494, 25.114252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906380, 33.359417, 24.913269>,  <34.699825, 33.339569, 24.792679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906380, 33.359417, 24.913269>,  <35.250633, 33.392494, 25.114252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906380, 33.359417, 24.913269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508280, 0.079661, 0.857499,
		-0.030883, 0.993386, -0.110591,
		-0.860638, -0.082693, -0.502459,
		34.648190, 33.334610, 24.762531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778702, 33.957710, 25.367325>,  <35.250633, 33.392494, 25.114252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778702, 33.957710, 25.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543095, 33.684322, 25.194851>,  <34.401730, 33.520290, 25.091366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543095, 33.684322, 25.194851>,  <34.778702, 33.957710, 25.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543095, 33.684322, 25.194851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616522, 0.035104, 0.786554,
		-0.522451, 0.729133, -0.442052,
		-0.589021, -0.683471, -0.431187,
		34.366390, 33.479282, 25.065495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161980, 34.207874, 25.496656>,  <34.778702, 33.957710, 25.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161980, 34.207874, 25.496656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077538, 33.828953, 25.400284>,  <34.026871, 33.601601, 25.342461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077538, 33.828953, 25.400284>,  <34.161980, 34.207874, 25.496656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077538, 33.828953, 25.400284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734548, -0.008872, 0.678499,
		-0.644883, 0.320210, -0.693968,
		-0.211105, -0.947305, -0.240931,
		34.014206, 33.544762, 25.328005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477654, 34.242523, 25.384949>,  <34.161980, 34.207874, 25.496656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477654, 34.242523, 25.384949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602528, 33.871227, 25.465851>,  <33.677452, 33.648449, 25.514393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602528, 33.871227, 25.465851>,  <33.477654, 34.242523, 25.384949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602528, 33.871227, 25.465851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549877, -0.002940, 0.835241,
		-0.774712, -0.371963, -0.511337,
		0.312182, -0.928243, 0.202256,
		33.696182, 33.592754, 25.526527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980354, 33.968613, 25.775106>,  <33.477654, 34.242523, 25.384949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980354, 33.968613, 25.775106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253021, 33.687717, 25.857269>,  <33.416622, 33.519180, 25.906567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253021, 33.687717, 25.857269>,  <32.980354, 33.968613, 25.775106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253021, 33.687717, 25.857269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432296, -0.160065, 0.887412,
		-0.590296, -0.693715, -0.412686,
		0.681668, -0.702238, 0.205405,
		33.457523, 33.477047, 25.918890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665081, 33.301220, 25.818027>,  <32.980354, 33.968613, 25.775106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665081, 33.301220, 25.818027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996284, 33.334984, 26.039757>,  <33.195007, 33.355244, 26.172794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996284, 33.334984, 26.039757>,  <32.665081, 33.301220, 25.818027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996284, 33.334984, 26.039757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545071, -0.110714, 0.831048,
		0.131523, -0.990261, -0.045661,
		0.828009, 0.084413, 0.554324,
		33.244686, 33.360306, 26.206055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467670, 32.846416, 26.433817>,  <32.665081, 33.301220, 25.818027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467670, 32.846416, 26.433817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795536, 33.042931, 26.551662>,  <32.992256, 33.160839, 26.622370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795536, 33.042931, 26.551662>,  <32.467670, 32.846416, 26.433817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795536, 33.042931, 26.551662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331734, -0.012208, 0.943294,
		0.467022, -0.870914, 0.152969,
		0.819660, 0.491285, 0.294614,
		33.041435, 33.190315, 26.640047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628937, 32.595592, 27.105957>,  <32.467670, 32.846416, 26.433817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628937, 32.595592, 27.105957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799690, 32.957291, 27.110294>,  <32.902142, 33.174309, 27.112898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799690, 32.957291, 27.110294>,  <32.628937, 32.595592, 27.105957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799690, 32.957291, 27.110294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307075, 0.133664, 0.942252,
		0.850575, -0.405560, 0.334729,
		0.426881, 0.904243, 0.010846,
		32.927753, 33.228565, 27.113548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992184, 32.680599, 27.682463>,  <32.628937, 32.595592, 27.105957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992184, 32.680599, 27.682463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949215, 33.063519, 27.575096>,  <32.923435, 33.293270, 27.510677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949215, 33.063519, 27.575096>,  <32.992184, 32.680599, 27.682463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949215, 33.063519, 27.575096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342052, 0.217911, 0.914065,
		0.933521, 0.190001, 0.304037,
		-0.107420, 0.957295, -0.268415,
		32.916988, 33.350708, 27.494572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356640, 33.085728, 28.200079>,  <32.992184, 32.680599, 27.682463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356640, 33.085728, 28.200079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074867, 33.318363, 28.037334>,  <32.905804, 33.457943, 27.939688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074867, 33.318363, 28.037334>,  <33.356640, 33.085728, 28.200079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074867, 33.318363, 28.037334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355207, 0.207417, 0.911486,
		0.614497, 0.786599, 0.060472,
		-0.704430, 0.581585, -0.406862,
		32.863537, 33.492840, 27.915276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347366, 33.722977, 28.595104>,  <33.356640, 33.085728, 28.200079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347366, 33.722977, 28.595104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001171, 33.719959, 28.394753>,  <32.793453, 33.718147, 28.274542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001171, 33.719959, 28.394753>,  <33.347366, 33.722977, 28.595104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001171, 33.719959, 28.394753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454519, 0.432184, 0.778864,
		0.210592, 0.901754, -0.377479,
		-0.865484, -0.007548, -0.500879,
		32.741528, 33.717693, 28.244490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045246, 34.326103, 28.676867>,  <33.347366, 33.722977, 28.595104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045246, 34.326103, 28.676867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728329, 34.111359, 28.560902>,  <32.538177, 33.982513, 28.491323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728329, 34.111359, 28.560902>,  <33.045246, 34.326103, 28.676867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728329, 34.111359, 28.560902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557100, 0.442782, 0.702555,
		-0.248806, 0.718141, -0.649899,
		-0.792297, -0.536858, -0.289910,
		32.490639, 33.950302, 28.473928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482140, 34.862923, 28.530109>,  <33.045246, 34.326103, 28.676867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482140, 34.862923, 28.530109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335236, 34.498974, 28.607315>,  <32.247093, 34.280605, 28.653639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335236, 34.498974, 28.607315>,  <32.482140, 34.862923, 28.530109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335236, 34.498974, 28.607315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513141, 0.371285, 0.773843,
		-0.775761, 0.185157, -0.603250,
		-0.367261, -0.909871, 0.193016,
		32.225056, 34.226013, 28.665220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768593, 35.002445, 28.745819>,  <32.482140, 34.862923, 28.530109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768593, 35.002445, 28.745819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876951, 34.646389, 28.892387>,  <31.941967, 34.432755, 28.980328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876951, 34.646389, 28.892387>,  <31.768593, 35.002445, 28.745819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876951, 34.646389, 28.892387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393599, 0.244951, 0.886047,
		-0.878461, -0.384250, -0.284003,
		0.270896, -0.890141, 0.366420,
		31.958220, 34.379345, 29.002314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239925, 34.869881, 29.255907>,  <31.768593, 35.002445, 28.745819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239925, 34.869881, 29.255907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542744, 34.630886, 29.361652>,  <31.724434, 34.487488, 29.425098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542744, 34.630886, 29.361652>,  <31.239925, 34.869881, 29.255907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542744, 34.630886, 29.361652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185086, 0.191925, 0.963799,
		-0.626598, -0.778569, 0.034709,
		0.757045, -0.597490, 0.264362,
		31.769857, 34.451637, 29.440962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970961, 34.480682, 29.872017>,  <31.239925, 34.869881, 29.255907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970961, 34.480682, 29.872017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367846, 34.432575, 29.884979>,  <31.605976, 34.403709, 29.892757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367846, 34.432575, 29.884979>,  <30.970961, 34.480682, 29.872017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367846, 34.432575, 29.884979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030811, 0.015097, 0.999411,
		-0.120690, -0.992626, 0.011274,
		0.992212, -0.120272, 0.032406,
		31.665508, 34.396492, 29.894701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075670, 34.164860, 30.464472>,  <30.970961, 34.480682, 29.872017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075670, 34.164860, 30.464472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450676, 34.273136, 30.377026>,  <31.675680, 34.338100, 30.324558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450676, 34.273136, 30.377026>,  <31.075670, 34.164860, 30.464472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450676, 34.273136, 30.377026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175344, 0.175145, 0.968803,
		0.300537, -0.946599, 0.116736,
		0.937514, 0.270693, -0.218618,
		31.731930, 34.354343, 30.311440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548204, 33.756550, 30.894573>,  <31.075670, 34.164860, 30.464472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548204, 33.756550, 30.894573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749601, 34.091713, 30.810272>,  <31.870440, 34.292809, 30.759691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749601, 34.091713, 30.810272>,  <31.548204, 33.756550, 30.894573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749601, 34.091713, 30.810272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281981, 0.071209, 0.956774,
		0.816691, -0.541153, -0.200419,
		0.503490, 0.837903, -0.210751,
		31.900648, 34.343082, 30.747047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199535, 33.752266, 31.265394>,  <31.548204, 33.756550, 30.894573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199535, 33.752266, 31.265394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143871, 34.140507, 31.186848>,  <32.110474, 34.373451, 31.139721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143871, 34.140507, 31.186848>,  <32.199535, 33.752266, 31.265394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143871, 34.140507, 31.186848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317106, 0.231529, 0.919694,
		0.938125, 0.065715, -0.340004,
		-0.139159, 0.970606, -0.196364,
		32.102123, 34.431690, 31.127939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751320, 34.133537, 31.490925>,  <32.199535, 33.752266, 31.265394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751320, 34.133537, 31.490925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448620, 34.394558, 31.475388>,  <32.267002, 34.551170, 31.466064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448620, 34.394558, 31.475388>,  <32.751320, 34.133537, 31.490925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448620, 34.394558, 31.475388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079804, 0.151198, 0.985277,
		0.648820, 0.742504, -0.166495,
		-0.756746, 0.652554, -0.038846,
		32.221596, 34.590324, 31.463734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980949, 34.593796, 31.864838>,  <32.751320, 34.133537, 31.490925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980949, 34.593796, 31.864838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586861, 34.661854, 31.872696>,  <32.350407, 34.702690, 31.877411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586861, 34.661854, 31.872696>,  <32.980949, 34.593796, 31.864838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586861, 34.661854, 31.872696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055112, 0.206334, 0.976928,
		0.162165, 0.963575, -0.212662,
		-0.985223, 0.170144, 0.019644,
		32.291294, 34.712898, 31.878590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830341, 35.135632, 32.247646>,  <32.980949, 34.593796, 31.864838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830341, 35.135632, 32.247646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468456, 34.965622, 32.259235>,  <32.251324, 34.863617, 32.266190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468456, 34.965622, 32.259235>,  <32.830341, 35.135632, 32.247646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468456, 34.965622, 32.259235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027670, 0.009239, 0.999574,
		-0.425115, 0.905133, 0.003402,
		-0.904716, -0.425029, 0.028972,
		32.197041, 34.838112, 32.267925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483627, 35.480343, 32.807449>,  <32.830341, 35.135632, 32.247646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483627, 35.480343, 32.807449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283203, 35.139957, 32.744457>,  <32.162949, 34.935726, 32.706661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283203, 35.139957, 32.744457>,  <32.483627, 35.480343, 32.807449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283203, 35.139957, 32.744457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125334, -0.108696, 0.986142,
		-0.856289, 0.513853, -0.052192,
		-0.501059, -0.850965, -0.157479,
		32.132885, 34.884666, 32.697212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930761, 35.571808, 33.258686>,  <32.483627, 35.480343, 32.807449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930761, 35.571808, 33.258686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904417, 35.184967, 33.160400>,  <31.888611, 34.952862, 33.101429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904417, 35.184967, 33.160400>,  <31.930761, 35.571808, 33.258686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904417, 35.184967, 33.160400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085051, -0.239910, 0.967062,
		-0.994197, 0.084591, -0.066452,
		-0.065862, -0.967103, -0.245713,
		31.884659, 34.894836, 33.086685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383339, 35.204521, 33.765572>,  <31.930761, 35.571808, 33.258686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383339, 35.204521, 33.765572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621021, 34.925388, 33.605595>,  <31.763630, 34.757908, 33.509609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621021, 34.925388, 33.605595>,  <31.383339, 35.204521, 33.765572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621021, 34.925388, 33.605595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071009, -0.449791, 0.890306,
		-0.801174, -0.557423, -0.217715,
		0.594203, -0.697831, -0.399944,
		31.799282, 34.716038, 33.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082098, 34.573750, 33.882721>,  <31.383339, 35.204521, 33.765572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082098, 34.573750, 33.882721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476645, 34.518013, 33.847713>,  <31.713373, 34.484570, 33.826710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476645, 34.518013, 33.847713>,  <31.082098, 34.573750, 33.882721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476645, 34.518013, 33.847713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012034, -0.591540, 0.806186,
		-0.164110, -0.794143, -0.585153,
		0.986369, -0.139345, -0.087521,
		31.772554, 34.476208, 33.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205326, 33.898579, 34.046082>,  <31.082098, 34.573750, 33.882721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205326, 33.898579, 34.046082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560837, 34.079002, 34.078636>,  <31.774143, 34.187256, 34.098167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560837, 34.079002, 34.078636>,  <31.205326, 33.898579, 34.046082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560837, 34.079002, 34.078636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006473, -0.189892, 0.981784,
		0.458295, -0.872059, -0.171691,
		0.888777, 0.451058, 0.081382,
		31.827469, 34.214321, 34.103050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694220, 33.409618, 34.518661>,  <31.205326, 33.898579, 34.046082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694220, 33.409618, 34.518661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875837, 33.763481, 34.561043>,  <31.984808, 33.975800, 34.586472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875837, 33.763481, 34.561043>,  <31.694220, 33.409618, 34.518661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875837, 33.763481, 34.561043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010456, -0.124201, 0.992202,
		0.890917, -0.449396, -0.065643,
		0.454045, 0.884656, 0.105954,
		32.012051, 34.028877, 34.592831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416855, 33.328419, 34.898907>,  <31.694220, 33.409618, 34.518661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416855, 33.328419, 34.898907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268211, 33.697937, 34.935814>,  <32.179024, 33.919647, 34.957958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268211, 33.697937, 34.935814>,  <32.416855, 33.328419, 34.898907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268211, 33.697937, 34.935814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076817, -0.068447, 0.994693,
		0.925207, 0.376723, -0.045527,
		-0.371607, 0.923794, 0.092266,
		32.156731, 33.975075, 34.963493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727657, 33.561897, 35.575130>,  <32.416855, 33.328419, 34.898907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727657, 33.561897, 35.575130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430592, 33.812439, 35.480358>,  <32.252354, 33.962765, 35.423492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430592, 33.812439, 35.480358>,  <32.727657, 33.561897, 35.575130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430592, 33.812439, 35.480358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277802, 0.033773, 0.960044,
		0.609327, 0.778808, 0.148920,
		-0.742661, 0.626352, -0.236934,
		32.207794, 34.000343, 35.409279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747925, 34.119701, 36.121956>,  <32.727657, 33.561897, 35.575130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747925, 34.119701, 36.121956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385471, 34.134888, 35.953442>,  <32.167999, 34.144001, 35.852333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385471, 34.134888, 35.953442>,  <32.747925, 34.119701, 36.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385471, 34.134888, 35.953442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417644, 0.077624, 0.905289,
		0.067074, 0.996260, -0.054481,
		-0.906132, 0.037968, -0.421288,
		32.113632, 34.146278, 35.827057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429138, 34.698265, 36.383453>,  <32.747925, 34.119701, 36.121956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429138, 34.698265, 36.383453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133911, 34.448776, 36.280518>,  <31.956774, 34.299084, 36.218758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133911, 34.448776, 36.280518>,  <32.429138, 34.698265, 36.383453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133911, 34.448776, 36.280518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450878, 0.172190, 0.875819,
		-0.501957, 0.762444, -0.408311,
		-0.738070, -0.623722, -0.257337,
		31.912491, 34.261658, 36.203316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850260, 35.061646, 36.517979>,  <32.429138, 34.698265, 36.383453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850260, 35.061646, 36.517979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718365, 34.684444, 36.500031>,  <31.639227, 34.458122, 36.489262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718365, 34.684444, 36.500031>,  <31.850260, 35.061646, 36.517979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718365, 34.684444, 36.500031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453021, 0.116351, 0.883875,
		-0.828278, 0.311775, -0.465566,
		-0.329740, -0.943005, -0.044870,
		31.619442, 34.401543, 36.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100622, 35.106808, 36.560314>,  <31.850260, 35.061646, 36.517979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100622, 35.106808, 36.560314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235029, 34.763885, 36.716328>,  <31.315674, 34.558132, 36.809937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235029, 34.763885, 36.716328>,  <31.100622, 35.106808, 36.560314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235029, 34.763885, 36.716328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353646, 0.268970, 0.895874,
		-0.872941, -0.438964, -0.212802,
		0.336019, -0.857301, 0.390033,
		31.335835, 34.506695, 36.833336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592041, 34.970348, 37.118111>,  <31.100622, 35.106808, 36.560314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592041, 34.970348, 37.118111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895517, 34.723175, 37.200611>,  <31.077604, 34.574871, 37.250111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895517, 34.723175, 37.200611>,  <30.592041, 34.970348, 37.118111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895517, 34.723175, 37.200611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196184, 0.085176, 0.976861,
		-0.621207, -0.781599, -0.056607,
		0.758692, -0.617938, 0.206249,
		31.123125, 34.537792, 37.262486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345686, 34.411850, 37.540802>,  <30.592041, 34.970348, 37.118111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345686, 34.411850, 37.540802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741703, 34.423950, 37.595791>,  <30.979313, 34.431210, 37.628784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741703, 34.423950, 37.595791>,  <30.345686, 34.411850, 37.540802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741703, 34.423950, 37.595791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140764, 0.211017, 0.967294,
		0.000252, -0.977014, 0.213174,
		0.990043, 0.030251, 0.137475,
		31.038715, 34.433025, 37.637032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433617, 34.073185, 38.143467>,  <30.345686, 34.411850, 37.540802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433617, 34.073185, 38.143467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775440, 34.280350, 38.127956>,  <30.980534, 34.404648, 38.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775440, 34.280350, 38.127956>,  <30.433617, 34.073185, 38.143467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775440, 34.280350, 38.127956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056148, 0.166351, 0.984467,
		0.516314, -0.839106, 0.171236,
		0.854557, 0.517908, -0.038775,
		31.031807, 34.435722, 38.116325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943464, 33.872410, 38.823570>,  <30.433617, 34.073185, 38.143467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943464, 33.872410, 38.823570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051641, 34.227375, 38.674252>,  <31.116547, 34.440353, 38.584660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051641, 34.227375, 38.674252>,  <30.943464, 33.872410, 38.823570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051641, 34.227375, 38.674252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018297, 0.392418, 0.919605,
		0.962563, -0.241869, 0.122363,
		0.270442, 0.887416, -0.373301,
		31.132774, 34.493599, 38.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604710, 34.169254, 39.139179>,  <30.943464, 33.872410, 38.823570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604710, 34.169254, 39.139179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356848, 34.458553, 39.017239>,  <31.208130, 34.632133, 38.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356848, 34.458553, 39.017239>,  <31.604710, 34.169254, 39.139179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356848, 34.458553, 39.017239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147705, 0.274016, 0.950315,
		0.770850, 0.633897, -0.062969,
		-0.619656, 0.723249, -0.304855,
		31.170950, 34.675529, 38.925781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813589, 34.879353, 39.546021>,  <31.604710, 34.169254, 39.139179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813589, 34.879353, 39.546021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438770, 34.813587, 39.422791>,  <31.213879, 34.774128, 39.348854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438770, 34.813587, 39.422791>,  <31.813589, 34.879353, 39.546021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438770, 34.813587, 39.422791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306752, -0.034028, 0.951181,
		-0.166871, 0.985804, -0.018548,
		-0.937047, -0.164414, -0.308076,
		31.157656, 34.764263, 39.330368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404497, 35.343891, 39.964809>,  <31.813589, 34.879353, 39.546021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404497, 35.343891, 39.964809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175034, 35.036797, 39.850620>,  <31.037355, 34.852539, 39.782104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175034, 35.036797, 39.850620>,  <31.404497, 35.343891, 39.964809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175034, 35.036797, 39.850620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255833, -0.163151, 0.952854,
		-0.778116, 0.619648, -0.102819,
		-0.573660, -0.767735, -0.285477,
		31.002935, 34.806477, 39.764977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679441, 35.403030, 40.287098>,  <31.404497, 35.343891, 39.964809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679441, 35.403030, 40.287098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750004, 35.016361, 40.212883>,  <30.792341, 34.784359, 40.168354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750004, 35.016361, 40.212883>,  <30.679441, 35.403030, 40.287098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750004, 35.016361, 40.212883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366574, -0.239451, 0.899047,
		-0.913512, -0.090585, -0.396598,
		0.176406, -0.966673, -0.185536,
		30.802925, 34.726360, 40.157223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007639, 35.088535, 40.480129>,  <30.679441, 35.403030, 40.287098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007639, 35.088535, 40.480129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327904, 34.849369, 40.495308>,  <30.520063, 34.705872, 40.504414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327904, 34.849369, 40.495308>,  <30.007639, 35.088535, 40.480129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327904, 34.849369, 40.495308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219865, -0.234318, 0.946971,
		-0.557315, -0.766547, -0.319070,
		0.800661, -0.597913, 0.037948,
		30.568102, 34.669994, 40.506691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417734, 34.821522, 40.974247>,  <30.007639, 35.088535, 40.480129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417734, 34.821522, 40.974247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416012, 35.070515, 40.661198>,  <29.414978, 35.219910, 40.473366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416012, 35.070515, 40.661198>,  <29.417734, 34.821522, 40.974247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416012, 35.070515, 40.661198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696893, -0.563147, -0.444079,
		-0.717163, 0.543494, 0.436224,
		-0.004304, 0.622478, -0.782625,
		29.414721, 35.257259, 40.426411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772537, 34.795761, 40.709648>,  <29.417734, 34.821522, 40.974247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772537, 34.795761, 40.709648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994900, 34.890999, 40.391083>,  <29.128317, 34.948143, 40.199944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994900, 34.890999, 40.391083>,  <28.772537, 34.795761, 40.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994900, 34.890999, 40.391083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622967, -0.515000, -0.588802,
		-0.550346, 0.823459, -0.137965,
		0.555906, 0.238097, -0.796416,
		29.161671, 34.962429, 40.152157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471981, 35.363628, 40.175282>,  <28.772537, 34.795761, 40.709648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471981, 35.363628, 40.175282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691727, 35.070248, 40.015160>,  <28.823574, 34.894218, 39.919086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691727, 35.070248, 40.015160>,  <28.471981, 35.363628, 40.175282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691727, 35.070248, 40.015160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703922, -0.148111, -0.694664,
		0.450213, 0.663409, -0.597660,
		0.549366, -0.733452, -0.400306,
		28.856537, 34.850212, 39.895069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468386, 35.507656, 39.488201>,  <28.471981, 35.363628, 40.175282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468386, 35.507656, 39.488201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545059, 35.118763, 39.541893>,  <28.591063, 34.885426, 39.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545059, 35.118763, 39.541893>,  <28.468386, 35.507656, 39.488201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545059, 35.118763, 39.541893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566156, -0.221250, -0.794050,
		0.801701, 0.076213, -0.592846,
		0.191684, -0.972235, 0.134228,
		28.602564, 34.827091, 39.582161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704432, 35.235184, 38.889942>,  <28.468386, 35.507656, 39.488201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704432, 35.235184, 38.889942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499935, 34.960453, 39.096592>,  <28.377237, 34.795612, 39.220581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499935, 34.960453, 39.096592>,  <28.704432, 35.235184, 38.889942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499935, 34.960453, 39.096592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614896, -0.127656, -0.778207,
		0.600446, -0.715519, -0.357067,
		-0.511240, -0.686831, 0.516621,
		28.346563, 34.754402, 39.251579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310331, 35.511620, 38.238098>,  <28.704432, 35.235184, 38.889942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310331, 35.511620, 38.238098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635155, 35.641869, 38.431812>,  <28.830048, 35.720016, 38.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635155, 35.641869, 38.431812>,  <28.310331, 35.511620, 38.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635155, 35.641869, 38.431812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012884, 0.839662, -0.542956,
		-0.583436, 0.434672, 0.686049,
		0.812057, 0.325619, 0.484289,
		28.878773, 35.739555, 38.577099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185455, 36.186188, 38.344357>,  <28.310331, 35.511620, 38.238098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185455, 36.186188, 38.344357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578745, 36.115200, 38.327526>,  <28.814718, 36.072605, 38.317429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578745, 36.115200, 38.327526>,  <28.185455, 36.186188, 38.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578745, 36.115200, 38.327526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124189, 0.820365, -0.558192,
		0.133582, 0.543603, 0.828645,
		0.983226, -0.177473, -0.042076,
		28.873713, 36.061958, 38.314903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502796, 36.847301, 38.324043>,  <28.185455, 36.186188, 38.344357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502796, 36.847301, 38.324043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808962, 36.611546, 38.220688>,  <28.992661, 36.470093, 38.158672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808962, 36.611546, 38.220688>,  <28.502796, 36.847301, 38.324043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808962, 36.611546, 38.220688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274783, 0.662393, -0.696943,
		0.581926, 0.462448, 0.668958,
		0.765413, -0.589387, -0.258391,
		29.038586, 36.434731, 38.143169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120697, 37.264557, 38.278805>,  <28.502796, 36.847301, 38.324043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120697, 37.264557, 38.278805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179794, 36.936127, 38.058262>,  <29.215252, 36.739067, 37.925934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179794, 36.936127, 38.058262>,  <29.120697, 37.264557, 38.278805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179794, 36.936127, 38.058262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304991, 0.568134, -0.764332,
		0.940825, -0.055236, 0.334360,
		0.147742, -0.821080, -0.551361,
		29.224117, 36.689804, 37.892853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848200, 37.329304, 37.935223>,  <29.120697, 37.264557, 38.278805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848200, 37.329304, 37.935223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655645, 37.055717, 37.715965>,  <29.540113, 36.891567, 37.584412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655645, 37.055717, 37.715965>,  <29.848200, 37.329304, 37.935223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655645, 37.055717, 37.715965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304639, 0.455826, -0.836312,
		0.821866, -0.569574, -0.011066,
		-0.481385, -0.683965, -0.548142,
		29.511230, 36.850529, 37.551521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293703, 36.905857, 37.426907>,  <29.848200, 37.329304, 37.935223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293703, 36.905857, 37.426907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933399, 36.831940, 37.269688>,  <29.717216, 36.787590, 37.175358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933399, 36.831940, 37.269688>,  <30.293703, 36.905857, 37.426907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933399, 36.831940, 37.269688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302819, 0.381520, -0.873352,
		0.311345, -0.905701, -0.287699,
		-0.900758, -0.184793, -0.393048,
		29.663172, 36.776501, 37.151772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454153, 36.662926, 36.771671>,  <30.293703, 36.905857, 37.426907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454153, 36.662926, 36.771671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066895, 36.762154, 36.758091>,  <29.834539, 36.821690, 36.749943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066895, 36.762154, 36.758091>,  <30.454153, 36.662926, 36.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066895, 36.762154, 36.758091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122032, 0.349091, -0.929109,
		-0.218630, -0.903658, -0.368244,
		-0.968147, 0.248069, -0.033953,
		29.776451, 36.836575, 36.747906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107828, 36.206638, 36.357891>,  <30.454153, 36.662926, 36.771671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107828, 36.206638, 36.357891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917953, 36.558170, 36.338593>,  <29.804029, 36.769089, 36.327015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917953, 36.558170, 36.338593>,  <30.107828, 36.206638, 36.357891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917953, 36.558170, 36.338593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093651, -0.004073, -0.995597,
		-0.875159, -0.477113, -0.080370,
		-0.474684, 0.878833, -0.048247,
		29.775549, 36.821819, 36.324120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639458, 36.109097, 35.808765>,  <30.107828, 36.206638, 36.357891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639458, 36.109097, 35.808765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635559, 36.507389, 35.845493>,  <29.633221, 36.746365, 35.867531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635559, 36.507389, 35.845493>,  <29.639458, 36.109097, 35.808765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635559, 36.507389, 35.845493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075290, 0.090837, -0.993016,
		-0.997114, -0.016592, 0.074082,
		-0.009747, 0.995728, 0.091824,
		29.632635, 36.806107, 35.873039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250505, 36.306728, 35.314102>,  <29.639458, 36.109097, 35.808765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250505, 36.306728, 35.314102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449362, 36.639610, 35.412319>,  <29.568676, 36.839340, 35.471249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449362, 36.639610, 35.412319>,  <29.250505, 36.306728, 35.314102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449362, 36.639610, 35.412319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091877, 0.331885, -0.938835,
		-0.862792, 0.444174, 0.241454,
		0.497141, 0.832203, 0.245538,
		29.598505, 36.889271, 35.485981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850554, 36.890621, 34.938213>,  <29.250505, 36.306728, 35.314102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850554, 36.890621, 34.938213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221380, 37.008484, 35.030926>,  <29.443876, 37.079201, 35.086555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221380, 37.008484, 35.030926>,  <28.850554, 36.890621, 34.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221380, 37.008484, 35.030926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056634, 0.501098, -0.863536,
		-0.370594, 0.813682, 0.447863,
		0.927067, 0.294657, 0.231785,
		29.499500, 37.096882, 35.100460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887960, 37.532944, 34.729870>,  <28.850554, 36.890621, 34.938213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887960, 37.532944, 34.729870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274973, 37.432266, 34.739113>,  <29.507181, 37.371861, 34.744659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274973, 37.432266, 34.739113>,  <28.887960, 37.532944, 34.729870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274973, 37.432266, 34.739113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169512, 0.578353, -0.797981,
		0.187483, 0.775989, 0.602239,
		0.967531, -0.251695, 0.023108,
		29.565231, 37.356758, 34.746044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287947, 38.142193, 34.510605>,  <28.887960, 37.532944, 34.729870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287947, 38.142193, 34.510605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546547, 37.843418, 34.448471>,  <29.701708, 37.664154, 34.411190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546547, 37.843418, 34.448471>,  <29.287947, 38.142193, 34.510605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546547, 37.843418, 34.448471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359716, 0.477995, -0.801328,
		0.672787, 0.462183, 0.577707,
		0.646500, -0.746933, -0.155334,
		29.740498, 37.619339, 34.401871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876959, 38.504677, 34.131088>,  <29.287947, 38.142193, 34.510605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876959, 38.504677, 34.131088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964935, 38.115269, 34.106136>,  <30.017721, 37.881626, 34.091164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964935, 38.115269, 34.106136>,  <29.876959, 38.504677, 34.131088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964935, 38.115269, 34.106136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451016, 0.158180, -0.878387,
		0.864992, 0.165057, 0.473862,
		0.219939, -0.973517, -0.062382,
		30.030916, 37.823215, 34.087421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624256, 38.417477, 33.982433>,  <29.876959, 38.504677, 34.131088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624256, 38.417477, 33.982433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438044, 38.093731, 33.839207>,  <30.326317, 37.899483, 33.753269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438044, 38.093731, 33.839207>,  <30.624256, 38.417477, 33.982433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438044, 38.093731, 33.839207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496995, 0.095698, -0.862460,
		0.732310, -0.579459, 0.357700,
		-0.465529, -0.809363, -0.358069,
		30.298386, 37.850922, 33.731785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127422, 37.966255, 33.686214>,  <30.624256, 38.417477, 33.982433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127422, 37.966255, 33.686214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784773, 37.828438, 33.532600>,  <30.579184, 37.745747, 33.440430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784773, 37.828438, 33.532600>,  <31.127422, 37.966255, 33.686214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784773, 37.828438, 33.532600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411665, -0.007740, -0.911303,
		0.311010, -0.938739, 0.148467,
		-0.856624, -0.344543, -0.384038,
		30.527786, 37.725075, 33.417389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304474, 37.390381, 33.265160>,  <31.127422, 37.966255, 33.686214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304474, 37.390381, 33.265160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947641, 37.528072, 33.148064>,  <30.733541, 37.610687, 33.077805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947641, 37.528072, 33.148064>,  <31.304474, 37.390381, 33.265160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947641, 37.528072, 33.148064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307708, -0.011667, -0.951409,
		-0.330920, -0.938813, -0.095514,
		-0.892081, 0.344231, -0.292741,
		30.680017, 37.631340, 33.060242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161253, 36.995934, 32.757759>,  <31.304474, 37.390381, 33.265160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161253, 36.995934, 32.757759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925154, 37.314579, 32.705582>,  <30.783495, 37.505768, 32.674274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925154, 37.314579, 32.705582>,  <31.161253, 36.995934, 32.757759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925154, 37.314579, 32.705582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305660, 0.071003, -0.949490,
		-0.747115, -0.600305, -0.285402,
		-0.590248, 0.796614, -0.130441,
		30.748079, 37.553562, 32.666451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761667, 36.883297, 32.133308>,  <31.161253, 36.995934, 32.757759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761667, 36.883297, 32.133308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726231, 37.275818, 32.201656>,  <30.704969, 37.511330, 32.242664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726231, 37.275818, 32.201656>,  <30.761667, 36.883297, 32.133308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726231, 37.275818, 32.201656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426751, 0.192392, -0.883668,
		-0.900019, -0.005367, -0.435817,
		-0.088590, 0.981303, 0.170867,
		30.699654, 37.570210, 32.252914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500311, 37.232155, 31.537539>,  <30.761667, 36.883297, 32.133308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500311, 37.232155, 31.537539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675545, 37.534595, 31.732021>,  <30.780685, 37.716061, 31.848711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675545, 37.534595, 31.732021>,  <30.500311, 37.232155, 31.537539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675545, 37.534595, 31.732021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458662, 0.277165, -0.844280,
		-0.773118, 0.592872, -0.225371,
		0.438085, 0.756097, 0.486209,
		30.806971, 37.761425, 31.877884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285341, 37.895969, 31.199305>,  <30.500311, 37.232155, 31.537539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285341, 37.895969, 31.199305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639977, 37.916286, 31.383209>,  <30.852758, 37.928474, 31.493551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639977, 37.916286, 31.383209>,  <30.285341, 37.895969, 31.199305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639977, 37.916286, 31.383209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439921, 0.214535, -0.872034,
		-0.142926, 0.975395, 0.167861,
		0.886590, 0.050790, 0.459760,
		30.905954, 37.931522, 31.521137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689320, 38.383522, 30.755411>,  <30.285341, 37.895969, 31.199305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689320, 38.383522, 30.755411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970276, 38.254921, 31.009430>,  <31.138849, 38.177761, 31.161840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970276, 38.254921, 31.009430>,  <30.689320, 38.383522, 30.755411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970276, 38.254921, 31.009430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708543, 0.230669, -0.666903,
		0.067925, 0.918384, 0.389817,
		0.702391, -0.321502, 0.635046,
		31.180994, 38.158470, 31.199944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362267, 38.771038, 30.662395>,  <30.689320, 38.383522, 30.755411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362267, 38.771038, 30.662395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494953, 38.448223, 30.857807>,  <31.574566, 38.254536, 30.975054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494953, 38.448223, 30.857807>,  <31.362267, 38.771038, 30.662395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494953, 38.448223, 30.857807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663181, -0.168805, -0.729174,
		0.670934, 0.565863, 0.479214,
		0.331719, -0.807034, 0.488527,
		31.594469, 38.206112, 31.004366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123810, 38.735771, 30.799055>,  <31.362267, 38.771038, 30.662395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123810, 38.735771, 30.799055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012486, 38.353600, 30.759663>,  <31.945692, 38.124298, 30.736027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012486, 38.353600, 30.759663>,  <32.123810, 38.735771, 30.799055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012486, 38.353600, 30.759663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697076, -0.130380, -0.705043,
		0.660779, -0.264870, 0.702293,
		-0.278310, -0.955429, -0.098482,
		31.928993, 38.066971, 30.730118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672253, 38.551792, 30.524292>,  <32.123810, 38.735771, 30.799055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672253, 38.551792, 30.524292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440010, 38.230274, 30.472427>,  <32.300663, 38.037365, 30.441309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440010, 38.230274, 30.472427>,  <32.672253, 38.551792, 30.524292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440010, 38.230274, 30.472427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588869, -0.304594, -0.748636,
		0.562256, -0.511015, 0.650179,
		-0.580605, -0.803795, -0.129661,
		32.265827, 37.989136, 30.433529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224873, 38.089428, 30.362356>,  <32.672253, 38.551792, 30.524292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224873, 38.089428, 30.362356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879650, 37.915417, 30.259689>,  <32.672516, 37.811008, 30.198090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879650, 37.915417, 30.259689>,  <33.224873, 38.089428, 30.362356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879650, 37.915417, 30.259689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414901, -0.320773, -0.851447,
		0.288072, -0.841341, 0.457339,
		-0.863060, -0.435028, -0.256668,
		32.620731, 37.784908, 30.182690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396709, 37.408028, 30.169188>,  <33.224873, 38.089428, 30.362356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396709, 37.408028, 30.169188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052612, 37.477734, 29.977516>,  <32.846153, 37.519558, 29.862513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052612, 37.477734, 29.977516>,  <33.396709, 37.408028, 30.169188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052612, 37.477734, 29.977516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411809, -0.316687, -0.854472,
		-0.300647, -0.932386, 0.200669,
		-0.860247, 0.174257, -0.479176,
		32.794540, 37.530014, 29.833763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167423, 36.718456, 29.738720>,  <33.396709, 37.408028, 30.169188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167423, 36.718456, 29.738720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973438, 37.039646, 29.600128>,  <32.857048, 37.232361, 29.516973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973438, 37.039646, 29.600128>,  <33.167423, 36.718456, 29.738720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973438, 37.039646, 29.600128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254786, -0.249273, -0.934316,
		-0.836596, -0.541388, -0.083697,
		-0.484965, 0.802970, -0.346479,
		32.827950, 37.280537, 29.496185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786976, 36.459385, 29.179913>,  <33.167423, 36.718456, 29.738720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786976, 36.459385, 29.179913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830055, 36.853294, 29.125328>,  <32.855904, 37.089642, 29.092577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830055, 36.853294, 29.125328>,  <32.786976, 36.459385, 29.179913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830055, 36.853294, 29.125328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312528, -0.163838, -0.935673,
		-0.943783, 0.058127, -0.325415,
		0.107703, 0.984773, -0.136461,
		32.862366, 37.148727, 29.084391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384624, 36.627739, 28.537849>,  <32.786976, 36.459385, 29.179913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384624, 36.627739, 28.537849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668430, 36.904087, 28.593391>,  <32.838715, 37.069897, 28.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668430, 36.904087, 28.593391>,  <32.384624, 36.627739, 28.537849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668430, 36.904087, 28.593391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304976, -0.123410, -0.944330,
		-0.635278, 0.712364, -0.298262,
		0.709515, 0.690874, 0.138855,
		32.881287, 37.111351, 28.635048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367943, 37.047997, 27.941658>,  <32.384624, 36.627739, 28.537849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367943, 37.047997, 27.941658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727413, 37.131824, 28.095779>,  <32.943096, 37.182121, 28.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727413, 37.131824, 28.095779>,  <32.367943, 37.047997, 27.941658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727413, 37.131824, 28.095779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408378, -0.079306, -0.909361,
		-0.160018, 0.974572, -0.156854,
		0.898678, 0.209570, 0.385303,
		32.997017, 37.194695, 28.211370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570595, 37.501625, 27.509041>,  <32.367943, 37.047997, 27.941658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570595, 37.501625, 27.509041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909126, 37.377045, 27.681889>,  <33.112244, 37.302296, 27.785597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909126, 37.377045, 27.681889>,  <32.570595, 37.501625, 27.509041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909126, 37.377045, 27.681889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406343, -0.147031, -0.901813,
		0.344404, 0.938819, 0.002119,
		0.846328, -0.311449, 0.432121,
		33.163025, 37.283611, 27.811525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056252, 37.837513, 27.219927>,  <32.570595, 37.501625, 27.509041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056252, 37.837513, 27.219927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267941, 37.525047, 27.352413>,  <33.394955, 37.337566, 27.431906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267941, 37.525047, 27.352413>,  <33.056252, 37.837513, 27.219927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267941, 37.525047, 27.352413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388084, -0.124286, -0.913206,
		0.754529, 0.611830, 0.237382,
		0.529223, -0.781164, 0.331218,
		33.426708, 37.290699, 27.451778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570496, 37.865116, 26.913658>,  <33.056252, 37.837513, 27.219927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570496, 37.865116, 26.913658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622009, 37.484932, 27.026825>,  <33.652920, 37.256821, 27.094725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622009, 37.484932, 27.026825>,  <33.570496, 37.865116, 26.913658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622009, 37.484932, 27.026825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348193, -0.223790, -0.910319,
		0.928534, 0.215747, 0.302122,
		0.128787, -0.950459, 0.282918,
		33.660645, 37.199795, 27.111700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180702, 37.700104, 26.659748>,  <33.570496, 37.865116, 26.913658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180702, 37.700104, 26.659748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016827, 37.341583, 26.727623>,  <33.918503, 37.126469, 26.768347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016827, 37.341583, 26.727623>,  <34.180702, 37.700104, 26.659748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016827, 37.341583, 26.727623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351821, -0.326870, -0.877142,
		0.841652, -0.299656, 0.449254,
		-0.409688, -0.896305, 0.169685,
		33.893921, 37.072693, 26.778528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690922, 37.168003, 26.480040>,  <34.180702, 37.700104, 26.659748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690922, 37.168003, 26.480040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331661, 36.993793, 26.455894>,  <34.116104, 36.889267, 26.441406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331661, 36.993793, 26.455894>,  <34.690922, 37.168003, 26.480040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331661, 36.993793, 26.455894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246358, -0.384755, -0.889534,
		0.364190, -0.813806, 0.452863,
		-0.898150, -0.435525, -0.060364,
		34.062218, 36.863136, 26.437786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864601, 36.564438, 26.130072>,  <34.690922, 37.168003, 26.480040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864601, 36.564438, 26.130072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465328, 36.570404, 26.106743>,  <34.225765, 36.573982, 26.092745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465328, 36.570404, 26.106743>,  <34.864601, 36.564438, 26.130072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465328, 36.570404, 26.106743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044945, -0.459937, -0.886813,
		-0.040050, -0.887826, 0.458433,
		-0.998186, 0.014912, -0.058324,
		34.165871, 36.574879, 26.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671669, 35.881260, 26.051153>,  <34.864601, 36.564438, 26.130072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671669, 35.881260, 26.051153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396404, 36.120792, 25.887280>,  <34.231247, 36.264511, 25.788956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396404, 36.120792, 25.887280>,  <34.671669, 35.881260, 26.051153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396404, 36.120792, 25.887280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032390, -0.538725, -0.841859,
		-0.724838, -0.592601, 0.351331,
		-0.688157, 0.598831, -0.409683,
		34.189957, 36.300442, 25.764374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155079, 35.440029, 25.683819>,  <34.671669, 35.881260, 26.051153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155079, 35.440029, 25.683819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063984, 35.793510, 25.520256>,  <34.009327, 36.005600, 25.422119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063984, 35.793510, 25.520256>,  <34.155079, 35.440029, 25.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063984, 35.793510, 25.520256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092990, -0.437759, -0.894270,
		-0.969273, -0.165632, 0.181868,
		-0.227735, 0.883704, -0.408906,
		33.995663, 36.058620, 25.397585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496086, 35.361996, 25.213123>,  <34.155079, 35.440029, 25.683819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496086, 35.361996, 25.213123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718124, 35.667412, 25.081135>,  <33.851349, 35.850662, 25.001942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718124, 35.667412, 25.081135>,  <33.496086, 35.361996, 25.213123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718124, 35.667412, 25.081135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076498, -0.348159, -0.934309,
		-0.828262, 0.543873, -0.134852,
		0.555095, 0.763537, -0.329972,
		33.884651, 35.896473, 24.982143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177574, 35.600536, 24.503740>,  <33.496086, 35.361996, 25.213123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177574, 35.600536, 24.503740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546276, 35.754932, 24.488873>,  <33.767498, 35.847572, 24.479952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546276, 35.754932, 24.488873>,  <33.177574, 35.600536, 24.503740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546276, 35.754932, 24.488873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065994, -0.250601, -0.965839,
		-0.382122, 0.887811, -0.256465,
		0.921752, 0.385993, -0.037170,
		33.822803, 35.870731, 24.477722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606518, 35.887165, 24.638172>,  <33.177574, 35.600536, 24.503740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606518, 35.887165, 24.638172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331200, 35.770905, 24.372307>,  <32.166008, 35.701149, 24.212788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331200, 35.770905, 24.372307>,  <32.606518, 35.887165, 24.638172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331200, 35.770905, 24.372307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710603, 0.454450, 0.537139,
		0.145937, 0.842020, -0.519331,
		-0.688292, -0.290650, -0.664663,
		32.124710, 35.683708, 24.172909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223843, 36.437141, 24.539640>,  <32.606518, 35.887165, 24.638172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223843, 36.437141, 24.539640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006771, 36.123493, 24.419205>,  <31.876528, 35.935303, 24.346943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006771, 36.123493, 24.419205>,  <32.223843, 36.437141, 24.539640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006771, 36.123493, 24.419205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745752, 0.284871, 0.602247,
		-0.386463, 0.551364, -0.739353,
		-0.542679, -0.784121, -0.301089,
		31.843967, 35.888256, 24.328878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521915, 36.774082, 24.585320>,  <32.223843, 36.437141, 24.539640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521915, 36.774082, 24.585320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478456, 36.377037, 24.563736>,  <31.452381, 36.138809, 24.550785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478456, 36.377037, 24.563736>,  <31.521915, 36.774082, 24.585320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478456, 36.377037, 24.563736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688277, 0.035946, 0.724557,
		-0.717267, 0.115859, -0.687099,
		-0.108645, -0.992615, -0.053960,
		31.445864, 36.079254, 24.547548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805214, 36.648254, 24.521984>,  <31.521915, 36.774082, 24.585320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805214, 36.648254, 24.521984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989639, 36.323475, 24.665184>,  <31.100294, 36.128609, 24.751104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989639, 36.323475, 24.665184>,  <30.805214, 36.648254, 24.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989639, 36.323475, 24.665184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698447, -0.083206, 0.710808,
		-0.547350, -0.577771, -0.605465,
		0.461063, -0.811947, 0.358000,
		31.127958, 36.079891, 24.772585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188564, 36.260857, 24.630331>,  <30.805214, 36.648254, 24.521984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188564, 36.260857, 24.630331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505720, 36.131710, 24.837051>,  <30.696012, 36.054222, 24.961084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505720, 36.131710, 24.837051>,  <30.188564, 36.260857, 24.630331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505720, 36.131710, 24.837051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581737, -0.148575, 0.799692,
		-0.181421, -0.934705, -0.305634,
		0.792886, -0.322880, 0.516798,
		30.743587, 36.034847, 24.992092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851322, 35.781639, 25.086004>,  <30.188564, 36.260857, 24.630331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851322, 35.781639, 25.086004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205542, 35.876263, 25.245926>,  <30.418074, 35.933037, 25.341879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205542, 35.876263, 25.245926>,  <29.851322, 35.781639, 25.086004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205542, 35.876263, 25.245926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422668, 0.053173, 0.904724,
		0.192757, -0.970162, 0.147071,
		0.885549, 0.236554, 0.399807,
		30.471207, 35.947231, 25.365868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722939, 35.520218, 25.678820>,  <29.851322, 35.781639, 25.086004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722939, 35.520218, 25.678820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040766, 35.744953, 25.770905>,  <30.231462, 35.879795, 25.826155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040766, 35.744953, 25.770905>,  <29.722939, 35.520218, 25.678820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040766, 35.744953, 25.770905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334429, 0.088512, 0.938255,
		0.506774, -0.822496, 0.258225,
		0.794567, 0.561841, 0.230211,
		30.279137, 35.913506, 25.839968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048754, 35.288979, 26.418690>,  <29.722939, 35.520218, 25.678820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048754, 35.288979, 26.418690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164158, 35.665401, 26.348064>,  <30.233400, 35.891254, 26.305689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164158, 35.665401, 26.348064>,  <30.048754, 35.288979, 26.418690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164158, 35.665401, 26.348064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271454, 0.257229, 0.927440,
		0.918191, -0.219647, 0.329666,
		0.288509, 0.941057, -0.176562,
		30.250711, 35.947720, 26.295095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386724, 35.417316, 27.003490>,  <30.048754, 35.288979, 26.418690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386724, 35.417316, 27.003490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342991, 35.783649, 26.848938>,  <30.316751, 36.003448, 26.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342991, 35.783649, 26.848938>,  <30.386724, 35.417316, 27.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342991, 35.783649, 26.848938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288965, 0.342640, 0.893922,
		0.951076, 0.209385, 0.227183,
		-0.109332, 0.915836, -0.386382,
		30.310192, 36.058399, 26.733023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656122, 35.788223, 27.502502>,  <30.386724, 35.417316, 27.003490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656122, 35.788223, 27.502502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448364, 36.049862, 27.282543>,  <30.323709, 36.206844, 27.150568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448364, 36.049862, 27.282543>,  <30.656122, 35.788223, 27.502502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448364, 36.049862, 27.282543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316917, 0.450172, 0.834810,
		0.793595, 0.607868, -0.026522,
		-0.519394, 0.654096, -0.549898,
		30.292545, 36.246090, 27.117573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645535, 36.416271, 27.794802>,  <30.656122, 35.788223, 27.502502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645535, 36.416271, 27.794802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340025, 36.492966, 27.548264>,  <30.156719, 36.538982, 27.400341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340025, 36.492966, 27.548264>,  <30.645535, 36.416271, 27.794802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340025, 36.492966, 27.548264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458641, 0.510689, 0.727217,
		0.454199, 0.838112, -0.302112,
		-0.763775, 0.191741, -0.616347,
		30.110893, 36.550488, 27.363359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541172, 37.203968, 27.570055>,  <30.645535, 36.416271, 27.794802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541172, 37.203968, 27.570055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182602, 37.028091, 27.547810>,  <29.967461, 36.922565, 27.534462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182602, 37.028091, 27.547810>,  <30.541172, 37.203968, 27.570055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182602, 37.028091, 27.547810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322762, 0.561679, 0.761801,
		-0.303720, 0.700849, -0.645419,
		-0.896426, -0.439691, -0.055614,
		29.913673, 36.896183, 27.531126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932814, 37.684204, 27.534740>,  <30.541172, 37.203968, 27.570055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932814, 37.684204, 27.534740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788853, 37.355247, 27.710987>,  <29.702477, 37.157875, 27.816734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788853, 37.355247, 27.710987>,  <29.932814, 37.684204, 27.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788853, 37.355247, 27.710987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395357, 0.562197, 0.726380,
		-0.845081, 0.087227, -0.527475,
		-0.359905, -0.822391, 0.440616,
		29.680882, 37.108532, 27.843172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249617, 37.863972, 27.803951>,  <29.932814, 37.684204, 27.534740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249617, 37.863972, 27.803951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320595, 37.529026, 28.010769>,  <29.363182, 37.328060, 28.134859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320595, 37.529026, 28.010769>,  <29.249617, 37.863972, 27.803951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320595, 37.529026, 28.010769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313250, 0.450000, 0.836286,
		-0.932946, -0.310359, -0.182454,
		0.177444, -0.837363, 0.517045,
		29.373829, 37.277817, 28.165882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679613, 37.810978, 28.253592>,  <29.249617, 37.863972, 27.803951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679613, 37.810978, 28.253592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971436, 37.584934, 28.407684>,  <29.146528, 37.449310, 28.500141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971436, 37.584934, 28.407684>,  <28.679613, 37.810978, 28.253592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971436, 37.584934, 28.407684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339065, 0.190322, 0.921310,
		-0.593956, -0.802766, -0.052758,
		0.729555, -0.565106, 0.385233,
		29.190302, 37.415401, 28.523254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397936, 37.245506, 28.622112>,  <28.679613, 37.810978, 28.253592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397936, 37.245506, 28.622112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758011, 37.283886, 28.792034>,  <28.974056, 37.306915, 28.893988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758011, 37.283886, 28.792034>,  <28.397936, 37.245506, 28.622112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758011, 37.283886, 28.792034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419969, -0.066948, 0.905066,
		0.115278, -0.993132, -0.019971,
		0.900187, 0.095947, 0.424803,
		29.028067, 37.312672, 28.919476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382055, 36.784046, 29.264175>,  <28.397936, 37.245506, 28.622112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382055, 36.784046, 29.264175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723959, 36.987564, 29.305183>,  <28.929102, 37.109676, 29.329788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723959, 36.987564, 29.305183>,  <28.382055, 36.784046, 29.264175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723959, 36.987564, 29.305183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006244, -0.207588, 0.978196,
		0.518988, -0.835482, -0.180615,
		0.854759, 0.508800, 0.102519,
		28.980387, 37.140205, 29.335939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826742, 36.425117, 29.654890>,  <28.382055, 36.784046, 29.264175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826742, 36.425117, 29.654890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902809, 36.813961, 29.709797>,  <28.948450, 37.047268, 29.742741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902809, 36.813961, 29.709797>,  <28.826742, 36.425117, 29.654890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902809, 36.813961, 29.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216703, -0.094807, 0.971623,
		0.957536, -0.214518, 0.192630,
		0.190168, 0.972108, 0.137268,
		28.959860, 37.105595, 29.750977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343744, 36.464752, 30.126209>,  <28.826742, 36.425117, 29.654890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343744, 36.464752, 30.126209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126974, 36.800385, 30.107159>,  <28.996912, 37.001762, 30.095728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126974, 36.800385, 30.107159>,  <29.343744, 36.464752, 30.126209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126974, 36.800385, 30.107159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345723, -0.170919, 0.922639,
		0.766025, 0.516466, 0.382713,
		-0.541925, 0.839077, -0.047626,
		28.964397, 37.052109, 30.092871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365200, 36.636349, 30.829391>,  <29.343744, 36.464752, 30.126209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365200, 36.636349, 30.829391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113655, 36.927200, 30.719254>,  <28.962729, 37.101711, 30.653172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113655, 36.927200, 30.719254>,  <29.365200, 36.636349, 30.829391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113655, 36.927200, 30.719254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412573, -0.011903, 0.910847,
		0.659027, 0.686396, 0.307480,
		-0.628862, 0.727130, -0.275344,
		28.924997, 37.145340, 30.636650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516174, 37.117985, 31.207331>,  <29.365200, 36.636349, 30.829391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516174, 37.117985, 31.207331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145710, 37.186520, 31.072948>,  <28.923431, 37.227642, 30.992319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145710, 37.186520, 31.072948>,  <29.516174, 37.117985, 31.207331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145710, 37.186520, 31.072948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347470, -0.041415, 0.936776,
		0.146595, 0.984341, 0.097893,
		-0.926161, 0.171342, -0.335957,
		28.867861, 37.237923, 30.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210556, 37.779621, 31.582235>,  <29.516174, 37.117985, 31.207331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210556, 37.779621, 31.582235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924772, 37.540741, 31.436417>,  <28.753302, 37.397411, 31.348927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924772, 37.540741, 31.436417>,  <29.210556, 37.779621, 31.582235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924772, 37.540741, 31.436417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439182, -0.022811, 0.898109,
		-0.544670, 0.801764, -0.245984,
		-0.714460, -0.597205, -0.364545,
		28.710434, 37.361580, 31.327053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590406, 38.017590, 31.892159>,  <29.210556, 37.779621, 31.582235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590406, 38.017590, 31.892159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485931, 37.651192, 31.770344>,  <28.423246, 37.431355, 31.697254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485931, 37.651192, 31.770344>,  <28.590406, 38.017590, 31.892159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485931, 37.651192, 31.770344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181918, -0.263126, 0.947455,
		-0.947991, 0.302864, -0.097910,
		-0.261188, -0.915990, -0.304537,
		28.407576, 37.376396, 31.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027479, 37.898033, 32.227997>,  <28.590406, 38.017590, 31.892159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027479, 37.898033, 32.227997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147223, 37.536091, 32.106926>,  <28.219069, 37.318924, 32.034283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147223, 37.536091, 32.106926>,  <28.027479, 37.898033, 32.227997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147223, 37.536091, 32.106926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345985, -0.398580, 0.849369,
		-0.889201, -0.149543, -0.432386,
		0.299358, -0.904859, -0.302678,
		28.237030, 37.264633, 32.016121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440224, 37.420063, 32.416473>,  <28.027479, 37.898033, 32.227997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440224, 37.420063, 32.416473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757095, 37.182827, 32.358932>,  <27.947218, 37.040485, 32.324409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757095, 37.182827, 32.358932>,  <27.440224, 37.420063, 32.416473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757095, 37.182827, 32.358932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207310, -0.483210, 0.850606,
		-0.574002, -0.644008, -0.505743,
		0.792177, -0.593095, -0.143854,
		27.994749, 37.004898, 32.315777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158037, 36.673367, 32.584202>,  <27.440224, 37.420063, 32.416473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158037, 36.673367, 32.584202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555336, 36.708649, 32.614357>,  <27.793715, 36.729820, 32.632450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555336, 36.708649, 32.614357>,  <27.158037, 36.673367, 32.584202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555336, 36.708649, 32.614357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019355, -0.514665, 0.857173,
		0.114413, -0.852841, -0.509481,
		0.993245, 0.088210, 0.075391,
		27.853310, 36.735111, 32.636974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530685, 35.944233, 32.608807>,  <27.158037, 36.673367, 32.584202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530685, 35.944233, 32.608807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811960, 36.155025, 32.799725>,  <27.980726, 36.281502, 32.914276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811960, 36.155025, 32.799725>,  <27.530685, 35.944233, 32.608807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811960, 36.155025, 32.799725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018087, -0.684344, 0.728935,
		0.710774, -0.503946, -0.490754,
		0.703188, 0.526984, 0.477299,
		28.022917, 36.313122, 32.942913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875116, 35.471897, 32.835239>,  <27.530685, 35.944233, 32.608807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875116, 35.471897, 32.835239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999763, 35.772984, 33.067211>,  <28.074551, 35.953636, 33.206394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999763, 35.772984, 33.067211>,  <27.875116, 35.471897, 32.835239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999763, 35.772984, 33.067211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051656, -0.622837, 0.780645,
		0.948803, -0.213305, -0.232968,
		0.311616, 0.752712, 0.579931,
		28.093248, 35.998798, 33.241192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408741, 35.225056, 33.236160>,  <27.875116, 35.471897, 32.835239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408741, 35.225056, 33.236160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263983, 35.544033, 33.429291>,  <28.177128, 35.735420, 33.545170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263983, 35.544033, 33.429291>,  <28.408741, 35.225056, 33.236160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263983, 35.544033, 33.429291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190538, -0.443720, 0.875676,
		0.912539, 0.408899, 0.008637,
		-0.361895, 0.797443, 0.482822,
		28.155415, 35.783264, 33.574139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746590, 35.231445, 33.929859>,  <28.408741, 35.225056, 33.236160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746590, 35.231445, 33.929859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474638, 35.513840, 34.009205>,  <28.311468, 35.683277, 34.056812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474638, 35.513840, 34.009205>,  <28.746590, 35.231445, 33.929859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474638, 35.513840, 34.009205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023986, -0.248946, 0.968220,
		0.732933, 0.663030, 0.152318,
		-0.679878, 0.705987, 0.198364,
		28.270674, 35.725636, 34.068714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912228, 35.559650, 34.523296>,  <28.746590, 35.231445, 33.929859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912228, 35.559650, 34.523296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518095, 35.608131, 34.475239>,  <28.281616, 35.637218, 34.446404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518095, 35.608131, 34.475239>,  <28.912228, 35.559650, 34.523296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518095, 35.608131, 34.475239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150286, -0.282695, 0.947363,
		0.080860, 0.951522, 0.296763,
		-0.985330, 0.121203, -0.120142,
		28.222496, 35.644493, 34.439198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555658, 36.003769, 35.053177>,  <28.912228, 35.559650, 34.523296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555658, 36.003769, 35.053177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265945, 35.763229, 34.918243>,  <28.092117, 35.618904, 34.837284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265945, 35.763229, 34.918243>,  <28.555658, 36.003769, 35.053177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265945, 35.763229, 34.918243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268333, -0.204836, 0.941297,
		-0.635147, 0.772282, -0.013003,
		-0.724283, -0.601351, -0.337330,
		28.048660, 35.582825, 34.817043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116020, 35.993305, 35.580978>,  <28.555658, 36.003769, 35.053177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116020, 35.993305, 35.580978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946346, 35.702648, 35.364807>,  <27.844542, 35.528255, 35.235107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946346, 35.702648, 35.364807>,  <28.116020, 35.993305, 35.580978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946346, 35.702648, 35.364807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453947, -0.345758, 0.821208,
		-0.783581, 0.593668, -0.183192,
		-0.424185, -0.726643, -0.540423,
		27.819092, 35.484653, 35.202679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360291, 36.033710, 35.750546>,  <28.116020, 35.993305, 35.580978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360291, 36.033710, 35.750546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507042, 35.676289, 35.647038>,  <27.595093, 35.461834, 35.584934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507042, 35.676289, 35.647038>,  <27.360291, 36.033710, 35.750546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507042, 35.676289, 35.647038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479150, -0.419936, 0.770759,
		-0.797381, -0.158786, -0.582211,
		0.366877, -0.893555, -0.258767,
		27.617105, 35.408222, 35.569408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812405, 35.526325, 35.793900>,  <27.360291, 36.033710, 35.750546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812405, 35.526325, 35.793900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134235, 35.291496, 35.829678>,  <27.327333, 35.150600, 35.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134235, 35.291496, 35.829678>,  <26.812405, 35.526325, 35.793900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134235, 35.291496, 35.829678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425628, -0.465056, 0.776250,
		-0.414114, -0.662626, -0.624048,
		0.804581, -0.587068, 0.089446,
		27.375608, 35.115376, 35.856510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601816, 34.824139, 35.969772>,  <26.812405, 35.526325, 35.793900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601816, 34.824139, 35.969772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981842, 34.803036, 36.092796>,  <27.209858, 34.790375, 36.166611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981842, 34.803036, 36.092796>,  <26.601816, 34.824139, 35.969772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981842, 34.803036, 36.092796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304612, -0.370684, 0.877385,
		0.067718, -0.927260, -0.368245,
		0.950066, -0.052757, 0.307557,
		27.266861, 34.787209, 36.185062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602001, 34.231201, 36.275806>,  <26.601816, 34.824139, 35.969772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602001, 34.231201, 36.275806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910217, 34.446312, 36.412663>,  <27.095148, 34.575378, 36.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910217, 34.446312, 36.412663>,  <26.602001, 34.231201, 36.275806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910217, 34.446312, 36.412663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177502, -0.334497, 0.925530,
		0.612176, -0.773889, -0.162286,
		0.770541, 0.537781, 0.342138,
		27.141380, 34.607647, 36.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003851, 33.712025, 36.743935>,  <26.602001, 34.231201, 36.275806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003851, 33.712025, 36.743935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121883, 34.084782, 36.828327>,  <27.192703, 34.308434, 36.878963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121883, 34.084782, 36.828327>,  <27.003851, 33.712025, 36.743935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121883, 34.084782, 36.828327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052844, -0.204554, 0.977428,
		0.954010, -0.299569, -0.011115,
		0.295081, 0.931888, 0.210977,
		27.210407, 34.364349, 36.891621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101690, 33.125275, 37.164680>,  <27.003851, 33.712025, 36.743935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101690, 33.125275, 37.164680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070866, 32.728554, 37.205463>,  <27.052370, 32.490520, 37.229931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070866, 32.728554, 37.205463>,  <27.101690, 33.125275, 37.164680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070866, 32.728554, 37.205463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437063, -0.125513, -0.890630,
		0.896123, -0.024073, 0.443151,
		-0.077061, -0.991800, 0.101953,
		27.047747, 32.431015, 37.236050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696049, 32.912693, 36.906685>,  <27.101690, 33.125275, 37.164680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696049, 32.912693, 36.906685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432291, 32.614117, 36.870853>,  <27.274036, 32.434971, 36.849354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432291, 32.614117, 36.870853>,  <27.696049, 32.912693, 36.906685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432291, 32.614117, 36.870853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134642, -0.000029, -0.990894,
		0.739642, -0.665451, 0.100521,
		-0.659395, -0.746441, -0.089577,
		27.234472, 32.390182, 36.843979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090450, 32.403416, 36.521633>,  <27.696049, 32.912693, 36.906685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090450, 32.403416, 36.521633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702053, 32.319111, 36.476463>,  <27.469015, 32.268528, 36.449360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702053, 32.319111, 36.476463>,  <28.090450, 32.403416, 36.521633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702053, 32.319111, 36.476463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130800, -0.072842, -0.988729,
		0.200159, -0.974820, 0.098297,
		-0.970993, -0.210760, -0.112926,
		27.410755, 32.255882, 36.442585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017393, 31.747393, 36.197346>,  <28.090450, 32.403416, 36.521633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017393, 31.747393, 36.197346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668524, 31.920422, 36.105961>,  <27.459202, 32.024239, 36.051128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668524, 31.920422, 36.105961>,  <28.017393, 31.747393, 36.197346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668524, 31.920422, 36.105961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139537, -0.227633, -0.963697,
		-0.468875, -0.872389, 0.138175,
		-0.872173, 0.432573, -0.228463,
		27.406872, 32.050194, 36.037422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791218, 31.415915, 35.602409>,  <28.017393, 31.747393, 36.197346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791218, 31.415915, 35.602409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553579, 31.737671, 35.601276>,  <27.410997, 31.930725, 35.600597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553579, 31.737671, 35.601276>,  <27.791218, 31.415915, 35.602409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553579, 31.737671, 35.601276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158599, -0.120585, -0.979952,
		-0.788605, -0.581735, 0.199214,
		-0.594095, 0.804390, -0.002831,
		27.375351, 31.978989, 35.600426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320694, 31.328510, 35.033119>,  <27.791218, 31.415915, 35.602409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320694, 31.328510, 35.033119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299931, 31.723442, 35.093098>,  <27.287474, 31.960402, 35.129086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299931, 31.723442, 35.093098>,  <27.320694, 31.328510, 35.033119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299931, 31.723442, 35.093098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000740, 0.150189, -0.988657,
		-0.998652, -0.051207, -0.008526,
		-0.051907, 0.987330, 0.149949,
		27.284359, 32.019642, 35.138081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888729, 31.510115, 34.532730>,  <27.320694, 31.328510, 35.033119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888729, 31.510115, 34.532730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086273, 31.847435, 34.617535>,  <27.204800, 32.049828, 34.668415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086273, 31.847435, 34.617535>,  <26.888729, 31.510115, 34.532730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086273, 31.847435, 34.617535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076034, 0.284764, -0.955577,
		-0.866211, 0.455800, 0.204753,
		0.493859, 0.843300, 0.212009,
		27.234430, 32.100426, 34.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436060, 32.136433, 34.172714>,  <26.888729, 31.510115, 34.532730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436060, 32.136433, 34.172714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820192, 32.229073, 34.234848>,  <27.050671, 32.284657, 34.272129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820192, 32.229073, 34.234848>,  <26.436060, 32.136433, 34.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820192, 32.229073, 34.234848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030273, 0.467142, -0.883664,
		-0.277222, 0.853310, 0.441598,
		0.960329, 0.231603, 0.155334,
		27.108292, 32.298553, 34.281448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466915, 32.815590, 34.192722>,  <26.436060, 32.136433, 34.172714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466915, 32.815590, 34.192722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840742, 32.725613, 34.082458>,  <27.065039, 32.671627, 34.016300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840742, 32.725613, 34.082458>,  <26.466915, 32.815590, 34.192722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840742, 32.725613, 34.082458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055805, 0.672520, -0.737972,
		0.351388, 0.705066, 0.615961,
		0.934565, -0.224941, -0.275661,
		27.121111, 32.658131, 33.999760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751554, 33.511803, 34.079060>,  <26.466915, 32.815590, 34.192722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751554, 33.511803, 34.079060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027060, 33.278427, 33.906918>,  <27.192362, 33.138401, 33.803631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027060, 33.278427, 33.906918>,  <26.751554, 33.511803, 34.079060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027060, 33.278427, 33.906918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144096, 0.691928, -0.707440,
		0.710523, 0.425245, 0.560645,
		0.688762, -0.583440, -0.430355,
		27.233688, 33.103394, 33.777813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211079, 34.000587, 33.768372>,  <26.751554, 33.511803, 34.079060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211079, 34.000587, 33.768372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298262, 33.647789, 33.601242>,  <27.350571, 33.436111, 33.500965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298262, 33.647789, 33.601242>,  <27.211079, 34.000587, 33.768372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298262, 33.647789, 33.601242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251636, 0.464430, -0.849108,
		0.942960, 0.079929, 0.323167,
		0.217957, -0.881995, -0.417826,
		27.363649, 33.383190, 33.475895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835955, 34.126945, 33.477657>,  <27.211079, 34.000587, 33.768372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835955, 34.126945, 33.477657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681047, 33.813519, 33.283321>,  <27.588104, 33.625462, 33.166718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681047, 33.813519, 33.283321>,  <27.835955, 34.126945, 33.477657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681047, 33.813519, 33.283321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324382, 0.377470, -0.867348,
		0.863019, -0.493494, 0.107995,
		-0.387266, -0.783569, -0.485844,
		27.564867, 33.578449, 33.137569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375278, 33.923325, 32.868263>,  <27.835955, 34.126945, 33.477657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375278, 33.923325, 32.868263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017925, 33.782906, 32.756100>,  <27.803513, 33.698654, 32.688801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017925, 33.782906, 32.756100>,  <28.375278, 33.923325, 32.868263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017925, 33.782906, 32.756100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240838, 0.152711, -0.958476,
		0.379293, -0.923821, -0.051884,
		-0.893383, -0.351048, -0.280413,
		27.749910, 33.677593, 32.671974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454189, 33.386971, 32.253536>,  <28.375278, 33.923325, 32.868263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454189, 33.386971, 32.253536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059814, 33.451202, 32.235004>,  <27.823191, 33.489742, 32.223885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059814, 33.451202, 32.235004>,  <28.454189, 33.386971, 32.253536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059814, 33.451202, 32.235004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046891, -0.000281, -0.998900,
		-0.160416, -0.987023, -0.007253,
		-0.985935, 0.160579, -0.046327,
		27.764034, 33.499374, 32.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177567, 32.913502, 31.698431>,  <28.454189, 33.386971, 32.253536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177567, 32.913502, 31.698431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928606, 33.223301, 31.743622>,  <27.779230, 33.409180, 31.770737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928606, 33.223301, 31.743622>,  <28.177567, 32.913502, 31.698431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928606, 33.223301, 31.743622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160720, 0.267735, -0.949993,
		-0.766019, -0.573119, -0.291117,
		-0.622402, 0.774501, 0.112978,
		27.741886, 33.455650, 31.777515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621239, 32.913433, 31.116508>,  <28.177567, 32.913502, 31.698431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621239, 32.913433, 31.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677044, 33.282875, 31.259331>,  <27.710527, 33.504539, 31.345024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677044, 33.282875, 31.259331>,  <27.621239, 32.913433, 31.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677044, 33.282875, 31.259331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328767, 0.296923, -0.896521,
		-0.934049, 0.242466, -0.262226,
		0.139515, 0.923606, 0.357055,
		27.718899, 33.559956, 31.366447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380524, 33.215641, 30.532434>,  <27.621239, 32.913433, 31.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380524, 33.215641, 30.532434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566494, 33.494736, 30.750427>,  <27.678076, 33.662193, 30.881222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566494, 33.494736, 30.750427>,  <27.380524, 33.215641, 30.532434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566494, 33.494736, 30.750427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289575, 0.461856, -0.838353,
		-0.836653, 0.547586, 0.012682,
		0.464928, 0.697738, 0.544981,
		27.705973, 33.704056, 30.913921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238550, 33.729282, 30.148149>,  <27.380524, 33.215641, 30.532434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238550, 33.729282, 30.148149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546375, 33.809498, 30.390656>,  <27.731070, 33.857628, 30.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546375, 33.809498, 30.390656>,  <27.238550, 33.729282, 30.148149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546375, 33.809498, 30.390656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514863, 0.366762, -0.774856,
		-0.377743, 0.908444, 0.178997,
		0.769563, 0.200537, 0.606266,
		27.777245, 33.869659, 30.572535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467232, 34.392239, 29.925608>,  <27.238550, 33.729282, 30.148149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467232, 34.392239, 29.925608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769651, 34.220963, 30.123615>,  <27.951103, 34.118198, 30.242420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769651, 34.220963, 30.123615>,  <27.467232, 34.392239, 29.925608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769651, 34.220963, 30.123615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602345, 0.159293, -0.782181,
		0.256067, 0.889540, 0.378349,
		0.756049, -0.428187, 0.495020,
		27.996466, 34.092506, 30.272121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028261, 35.024948, 29.980841>,  <27.467232, 34.392239, 29.925608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028261, 35.024948, 29.980841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180981, 34.655647, 29.997963>,  <28.272614, 34.434067, 30.008236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180981, 34.655647, 29.997963>,  <28.028261, 35.024948, 29.980841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180981, 34.655647, 29.997963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592898, 0.209132, -0.777648,
		0.709014, 0.322285, 0.627242,
		0.381801, -0.923253, 0.042805,
		28.295521, 34.378670, 30.010805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703526, 35.092728, 29.781219>,  <28.028261, 35.024948, 29.980841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703526, 35.092728, 29.781219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623283, 34.704029, 29.731464>,  <28.575138, 34.470810, 29.701611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623283, 34.704029, 29.731464>,  <28.703526, 35.092728, 29.781219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623283, 34.704029, 29.731464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382866, 0.039109, -0.922976,
		0.901760, -0.232777, 0.364202,
		-0.200604, -0.971743, -0.124389,
		28.563103, 34.412506, 29.694147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234758, 34.861961, 29.344851>,  <28.703526, 35.092728, 29.781219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234758, 34.861961, 29.344851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963881, 34.569691, 29.310158>,  <28.801353, 34.394329, 29.289343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963881, 34.569691, 29.310158>,  <29.234758, 34.861961, 29.344851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963881, 34.569691, 29.310158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129904, -0.002703, -0.991523,
		0.724248, -0.682719, 0.096749,
		-0.677193, -0.730676, -0.086731,
		28.760723, 34.350487, 29.284138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586843, 34.480701, 28.903809>,  <29.234758, 34.861961, 29.344851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586843, 34.480701, 28.903809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198544, 34.385784, 28.889194>,  <28.965563, 34.328835, 28.880426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198544, 34.385784, 28.889194>,  <29.586843, 34.480701, 28.903809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198544, 34.385784, 28.889194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009977, 0.191906, -0.981363,
		0.239891, -0.952292, -0.188660,
		-0.970748, -0.237302, -0.036535,
		28.907318, 34.314594, 28.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479961, 33.950443, 28.321112>,  <29.586843, 34.480701, 28.903809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479961, 33.950443, 28.321112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127914, 34.120491, 28.405651>,  <28.916685, 34.222519, 28.456375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127914, 34.120491, 28.405651>,  <29.479961, 33.950443, 28.321112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127914, 34.120491, 28.405651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120212, 0.231115, -0.965471,
		-0.459283, -0.875136, -0.152305,
		-0.880118, 0.425115, 0.211349,
		28.863878, 34.248024, 28.469055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025000, 33.691799, 27.796513>,  <29.479961, 33.950443, 28.321112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025000, 33.691799, 27.796513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801245, 33.996658, 27.926880>,  <28.666992, 34.179573, 28.005100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801245, 33.996658, 27.926880>,  <29.025000, 33.691799, 27.796513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801245, 33.996658, 27.926880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261196, 0.211091, -0.941922,
		-0.786680, -0.612026, 0.080988,
		-0.559385, 0.762145, 0.325920,
		28.633429, 34.225304, 28.024656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283972, 33.694069, 27.510973>,  <29.025000, 33.691799, 27.796513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283972, 33.694069, 27.510973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360043, 34.070461, 27.622967>,  <28.405685, 34.296295, 27.690163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360043, 34.070461, 27.622967>,  <28.283972, 33.694069, 27.510973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360043, 34.070461, 27.622967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385288, 0.333845, -0.860291,
		-0.902987, 0.055735, 0.426038,
		0.190179, 0.940979, 0.279983,
		28.417097, 34.352757, 27.706963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643990, 34.005943, 27.480478>,  <28.283972, 33.694069, 27.510973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643990, 34.005943, 27.480478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916122, 34.298805, 27.467243>,  <28.079403, 34.474522, 27.459301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916122, 34.298805, 27.467243>,  <27.643990, 34.005943, 27.480478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916122, 34.298805, 27.467243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343631, 0.278779, -0.896772,
		-0.647352, 0.621474, 0.441254,
		0.680333, 0.732156, -0.033089,
		28.120222, 34.518452, 27.457317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342566, 34.695751, 27.241974>,  <27.643990, 34.005943, 27.480478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342566, 34.695751, 27.241974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728191, 34.757378, 27.155403>,  <27.959568, 34.794353, 27.103460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728191, 34.757378, 27.155403>,  <27.342566, 34.695751, 27.241974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728191, 34.757378, 27.155403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254367, 0.300282, -0.919308,
		-0.076642, 0.941326, 0.328680,
		0.964066, 0.154063, -0.216429,
		28.017410, 34.803596, 27.090475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341879, 35.292793, 26.769066>,  <27.342566, 34.695751, 27.241974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341879, 35.292793, 26.769066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694239, 35.111740, 26.713730>,  <27.905655, 35.003109, 26.680529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694239, 35.111740, 26.713730>,  <27.341879, 35.292793, 26.769066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694239, 35.111740, 26.713730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013144, 0.268780, -0.963112,
		0.473118, 0.850224, 0.230819,
		0.880901, -0.452632, -0.138340,
		27.958509, 34.975952, 26.672228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747845, 35.765949, 26.382698>,  <27.341879, 35.292793, 26.769066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747845, 35.765949, 26.382698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898731, 35.403999, 26.303802>,  <27.989264, 35.186829, 26.256464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898731, 35.403999, 26.303802>,  <27.747845, 35.765949, 26.382698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898731, 35.403999, 26.303802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152361, 0.149438, -0.976962,
		0.913507, 0.398577, -0.081498,
		0.377216, -0.904878, -0.197240,
		28.011896, 35.132534, 26.244631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162878, 35.865967, 25.805948>,  <27.747845, 35.765949, 26.382698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162878, 35.865967, 25.805948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071838, 35.477184, 25.782265>,  <28.017214, 35.243916, 25.768055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071838, 35.477184, 25.782265>,  <28.162878, 35.865967, 25.805948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071838, 35.477184, 25.782265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231045, 0.112969, -0.966362,
		0.945948, -0.206264, -0.250276,
		-0.227599, -0.971953, -0.059207,
		28.003559, 35.185596, 25.764503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392376, 35.677441, 25.205057>,  <28.162878, 35.865967, 25.805948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392376, 35.677441, 25.205057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122198, 35.390610, 25.273849>,  <27.960091, 35.218513, 25.315125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122198, 35.390610, 25.273849>,  <28.392376, 35.677441, 25.205057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122198, 35.390610, 25.273849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255619, 0.008918, -0.966736,
		0.691687, -0.696941, -0.189321,
		-0.675447, -0.717073, 0.171983,
		27.919563, 35.175488, 25.325445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258198, 35.332394, 24.549809>,  <28.392376, 35.677441, 25.205057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258198, 35.332394, 24.549809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964090, 35.148766, 24.749260>,  <27.787626, 35.038589, 24.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964090, 35.148766, 24.749260>,  <28.258198, 35.332394, 24.549809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964090, 35.148766, 24.749260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443531, -0.230397, -0.866139,
		0.512506, -0.858002, -0.034210,
		-0.735268, -0.459075, 0.498630,
		27.743509, 35.011044, 24.898849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055864, 34.715351, 24.131323>,  <28.258198, 35.332394, 24.549809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055864, 34.715351, 24.131323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751900, 34.796684, 24.378284>,  <27.569521, 34.845486, 24.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751900, 34.796684, 24.378284>,  <28.055864, 34.715351, 24.131323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751900, 34.796684, 24.378284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649415, -0.196292, -0.734662,
		-0.028191, -0.959231, 0.281214,
		-0.759911, 0.203336, 0.617406,
		27.523926, 34.857685, 24.563507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737041, 34.145023, 24.039848>,  <28.055864, 34.715351, 24.131323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737041, 34.145023, 24.039848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473179, 34.407364, 24.186661>,  <27.314861, 34.564766, 24.274748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473179, 34.407364, 24.186661>,  <27.737041, 34.145023, 24.039848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473179, 34.407364, 24.186661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662197, -0.276230, -0.696557,
		-0.355453, -0.702537, 0.616519,
		-0.659658, 0.655850, 0.367031,
		27.275282, 34.604118, 24.296770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120420, 33.756554, 24.241962>,  <27.737041, 34.145023, 24.039848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120420, 33.756554, 24.241962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068258, 34.140381, 24.142189>,  <27.036961, 34.370678, 24.082325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068258, 34.140381, 24.142189>,  <27.120420, 33.756554, 24.241962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068258, 34.140381, 24.142189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636790, -0.273894, -0.720750,
		-0.759930, 0.064849, 0.646762,
		-0.130404, 0.959571, -0.249435,
		27.029137, 34.428253, 24.067358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399586, 33.852505, 24.200420>,  <27.120420, 33.756554, 24.241962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399586, 33.852505, 24.200420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519081, 34.179996, 24.004280>,  <26.590778, 34.376492, 23.886597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519081, 34.179996, 24.004280>,  <26.399586, 33.852505, 24.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519081, 34.179996, 24.004280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617709, -0.225775, -0.753300,
		-0.727455, 0.527935, 0.438286,
		0.298739, 0.818725, -0.490351,
		26.608704, 34.425613, 23.857174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743998, 34.108936, 23.851820>,  <26.399586, 33.852505, 24.200420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743998, 34.108936, 23.851820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039982, 34.304146, 23.666653>,  <26.217573, 34.421272, 23.555552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039982, 34.304146, 23.666653>,  <25.743998, 34.108936, 23.851820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039982, 34.304146, 23.666653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478428, -0.101915, -0.872192,
		-0.472827, 0.866861, 0.158071,
		0.739960, 0.488022, -0.462919,
		26.261971, 34.450554, 23.527777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479143, 34.621876, 23.499176>,  <25.743998, 34.108936, 23.851820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479143, 34.621876, 23.499176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814564, 34.586052, 23.284210>,  <26.015816, 34.564556, 23.155231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814564, 34.586052, 23.284210>,  <25.479143, 34.621876, 23.499176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814564, 34.586052, 23.284210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544737, -0.120103, -0.829962,
		0.009790, 0.988713, -0.149501,
		0.838550, -0.089564, -0.537412,
		26.066130, 34.559181, 23.122986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288454, 34.997337, 22.822084>,  <25.479143, 34.621876, 23.499176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288454, 34.997337, 22.822084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600040, 34.753571, 22.763000>,  <25.786993, 34.607311, 22.727551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600040, 34.753571, 22.763000>,  <25.288454, 34.997337, 22.822084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600040, 34.753571, 22.763000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273024, -0.117563, -0.954797,
		0.564506, 0.784084, -0.257964,
		0.778968, -0.609419, -0.147709,
		25.833731, 34.570744, 22.718687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568165, 35.106518, 22.166269>,  <25.288454, 34.997337, 22.822084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568165, 35.106518, 22.166269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680042, 34.731827, 22.250473>,  <25.747168, 34.507011, 22.300995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680042, 34.731827, 22.250473>,  <25.568165, 35.106518, 22.166269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680042, 34.731827, 22.250473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154673, -0.260359, -0.953042,
		0.947549, 0.233997, -0.217707,
		0.279691, -0.936727, 0.210510,
		25.763950, 34.450809, 22.313625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986254, 35.656258, 22.014715>,  <25.568165, 35.106518, 22.166269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986254, 35.656258, 22.014715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724386, 35.872566, 21.803444>,  <24.567266, 36.002350, 21.676682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724386, 35.872566, 21.803444>,  <24.986254, 35.656258, 22.014715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724386, 35.872566, 21.803444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554303, 0.131651, 0.821837,
		0.513962, 0.830802, 0.213565,
		-0.654668, 0.540773, -0.528180,
		24.527987, 36.034798, 21.644989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673399, 36.215302, 22.440136>,  <24.986254, 35.656258, 22.014715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673399, 36.215302, 22.440136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427214, 36.085381, 22.152885>,  <24.279503, 36.007427, 21.980536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427214, 36.085381, 22.152885>,  <24.673399, 36.215302, 22.440136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427214, 36.085381, 22.152885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727954, -0.115021, 0.675909,
		-0.302138, 0.938761, -0.165653,
		-0.615463, -0.324805, -0.718127,
		24.242575, 35.987938, 21.937447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999834, 36.628517, 22.334858>,  <24.673399, 36.215302, 22.440136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999834, 36.628517, 22.334858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.975182, 36.242256, 22.233891>,  <23.960390, 36.010498, 22.173309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.975182, 36.242256, 22.233891>,  <23.999834, 36.628517, 22.334858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.975182, 36.242256, 22.233891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777965, -0.111958, 0.618252,
		-0.625278, 0.234476, -0.744344,
		-0.061630, -0.965653, -0.252420,
		23.956692, 35.952560, 22.158165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.512318, 36.379353, 21.874681>,  <23.999834, 36.628517, 22.334858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.512318, 36.379353, 21.874681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562325, 36.084583, 22.140408>,  <23.592329, 35.907722, 22.299843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562325, 36.084583, 22.140408>,  <23.512318, 36.379353, 21.874681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.562325, 36.084583, 22.140408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942049, 0.121926, 0.312535,
		-0.311313, -0.664887, -0.678977,
		0.125016, -0.736926, 0.664313,
		23.599829, 35.863506, 22.339701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.850166, 36.090542, 21.771925>,  <23.512318, 36.379353, 21.874681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.850166, 36.090542, 21.771925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.721491, 36.167850, 22.142689>,  <22.644285, 36.214237, 22.365147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.721491, 36.167850, 22.142689>,  <22.850166, 36.090542, 21.771925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721491, 36.167850, 22.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267813, 0.920398, -0.284858,
		-0.908181, -0.339874, -0.244320,
		-0.321688, 0.193271, 0.926911,
		22.624985, 36.225830, 22.420761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101143, 36.316002, 21.720493>,  <22.850166, 36.090542, 21.771925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101143, 36.316002, 21.720493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302021, 36.429325, 22.047306>,  <22.422548, 36.497318, 22.243393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302021, 36.429325, 22.047306>,  <22.101143, 36.316002, 21.720493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302021, 36.429325, 22.047306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180430, 0.958345, -0.221404,
		-0.845722, -0.036229, 0.532392,
		0.502194, 0.283306, 0.817031,
		22.452679, 36.514317, 22.292416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.549416, 36.936859, 21.530396>,  <22.101143, 36.316002, 21.720493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.549416, 36.936859, 21.530396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248058, 36.928467, 21.267502>,  <22.067244, 36.923431, 21.109766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248058, 36.928467, 21.267502>,  <22.549416, 36.936859, 21.530396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248058, 36.928467, 21.267502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276622, 0.896636, -0.345723,
		0.596554, -0.442271, -0.669716,
		-0.753395, -0.020984, -0.657233,
		22.022039, 36.922173, 21.070332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911741, 37.175526, 20.945772>,  <22.549416, 36.936859, 21.530396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911741, 37.175526, 20.945772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.521614, 37.247169, 20.894123>,  <22.287537, 37.290157, 20.863134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.521614, 37.247169, 20.894123>,  <22.911741, 37.175526, 20.945772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.521614, 37.247169, 20.894123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213185, 0.916139, -0.339473,
		0.057490, -0.358621, -0.931711,
		-0.975319, 0.179111, -0.129121,
		22.229019, 37.300903, 20.855387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.867346, 37.505894, 20.376257>,  <22.911741, 37.175526, 20.945772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.867346, 37.505894, 20.376257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488270, 37.589485, 20.472763>,  <22.260824, 37.639641, 20.530666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488270, 37.589485, 20.472763>,  <22.867346, 37.505894, 20.376257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488270, 37.589485, 20.472763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110314, 0.923730, -0.366816,
		-0.299523, -0.321013, -0.898463,
		-0.947691, 0.208983, 0.241266,
		22.203962, 37.652180, 20.545143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.574547, 37.864365, 19.723682>,  <22.867346, 37.505894, 20.376257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.574547, 37.864365, 19.723682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395634, 37.957485, 20.069107>,  <22.288286, 38.013359, 20.276361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395634, 37.957485, 20.069107>,  <22.574547, 37.864365, 19.723682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395634, 37.957485, 20.069107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104065, 0.972518, -0.208276,
		-0.888317, -0.003292, -0.459219,
		-0.447284, 0.232804, 0.863562,
		22.261448, 38.027325, 20.328176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079443, 38.261509, 19.537233>,  <22.574547, 37.864365, 19.723682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079443, 38.261509, 19.537233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160587, 38.351212, 19.918507>,  <22.209274, 38.405033, 20.147270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160587, 38.351212, 19.918507>,  <22.079443, 38.261509, 19.537233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160587, 38.351212, 19.918507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041391, 0.970587, -0.237164,
		-0.978333, 0.087564, 0.187611,
		0.202860, 0.224260, 0.953182,
		22.221445, 38.418491, 20.204462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978504, 38.979095, 19.531275>,  <22.079443, 38.261509, 19.537233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978504, 38.979095, 19.531275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142647, 38.921181, 19.891418>,  <22.241133, 38.886433, 20.107504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142647, 38.921181, 19.891418>,  <21.978504, 38.979095, 19.531275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142647, 38.921181, 19.891418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299249, 0.954023, 0.017032,
		-0.861428, 0.262442, 0.434817,
		0.410355, -0.144791, 0.900358,
		22.265753, 38.877743, 20.161526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641472, 39.468517, 19.966583>,  <21.978504, 38.979095, 19.531275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641472, 39.468517, 19.966583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.974604, 39.357025, 20.157875>,  <22.174482, 39.290131, 20.272650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.974604, 39.357025, 20.157875>,  <21.641472, 39.468517, 19.966583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.974604, 39.357025, 20.157875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235172, 0.960289, 0.150134,
		-0.501085, -0.012570, 0.865307,
		0.832832, -0.278726, 0.478230,
		22.224453, 39.273407, 20.301344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.714926, 39.804993, 20.626226>,  <21.641472, 39.468517, 19.966583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.714926, 39.804993, 20.626226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092194, 39.702911, 20.541092>,  <22.318554, 39.641663, 20.490011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092194, 39.702911, 20.541092>,  <21.714926, 39.804993, 20.626226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.092194, 39.702911, 20.541092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284880, 0.950706, 0.122478,
		0.171089, -0.176150, 0.969381,
		0.943171, -0.255203, -0.212837,
		22.375145, 39.626350, 20.477242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.183649, 40.178886, 21.100616>,  <21.714926, 39.804993, 20.626226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.183649, 40.178886, 21.100616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.422907, 40.077721, 20.796444>,  <22.566462, 40.017021, 20.613939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.422907, 40.077721, 20.796444>,  <22.183649, 40.178886, 21.100616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422907, 40.077721, 20.796444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439177, 0.897167, 0.047064,
		0.670332, -0.362115, 0.647709,
		0.598146, -0.252910, -0.760432,
		22.602350, 40.001846, 20.568314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.773214, 40.559288, 21.200871>,  <22.183649, 40.178886, 21.100616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.773214, 40.559288, 21.200871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.851810, 40.423687, 20.832855>,  <22.898968, 40.342327, 20.612047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.851810, 40.423687, 20.832855>,  <22.773214, 40.559288, 21.200871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.851810, 40.423687, 20.832855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706918, 0.699207, -0.106661,
		0.679455, -0.629432, 0.377038,
		0.196491, -0.339006, -0.920036,
		22.910757, 40.321983, 20.556845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.486275, 40.459473, 21.244028>,  <22.773214, 40.559288, 21.200871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.486275, 40.459473, 21.244028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.367256, 40.535519, 20.869793>,  <23.295845, 40.581146, 20.645252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.367256, 40.535519, 20.869793>,  <23.486275, 40.459473, 21.244028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.367256, 40.535519, 20.869793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698096, 0.711812, -0.077374,
		0.651251, -0.676151, -0.344518,
		-0.297548, 0.190117, -0.935586,
		23.277992, 40.592552, 20.589117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.059822, 40.531349, 20.852316>,  <23.486275, 40.459473, 21.244028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.059822, 40.531349, 20.852316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791740, 40.707561, 20.613400>,  <23.630892, 40.813290, 20.470049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791740, 40.707561, 20.613400>,  <24.059822, 40.531349, 20.852316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791740, 40.707561, 20.613400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622135, 0.772298, -0.128467,
		0.404694, -0.457695, -0.791668,
		-0.670202, 0.440535, -0.597292,
		23.590679, 40.839722, 20.434212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457468, 40.784058, 20.140648>,  <24.059822, 40.531349, 20.852316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457468, 40.784058, 20.140648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116549, 40.988163, 20.186642>,  <23.911997, 41.110626, 20.214239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116549, 40.988163, 20.186642>,  <24.457468, 40.784058, 20.140648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116549, 40.988163, 20.186642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453689, 0.830580, -0.322961,
		-0.260299, -0.223091, -0.939401,
		-0.852297, 0.510262, 0.114986,
		23.860859, 41.141243, 20.221138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278881, 41.041431, 19.459324>,  <24.457468, 40.784058, 20.140648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278881, 41.041431, 19.459324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.069527, 41.272686, 19.709709>,  <23.943914, 41.411438, 19.859941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.069527, 41.272686, 19.709709>,  <24.278881, 41.041431, 19.459324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.069527, 41.272686, 19.709709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340058, 0.815299, -0.468667,
		-0.781300, -0.032428, -0.623313,
		-0.523384, 0.578132, 0.625965,
		23.912512, 41.446125, 19.897499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.078663, 41.566162, 19.036993>,  <24.278881, 41.041431, 19.459324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.078663, 41.566162, 19.036993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.076525, 41.716846, 19.407520>,  <24.075241, 41.807255, 19.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.076525, 41.716846, 19.407520>,  <24.078663, 41.566162, 19.036993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.076525, 41.716846, 19.407520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140051, 0.917482, -0.372306,
		-0.990130, 0.127741, -0.057663,
		-0.005346, 0.376707, 0.926317,
		24.074921, 41.829857, 19.685415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630146, 42.212994, 19.079258>,  <24.078663, 41.566162, 19.036993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630146, 42.212994, 19.079258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897274, 42.231079, 19.376438>,  <24.057550, 42.241932, 19.554747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897274, 42.231079, 19.376438>,  <23.630146, 42.212994, 19.079258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897274, 42.231079, 19.376438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261308, 0.920378, -0.290900,
		-0.696947, 0.388407, 0.602831,
		0.667820, 0.045217, 0.742948,
		24.097620, 42.244644, 19.599323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.517513, 42.874599, 19.285151>,  <23.630146, 42.212994, 19.079258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.517513, 42.874599, 19.285151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.861876, 42.776093, 19.463226>,  <24.068493, 42.716988, 19.570072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.861876, 42.776093, 19.463226>,  <23.517513, 42.874599, 19.285151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.861876, 42.776093, 19.463226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358546, 0.914490, -0.187490,
		-0.360951, 0.321033, 0.875587,
		0.860906, -0.246264, 0.445192,
		24.120148, 42.702213, 19.596785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.609158, 43.370770, 19.699514>,  <23.517513, 42.874599, 19.285151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.609158, 43.370770, 19.699514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985447, 43.239017, 19.667152>,  <24.211220, 43.159966, 19.647736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985447, 43.239017, 19.667152>,  <23.609158, 43.370770, 19.699514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.985447, 43.239017, 19.667152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326912, 0.944100, -0.042463,
		0.090371, 0.013496, 0.995817,
		0.940724, -0.329382, -0.080907,
		24.267664, 43.140202, 19.642879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975935, 43.653309, 20.196064>,  <23.609158, 43.370770, 19.699514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975935, 43.653309, 20.196064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256493, 43.567783, 19.924084>,  <24.424828, 43.516468, 19.760897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256493, 43.567783, 19.924084>,  <23.975935, 43.653309, 20.196064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256493, 43.567783, 19.924084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169800, 0.976606, -0.131941,
		0.692253, -0.022912, 0.721291,
		0.701394, -0.213812, -0.679949,
		24.466911, 43.503639, 19.720098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.517233, 44.071819, 20.348423>,  <23.975935, 43.653309, 20.196064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.517233, 44.071819, 20.348423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577856, 43.971760, 19.965916>,  <24.614231, 43.911724, 19.736410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577856, 43.971760, 19.965916>,  <24.517233, 44.071819, 20.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577856, 43.971760, 19.965916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362936, 0.913954, -0.181561,
		0.919406, -0.319548, 0.229308,
		0.151560, -0.250152, -0.956271,
		24.623323, 43.896713, 19.679035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305061, 44.198864, 20.207972>,  <24.517233, 44.071819, 20.348423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305061, 44.198864, 20.207972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084518, 44.198727, 19.874264>,  <24.952192, 44.198643, 19.674040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084518, 44.198727, 19.874264>,  <25.305061, 44.198864, 20.207972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084518, 44.198727, 19.874264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303867, 0.931226, -0.201204,
		0.776962, -0.364442, -0.513334,
		-0.551357, -0.000343, -0.834269,
		24.919111, 44.198624, 19.623983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087852, 44.862637, 19.861343>,  <25.305061, 44.198864, 20.207972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087852, 44.862637, 19.861343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153173, 44.640644, 19.535072>,  <25.192366, 44.507446, 19.339310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153173, 44.640644, 19.535072>,  <25.087852, 44.862637, 19.861343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153173, 44.640644, 19.535072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030278, 0.829203, -0.558127,
		0.986112, 0.066445, 0.152213,
		0.163300, -0.554984, -0.815675,
		25.202164, 44.474148, 19.290369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591513, 45.279167, 19.611420>,  <25.087852, 44.862637, 19.861343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591513, 45.279167, 19.611420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391743, 45.042614, 19.358170>,  <25.271881, 44.900684, 19.206219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391743, 45.042614, 19.358170>,  <25.591513, 45.279167, 19.611420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391743, 45.042614, 19.358170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046884, 0.748167, -0.661852,
		0.865088, -0.300861, -0.401379,
		-0.499424, -0.591378, -0.633125,
		25.241915, 44.865200, 19.168232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766008, 45.481060, 18.903702>,  <25.591513, 45.279167, 19.611420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766008, 45.481060, 18.903702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423885, 45.301495, 18.800217>,  <25.218613, 45.193756, 18.738127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423885, 45.301495, 18.800217>,  <25.766008, 45.481060, 18.903702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423885, 45.301495, 18.800217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229878, 0.776272, -0.586991,
		0.464336, -0.442585, -0.767144,
		-0.855306, -0.448911, -0.258711,
		25.167294, 45.166821, 18.722603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660757, 45.709183, 18.237207>,  <25.766008, 45.481060, 18.903702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660757, 45.709183, 18.237207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314859, 45.550480, 18.360367>,  <25.107321, 45.455257, 18.434263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314859, 45.550480, 18.360367>,  <25.660757, 45.709183, 18.237207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314859, 45.550480, 18.360367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497889, 0.597028, -0.629018,
		0.065741, -0.697241, -0.713816,
		-0.864745, -0.396754, 0.307900,
		25.055435, 45.431454, 18.452736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070757, 45.857876, 17.834360>,  <25.660757, 45.709183, 18.237207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070757, 45.857876, 17.834360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911913, 45.769184, 18.190594>,  <24.816607, 45.715969, 18.404335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911913, 45.769184, 18.190594>,  <25.070757, 45.857876, 17.834360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911913, 45.769184, 18.190594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704833, 0.695177, -0.141208,
		-0.587805, -0.683789, -0.432340,
		-0.397109, -0.221725, 0.890585,
		24.792780, 45.702667, 18.457769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379976, 45.885765, 17.762333>,  <25.070757, 45.857876, 17.834360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379976, 45.885765, 17.762333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434410, 45.921116, 18.157032>,  <24.467070, 45.942326, 18.393852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434410, 45.921116, 18.157032>,  <24.379976, 45.885765, 17.762333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434410, 45.921116, 18.157032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681015, 0.731719, 0.028386,
		-0.719514, -0.675853, 0.159759,
		0.136084, 0.088374, 0.986748,
		24.475235, 45.947628, 18.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.802885, 46.369221, 17.926546>,  <24.379976, 45.885765, 17.762333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.802885, 46.369221, 17.926546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.407356, 46.348927, 17.982632>,  <23.170040, 46.336750, 18.016283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.407356, 46.348927, 17.982632>,  <23.802885, 46.369221, 17.926546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.407356, 46.348927, 17.982632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013769, -0.967379, -0.252959,
		0.148473, -0.248201, 0.957263,
		-0.988821, -0.050738, 0.140212,
		23.110710, 46.333706, 18.024694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.608175, 45.738659, 18.316891>,  <23.802885, 46.369221, 17.926546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.608175, 45.738659, 18.316891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265890, 45.843075, 18.138180>,  <23.060518, 45.905724, 18.030952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265890, 45.843075, 18.138180>,  <23.608175, 45.738659, 18.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265890, 45.843075, 18.138180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115552, -0.938023, -0.326742,
		-0.504380, -0.227972, 0.832844,
		-0.855715, 0.261039, -0.446778,
		23.009176, 45.921387, 18.004147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.001158, 45.436806, 18.654129>,  <23.608175, 45.738659, 18.316891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.001158, 45.436806, 18.654129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999733, 45.505329, 18.260044>,  <22.998878, 45.546444, 18.023594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999733, 45.505329, 18.260044>,  <23.001158, 45.436806, 18.654129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999733, 45.505329, 18.260044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137584, -0.975932, -0.169195,
		-0.990484, 0.134947, 0.027044,
		-0.003560, 0.171306, -0.985212,
		22.998665, 45.556721, 17.964481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275106, 45.323414, 18.284147>,  <23.001158, 45.436806, 18.654129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275106, 45.323414, 18.284147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549328, 45.259769, 17.999977>,  <22.713860, 45.221584, 17.829475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549328, 45.259769, 17.999977>,  <22.275106, 45.323414, 18.284147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549328, 45.259769, 17.999977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477578, -0.834808, -0.273890,
		-0.549489, 0.527048, -0.648291,
		0.685552, -0.159110, -0.710424,
		22.754993, 45.212036, 17.786850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916714, 45.167065, 17.662043>,  <22.275106, 45.323414, 18.284147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916714, 45.167065, 17.662043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275761, 44.992558, 17.687199>,  <22.491188, 44.887856, 17.702293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275761, 44.992558, 17.687199>,  <21.916714, 45.167065, 17.662043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275761, 44.992558, 17.687199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423700, -0.893345, -0.149712,
		0.121497, 0.107737, -0.986728,
		0.897617, -0.436266, 0.062891,
		22.545046, 44.861679, 17.706066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859114, 44.556278, 17.184948>,  <21.916714, 45.167065, 17.662043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859114, 44.556278, 17.184948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135536, 44.466625, 17.459816>,  <22.301390, 44.412834, 17.624737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135536, 44.466625, 17.459816>,  <21.859114, 44.556278, 17.184948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135536, 44.466625, 17.459816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220169, -0.970802, -0.095234,
		0.688453, -0.085482, -0.720226,
		0.691056, -0.224135, 0.687172,
		22.342854, 44.399384, 17.665968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.050175, 43.866718, 16.970459>,  <21.859114, 44.556278, 17.184948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.050175, 43.866718, 16.970459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178955, 43.919552, 17.345459>,  <22.256224, 43.951252, 17.570459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178955, 43.919552, 17.345459>,  <22.050175, 43.866718, 16.970459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.178955, 43.919552, 17.345459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230455, -0.949504, 0.212915,
		0.918280, -0.284599, -0.275255,
		0.321951, 0.132082, 0.937498,
		22.275539, 43.959175, 17.626709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.660315, 43.397678, 17.182125>,  <22.050175, 43.866718, 16.970459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.660315, 43.397678, 17.182125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.435762, 43.502277, 17.496189>,  <22.301031, 43.565037, 17.684628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.435762, 43.502277, 17.496189>,  <22.660315, 43.397678, 17.182125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.435762, 43.502277, 17.496189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277966, -0.953225, 0.118732,
		0.779480, -0.151594, 0.607808,
		-0.561378, 0.261499, 0.785158,
		22.267349, 43.580727, 17.731737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.651804, 42.820576, 17.469347>,  <22.660315, 43.397678, 17.182125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.651804, 42.820576, 17.469347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.377279, 43.017365, 17.683613>,  <22.212564, 43.135437, 17.812172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.377279, 43.017365, 17.683613>,  <22.651804, 42.820576, 17.469347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.377279, 43.017365, 17.683613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438323, -0.867509, 0.235162,
		0.580390, -0.073401, 0.811024,
		-0.686310, 0.491976, 0.535667,
		22.171387, 43.164959, 17.844313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.603401, 42.445553, 18.107092>,  <22.651804, 42.820576, 17.469347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.603401, 42.445553, 18.107092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.262371, 42.648033, 18.055134>,  <22.057753, 42.769524, 18.023958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.262371, 42.648033, 18.055134>,  <22.603401, 42.445553, 18.107092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262371, 42.648033, 18.055134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520372, -0.799349, 0.300422,
		0.048242, 0.323727, 0.944920,
		-0.852576, 0.506203, -0.129897,
		22.006598, 42.799892, 18.016165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242086, 42.291393, 18.667294>,  <22.603401, 42.445553, 18.107092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242086, 42.291393, 18.667294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969261, 42.409672, 18.399757>,  <21.805565, 42.480640, 18.239235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969261, 42.409672, 18.399757>,  <22.242086, 42.291393, 18.667294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969261, 42.409672, 18.399757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661464, -0.639486, 0.391821,
		-0.311854, 0.709662, 0.631765,
		-0.682065, 0.295699, -0.668842,
		21.764641, 42.498383, 18.199104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666500, 42.370739, 19.136909>,  <22.242086, 42.291393, 18.667294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666500, 42.370739, 19.136909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541103, 42.353413, 18.757469>,  <21.465866, 42.343018, 18.529804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541103, 42.353413, 18.757469>,  <21.666500, 42.370739, 19.136909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541103, 42.353413, 18.757469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728641, -0.629624, 0.269548,
		-0.608938, 0.775692, 0.165822,
		-0.313491, -0.043313, -0.948603,
		21.447056, 42.340420, 18.472889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960022, 42.465206, 19.267830>,  <21.666500, 42.370739, 19.136909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960022, 42.465206, 19.267830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014292, 42.285175, 18.914780>,  <21.046854, 42.177158, 18.702950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014292, 42.285175, 18.914780>,  <20.960022, 42.465206, 19.267830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014292, 42.285175, 18.914780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589779, -0.752510, 0.293070,
		-0.796087, 0.480791, -0.367540,
		0.135672, -0.450077, -0.882623,
		21.054993, 42.150154, 18.649992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346478, 41.982758, 19.252481>,  <20.960022, 42.465206, 19.267830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346478, 41.982758, 19.252481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557737, 41.860950, 18.935413>,  <20.684494, 41.787865, 18.745173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557737, 41.860950, 18.935413>,  <20.346478, 41.982758, 19.252481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557737, 41.860950, 18.935413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543957, -0.838138, -0.040449,
		-0.652049, 0.452542, -0.608307,
		0.528150, -0.304519, -0.792670,
		20.716183, 41.769596, 18.697613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950588, 41.820133, 18.638191>,  <20.346478, 41.982758, 19.252481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950588, 41.820133, 18.638191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278973, 41.591782, 18.633820>,  <20.476004, 41.454769, 18.631197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278973, 41.591782, 18.633820>,  <19.950588, 41.820133, 18.638191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278973, 41.591782, 18.633820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570936, -0.820990, -0.002638,
		-0.007465, 0.008405, -0.999937,
		0.820961, -0.570880, -0.010927,
		20.525261, 41.420517, 18.630541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977850, 41.319950, 18.017042>,  <19.950588, 41.820133, 18.638191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977850, 41.319950, 18.017042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220078, 41.129318, 18.271965>,  <20.365414, 41.014938, 18.424919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220078, 41.129318, 18.271965>,  <19.977850, 41.319950, 18.017042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220078, 41.129318, 18.271965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585301, -0.809330, -0.049067,
		0.539177, -0.343304, -0.769045,
		0.605567, -0.476578, 0.637308,
		20.401747, 40.986343, 18.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982641, 40.554981, 17.784899>,  <19.977850, 41.319950, 18.017042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982641, 40.554981, 17.784899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085527, 40.577957, 18.170757>,  <20.147259, 40.591743, 18.402273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085527, 40.577957, 18.170757>,  <19.982641, 40.554981, 17.784899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085527, 40.577957, 18.170757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518258, -0.834335, 0.187868,
		0.815629, -0.548257, -0.184834,
		0.257214, 0.057438, 0.964646,
		20.162691, 40.595188, 18.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058870, 39.885239, 17.985886>,  <19.982641, 40.554981, 17.784899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058870, 39.885239, 17.985886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069807, 40.067810, 18.341621>,  <20.076370, 40.177353, 18.555063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069807, 40.067810, 18.341621>,  <20.058870, 39.885239, 17.985886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069807, 40.067810, 18.341621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343294, -0.831274, 0.437187,
		0.938830, -0.317259, 0.133961,
		0.027343, 0.456432, 0.889338,
		20.078011, 40.204739, 18.608423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518251, 39.469856, 18.255835>,  <20.058870, 39.885239, 17.985886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518251, 39.469856, 18.255835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.326136, 39.658394, 18.551716>,  <20.210867, 39.771515, 18.729244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.326136, 39.658394, 18.551716>,  <20.518251, 39.469856, 18.255835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.326136, 39.658394, 18.551716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016974, -0.848176, 0.529443,
		0.876947, 0.241729, 0.415369,
		-0.480288, 0.471344, 0.739702,
		20.182049, 39.799797, 18.773626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796055, 39.272072, 18.815050>,  <20.518251, 39.469856, 18.255835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796055, 39.272072, 18.815050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.456657, 39.415634, 18.970612>,  <20.253019, 39.501770, 19.063948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.456657, 39.415634, 18.970612>,  <20.796055, 39.272072, 18.815050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456657, 39.415634, 18.970612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056514, -0.792129, 0.607732,
		0.526179, 0.493679, 0.692400,
		-0.848494, 0.358906, 0.388902,
		20.202108, 39.523308, 19.087282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904333, 39.477432, 19.538044>,  <20.796055, 39.272072, 18.815050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904333, 39.477432, 19.538044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506895, 39.435364, 19.521496>,  <20.268433, 39.410122, 19.511566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506895, 39.435364, 19.521496>,  <20.904333, 39.477432, 19.538044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506895, 39.435364, 19.521496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049045, -0.731034, 0.680576,
		-0.101823, 0.674187, 0.731508,
		-0.993593, -0.105175, -0.041371,
		20.208817, 39.403812, 19.509085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.644032, 39.586910, 20.250011>,  <20.904333, 39.477432, 19.538044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.644032, 39.586910, 20.250011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389954, 39.351372, 20.050095>,  <20.237507, 39.210049, 19.930145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389954, 39.351372, 20.050095>,  <20.644032, 39.586910, 20.250011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389954, 39.351372, 20.050095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070760, -0.688751, 0.721537,
		-0.769103, 0.422952, 0.479158,
		-0.635196, -0.588842, -0.499792,
		20.199394, 39.174721, 19.900158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193848, 39.217865, 20.722519>,  <20.644032, 39.586910, 20.250011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193848, 39.217865, 20.722519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.113712, 38.999062, 20.397400>,  <20.065632, 38.867779, 20.202328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.113712, 38.999062, 20.397400>,  <20.193848, 39.217865, 20.722519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113712, 38.999062, 20.397400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548972, -0.624471, 0.555577,
		-0.811477, 0.557507, -0.175188,
		-0.200338, -0.547011, -0.812800,
		20.053612, 38.834957, 20.153561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489004, 39.120140, 20.844812>,  <20.193848, 39.217865, 20.722519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489004, 39.120140, 20.844812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624084, 38.853668, 20.578831>,  <19.705133, 38.693787, 20.419241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624084, 38.853668, 20.578831>,  <19.489004, 39.120140, 20.844812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624084, 38.853668, 20.578831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472813, -0.730920, 0.492143,
		-0.813882, 0.148201, -0.561811,
		0.337703, -0.666178, -0.664954,
		19.725395, 38.653816, 20.379345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024561, 38.492290, 20.722412>,  <19.489004, 39.120140, 20.844812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024561, 38.492290, 20.722412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392254, 38.370979, 20.621986>,  <19.612869, 38.298191, 20.561731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392254, 38.370979, 20.621986>,  <19.024561, 38.492290, 20.722412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392254, 38.370979, 20.621986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039233, -0.705064, 0.708057,
		-0.391759, -0.641018, -0.660016,
		0.919231, -0.303282, -0.251066,
		19.668024, 38.279995, 20.546667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972540, 37.766941, 20.517897>,  <19.024561, 38.492290, 20.722412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972540, 37.766941, 20.517897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327095, 37.867851, 20.673164>,  <19.539827, 37.928398, 20.766325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327095, 37.867851, 20.673164>,  <18.972540, 37.766941, 20.517897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327095, 37.867851, 20.673164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043142, -0.789816, 0.611825,
		0.460933, -0.559059, -0.689198,
		0.886385, 0.252276, 0.388171,
		19.593010, 37.943535, 20.789616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356627, 37.315289, 20.872677>,  <18.972540, 37.766941, 20.517897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356627, 37.315289, 20.872677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550888, 37.335022, 21.221779>,  <19.667446, 37.346863, 21.431240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550888, 37.335022, 21.221779>,  <19.356627, 37.315289, 20.872677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550888, 37.335022, 21.221779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639496, 0.700736, 0.316249,
		-0.595972, -0.711713, 0.371862,
		0.485656, 0.049329, 0.872757,
		19.696585, 37.349819, 21.483606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824932, 37.084900, 21.522024>,  <19.356627, 37.315289, 20.872677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824932, 37.084900, 21.522024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.103840, 37.362278, 21.594631>,  <19.271185, 37.528706, 21.638195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.103840, 37.362278, 21.594631>,  <18.824932, 37.084900, 21.522024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103840, 37.362278, 21.594631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716805, 0.675243, 0.173890,
		-0.001988, -0.251363, 0.967891,
		0.697271, 0.693443, 0.181520,
		19.313021, 37.570312, 21.649088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649734, 37.367943, 22.151257>,  <18.824932, 37.084900, 21.522024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649734, 37.367943, 22.151257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878218, 37.631645, 21.955666>,  <19.015308, 37.789867, 21.838310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878218, 37.631645, 21.955666>,  <18.649734, 37.367943, 22.151257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878218, 37.631645, 21.955666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723171, 0.686007, 0.080112,
		0.388256, 0.307853, 0.868610,
		0.571210, 0.659258, -0.488977,
		19.049582, 37.829422, 21.808973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.571835, 37.236408, 22.883415>,  <18.649734, 37.367943, 22.151257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.571835, 37.236408, 22.883415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.530779, 37.577484, 23.088306>,  <18.506145, 37.782131, 23.211241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.530779, 37.577484, 23.088306>,  <18.571835, 37.236408, 22.883415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530779, 37.577484, 23.088306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900593, -0.298312, 0.316135,
		0.422371, -0.428864, 0.798548,
		-0.102638, 0.852693, 0.512230,
		18.499989, 37.833294, 23.241976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.836393, 30.597673, 31.230179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.021442, 30.952183, 31.239098>,  <31.132473, 31.164888, 31.244450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.021442, 30.952183, 31.239098>,  <30.836393, 30.597673, 31.230179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021442, 30.952183, 31.239098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030126, 0.040854, -0.998711,
		-0.886043, 0.461355, 0.045600,
		0.462624, 0.886275, 0.022299,
		31.160229, 31.218065, 31.245787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458361, 31.033068, 30.817383>,  <30.836393, 30.597673, 31.230179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458361, 31.033068, 30.817383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.796757, 31.246223, 30.824619>,  <30.999794, 31.374117, 30.828960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.796757, 31.246223, 30.824619>,  <30.458361, 31.033068, 30.817383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796757, 31.246223, 30.824619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069650, 0.144081, -0.987112,
		-0.528627, 0.833829, 0.159007,
		0.845992, 0.532889, 0.018089,
		31.050554, 31.406090, 30.830046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366032, 31.640301, 30.423504>,  <30.458361, 31.033068, 30.817383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366032, 31.640301, 30.423504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.760998, 31.577217, 30.428204>,  <30.997978, 31.539368, 30.431023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.760998, 31.577217, 30.428204>,  <30.366032, 31.640301, 30.423504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760998, 31.577217, 30.428204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038417, 0.167146, -0.985183,
		0.153407, 0.973237, 0.171101,
		0.987416, -0.157707, 0.011748,
		31.057222, 31.529905, 30.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556593, 32.127586, 30.112089>,  <30.366032, 31.640301, 30.423504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556593, 32.127586, 30.112089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.863974, 31.872414, 30.091969>,  <31.048401, 31.719311, 30.079897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.863974, 31.872414, 30.091969>,  <30.556593, 32.127586, 30.112089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863974, 31.872414, 30.091969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046072, 0.133559, -0.989969,
		0.638248, 0.758425, 0.132024,
		0.768450, -0.637929, -0.050301,
		31.094509, 31.681034, 30.076878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186220, 32.566628, 29.880377>,  <30.556593, 32.127586, 30.112089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186220, 32.566628, 29.880377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229624, 32.181465, 29.781555>,  <31.255667, 31.950367, 29.722261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229624, 32.181465, 29.781555>,  <31.186220, 32.566628, 29.880377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229624, 32.181465, 29.781555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067600, 0.255096, -0.964550,
		0.991794, 0.087962, 0.092773,
		0.108510, -0.962907, -0.247056,
		31.262177, 31.892593, 29.707438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752041, 32.511703, 29.397455>,  <31.186220, 32.566628, 29.880377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752041, 32.511703, 29.397455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567530, 32.166271, 29.316010>,  <31.456823, 31.959013, 29.267141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567530, 32.166271, 29.316010>,  <31.752041, 32.511703, 29.397455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567530, 32.166271, 29.316010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082990, 0.186487, -0.978946,
		0.883367, -0.468463, -0.014354,
		-0.461277, -0.863577, -0.203614,
		31.429146, 31.907198, 29.254925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043751, 32.312511, 28.849606>,  <31.752041, 32.511703, 29.397455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043751, 32.312511, 28.849606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703718, 32.101986, 28.857166>,  <31.499699, 31.975672, 28.861702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703718, 32.101986, 28.857166>,  <32.043751, 32.312511, 28.849606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703718, 32.101986, 28.857166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054312, 0.051910, -0.997174,
		0.523844, -0.848705, -0.072713,
		-0.850080, -0.526313, 0.018902,
		31.448694, 31.944092, 28.862837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178616, 31.743027, 28.385954>,  <32.043751, 32.312511, 28.849606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178616, 31.743027, 28.385954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.784811, 31.790344, 28.437721>,  <31.548529, 31.818735, 28.468782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.784811, 31.790344, 28.437721>,  <32.178616, 31.743027, 28.385954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784811, 31.790344, 28.437721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150372, -0.190040, -0.970192,
		-0.090168, -0.974624, 0.204884,
		-0.984509, 0.118289, 0.129421,
		31.489458, 31.825832, 28.476547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853804, 31.192406, 27.974123>,  <32.178616, 31.743027, 28.385954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853804, 31.192406, 27.974123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550528, 31.448677, 28.022591>,  <31.368563, 31.602440, 28.051670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550528, 31.448677, 28.022591>,  <31.853804, 31.192406, 27.974123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550528, 31.448677, 28.022591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143501, 0.017318, -0.989499,
		-0.636049, -0.767614, 0.078808,
		-0.758188, 0.640679, 0.121168,
		31.323071, 31.640881, 28.058941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383869, 30.972185, 27.482553>,  <31.853804, 31.192406, 27.974123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383869, 30.972185, 27.482553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.293764, 31.348862, 27.582531>,  <31.239700, 31.574867, 27.642517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.293764, 31.348862, 27.582531>,  <31.383869, 30.972185, 27.482553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293764, 31.348862, 27.582531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237895, 0.195610, -0.951390,
		-0.944808, -0.273775, 0.179960,
		-0.225264, 0.941692, 0.249943,
		31.226185, 31.631369, 27.657515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689774, 31.076025, 27.229675>,  <31.383869, 30.972185, 27.482553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689774, 31.076025, 27.229675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.850313, 31.440910, 27.262615>,  <30.946638, 31.659842, 27.282379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.850313, 31.440910, 27.262615>,  <30.689774, 31.076025, 27.229675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850313, 31.440910, 27.262615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308162, 0.219152, -0.925748,
		-0.862528, 0.346173, 0.369067,
		0.401350, 0.912215, 0.082348,
		30.970718, 31.714575, 27.287319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107616, 31.495937, 27.074327>,  <30.689774, 31.076025, 27.229675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107616, 31.495937, 27.074327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.444380, 31.708595, 27.037354>,  <30.646437, 31.836191, 27.015169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.444380, 31.708595, 27.037354>,  <30.107616, 31.495937, 27.074327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444380, 31.708595, 27.037354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359093, 0.424109, -0.831375,
		-0.402796, 0.733133, 0.547971,
		0.841908, 0.531646, -0.092433,
		30.696953, 31.868090, 27.009624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968847, 32.270432, 27.036070>,  <30.107616, 31.495937, 27.074327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968847, 32.270432, 27.036070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.319298, 32.230331, 26.847454>,  <30.529568, 32.206272, 26.734285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.319298, 32.230331, 26.847454>,  <29.968847, 32.270432, 27.036070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319298, 32.230331, 26.847454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293170, 0.665673, -0.686244,
		0.382691, 0.739478, 0.553823,
		0.876127, -0.100255, -0.471540,
		30.582136, 32.200256, 26.705992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019611, 32.938793, 26.699202>,  <29.968847, 32.270432, 27.036070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019611, 32.938793, 26.699202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.308237, 32.709999, 26.543159>,  <30.481413, 32.572723, 26.449533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.308237, 32.709999, 26.543159>,  <30.019611, 32.938793, 26.699202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308237, 32.709999, 26.543159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117806, 0.453803, -0.883280,
		0.682250, 0.683301, 0.260066,
		0.721565, -0.571981, -0.390105,
		30.524706, 32.538406, 26.426128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419456, 33.375031, 26.202400>,  <30.019611, 32.938793, 26.699202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419456, 33.375031, 26.202400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.463974, 32.990665, 26.101006>,  <30.490685, 32.760044, 26.040169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.463974, 32.990665, 26.101006>,  <30.419456, 33.375031, 26.202400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463974, 32.990665, 26.101006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148699, 0.236098, -0.960285,
		0.982600, 0.144568, -0.116610,
		0.111295, -0.960915, -0.253487,
		30.497362, 32.702393, 26.024960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788031, 33.368271, 25.596235>,  <30.419456, 33.375031, 26.202400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788031, 33.368271, 25.596235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.642788, 32.995605, 25.601131>,  <30.555643, 32.772007, 25.604069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.642788, 32.995605, 25.601131>,  <30.788031, 33.368271, 25.596235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642788, 32.995605, 25.601131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156082, 0.047871, -0.986583,
		0.918582, -0.360145, -0.162799,
		-0.363107, -0.931667, 0.012239,
		30.533855, 32.716106, 25.604803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174379, 32.920387, 25.031137>,  <30.788031, 33.368271, 25.596235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174379, 32.920387, 25.031137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.814939, 32.758865, 25.099789>,  <30.599276, 32.661953, 25.140980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.814939, 32.758865, 25.099789>,  <31.174379, 32.920387, 25.031137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814939, 32.758865, 25.099789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218155, 0.071806, -0.973269,
		0.380691, -0.912021, -0.152618,
		-0.898600, -0.403809, 0.171626,
		30.545359, 32.637722, 25.151278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086096, 32.648655, 24.438995>,  <31.174379, 32.920387, 25.031137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086096, 32.648655, 24.438995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.714283, 32.609123, 24.581093>,  <30.491196, 32.585403, 24.666351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.714283, 32.609123, 24.581093>,  <31.086096, 32.648655, 24.438995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714283, 32.609123, 24.581093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365095, 0.111632, -0.924253,
		0.051678, -0.988824, -0.139845,
		-0.929535, -0.098820, 0.355246,
		30.435423, 32.579475, 24.687666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671253, 32.308392, 23.820086>,  <31.086096, 32.648655, 24.438995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671253, 32.308392, 23.820086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.448429, 32.505939, 24.087151>,  <30.314735, 32.624470, 24.247389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.448429, 32.505939, 24.087151>,  <30.671253, 32.308392, 23.820086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448429, 32.505939, 24.087151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475579, 0.469366, -0.743989,
		-0.680815, -0.731973, -0.026589,
		-0.557060, 0.493874, 0.667662,
		30.281311, 32.654102, 24.287449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022654, 32.330624, 23.466013>,  <30.671253, 32.308392, 23.820086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022654, 32.330624, 23.466013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.992464, 32.599571, 23.760555>,  <29.974350, 32.760941, 23.937281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.992464, 32.599571, 23.760555>,  <30.022654, 32.330624, 23.466013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992464, 32.599571, 23.760555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663596, 0.517322, -0.540387,
		-0.744274, -0.529428, 0.407139,
		-0.075474, 0.672372, 0.736356,
		29.969822, 32.801281, 23.981462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273375, 32.394989, 23.743536>,  <30.022654, 32.330624, 23.466013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273375, 32.394989, 23.743536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.449263, 32.739586, 23.845104>,  <29.554796, 32.946342, 23.906046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.449263, 32.739586, 23.845104>,  <29.273375, 32.394989, 23.743536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449263, 32.739586, 23.845104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706535, 0.506346, -0.494392,
		-0.554487, 0.037990, 0.831325,
		0.439720, 0.861494, 0.253921,
		29.581179, 32.998035, 23.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676336, 32.909321, 23.724455>,  <29.273375, 32.394989, 23.743536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676336, 32.909321, 23.724455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.025894, 33.103600, 23.716393>,  <29.235628, 33.220169, 23.711555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.025894, 33.103600, 23.716393>,  <28.676336, 32.909321, 23.724455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025894, 33.103600, 23.716393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383756, 0.663830, -0.641920,
		-0.298400, 0.568704, 0.766507,
		0.873893, 0.485701, -0.020157,
		29.288061, 33.249310, 23.710346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197201, 33.417324, 23.746048>,  <28.676336, 32.909321, 23.724455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197201, 33.417324, 23.746048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.855631, 33.222412, 23.672970>,  <27.650690, 33.105465, 23.629122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.855631, 33.222412, 23.672970>,  <28.197201, 33.417324, 23.746048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855631, 33.222412, 23.672970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042592, -0.415331, 0.908672,
		-0.518654, 0.768155, 0.375415,
		-0.853923, -0.487276, -0.182696,
		27.599455, 33.076229, 23.618160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988554, 33.403328, 24.352419>,  <28.197201, 33.417324, 23.746048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988554, 33.403328, 24.352419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.746132, 33.142090, 24.170799>,  <27.600679, 32.985348, 24.061827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.746132, 33.142090, 24.170799>,  <27.988554, 33.403328, 24.352419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746132, 33.142090, 24.170799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081798, -0.618974, 0.781141,
		-0.791206, 0.436274, 0.428554,
		-0.606055, -0.653098, -0.454049,
		27.564316, 32.946159, 24.034584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481710, 33.217686, 24.871857>,  <27.988554, 33.403328, 24.352419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481710, 33.217686, 24.871857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.465174, 32.913338, 24.612823>,  <27.455252, 32.730728, 24.457403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.465174, 32.913338, 24.612823>,  <27.481710, 33.217686, 24.871857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465174, 32.913338, 24.612823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068693, -0.644437, 0.761565,
		-0.996781, 0.075969, -0.025624,
		-0.041342, -0.760874, -0.647581,
		27.452770, 32.685074, 24.418549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868336, 32.714893, 25.055107>,  <27.481710, 33.217686, 24.871857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868336, 32.714893, 25.055107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.139673, 32.508343, 24.846031>,  <27.302477, 32.384411, 24.720585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.139673, 32.508343, 24.846031>,  <26.868336, 32.714893, 25.055107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139673, 32.508343, 24.846031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097775, -0.768506, 0.632328,
		-0.728211, -0.377829, -0.571799,
		0.678343, -0.516376, -0.522692,
		27.343176, 32.353432, 24.689224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624254, 32.077469, 24.951420>,  <26.868336, 32.714893, 25.055107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624254, 32.077469, 24.951420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.001364, 31.972118, 24.869633>,  <27.227631, 31.908907, 24.820560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.001364, 31.972118, 24.869633>,  <26.624254, 32.077469, 24.951420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001364, 31.972118, 24.869633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066719, -0.749844, 0.658243,
		-0.326686, -0.606933, -0.724506,
		0.942775, -0.263377, -0.204469,
		27.284197, 31.893105, 24.808292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698212, 31.301640, 24.933376>,  <26.624254, 32.077469, 24.951420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698212, 31.301640, 24.933376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.063694, 31.449257, 25.001431>,  <27.282984, 31.537828, 25.042263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.063694, 31.449257, 25.001431>,  <26.698212, 31.301640, 24.933376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063694, 31.449257, 25.001431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194668, -0.764997, 0.613909,
		0.356714, -0.527813, -0.770824,
		0.913707, 0.369044, 0.170136,
		27.337807, 31.559971, 25.052471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189611, 30.729954, 25.015425>,  <26.698212, 31.301640, 24.933376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189611, 30.729954, 25.015425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.391996, 31.023811, 25.196224>,  <27.513428, 31.200125, 25.304705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.391996, 31.023811, 25.196224>,  <27.189611, 30.729954, 25.015425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391996, 31.023811, 25.196224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047330, -0.499587, 0.864970,
		0.861255, -0.459036, -0.218002,
		0.505963, 0.734642, 0.451998,
		27.543785, 31.244204, 25.331823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526678, 30.311192, 25.568186>,  <27.189611, 30.729954, 25.015425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526678, 30.311192, 25.568186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.573326, 30.695507, 25.668812>,  <27.601315, 30.926096, 25.729187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.573326, 30.695507, 25.668812>,  <27.526678, 30.311192, 25.568186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573326, 30.695507, 25.668812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089082, -0.262391, 0.960841,
		0.989173, -0.089646, -0.116189,
		0.116622, 0.960789, 0.251564,
		27.608313, 30.983744, 25.744282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222607, 30.422012, 25.933563>,  <27.526678, 30.311192, 25.568186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222607, 30.422012, 25.933563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.995649, 30.725201, 26.062275>,  <27.859474, 30.907114, 26.139502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.995649, 30.725201, 26.062275>,  <28.222607, 30.422012, 25.933563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995649, 30.725201, 26.062275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233436, -0.226682, 0.945581,
		0.789666, 0.611632, -0.048320,
		-0.567394, 0.757972, 0.321779,
		27.825432, 30.952593, 26.158810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598999, 30.758068, 26.393303>,  <28.222607, 30.422012, 25.933563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598999, 30.758068, 26.393303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227852, 30.874935, 26.486000>,  <28.005163, 30.945055, 26.541618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227852, 30.874935, 26.486000>,  <28.598999, 30.758068, 26.393303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227852, 30.874935, 26.486000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215151, -0.088170, 0.972593,
		0.304591, 0.952295, 0.018950,
		-0.927866, 0.292165, 0.231743,
		27.949492, 30.962585, 26.555523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650784, 31.328325, 26.920208>,  <28.598999, 30.758068, 26.393303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650784, 31.328325, 26.920208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.274836, 31.193237, 26.940567>,  <28.049267, 31.112185, 26.952782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.274836, 31.193237, 26.940567>,  <28.650784, 31.328325, 26.920208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274836, 31.193237, 26.940567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061627, -0.021117, 0.997876,
		-0.335930, 0.941009, 0.040660,
		-0.939869, -0.337722, 0.050897,
		27.992874, 31.091921, 26.955835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351971, 31.712503, 27.486250>,  <28.650784, 31.328325, 26.920208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351971, 31.712503, 27.486250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.128431, 31.388462, 27.415344>,  <27.994308, 31.194036, 27.372801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.128431, 31.388462, 27.415344>,  <28.351971, 31.712503, 27.486250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128431, 31.388462, 27.415344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015333, -0.203630, 0.978928,
		-0.829129, 0.549788, 0.101377,
		-0.558846, -0.810103, -0.177266,
		27.960777, 31.145432, 27.362164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781641, 31.842707, 27.824196>,  <28.351971, 31.712503, 27.486250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781641, 31.842707, 27.824196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.800491, 31.444565, 27.790623>,  <27.811802, 31.205679, 27.770479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.800491, 31.444565, 27.790623>,  <27.781641, 31.842707, 27.824196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800491, 31.444565, 27.790623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015094, -0.084726, 0.996290,
		-0.998775, -0.045684, -0.019017,
		0.047125, -0.995357, -0.083933,
		27.814629, 31.145958, 27.765444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201952, 31.583746, 28.258890>,  <27.781641, 31.842707, 27.824196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201952, 31.583746, 28.258890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.480009, 31.299564, 28.215015>,  <27.646843, 31.129055, 28.188690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.480009, 31.299564, 28.215015>,  <27.201952, 31.583746, 28.258890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480009, 31.299564, 28.215015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001311, -0.153836, 0.988096,
		-0.718870, -0.686724, -0.107869,
		0.695143, -0.710454, -0.109687,
		27.688553, 31.086428, 28.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007620, 31.108025, 28.789173>,  <27.201952, 31.583746, 28.258890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007620, 31.108025, 28.789173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.375608, 30.994442, 28.681084>,  <27.596401, 30.926292, 28.616230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.375608, 30.994442, 28.681084>,  <27.007620, 31.108025, 28.789173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375608, 30.994442, 28.681084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141857, -0.401466, 0.904821,
		-0.365408, -0.870745, -0.329058,
		0.919975, -0.283950, -0.270221,
		27.651600, 30.909256, 28.600018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135996, 30.603199, 29.269180>,  <27.007620, 31.108025, 28.789173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135996, 30.603199, 29.269180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.507662, 30.670769, 29.137653>,  <27.730661, 30.711309, 29.058737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.507662, 30.670769, 29.137653>,  <27.135996, 30.603199, 29.269180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507662, 30.670769, 29.137653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356817, -0.177321, 0.917191,
		0.096629, -0.969547, -0.225035,
		0.929163, 0.168924, -0.328816,
		27.786411, 30.721445, 29.039009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517138, 29.973118, 29.505611>,  <27.135996, 30.603199, 29.269180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517138, 29.973118, 29.505611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.794493, 30.254429, 29.442860>,  <27.960907, 30.423216, 29.405209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.794493, 30.254429, 29.442860>,  <27.517138, 29.973118, 29.505611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794493, 30.254429, 29.442860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291209, -0.074357, 0.953765,
		0.659097, -0.707016, -0.256359,
		0.693389, 0.703278, -0.156881,
		28.002510, 30.465412, 29.395796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039104, 29.696390, 29.778084>,  <27.517138, 29.973118, 29.505611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039104, 29.696390, 29.778084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.078148, 30.094475, 29.776108>,  <28.101574, 30.333326, 29.774923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.078148, 30.094475, 29.776108>,  <28.039104, 29.696390, 29.778084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078148, 30.094475, 29.776108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355581, -0.030239, 0.934157,
		0.929535, -0.092936, -0.356830,
		0.097607, 0.995213, -0.004938,
		28.107430, 30.393038, 29.774626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.732664, 29.796293, 29.883049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.594446, 30.153168, 29.999397>,  <28.511517, 30.367292, 30.069206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.594446, 30.153168, 29.999397>,  <28.732664, 29.796293, 29.883049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594446, 30.153168, 29.999397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467296, -0.105204, 0.877819,
		0.813778, 0.439247, -0.380562,
		-0.345543, 0.892185, 0.290871,
		28.490784, 30.420824, 30.086658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299913, 30.200064, 30.279278>,  <28.732664, 29.796293, 29.883049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299913, 30.200064, 30.279278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.979418, 30.416576, 30.381283>,  <28.787121, 30.546484, 30.442486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.979418, 30.416576, 30.381283>,  <29.299913, 30.200064, 30.279278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979418, 30.416576, 30.381283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228091, -0.117710, 0.966498,
		0.553166, 0.832561, -0.029148,
		-0.801238, 0.541282, 0.255013,
		28.739046, 30.578960, 30.457787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516676, 30.734465, 30.818001>,  <29.299913, 30.200064, 30.279278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516676, 30.734465, 30.818001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121872, 30.702209, 30.873589>,  <28.884991, 30.682856, 30.906940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121872, 30.702209, 30.873589>,  <29.516676, 30.734465, 30.818001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121872, 30.702209, 30.873589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123169, 0.175640, 0.976719,
		-0.103170, 0.981146, -0.163426,
		-0.987008, -0.080639, 0.138967,
		28.825769, 30.678019, 30.915279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453526, 31.255550, 31.330776>,  <29.516676, 30.734465, 30.818001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453526, 31.255550, 31.330776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136419, 31.011826, 31.324341>,  <28.946156, 30.865591, 31.320480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136419, 31.011826, 31.324341>,  <29.453526, 31.255550, 31.330776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136419, 31.011826, 31.324341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086713, 0.086619, 0.992461,
		-0.603326, 0.788184, -0.121505,
		-0.792766, -0.609314, -0.016086,
		28.898590, 30.829031, 31.319515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027136, 31.573296, 31.855484>,  <29.453526, 31.255550, 31.330776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027136, 31.573296, 31.855484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.966309, 31.185886, 31.776657>,  <28.929811, 30.953440, 31.729361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.966309, 31.185886, 31.776657>,  <29.027136, 31.573296, 31.855484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966309, 31.185886, 31.776657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054926, -0.207359, 0.976722,
		-0.986843, 0.137704, 0.084730,
		-0.152068, -0.968525, -0.197067,
		28.920689, 30.895329, 31.717537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277653, 31.407001, 32.052040>,  <29.027136, 31.573296, 31.855484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277653, 31.407001, 32.052040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.519341, 31.088455, 32.062767>,  <28.664354, 30.897327, 32.069202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.519341, 31.088455, 32.062767>,  <28.277653, 31.407001, 32.052040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519341, 31.088455, 32.062767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150771, -0.081219, 0.985227,
		-0.782422, -0.599338, -0.169143,
		0.604222, -0.796365, 0.026815,
		28.700607, 30.849546, 32.070812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901379, 30.952579, 32.433701>,  <28.277653, 31.407001, 32.052040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901379, 30.952579, 32.433701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.263205, 30.782528, 32.446526>,  <28.480301, 30.680496, 32.454220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.263205, 30.782528, 32.446526>,  <27.901379, 30.952579, 32.433701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263205, 30.782528, 32.446526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095594, -0.128950, 0.987033,
		-0.415482, -0.895900, -0.157284,
		0.904564, -0.425130, 0.032066,
		28.534575, 30.654989, 32.456146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814253, 30.589283, 33.060310>,  <27.901379, 30.952579, 32.433701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814253, 30.589283, 33.060310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.204889, 30.572018, 32.976017>,  <28.439270, 30.561659, 32.925442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.204889, 30.572018, 32.976017>,  <27.814253, 30.589283, 33.060310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204889, 30.572018, 32.976017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182300, -0.353970, 0.917318,
		-0.114187, -0.934260, -0.337815,
		0.976590, -0.043162, -0.210735,
		28.497866, 30.559069, 32.912796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967459, 29.934887, 33.257118>,  <27.814253, 30.589283, 33.060310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967459, 29.934887, 33.257118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.305012, 30.149479, 33.259888>,  <28.507544, 30.278234, 33.261551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.305012, 30.149479, 33.259888>,  <27.967459, 29.934887, 33.257118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305012, 30.149479, 33.259888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215671, -0.351009, 0.911196,
		0.491270, -0.767450, -0.411914,
		0.843883, 0.536482, 0.006923,
		28.558176, 30.310423, 33.261963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616920, 29.455153, 33.315262>,  <27.967459, 29.934887, 33.257118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616920, 29.455153, 33.315262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.726572, 29.819622, 33.438305>,  <28.792362, 30.038303, 33.512131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.726572, 29.819622, 33.438305>,  <28.616920, 29.455153, 33.315262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726572, 29.819622, 33.438305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120161, -0.349801, 0.929086,
		0.954157, -0.217726, -0.205377,
		0.274128, 0.911172, 0.307603,
		28.808811, 30.092974, 33.530586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083591, 29.261345, 33.723335>,  <28.616920, 29.455153, 33.315262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083591, 29.261345, 33.723335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970253, 29.633274, 33.817265>,  <28.902250, 29.856432, 33.873623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970253, 29.633274, 33.817265>,  <29.083591, 29.261345, 33.723335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970253, 29.633274, 33.817265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029489, -0.236299, 0.971233,
		0.958563, 0.282122, 0.039535,
		-0.283349, 0.929822, 0.234827,
		28.885248, 29.912220, 33.887714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575708, 29.396862, 34.310333>,  <29.083591, 29.261345, 33.723335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575708, 29.396862, 34.310333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.265419, 29.647041, 34.343952>,  <29.079245, 29.797150, 34.364124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.265419, 29.647041, 34.343952>,  <29.575708, 29.396862, 34.310333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265419, 29.647041, 34.343952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029730, -0.169259, 0.985123,
		0.630372, 0.761685, 0.149893,
		-0.775724, 0.625450, 0.084051,
		29.032701, 29.834677, 34.369167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804188, 29.850178, 34.801033>,  <29.575708, 29.396862, 34.310333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804188, 29.850178, 34.801033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406679, 29.894588, 34.797131>,  <29.168175, 29.921234, 34.794788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406679, 29.894588, 34.797131>,  <29.804188, 29.850178, 34.801033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406679, 29.894588, 34.797131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000657, 0.093336, 0.995634,
		0.111453, 0.989425, -0.092828,
		-0.993770, 0.111027, -0.009753,
		29.108549, 29.927896, 34.794205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624985, 30.377272, 35.262032>,  <29.804188, 29.850178, 34.801033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624985, 30.377272, 35.262032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259319, 30.216286, 35.242733>,  <29.039921, 30.119694, 35.231155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259319, 30.216286, 35.242733>,  <29.624985, 30.377272, 35.262032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259319, 30.216286, 35.242733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086468, 0.077341, 0.993248,
		-0.396016, 0.912162, -0.105503,
		-0.914163, -0.402465, -0.048245,
		28.985071, 30.095547, 35.228260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238464, 30.815928, 35.586464>,  <29.624985, 30.377272, 35.262032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238464, 30.815928, 35.586464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021898, 30.479820, 35.597935>,  <28.891958, 30.278156, 35.604816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021898, 30.479820, 35.597935>,  <29.238464, 30.815928, 35.586464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021898, 30.479820, 35.597935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228886, 0.180129, 0.956642,
		-0.809001, 0.511375, -0.289850,
		-0.541413, -0.840267, 0.028678,
		28.859474, 30.227739, 35.606537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616810, 30.957951, 36.030418>,  <29.238464, 30.815928, 35.586464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616810, 30.957951, 36.030418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.657288, 30.560715, 36.006638>,  <28.681574, 30.322372, 35.992371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.657288, 30.560715, 36.006638>,  <28.616810, 30.957951, 36.030418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657288, 30.560715, 36.006638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089822, -0.068631, 0.993590,
		-0.990804, -0.095204, -0.096146,
		0.101192, -0.993089, -0.059448,
		28.687645, 30.262789, 35.988804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014500, 30.625296, 36.376694>,  <28.616810, 30.957951, 36.030418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014500, 30.625296, 36.376694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.303255, 30.348522, 36.372684>,  <28.476509, 30.182457, 36.370277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.303255, 30.348522, 36.372684>,  <28.014500, 30.625296, 36.376694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303255, 30.348522, 36.372684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052035, -0.068718, 0.996278,
		-0.690048, -0.718682, -0.085611,
		0.721891, -0.691934, -0.010022,
		28.519823, 30.140942, 36.369678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747011, 30.144548, 36.835419>,  <28.014500, 30.625296, 36.376694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747011, 30.144548, 36.835419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140736, 30.085293, 36.797073>,  <28.376970, 30.049740, 36.774067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140736, 30.085293, 36.797073>,  <27.747011, 30.144548, 36.835419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140736, 30.085293, 36.797073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125928, 0.209202, 0.969730,
		-0.123603, -0.966586, 0.224575,
		0.984309, -0.148142, -0.095863,
		28.436028, 30.040850, 36.768314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808813, 29.636351, 37.316818>,  <27.747011, 30.144548, 36.835419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808813, 29.636351, 37.316818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.162052, 29.807693, 37.240246>,  <28.373997, 29.910500, 37.194302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.162052, 29.807693, 37.240246>,  <27.808813, 29.636351, 37.316818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162052, 29.807693, 37.240246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088603, 0.248417, 0.964592,
		0.460744, -0.868792, 0.181423,
		0.883099, 0.428356, -0.191434,
		28.426983, 29.936199, 37.182816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259426, 29.440783, 37.853977>,  <27.808813, 29.636351, 37.316818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259426, 29.440783, 37.853977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.462923, 29.756516, 37.716492>,  <28.585020, 29.945955, 37.634003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.462923, 29.756516, 37.716492>,  <28.259426, 29.440783, 37.853977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462923, 29.756516, 37.716492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291775, 0.217527, 0.931423,
		0.809969, -0.574139, -0.119643,
		0.508741, 0.789333, -0.343709,
		28.615545, 29.993315, 37.613380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790806, 29.431696, 38.220879>,  <28.259426, 29.440783, 37.853977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790806, 29.431696, 38.220879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748825, 29.811100, 38.101334>,  <28.723637, 30.038742, 38.029606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748825, 29.811100, 38.101334>,  <28.790806, 29.431696, 38.220879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748825, 29.811100, 38.101334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237436, 0.315727, 0.918662,
		0.965717, 0.025454, -0.258346,
		-0.104950, 0.948509, -0.298859,
		28.717340, 30.095654, 38.011677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426523, 29.666752, 38.390625>,  <28.790806, 29.431696, 38.220879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426523, 29.666752, 38.390625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189049, 29.987038, 38.358650>,  <29.046564, 30.179209, 38.339466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189049, 29.987038, 38.358650>,  <29.426523, 29.666752, 38.390625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189049, 29.987038, 38.358650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405421, 0.383440, 0.829824,
		0.695103, 0.460249, -0.552271,
		-0.593688, 0.800716, -0.079936,
		29.010942, 30.227253, 38.334671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828434, 30.180614, 38.666271>,  <29.426523, 29.666752, 38.390625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828434, 30.180614, 38.666271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460403, 30.336750, 38.653030>,  <29.239586, 30.430431, 38.645088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460403, 30.336750, 38.653030>,  <29.828434, 30.180614, 38.666271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460403, 30.336750, 38.653030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304899, 0.766603, 0.565116,
		0.245961, 0.509858, -0.824347,
		-0.920076, 0.390339, -0.033100,
		29.184381, 30.453852, 38.643101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777660, 30.926851, 38.492439>,  <29.828434, 30.180614, 38.666271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777660, 30.926851, 38.492439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.493366, 30.831749, 38.757263>,  <29.322790, 30.774689, 38.916157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.493366, 30.831749, 38.757263>,  <29.777660, 30.926851, 38.492439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493366, 30.831749, 38.757263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236869, 0.805308, 0.543481,
		-0.662379, 0.543094, -0.516046,
		-0.710737, -0.237755, 0.662062,
		29.280146, 30.760422, 38.955883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039644, 30.885105, 39.182510>,  <29.777660, 30.926851, 38.492439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039644, 30.885105, 39.182510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.407280, 31.042702, 39.185074>,  <30.627861, 31.137260, 39.186611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.407280, 31.042702, 39.185074>,  <30.039644, 30.885105, 39.182510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407280, 31.042702, 39.185074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138609, 0.338489, -0.930705,
		-0.368863, 0.854514, 0.365713,
		0.919091, 0.393994, 0.006413,
		30.683006, 31.160900, 39.186996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987026, 31.602812, 38.912331>,  <30.039644, 30.885105, 39.182510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987026, 31.602812, 38.912331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377148, 31.526913, 38.867111>,  <30.611221, 31.481373, 38.839981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377148, 31.526913, 38.867111>,  <29.987026, 31.602812, 38.912331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377148, 31.526913, 38.867111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009620, 0.547821, -0.836540,
		0.220659, 0.814793, 0.536118,
		0.975304, -0.189747, -0.113044,
		30.669739, 31.469988, 38.833199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241798, 32.205082, 38.675396>,  <29.987026, 31.602812, 38.912331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241798, 32.205082, 38.675396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527271, 31.946491, 38.567524>,  <30.698555, 31.791336, 38.502800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527271, 31.946491, 38.567524>,  <30.241798, 32.205082, 38.675396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527271, 31.946491, 38.567524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007707, 0.377725, -0.925886,
		0.700430, 0.662865, 0.264592,
		0.713680, -0.646478, -0.269679,
		30.741375, 31.752548, 38.486622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677940, 32.562775, 38.369545>,  <30.241798, 32.205082, 38.675396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677940, 32.562775, 38.369545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768023, 32.197701, 38.233147>,  <30.822073, 31.978655, 38.151306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768023, 32.197701, 38.233147>,  <30.677940, 32.562775, 38.369545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768023, 32.197701, 38.233147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016062, 0.353419, -0.935327,
		0.974178, 0.205165, 0.094252,
		0.225207, -0.912690, -0.340998,
		30.835585, 31.923893, 38.130848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157898, 32.739826, 37.870632>,  <30.677940, 32.562775, 38.369545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157898, 32.739826, 37.870632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.061842, 32.362720, 37.778084>,  <31.004208, 32.136459, 37.722557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.061842, 32.362720, 37.778084>,  <31.157898, 32.739826, 37.870632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061842, 32.362720, 37.778084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227372, 0.177087, -0.957571,
		0.943734, -0.282558, 0.171832,
		-0.240140, -0.942763, -0.231369,
		30.989799, 32.079891, 37.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666075, 32.428253, 37.520615>,  <31.157898, 32.739826, 37.870632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666075, 32.428253, 37.520615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358728, 32.202366, 37.400146>,  <31.174320, 32.066833, 37.327866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358728, 32.202366, 37.400146>,  <31.666075, 32.428253, 37.520615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358728, 32.202366, 37.400146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253786, 0.163157, -0.953401,
		0.587543, -0.808994, 0.017954,
		-0.768366, -0.564720, -0.301173,
		31.128218, 32.032951, 37.309795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912592, 31.803652, 37.133606>,  <31.666075, 32.428253, 37.520615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912592, 31.803652, 37.133606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.530886, 31.861965, 37.029202>,  <31.301863, 31.896954, 36.966560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.530886, 31.861965, 37.029202>,  <31.912592, 31.803652, 37.133606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530886, 31.861965, 37.029202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263116, -0.004988, -0.964751,
		-0.141947, -0.989304, -0.033598,
		-0.954265, 0.145784, -0.261010,
		31.244606, 31.905701, 36.950897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973942, 31.618980, 36.536667>,  <31.912592, 31.803652, 37.133606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973942, 31.618980, 36.536667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611380, 31.787941, 36.535603>,  <31.393843, 31.889318, 36.534966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611380, 31.787941, 36.535603>,  <31.973942, 31.618980, 36.536667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611380, 31.787941, 36.535603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025946, -0.061952, -0.997742,
		-0.421614, -0.904288, 0.067113,
		-0.906404, 0.422404, -0.002658,
		31.339458, 31.914661, 36.534805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453020, 31.191881, 36.206970>,  <31.973942, 31.618980, 36.536667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453020, 31.191881, 36.206970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298767, 31.556301, 36.148628>,  <31.206215, 31.774954, 36.113625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298767, 31.556301, 36.148628>,  <31.453020, 31.191881, 36.206970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298767, 31.556301, 36.148628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129648, -0.210016, -0.969064,
		-0.913498, -0.354793, 0.199105,
		-0.385632, 0.911052, -0.145851,
		31.183077, 31.829617, 36.104874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977480, 31.178310, 35.600204>,  <31.453020, 31.191881, 36.206970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977480, 31.178310, 35.600204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.027435, 31.571815, 35.651764>,  <31.057407, 31.807919, 35.682701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.027435, 31.571815, 35.651764>,  <30.977480, 31.178310, 35.600204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027435, 31.571815, 35.651764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148939, 0.147035, -0.977854,
		-0.980928, 0.102923, 0.164883,
		0.124887, 0.983762, 0.128901,
		31.064901, 31.866943, 35.690434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461382, 31.454203, 35.207214>,  <30.977480, 31.178310, 35.600204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461382, 31.454203, 35.207214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714979, 31.761116, 35.245850>,  <30.867138, 31.945263, 35.269032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714979, 31.761116, 35.245850>,  <30.461382, 31.454203, 35.207214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714979, 31.761116, 35.245850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016324, 0.138146, -0.990277,
		-0.773166, 0.626253, 0.100109,
		0.633994, 0.767283, 0.096587,
		30.905178, 31.991301, 35.274826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085943, 32.034729, 34.902477>,  <30.461382, 31.454203, 35.207214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085943, 32.034729, 34.902477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.476892, 32.118378, 34.915161>,  <30.711462, 32.168568, 34.922771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.476892, 32.118378, 34.915161>,  <30.085943, 32.034729, 34.902477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476892, 32.118378, 34.915161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034217, -0.008402, -0.999379,
		-0.208727, 0.977853, -0.015367,
		0.977375, 0.209123, 0.031706,
		30.770105, 32.181114, 34.924671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202703, 32.623833, 34.444462>,  <30.085943, 32.034729, 34.902477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202703, 32.623833, 34.444462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554865, 32.435345, 34.465778>,  <30.766161, 32.322250, 34.478569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554865, 32.435345, 34.465778>,  <30.202703, 32.623833, 34.444462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554865, 32.435345, 34.465778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026943, -0.161903, -0.986439,
		0.473462, 0.867027, -0.155236,
		0.880402, -0.471224, 0.053294,
		30.818985, 32.293976, 34.481766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607765, 32.723450, 33.779491>,  <30.202703, 32.623833, 34.444462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607765, 32.723450, 33.779491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794365, 32.398197, 33.918743>,  <30.906324, 32.203045, 34.002296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794365, 32.398197, 33.918743>,  <30.607765, 32.723450, 33.779491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794365, 32.398197, 33.918743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003599, -0.395323, -0.918535,
		0.884514, 0.427243, -0.187344,
		0.466500, -0.813132, 0.348131,
		30.934315, 32.154259, 34.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182611, 32.700356, 33.391502>,  <30.607765, 32.723450, 33.779491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182611, 32.700356, 33.391502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095825, 32.342197, 33.547039>,  <31.043753, 32.127304, 33.640362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095825, 32.342197, 33.547039>,  <31.182611, 32.700356, 33.391502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095825, 32.342197, 33.547039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225396, -0.433519, -0.872501,
		0.949801, -0.101659, 0.295877,
		-0.216966, -0.895392, 0.388844,
		31.030735, 32.073582, 33.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800976, 32.419209, 33.240940>,  <31.182611, 32.700356, 33.391502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800976, 32.419209, 33.240940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.527689, 32.128109, 33.264950>,  <31.363716, 31.953449, 33.279354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.527689, 32.128109, 33.264950>,  <31.800976, 32.419209, 33.240940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527689, 32.128109, 33.264950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262222, -0.321226, -0.909974,
		0.681509, -0.605971, 0.410298,
		-0.683216, -0.727745, 0.060020,
		31.322723, 31.909786, 33.282955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082165, 31.828169, 32.922691>,  <31.800976, 32.419209, 33.240940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082165, 31.828169, 32.922691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689146, 31.754387, 32.913086>,  <31.453335, 31.710117, 32.907322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689146, 31.754387, 32.913086>,  <32.082165, 31.828169, 32.922691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689146, 31.754387, 32.913086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066869, -0.229787, -0.970941,
		0.173578, -0.955601, 0.238111,
		-0.982547, -0.184457, -0.024014,
		31.394382, 31.699049, 32.905880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036911, 31.123535, 32.698910>,  <32.082165, 31.828169, 32.922691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036911, 31.123535, 32.698910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678865, 31.289543, 32.633751>,  <31.464039, 31.389149, 32.594654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678865, 31.289543, 32.633751>,  <32.036911, 31.123535, 32.698910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678865, 31.289543, 32.633751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051826, -0.266031, -0.962570,
		-0.442823, -0.870048, 0.216618,
		-0.895110, 0.415022, -0.162896,
		31.410332, 31.414049, 32.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715036, 30.655445, 32.334869>,  <32.036911, 31.123535, 32.698910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715036, 30.655445, 32.334869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535425, 31.002445, 32.249252>,  <31.427658, 31.210646, 32.197884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535425, 31.002445, 32.249252>,  <31.715036, 30.655445, 32.334869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535425, 31.002445, 32.249252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028899, -0.225320, -0.973856,
		-0.893050, -0.443475, 0.076105,
		-0.449029, 0.867503, -0.214038,
		31.400717, 31.262695, 32.185040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485842, 30.438873, 31.673040>,  <31.715036, 30.655445, 32.334869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485842, 30.438873, 31.673040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418339, 30.833076, 31.679878>,  <31.377838, 31.069599, 31.683981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418339, 30.833076, 31.679878>,  <31.485842, 30.438873, 31.673040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418339, 30.833076, 31.679878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136437, -0.006181, -0.990629,
		-0.976169, -0.169506, 0.135503,
		-0.168756, 0.985510, 0.017093,
		31.367712, 31.128729, 31.685005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.404093, 44.082184, 18.485025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.588161, 44.150097, 18.833603>,  <24.698603, 44.190845, 19.042749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.588161, 44.150097, 18.833603>,  <24.404093, 44.082184, 18.485025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588161, 44.150097, 18.833603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000652, -0.981609, 0.190902,
		0.887829, -0.087280, -0.451821,
		0.460174, 0.169784, 0.871444,
		24.726213, 44.201031, 19.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938301, 43.675442, 18.454262>,  <24.404093, 44.082184, 18.485025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938301, 43.675442, 18.454262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.860546, 43.742901, 18.840790>,  <24.813892, 43.783375, 19.072706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.860546, 43.742901, 18.840790>,  <24.938301, 43.675442, 18.454262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860546, 43.742901, 18.840790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045283, -0.982516, 0.180585,
		0.979879, 0.078862, 0.183354,
		-0.194389, 0.168649, 0.966318,
		24.802229, 43.793495, 19.130686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400578, 43.103645, 18.866182>,  <24.938301, 43.675442, 18.454262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400578, 43.103645, 18.866182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.122690, 43.230770, 19.124287>,  <24.955957, 43.307045, 19.279148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.122690, 43.230770, 19.124287>,  <25.400578, 43.103645, 18.866182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122690, 43.230770, 19.124287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089925, -0.928427, 0.360468,
		0.713638, 0.192399, 0.673575,
		-0.694718, 0.317815, 0.645260,
		24.914274, 43.326115, 19.317865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463213, 42.607414, 19.420977>,  <25.400578, 43.103645, 18.866182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463213, 42.607414, 19.420977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.110403, 42.777882, 19.501389>,  <24.898716, 42.880161, 19.549635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.110403, 42.777882, 19.501389>,  <25.463213, 42.607414, 19.420977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110403, 42.777882, 19.501389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290427, -0.827641, 0.480274,
		0.371055, 0.365230, 0.853771,
		-0.882026, 0.426166, 0.201027,
		24.845795, 42.905731, 19.561697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230736, 42.297268, 20.136503>,  <25.463213, 42.607414, 19.420977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230736, 42.297268, 20.136503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894529, 42.438755, 19.972347>,  <24.692806, 42.523647, 19.873854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894529, 42.438755, 19.972347>,  <25.230736, 42.297268, 20.136503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894529, 42.438755, 19.972347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496934, -0.805098, 0.323843,
		-0.215853, 0.476131, 0.852471,
		-0.840514, 0.353720, -0.410388,
		24.642376, 42.544872, 19.849232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740274, 42.299889, 20.736465>,  <25.230736, 42.297268, 20.136503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740274, 42.299889, 20.736465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.557579, 42.289829, 20.380768>,  <24.447962, 42.283794, 20.167349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.557579, 42.289829, 20.380768>,  <24.740274, 42.299889, 20.736465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557579, 42.289829, 20.380768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595359, -0.734105, 0.326556,
		-0.661012, 0.678571, 0.320321,
		-0.456740, -0.025151, -0.889245,
		24.420557, 42.282284, 20.113995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.993769, 42.400719, 20.973984>,  <24.740274, 42.299889, 20.736465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.993769, 42.400719, 20.973984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.037477, 42.216686, 20.621532>,  <24.063704, 42.106266, 20.410063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.037477, 42.216686, 20.621532>,  <23.993769, 42.400719, 20.973984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037477, 42.216686, 20.621532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614884, -0.727771, 0.303753,
		-0.781010, 0.508599, -0.362423,
		0.109273, -0.460083, -0.881127,
		24.070259, 42.078663, 20.357195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.322855, 42.164696, 20.788336>,  <23.993769, 42.400719, 20.973984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.322855, 42.164696, 20.788336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.512928, 41.940250, 20.517235>,  <23.626972, 41.805584, 20.354574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.512928, 41.940250, 20.517235>,  <23.322855, 42.164696, 20.788336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.512928, 41.940250, 20.517235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648932, -0.743678, 0.160716,
		-0.594212, 0.363447, -0.717509,
		0.475184, -0.561114, -0.677755,
		23.655483, 41.771915, 20.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832438, 41.987366, 20.296675>,  <23.322855, 42.164696, 20.788336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832438, 41.987366, 20.296675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.135870, 41.726810, 20.290363>,  <23.317928, 41.570477, 20.286577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.135870, 41.726810, 20.290363>,  <22.832438, 41.987366, 20.296675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.135870, 41.726810, 20.290363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649970, -0.758184, 0.051923,
		-0.045786, -0.029132, -0.998527,
		0.758579, -0.651390, -0.015779,
		23.363443, 41.531395, 20.285629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640514, 41.436981, 19.736593>,  <22.832438, 41.987366, 20.296675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640514, 41.436981, 19.736593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.932146, 41.258850, 19.944489>,  <23.107124, 41.151970, 20.069225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.932146, 41.258850, 19.944489>,  <22.640514, 41.436981, 19.736593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.932146, 41.258850, 19.944489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487464, -0.870909, -0.062416,
		0.480441, -0.207848, -0.852042,
		0.729078, -0.445327, 0.519740,
		23.150869, 41.125252, 20.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.827518, 40.800201, 19.352119>,  <22.640514, 41.436981, 19.736593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.827518, 40.800201, 19.352119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.964544, 40.729939, 19.721291>,  <23.046761, 40.687782, 19.942793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.964544, 40.729939, 19.721291>,  <22.827518, 40.800201, 19.352119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.964544, 40.729939, 19.721291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378672, -0.924851, -0.035466,
		0.859800, -0.337337, -0.383339,
		0.342567, -0.175654, 0.922927,
		23.067314, 40.677242, 19.998169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.033512, 40.067291, 19.282448>,  <22.827518, 40.800201, 19.352119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.033512, 40.067291, 19.282448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.995773, 40.140453, 19.673885>,  <22.973131, 40.184349, 19.908749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.995773, 40.140453, 19.673885>,  <23.033512, 40.067291, 19.282448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995773, 40.140453, 19.673885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454015, -0.882710, 0.121213,
		0.885985, -0.432860, 0.166322,
		-0.094345, 0.182906, 0.978593,
		22.967470, 40.195324, 19.967463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388062, 39.551788, 19.632433>,  <23.033512, 40.067291, 19.282448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388062, 39.551788, 19.632433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.131207, 39.692337, 19.904961>,  <22.977093, 39.776665, 20.068478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.131207, 39.692337, 19.904961>,  <23.388062, 39.551788, 19.632433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.131207, 39.692337, 19.904961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253859, -0.936089, 0.243501,
		0.723336, -0.016598, 0.690296,
		-0.642137, 0.351372, 0.681321,
		22.938566, 39.797749, 20.109358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.596512, 39.262436, 20.239355>,  <23.388062, 39.551788, 19.632433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.596512, 39.262436, 20.239355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.217501, 39.374779, 20.300430>,  <22.990093, 39.442184, 20.337076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.217501, 39.374779, 20.300430>,  <23.596512, 39.262436, 20.239355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217501, 39.374779, 20.300430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216182, -0.914814, 0.341147,
		0.235493, 0.290237, 0.927526,
		-0.947527, 0.280853, 0.152688,
		22.933243, 39.459034, 20.346237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.380230, 39.038578, 20.930668>,  <23.596512, 39.262436, 20.239355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.380230, 39.038578, 20.930668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.046980, 39.097256, 20.717358>,  <22.847029, 39.132462, 20.589373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.046980, 39.097256, 20.717358>,  <23.380230, 39.038578, 20.930668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.046980, 39.097256, 20.717358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374758, -0.858834, 0.349230,
		-0.406764, 0.490801, 0.770491,
		-0.833126, 0.146694, -0.533275,
		22.797043, 39.141262, 20.557375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926929, 38.650337, 21.293888>,  <23.380230, 39.038578, 20.930668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926929, 38.650337, 21.293888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.724342, 38.721497, 20.956406>,  <22.602791, 38.764194, 20.753916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.724342, 38.721497, 20.956406>,  <22.926929, 38.650337, 21.293888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.724342, 38.721497, 20.956406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678533, -0.686003, 0.262664,
		-0.532058, 0.705514, 0.468150,
		-0.506466, 0.177902, -0.843708,
		22.572403, 38.774868, 20.703293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272556, 38.472313, 21.459557>,  <22.926929, 38.650337, 21.293888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272556, 38.472313, 21.459557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238504, 38.497921, 21.061832>,  <22.218073, 38.513287, 20.823198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238504, 38.497921, 21.061832>,  <22.272556, 38.472313, 21.459557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.238504, 38.497921, 21.061832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446775, -0.894437, -0.019340,
		-0.890587, 0.442587, 0.104748,
		-0.085131, 0.064022, -0.994311,
		22.212965, 38.517128, 20.763538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.526142, 38.462772, 21.323502>,  <22.272556, 38.472313, 21.459557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.526142, 38.462772, 21.323502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.751453, 38.316586, 21.027081>,  <21.886639, 38.228874, 20.849228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.751453, 38.316586, 21.027081>,  <21.526142, 38.462772, 21.323502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751453, 38.316586, 21.027081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554486, -0.832119, -0.011091,
		-0.612589, 0.417149, -0.671358,
		0.563276, -0.365465, -0.741050,
		21.920437, 38.206947, 20.804766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.069971, 38.042416, 20.947130>,  <21.526142, 38.462772, 21.323502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.069971, 38.042416, 20.947130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.425844, 37.909374, 20.822014>,  <21.639368, 37.829548, 20.746944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.425844, 37.909374, 20.822014>,  <21.069971, 38.042416, 20.947130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425844, 37.909374, 20.822014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337043, -0.940575, 0.041495,
		-0.308006, 0.068507, -0.948915,
		0.889682, -0.332606, -0.312793,
		21.692749, 37.809593, 20.728176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.943926, 37.419682, 20.685759>,  <21.069971, 38.042416, 20.947130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.943926, 37.419682, 20.685759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.338675, 37.393494, 20.744820>,  <21.575523, 37.377781, 20.780256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.338675, 37.393494, 20.744820>,  <20.943926, 37.419682, 20.685759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338675, 37.393494, 20.744820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076561, -0.994554, 0.070717,
		0.142220, -0.081092, -0.986508,
		0.986870, -0.065470, 0.147654,
		21.634735, 37.373852, 20.789116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070192, 37.002731, 20.155663>,  <20.943926, 37.419682, 20.685759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070192, 37.002731, 20.155663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329958, 36.977123, 20.458755>,  <21.485817, 36.961758, 20.640612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329958, 36.977123, 20.458755>,  <21.070192, 37.002731, 20.155663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329958, 36.977123, 20.458755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254382, -0.957331, 0.137138,
		0.716624, -0.281814, -0.637990,
		0.649415, -0.064018, 0.757735,
		21.524782, 36.957916, 20.686075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764189, 37.759861, 20.088236>,  <21.070192, 37.002731, 20.155663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.764189, 37.759861, 20.088236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.416418, 37.904049, 20.223389>,  <20.207756, 37.990562, 20.304480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.416418, 37.904049, 20.223389>,  <20.764189, 37.759861, 20.088236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416418, 37.904049, 20.223389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029540, 0.644732, -0.763838,
		-0.493181, -0.674081, -0.549898,
		-0.869425, 0.360466, 0.337882,
		20.155590, 38.012188, 20.324753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402550, 37.816795, 19.468702>,  <20.764189, 37.759861, 20.088236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402550, 37.816795, 19.468702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.219807, 38.057140, 19.731075>,  <20.110161, 38.201347, 19.888500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.219807, 38.057140, 19.731075>,  <20.402550, 37.816795, 19.468702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.219807, 38.057140, 19.731075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085808, 0.763716, -0.639824,
		-0.885391, -0.236025, -0.400468,
		-0.456858, 0.600858, 0.655935,
		20.082748, 38.237396, 19.927856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759699, 38.024673, 19.200535>,  <20.402550, 37.816795, 19.468702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759699, 38.024673, 19.200535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.869625, 38.289711, 19.479229>,  <19.935581, 38.448734, 19.646446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.869625, 38.289711, 19.479229>,  <19.759699, 38.024673, 19.200535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869625, 38.289711, 19.479229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138930, 0.744396, -0.653125,
		-0.951407, 0.082692, 0.296627,
		0.274816, 0.662598, 0.696735,
		19.952070, 38.488491, 19.688250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272995, 38.512585, 19.270386>,  <19.759699, 38.024673, 19.200535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272995, 38.512585, 19.270386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.560757, 38.716698, 19.458885>,  <19.733414, 38.839165, 19.571985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.560757, 38.716698, 19.458885>,  <19.272995, 38.512585, 19.270386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560757, 38.716698, 19.458885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266717, 0.829381, -0.490907,
		-0.641344, 0.227469, 0.732759,
		0.719402, 0.510280, 0.471249,
		19.776577, 38.869781, 19.600260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940489, 39.162292, 19.357386>,  <19.272995, 38.512585, 19.270386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940489, 39.162292, 19.357386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.325356, 39.261616, 19.402252>,  <19.556274, 39.321209, 19.429173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.325356, 39.261616, 19.402252>,  <18.940489, 39.162292, 19.357386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325356, 39.261616, 19.402252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151312, 0.829302, -0.537924,
		-0.226592, 0.500599, 0.835498,
		0.962165, 0.248310, 0.112166,
		19.614004, 39.336109, 19.435902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021021, 39.933537, 19.259785>,  <18.940489, 39.162292, 19.357386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021021, 39.933537, 19.259785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.403894, 39.817852, 19.264786>,  <19.633619, 39.748440, 19.267786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.403894, 39.817852, 19.264786>,  <19.021021, 39.933537, 19.259785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403894, 39.817852, 19.264786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257966, 0.832576, -0.490174,
		0.131356, 0.472412, 0.871535,
		0.957183, -0.289213, 0.012502,
		19.691050, 39.731087, 19.268536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409491, 40.378231, 19.677223>,  <19.021021, 39.933537, 19.259785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.409491, 40.378231, 19.677223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.653852, 40.220833, 19.402428>,  <19.800470, 40.126392, 19.237551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.653852, 40.220833, 19.402428>,  <19.409491, 40.378231, 19.677223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653852, 40.220833, 19.402428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360212, 0.910868, -0.201414,
		0.705013, -0.124417, 0.698196,
		0.610905, -0.393498, -0.686990,
		19.837124, 40.102783, 19.196331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084536, 40.725082, 19.769390>,  <19.409491, 40.378231, 19.677223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084536, 40.725082, 19.769390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.064695, 40.559570, 19.405781>,  <20.052792, 40.460262, 19.187614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.064695, 40.559570, 19.405781>,  <20.084536, 40.725082, 19.769390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064695, 40.559570, 19.405781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657114, 0.671895, -0.341699,
		0.752157, -0.614282, 0.238574,
		-0.049603, -0.413782, -0.909024,
		20.049814, 40.435436, 19.133074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724150, 40.570030, 19.639271>,  <20.084536, 40.725082, 19.769390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724150, 40.570030, 19.639271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.571508, 40.593094, 19.270260>,  <20.479923, 40.606934, 19.048853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.571508, 40.593094, 19.270260>,  <20.724150, 40.570030, 19.639271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571508, 40.593094, 19.270260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754980, 0.595256, -0.275093,
		0.533277, -0.801465, -0.270684,
		-0.381603, 0.057661, -0.922525,
		20.457027, 40.610394, 18.993502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337261, 40.512798, 19.179022>,  <20.724150, 40.570030, 19.639271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337261, 40.512798, 19.179022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034456, 40.661949, 18.964397>,  <20.852774, 40.751438, 18.835623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034456, 40.661949, 18.964397>,  <21.337261, 40.512798, 19.179022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034456, 40.661949, 18.964397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603424, 0.713942, -0.355200,
		0.250629, -0.592665, -0.765463,
		-0.757011, 0.372875, -0.536562,
		20.807354, 40.773811, 18.803429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.575260, 40.695042, 18.492006>,  <21.337261, 40.512798, 19.179022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.575260, 40.695042, 18.492006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.243582, 40.915813, 18.527359>,  <21.044575, 41.048275, 18.548571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.243582, 40.915813, 18.527359>,  <21.575260, 40.695042, 18.492006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243582, 40.915813, 18.527359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515327, 0.816095, -0.261586,
		-0.216503, -0.171361, -0.961125,
		-0.829195, 0.551928, 0.088380,
		20.994823, 41.081390, 18.553873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470037, 41.113407, 17.848265>,  <21.575260, 40.695042, 18.492006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470037, 41.113407, 17.848265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.243021, 41.340324, 18.086952>,  <21.106812, 41.476475, 18.230164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.243021, 41.340324, 18.086952>,  <21.470037, 41.113407, 17.848265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243021, 41.340324, 18.086952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319097, 0.819659, -0.475749,
		-0.758995, -0.079597, -0.646213,
		-0.567542, 0.567296, 0.596717,
		21.072758, 41.510513, 18.265968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.111340, 41.670261, 17.432180>,  <21.470037, 41.113407, 17.848265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.111340, 41.670261, 17.432180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.072737, 41.816917, 17.802319>,  <21.049576, 41.904911, 18.024401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.072737, 41.816917, 17.802319>,  <21.111340, 41.670261, 17.432180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072737, 41.816917, 17.802319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387187, 0.870288, -0.304441,
		-0.916937, 0.328901, -0.225946,
		-0.096507, 0.366637, 0.925345,
		21.043785, 41.926907, 18.079922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985720, 42.311687, 17.236202>,  <21.111340, 41.670261, 17.432180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985720, 42.311687, 17.236202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.111477, 42.312859, 17.615917>,  <21.186932, 42.313560, 17.843746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.111477, 42.312859, 17.615917>,  <20.985720, 42.311687, 17.236202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.111477, 42.312859, 17.615917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414475, 0.899220, -0.140048,
		-0.854030, 0.437487, 0.281494,
		0.314394, 0.002932, 0.949288,
		21.205795, 42.313740, 17.900703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.886677, 43.010735, 17.432495>,  <20.985720, 42.311687, 17.236202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.886677, 43.010735, 17.432495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157486, 42.842072, 17.673775>,  <21.319971, 42.740875, 17.818542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157486, 42.842072, 17.673775>,  <20.886677, 43.010735, 17.432495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157486, 42.842072, 17.673775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474201, 0.876718, 0.080620,
		-0.562828, 0.231455, 0.793507,
		0.677022, -0.421657, 0.603197,
		21.360592, 42.715576, 17.854734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846216, 43.376011, 18.049877>,  <20.886677, 43.010735, 17.432495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846216, 43.376011, 18.049877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.215012, 43.223671, 18.021896>,  <21.436289, 43.132267, 18.005108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.215012, 43.223671, 18.021896>,  <20.846216, 43.376011, 18.049877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215012, 43.223671, 18.021896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385908, 0.918595, 0.085201,
		0.031809, -0.105549, 0.993905,
		0.921989, -0.380845, -0.069952,
		21.491608, 43.109417, 18.000912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.242041, 43.810413, 18.469069>,  <20.846216, 43.376011, 18.049877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.242041, 43.810413, 18.469069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.517279, 43.600410, 18.268711>,  <21.682421, 43.474407, 18.148497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.517279, 43.600410, 18.268711>,  <21.242041, 43.810413, 18.469069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517279, 43.600410, 18.268711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583811, 0.810498, -0.047519,
		0.430921, -0.259729, 0.864204,
		0.688094, -0.525008, -0.500893,
		21.723707, 43.442909, 18.118443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824541, 43.963020, 18.853418>,  <21.242041, 43.810413, 18.469069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824541, 43.963020, 18.853418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.941069, 43.855125, 18.486294>,  <22.010984, 43.790390, 18.266020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.941069, 43.855125, 18.486294>,  <21.824541, 43.963020, 18.853418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.941069, 43.855125, 18.486294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588218, 0.807124, -0.050501,
		0.754410, -0.525161, 0.393792,
		0.291318, -0.269734, -0.917811,
		22.028463, 43.774204, 18.210951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.550903, 44.175262, 18.850775>,  <21.824541, 43.963020, 18.853418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.550903, 44.175262, 18.850775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.450945, 44.112560, 18.468575>,  <22.390970, 44.074940, 18.239254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.450945, 44.112560, 18.468575>,  <22.550903, 44.175262, 18.850775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.450945, 44.112560, 18.468575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642027, 0.711863, -0.284697,
		0.724812, -0.684601, -0.077252,
		-0.249897, -0.156754, -0.955500,
		22.375977, 44.065533, 18.181925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.245144, 44.151905, 18.490866>,  <22.550903, 44.175262, 18.850775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.245144, 44.151905, 18.490866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.942148, 44.250809, 18.249180>,  <22.760351, 44.310150, 18.104168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.942148, 44.250809, 18.249180>,  <23.245144, 44.151905, 18.490866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942148, 44.250809, 18.249180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543120, 0.752222, -0.373072,
		0.362256, -0.610758, -0.704092,
		-0.757490, 0.247259, -0.604212,
		22.714901, 44.324986, 18.067917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646967, 44.142502, 17.870213>,  <23.245144, 44.151905, 18.490866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646967, 44.142502, 17.870213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.325613, 44.380127, 17.886494>,  <23.132801, 44.522701, 17.896263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.325613, 44.380127, 17.886494>,  <23.646967, 44.142502, 17.870213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.325613, 44.380127, 17.886494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520239, 0.733516, -0.437384,
		-0.289692, -0.330213, -0.898353,
		-0.803387, 0.594065, 0.040704,
		23.084597, 44.558346, 17.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.201544, 30.105906, 27.229143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421003, 30.438129, 27.267406>,  <27.552679, 30.637465, 27.290365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421003, 30.438129, 27.267406>,  <27.201544, 30.105906, 27.229143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421003, 30.438129, 27.267406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293604, 0.298540, -0.908114,
		-0.782802, 0.470151, 0.407650,
		0.548651, 0.830561, 0.095659,
		27.585598, 30.687298, 27.296104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817429, 30.615284, 26.912186>,  <27.201544, 30.105906, 27.229143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817429, 30.615284, 26.912186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170483, 30.802330, 26.931335>,  <27.382315, 30.914558, 26.942825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170483, 30.802330, 26.931335>,  <26.817429, 30.615284, 26.912186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170483, 30.802330, 26.931335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043989, 0.183565, -0.982023,
		-0.467999, 0.864661, 0.182591,
		0.882634, 0.467617, 0.047873,
		27.435272, 30.942616, 26.945698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722233, 31.434267, 26.703739>,  <26.817429, 30.615284, 26.912186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722233, 31.434267, 26.703739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087061, 31.278549, 26.652241>,  <27.305958, 31.185118, 26.621342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087061, 31.278549, 26.652241>,  <26.722233, 31.434267, 26.703739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087061, 31.278549, 26.652241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030415, 0.248889, -0.968054,
		0.408903, 0.886850, 0.215164,
		0.912071, -0.389296, -0.128745,
		27.360682, 31.161760, 26.613617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013273, 31.954216, 26.357782>,  <26.722233, 31.434267, 26.703739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013273, 31.954216, 26.357782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250502, 31.635994, 26.308205>,  <27.392838, 31.445061, 26.278458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250502, 31.635994, 26.308205>,  <27.013273, 31.954216, 26.357782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250502, 31.635994, 26.308205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168649, 0.273271, -0.947038,
		0.787290, 0.540756, 0.296238,
		0.593070, -0.795554, -0.123946,
		27.428423, 31.397327, 26.271021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676819, 32.118153, 26.315535>,  <27.013273, 31.954216, 26.357782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676819, 32.118153, 26.315535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646769, 31.772217, 26.116974>,  <27.628738, 31.564657, 25.997837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646769, 31.772217, 26.116974>,  <27.676819, 32.118153, 26.315535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646769, 31.772217, 26.116974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209481, 0.473013, -0.855790,
		0.974922, -0.168279, 0.145630,
		-0.075127, -0.864835, -0.496403,
		27.624231, 31.512766, 25.968054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121397, 32.283916, 25.835567>,  <27.676819, 32.118153, 26.315535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121397, 32.283916, 25.835567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944643, 31.954197, 25.693996>,  <27.838591, 31.756365, 25.609055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944643, 31.954197, 25.693996>,  <28.121397, 32.283916, 25.835567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944643, 31.954197, 25.693996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235619, 0.274036, -0.932410,
		0.865575, -0.495411, 0.073129,
		-0.441886, -0.824302, -0.353927,
		27.812077, 31.706907, 25.587818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572151, 31.989500, 25.270060>,  <28.121397, 32.283916, 25.835567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572151, 31.989500, 25.270060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206966, 31.856289, 25.175751>,  <27.987856, 31.776361, 25.119165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206966, 31.856289, 25.175751>,  <28.572151, 31.989500, 25.270060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206966, 31.856289, 25.175751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045045, 0.492031, -0.869412,
		0.405546, -0.804362, -0.434205,
		-0.912964, -0.333027, -0.235774,
		27.933077, 31.756380, 25.105019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511372, 31.747988, 24.583315>,  <28.572151, 31.989500, 25.270060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511372, 31.747988, 24.583315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123127, 31.807838, 24.658710>,  <27.890181, 31.843750, 24.703947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123127, 31.807838, 24.658710>,  <28.511372, 31.747988, 24.583315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123127, 31.807838, 24.658710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076323, 0.551399, -0.830743,
		-0.228234, -0.820714, -0.523773,
		-0.970610, 0.149628, 0.188488,
		27.831944, 31.852726, 24.715258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200388, 31.750109, 23.914988>,  <28.511372, 31.747988, 24.583315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200388, 31.750109, 23.914988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955551, 31.943462, 24.165325>,  <27.808649, 32.059475, 24.315529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955551, 31.943462, 24.165325>,  <28.200388, 31.750109, 23.914988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955551, 31.943462, 24.165325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302263, 0.588313, -0.750017,
		-0.730740, -0.648249, -0.213992,
		-0.612092, 0.483386, 0.625845,
		27.771923, 32.088478, 24.353079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580610, 31.724545, 23.569199>,  <28.200388, 31.750109, 23.914988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580610, 31.724545, 23.569199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519913, 32.020294, 23.831589>,  <27.483494, 32.197742, 23.989023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519913, 32.020294, 23.831589>,  <27.580610, 31.724545, 23.569199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519913, 32.020294, 23.831589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484757, 0.522695, -0.701285,
		-0.861386, -0.424402, 0.279102,
		-0.151741, 0.739373, 0.655974,
		27.474390, 32.242107, 24.028381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861193, 32.035069, 23.410706>,  <27.580610, 31.724545, 23.569199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861193, 32.035069, 23.410706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063473, 32.320812, 23.604183>,  <27.184841, 32.492260, 23.720270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063473, 32.320812, 23.604183>,  <26.861193, 32.035069, 23.410706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063473, 32.320812, 23.604183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276801, 0.665376, -0.693294,
		-0.817099, 0.216711, 0.534215,
		0.505698, 0.714361, 0.483692,
		27.215181, 32.535122, 23.749290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386435, 32.596634, 23.498026>,  <26.861193, 32.035069, 23.410706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386435, 32.596634, 23.498026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764111, 32.725311, 23.526375>,  <26.990715, 32.802517, 23.543385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764111, 32.725311, 23.526375>,  <26.386435, 32.596634, 23.498026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764111, 32.725311, 23.526375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166383, 0.651434, -0.740236,
		-0.284298, 0.687130, 0.668601,
		0.944188, 0.321692, 0.070875,
		27.047367, 32.821819, 23.547638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368698, 33.426922, 23.354706>,  <26.386435, 32.596634, 23.498026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368698, 33.426922, 23.354706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730103, 33.301193, 23.238174>,  <26.946945, 33.225754, 23.168255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730103, 33.301193, 23.238174>,  <26.368698, 33.426922, 23.354706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730103, 33.301193, 23.238174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039267, 0.616194, -0.786615,
		0.426767, 0.722153, 0.544394,
		0.903509, -0.314325, -0.291328,
		27.001156, 33.206894, 23.150776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407558, 33.087173, 22.759281>,  <26.368698, 33.426922, 23.354706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407558, 33.087173, 22.759281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170731, 33.033707, 23.077171>,  <26.028633, 33.001625, 23.267904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170731, 33.033707, 23.077171>,  <26.407558, 33.087173, 22.759281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170731, 33.033707, 23.077171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584426, -0.607790, -0.537622,
		0.554887, -0.782767, 0.281736,
		-0.592070, -0.133666, 0.794724,
		25.993109, 32.993607, 23.315588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822897, 33.725422, 22.573593>,  <26.407558, 33.087173, 22.759281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822897, 33.725422, 22.573593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524261, 33.987740, 22.618385>,  <26.345081, 34.145130, 22.645260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524261, 33.987740, 22.618385>,  <26.822897, 33.725422, 22.573593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524261, 33.987740, 22.618385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547570, 0.510119, 0.663284,
		0.377856, 0.556516, -0.739942,
		-0.746587, 0.655796, 0.111980,
		26.300285, 34.184479, 22.651979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200100, 34.444466, 22.513313>,  <26.822897, 33.725422, 22.573593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200100, 34.444466, 22.513313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846220, 34.484978, 22.695324>,  <26.633892, 34.509285, 22.804531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846220, 34.484978, 22.695324>,  <27.200100, 34.444466, 22.513313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846220, 34.484978, 22.695324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448685, 0.449766, 0.772264,
		-0.126442, 0.887386, -0.443350,
		-0.884700, 0.101278, 0.455026,
		26.580811, 34.515362, 22.831831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209476, 35.035538, 22.839788>,  <27.200100, 34.444466, 22.513313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209476, 35.035538, 22.839788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921568, 34.860794, 23.055599>,  <26.748823, 34.755947, 23.185085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921568, 34.860794, 23.055599>,  <27.209476, 35.035538, 22.839788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921568, 34.860794, 23.055599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294427, 0.511719, 0.807129,
		-0.628683, 0.739799, -0.239699,
		-0.719772, -0.436854, 0.539525,
		26.705637, 34.729736, 23.217457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005033, 35.540318, 23.224821>,  <27.209476, 35.035538, 22.839788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005033, 35.540318, 23.224821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882610, 35.200813, 23.397301>,  <26.809156, 34.997112, 23.500788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882610, 35.200813, 23.397301>,  <27.005033, 35.540318, 23.224821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882610, 35.200813, 23.397301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294975, 0.346099, 0.890621,
		-0.905162, 0.399773, 0.144438,
		-0.306057, -0.848762, 0.431199,
		26.790792, 34.946186, 23.526661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688005, 35.704689, 23.906824>,  <27.005033, 35.540318, 23.224821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688005, 35.704689, 23.906824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782309, 35.317780, 23.944336>,  <26.838890, 35.085632, 23.966843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782309, 35.317780, 23.944336>,  <26.688005, 35.704689, 23.906824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782309, 35.317780, 23.944336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238730, 0.151188, 0.959245,
		-0.942033, -0.203763, 0.266562,
		0.235760, -0.967276, 0.093780,
		26.853037, 35.027596, 23.972469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451248, 35.510460, 24.620703>,  <26.688005, 35.704689, 23.906824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451248, 35.510460, 24.620703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721403, 35.230141, 24.528847>,  <26.883497, 35.061951, 24.473734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721403, 35.230141, 24.528847>,  <26.451248, 35.510460, 24.620703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721403, 35.230141, 24.528847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440703, 0.133869, 0.887615,
		-0.591296, -0.700688, 0.399257,
		0.675389, -0.700796, -0.229640,
		26.924021, 35.019901, 24.459955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445086, 35.058475, 25.195303>,  <26.451248, 35.510460, 24.620703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445086, 35.058475, 25.195303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789698, 34.993851, 25.002777>,  <26.996464, 34.955074, 24.887260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789698, 34.993851, 25.002777>,  <26.445086, 35.058475, 25.195303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789698, 34.993851, 25.002777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468641, -0.111624, 0.876308,
		-0.195308, -0.980529, -0.020450,
		0.861528, -0.161566, -0.481317,
		27.048157, 34.945381, 24.858381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737638, 34.594406, 25.617891>,  <26.445086, 35.058475, 25.195303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737638, 34.594406, 25.617891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033712, 34.715595, 25.377781>,  <27.211357, 34.788311, 25.233715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033712, 34.715595, 25.377781>,  <26.737638, 34.594406, 25.617891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033712, 34.715595, 25.377781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656238, -0.130912, 0.743111,
		0.146563, -0.943963, -0.295725,
		0.740183, 0.302978, -0.600277,
		27.255768, 34.806488, 25.197697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267710, 34.155579, 25.817823>,  <26.737638, 34.594406, 25.617891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267710, 34.155579, 25.817823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459421, 34.453804, 25.632599>,  <27.574448, 34.632740, 25.521463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459421, 34.453804, 25.632599>,  <27.267710, 34.155579, 25.817823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459421, 34.453804, 25.632599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705409, -0.013314, 0.708676,
		0.522198, -0.666301, -0.532308,
		0.479278, 0.745564, -0.463062,
		27.603205, 34.677475, 25.493681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936670, 33.918720, 25.622299>,  <27.267710, 34.155579, 25.817823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936670, 33.918720, 25.622299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919804, 34.314171, 25.680042>,  <27.909683, 34.551441, 25.714687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919804, 34.314171, 25.680042>,  <27.936670, 33.918720, 25.622299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919804, 34.314171, 25.680042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622198, -0.087063, 0.778004,
		0.781724, 0.122625, -0.611450,
		-0.042168, 0.988627, 0.144356,
		27.907154, 34.610760, 25.723349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657778, 34.128941, 25.902376>,  <27.936670, 33.918720, 25.622299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657778, 34.128941, 25.902376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436562, 34.444004, 26.010998>,  <28.303831, 34.633041, 26.076170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436562, 34.444004, 26.010998>,  <28.657778, 34.128941, 25.902376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436562, 34.444004, 26.010998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298184, -0.117220, 0.947284,
		0.777966, 0.604861, -0.170039,
		-0.553043, 0.787657, 0.271553,
		28.270649, 34.680302, 26.092464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045502, 34.364849, 26.532330>,  <28.657778, 34.128941, 25.902376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045502, 34.364849, 26.532330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696346, 34.559052, 26.551704>,  <28.486853, 34.675575, 26.563330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696346, 34.559052, 26.551704>,  <29.045502, 34.364849, 26.532330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696346, 34.559052, 26.551704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106196, 0.092153, 0.990066,
		0.476223, 0.869361, -0.131998,
		-0.872888, 0.485510, 0.048437,
		28.434481, 34.704704, 26.566236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249792, 34.964397, 26.850256>,  <29.045502, 34.364849, 26.532330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249792, 34.964397, 26.850256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862343, 34.904133, 26.929321>,  <28.629873, 34.867973, 26.976761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862343, 34.904133, 26.929321>,  <29.249792, 34.964397, 26.850256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862343, 34.904133, 26.929321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196104, 0.025297, 0.980257,
		-0.152691, 0.988261, 0.005042,
		-0.968622, -0.150665, 0.197664,
		28.571756, 34.858932, 26.988621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088987, 35.427567, 27.421108>,  <29.249792, 34.964397, 26.850256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088987, 35.427567, 27.421108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802971, 35.147999, 27.415070>,  <28.631361, 34.980259, 27.411446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802971, 35.147999, 27.415070>,  <29.088987, 35.427567, 27.421108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802971, 35.147999, 27.415070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025482, -0.047641, 0.998539,
		-0.698617, 0.713613, 0.051875,
		-0.715042, -0.698918, -0.015098,
		28.588459, 34.938324, 27.410540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886930, 36.119820, 27.445810>,  <29.088987, 35.427567, 27.421108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886930, 36.119820, 27.445810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209101, 36.354610, 27.478649>,  <29.402403, 36.495487, 27.498352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209101, 36.354610, 27.478649>,  <28.886930, 36.119820, 27.445810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209101, 36.354610, 27.478649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303791, -0.289914, -0.907558,
		-0.508918, 0.755912, -0.411825,
		0.805428, 0.586981, 0.082097,
		29.450729, 36.530704, 27.503279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953800, 36.511810, 26.820148>,  <28.886930, 36.119820, 27.445810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953800, 36.511810, 26.820148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318371, 36.521912, 26.984425>,  <29.537113, 36.527973, 27.082991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318371, 36.521912, 26.984425>,  <28.953800, 36.511810, 26.820148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318371, 36.521912, 26.984425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410938, -0.106475, -0.905424,
		0.020860, 0.993995, -0.107423,
		0.911425, 0.025257, 0.410691,
		29.591799, 36.529488, 27.107632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477581, 37.044704, 26.490219>,  <28.953800, 36.511810, 26.820148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477581, 37.044704, 26.490219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749317, 36.804722, 26.659237>,  <29.912359, 36.660732, 26.760647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749317, 36.804722, 26.659237>,  <29.477581, 37.044704, 26.490219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749317, 36.804722, 26.659237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366471, -0.221490, -0.903682,
		0.635762, 0.768758, 0.069401,
		0.679342, -0.599960, 0.422543,
		29.953119, 36.624733, 26.785999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025343, 37.166740, 26.090410>,  <29.477581, 37.044704, 26.490219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025343, 37.166740, 26.090410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117949, 36.842644, 26.305782>,  <30.173512, 36.648186, 26.435005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117949, 36.842644, 26.305782>,  <30.025343, 37.166740, 26.090410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117949, 36.842644, 26.305782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622437, -0.301984, -0.722065,
		0.747646, 0.502306, 0.434412,
		0.231513, -0.810243, 0.538431,
		30.187403, 36.599571, 26.467312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751530, 37.089573, 26.048914>,  <30.025343, 37.166740, 26.090410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751530, 37.089573, 26.048914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604225, 36.726261, 26.128319>,  <30.515842, 36.508274, 26.175961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604225, 36.726261, 26.128319>,  <30.751530, 37.089573, 26.048914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604225, 36.726261, 26.128319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438759, -0.358028, -0.824201,
		0.819679, -0.216424, 0.530365,
		-0.368263, -0.908282, 0.198510,
		30.493746, 36.453777, 26.187872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356674, 36.623322, 26.110165>,  <30.751530, 37.089573, 26.048914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356674, 36.623322, 26.110165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038040, 36.395012, 26.030495>,  <30.846861, 36.258026, 25.982693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038040, 36.395012, 26.030495>,  <31.356674, 36.623322, 26.110165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038040, 36.395012, 26.030495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491791, -0.420241, -0.762587,
		0.351564, -0.705417, 0.615459,
		-0.796583, -0.570776, -0.199176,
		30.799065, 36.223778, 25.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636320, 35.992355, 25.975256>,  <31.356674, 36.623322, 26.110165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636320, 35.992355, 25.975256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277473, 35.992413, 25.798538>,  <31.062166, 35.992447, 25.692507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277473, 35.992413, 25.798538>,  <31.636320, 35.992355, 25.975256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277473, 35.992413, 25.798538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398289, -0.432466, -0.808912,
		-0.191177, -0.901650, 0.387915,
		-0.897116, 0.000143, -0.441795,
		31.008339, 35.992455, 25.666000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662231, 35.324596, 25.856674>,  <31.636320, 35.992355, 25.975256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662231, 35.324596, 25.856674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411285, 35.526588, 25.619556>,  <31.260717, 35.647785, 25.477285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411285, 35.526588, 25.619556>,  <31.662231, 35.324596, 25.856674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411285, 35.526588, 25.619556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381057, -0.464795, -0.799225,
		-0.679123, -0.727295, 0.099170,
		-0.627366, 0.504983, -0.592794,
		31.223076, 35.678082, 25.441719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562626, 34.946651, 25.207951>,  <31.662231, 35.324596, 25.856674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562626, 34.946651, 25.207951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408699, 35.285824, 25.062115>,  <31.316343, 35.489326, 24.974613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408699, 35.285824, 25.062115>,  <31.562626, 34.946651, 25.207951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408699, 35.285824, 25.062115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444140, -0.176155, -0.878470,
		-0.809109, -0.499977, -0.308814,
		-0.384815, 0.847934, -0.364589,
		31.293255, 35.540203, 24.952738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168898, 34.799297, 24.532696>,  <31.562626, 34.946651, 25.207951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168898, 34.799297, 24.532696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280193, 35.182987, 24.552578>,  <31.346970, 35.413200, 24.564507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280193, 35.182987, 24.552578>,  <31.168898, 34.799297, 24.532696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280193, 35.182987, 24.552578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477162, -0.093126, -0.873867,
		-0.833607, 0.266860, -0.483617,
		0.278238, 0.959225, 0.049705,
		31.363665, 35.470757, 24.567490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078533, 34.958748, 23.858282>,  <31.168898, 34.799297, 24.532696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078533, 34.958748, 23.858282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312302, 35.249187, 24.003185>,  <31.452562, 35.423450, 24.090128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312302, 35.249187, 24.003185>,  <31.078533, 34.958748, 23.858282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312302, 35.249187, 24.003185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553271, -0.029990, -0.832461,
		-0.593586, 0.686935, -0.419257,
		0.584420, 0.726100, 0.362260,
		31.487627, 35.467018, 24.111862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184374, 35.445568, 23.257595>,  <31.078533, 34.958748, 23.858282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184374, 35.445568, 23.257595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480587, 35.475994, 23.524677>,  <31.658314, 35.494251, 23.684927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480587, 35.475994, 23.524677>,  <31.184374, 35.445568, 23.257595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480587, 35.475994, 23.524677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666811, 0.040328, -0.744135,
		-0.083530, 0.996287, -0.020857,
		0.740531, 0.076065, 0.667703,
		31.702745, 35.498814, 23.724989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.649008, 37.287453, 30.558657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.026384, 37.280338, 30.691082>,  <28.252810, 37.276070, 30.770536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.026384, 37.280338, 30.691082>,  <27.649008, 37.287453, 30.558657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026384, 37.280338, 30.691082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324464, 0.254710, -0.910959,
		-0.068126, 0.966854, 0.246074,
		0.943442, -0.017782, 0.331061,
		28.309418, 37.275005, 30.790400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030481, 37.923321, 30.162678>,  <27.649008, 37.287453, 30.558657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030481, 37.923321, 30.162678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.320168, 37.695168, 30.317688>,  <28.493979, 37.558277, 30.410694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.320168, 37.695168, 30.317688>,  <28.030481, 37.923321, 30.162678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320168, 37.695168, 30.317688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570916, 0.180783, -0.800857,
		0.386738, 0.801237, 0.456567,
		0.724216, -0.570383, 0.387524,
		28.537432, 37.524052, 30.433945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661957, 38.363762, 30.127607>,  <28.030481, 37.923321, 30.162678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661957, 38.363762, 30.127607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.733946, 37.970589, 30.112370>,  <28.777140, 37.734684, 30.103228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.733946, 37.970589, 30.112370>,  <28.661957, 38.363762, 30.127607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733946, 37.970589, 30.112370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723750, 0.158546, -0.671601,
		0.666179, 0.093302, 0.739933,
		0.179975, -0.982933, -0.038093,
		28.787939, 37.675709, 30.100941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453079, 38.325691, 30.053158>,  <28.661957, 38.363762, 30.127607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453079, 38.325691, 30.053158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.298908, 37.970592, 29.952473>,  <29.206406, 37.757534, 29.892061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.298908, 37.970592, 29.952473>,  <29.453079, 38.325691, 30.053158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298908, 37.970592, 29.952473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530488, 0.010020, -0.847634,
		0.755003, -0.460231, 0.467075,
		-0.385427, -0.887743, -0.251712,
		29.183281, 37.704269, 29.876959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840437, 38.074078, 29.581337>,  <29.453079, 38.325691, 30.053158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840437, 38.074078, 29.581337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.593332, 37.765499, 29.520351>,  <29.445068, 37.580353, 29.483761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.593332, 37.765499, 29.520351>,  <29.840437, 38.074078, 29.581337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593332, 37.765499, 29.520351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466380, -0.203330, -0.860899,
		0.633134, -0.602938, 0.485395,
		-0.617764, -0.771443, -0.152463,
		29.408003, 37.534065, 29.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167910, 37.358223, 29.446650>,  <29.840437, 38.074078, 29.581337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167910, 37.358223, 29.446650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.806526, 37.346386, 29.275589>,  <29.589697, 37.339283, 29.172953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.806526, 37.346386, 29.275589>,  <30.167910, 37.358223, 29.446650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806526, 37.346386, 29.275589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389815, -0.471760, -0.790877,
		-0.178346, -0.881230, 0.437751,
		-0.903458, -0.029592, -0.427653,
		29.535488, 37.337509, 29.147293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986641, 36.681911, 29.208469>,  <30.167910, 37.358223, 29.446650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986641, 36.681911, 29.208469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.737986, 36.884502, 28.969456>,  <29.588793, 37.006058, 28.826048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.737986, 36.884502, 28.969456>,  <29.986641, 36.681911, 29.208469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737986, 36.884502, 28.969456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238896, -0.603906, -0.760411,
		-0.745986, -0.615449, 0.254416,
		-0.621638, 0.506477, -0.597534,
		29.551495, 37.036446, 28.790195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634941, 36.178631, 28.818649>,  <29.986641, 36.681911, 29.208469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634941, 36.178631, 28.818649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.570091, 36.519012, 28.618813>,  <29.531181, 36.723240, 28.498911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.570091, 36.519012, 28.618813>,  <29.634941, 36.178631, 28.818649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570091, 36.519012, 28.618813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187945, -0.470394, -0.862210,
		-0.968707, -0.233680, -0.083671,
		-0.162123, 0.850954, -0.499593,
		29.521454, 36.774300, 28.468935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275934, 35.955658, 28.197748>,  <29.634941, 36.178631, 28.818649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275934, 35.955658, 28.197748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.403618, 36.320747, 28.095730>,  <29.480228, 36.539799, 28.034519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.403618, 36.320747, 28.095730>,  <29.275934, 35.955658, 28.197748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403618, 36.320747, 28.095730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054740, -0.286435, -0.956535,
		-0.946102, 0.291373, -0.141395,
		0.319209, 0.912719, -0.255048,
		29.499380, 36.594563, 28.019215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659529, 35.551239, 28.088707>,  <29.275934, 35.955658, 28.197748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659529, 35.551239, 28.088707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569050, 35.185585, 27.954128>,  <28.514763, 34.966194, 27.873381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569050, 35.185585, 27.954128>,  <28.659529, 35.551239, 28.088707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569050, 35.185585, 27.954128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158726, -0.306190, 0.938644,
		-0.961062, 0.265723, -0.075837,
		-0.226199, -0.914133, -0.336445,
		28.501190, 34.911346, 27.853195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037111, 35.289215, 28.356148>,  <28.659529, 35.551239, 28.088707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037111, 35.289215, 28.356148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.237947, 34.954174, 28.270046>,  <28.358450, 34.753151, 28.218386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.237947, 34.954174, 28.270046>,  <28.037111, 35.289215, 28.356148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237947, 34.954174, 28.270046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105836, -0.306541, 0.945955,
		-0.858314, -0.452174, -0.242559,
		0.502091, -0.837599, -0.215252,
		28.388575, 34.702896, 28.205471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734247, 34.820862, 28.742575>,  <28.037111, 35.289215, 28.356148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734247, 34.820862, 28.742575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.069830, 34.625343, 28.646885>,  <28.271179, 34.508030, 28.589472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.069830, 34.625343, 28.646885>,  <27.734247, 34.820862, 28.742575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069830, 34.625343, 28.646885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040872, -0.494942, 0.867964,
		-0.542663, -0.718406, -0.435213,
		0.838956, -0.488800, -0.239224,
		28.321516, 34.478703, 28.575117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628408, 34.114300, 28.862078>,  <27.734247, 34.820862, 28.742575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628408, 34.114300, 28.862078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.023697, 34.174370, 28.873829>,  <28.260870, 34.210411, 28.880880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.023697, 34.174370, 28.873829>,  <27.628408, 34.114300, 28.862078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023697, 34.174370, 28.873829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039427, -0.435404, 0.899371,
		0.147851, -0.887622, -0.436197,
		0.988224, 0.150171, 0.029379,
		28.320164, 34.219421, 28.882643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882561, 33.398258, 29.132824>,  <27.628408, 34.114300, 28.862078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882561, 33.398258, 29.132824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.132315, 33.703369, 29.200134>,  <28.282167, 33.886436, 29.240520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.132315, 33.703369, 29.200134>,  <27.882561, 33.398258, 29.132824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132315, 33.703369, 29.200134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124214, -0.309647, 0.942703,
		0.771176, -0.567709, -0.288087,
		0.624386, 0.762774, 0.168274,
		28.319632, 33.932201, 29.250616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432749, 33.096348, 29.601711>,  <27.882561, 33.398258, 29.132824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432749, 33.096348, 29.601711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.478504, 33.492390, 29.634247>,  <28.505959, 33.730015, 29.653769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.478504, 33.492390, 29.634247>,  <28.432749, 33.096348, 29.601711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478504, 33.492390, 29.634247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105423, -0.069315, 0.992009,
		0.987826, -0.122051, 0.096451,
		0.114391, 0.990101, 0.081339,
		28.512821, 33.789421, 29.658648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904705, 33.179630, 30.207100>,  <28.432749, 33.096348, 29.601711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904705, 33.179630, 30.207100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.720690, 33.529533, 30.146229>,  <28.610281, 33.739475, 30.109705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.720690, 33.529533, 30.146229>,  <28.904705, 33.179630, 30.207100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720690, 33.529533, 30.146229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302513, 0.006719, 0.953121,
		0.834775, 0.484510, 0.261535,
		-0.460040, 0.874760, -0.152180,
		28.582678, 33.791962, 30.100574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025770, 33.563099, 30.839973>,  <28.904705, 33.179630, 30.207100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025770, 33.563099, 30.839973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.712664, 33.739273, 30.664112>,  <28.524799, 33.844978, 30.558596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.712664, 33.739273, 30.664112>,  <29.025770, 33.563099, 30.839973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712664, 33.739273, 30.664112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476615, 0.029974, 0.878601,
		0.400146, 0.897283, 0.186456,
		-0.782765, 0.440436, -0.439652,
		28.477835, 33.871403, 30.532217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805502, 34.141819, 31.365873>,  <29.025770, 33.563099, 30.839973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805502, 34.141819, 31.365873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.498018, 34.065063, 31.121819>,  <28.313528, 34.019009, 30.975386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.498018, 34.065063, 31.121819>,  <28.805502, 34.141819, 31.365873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498018, 34.065063, 31.121819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630061, 0.063043, 0.773982,
		-0.110056, 0.979389, -0.169365,
		-0.768707, -0.191892, -0.610137,
		28.267406, 34.007496, 30.938778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367161, 34.637104, 31.585257>,  <28.805502, 34.141819, 31.365873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367161, 34.637104, 31.585257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.151163, 34.376194, 31.372486>,  <28.021564, 34.219646, 31.244823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.151163, 34.376194, 31.372486>,  <28.367161, 34.637104, 31.585257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151163, 34.376194, 31.372486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662072, -0.061029, 0.746952,
		-0.519681, 0.755521, -0.398898,
		-0.539994, -0.652276, -0.531925,
		27.989164, 34.180511, 31.212910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545080, 34.775650, 31.676281>,  <28.367161, 34.637104, 31.585257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545080, 34.775650, 31.676281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.630480, 34.394325, 31.590847>,  <27.681719, 34.165531, 31.539587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.630480, 34.394325, 31.590847>,  <27.545080, 34.775650, 31.676281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630480, 34.394325, 31.590847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471978, -0.292069, 0.831824,
		-0.855368, -0.076787, -0.512298,
		0.213500, -0.953309, -0.213585,
		27.694530, 34.108334, 31.526772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934242, 34.457882, 31.975969>,  <27.545080, 34.775650, 31.676281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934242, 34.457882, 31.975969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.195253, 34.161953, 31.910393>,  <27.351860, 33.984398, 31.871046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.195253, 34.161953, 31.910393>,  <26.934242, 34.457882, 31.975969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195253, 34.161953, 31.910393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228916, -0.398698, 0.888053,
		-0.722363, -0.541947, -0.429517,
		0.652525, -0.739820, -0.163944,
		27.391010, 33.940006, 31.861210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494240, 33.811573, 32.102936>,  <26.934242, 34.457882, 31.975969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494240, 33.811573, 32.102936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.888342, 33.751236, 32.135235>,  <27.124804, 33.715034, 32.154613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.888342, 33.751236, 32.135235>,  <26.494240, 33.811573, 32.102936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888342, 33.751236, 32.135235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155709, -0.594969, 0.788522,
		-0.070899, -0.789468, -0.609683,
		0.985255, -0.150838, 0.080745,
		27.183918, 33.705986, 32.159458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589506, 33.087566, 32.268044>,  <26.494240, 33.811573, 32.102936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589506, 33.087566, 32.268044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.921837, 33.266624, 32.400314>,  <27.121235, 33.374058, 32.479675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.921837, 33.266624, 32.400314>,  <26.589506, 33.087566, 32.268044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921837, 33.266624, 32.400314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011917, -0.579727, 0.814724,
		0.556406, -0.680834, -0.476317,
		0.830825, 0.447641, 0.330676,
		27.171085, 33.400917, 32.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.720444, 33.854668, 33.148155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411026, 34.092484, 33.235928>,  <32.225376, 34.235172, 33.288593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411026, 34.092484, 33.235928>,  <32.720444, 33.854668, 33.148155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411026, 34.092484, 33.235928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052933, 0.284428, -0.957235,
		-0.631528, -0.752079, -0.188547,
		-0.773544, 0.594540, 0.219434,
		32.178963, 34.270847, 33.301758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042301, 33.619217, 32.799263>,  <32.720444, 33.854668, 33.148155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042301, 33.619217, 32.799263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007774, 34.011578, 32.868977>,  <31.987059, 34.246994, 32.910805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007774, 34.011578, 32.868977>,  <32.042301, 33.619217, 32.799263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007774, 34.011578, 32.868977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080207, 0.167531, -0.982599,
		-0.993034, -0.098796, 0.064215,
		-0.086319, 0.980904, 0.174288,
		31.981878, 34.305847, 32.921265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464621, 33.812187, 32.475315>,  <32.042301, 33.619217, 32.799263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464621, 33.812187, 32.475315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659019, 34.154839, 32.544594>,  <31.775660, 34.360428, 32.586159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659019, 34.154839, 32.544594>,  <31.464621, 33.812187, 32.475315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659019, 34.154839, 32.544594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329682, 0.363228, -0.871422,
		-0.809392, 0.366410, 0.458942,
		0.485999, 0.856627, 0.173195,
		31.804819, 34.411827, 32.596554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065739, 34.272449, 32.117836>,  <31.464621, 33.812187, 32.475315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065739, 34.272449, 32.117836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.414341, 34.462513, 32.166344>,  <31.623503, 34.576550, 32.195446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.414341, 34.462513, 32.166344>,  <31.065739, 34.272449, 32.117836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414341, 34.462513, 32.166344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036605, 0.183561, -0.982326,
		-0.489021, 0.860540, 0.142581,
		0.871504, 0.475159, 0.121266,
		31.675793, 34.605061, 32.202724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014420, 34.986530, 31.716055>,  <31.065739, 34.272449, 32.117836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014420, 34.986530, 31.716055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.404911, 34.917812, 31.768917>,  <31.639206, 34.876583, 31.800634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.404911, 34.917812, 31.768917>,  <31.014420, 34.986530, 31.716055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404911, 34.917812, 31.768917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160132, 0.160758, -0.973917,
		0.146065, 0.971929, 0.184446,
		0.976229, -0.171791, 0.132155,
		31.697781, 34.866276, 31.808563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377382, 35.586491, 31.420866>,  <31.014420, 34.986530, 31.716055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377382, 35.586491, 31.420866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608950, 35.260651, 31.435204>,  <31.747890, 35.065147, 31.443806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608950, 35.260651, 31.435204>,  <31.377382, 35.586491, 31.420866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608950, 35.260651, 31.435204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286042, 0.161728, -0.944470,
		0.763566, 0.557024, 0.326636,
		0.578919, -0.814597, 0.035843,
		31.782625, 35.016270, 31.445957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861130, 35.676357, 30.760448>,  <31.377382, 35.586491, 31.420866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861130, 35.676357, 30.760448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962305, 35.307289, 30.876862>,  <32.023010, 35.085850, 30.946711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962305, 35.307289, 30.876862>,  <31.861130, 35.676357, 30.760448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962305, 35.307289, 30.876862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054535, -0.286741, -0.956455,
		0.965944, 0.257796, -0.022210,
		0.252939, -0.922670, 0.291035,
		32.038185, 35.030487, 30.964172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588432, 35.415497, 30.462128>,  <31.861130, 35.676357, 30.760448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588432, 35.415497, 30.462128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375164, 35.086571, 30.541649>,  <32.247204, 34.889214, 30.589361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375164, 35.086571, 30.541649>,  <32.588432, 35.415497, 30.462128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375164, 35.086571, 30.541649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049157, -0.264704, -0.963076,
		0.844576, -0.503715, 0.181556,
		-0.533174, -0.822316, 0.198801,
		32.215210, 34.839874, 30.601290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898022, 34.852608, 30.093151>,  <32.588432, 35.415497, 30.462128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898022, 34.852608, 30.093151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537933, 34.694199, 30.165550>,  <32.321880, 34.599152, 30.208990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537933, 34.694199, 30.165550>,  <32.898022, 34.852608, 30.093151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537933, 34.694199, 30.165550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040920, -0.490787, -0.870318,
		0.433497, -0.776076, 0.458024,
		-0.900226, -0.396023, 0.180998,
		32.267864, 34.575394, 30.219849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981483, 34.106045, 29.965097>,  <32.898022, 34.852608, 30.093151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981483, 34.106045, 29.965097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.590214, 34.185730, 29.941490>,  <32.355450, 34.233543, 29.927326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.590214, 34.185730, 29.941490>,  <32.981483, 34.106045, 29.965097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590214, 34.185730, 29.941490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063651, -0.557708, -0.827593,
		-0.197785, -0.805776, 0.558218,
		-0.978177, 0.199217, -0.059018,
		32.296761, 34.245495, 29.923784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764999, 33.563725, 29.681398>,  <32.981483, 34.106045, 29.965097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764999, 33.563725, 29.681398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467735, 33.824955, 29.623150>,  <32.289379, 33.981693, 29.588200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467735, 33.824955, 29.623150>,  <32.764999, 33.563725, 29.681398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467735, 33.824955, 29.623150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132877, -0.357343, -0.924472,
		-0.655792, -0.667677, 0.352341,
		-0.743156, 0.653080, -0.145624,
		32.244789, 34.020878, 29.579462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234066, 33.185776, 29.379650>,  <32.764999, 33.563725, 29.681398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234066, 33.185776, 29.379650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187202, 33.563671, 29.257175>,  <32.159084, 33.790409, 29.183691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187202, 33.563671, 29.257175>,  <32.234066, 33.185776, 29.379650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187202, 33.563671, 29.257175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159084, -0.322181, -0.933216,
		-0.980289, -0.060621, 0.188037,
		-0.117154, 0.944735, -0.306187,
		32.152058, 33.847092, 29.165319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771362, 33.069042, 28.938797>,  <32.234066, 33.185776, 29.379650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771362, 33.069042, 28.938797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.914133, 33.431290, 28.847176>,  <31.999796, 33.648636, 28.792204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.914133, 33.431290, 28.847176>,  <31.771362, 33.069042, 28.938797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914133, 33.431290, 28.847176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186259, -0.309274, -0.932554,
		-0.915375, 0.290191, -0.279067,
		0.356927, 0.905615, -0.229051,
		32.021210, 33.702972, 28.778460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443518, 33.257996, 28.234741>,  <31.771362, 33.069042, 28.938797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443518, 33.257996, 28.234741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783525, 33.455761, 28.307426>,  <31.987530, 33.574421, 28.351038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783525, 33.455761, 28.307426>,  <31.443518, 33.257996, 28.234741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783525, 33.455761, 28.307426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347761, -0.267635, -0.898573,
		-0.395634, 0.826998, -0.399433,
		0.850021, 0.494414, 0.181712,
		32.038532, 33.604084, 28.361940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910051, 32.859665, 27.966774>,  <31.443518, 33.257996, 28.234741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910051, 32.859665, 27.966774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989496, 32.481892, 27.862003>,  <31.037163, 32.255230, 27.799141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989496, 32.481892, 27.862003>,  <30.910051, 32.859665, 27.966774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989496, 32.481892, 27.862003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087706, -0.283305, 0.955011,
		-0.976146, -0.166702, -0.139099,
		0.198610, -0.944430, -0.261927,
		31.049080, 32.198563, 27.783426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304384, 32.380569, 28.276239>,  <30.910051, 32.859665, 27.966774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304384, 32.380569, 28.276239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.635828, 32.167355, 28.207790>,  <30.834694, 32.039425, 28.166721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.635828, 32.167355, 28.207790>,  <30.304384, 32.380569, 28.276239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635828, 32.167355, 28.207790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045496, -0.240538, 0.969573,
		-0.557978, -0.811181, -0.175060,
		0.828608, -0.533036, -0.171121,
		30.884411, 32.007442, 28.156454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191380, 31.777500, 28.644121>,  <30.304384, 32.380569, 28.276239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191380, 31.777500, 28.644121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586226, 31.797615, 28.583359>,  <30.823133, 31.809685, 28.546902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586226, 31.797615, 28.583359>,  <30.191380, 31.777500, 28.644121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586226, 31.797615, 28.583359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158499, -0.177032, 0.971359,
		0.021958, -0.982919, -0.182722,
		0.987115, 0.050290, -0.151905,
		30.882360, 31.812702, 28.537786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412659, 31.188766, 28.897491>,  <30.191380, 31.777500, 28.644121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412659, 31.188766, 28.897491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.716484, 31.448395, 28.880665>,  <30.898779, 31.604172, 28.870569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.716484, 31.448395, 28.880665>,  <30.412659, 31.188766, 28.897491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716484, 31.448395, 28.880665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258493, -0.241879, 0.935241,
		0.596864, -0.721248, -0.351503,
		0.759562, 0.649073, -0.042069,
		30.944353, 31.643116, 28.868044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832258, 30.749514, 29.084770>,  <30.412659, 31.188766, 28.897491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832258, 30.749514, 29.084770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006142, 31.105156, 29.142067>,  <31.110472, 31.318541, 29.176445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006142, 31.105156, 29.142067>,  <30.832258, 30.749514, 29.084770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006142, 31.105156, 29.142067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297239, -0.291796, 0.909123,
		0.850104, -0.352628, -0.391124,
		0.434710, 0.889105, 0.143242,
		31.136555, 31.371887, 29.185040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427687, 30.592571, 29.451960>,  <30.832258, 30.749514, 29.084770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427687, 30.592571, 29.451960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.379311, 30.982044, 29.529228>,  <31.350285, 31.215729, 29.575590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.379311, 30.982044, 29.529228>,  <31.427687, 30.592571, 29.451960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379311, 30.982044, 29.529228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258229, -0.157040, 0.953234,
		0.958484, 0.165166, -0.232441,
		-0.120939, 0.973683, 0.193171,
		31.343029, 31.274149, 29.587179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095753, 30.917376, 29.849648>,  <31.427687, 30.592571, 29.451960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095753, 30.917376, 29.849648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782381, 31.150669, 29.935509>,  <31.594358, 31.290646, 29.987026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782381, 31.150669, 29.935509>,  <32.095753, 30.917376, 29.849648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782381, 31.150669, 29.935509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240404, -0.034106, 0.970073,
		0.573103, 0.811586, -0.113493,
		-0.783428, 0.583236, 0.214655,
		31.547352, 31.325640, 29.999905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325325, 31.487692, 30.382368>,  <32.095753, 30.917376, 29.849648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325325, 31.487692, 30.382368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927660, 31.454079, 30.409443>,  <31.689062, 31.433910, 30.425688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927660, 31.454079, 30.409443>,  <32.325325, 31.487692, 30.382368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927660, 31.454079, 30.409443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057231, 0.121147, 0.990984,
		-0.091473, 0.989072, -0.115630,
		-0.994162, -0.084031, 0.067687,
		31.629412, 31.428869, 30.429749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204716, 32.011082, 30.816032>,  <32.325325, 31.487692, 30.382368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204716, 32.011082, 30.816032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856813, 31.813732, 30.820202>,  <31.648071, 31.695322, 30.822704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856813, 31.813732, 30.820202>,  <32.204716, 32.011082, 30.816032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856813, 31.813732, 30.820202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080052, 0.161901, 0.983555,
		-0.486947, 0.854618, -0.180310,
		-0.869755, -0.493373, 0.010424,
		31.595886, 31.665720, 30.823330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732328, 32.336609, 31.328030>,  <32.204716, 32.011082, 30.816032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732328, 32.336609, 31.328030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562122, 31.975826, 31.298611>,  <31.459999, 31.759356, 31.280960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562122, 31.975826, 31.298611>,  <31.732328, 32.336609, 31.328030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562122, 31.975826, 31.298611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321241, 0.074572, 0.944057,
		-0.846015, 0.425336, -0.321477,
		-0.425514, -0.901958, -0.073547,
		31.434467, 31.705238, 31.276546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186440, 32.411411, 31.727076>,  <31.732328, 32.336609, 31.328030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186440, 32.411411, 31.727076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224716, 32.014053, 31.701775>,  <31.247683, 31.775637, 31.686594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224716, 32.014053, 31.701775>,  <31.186440, 32.411411, 31.727076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224716, 32.014053, 31.701775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285097, -0.088234, 0.954429,
		-0.953710, -0.073296, -0.291659,
		0.095690, -0.993399, -0.063253,
		31.253424, 31.716034, 31.682798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514566, 32.094326, 31.824678>,  <31.186440, 32.411411, 31.727076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514566, 32.094326, 31.824678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786804, 31.830044, 31.951336>,  <30.950148, 31.671474, 32.027332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786804, 31.830044, 31.951336>,  <30.514566, 32.094326, 31.824678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786804, 31.830044, 31.951336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221413, 0.226502, 0.948511,
		-0.698404, -0.715660, 0.007867,
		0.680594, -0.660703, 0.316646,
		30.990982, 31.631834, 32.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221912, 31.875570, 32.428387>,  <30.514566, 32.094326, 31.824678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221912, 31.875570, 32.428387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590145, 31.726067, 32.473694>,  <30.811085, 31.636364, 32.500877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590145, 31.726067, 32.473694>,  <30.221912, 31.875570, 32.428387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590145, 31.726067, 32.473694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092120, 0.074043, 0.992991,
		-0.379525, -0.924566, 0.033732,
		0.920584, -0.373758, 0.113272,
		30.866320, 31.613939, 32.507675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139845, 31.474472, 32.980606>,  <30.221912, 31.875570, 32.428387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139845, 31.474472, 32.980606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528759, 31.565266, 32.958191>,  <30.762108, 31.619741, 32.944740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528759, 31.565266, 32.958191>,  <30.139845, 31.474472, 32.980606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528759, 31.565266, 32.958191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048668, 0.037937, 0.998094,
		0.228681, -0.973159, 0.025839,
		0.972284, 0.226987, -0.056037,
		30.820444, 31.633362, 32.941380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802786, 30.762386, 32.685234>,  <30.139845, 31.474472, 32.980606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802786, 30.762386, 32.685234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.418436, 30.686626, 32.766079>,  <29.187826, 30.641171, 32.814587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.418436, 30.686626, 32.766079>,  <29.802786, 30.762386, 32.685234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418436, 30.686626, 32.766079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190431, -0.078148, -0.978585,
		0.201138, -0.978785, 0.039023,
		-0.960874, -0.189400, 0.202110,
		29.130175, 30.629807, 32.826714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699099, 30.097553, 32.392929>,  <29.802786, 30.762386, 32.685234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699099, 30.097553, 32.392929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.339952, 30.270287, 32.427227>,  <29.124464, 30.373926, 32.447807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.339952, 30.270287, 32.427227>,  <29.699099, 30.097553, 32.392929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339952, 30.270287, 32.427227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126484, -0.066454, -0.989740,
		-0.421706, -0.899501, 0.114287,
		-0.897867, 0.431835, 0.085748,
		29.070593, 30.399837, 32.452953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279425, 29.688414, 31.917171>,  <29.699099, 30.097553, 32.392929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279425, 29.688414, 31.917171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.087980, 30.031677, 31.991463>,  <28.973114, 30.237635, 32.036037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.087980, 30.031677, 31.991463>,  <29.279425, 29.688414, 31.917171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087980, 30.031677, 31.991463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260135, 0.063441, -0.963486,
		-0.838607, -0.509449, 0.192874,
		-0.478611, 0.858159, 0.185728,
		28.944397, 30.289125, 32.047180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578991, 29.650112, 31.620430>,  <29.279425, 29.688414, 31.917171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578991, 29.650112, 31.620430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.690048, 30.032467, 31.658787>,  <28.756683, 30.261879, 31.681801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.690048, 30.032467, 31.658787>,  <28.578991, 29.650112, 31.620430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690048, 30.032467, 31.658787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312667, 0.184293, -0.931813,
		-0.908379, 0.228730, 0.350042,
		0.277644, 0.955886, 0.095892,
		28.773342, 30.319233, 31.687555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971912, 29.933842, 31.335501>,  <28.578991, 29.650112, 31.620430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971912, 29.933842, 31.335501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.260059, 30.211205, 31.341858>,  <28.432947, 30.377623, 31.345673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.260059, 30.211205, 31.341858>,  <27.971912, 29.933842, 31.335501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260059, 30.211205, 31.341858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240982, 0.271704, -0.931721,
		-0.650382, 0.667354, 0.362826,
		0.720369, 0.693409, 0.015891,
		28.476170, 30.419228, 31.346624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612122, 30.461763, 30.950953>,  <27.971912, 29.933842, 31.335501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612122, 30.461763, 30.950953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.988897, 30.594276, 30.972870>,  <28.214962, 30.673784, 30.986021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.988897, 30.594276, 30.972870>,  <27.612122, 30.461763, 30.950953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988897, 30.594276, 30.972870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075677, 0.368434, -0.926569,
		-0.327143, 0.868625, 0.372113,
		0.941940, 0.331281, 0.054795,
		28.271479, 30.693661, 30.989309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635735, 31.186045, 30.724758>,  <27.612122, 30.461763, 30.950953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635735, 31.186045, 30.724758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.972862, 30.991467, 30.632648>,  <28.175138, 30.874720, 30.577383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.972862, 30.991467, 30.632648>,  <27.635735, 31.186045, 30.724758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972862, 30.991467, 30.632648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091536, 0.292068, -0.952007,
		0.530357, 0.823447, 0.201633,
		0.842818, -0.486447, -0.230276,
		28.225708, 30.845531, 30.563566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948492, 31.620810, 30.294073>,  <27.635735, 31.186045, 30.724758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948492, 31.620810, 30.294073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.095669, 31.255062, 30.226490>,  <28.183975, 31.035614, 30.185940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.095669, 31.255062, 30.226490>,  <27.948492, 31.620810, 30.294073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095669, 31.255062, 30.226490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054142, 0.160331, -0.985577,
		0.928271, 0.371782, 0.009487,
		0.367941, -0.914370, -0.168960,
		28.206051, 30.980751, 30.175802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511925, 31.605198, 29.792206>,  <27.948492, 31.620810, 30.294073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511925, 31.605198, 29.792206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.349928, 31.239574, 29.800991>,  <28.252729, 31.020201, 29.806261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.349928, 31.239574, 29.800991>,  <28.511925, 31.605198, 29.792206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349928, 31.239574, 29.800991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153186, 0.044153, -0.987210,
		0.901396, -0.403177, -0.157902,
		-0.404992, -0.914056, 0.021962,
		28.228430, 30.965357, 29.807579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758610, 31.444506, 29.134562>,  <28.511925, 31.605198, 29.792206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758610, 31.444506, 29.134562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.528053, 31.125942, 29.207775>,  <28.389719, 30.934803, 29.251703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.528053, 31.125942, 29.207775>,  <28.758610, 31.444506, 29.134562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528053, 31.125942, 29.207775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015828, -0.213062, -0.976910,
		0.817019, -0.565981, 0.110202,
		-0.576393, -0.796410, 0.183034,
		28.355135, 30.887018, 29.262686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018337, 30.993834, 28.663357>,  <28.758610, 31.444506, 29.134562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018337, 30.993834, 28.663357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.642729, 30.907963, 28.770805>,  <28.417364, 30.856441, 28.835274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.642729, 30.907963, 28.770805>,  <29.018337, 30.993834, 28.663357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642729, 30.907963, 28.770805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220727, -0.222693, -0.949572,
		0.263670, -0.950959, 0.161728,
		-0.939019, -0.214676, 0.268620,
		28.361023, 30.843559, 28.851391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787285, 30.342442, 28.410126>,  <29.018337, 30.993834, 28.663357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787285, 30.342442, 28.410126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.455923, 30.561371, 28.457771>,  <28.257107, 30.692728, 28.486359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.455923, 30.561371, 28.457771>,  <28.787285, 30.342442, 28.410126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455923, 30.561371, 28.457771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243263, -0.159988, -0.956675,
		-0.504552, -0.821488, 0.265677,
		-0.828403, 0.547322, 0.119115,
		28.207403, 30.725567, 28.493505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438969, 30.086443, 27.894205>,  <28.787285, 30.342442, 28.410126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438969, 30.086443, 27.894205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.190933, 30.377251, 28.012142>,  <28.042112, 30.551735, 28.082905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.190933, 30.377251, 28.012142>,  <28.438969, 30.086443, 27.894205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190933, 30.377251, 28.012142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440839, -0.012020, -0.897506,
		-0.648961, -0.686511, 0.327952,
		-0.620089, 0.727020, 0.294840,
		28.004906, 30.595356, 28.100594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720276, 29.857229, 27.641495>,  <28.438969, 30.086443, 27.894205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720276, 29.857229, 27.641495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.760696, 30.253838, 27.674175>,  <27.784948, 30.491802, 27.693783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.760696, 30.253838, 27.674175>,  <27.720276, 29.857229, 27.641495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760696, 30.253838, 27.674175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274574, 0.106726, -0.955625,
		-0.956242, 0.074133, 0.283031,
		0.101050, 0.991521, 0.081701,
		27.791012, 30.551294, 27.698685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.430710, 33.207874, 14.763472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.826485, 33.265675, 14.768006>,  <39.063950, 33.300354, 14.770727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.826485, 33.265675, 14.768006>,  <38.430710, 33.207874, 14.763472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826485, 33.265675, 14.768006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066871, -0.524463, 0.848804,
		0.128601, -0.839082, -0.528587,
		0.989440, 0.144504, 0.011336,
		39.123318, 33.309025, 14.771407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943924, 32.621979, 15.068990>,  <38.430710, 33.207874, 14.763472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943924, 32.621979, 15.068990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122322, 32.976852, 15.116286>,  <39.229362, 33.189777, 15.144664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122322, 32.976852, 15.116286>,  <38.943924, 32.621979, 15.068990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122322, 32.976852, 15.116286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150368, -0.204503, 0.967248,
		0.882311, -0.413613, -0.224613,
		0.446000, 0.887188, 0.118241,
		39.256123, 33.243008, 15.151758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497906, 32.434212, 15.515679>,  <38.943924, 32.621979, 15.068990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497906, 32.434212, 15.515679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471615, 32.832439, 15.542579>,  <39.455841, 33.071377, 15.558718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471615, 32.832439, 15.542579>,  <39.497906, 32.434212, 15.515679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471615, 32.832439, 15.542579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214691, -0.051706, 0.975312,
		0.974468, 0.078543, -0.210341,
		-0.065728, 0.995569, 0.067248,
		39.451897, 33.131111, 15.562753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161583, 32.676785, 15.735478>,  <39.497906, 32.434212, 15.515679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161583, 32.676785, 15.735478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880264, 32.939995, 15.843091>,  <39.711472, 33.097919, 15.907659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880264, 32.939995, 15.843091>,  <40.161583, 32.676785, 15.735478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880264, 32.939995, 15.843091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438676, 0.103913, 0.892617,
		0.559409, 0.745791, -0.361742,
		-0.703296, 0.658026, 0.269031,
		39.669277, 33.137402, 15.923800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475502, 33.022636, 16.306564>,  <40.161583, 32.676785, 15.735478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475502, 33.022636, 16.306564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094898, 33.142605, 16.333908>,  <39.866535, 33.214588, 16.350313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094898, 33.142605, 16.333908>,  <40.475502, 33.022636, 16.306564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094898, 33.142605, 16.333908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124661, 0.172804, 0.977036,
		0.281224, 0.938181, -0.201814,
		-0.951511, 0.299924, 0.068357,
		39.809444, 33.232582, 16.354416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505280, 33.646069, 16.559370>,  <40.475502, 33.022636, 16.306564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505280, 33.646069, 16.559370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135925, 33.514442, 16.638451>,  <39.914314, 33.435467, 16.685900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135925, 33.514442, 16.638451>,  <40.505280, 33.646069, 16.559370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135925, 33.514442, 16.638451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106994, 0.273988, 0.955763,
		-0.368673, 0.903686, -0.217788,
		-0.923381, -0.329062, 0.197701,
		39.858910, 33.415726, 16.697762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205971, 34.157028, 17.015533>,  <40.505280, 33.646069, 16.559370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205971, 34.157028, 17.015533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985790, 33.827656, 17.070625>,  <39.853680, 33.630032, 17.103682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985790, 33.827656, 17.070625>,  <40.205971, 34.157028, 17.015533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985790, 33.827656, 17.070625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088337, 0.106603, 0.990370,
		-0.830179, 0.557320, 0.014059,
		-0.550454, -0.823426, 0.137731,
		39.820656, 33.580627, 17.111944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834473, 34.341667, 17.595234>,  <40.205971, 34.157028, 17.015533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834473, 34.341667, 17.595234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779781, 33.949314, 17.539833>,  <39.746967, 33.713902, 17.506592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779781, 33.949314, 17.539833>,  <39.834473, 34.341667, 17.595234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779781, 33.949314, 17.539833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140324, -0.119229, 0.982901,
		-0.980620, 0.153823, -0.121340,
		-0.136725, -0.980879, -0.138503,
		39.738762, 33.655052, 17.498281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127316, 34.158443, 17.857729>,  <39.834473, 34.341667, 17.595234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127316, 34.158443, 17.857729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353817, 33.829449, 17.879177>,  <39.489719, 33.632053, 17.892046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353817, 33.829449, 17.879177>,  <39.127316, 34.158443, 17.857729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353817, 33.829449, 17.879177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093554, 0.000501, 0.995614,
		-0.818905, -0.568786, -0.076663,
		0.566253, -0.822485, 0.053622,
		39.523693, 33.582703, 17.895264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698013, 33.652641, 18.232594>,  <39.127316, 34.158443, 17.857729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698013, 33.652641, 18.232594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.086372, 33.565884, 18.273220>,  <39.319389, 33.513828, 18.297596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.086372, 33.565884, 18.273220>,  <38.698013, 33.652641, 18.232594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086372, 33.565884, 18.273220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113926, -0.045242, 0.992458,
		-0.210665, -0.975146, -0.068635,
		0.970897, -0.216896, 0.101564,
		39.377640, 33.500816, 18.303690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720596, 33.132183, 18.725607>,  <38.698013, 33.652641, 18.232594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720596, 33.132183, 18.725607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099026, 33.261757, 18.724907>,  <39.326084, 33.339500, 18.724487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099026, 33.261757, 18.724907>,  <38.720596, 33.132183, 18.725607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099026, 33.261757, 18.724907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025969, -0.070448, 0.997177,
		0.322900, -0.943452, -0.075062,
		0.946077, 0.323938, -0.001752,
		39.382851, 33.358940, 18.724380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096039, 32.711102, 19.175964>,  <38.720596, 33.132183, 18.725607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096039, 32.711102, 19.175964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336800, 33.029343, 19.148453>,  <39.481255, 33.220287, 19.131947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336800, 33.029343, 19.148453>,  <39.096039, 32.711102, 19.175964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336800, 33.029343, 19.148453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274368, -0.125144, 0.953447,
		0.749959, -0.592750, -0.293613,
		0.601899, 0.795604, -0.068778,
		39.517368, 33.268024, 19.127819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502380, 32.643372, 19.818119>,  <39.096039, 32.711102, 19.175964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502380, 32.643372, 19.818119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.571499, 33.008026, 19.668953>,  <39.612968, 33.226818, 19.579454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.571499, 33.008026, 19.668953>,  <39.502380, 32.643372, 19.818119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571499, 33.008026, 19.668953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262712, 0.322235, 0.909476,
		0.949276, -0.255119, -0.183817,
		0.172792, 0.911635, -0.372913,
		39.623337, 33.281517, 19.557079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173641, 32.928379, 20.089527>,  <39.502380, 32.643372, 19.818119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173641, 32.928379, 20.089527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996872, 33.270340, 19.980831>,  <39.890812, 33.475517, 19.915613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996872, 33.270340, 19.980831>,  <40.173641, 32.928379, 20.089527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996872, 33.270340, 19.980831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025296, 0.314680, 0.948861,
		0.896698, 0.412447, -0.160689,
		-0.441920, 0.854906, -0.271740,
		39.864296, 33.526814, 19.899309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423912, 33.336979, 20.542545>,  <40.173641, 32.928379, 20.089527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423912, 33.336979, 20.542545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115982, 33.556221, 20.411728>,  <39.931225, 33.687767, 20.333237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115982, 33.556221, 20.411728>,  <40.423912, 33.336979, 20.542545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115982, 33.556221, 20.411728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027972, 0.482936, 0.875208,
		0.637644, 0.682904, -0.356444,
		-0.769823, 0.548101, -0.327044,
		39.885036, 33.720650, 20.313614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610413, 34.004223, 20.732769>,  <40.423912, 33.336979, 20.542545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610413, 34.004223, 20.732769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.216423, 34.020069, 20.665535>,  <39.980030, 34.029579, 20.625195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.216423, 34.020069, 20.665535>,  <40.610413, 34.004223, 20.732769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216423, 34.020069, 20.665535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106978, 0.624096, 0.773990,
		0.135567, 0.780343, -0.610481,
		-0.984976, 0.039620, -0.168086,
		39.920929, 34.031956, 20.615108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389843, 34.714230, 20.988583>,  <40.610413, 34.004223, 20.732769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389843, 34.714230, 20.988583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.055454, 34.494720, 20.988670>,  <39.854820, 34.363014, 20.988724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.055454, 34.494720, 20.988670>,  <40.389843, 34.714230, 20.988583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055454, 34.494720, 20.988670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173915, 0.265311, 0.948348,
		-0.520485, 0.792754, -0.317232,
		-0.835972, -0.548773, 0.000219,
		39.804665, 34.330090, 20.988735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983498, 35.104130, 21.279343>,  <40.389843, 34.714230, 20.988583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983498, 35.104130, 21.279343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793732, 34.754612, 21.322086>,  <39.679871, 34.544903, 21.347733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793732, 34.754612, 21.322086>,  <39.983498, 35.104130, 21.279343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793732, 34.754612, 21.322086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286365, 0.267976, 0.919882,
		-0.832422, 0.405803, -0.377355,
		-0.474414, -0.873792, 0.106861,
		39.651409, 34.492474, 21.354145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302650, 35.266991, 21.604841>,  <39.983498, 35.104130, 21.279343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302650, 35.266991, 21.604841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399467, 34.884537, 21.670845>,  <39.457558, 34.655064, 21.710447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399467, 34.884537, 21.670845>,  <39.302650, 35.266991, 21.604841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399467, 34.884537, 21.670845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051062, 0.157277, 0.986234,
		-0.968921, -0.247135, -0.010755,
		0.242041, -0.956132, 0.165008,
		39.472080, 34.597698, 21.720348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733814, 34.939503, 22.111628>,  <39.302650, 35.266991, 21.604841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733814, 34.939503, 22.111628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.097607, 34.773415, 22.119999>,  <39.315884, 34.673763, 22.125021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.097607, 34.773415, 22.119999>,  <38.733814, 34.939503, 22.111628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097607, 34.773415, 22.119999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067300, 0.196711, 0.978149,
		-0.410262, -0.888199, 0.206849,
		0.909481, -0.415218, 0.020927,
		39.370453, 34.648849, 22.126278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718090, 34.296165, 22.403315>,  <38.733814, 34.939503, 22.111628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718090, 34.296165, 22.403315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064400, 34.482975, 22.475220>,  <39.272186, 34.595062, 22.518362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064400, 34.482975, 22.475220>,  <38.718090, 34.296165, 22.403315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064400, 34.482975, 22.475220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218116, 0.028867, 0.975496,
		0.450394, -0.883771, 0.126858,
		0.865777, 0.467028, 0.179764,
		39.324131, 34.623085, 22.529148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016335, 34.379436, 22.551979>,  <38.718090, 34.296165, 22.403315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016335, 34.379436, 22.551979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650791, 34.225712, 22.604382>,  <37.431465, 34.133476, 22.635824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650791, 34.225712, 22.604382>,  <38.016335, 34.379436, 22.551979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650791, 34.225712, 22.604382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323843, 0.495275, -0.806119,
		0.244914, -0.779108, -0.577069,
		-0.913862, -0.384309, 0.131009,
		37.376633, 34.110420, 22.643684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838959, 34.054298, 21.951849>,  <38.016335, 34.379436, 22.551979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838959, 34.054298, 21.951849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.474281, 34.112213, 22.105659>,  <37.255474, 34.146961, 22.197945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.474281, 34.112213, 22.105659>,  <37.838959, 34.054298, 21.951849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474281, 34.112213, 22.105659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273991, 0.483169, -0.831550,
		-0.306189, -0.863472, -0.400830,
		-0.911689, 0.144787, 0.384525,
		37.200775, 34.155651, 22.221018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369942, 33.823009, 21.454849>,  <37.838959, 34.054298, 21.951849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369942, 33.823009, 21.454849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143303, 34.055164, 21.688812>,  <37.007320, 34.194458, 21.829191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143303, 34.055164, 21.688812>,  <37.369942, 33.823009, 21.454849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143303, 34.055164, 21.688812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416433, 0.410830, -0.811050,
		-0.711018, -0.703117, 0.008914,
		-0.566601, 0.580384, 0.584908,
		36.973324, 34.229279, 21.864285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784256, 33.948105, 21.036272>,  <37.369942, 33.823009, 21.454849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784256, 33.948105, 21.036272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768330, 34.238762, 21.310616>,  <36.758774, 34.413155, 21.475222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768330, 34.238762, 21.310616>,  <36.784256, 33.948105, 21.036272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768330, 34.238762, 21.310616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408549, 0.614567, -0.674829,
		-0.911867, -0.307079, 0.272398,
		-0.039819, 0.726642, 0.685861,
		36.756386, 34.456753, 21.516375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106911, 34.323227, 20.987164>,  <36.784256, 33.948105, 21.036272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106911, 34.323227, 20.987164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.346157, 34.591640, 21.162422>,  <36.489704, 34.752689, 21.267578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.346157, 34.591640, 21.162422>,  <36.106911, 34.323227, 20.987164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346157, 34.591640, 21.162422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348765, 0.710184, -0.611557,
		-0.721539, 0.212972, 0.658805,
		0.598117, 0.671030, 0.438149,
		36.525593, 34.792950, 21.293867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657513, 34.881573, 21.042877>,  <36.106911, 34.323227, 20.987164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657513, 34.881573, 21.042877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.034355, 35.015461, 21.050831>,  <36.260460, 35.095795, 21.055603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.034355, 35.015461, 21.050831>,  <35.657513, 34.881573, 21.042877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034355, 35.015461, 21.050831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219915, 0.661553, -0.716928,
		-0.253128, 0.671049, 0.696864,
		0.942106, 0.334725, 0.019883,
		36.316986, 35.115879, 21.056795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528259, 35.477085, 20.703119>,  <35.657513, 34.881573, 21.042877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528259, 35.477085, 20.703119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.927452, 35.484264, 20.727478>,  <36.166969, 35.488571, 20.742094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.927452, 35.484264, 20.727478>,  <35.528259, 35.477085, 20.703119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927452, 35.484264, 20.727478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045968, 0.457359, -0.888093,
		-0.043791, 0.889101, 0.455611,
		0.997983, 0.017947, 0.060898,
		36.226849, 35.489647, 20.745747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798855, 36.219753, 20.674768>,  <35.528259, 35.477085, 20.703119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798855, 36.219753, 20.674768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059406, 35.956085, 20.524464>,  <36.215736, 35.797886, 20.434280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059406, 35.956085, 20.524464>,  <35.798855, 36.219753, 20.674768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059406, 35.956085, 20.524464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019343, 0.509506, -0.860250,
		0.758505, 0.553081, 0.344632,
		0.651380, -0.659170, -0.375764,
		36.254822, 35.758335, 20.411734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414707, 36.653641, 20.358364>,  <35.798855, 36.219753, 20.674768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414707, 36.653641, 20.358364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.417004, 36.292484, 20.186428>,  <36.418381, 36.075790, 20.083267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.417004, 36.292484, 20.186428>,  <36.414707, 36.653641, 20.358364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417004, 36.292484, 20.186428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210689, 0.421291, -0.882113,
		0.977536, -0.085499, 0.192646,
		0.005741, -0.902887, -0.429841,
		36.418724, 36.021618, 20.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005981, 36.696938, 19.970354>,  <36.414707, 36.653641, 20.358364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005981, 36.696938, 19.970354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.812351, 36.386395, 19.808887>,  <36.696175, 36.200069, 19.712008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.812351, 36.386395, 19.808887>,  <37.005981, 36.696938, 19.970354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812351, 36.386395, 19.808887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254417, 0.316517, -0.913832,
		0.837225, -0.545061, 0.044300,
		-0.484073, -0.776354, -0.403668,
		36.667130, 36.153488, 19.687786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373241, 36.630352, 19.273983>,  <37.005981, 36.696938, 19.970354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373241, 36.630352, 19.273983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089905, 36.349152, 19.248577>,  <36.919903, 36.180431, 19.233334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089905, 36.349152, 19.248577>,  <37.373241, 36.630352, 19.273983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089905, 36.349152, 19.248577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086995, 0.002347, -0.996206,
		0.700487, -0.711181, 0.059496,
		-0.708343, -0.703005, -0.063513,
		36.877403, 36.138248, 19.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668049, 35.941746, 19.080189>,  <37.373241, 36.630352, 19.273983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668049, 35.941746, 19.080189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283146, 35.966393, 18.974159>,  <37.052204, 35.981182, 18.910542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283146, 35.966393, 18.974159>,  <37.668049, 35.941746, 19.080189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283146, 35.966393, 18.974159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218936, -0.403250, -0.888514,
		-0.161639, -0.913013, 0.374540,
		-0.962258, 0.061618, -0.265073,
		36.994469, 35.984879, 18.894638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428303, 35.263306, 18.845013>,  <37.668049, 35.941746, 19.080189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428303, 35.263306, 18.845013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.183510, 35.525665, 18.668255>,  <37.036633, 35.683083, 18.562201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.183510, 35.525665, 18.668255>,  <37.428303, 35.263306, 18.845013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183510, 35.525665, 18.668255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145184, -0.456079, -0.878017,
		-0.777433, -0.601486, 0.183885,
		-0.611980, 0.655902, -0.441896,
		36.999916, 35.722435, 18.535686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029461, 34.962593, 18.444714>,  <37.428303, 35.263306, 18.845013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029461, 34.962593, 18.444714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969341, 35.320980, 18.277546>,  <36.933270, 35.536011, 18.177246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969341, 35.320980, 18.277546>,  <37.029461, 34.962593, 18.444714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969341, 35.320980, 18.277546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026976, -0.418846, -0.907656,
		-0.988272, -0.147696, 0.038784,
		-0.150302, 0.895965, -0.417918,
		36.924252, 35.589771, 18.152170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568142, 34.750782, 17.923359>,  <37.029461, 34.962593, 18.444714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568142, 34.750782, 17.923359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709728, 35.112450, 17.827705>,  <36.794682, 35.329449, 17.770313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709728, 35.112450, 17.827705>,  <36.568142, 34.750782, 17.923359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709728, 35.112450, 17.827705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038089, -0.241540, -0.969643,
		-0.934482, 0.352331, -0.051059,
		0.353969, 0.904169, -0.239135,
		36.815918, 35.383701, 17.755964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158741, 34.924538, 17.428692>,  <36.568142, 34.750782, 17.923359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158741, 34.924538, 17.428692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.472443, 35.168308, 17.382130>,  <36.660664, 35.314571, 17.354193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.472443, 35.168308, 17.382130>,  <36.158741, 34.924538, 17.428692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472443, 35.168308, 17.382130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024394, -0.217760, -0.975698,
		-0.619961, 0.762354, -0.185645,
		0.784253, 0.609423, -0.116406,
		36.707718, 35.351135, 17.347208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967663, 35.393051, 16.919651>,  <36.158741, 34.924538, 17.428692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967663, 35.393051, 16.919651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367649, 35.389900, 16.919701>,  <36.607643, 35.388012, 16.919729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367649, 35.389900, 16.919701>,  <35.967663, 35.393051, 16.919651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367649, 35.389900, 16.919701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001020, -0.144850, -0.989453,
		0.007807, 0.989422, -0.144854,
		0.999969, -0.007873, 0.000122,
		36.667641, 35.387539, 16.919737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123852, 35.794827, 16.335035>,  <35.967663, 35.393051, 16.919651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123852, 35.794827, 16.335035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468750, 35.600620, 16.392735>,  <36.675690, 35.484097, 16.427355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468750, 35.600620, 16.392735>,  <36.123852, 35.794827, 16.335035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468750, 35.600620, 16.392735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144778, -0.036659, -0.988785,
		0.485362, 0.873457, 0.038684,
		0.862243, -0.485519, 0.144250,
		36.727425, 35.454964, 16.436010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564465, 36.152718, 15.963823>,  <36.123852, 35.794827, 16.335035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564465, 36.152718, 15.963823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.737446, 35.793972, 16.000977>,  <36.841236, 35.578724, 16.023268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.737446, 35.793972, 16.000977>,  <36.564465, 36.152718, 15.963823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737446, 35.793972, 16.000977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196111, -0.006990, -0.980557,
		0.880071, 0.442260, 0.172862,
		0.432453, -0.896860, 0.092884,
		36.867180, 35.524914, 16.028841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134670, 36.130733, 15.500793>,  <36.564465, 36.152718, 15.963823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134670, 36.130733, 15.500793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.022541, 35.749893, 15.549647>,  <36.955265, 35.521389, 15.578959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.022541, 35.749893, 15.549647>,  <37.134670, 36.130733, 15.500793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022541, 35.749893, 15.549647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155865, -0.170695, -0.972918,
		0.947167, -0.253696, 0.196250,
		-0.280324, -0.952104, 0.122135,
		36.938442, 35.464264, 15.586287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608532, 35.875301, 15.022856>,  <37.134670, 36.130733, 15.500793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608532, 35.875301, 15.022856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.326427, 35.605171, 15.109143>,  <37.157166, 35.443092, 15.160915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.326427, 35.605171, 15.109143>,  <37.608532, 35.875301, 15.022856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326427, 35.605171, 15.109143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056540, -0.356892, -0.932433,
		0.706685, -0.645416, 0.289887,
		-0.705265, -0.675327, 0.215719,
		37.114849, 35.402573, 15.173859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.080757, 32.573441, 32.460464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.227861, 32.880348, 32.670631>,  <27.316124, 33.064491, 32.796730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.227861, 32.880348, 32.670631>,  <27.080757, 32.573441, 32.460464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227861, 32.880348, 32.670631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084909, -0.590353, 0.802666,
		0.926037, -0.250576, -0.282256,
		0.367759, 0.767265, 0.525413,
		27.338190, 33.110527, 32.828255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560846, 32.204216, 32.834465>,  <27.080757, 32.573441, 32.460464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560846, 32.204216, 32.834465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.522741, 32.557728, 33.017704>,  <27.499878, 32.769836, 33.127647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.522741, 32.557728, 33.017704>,  <27.560846, 32.204216, 32.834465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522741, 32.557728, 33.017704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083698, -0.451453, 0.888361,
		0.991927, 0.122970, -0.030964,
		-0.095263, 0.883781, 0.458101,
		27.494162, 32.822861, 33.155136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120388, 32.321583, 33.312737>,  <27.560846, 32.204216, 32.834465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120388, 32.321583, 33.312737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.832323, 32.564240, 33.447407>,  <27.659483, 32.709835, 33.528210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.832323, 32.564240, 33.447407>,  <28.120388, 32.321583, 33.312737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832323, 32.564240, 33.447407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043957, -0.444390, 0.894754,
		0.692410, 0.659169, 0.293367,
		-0.720164, 0.606641, 0.336676,
		27.616274, 32.746231, 33.548409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403831, 32.413670, 33.921436>,  <28.120388, 32.321583, 33.312737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403831, 32.413670, 33.921436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.016087, 32.508026, 33.948849>,  <27.783440, 32.564640, 33.965294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.016087, 32.508026, 33.948849>,  <28.403831, 32.413670, 33.921436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016087, 32.508026, 33.948849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011284, -0.235921, 0.971707,
		0.245383, 0.942708, 0.226030,
		-0.969361, 0.235889, 0.068529,
		27.725279, 32.578793, 33.969406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318602, 32.671417, 34.549747>,  <28.403831, 32.413670, 33.921436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318602, 32.671417, 34.549747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.929695, 32.609634, 34.479504>,  <27.696350, 32.572567, 34.437359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.929695, 32.609634, 34.479504>,  <28.318602, 32.671417, 34.549747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929695, 32.609634, 34.479504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160279, -0.106759, 0.981281,
		-0.170311, 0.982215, 0.079043,
		-0.972268, -0.154454, -0.175611,
		27.638014, 32.563297, 34.426819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907595, 33.168365, 34.984951>,  <28.318602, 32.671417, 34.549747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907595, 33.168365, 34.984951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.692575, 32.846413, 34.884384>,  <27.563564, 32.653240, 34.824043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.692575, 32.846413, 34.884384>,  <27.907595, 33.168365, 34.984951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692575, 32.846413, 34.884384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233847, -0.144167, 0.961526,
		-0.810159, 0.575659, -0.110722,
		-0.537548, -0.804881, -0.251415,
		27.531311, 32.604950, 34.808960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251661, 33.271717, 35.290382>,  <27.907595, 33.168365, 34.984951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251661, 33.271717, 35.290382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.225737, 32.876102, 35.237301>,  <27.210182, 32.638733, 35.205452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.225737, 32.876102, 35.237301>,  <27.251661, 33.271717, 35.290382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225737, 32.876102, 35.237301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229447, -0.114651, 0.966545,
		-0.971161, 0.093093, -0.219500,
		-0.064813, -0.989034, -0.132704,
		27.206293, 32.579391, 35.197491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626947, 32.990105, 35.513195>,  <27.251661, 33.271717, 35.290382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626947, 32.990105, 35.513195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.876659, 32.679234, 35.544853>,  <27.026487, 32.492710, 35.563847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.876659, 32.679234, 35.544853>,  <26.626947, 32.990105, 35.513195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876659, 32.679234, 35.544853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241651, -0.095773, 0.965625,
		-0.742887, -0.621945, -0.247596,
		0.624279, -0.777182, 0.079145,
		27.063944, 32.446079, 35.568596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280792, 32.579781, 35.969543>,  <26.626947, 32.990105, 35.513195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280792, 32.579781, 35.969543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.647923, 32.420994, 35.971123>,  <26.868200, 32.325722, 35.972073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.647923, 32.420994, 35.971123>,  <26.280792, 32.579781, 35.969543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647923, 32.420994, 35.971123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054020, -0.115025, 0.991893,
		-0.393293, -0.910597, -0.127017,
		0.917825, -0.396966, 0.003952,
		26.923269, 32.301903, 35.972309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120920, 32.020412, 36.364052>,  <26.280792, 32.579781, 35.969543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120920, 32.020412, 36.364052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.509733, 32.112309, 36.383545>,  <26.743021, 32.167446, 36.395241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.509733, 32.112309, 36.383545>,  <26.120920, 32.020412, 36.364052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509733, 32.112309, 36.383545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007385, -0.237316, 0.971404,
		0.234734, -0.943876, -0.232375,
		0.972031, 0.229738, 0.048735,
		26.801342, 32.181229, 36.398167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433243, 31.390522, 36.687920>,  <26.120920, 32.020412, 36.364052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433243, 31.390522, 36.687920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.664312, 31.712032, 36.744816>,  <26.802954, 31.904940, 36.778954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.664312, 31.712032, 36.744816>,  <26.433243, 31.390522, 36.687920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664312, 31.712032, 36.744816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118329, -0.089959, 0.988891,
		0.807645, -0.588089, 0.043143,
		0.577675, 0.803778, 0.142243,
		26.837614, 31.953165, 36.787487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856659, 31.166908, 37.157375>,  <26.433243, 31.390522, 36.687920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856659, 31.166908, 37.157375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.882765, 31.564148, 37.196358>,  <26.898428, 31.802492, 37.219749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.882765, 31.564148, 37.196358>,  <26.856659, 31.166908, 37.157375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882765, 31.564148, 37.196358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068377, -0.092988, 0.993317,
		0.995522, -0.071492, 0.061836,
		0.065264, 0.993097, 0.097460,
		26.902344, 31.862078, 37.225597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468218, 31.295301, 37.532139>,  <26.856659, 31.166908, 37.157375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468218, 31.295301, 37.532139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.173607, 31.561916, 37.578201>,  <26.996841, 31.721886, 37.605839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.173607, 31.561916, 37.578201>,  <27.468218, 31.295301, 37.532139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173607, 31.561916, 37.578201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092717, -0.069150, 0.993288,
		0.670026, 0.742258, -0.010868,
		-0.736525, 0.666536, 0.115152,
		26.952650, 31.761877, 37.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483810, 31.078678, 38.217594>,  <27.468218, 31.295301, 37.532139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483810, 31.078678, 38.217594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.758305, 30.787750, 38.213768>,  <27.923000, 30.613194, 38.211472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.758305, 30.787750, 38.213768>,  <27.483810, 31.078678, 38.217594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758305, 30.787750, 38.213768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080999, -0.089478, 0.992690,
		-0.722858, -0.680442, -0.120315,
		0.686233, -0.727319, -0.009564,
		27.964174, 30.569555, 38.210899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235149, 31.237564, 38.155518>,  <27.483810, 31.078678, 38.217594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235149, 31.237564, 38.155518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.500147, 30.948391, 38.233974>,  <28.659145, 30.774887, 38.281048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.500147, 30.948391, 38.233974>,  <28.235149, 31.237564, 38.155518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500147, 30.948391, 38.233974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088450, -0.335515, -0.937873,
		0.743828, 0.603986, -0.286220,
		0.662493, -0.722932, 0.196143,
		28.698895, 30.731512, 38.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593754, 31.194933, 37.478630>,  <28.235149, 31.237564, 38.155518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593754, 31.194933, 37.478630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.691792, 30.850231, 37.656307>,  <28.750614, 30.643410, 37.762913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.691792, 30.850231, 37.656307>,  <28.593754, 31.194933, 37.478630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691792, 30.850231, 37.656307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008580, -0.460080, -0.887836,
		0.969461, 0.213794, -0.120158,
		0.245096, -0.861753, 0.444195,
		28.765320, 30.591705, 37.789566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257113, 30.989910, 37.124481>,  <28.593754, 31.194933, 37.478630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257113, 30.989910, 37.124481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055256, 30.677841, 37.272354>,  <28.934141, 30.490601, 37.361076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055256, 30.677841, 37.272354>,  <29.257113, 30.989910, 37.124481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055256, 30.677841, 37.272354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122825, -0.488732, -0.863745,
		0.854547, -0.390476, 0.342460,
		-0.504642, -0.780173, 0.369684,
		28.903864, 30.443789, 37.383259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710697, 30.349627, 37.035385>,  <29.257113, 30.989910, 37.124481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710697, 30.349627, 37.035385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.329529, 30.235382, 37.076122>,  <29.100828, 30.166836, 37.100563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.329529, 30.235382, 37.076122>,  <29.710697, 30.349627, 37.035385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329529, 30.235382, 37.076122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021114, -0.397551, -0.917337,
		0.302489, -0.871997, 0.384865,
		-0.952919, -0.285611, 0.101843,
		29.043653, 30.149698, 37.106674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749702, 29.707701, 36.798401>,  <29.710697, 30.349627, 37.035385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749702, 29.707701, 36.798401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.360483, 29.798660, 36.783096>,  <29.126951, 29.853235, 36.773914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.360483, 29.798660, 36.783096>,  <29.749702, 29.707701, 36.798401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360483, 29.798660, 36.783096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066592, -0.435953, -0.897502,
		-0.220767, -0.870767, 0.439347,
		-0.973051, 0.227396, -0.038257,
		29.068567, 29.866879, 36.771618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472502, 29.252439, 36.323856>,  <29.749702, 29.707701, 36.798401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472502, 29.252439, 36.323856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.186968, 29.531429, 36.349049>,  <29.015648, 29.698824, 36.364166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.186968, 29.531429, 36.349049>,  <29.472502, 29.252439, 36.323856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186968, 29.531429, 36.349049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190947, -0.107314, -0.975717,
		-0.673779, -0.708528, 0.209786,
		-0.713835, 0.697476, 0.062985,
		28.972816, 29.740671, 36.367943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920259, 28.968704, 35.928059>,  <29.472502, 29.252439, 36.323856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920259, 28.968704, 35.928059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853722, 29.362823, 35.943649>,  <28.813799, 29.599295, 35.953003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853722, 29.362823, 35.943649>,  <28.920259, 28.968704, 35.928059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853722, 29.362823, 35.943649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270120, -0.007512, -0.962797,
		-0.948348, -0.170686, 0.267398,
		-0.166345, 0.985297, 0.038981,
		28.803818, 29.658413, 35.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224762, 29.075325, 35.715080>,  <28.920259, 28.968704, 35.928059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224762, 29.075325, 35.715080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420652, 29.421116, 35.669739>,  <28.538187, 29.628590, 35.642532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420652, 29.421116, 35.669739>,  <28.224762, 29.075325, 35.715080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420652, 29.421116, 35.669739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316406, 0.055063, -0.947024,
		-0.812437, 0.499651, 0.300491,
		0.489727, 0.864475, -0.113357,
		28.567570, 29.680458, 35.635731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842577, 29.488787, 35.272163>,  <28.224762, 29.075325, 35.715080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842577, 29.488787, 35.272163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.200151, 29.664387, 35.236050>,  <28.414696, 29.769747, 35.214382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.200151, 29.664387, 35.236050>,  <27.842577, 29.488787, 35.272163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200151, 29.664387, 35.236050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128227, 0.057485, -0.990078,
		-0.429455, 0.896646, 0.107680,
		0.893939, 0.439002, -0.090287,
		28.468332, 29.796087, 35.208965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782293, 30.099264, 34.765789>,  <27.842577, 29.488787, 35.272163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782293, 30.099264, 34.765789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.175091, 30.024086, 34.773392>,  <28.410770, 29.978979, 34.777954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.175091, 30.024086, 34.773392>,  <27.782293, 30.099264, 34.765789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175091, 30.024086, 34.773392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071900, 0.278803, -0.957653,
		0.174686, 0.941778, 0.287296,
		0.981996, -0.187945, 0.019011,
		28.469690, 29.967703, 34.779095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025528, 30.615887, 34.402893>,  <27.782293, 30.099264, 34.765789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025528, 30.615887, 34.402893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.359379, 30.398083, 34.436134>,  <28.559689, 30.267401, 34.456081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.359379, 30.398083, 34.436134>,  <28.025528, 30.615887, 34.402893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359379, 30.398083, 34.436134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342960, 0.395661, -0.851957,
		0.431016, 0.739570, 0.516974,
		0.834628, -0.544509, 0.083106,
		28.609768, 30.234730, 34.461067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562746, 31.115673, 34.335770>,  <28.025528, 30.615887, 34.402893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562746, 31.115673, 34.335770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.667280, 30.755177, 34.197514>,  <28.730000, 30.538879, 34.114559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.667280, 30.755177, 34.197514>,  <28.562746, 31.115673, 34.335770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667280, 30.755177, 34.197514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297068, 0.415804, -0.859569,
		0.918398, 0.121955, 0.376393,
		0.261334, -0.901241, -0.345645,
		28.745680, 30.484804, 34.093819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165499, 31.211849, 34.016956>,  <28.562746, 31.115673, 34.335770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165499, 31.211849, 34.016956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.039639, 30.863297, 33.866390>,  <28.964123, 30.654165, 33.776051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.039639, 30.863297, 33.866390>,  <29.165499, 31.211849, 34.016956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039639, 30.863297, 33.866390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165964, 0.339941, -0.925687,
		0.934587, -0.353737, 0.037656,
		-0.314649, -0.871384, -0.376412,
		28.945244, 30.601881, 33.753468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615974, 31.074366, 33.481861>,  <29.165499, 31.211849, 34.016956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615974, 31.074366, 33.481861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.300249, 30.843098, 33.399204>,  <29.110813, 30.704336, 33.349609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.300249, 30.843098, 33.399204>,  <29.615974, 31.074366, 33.481861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300249, 30.843098, 33.399204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100361, 0.210541, -0.972420,
		0.605732, -0.788283, -0.108157,
		-0.789313, -0.578171, -0.206645,
		29.063456, 30.669647, 33.337212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363497, 31.068359, 33.606693>,  <29.615974, 31.074366, 33.481861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363497, 31.068359, 33.606693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669422, 31.300701, 33.495216>,  <30.852978, 31.440105, 33.428329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669422, 31.300701, 33.495216>,  <30.363497, 31.068359, 33.606693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669422, 31.300701, 33.495216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130128, 0.284391, 0.949836,
		0.630973, -0.762714, 0.141921,
		0.764814, 0.580852, -0.278693,
		30.898867, 31.474957, 33.411610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771477, 30.879930, 34.219151>,  <30.363497, 31.068359, 33.606693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771477, 30.879930, 34.219151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.884586, 31.215126, 34.032467>,  <30.952452, 31.416243, 33.920456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.884586, 31.215126, 34.032467>,  <30.771477, 30.879930, 34.219151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884586, 31.215126, 34.032467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261755, 0.400680, 0.878032,
		0.922780, -0.370449, -0.106046,
		0.282775, 0.837988, -0.466706,
		30.969419, 31.466522, 33.892456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472687, 31.067986, 34.515526>,  <30.771477, 30.879930, 34.219151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472687, 31.067986, 34.515526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319941, 31.404667, 34.362835>,  <31.228292, 31.606676, 34.271221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319941, 31.404667, 34.362835>,  <31.472687, 31.067986, 34.515526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319941, 31.404667, 34.362835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036923, 0.426591, 0.903691,
		0.923481, 0.330993, -0.193978,
		-0.381864, 0.841703, -0.381727,
		31.205381, 31.657177, 34.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910574, 31.642679, 34.688595>,  <31.472687, 31.067986, 34.515526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910574, 31.642679, 34.688595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566353, 31.832550, 34.614693>,  <31.359821, 31.946472, 34.570351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566353, 31.832550, 34.614693>,  <31.910574, 31.642679, 34.688595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566353, 31.832550, 34.614693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086328, 0.493383, 0.865517,
		0.501995, 0.728873, -0.465559,
		-0.860552, 0.474676, -0.184754,
		31.308187, 31.974953, 34.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041367, 32.310917, 34.863747>,  <31.910574, 31.642679, 34.688595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041367, 32.310917, 34.863747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645271, 32.264019, 34.893887>,  <31.407614, 32.235878, 34.911972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645271, 32.264019, 34.893887>,  <32.041367, 32.310917, 34.863747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645271, 32.264019, 34.893887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016495, 0.438233, 0.898710,
		-0.138393, 0.891181, -0.432022,
		-0.990240, -0.117249, 0.075348,
		31.348200, 32.228844, 34.916492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754528, 32.890579, 35.163223>,  <32.041367, 32.310917, 34.863747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754528, 32.890579, 35.163223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479284, 32.607239, 35.226151>,  <31.314138, 32.437237, 35.263908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.479284, 32.607239, 35.226151>,  <31.754528, 32.890579, 35.163223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479284, 32.607239, 35.226151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027091, 0.241736, 0.969964,
		-0.725102, 0.663178, -0.185530,
		-0.688109, -0.708349, 0.157317,
		31.272852, 32.394733, 35.273346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447260, 33.104374, 35.847618>,  <31.754528, 32.890579, 35.163223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447260, 33.104374, 35.847618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319349, 32.729137, 35.794365>,  <31.242603, 32.503994, 35.762413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319349, 32.729137, 35.794365>,  <31.447260, 33.104374, 35.847618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319349, 32.729137, 35.794365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292584, -0.035882, 0.955567,
		-0.901187, 0.344522, -0.262997,
		-0.319777, -0.938092, -0.133137,
		31.223415, 32.447708, 35.754425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863527, 33.728188, 35.778580>,  <31.447260, 33.104374, 35.847618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863527, 33.728188, 35.778580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.194460, 33.908535, 35.912590>,  <31.393019, 34.016743, 35.992996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.194460, 33.908535, 35.912590>,  <30.863527, 33.728188, 35.778580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194460, 33.908535, 35.912590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354847, 0.042839, -0.933942,
		-0.435438, 0.891561, -0.124548,
		0.827331, 0.450870, 0.335022,
		31.442659, 34.043797, 36.013096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939066, 34.210415, 35.230705>,  <30.863527, 33.728188, 35.778580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939066, 34.210415, 35.230705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289478, 34.213467, 35.423580>,  <31.499725, 34.215298, 35.539307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289478, 34.213467, 35.423580>,  <30.939066, 34.210415, 35.230705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289478, 34.213467, 35.423580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474824, 0.161178, -0.865196,
		-0.084316, 0.986896, 0.137577,
		0.876033, 0.007625, 0.482192,
		31.552288, 34.215755, 35.568237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272066, 34.872517, 35.090694>,  <30.939066, 34.210415, 35.230705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272066, 34.872517, 35.090694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.531952, 34.583958, 35.186581>,  <31.687883, 34.410824, 35.244110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.531952, 34.583958, 35.186581>,  <31.272066, 34.872517, 35.090694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531952, 34.583958, 35.186581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463532, 0.126033, -0.877071,
		0.602502, 0.680960, 0.416274,
		0.649715, -0.721393, 0.239711,
		31.726866, 34.367538, 35.258495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946709, 35.227390, 34.989002>,  <31.272066, 34.872517, 35.090694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946709, 35.227390, 34.989002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014130, 34.833340, 34.975677>,  <32.054581, 34.596909, 34.967682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014130, 34.833340, 34.975677>,  <31.946709, 35.227390, 34.989002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014130, 34.833340, 34.975677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313244, 0.085573, -0.945810,
		0.934596, 0.148983, 0.323009,
		0.168550, -0.985130, -0.033308,
		32.064693, 34.537800, 34.965687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561363, 35.186420, 34.608627>,  <31.946709, 35.227390, 34.989002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561363, 35.186420, 34.608627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390160, 34.825012, 34.617218>,  <32.287437, 34.608166, 34.622372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390160, 34.825012, 34.617218>,  <32.561363, 35.186420, 34.608627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390160, 34.825012, 34.617218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250564, -0.141460, -0.957709,
		0.868349, -0.404523, 0.286935,
		-0.428005, -0.903521, 0.021477,
		32.261757, 34.553955, 34.623661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981579, 34.795456, 34.182262>,  <32.561363, 35.186420, 34.608627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981579, 34.795456, 34.182262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625286, 34.613659, 34.184349>,  <32.411510, 34.504581, 34.185600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625286, 34.613659, 34.184349>,  <32.981579, 34.795456, 34.182262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625286, 34.613659, 34.184349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028333, -0.066968, -0.997353,
		0.453639, -0.888230, 0.072528,
		-0.890735, -0.454493, 0.005213,
		32.358067, 34.477310, 34.185913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072834, 34.329170, 33.656849>,  <32.981579, 34.795456, 34.182262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072834, 34.329170, 33.656849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674187, 34.349201, 33.682903>,  <32.434998, 34.361217, 33.698536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674187, 34.349201, 33.682903>,  <33.072834, 34.329170, 33.656849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674187, 34.349201, 33.682903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065350, -0.002593, -0.997859,
		-0.049807, -0.998742, 0.005857,
		-0.996618, 0.050083, 0.065139,
		32.375202, 34.364223, 33.702446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.550304, 35.600502, 37.214600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.464411, 35.219536, 37.128063>,  <27.412874, 34.990955, 37.076141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.464411, 35.219536, 37.128063>,  <27.550304, 35.600502, 37.214600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464411, 35.219536, 37.128063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389258, 0.119695, -0.913319,
		0.895749, -0.280333, 0.345031,
		-0.214735, -0.952411, -0.216339,
		27.399990, 34.933811, 37.063160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240637, 35.164276, 36.901203>,  <27.550304, 35.600502, 37.214600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240637, 35.164276, 36.901203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.893814, 35.016636, 36.767349>,  <27.685720, 34.928051, 36.687038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.893814, 35.016636, 36.767349>,  <28.240637, 35.164276, 36.901203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893814, 35.016636, 36.767349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359208, 0.002282, -0.933255,
		0.345233, -0.929385, 0.130607,
		-0.867055, -0.369105, -0.334630,
		27.633698, 34.905903, 36.666962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546652, 34.723755, 36.404099>,  <28.240637, 35.164276, 36.901203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546652, 34.723755, 36.404099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.150496, 34.737339, 36.350468>,  <27.912802, 34.745491, 36.318291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.150496, 34.737339, 36.350468>,  <28.546652, 34.723755, 36.404099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150496, 34.737339, 36.350468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137809, 0.159958, -0.977457,
		-0.011751, -0.986540, -0.163101,
		-0.990389, 0.033963, -0.134074,
		27.853378, 34.747528, 36.310246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483612, 34.468769, 35.739170>,  <28.546652, 34.723755, 36.404099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483612, 34.468769, 35.739170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.114643, 34.622761, 35.751366>,  <27.893263, 34.715157, 35.758682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.114643, 34.622761, 35.751366>,  <28.483612, 34.468769, 35.739170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114643, 34.622761, 35.751366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073447, 0.252389, -0.964834,
		-0.379140, -0.887743, -0.261084,
		-0.922420, 0.384983, 0.030489,
		27.837917, 34.738255, 35.760513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118443, 34.223850, 35.163219>,  <28.483612, 34.468769, 35.739170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118443, 34.223850, 35.163219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.958231, 34.571777, 35.278454>,  <27.862104, 34.780533, 35.347595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.958231, 34.571777, 35.278454>,  <28.118443, 34.223850, 35.163219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958231, 34.571777, 35.278454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035953, 0.329078, -0.943618,
		-0.915579, -0.367587, -0.163077,
		-0.400527, 0.869820, 0.288081,
		27.838072, 34.832722, 35.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481745, 34.386799, 34.601692>,  <28.118443, 34.223850, 35.163219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481745, 34.386799, 34.601692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.579655, 34.725624, 34.790398>,  <27.638401, 34.928921, 34.903622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.579655, 34.725624, 34.790398>,  <27.481745, 34.386799, 34.601692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579655, 34.725624, 34.790398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153556, 0.514295, -0.843754,
		-0.957343, 0.134088, 0.255959,
		0.244776, 0.847066, 0.471767,
		27.653088, 34.979744, 34.931927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042547, 34.912514, 34.332970>,  <27.481745, 34.386799, 34.601692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042547, 34.912514, 34.332970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.345385, 35.126820, 34.482510>,  <27.527088, 35.255405, 34.572231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.345385, 35.126820, 34.482510>,  <27.042547, 34.912514, 34.332970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345385, 35.126820, 34.482510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102471, 0.662540, -0.741984,
		-0.645219, 0.523443, 0.556507,
		0.757095, 0.535768, 0.373845,
		27.572514, 35.287552, 34.594662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889273, 35.664219, 34.438187>,  <27.042547, 34.912514, 34.332970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889273, 35.664219, 34.438187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.287027, 35.656727, 34.396526>,  <27.525681, 35.652233, 34.371532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.287027, 35.656727, 34.396526>,  <26.889273, 35.664219, 34.438187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287027, 35.656727, 34.396526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051874, 0.771547, -0.634054,
		0.092230, 0.635897, 0.766243,
		0.994386, -0.018731, -0.104146,
		27.585342, 35.651108, 34.365284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162310, 36.430347, 34.230930>,  <26.889273, 35.664219, 34.438187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162310, 36.430347, 34.230930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.499729, 36.218616, 34.194641>,  <27.702181, 36.091576, 34.172867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.499729, 36.218616, 34.194641>,  <27.162310, 36.430347, 34.230930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499729, 36.218616, 34.194641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294335, 0.596972, -0.746319,
		0.449210, 0.602854, 0.659377,
		0.843551, -0.529331, -0.090724,
		27.752794, 36.059818, 34.167423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698162, 36.872601, 34.069588>,  <27.162310, 36.430347, 34.230930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698162, 36.872601, 34.069588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.841087, 36.524364, 33.934296>,  <27.926842, 36.315422, 33.853119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.841087, 36.524364, 33.934296>,  <27.698162, 36.872601, 34.069588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841087, 36.524364, 33.934296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496701, 0.483807, -0.720569,
		0.790959, 0.089469, 0.605293,
		0.357313, -0.870590, -0.338232,
		27.948282, 36.263187, 33.832825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359848, 37.071056, 33.951195>,  <27.698162, 36.872601, 34.069588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359848, 37.071056, 33.951195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.300373, 36.736744, 33.739777>,  <28.264688, 36.536156, 33.612926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.300373, 36.736744, 33.739777>,  <28.359848, 37.071056, 33.951195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300373, 36.736744, 33.739777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304924, 0.469691, -0.828499,
		0.940698, -0.284353, 0.185014,
		-0.148687, -0.835783, -0.528544,
		28.255768, 36.486008, 33.581215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857805, 37.098263, 33.432281>,  <28.359848, 37.071056, 33.951195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857805, 37.098263, 33.432281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.594446, 36.842072, 33.274143>,  <28.436430, 36.688358, 33.179260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.594446, 36.842072, 33.274143>,  <28.857805, 37.098263, 33.432281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594446, 36.842072, 33.274143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113291, 0.434947, -0.893301,
		0.744095, -0.632937, -0.213808,
		-0.658398, -0.640478, -0.395348,
		28.396927, 36.649929, 33.155540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560379, 36.867317, 33.416824>,  <28.857805, 37.098263, 33.432281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560379, 36.867317, 33.416824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.802258, 37.170673, 33.514145>,  <29.947384, 37.352688, 33.572536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.802258, 37.170673, 33.514145>,  <29.560379, 36.867317, 33.416824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802258, 37.170673, 33.514145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026158, -0.324220, 0.945620,
		0.796027, -0.565447, -0.215893,
		0.604695, 0.758387, 0.243297,
		29.983665, 37.398190, 33.587135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165327, 36.567059, 33.848362>,  <29.560379, 36.867317, 33.416824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165327, 36.567059, 33.848362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.114559, 36.953278, 33.939232>,  <30.084099, 37.185009, 33.993755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.114559, 36.953278, 33.939232>,  <30.165327, 36.567059, 33.848362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114559, 36.953278, 33.939232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167697, -0.204843, 0.964322,
		0.977634, 0.160490, -0.135921,
		-0.126921, 0.965548, 0.227175,
		30.076483, 37.242943, 34.007385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732519, 36.701298, 34.305908>,  <30.165327, 36.567059, 33.848362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732519, 36.701298, 34.305908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451084, 36.983913, 34.336288>,  <30.282223, 37.153484, 34.354515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451084, 36.983913, 34.336288>,  <30.732519, 36.701298, 34.305908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451084, 36.983913, 34.336288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104988, -0.209061, 0.972250,
		0.702812, 0.676087, 0.221270,
		-0.703585, 0.706540, 0.075950,
		30.240009, 37.195877, 34.359074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815950, 37.003109, 34.913502>,  <30.732519, 36.701298, 34.305908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815950, 37.003109, 34.913502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.440361, 37.122467, 34.845051>,  <30.215008, 37.194084, 34.803982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.440361, 37.122467, 34.845051>,  <30.815950, 37.003109, 34.913502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440361, 37.122467, 34.845051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194084, -0.048858, 0.979767,
		0.284001, 0.953190, 0.103791,
		-0.938975, 0.298399, -0.171123,
		30.158669, 37.211987, 34.793713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702894, 37.469616, 35.431580>,  <30.815950, 37.003109, 34.913502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702894, 37.469616, 35.431580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.339113, 37.352787, 35.313202>,  <30.120844, 37.282688, 35.242176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.339113, 37.352787, 35.313202>,  <30.702894, 37.469616, 35.431580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339113, 37.352787, 35.313202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270118, -0.126107, 0.954533,
		-0.316116, 0.948045, 0.035794,
		-0.909454, -0.292075, -0.295948,
		30.066277, 37.265163, 35.224419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213499, 37.904209, 35.896877>,  <30.702894, 37.469616, 35.431580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213499, 37.904209, 35.896877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.021982, 37.584221, 35.752209>,  <29.907072, 37.392227, 35.665409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.021982, 37.584221, 35.752209>,  <30.213499, 37.904209, 35.896877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021982, 37.584221, 35.752209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390973, -0.174560, 0.903697,
		-0.786064, 0.574087, -0.229189,
		-0.478793, -0.799971, -0.361668,
		29.878344, 37.344231, 35.643707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518661, 38.103271, 36.055534>,  <30.213499, 37.904209, 35.896877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518661, 38.103271, 36.055534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.560061, 37.708443, 36.006580>,  <29.584900, 37.471546, 35.977207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.560061, 37.708443, 36.006580>,  <29.518661, 38.103271, 36.055534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560061, 37.708443, 36.006580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324176, -0.149808, 0.934060,
		-0.940318, -0.056998, -0.335489,
		0.103498, -0.987071, -0.122390,
		29.591110, 37.412323, 35.969864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909653, 37.829578, 36.382740>,  <29.518661, 38.103271, 36.055534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909653, 37.829578, 36.382740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.165106, 37.522038, 36.370014>,  <29.318378, 37.337513, 36.362381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.165106, 37.522038, 36.370014>,  <28.909653, 37.829578, 36.382740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165106, 37.522038, 36.370014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309116, -0.294180, 0.904381,
		-0.704696, -0.567733, -0.425538,
		0.638632, -0.768854, -0.031812,
		29.356695, 37.291382, 36.360470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517839, 37.215576, 36.514977>,  <28.909653, 37.829578, 36.382740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517839, 37.215576, 36.514977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900524, 37.128574, 36.592327>,  <29.130135, 37.076374, 36.638737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900524, 37.128574, 36.592327>,  <28.517839, 37.215576, 36.514977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900524, 37.128574, 36.592327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278003, -0.486323, 0.828375,
		-0.086128, -0.846276, -0.525737,
		0.956711, -0.217502, 0.193381,
		29.187538, 37.063324, 36.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592428, 36.451702, 36.570957>,  <28.517839, 37.215576, 36.514977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592428, 36.451702, 36.570957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.918058, 36.576210, 36.767078>,  <29.113436, 36.650913, 36.884750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.918058, 36.576210, 36.767078>,  <28.592428, 36.451702, 36.570957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918058, 36.576210, 36.767078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189403, -0.655783, 0.730804,
		0.549009, -0.687793, -0.474900,
		0.814073, 0.311271, 0.490301,
		29.162281, 36.669590, 36.914169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908112, 35.962086, 36.851044>,  <28.592428, 36.451702, 36.570957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908112, 35.962086, 36.851044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109657, 36.233574, 37.064758>,  <29.230585, 36.396465, 37.192986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109657, 36.233574, 37.064758>,  <28.908112, 35.962086, 36.851044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109657, 36.233574, 37.064758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050476, -0.594346, 0.802624,
		0.862307, -0.431382, -0.265211,
		0.503865, 0.678721, 0.534283,
		29.260817, 36.437191, 37.225044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435791, 35.556976, 37.265675>,  <28.908112, 35.962086, 36.851044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435791, 35.556976, 37.265675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.372532, 35.914577, 37.433365>,  <29.334576, 36.129139, 37.533981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.372532, 35.914577, 37.433365>,  <29.435791, 35.556976, 37.265675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372532, 35.914577, 37.433365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002278, -0.424902, 0.905236,
		0.987413, 0.142207, 0.069234,
		-0.158148, 0.894000, 0.419230,
		29.325087, 36.182777, 37.559135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035543, 35.733295, 37.738087>,  <29.435791, 35.556976, 37.265675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035543, 35.733295, 37.738087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.705526, 35.925732, 37.856647>,  <29.507515, 36.041195, 37.927784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.705526, 35.925732, 37.856647>,  <30.035543, 35.733295, 37.738087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705526, 35.925732, 37.856647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067583, -0.436768, 0.897032,
		0.561013, 0.760123, 0.327839,
		-0.825044, 0.481090, 0.296404,
		29.458014, 36.070057, 37.945568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172396, 35.821487, 38.328606>,  <30.035543, 35.733295, 37.738087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172396, 35.821487, 38.328606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.781418, 35.903591, 38.308739>,  <29.546831, 35.952854, 38.296818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.781418, 35.903591, 38.308739>,  <30.172396, 35.821487, 38.328606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781418, 35.903591, 38.308739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123165, -0.363039, 0.923598,
		0.171546, 0.908885, 0.380131,
		-0.977447, 0.205259, -0.049664,
		29.488184, 35.965168, 38.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926497, 35.667595, 38.560684>,  <30.172396, 35.821487, 38.328606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926497, 35.667595, 38.560684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116922, 35.336693, 38.680019>,  <31.231178, 35.138149, 38.751621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116922, 35.336693, 38.680019>,  <30.926497, 35.667595, 38.560684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116922, 35.336693, 38.680019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145454, -0.260506, -0.954453,
		0.867297, 0.497778, -0.003691,
		0.476066, -0.827257, 0.298340,
		31.259743, 35.088516, 38.769520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632320, 35.613914, 38.149414>,  <30.926497, 35.667595, 38.560684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632320, 35.613914, 38.149414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490763, 35.265533, 38.285770>,  <31.405827, 35.056507, 38.367584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490763, 35.265533, 38.285770>,  <31.632320, 35.613914, 38.149414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490763, 35.265533, 38.285770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116457, -0.402672, -0.907906,
		0.928006, -0.281606, 0.243932,
		-0.353896, -0.870950, 0.340887,
		31.384594, 35.004250, 38.388035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130630, 35.164963, 38.022713>,  <31.632320, 35.613914, 38.149414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130630, 35.164963, 38.022713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809122, 34.931137, 38.066952>,  <31.616217, 34.790844, 38.093494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809122, 34.931137, 38.066952>,  <32.130630, 35.164963, 38.022713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809122, 34.931137, 38.066952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189175, -0.427376, -0.884061,
		0.564055, -0.689664, 0.454098,
		-0.803775, -0.584562, 0.110596,
		31.567989, 34.755768, 38.100132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361610, 34.528927, 37.768406>,  <32.130630, 35.164963, 38.022713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361610, 34.528927, 37.768406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961775, 34.520630, 37.760525>,  <31.721872, 34.515652, 37.755798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961775, 34.520630, 37.760525>,  <32.361610, 34.528927, 37.768406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961775, 34.520630, 37.760525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025190, -0.311959, -0.949762,
		0.013556, -0.949869, 0.312354,
		-0.999591, -0.020743, -0.019698,
		31.661898, 34.514408, 37.754616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175949, 33.858002, 37.562149>,  <32.361610, 34.528927, 37.768406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175949, 33.858002, 37.562149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.846819, 34.051964, 37.443607>,  <31.649342, 34.168343, 37.372482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.846819, 34.051964, 37.443607>,  <32.175949, 33.858002, 37.562149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846819, 34.051964, 37.443607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087927, -0.406565, -0.909381,
		-0.561453, -0.774318, 0.291895,
		-0.822824, 0.484909, -0.296351,
		31.599972, 34.197437, 37.354702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846577, 33.379704, 37.156395>,  <32.175949, 33.858002, 37.562149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846577, 33.379704, 37.156395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669521, 33.725716, 37.061905>,  <31.563288, 33.933323, 37.005211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669521, 33.725716, 37.061905>,  <31.846577, 33.379704, 37.156395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669521, 33.725716, 37.061905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151017, -0.187758, -0.970536,
		-0.883892, -0.465270, -0.047525,
		-0.442639, 0.865026, -0.236222,
		31.536730, 33.985222, 36.991039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296736, 33.186241, 36.634060>,  <31.846577, 33.379704, 37.156395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296736, 33.186241, 36.634060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392288, 33.570816, 36.579552>,  <31.449619, 33.801563, 36.546844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392288, 33.570816, 36.579552>,  <31.296736, 33.186241, 36.634060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392288, 33.570816, 36.579552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136068, -0.172093, -0.975638,
		-0.961468, 0.214521, -0.171931,
		0.238883, 0.961439, -0.136272,
		31.463953, 33.859249, 36.538670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706493, 33.034908, 36.139370>,  <31.296736, 33.186241, 36.634060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706493, 33.034908, 36.139370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.836332, 32.657810, 36.108715>,  <30.914236, 32.431553, 36.090324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.836332, 32.657810, 36.108715>,  <30.706493, 33.034908, 36.139370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836332, 32.657810, 36.108715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278985, -0.172843, 0.944613,
		-0.903773, -0.285238, -0.319115,
		0.324596, -0.942743, -0.076634,
		30.933712, 32.374989, 36.085724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263866, 32.674061, 36.492237>,  <30.706493, 33.034908, 36.139370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263866, 32.674061, 36.492237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574585, 32.423344, 36.516640>,  <30.761017, 32.272915, 36.531281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574585, 32.423344, 36.516640>,  <30.263866, 32.674061, 36.492237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574585, 32.423344, 36.516640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270212, -0.244229, 0.931310,
		-0.568836, -0.739923, -0.359082,
		0.776796, -0.626790, 0.061010,
		30.807623, 32.235306, 36.534943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959623, 32.173965, 36.829563>,  <30.263866, 32.674061, 36.492237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959623, 32.173965, 36.829563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.347256, 32.075329, 36.833111>,  <30.579834, 32.016148, 36.835239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.347256, 32.075329, 36.833111>,  <29.959623, 32.173965, 36.829563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347256, 32.075329, 36.833111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118240, -0.432537, 0.893829,
		-0.216572, -0.867241, -0.448319,
		0.969080, -0.246588, 0.008867,
		30.637980, 32.001354, 36.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025229, 31.482046, 37.028667>,  <29.959623, 32.173965, 36.829563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025229, 31.482046, 37.028667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.372648, 31.655304, 37.125004>,  <30.581100, 31.759258, 37.182808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.372648, 31.655304, 37.125004>,  <30.025229, 31.482046, 37.028667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372648, 31.655304, 37.125004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045007, -0.415019, 0.908699,
		0.493553, -0.800091, -0.340970,
		0.868551, 0.433145, 0.240844,
		30.633213, 31.785248, 37.197258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354889, 30.983400, 37.363037>,  <30.025229, 31.482046, 37.028667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354889, 30.983400, 37.363037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.565088, 31.302582, 37.481102>,  <30.691208, 31.494091, 37.551941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.565088, 31.302582, 37.481102>,  <30.354889, 30.983400, 37.363037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565088, 31.302582, 37.481102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106199, -0.405737, 0.907799,
		0.844142, -0.445699, -0.297955,
		0.525496, 0.797954, 0.295166,
		30.722736, 31.541967, 37.569653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819777, 30.683178, 37.805714>,  <30.354889, 30.983400, 37.363037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819777, 30.683178, 37.805714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843567, 31.077000, 37.871578>,  <30.857841, 31.313293, 37.911098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843567, 31.077000, 37.871578>,  <30.819777, 30.683178, 37.805714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843567, 31.077000, 37.871578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380761, -0.174862, 0.907989,
		0.922759, 0.008694, -0.385280,
		0.059476, 0.984555, 0.164665,
		30.861410, 31.372366, 37.920979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475796, 30.772030, 38.087414>,  <30.819777, 30.683178, 37.805714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475796, 30.772030, 38.087414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.255491, 31.084354, 38.205395>,  <31.123308, 31.271749, 38.276184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.255491, 31.084354, 38.205395>,  <31.475796, 30.772030, 38.087414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255491, 31.084354, 38.205395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344074, -0.109564, 0.932528,
		0.760443, 0.615086, -0.208313,
		-0.550762, 0.780810, 0.294953,
		31.090263, 31.318598, 38.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816946, 30.963871, 38.604530>,  <31.475796, 30.772030, 38.087414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816946, 30.963871, 38.604530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.460876, 31.135166, 38.666756>,  <31.247234, 31.237944, 38.704090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.460876, 31.135166, 38.666756>,  <31.816946, 30.963871, 38.604530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460876, 31.135166, 38.666756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232939, 0.134330, 0.963169,
		0.391571, 0.893625, -0.219331,
		-0.890175, 0.428240, 0.155561,
		31.193825, 31.263638, 38.713425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950310, 31.506008, 39.057789>,  <31.816946, 30.963871, 38.604530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950310, 31.506008, 39.057789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.562519, 31.417061, 39.099110>,  <31.329845, 31.363693, 39.123901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.562519, 31.417061, 39.099110>,  <31.950310, 31.506008, 39.057789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562519, 31.417061, 39.099110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091426, 0.063094, 0.993811,
		-0.227508, 0.972919, -0.040838,
		-0.969475, -0.222366, 0.103304,
		31.271677, 31.350351, 39.130100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.365084, 33.984688, 23.524700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020287, 33.797607, 23.602901>,  <29.813408, 33.685360, 23.649822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020287, 33.797607, 23.602901>,  <30.365084, 33.984688, 23.524700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020287, 33.797607, 23.602901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399589, -0.389594, 0.829786,
		-0.311928, 0.793391, 0.522716,
		-0.861992, -0.467705, 0.195505,
		29.761688, 33.657295, 23.661552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284595, 34.013668, 24.290533>,  <30.365084, 33.984688, 23.524700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284595, 34.013668, 24.290533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049685, 33.706367, 24.188633>,  <29.908737, 33.521988, 24.127493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049685, 33.706367, 24.188633>,  <30.284595, 34.013668, 24.290533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049685, 33.706367, 24.188633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414811, -0.555954, 0.720310,
		-0.695007, 0.317349, 0.645178,
		-0.587279, -0.768248, -0.254752,
		29.873501, 33.475895, 24.112207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957188, 33.797180, 24.920910>,  <30.284595, 34.013668, 24.290533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957188, 33.797180, 24.920910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964106, 33.506496, 24.646217>,  <29.968256, 33.332088, 24.481401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964106, 33.506496, 24.646217>,  <29.957188, 33.797180, 24.920910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964106, 33.506496, 24.646217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227627, -0.665934, 0.710435,
		-0.973595, -0.168605, 0.153901,
		0.017295, -0.726708, -0.686729,
		29.969294, 33.288483, 24.440199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443007, 33.227585, 25.103174>,  <29.957188, 33.797180, 24.920910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443007, 33.227585, 25.103174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720522, 33.061378, 24.867886>,  <29.887032, 32.961655, 24.726713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720522, 33.061378, 24.867886>,  <29.443007, 33.227585, 25.103174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720522, 33.061378, 24.867886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207191, -0.667079, 0.715595,
		-0.689727, -0.618349, -0.376725,
		0.693793, -0.415511, -0.588219,
		29.928659, 32.936726, 24.691420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199814, 32.524158, 25.176811>,  <29.443007, 33.227585, 25.103174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199814, 32.524158, 25.176811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575169, 32.565567, 25.044926>,  <29.800383, 32.590412, 24.965796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575169, 32.565567, 25.044926>,  <29.199814, 32.524158, 25.176811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575169, 32.565567, 25.044926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307243, -0.686694, 0.658827,
		-0.158206, -0.719537, -0.676193,
		0.938388, 0.103525, -0.329712,
		29.856686, 32.596626, 24.946012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505598, 31.938704, 25.389395>,  <29.199814, 32.524158, 25.176811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505598, 31.938704, 25.389395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820213, 32.167324, 25.295856>,  <30.008984, 32.304497, 25.239733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820213, 32.167324, 25.295856>,  <29.505598, 31.938704, 25.389395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820213, 32.167324, 25.295856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492970, -0.353051, 0.795195,
		0.371935, -0.740732, -0.559447,
		0.786540, 0.571552, -0.233847,
		30.056175, 32.338791, 25.225702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105469, 31.522924, 25.508076>,  <29.505598, 31.938704, 25.389395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105469, 31.522924, 25.508076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215773, 31.906239, 25.538128>,  <30.281956, 32.136227, 25.556160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215773, 31.906239, 25.538128>,  <30.105469, 31.522924, 25.508076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215773, 31.906239, 25.538128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516226, -0.213578, 0.829395,
		0.810843, -0.189931, -0.553588,
		0.275762, 0.958285, 0.075131,
		30.298502, 32.193726, 25.560667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782804, 31.453993, 25.687223>,  <30.105469, 31.522924, 25.508076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782804, 31.453993, 25.687223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708378, 31.835468, 25.781761>,  <30.663721, 32.064354, 25.838484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708378, 31.835468, 25.781761>,  <30.782804, 31.453993, 25.687223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708378, 31.835468, 25.781761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466699, -0.125893, 0.875410,
		0.864622, 0.273187, -0.421660,
		-0.186067, 0.953687, 0.236346,
		30.652557, 32.121574, 25.852665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380392, 31.705427, 25.871538>,  <30.782804, 31.453993, 25.687223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380392, 31.705427, 25.871538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119801, 31.959038, 26.038193>,  <30.963446, 32.111206, 26.138186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119801, 31.959038, 26.038193>,  <31.380392, 31.705427, 25.871538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119801, 31.959038, 26.038193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421921, -0.153627, 0.893522,
		0.630524, 0.757898, -0.167424,
		-0.651477, 0.634026, 0.416638,
		30.924356, 32.149246, 26.163185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815828, 32.133995, 26.283720>,  <31.380392, 31.705427, 25.871538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815828, 32.133995, 26.283720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439461, 32.183544, 26.409786>,  <31.213640, 32.213276, 26.485426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439461, 32.183544, 26.409786>,  <31.815828, 32.133995, 26.283720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439461, 32.183544, 26.409786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298669, -0.135068, 0.944751,
		0.159600, 0.983062, 0.090090,
		-0.940917, 0.123875, 0.315167,
		31.157187, 32.220707, 26.504335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747879, 32.653389, 26.886307>,  <31.815828, 32.133995, 26.283720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747879, 32.653389, 26.886307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422289, 32.423302, 26.918739>,  <31.226934, 32.285252, 26.938198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422289, 32.423302, 26.918739>,  <31.747879, 32.653389, 26.886307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422289, 32.423302, 26.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217737, -0.172710, 0.960605,
		-0.538551, 0.799561, 0.265827,
		-0.813974, -0.575216, 0.081081,
		31.178097, 32.250736, 26.943064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481802, 32.883759, 27.483274>,  <31.747879, 32.653389, 26.886307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481802, 32.883759, 27.483274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318821, 32.526878, 27.405334>,  <31.221033, 32.312752, 27.358570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318821, 32.526878, 27.405334>,  <31.481802, 32.883759, 27.483274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318821, 32.526878, 27.405334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127856, -0.266992, 0.955179,
		-0.904232, 0.364278, 0.222860,
		-0.407452, -0.892198, -0.194848,
		31.196585, 32.259220, 27.346880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618441, 33.649635, 27.566771>,  <31.481802, 32.883759, 27.483274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618441, 33.649635, 27.566771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952959, 33.665382, 27.785515>,  <32.153671, 33.674831, 27.916761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952959, 33.665382, 27.785515>,  <31.618441, 33.649635, 27.566771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952959, 33.665382, 27.785515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546752, 0.014440, -0.837170,
		-0.040851, 0.999121, -0.009446,
		0.836297, 0.039364, 0.546862,
		32.203850, 33.677193, 27.949574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962938, 34.142914, 27.260777>,  <31.618441, 33.649635, 27.566771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962938, 34.142914, 27.260777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238316, 33.946869, 27.474632>,  <32.403542, 33.829243, 27.602945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238316, 33.946869, 27.474632>,  <31.962938, 34.142914, 27.260777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238316, 33.946869, 27.474632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636565, 0.055008, -0.769259,
		0.347611, 0.869923, 0.349857,
		0.688441, -0.490109, 0.534642,
		32.444847, 33.799835, 27.635025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649143, 34.543011, 27.121338>,  <31.962938, 34.142914, 27.260777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649143, 34.543011, 27.121338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712662, 34.162281, 27.226269>,  <32.750771, 33.933842, 27.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712662, 34.162281, 27.226269>,  <32.649143, 34.543011, 27.121338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712662, 34.162281, 27.226269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664842, -0.093341, -0.741130,
		0.729911, 0.292093, 0.617990,
		0.158795, -0.951824, 0.262326,
		32.760300, 33.876732, 27.304966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425514, 34.431572, 27.051811>,  <32.649143, 34.543011, 27.121338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425514, 34.431572, 27.051811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272617, 34.062286, 27.067650>,  <33.180878, 33.840714, 27.077152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272617, 34.062286, 27.067650>,  <33.425514, 34.431572, 27.051811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272617, 34.062286, 27.067650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709585, -0.320702, -0.627407,
		0.591929, -0.211725, 0.777684,
		-0.382243, -0.923213, 0.039596,
		33.157944, 33.785324, 27.079529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006115, 33.972721, 27.101793>,  <33.425514, 34.431572, 27.051811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006115, 33.972721, 27.101793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726479, 33.721828, 26.964478>,  <33.558697, 33.571293, 26.882088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726479, 33.721828, 26.964478>,  <34.006115, 33.972721, 27.101793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726479, 33.721828, 26.964478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610085, -0.272860, -0.743870,
		0.372910, -0.729471, 0.573420,
		-0.699095, -0.627232, -0.343287,
		33.516750, 33.533657, 26.861492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270027, 33.242714, 26.952284>,  <34.006115, 33.972721, 27.101793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270027, 33.242714, 26.952284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958477, 33.301773, 26.708466>,  <33.771545, 33.337208, 26.562174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958477, 33.301773, 26.708466>,  <34.270027, 33.242714, 26.952284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958477, 33.301773, 26.708466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590391, -0.155340, -0.792028,
		-0.211629, -0.976765, 0.033821,
		-0.778878, 0.147649, -0.609548,
		33.724812, 33.346066, 26.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369080, 32.724960, 26.351950>,  <34.270027, 33.242714, 26.952284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369080, 32.724960, 26.351950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081455, 32.961460, 26.205868>,  <33.908882, 33.103359, 26.118219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081455, 32.961460, 26.205868>,  <34.369080, 32.724960, 26.351950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081455, 32.961460, 26.205868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228475, -0.295175, -0.927724,
		-0.656318, -0.750529, 0.077162,
		-0.719059, 0.591252, -0.365205,
		33.865738, 33.138836, 26.096306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007023, 32.356884, 25.843346>,  <34.369080, 32.724960, 26.351950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007023, 32.356884, 25.843346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950699, 32.742329, 25.752468>,  <33.916904, 32.973595, 25.697941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950699, 32.742329, 25.752468>,  <34.007023, 32.356884, 25.843346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950699, 32.742329, 25.752468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353560, -0.165405, -0.920672,
		-0.924753, -0.209969, -0.317404,
		-0.140813, 0.963615, -0.227196,
		33.908455, 33.031414, 25.684309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922073, 32.325848, 25.160460>,  <34.007023, 32.356884, 25.843346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922073, 32.325848, 25.160460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981930, 32.713772, 25.237484>,  <34.017841, 32.946526, 25.283699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981930, 32.713772, 25.237484>,  <33.922073, 32.325848, 25.160460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981930, 32.713772, 25.237484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299136, 0.141223, -0.943702,
		-0.942404, 0.198815, -0.268973,
		0.149637, 0.969808, 0.192562,
		34.026821, 33.004715, 25.295252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724045, 32.545845, 24.481321>,  <33.922073, 32.325848, 25.160460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724045, 32.545845, 24.481321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889496, 32.856743, 24.670979>,  <33.988766, 33.043282, 24.784773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889496, 32.856743, 24.670979>,  <33.724045, 32.545845, 24.481321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889496, 32.856743, 24.670979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452598, 0.276336, -0.847817,
		-0.789981, 0.565273, -0.237478,
		0.413625, 0.777241, 0.474142,
		34.013584, 33.089916, 24.813221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534325, 33.241230, 24.134668>,  <33.724045, 32.545845, 24.481321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534325, 33.241230, 24.134668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878345, 33.277489, 24.335506>,  <34.084759, 33.299244, 24.456009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878345, 33.277489, 24.335506>,  <33.534325, 33.241230, 24.134668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878345, 33.277489, 24.335506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439042, 0.369850, -0.818812,
		-0.259924, 0.924659, 0.278291,
		0.860047, 0.090647, 0.502097,
		34.136360, 33.304684, 24.486135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753204, 33.858566, 24.004520>,  <33.534325, 33.241230, 24.134668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753204, 33.858566, 24.004520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074242, 33.638916, 24.097744>,  <34.266865, 33.507126, 24.153679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074242, 33.638916, 24.097744>,  <33.753204, 33.858566, 24.004520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074242, 33.638916, 24.097744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451847, 0.304532, -0.838507,
		0.389469, 0.778284, 0.492533,
		0.802589, -0.549122, 0.233060,
		34.315018, 33.474178, 24.167662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185696, 34.296589, 23.768757>,  <33.753204, 33.858566, 24.004520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185696, 34.296589, 23.768757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390385, 33.957794, 23.826378>,  <34.513199, 33.754517, 23.860950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390385, 33.957794, 23.826378>,  <34.185696, 34.296589, 23.768757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390385, 33.957794, 23.826378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463729, 0.131149, -0.876216,
		0.723251, 0.515183, 0.459885,
		0.511725, -0.846987, 0.144052,
		34.543903, 33.703697, 23.869593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900970, 34.432980, 23.690395>,  <34.185696, 34.296589, 23.768757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900970, 34.432980, 23.690395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859135, 34.036495, 23.657997>,  <34.834034, 33.798603, 23.638559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859135, 34.036495, 23.657997>,  <34.900970, 34.432980, 23.690395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859135, 34.036495, 23.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621679, -0.001592, -0.783270,
		0.776258, -0.132270, 0.616383,
		-0.104585, -0.991212, -0.080993,
		34.827759, 33.739132, 23.633699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840652, 35.069931, 24.094492>,  <34.900970, 34.432980, 23.690395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840652, 35.069931, 24.094492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635864, 35.386738, 23.961468>,  <34.512989, 35.576820, 23.881653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635864, 35.386738, 23.961468>,  <34.840652, 35.069931, 24.094492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635864, 35.386738, 23.961468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124288, 0.314774, 0.940994,
		0.849962, 0.523098, -0.062718,
		-0.511974, 0.792014, -0.332561,
		34.482273, 35.624344, 23.861700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163151, 35.793106, 24.220758>,  <34.840652, 35.069931, 24.094492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163151, 35.793106, 24.220758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763386, 35.781994, 24.212673>,  <34.523529, 35.775326, 24.207823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763386, 35.781994, 24.212673>,  <35.163151, 35.793106, 24.220758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763386, 35.781994, 24.212673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031631, 0.514252, 0.857055,
		-0.013418, 0.857189, -0.514828,
		-0.999409, -0.027785, -0.020213,
		34.463562, 35.773659, 24.206610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947342, 36.430473, 24.587685>,  <35.163151, 35.793106, 24.220758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947342, 36.430473, 24.587685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599701, 36.233479, 24.569256>,  <34.391117, 36.115280, 24.558199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599701, 36.233479, 24.569256>,  <34.947342, 36.430473, 24.587685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599701, 36.233479, 24.569256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262209, 0.379729, 0.887160,
		-0.419418, 0.783111, -0.459157,
		-0.869100, -0.492486, -0.046074,
		34.338970, 36.085732, 24.555433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433971, 37.024666, 24.596642>,  <34.947342, 36.430473, 24.587685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433971, 37.024666, 24.596642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257549, 36.686714, 24.717735>,  <34.151695, 36.483944, 24.790392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257549, 36.686714, 24.717735>,  <34.433971, 37.024666, 24.596642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257549, 36.686714, 24.717735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415895, 0.491320, 0.765268,
		-0.795301, 0.211617, -0.568080,
		-0.441053, -0.844880, 0.302737,
		34.125233, 36.433250, 24.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765022, 37.222477, 24.790651>,  <34.433971, 37.024666, 24.596642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765022, 37.222477, 24.790651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836727, 36.883602, 24.990707>,  <33.879749, 36.680279, 25.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836727, 36.883602, 24.990707>,  <33.765022, 37.222477, 24.790651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836727, 36.883602, 24.990707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233934, 0.457089, 0.858105,
		-0.955584, -0.270824, -0.116248,
		0.179260, -0.847186, 0.500142,
		33.890507, 36.629448, 25.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210575, 37.067768, 25.334293>,  <33.765022, 37.222477, 24.790651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210575, 37.067768, 25.334293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521095, 36.845829, 25.453960>,  <33.707409, 36.712666, 25.525761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521095, 36.845829, 25.453960>,  <33.210575, 37.067768, 25.334293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521095, 36.845829, 25.453960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189164, 0.247675, 0.950197,
		-0.601309, -0.794232, 0.087314,
		0.776302, -0.554845, 0.299169,
		33.753986, 36.679375, 25.543711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881161, 36.758190, 25.876938>,  <33.210575, 37.067768, 25.334293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881161, 36.758190, 25.876938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266716, 36.683266, 25.952656>,  <33.498051, 36.638309, 25.998087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266716, 36.683266, 25.952656>,  <32.881161, 36.758190, 25.876938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266716, 36.683266, 25.952656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173198, 0.099011, 0.979898,
		-0.202292, -0.977297, 0.062993,
		0.963888, -0.187315, 0.189295,
		33.555882, 36.627071, 26.009445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918415, 36.281403, 26.393677>,  <32.881161, 36.758190, 25.876938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918415, 36.281403, 26.393677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273254, 36.465603, 26.406288>,  <33.486156, 36.576122, 26.413855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273254, 36.465603, 26.406288>,  <32.918415, 36.281403, 26.393677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273254, 36.465603, 26.406288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072468, 0.071487, 0.994805,
		0.455858, -0.884774, 0.096788,
		0.887097, 0.460504, 0.031530,
		33.539383, 36.603752, 26.415747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186459, 36.009289, 26.996841>,  <32.918415, 36.281403, 26.393677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186459, 36.009289, 26.996841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410366, 36.334915, 26.934929>,  <33.544712, 36.530293, 26.897781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410366, 36.334915, 26.934929>,  <33.186459, 36.009289, 26.996841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410366, 36.334915, 26.934929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003623, 0.189191, 0.981934,
		0.828641, -0.549094, 0.108853,
		0.559768, 0.814065, -0.154783,
		33.578297, 36.579136, 26.888494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837330, 36.016716, 27.532724>,  <33.186459, 36.009289, 26.996841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837330, 36.016716, 27.532724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756428, 36.385151, 27.399647>,  <33.707886, 36.606213, 27.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756428, 36.385151, 27.399647>,  <33.837330, 36.016716, 27.532724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756428, 36.385151, 27.399647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039247, 0.331816, 0.942527,
		0.978547, 0.203687, -0.030961,
		-0.202254, 0.921092, -0.332692,
		33.695751, 36.661480, 27.299839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202816, 36.382271, 27.944134>,  <33.837330, 36.016716, 27.532724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202816, 36.382271, 27.944134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956245, 36.656822, 27.789783>,  <33.808304, 36.821552, 27.697174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956245, 36.656822, 27.789783>,  <34.202816, 36.382271, 27.944134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956245, 36.656822, 27.789783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163379, 0.367899, 0.915400,
		0.770278, 0.627319, -0.114641,
		-0.616425, 0.686383, -0.385875,
		33.771317, 36.862736, 27.674021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234921, 36.858540, 28.428373>,  <34.202816, 36.382271, 27.944134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234921, 36.858540, 28.428373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911446, 36.983883, 28.229244>,  <33.717361, 37.059090, 28.109768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911446, 36.983883, 28.229244>,  <34.234921, 36.858540, 28.428373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911446, 36.983883, 28.229244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344589, 0.433524, 0.832656,
		0.476736, 0.844905, -0.242608,
		-0.808691, 0.313357, -0.497821,
		33.668839, 37.077888, 28.079899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158329, 37.523537, 28.716148>,  <34.234921, 36.858540, 28.428373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158329, 37.523537, 28.716148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808586, 37.417713, 28.553421>,  <33.598740, 37.354218, 28.455784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808586, 37.417713, 28.553421>,  <34.158329, 37.523537, 28.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808586, 37.417713, 28.553421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484840, 0.440628, 0.755498,
		-0.020619, 0.857820, -0.513537,
		-0.874360, -0.264560, -0.406820,
		33.546280, 37.338345, 28.431376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654743, 38.120182, 28.822886>,  <34.158329, 37.523537, 28.716148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654743, 38.120182, 28.822886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399471, 37.819786, 28.755074>,  <33.246307, 37.639549, 28.714386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399471, 37.819786, 28.755074>,  <33.654743, 38.120182, 28.822886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399471, 37.819786, 28.755074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454267, 0.189524, 0.870472,
		-0.621590, 0.632525, -0.462102,
		-0.638175, -0.750994, -0.169529,
		33.208019, 37.594486, 28.704214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922806, 38.383492, 28.830229>,  <33.654743, 38.120182, 28.822886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922806, 38.383492, 28.830229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906796, 37.992836, 28.914688>,  <32.897190, 37.758442, 28.965364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906796, 37.992836, 28.914688>,  <32.922806, 38.383492, 28.830229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906796, 37.992836, 28.914688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473077, 0.204654, 0.856922,
		-0.880111, -0.065591, -0.470214,
		-0.040025, -0.976634, 0.211147,
		32.894787, 37.699844, 28.978033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174156, 38.248055, 28.868191>,  <32.922806, 38.383492, 28.830229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174156, 38.248055, 28.868191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375065, 37.965885, 29.068233>,  <32.495609, 37.796585, 29.188259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375065, 37.965885, 29.068233>,  <32.174156, 38.248055, 28.868191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375065, 37.965885, 29.068233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531880, 0.203969, 0.821888,
		-0.681785, -0.678805, -0.272753,
		0.502268, -0.705423, 0.500105,
		32.525745, 37.754257, 29.218266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644855, 37.852886, 29.194775>,  <32.174156, 38.248055, 28.868191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644855, 37.852886, 29.194775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985502, 37.777306, 29.390343>,  <32.189892, 37.731956, 29.507683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985502, 37.777306, 29.390343>,  <31.644855, 37.852886, 29.194775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985502, 37.777306, 29.390343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478924, 0.098572, 0.872304,
		-0.213017, -0.977026, -0.006547,
		0.851619, -0.188952, 0.488919,
		32.240990, 37.720619, 29.537018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420883, 37.399811, 29.642302>,  <31.644855, 37.852886, 29.194775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420883, 37.399811, 29.642302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763163, 37.533035, 29.800720>,  <31.968531, 37.612968, 29.895771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763163, 37.533035, 29.800720>,  <31.420883, 37.399811, 29.642302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763163, 37.533035, 29.800720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409804, -0.031177, 0.911641,
		0.315980, -0.942390, 0.109812,
		0.855697, 0.333061, 0.396047,
		32.019871, 37.632954, 29.919535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513756, 36.931442, 30.269207>,  <31.420883, 37.399811, 29.642302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513756, 36.931442, 30.269207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722212, 37.269287, 30.318256>,  <31.847286, 37.471996, 30.347687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722212, 37.269287, 30.318256>,  <31.513756, 36.931442, 30.269207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722212, 37.269287, 30.318256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177525, -0.033259, 0.983554,
		0.834803, -0.534340, 0.132608,
		0.521142, 0.844615, 0.122623,
		31.878555, 37.522671, 30.355043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739027, 36.831436, 30.952049>,  <31.513756, 36.931442, 30.269207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739027, 36.831436, 30.952049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796877, 37.220459, 30.879154>,  <31.831587, 37.453873, 30.835417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796877, 37.220459, 30.879154>,  <31.739027, 36.831436, 30.952049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796877, 37.220459, 30.879154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370050, 0.223970, 0.901610,
		0.917686, -0.062960, 0.392287,
		0.144626, 0.972561, -0.182236,
		31.840265, 37.512226, 30.824484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915695, 37.108940, 31.571331>,  <31.739027, 36.831436, 30.952049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915695, 37.108940, 31.571331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793474, 37.435463, 31.375256>,  <31.720142, 37.631374, 31.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793474, 37.435463, 31.375256>,  <31.915695, 37.108940, 31.571331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793474, 37.435463, 31.375256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545371, 0.271965, 0.792846,
		0.780518, 0.509590, 0.362089,
		-0.305551, 0.816304, -0.490190,
		31.701809, 37.680355, 31.228199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924480, 37.583355, 32.088970>,  <31.915695, 37.108940, 31.571331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924480, 37.583355, 32.088970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706230, 37.758102, 31.802910>,  <31.575279, 37.862949, 31.631273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706230, 37.758102, 31.802910>,  <31.924480, 37.583355, 32.088970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706230, 37.758102, 31.802910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696860, 0.237487, 0.676747,
		0.465488, 0.867609, 0.174858,
		-0.545625, 0.436869, -0.715149,
		31.542543, 37.889164, 31.588366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778887, 38.228481, 32.333931>,  <31.924480, 37.583355, 32.088970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778887, 38.228481, 32.333931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509027, 38.118378, 32.059971>,  <31.347113, 38.052315, 31.895596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509027, 38.118378, 32.059971>,  <31.778887, 38.228481, 32.333931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509027, 38.118378, 32.059971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736232, 0.317606, 0.597570,
		0.053043, 0.907392, -0.416924,
		-0.674647, -0.275256, -0.684898,
		31.306633, 38.035801, 31.854502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326349, 38.796703, 32.376999>,  <31.778887, 38.228481, 32.333931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326349, 38.796703, 32.376999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173306, 38.453461, 32.240028>,  <31.081480, 38.247513, 32.157845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173306, 38.453461, 32.240028>,  <31.326349, 38.796703, 32.376999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173306, 38.453461, 32.240028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705068, 0.031670, 0.708432,
		-0.597068, 0.512489, -0.617143,
		-0.382608, -0.858110, -0.342430,
		31.058523, 38.196030, 32.137299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566254, 38.861526, 32.499184>,  <31.326349, 38.796703, 32.376999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566254, 38.861526, 32.499184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619627, 38.472187, 32.424587>,  <30.651651, 38.238583, 32.379829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619627, 38.472187, 32.424587>,  <30.566254, 38.861526, 32.499184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619627, 38.472187, 32.424587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690285, -0.226303, 0.687236,
		-0.711127, 0.037033, -0.702088,
		0.133434, -0.973353, -0.186493,
		30.659657, 38.180180, 32.368641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971163, 38.578476, 32.444500>,  <30.566254, 38.861526, 32.499184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971163, 38.578476, 32.444500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192909, 38.253944, 32.518715>,  <30.325956, 38.059227, 32.563244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192909, 38.253944, 32.518715>,  <29.971163, 38.578476, 32.444500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192909, 38.253944, 32.518715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551215, -0.190893, 0.812233,
		-0.623572, -0.552543, -0.553042,
		0.554365, -0.811330, 0.185534,
		30.359219, 38.010544, 32.574375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504293, 38.050365, 32.701351>,  <29.971163, 38.578476, 32.444500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504293, 38.050365, 32.701351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865292, 37.907536, 32.797688>,  <30.081890, 37.821838, 32.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865292, 37.907536, 32.797688>,  <29.504293, 38.050365, 32.701351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865292, 37.907536, 32.797688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373541, -0.370547, 0.850389,
		-0.214407, -0.857435, -0.467797,
		0.902495, -0.357071, 0.240840,
		30.136040, 37.800415, 32.869938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358322, 37.451218, 32.969501>,  <29.504293, 38.050365, 32.701351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358322, 37.451218, 32.969501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729879, 37.538086, 33.089500>,  <29.952814, 37.590206, 33.161499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729879, 37.538086, 33.089500>,  <29.358322, 37.451218, 32.969501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729879, 37.538086, 33.089500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192422, -0.409100, 0.891970,
		0.316440, -0.886269, -0.338221,
		0.928892, 0.217174, 0.299993,
		30.008547, 37.603237, 33.179497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177578, 36.725464, 32.842663>,  <29.358322, 37.451218, 32.969501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177578, 36.725464, 32.842663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787001, 36.706337, 32.758495>,  <28.552654, 36.694862, 32.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787001, 36.706337, 32.758495>,  <29.177578, 36.725464, 32.842663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787001, 36.706337, 32.758495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200802, 0.155614, -0.967193,
		0.078989, -0.986660, -0.142347,
		-0.976442, -0.047814, -0.210415,
		28.494068, 36.691990, 32.695370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017849, 36.263817, 32.322178>,  <29.177578, 36.725464, 32.842663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017849, 36.263817, 32.322178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708082, 36.516148, 32.302826>,  <28.522223, 36.667545, 32.291214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708082, 36.516148, 32.302826>,  <29.017849, 36.263817, 32.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708082, 36.516148, 32.302826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287941, 0.283331, -0.914775,
		-0.563355, -0.722347, -0.401057,
		-0.774417, 0.630824, -0.048378,
		28.475758, 36.705395, 32.288311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723894, 36.104904, 31.732780>,  <29.017849, 36.263817, 32.322178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723894, 36.104904, 31.732780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572008, 36.462589, 31.827614>,  <28.480877, 36.677200, 31.884514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572008, 36.462589, 31.827614>,  <28.723894, 36.104904, 31.732780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572008, 36.462589, 31.827614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027026, 0.266889, -0.963349,
		-0.924709, -0.359390, -0.125509,
		-0.379714, 0.894209, 0.237081,
		28.458094, 36.730850, 31.898739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201052, 36.174526, 31.225626>,  <28.723894, 36.104904, 31.732780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201052, 36.174526, 31.225626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292309, 36.535030, 31.372967>,  <28.347063, 36.751331, 31.461372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292309, 36.535030, 31.372967>,  <28.201052, 36.174526, 31.225626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292309, 36.535030, 31.372967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071682, 0.392853, -0.916803,
		-0.970985, 0.182759, 0.154231,
		0.228144, 0.901258, 0.368353,
		28.360752, 36.805408, 31.483473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764851, 36.641346, 30.827011>,  <28.201052, 36.174526, 31.225626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764851, 36.641346, 30.827011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050100, 36.874977, 30.982090>,  <28.221251, 37.015156, 31.075138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050100, 36.874977, 30.982090>,  <27.764851, 36.641346, 30.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050100, 36.874977, 30.982090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139538, 0.423709, -0.894986,
		-0.687011, 0.692334, 0.220656,
		0.713124, 0.584075, 0.387699,
		28.264038, 37.050201, 31.098400>
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
